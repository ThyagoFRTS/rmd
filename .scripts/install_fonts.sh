
if ! [ -d "assets/fonts/atkinson-hyperlegible-mono" ]; then
    unzip assets/fonts/atkinson-hyperlegible-mono.zip -d assets/fonts/atkinson-hyperlegible-mono
end
[ -e assets/fonts/atkinson-hyperlegible-mono/LICENSE.txt ] && rm assets/fonts/atkinson-hyperlegible-mono/LICENSE.txt
[ -e assets/fonts/atkinson-hyperlegible-mono/README.md ] && rm assets/fonts/atkinson-hyperlegible-mono/README.md
mkdir -p ~/.local/share/fonts
cp -r assets/fonts/atkinson-hyperlegible-mono/* ~/.local/share/fonts
fc-cache -f -v