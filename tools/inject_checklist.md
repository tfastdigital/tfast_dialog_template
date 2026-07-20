# Inject checklist (print / tick)

- [ ] Copy `smali/com/tfastdigital/` into decompiled APK
- [ ] Copy `res/layout/tfast_brand_dialog.xml`
- [ ] Copy all `res/drawable/tfast_*` including **tfast_logo.png**
- [ ] Merge `ids.xml` / `strings.xml` / `colors.xml` tfast entries
- [ ] Add `INTERNET` permission
- [ ] Hook launcher `onCreate`:  
  `invoke-static {p0}, Lcom/tfastdigital/dialog/TfastDialogHelper;->show(Landroid/app/Activity;)V`
- [ ] Rebuild with apktool (`--use-aapt1` if aapt2 hangs)
- [ ] Sign with uber-apk-signer
- [ ] Install + cold start twice → dialog each time
- [ ] Test social + Continue
- [ ] Optional: set force gate on GitHub and retest
