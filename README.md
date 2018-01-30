# Linux Mining README

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
1.) Run the following. Enter your password if prompted
`./monitor_GPUs.sh`
`./init_GPUs.sh`
`./overclock.sh` 

2.) Run mining script 
`./<currency>_<miner>_start.sh`

