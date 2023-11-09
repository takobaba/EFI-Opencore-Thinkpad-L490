/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-EC.aml, Sat Aug  5 20:46:22 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000013F (319)
 *     Revision         0x02
 *     Checksum         0xB7
 *     OEM ID           "T480"
 *     OEM Table ID     "EC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210105 (539033861)
 */
DefinitionBlock ("", "SSDT", 2, "T480", "EC", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)

    Scope (\)
    {
        Method (B1B2, 2, NotSerialized)
        {
            Return ((Arg0 | (Arg1 << 0x08)))
        }

        Method (B1B4, 4, NotSerialized)
        {
            Local0 = (Arg2 | (Arg3 << 0x08))
            Local0 = (Arg1 | (Local0 << 0x08))
            Local0 = (Arg0 | (Local0 << 0x08))
            Return (Local0)
        }

        Method (W16B, 3, NotSerialized)
        {
            Arg0 = Arg2
            Arg1 = (Arg2 >> 0x08)
        }
    }

    Scope (_SB.PCI0.LPCB.EC)
    {
        Method (RE1B, 1, Serialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE) /* \_SB_.PCI0.LPCB.EC__.RE1B.BYTE */
        }

        Method (RECB, 2, Serialized)
        {
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            Local7 = Buffer (Arg1){}
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                Local7 [Local0] = RE1B (Arg0)
                Arg0++
                Local0++
            }

            Return (Local7)
        }

        Method (WE1B, 2, Serialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            BYTE = Arg1
        }

        Method (WECB, 3, Serialized)
        {
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            Local7 = Buffer (Arg1){}
            Local7 = Arg2
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                WE1B (Arg0, DerefOf (Local7 [Local0]))
                Arg0++
                Local0++
            }
        }
    }
}

