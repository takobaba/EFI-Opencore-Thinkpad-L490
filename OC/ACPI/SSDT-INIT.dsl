/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-INIT.aml, Sat Aug  5 20:46:49 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008C (140)
 *     Revision         0x02
 *     Checksum         0x1D
 *     OEM ID           "T480"
 *     OEM Table ID     "INIT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210105 (539033861)
 */
DefinitionBlock ("", "SSDT", 2, "T480", "INIT", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (DPTF, FieldUnitObj)
    External (HPTE, FieldUnitObj)
    External (OSYS, FieldUnitObj)
    External (WNTF, FieldUnitObj)

    Method (OINI, 0, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            Debug = "Set Variables..."
            HPTE = Zero
            OSYS = 0x07DF
        }
    }
}

