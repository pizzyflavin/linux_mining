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
1.) Run 
`./first_boot.sh` 
`./nvidia_gpu_setup.sh` 
 
2.) Reboot by running
`sudo shutdown -r`

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
- Try commenting out the lines that say "start on" or "or starting" in
  `/etc/init/gpu-manager.conf`
X not starting, overclocking not working.
- Check `/etc/X11/xorg.conf` and delete the line that mentions "inactive intel"
