/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-GPRW.aml, Mon Jul 24 23:15:28 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000065 (101)
 *     Revision         0x02
 *     Checksum         0x87
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "GPRW"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "GPRW", 0x00000000)
{
    External (XPRW, MethodObj)    // 2 Arguments

    Method (GPRW, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((0x6D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }

            If ((0x0D == Arg0))
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    Zero
                })
            }
        }

        Return (XPRW (Arg0, Arg1))
    }
}

