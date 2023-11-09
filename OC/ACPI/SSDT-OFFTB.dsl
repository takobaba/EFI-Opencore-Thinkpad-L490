/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-OFFTB.aml, Sat Aug  5 20:47:03 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000131 (305)
 *     Revision         0x02
 *     Checksum         0xD6
 *     OEM ID           "T480"
 *     OEM Table ID     "OFFTB"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210105 (539033861)
 */
DefinitionBlock ("", "SSDT", 2, "T480", "OFFTB", 0x00001000)
{
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.LDIS, FieldUnitObj)
    External (_SB_.PCI0.RP09.POFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.VDID, FieldUnitObj)
    External (RTBT, FieldUnitObj)
    External (TBTS, FieldUnitObj)
    External (TOFF, FieldUnitObj)
    External (TRD3, FieldUnitObj)

    Scope (_SB.PCI0.RP09)
    {
        Method (DOFF, 0, Serialized)
        {
            Debug = "OFFTB:DOFF()"
            TRD3 = One
            POFF ()
            TRD3 = Zero
            TBTS = Zero
            LDIS = One
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                DOFF ()
                Return (Zero)
            }

            Return (0x0F)
        }

        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
            If (_OSI ("Darwin"))
            {
                DOFF ()
            }
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
            If (_OSI ("Darwin"))
            {
                DOFF ()
            }
        }
    }
}

