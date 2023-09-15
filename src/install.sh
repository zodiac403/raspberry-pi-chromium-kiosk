echo "install xserver and chromium-browser..."
sudo apt update && sudo apt upgrade -y

sudo apt-get install --no-install-recommends -y \
  chromium-browser \
  x11-xserver-utils \
  xinit \
  xserver-xorg-core \
  xserver-xorg-input-all \
  xserver-xorg-video-all

echo "copy XServer init configuration..."
cp xinitrc ~/.xinitrc

echo "configure autostart..."
cat bash_profile_snippet >> ~/.bash_profile

echo "success"
