# Linux Mining README

** WARNING: This will overclock your cards! **

This is set up for 8 GPUs, so please edit miner scripts, init_GPUs.sh, and
overclock.sh to use the appropriate amount of GPUs (i.e. cuda devices, or
just devices). I hope to fix this when I have time.

### Currencies
- ZCash (ZEC)
- ZClassic (ZCL)
- Ethereum (ETH)

### Miners
- EWBF
- dstm
- Claymore10

### First Time Setup
1.) Set up your BIOS with the appropriate settings. You'll need to figure out exactly what to do for your particular motherboard, but in general you need to set everything PCIE to Gen 2, enable above 4G-decoding, disable hdaudio and serial port, and set any M2 slots to PCIE (if you want to do that).

2.) Now, do a fresh install of Ubuntu Desktop 16.04 with a mouse and keyboard, montior attached. Make sure ONE GPU is installed via a riser in the first x16 PCIE slot. Pick a username and computer name that you'll remember. It is important that you specify automatic login at startup and don't require password during this step. At the end you will be asked to restart. Do that, and remove the installation media when prompted.

3.) Open a terminal and run `sudo apt install -y git` and then `git clone https://github.com/pizzyflavin/linux_mining` to clone this repository.

4.) Now `cd linux_mining` and then `./first_boot.sh`. At this point, you will need to shut down the system and unplug your keyboard/mouse/monitor. Now SSH with a password into the system with `ssh miner_username@miner_hostname` just to make sure you are able to (OpenSSH-server is installed by the first_boot script). Now exit the session.

5.) To make ssh safer, use a private/public key pair, and then disable root login and password authentication. From the machine you are sshing from, type `ssh-copy-id -i ~/.ssh/your_key.pub miner_username@miner_ipaddress` and type in the password for the miner when asked to do so. Now make absolutely sure your key works by typing `ssh -i ~/.ssh/your_key.pub miner_username@miner_ip_address` and verify that you successfully log in.

6.) Edit the sshd_config file: `sudo vim /etc/ssh/sshd_config` and disable root login, disable password authentication, set loglevel to VERBOSE, and disable X11 forwarding.

7.) Now install the NVIDIA drivers. Run `./nvidia_gpu_setup.sh`. You may need to enter your password and type enter a few times. It'll take awhile.

8.) Now, to make sure xorg.conf isn't overwritten, edit the gpu_manager file `sudo vim /etc/init/gpu_manager.conf` and comment out any line with "starting" in it (this is the first several lines).

9.) We're almost there. `sudo shutdown -h now` and, after it has shutdown completely, install the rest of your GPUs. Boot up, and ssh in again.

10.) Run `sudo nvidia-xconfig -a --allow-empty-initial-configuration --cool-bits=28 --use-display-device="DFP-0" --connected-monitor="DFP-0"` to make a new xconfig for all the new GPUs you just added. Reboot and proceed to the **Every boot** section.


### Every boot
1.) Run the init script. Enter your password if prompted
`./init.sh`
This needs to be run only once after booting up (or after loss of power)


2.) Run mining script 
`./<currency>_<miner>_start.sh`
This starts the miner with the correct settings for the currency.

Your cards are set to the settings below:
- Fans at 80%
- Power Limit at 110 W (61% TDP aka Thermal Design Power)
- Overclocking:
    * +700 Memory
    * +200 Core

These settings can be changed in `init_GPUs.sh`

### Troubleshooting
xorg.conf keeps getting overwritten.
- You should have commented out the lines that say "start on" or "or starting" in
  `/etc/init/gpu-manager.conf`. Also, make sure you are SSHing in, as having a monitor attached (at least to the motherboard) causes a lot of problems.
  
X not starting, overclocking not working.
- Check `/etc/X11/xorg.conf` and delete the line that mentions "inactive intel"
