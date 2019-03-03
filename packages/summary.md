
# Packaging Notes

Start here: http://packaging.ubuntu.com/html/packaging-new-software.html

# New packaging w/out bzr

1. put src tarball in location
2. unzip and go to dir
3. dh_make -f ../<tarballfile>
4. edit /debian files
5. debuild -S
6. dput ppa:kgilmer/regolith <pkg>.changes

# Packaging from a source tarball for Ubuntu

1. create/get source tarball into packaging directory, ex regolith_config-1.0.tar.gz
2. (optional) verify make works
3. add debian metadata with `bzr dh-make <pkg> <version> <src tarball>`
4. edit files in <pkg>/debian accordingly
5. add to bzr with `bzr add debian/source/format`
6. commit files with `bzr commit -m "Updates"`
7. build package with `bzr builddeb -- -us -uc`
8. verify results with lesspipe `../<pkg.deb>`
9. sign package once it works `bzr builddeb -S`
10. build cleanly with `pbuilder-dist <ubuntu release> build <pkg>.dsc`
11. upload to launchpad.net with `dput ppa:<lp-username>/<ppa-name> <pkg>.changes`

# Creating a meta-package

https://askubuntu.com/questions/33413/how-to-create-a-meta-package-that-automatically-installs-other-packages

# Patching an existing upstream package

https://cs-people.bu.edu/doucette/xia/guides/debian-patch.txt

