/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-HWAC.aml, Sat Aug  5 20:46:36 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000BA (186)
 *     Revision         0x02
 *     Checksum         0x9F
 *     OEM ID           "T480"
 *     OEM Table ID     "HWAC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210105 (539033861)
 */
DefinitionBlock ("", "SSDT", 2, "T480", "HWAC", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.HWAC, FieldUnitObj)
    External (HWAC, IntObj)

    Scope (\_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ERAM, EmbeddedControl, Zero, 0x0100)
        Field (ERAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36), 
            WAC0,   8, 
            WAC1,   8
        }

        Method (XWAC, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = (WAC1 << 0x08)
                Local0 |= WAC0 /* \_SB_.PCI0.LPCB.EC__.WAC0 */
                Return (Local0)
            }
            Else
            {
                Return (HWAC) /* External reference */
            }
        }
    }
}

