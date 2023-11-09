/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/oc/ACPI/SSDT-UTILS.aml, Sat Aug  5 20:47:46 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008C (140)
 *     Revision         0x02
 *     Checksum         0x9B
 *     OEM ID           "T480"
 *     OEM Table ID     "UTILS"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210105 (539033861)
 */
DefinitionBlock ("", "SSDT", 2, "T480", "UTILS", 0x00001000)
{
    Scope (\)
    {
        Method (DTGP, 5, NotSerialized)
        {
            If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
            {
                If ((Arg1 == One))
                {
                    If ((Arg2 == Zero))
                    {
                        Arg4 = Buffer (One)
                            {
                                 0x03                                             // .
                            }
                        Return (One)
                    }

                    If ((Arg2 == One))
                    {
                        Return (One)
                    }
                }
            }

            Arg4 = Buffer (One)
                {
                     0x00                                             // .
                }
            Return (Zero)
        }

        Method (OSDW, 0, NotSerialized)
        {
            If (CondRefOf (\_OSI))
            {
                If (_OSI ("Darwin"))
                {
                    Return (One)
                }
            }

            Return (Zero)
        }
    }
}

