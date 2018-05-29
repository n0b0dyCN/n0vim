# n0vim
My vim config and install script.

Usage:
```
git clone git@github.com:n0b0dyCN/n0vim.git ~/n0vim
cd ~/n0cms
chmod a+x install-n0vim.sh
./install-n0vim.sh 
```

Notice:
If you got error `Virtual memory exhausted: Cannot allocate memory` on your vps, run following commands before running `install-n0vim.sh`:
```
sudo dd if=/dev/zero of=/var/swapfile bs=1M count=2048 &&
sudo chmod 600 /var/swapfile &&
sudo mkswap /var/swapfile &&
echo /var/swapfile none swap defaults 0 0 | sudo tee -a /etc/fstab &&
sudo swapon -a
```
