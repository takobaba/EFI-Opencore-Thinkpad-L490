/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-AC.aml, Mon Jul 24 23:12:45 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008E (142)
 *     Revision         0x02
 *     Checksum         0x93
 *     OEM ID           "T480"
 *     OEM Table ID     "AC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210105 (539033861)
 */
DefinitionBlock ("", "SSDT", 2, "T480", "AC", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC__.AC__, DeviceObj)
    External (LWCP, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.LPCB.EC.AC)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If ((\OSDW () || \LWCP))
            {
                Return (Package (0x02)
                {
                    0x17, 
                    0x04
                })
            }

            Return (Package (0x02)
            {
                0x17, 
                0x03
            })
        }
    }
}

