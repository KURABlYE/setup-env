#
#
#standart system update install script (for gnome) v0.2 21.12.2020
##install repos
#rpmfusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
#chrome
sudo rpm --import https://dl.google.com/linux/linux_signing_key.pub
#vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
#vscodium
#sudo rpm --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
#printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg" |sudo tee -a /etc/yum.repos.d/vscodium.repo
#
#update system
sudo dnf check-update -y && sudo dnf upgrade -y
##
##install terminall apps
dnf install vim tmux htop cabextract lzip p7zip p7zip-plugins unrar -y
#
##install gui apps
dnf install gnome-tweak-tool https://dl.google.com/linux/direct/google-chrome-stable_current_$(uname -i).rpm mpv steam -y
#
##install web env
dnf install code -y
##desktop tweaks
dconf write /org/gnome/mutter/experimental-features "['scale-monitor-framebuffer']"
