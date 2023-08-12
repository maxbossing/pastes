# get version of the pastes script
pkgver=$(shell cat pastes | grep VERSION | head -n 1 | sed 's/VERSION="//' | sed 's/"//')

# clean directory
clean:
	rm -r pkg src pastes-*.tar.zst
# Update checksums
checksum:
	updpkgsums
# change pkgver in PKGBUILD to script version
version:
	sed -i "s/.*pkgver.*/pkgver='$(pkgver)'/" PKGBUILD
srcinfo:
	makepkg --printsrcinfo > .SRCINFO
# build using the current PKGBUILD
build:
	makepkg -si
publish: checksum version srcinfo
	git add pastes PKGBUILD .SRCINFO 
	git commit -m "Publishing v$(pkgver)"
	git push aur master
