# -*- coding: utf-8 -*-
"""
make_key.py — Munowatch activation key (PIN) management.

The activation system: each customer's device shows a Device Code (android_id).
The operator registers that code in config/keys.json of the
tfast_dialog_template repo. The app verifies the code against keys.json on
launch (with 7-day offline grace once activated).

Usage (run from the tfast_dialog_template repo):
  python tools/make_key.py add    <customer> <device_code> [--pkg com.munowatch.pro] [--days 365] [--offline/--no-offline]
  python tools/make_key.py list   [--pkg com.munowatch.pro]
  python tools/make_key.py remove <device_code>
  python tools/make_key.py renew  <device_code> [--days 365]
  python tools/make_key.py block  <device_code>      # sets expiresAt to yesterday (revoke)
  python tools/make_key.py push                        # commit + push keys.json only

Add --no-push to skip the automatic commit/push.
"""
import argparse
import datetime
import json
import subprocess
import sys
from pathlib import Path

KEYS_PATH = Path(__file__).resolve().parent.parent / 'config' / 'keys.json'


def load():
    with open(KEYS_PATH, encoding='utf-8') as f:
        return json.load(f)


def save(entries):
    with open(KEYS_PATH, 'w', encoding='utf-8') as f:
        json.dump(entries, f, indent=4, ensure_ascii=False)
        f.write('\n')


def today():
    return datetime.date.today().isoformat()


def add_days(days):
    return (datetime.date.today() + datetime.timedelta(days=days)).isoformat()


def git(*args):
    return subprocess.run(['git'] + list(args), cwd=KEYS_PATH.parent.parent,
                          capture_output=True, text=True)


def push():
    r = git('add', 'config/keys.json')
    if r.returncode:
        print('git add failed:', r.stderr)
        return False
    r = git('commit', '-m', 'keys: update activation keys')
    # ok if nothing to commit
    r2 = git('push', 'origin', 'main')
    if r2.returncode:
        print('git push failed:', r2.stderr)
        return False
    print('pushed keys.json to GitHub')
    return True


def main():
    ap = argparse.ArgumentParser(description='Munowatch activation key manager')
    ap.add_argument('cmd', choices=['add', 'list', 'remove', 'renew', 'block', 'push'])
    ap.add_argument('args', nargs='*')
    ap.add_argument('--pkg', default='com.munowatch.pro')
    ap.add_argument('--days', type=int, default=365)
    ap.add_argument('--no-push', action='store_true')
    ap.add_argument('--offline', dest='offline', action='store_true', default=True)
    ap.add_argument('--no-offline', dest='offline', action='store_false')
    a = ap.parse_args()

    entries = load()
    if a.cmd == 'add':
        customer, code = a.args[0], a.args[1]
        for e in entries:
            if e.get('id') == code:
                print('device code already registered:', code)
                sys.exit(1)
        entries.append({
            'id': code,
            'expiresAt': add_days(a.days),
            'Customer': customer,
            'Package.name': a.pkg,
            'allowOffline': a.offline,
        })
        save(entries)
        print('added key for %s (code %s, expires %s)' % (customer, code, add_days(a.days)))
        if not a.no_push:
            push()
    elif a.cmd == 'list':
        for e in entries:
            if a.args and a.args[0] and e.get('Customer') != a.args[0]:
                continue
            print('%-22s %-20s %-24s %s' % (
                e.get('id', ''), e.get('expiresAt', ''), e.get('Customer', ''),
                e.get('Package.name', '')))
    elif a.cmd in ('remove', 'renew', 'block'):
        code = a.args[0]
        found = False
        for e in entries:
            if e.get('id') == code:
                found = True
                if a.cmd == 'remove':
                    entries.remove(e)
                    print('removed', code)
                elif a.cmd == 'renew':
                    e['expiresAt'] = add_days(a.days)
                    print('renewed %s until %s' % (code, add_days(a.days)))
                else:
                    e['expiresAt'] = (datetime.date.today() - datetime.timedelta(days=1)).isoformat()
                    print('blocked (revoked)', code)
                break
        if not found:
            print('code not found:', code)
            sys.exit(1)
        save(entries)
        if not a.no_push:
            push()
    elif a.cmd == 'push':
        push()


if __name__ == '__main__':
    main()
