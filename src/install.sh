echo "install xserver and chromium-browser"
sudo apt update && sudo apt upgrade -y

sudo apt-get install --no-install-recommends -y \
  chromium-browser \
  unattended-upgrades \
  unclutter \
  x11-xserver-utils \
  xinit \
  xserver-xorg-core \
  xserver-xorg-input-all \
  xserver-xorg-video-all

echo ""
echo "configure firewall (block incoming traffic on all ports)"
sudo iptables --policy INPUT DROP
sudo iptables --append INPUT \
  --match conntrack \
  --ctstate ESTABLISHED,RELATED \
  --jump ACCEPT
sudo iptables --policy FORWARD DROP
sudo iptables --policy OUTPUT ACCEPT
sudo iptables --list

echo ""
echo "copy XServer init configuration"
cp xinitrc ~/.xinitrc

echo ""
echo "configure autostart"
cat bash_profile_snippet >> ~/.bash_profile

echo ""
echo "success"
