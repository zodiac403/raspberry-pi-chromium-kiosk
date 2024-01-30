echo "install xserver and chromium-browser"
sudo apt update && sudo apt upgrade -y

sudo apt-get install --no-install-recommends -y \
  iptables \
  unattended-upgrades

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
echo "success"
