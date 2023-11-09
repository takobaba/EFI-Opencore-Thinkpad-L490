# EFI for Thinkpad L490 - Hackintosh - Opencore
## Opencore 0.9.6
## macOS Ventura 14.1.1 (c)

![image](https://github.com/takobaba/EFI-Opencore-Thinkpad-L490/assets/3728072/1a847741-5da1-46be-b67f-658dfa5ff2ca)

## Specs:

  - CPU: Intel i7-8565U (8) @ 1.80GHz
  - GPU: Intel UHD Graphics 620 @ 2048 MB
  - Memory: 32 GB @ 2400 MHz
  - 512 GB NVMe Intel
  - 1920 x 1080 screen

## Works:

  * Battery
  * Audio - ALC257 ? Not entirely sure as audio just worked
  * HDMI - 2 Screens with dock/adapter
  * FN keys - Sound/Brightness shortcuts
  * WiFi & Bluetooth - BroadCom BCM94360NG 
  * Trackpad - All gestures
  * SD Card Reader - Realtek RTS522A PCI Express Card Reader

## Doesn't Work:

  * Fn + F[7-12] doesnt work

## Note: 

  * Recently fixed the USBs, 
    - now all ports are working. Removed the XHC ACPI patch and patched using RHUB on Dortania guide - Fixin USB section
  * ACPIs are copied from https://github.com/tylernguyen/x1c6-hackintosh
  * CFG Lock, seems locked but Kernel->Quirks CFG locks are disabled and it works
  * [GeekBench 6 Score - Ventura](https://browser.geekbench.com/v6/cpu/1577874)
  * [GeekBench 6 Score - Sonoma](https://browser.geekbench.com/v6/cpu/3462263)
  * OCLP WiFi Fix due to Sonoma Broadcom Changes