/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-Thinkpad_Clickpad.aml, Sat Aug  5 20:48:53 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001B5 (437)
 *     Revision         0x02
 *     Checksum         0x34
 *     OEM ID           "ACDT"
 *     OEM Table ID     "ps2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "ps2", 0x00000000)
{
    External (_SB_.PCI0.LPC_.KBD_, DeviceObj)

    Scope (_SB.PCI0.LPC.KBD)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "LENOVO", 
                "RM,oem-table-id", 
                "Thinkpad_ClickPad"
            })
        }

        Name (RMCF, Package (0x02)
        {
            "Synaptics TouchPad", 
            Package (0x16)
            {
                "HWResetOnStart", 
                ">y", 
                "QuietTimeAfterTyping", 
                0x1DCD6500, 
                "FingerZ", 
                0x1E, 
                "MouseMultiplierX", 
                0x02, 
                "MouseMultiplierY", 
                0x02, 
                "MouseDivisorX", 
                One, 
                "MouseDivisorY", 
                One, 
                "TrackpointScrollXMultiplier", 
                0x02, 
                "TrackpointScrollYMultiplier", 
                0x02, 
                "TrackpointScrollXDivisor", 
                One, 
                "TrackpointScrollYDivisor", 
                One
            }
        })
    }
}

