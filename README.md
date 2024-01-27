# EFI for Thinkpad L490 - Opencore
## Opencore 0.9.7
## macOS Sonoma 14.2.1 (c)

![image](https://github.com/takobaba/EFI-Opencore-Thinkpad-L490/assets/3728072/1a847741-5da1-46be-b67f-658dfa5ff2ca)

## Specs:

  - **CPU:** Intel® Core™ i7-8565U Processor
  - **GPU:** Intel UHD Graphics 620 @ 2048 MB
  - **Memory:** 24 GB @ 2666 MHz
  - **Disk:** 512 GB NVMe Intel SSD
  - **Screen Resolution:** 1920 x 1080
  - **BIOS:** 1.35 - 22 Jan 2024
  - **WiFi:** Broadcom BCM94360NG
  - **Audio:** ALC257
  - **SMBIOS:** MacbookPro15,4

## Works:

  * Battery
  * HDMI output up to 2 screens
  * Audio
  * FN Sound/Brightness shortcuts
  * WiFi & Bluetooth - BroadCom BCM94360NG 
  * Trackpad
  * SD Card Reader - Realtek RTS522A PCI Express Card Reader

## Doesn't Work:
  - 

## Note: 

  * Recently fixed the USBs, 
    - now all ports are working. Removed the XHC ACPI patch and patched using RHUB on Dortania guide - Fixin USB section
  * ACPIs are copied from https://github.com/tylernguyen/x1c6-hackintosh
  * ACPIs from SSDT-Time
  * [GeekBench 6 Score - Ventura](https://browser.geekbench.com/v6/cpu/1577874)
  * [GeekBench 6 Score - Sonoma](https://browser.geekbench.com/v6/cpu/3462263)
  * OCLP WiFi Fix due to Sonoma Broadcom Changes
  * CFG Lock, seems locked but Kernel->Quirks CFG locks are disabled and it works
    * 0x3E - Write Protected CFG Lock - CpuSetup
  * DVMT
    * 0xEE, DVMT Pre-Allocated 
      - Set to 64MB
    * 0xEF, DVMT Total Gfx Mem 
      - Set to 256MB
