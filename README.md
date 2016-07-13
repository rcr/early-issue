# early-issue

An initcpio hook to display a welcome message during boot.  
Inspired by [drkh5h](https://github.com/drkh5h/early-issue)

Files
---

PKGBUILD: instructs and builds a package and installs it.  
aurpkgbuild: standalone pkgbuild.  
early-issue.txt: the text that will be printed during boot.  
makefile: can be used to install if preffered.  

Installation
---

clone the repo, then:
```
sudo make install
```
or if on archlinux, then:
```
makepkg -sci
```

Uninstallation
---

if installed with make:
```
sudo make uninstall
```
if installed with makepkg:
```
sudo pacman -R early-issue
```

Enable
---

Add the **early-issue** hook to **/etc/mkinitcpio.conf**, I like mine after the encrypt hook.
```
HOOKS="... encrypt early-issue ..."
```
then rebuild initramfs image:
```
sudo mkinitcpio -p linux
```

Configuration
---

Edits can be make to **/etc/early-issue** to change the message that gets displayed.

LEGAL
---

Provided as is. Use as you wish, attribute if you want I don't care.  
Also, I'm not responsable for anything you do with this. IE if you do something stupid you're just stupid.  

