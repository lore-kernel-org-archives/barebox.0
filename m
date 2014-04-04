Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WW9Wo-0005BD-7e
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 19:11:52 +0000
Message-ID: <533EF5E6.1030106@reverze.net>
Date: Fri, 04 Apr 2014 20:11:50 +0200
From: Michel Stam <michel@reverze.net>
MIME-Version: 1.0
References: <1396618899-26105-1-git-send-email-michel@reverze.net>
 <1396618899-26105-3-git-send-email-michel@reverze.net>
 <20140404195639.7fdb6d8cb645145fffde4d22@gmail.com>
 <F17C5AB3-87A5-4FA1-9CAB-7BF13489E1C5@reverze.net>
 <20140404221240.70e458aefc095d88290b1174@gmail.com>
In-Reply-To: <20140404221240.70e458aefc095d88290b1174@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2055169477955259782=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] x86: ns16550: Rework driver to allow for x86 I/O space
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is a cryptographically signed message in MIME format.

--===============2055169477955259782==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha1; boundary="------------ms050401020902030607020900"

This is a cryptographically signed message in MIME format.

--------------ms050401020902030607020900
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Antony,

I was not aware of this. No matter, I've resubmitted the patches,=20
they're rebased on top of next now.

Michel
On 04/04/2014 08:12 PM, Antony Pavlov wrote:
> On Fri, 4 Apr 2014 18:52:46 +0200
> Michel Stam <michel@reverze.net> wrote:
>
>> Hello Antony,
>>
>> Sorry to hear that- the patch was not meant to add new functionality, =
merely preserve the status quo in master.
> Quite the contrary!
>
> Your patchseries introduces new functionality, it adds additional io sp=
ace.
>
> In barebox maillist all new functionality patches are assumed to be 'ne=
xt' branch patches.
>
> Only critical bugfixes and trivial changes can go to the 'master' branc=
h directly.
>
>> To explain; add_ns16550_device() assumes that all ns16550 chips are ma=
pped into memory. This is not so on the x86 platform. Previously, because=
 no io-mapped resources were available, x86 created a "memory" device wit=
h custom IO routines. I rewrote this to use IORESOURCE_IO instead, but to=
 do this, the invocation of the add_ns16550_device() needed to specify th=
e resource type. The patch which conflicts with your patch can be undone =
as far as I'm concerned; I wasn't adding anything new to the mips/mach-xb=
urst platform. I can redo the patch, leaving the file targeted by your pa=
tch unchanged if you like?
> IMHO you have to rebase your patches over the 'next' branch.
>
> Also please use scripts/checkpatch.pl programm before sending patches t=
o the maillist.
>
>>> On 4 apr. 2014, at 17:56, Antony Pavlov <antonynpavlov@gmail.com> wro=
te:
>>>
>>> On Fri,  4 Apr 2014 15:41:39 +0200
>>> michel@reverze.net wrote:
>>>
>>>> From: Michel Stam <m.stam@fugro.nl>
>>>>
>>>> The current implementation fakes a memory-mapped I/O device
>>>> at 0x3f8 and 0x2f8, then uses platform read/write functions
>>>> to do the actual reading and writing. These platform functions
>>>> only exist for the x86 platform; better to move the I/O
>>>> routines into the driver and have the driver request I/O ports
>>>> using request_ioport_region.
>>>> ---
>>>> arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
>>>> arch/arm/mach-mvebu/armada-370-xp.c               |    3 +-
>>>> arch/arm/mach-mvebu/kirkwood.c                    |    3 +-
>>>> arch/arm/mach-socfpga/xload.c                     |    4 +-
>>>> arch/arm/mach-tegra/tegra20.c                     |    2 +-
>>>> arch/mips/boards/dlink-dir-320/serial.c           |    2 +-
>>>> arch/mips/boards/loongson-ls1b/serial.c           |    2 +-
>>>> arch/mips/mach-ar231x/ar231x.c                    |    2 +-
>>>> arch/mips/mach-xburst/serial.c                    |   60 ++++++++++
>>> hmmm
>>> this partly revert my recent commit in the 'next' branch:
>>>
>>> commit 8f5d37835d44d07460d92307f0b6489048a18fba
>>> Author: Antony Pavlov <antonynpavlov@gmail.com>
>>> Date:   Tue Mar 25 20:50:58 2014 +0400
>>>
>>>     MIPS: mach-xburst: drop serial.c
>>>
>>>     We use dts for serial port initialization,
>>>     so we have no need in mach-xburst/serial.c anymore.
>>>
>>>     Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>>>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>
>>> arch/mips/mach-xburst/Makefile |  1 -
>>> arch/mips/mach-xburst/serial.c | 60 ---------------------------------=
--------------------
>>> 2 files changed, 61 deletions(-)
>>>
>>>> arch/openrisc/boards/generic/generic.c            |    2 +-
>>>> arch/ppc/boards/freescale-p1022ds/p1022ds.c       |    2 +-
>>>> arch/ppc/boards/freescale-p2020rdb/p2020rdb.c     |    3 +-
>>>> arch/ppc/boards/geip-da923rc/da923rc.c            |    3 +-
>>>> arch/x86/boards/x86_generic/generic_pc.c          |    5 +-
>>>> arch/x86/mach-i386/Makefile                       |    1 -
>>>> arch/x86/mach-i386/generic.c                      |   34 ------
>>>> drivers/serial/serial_ns16550.c                   |  122 +++++++++++=
+++++++---
>>>> include/driver.h                                  |    2 +-
>>>> include/ns16550.h                                 |   11 +--
>>>> 19 files changed, 187 insertions(+), 78 deletions(-)
>>>> create mode 100644 arch/mips/mach-xburst/serial.c
>>>> delete mode 100644 arch/x86/mach-i386/generic.c
>>>>
>>>> diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arc=
h/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
>>>> index e2ad1c8..69967c5 100644
>>>> --- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
>>>> +++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
>>>> @@ -223,7 +223,7 @@ static int eukrea_cpuimx27_console_init(void)
>>>>     imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
>>>> #ifdef CONFIG_DRIVER_SERIAL_NS16550
>>>>     add_ns16550_device(DEVICE_ID_DYNAMIC, MX27_CS3_BASE_ADDR + QUART=
_OFFSET, 0xf,
>>>> -             IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
>>>> +             IORESOURCE_MEM | IORESOURCE_MEM_16BIT, &quad_uart_seri=
al_plat);
>>>> #endif
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mve=
bu/armada-370-xp.c
>>>> index 776b4c0..209be0b 100644
>>>> --- a/arch/arm/mach-mvebu/armada-370-xp.c
>>>> +++ b/arch/arm/mach-mvebu/armada-370-xp.c
>>>> @@ -60,7 +60,8 @@ static int armada_370_xp_add_uart(void)
>>>>     uart_plat.clock =3D clk_get_rate(tclk);
>>>>     if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
>>>>                 (unsigned int)CONSOLE_UART_BASE, 32,
>>>> -                IORESOURCE_MEM_32BIT, &uart_plat))
>>>> +                IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
>>>> +                &uart_plat))
>>>>         return -ENODEV;
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/ki=
rkwood.c
>>>> index 1284220..c79d130 100644
>>>> --- a/arch/arm/mach-mvebu/kirkwood.c
>>>> +++ b/arch/arm/mach-mvebu/kirkwood.c
>>>> @@ -58,7 +58,8 @@ static int kirkwood_add_uart(void)
>>>>     uart_plat.clock =3D clk_get_rate(tclk);
>>>>     if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
>>>>                 (unsigned int)CONSOLE_UART_BASE, 32,
>>>> -                IORESOURCE_MEM_32BIT, &uart_plat))
>>>> +                IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
>>>> +                &uart_plat))
>>>>         return -ENODEV;
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/x=
load.c
>>>> index 0b99db0..6586ada 100644
>>>> --- a/arch/arm/mach-socfpga/xload.c
>>>> +++ b/arch/arm/mach-socfpga/xload.c
>>>> @@ -45,8 +45,8 @@ static void socfpga_uart_init(void)
>>>>     clks[uart] =3D clk_fixed("uart", 100000000);
>>>>     clkdev_add_physbase(clks[uart], CYCLONE5_UART0_ADDRESS, NULL);
>>>>     clkdev_add_physbase(clks[uart], CYCLONE5_UART1_ADDRESS, NULL);
>>>> -    add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM_8BIT,
>>>> -            &uart_pdata);
>>>> +    add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM |
>>>> +            IORESOURCE_MEM_8BIT, &uart_pdata);
>>>> }
>>>>
>>>> static void socfpga_timer_init(void)
>>>> diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/teg=
ra20.c
>>>> index cc2d748..bdd7960 100644
>>>> --- a/arch/arm/mach-tegra/tegra20.c
>>>> +++ b/arch/arm/mach-tegra/tegra20.c
>>>> @@ -50,7 +50,7 @@ static int tegra20_add_debug_console(void)
>>>>         return -ENODEV;
>>>>
>>>>     add_ns16550_device(DEVICE_ID_DYNAMIC, base, 8 << debug_uart.shif=
t,
>>>> -               IORESOURCE_MEM_8BIT, &debug_uart);
>>>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &debug_uart);
>>>>
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boa=
rds/dlink-dir-320/serial.c
>>>> index bddb683..eb87379 100644
>>>> --- a/arch/mips/boards/dlink-dir-320/serial.c
>>>> +++ b/arch/mips/boards/dlink-dir-320/serial.c
>>>> @@ -36,7 +36,7 @@ static int dir320_console_init(void)
>>>>
>>>>     /* Register the serial port */
>>>>     add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
>>>> -            IORESOURCE_MEM_8BIT, &serial_plat);
>>>> +            IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>>>>
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/mips/boards/loongson-ls1b/serial.c b/arch/mips/boa=
rds/loongson-ls1b/serial.c
>>>> index d8e0f7c..7159ab7 100644
>>>> --- a/arch/mips/boards/loongson-ls1b/serial.c
>>>> +++ b/arch/mips/boards/loongson-ls1b/serial.c
>>>> @@ -15,7 +15,7 @@ static int console_init(void)
>>>>     barebox_set_hostname("ls1b");
>>>>
>>>>     add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(LS1X_UART2_BASE)=
,
>>>> -        8, IORESOURCE_MEM_8BIT, &serial_plat);
>>>> +        8, IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>>>>
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/mips/mach-ar231x/ar231x.c b/arch/mips/mach-ar231x/=
ar231x.c
>>>> index ca912bf..06d2edb 100644
>>>> --- a/arch/mips/mach-ar231x/ar231x.c
>>>> +++ b/arch/mips/mach-ar231x/ar231x.c
>>>> @@ -189,7 +189,7 @@ static int ar2312_console_init(void)
>>>>     /* Register the serial port */
>>>>     serial_plat.clock =3D ar2312_sys_frequency();
>>>>     add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(AR2312_UART0),
>>>> -        8 << AR2312_UART_SHIFT, IORESOURCE_MEM_8BIT, &serial_plat);=

>>>> +        8 << AR2312_UART_SHIFT, IORESOURCE_MEM | IORESOURCE_MEM_8BI=
T, &serial_plat);
>>>>     return 0;
>>>> }
>>>> console_initcall(ar2312_console_init);
>>>> diff --git a/arch/mips/mach-xburst/serial.c b/arch/mips/mach-xburst/=
serial.c
>>>> new file mode 100644
>>>> index 0000000..4365d19
>>>> --- /dev/null
>>>> +++ b/arch/mips/mach-xburst/serial.c
>>>> @@ -0,0 +1,60 @@
>>>> +/*
>>>> + * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
>>>> + *
>>>> + * Based on the linux kernel JZ4740 serial support:
>>>> + * Copyright (C) 2010, Lars-Peter Clausen <lars@metafoo.de>
>>>> + *
>>>> + * This file is part of barebox.
>>>> + * See file CREDITS for list of people who contributed to this proj=
ect.
>>>> + *
>>>> + * This program is free software; you can redistribute it and/or mo=
dify
>>>> + * it under the terms of the GNU General Public License version 2
>>>> + * as published by the Free Software Foundation.
>>>> + *
>>>> + * This program is distributed in the hope that it will be useful,
>>>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>>> + * GNU General Public License for more details.
>>>> + *
>>>> + */
>>>> +
>>>> +#include <common.h>
>>>> +#include <ns16550.h>
>>>> +#include <io.h>
>>>> +#include <mach/devices.h>
>>>> +
>>>> +#define JZ_UART_SHIFT    2
>>>> +
>>>> +#define ier        (1 << JZ_UART_SHIFT)
>>>> +#define fcr        (2 << JZ_UART_SHIFT)
>>>> +
>>>> +static void jz_serial_reg_write(unsigned int val, unsigned long bas=
e,
>>>> +    unsigned char reg_offset)
>>>> +{
>>>> +    switch (reg_offset) {
>>>> +    case fcr:
>>>> +        val |=3D 0x10; /* Enable uart module */
>>>> +        break;
>>>> +    case ier:
>>>> +        val |=3D (val & 0x4) << 2;
>>>> +        break;
>>>> +    default:
>>>> +        break;
>>>> +    }
>>>> +
>>>> +    writeb(val & 0xff, (void *)(base + reg_offset));
>>>> +}
>>>> +
>>>> +struct device_d *jz_add_uart(int id, unsigned long base, unsigned i=
nt clock)
>>>> +{
>>>> +    struct NS16550_plat *serial_plat;
>>>> +
>>>> +    serial_plat =3D xzalloc(sizeof(*serial_plat));
>>>> +
>>>> +    serial_plat->shift =3D JZ_UART_SHIFT;
>>>> +    serial_plat->reg_write =3D &jz_serial_reg_write;
>>>> +    serial_plat->clock =3D clock;
>>>> +
>>>> +    return add_ns16550_device(id, base, 8 << JZ_UART_SHIFT,
>>>> +            IORESOURCE_MEM | IORESOURCE_MEM_8BIT, serial_plat);
>>>> +}
>>>> diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/=
boards/generic/generic.c
>>>> index 290e05c..1d6ac8a 100644
>>>> --- a/arch/openrisc/boards/generic/generic.c
>>>> +++ b/arch/openrisc/boards/generic/generic.c
>>>> @@ -15,7 +15,7 @@ static int openrisc_console_init(void)
>>>>     barebox_set_hostname("or1k");
>>>>
>>>>     /* Register the serial port */
>>>> -    add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, =
1024, IORESOURCE_MEM_8BIT, &serial_plat);
>>>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, =
1024, IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>>>>
>>>> #ifdef CONFIG_DRIVER_NET_ETHOC
>>>>     add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
>>>> diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.c b/arch/ppc/=
boards/freescale-p1022ds/p1022ds.c
>>>> index c800064..57e7953 100644
>>>> --- a/arch/ppc/boards/freescale-p1022ds/p1022ds.c
>>>> +++ b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
>>>> @@ -130,7 +130,7 @@ static int p1022ds_console_init(void)
>>>>
>>>>     serial_plat.clock =3D fsl_get_bus_freq(0);
>>>>     add_ns16550_device(DEVICE_ID_DYNAMIC, CFG_IMMR + 0x4500, 16,
>>>> -               IORESOURCE_MEM_8BIT, &serial_plat);
>>>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);=

>>>>     return 0;
>>>> }
>>>>
>>>> diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/pp=
c/boards/freescale-p2020rdb/p2020rdb.c
>>>> index 229ae41..385a436 100644
>>>> --- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
>>>> +++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
>>>> @@ -112,7 +112,8 @@ static int p2020_console_init(void)
>>>>
>>>>     serial_plat.clock =3D fsl_get_bus_freq(0);
>>>>
>>>> -    add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16, IORESOURC=
E_MEM_8BIT,
>>>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16,
>>>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
>>>>                &serial_plat);
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/board=
s/geip-da923rc/da923rc.c
>>>> index 976aa8d..3d77349 100644
>>>> --- a/arch/ppc/boards/geip-da923rc/da923rc.c
>>>> +++ b/arch/ppc/boards/geip-da923rc/da923rc.c
>>>> @@ -115,7 +115,8 @@ static int da923rc_console_init(void)
>>>>         barebox_set_model("unknown");
>>>>
>>>>     serial_plat.clock =3D fsl_get_bus_freq(0);
>>>> -    add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16, IORESOURCE_MEM_=
8BIT,
>>>> +    add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16,
>>>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
>>>>                &serial_plat);
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boa=
rds/x86_generic/generic_pc.c
>>>> index 895b88d..69c6f58 100644
>>>> --- a/arch/x86/boards/x86_generic/generic_pc.c
>>>> +++ b/arch/x86/boards/x86_generic/generic_pc.c
>>>> @@ -141,8 +141,6 @@ device_initcall(devices_init);
>>>>
>>>> static struct NS16550_plat serial_plat =3D {
>>>>         .clock =3D 1843200,
>>>> -       .reg_read =3D x86_uart_read,
>>>> -       .reg_write =3D x86_uart_write,
>>>> };
>>>>
>>>> static int pc_console_init(void)
>>>> @@ -151,7 +149,8 @@ static int pc_console_init(void)
>>>>     barebox_set_hostname("x86");
>>>>
>>>>     /* Register the serial port */
>>>> -    add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat=
);
>>>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, IORESOURCE_IO, =
&serial_plat);
>>>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, 0x2f8, 8, IORESOURCE_IO, =
&serial_plat);
>>>>
>>>>     return 0;
>>>> }
>>>> diff --git a/arch/x86/mach-i386/Makefile b/arch/x86/mach-i386/Makefi=
le
>>>> index 10712e6..e46aa5b 100644
>>>> --- a/arch/x86/mach-i386/Makefile
>>>> +++ b/arch/x86/mach-i386/Makefile
>>>> @@ -1,4 +1,3 @@
>>>> -obj-y +=3D generic.o
>>>> obj-y +=3D reset.o
>>>>
>>>> # reference clocksource
>>>> diff --git a/arch/x86/mach-i386/generic.c b/arch/x86/mach-i386/gener=
ic.c
>>>> deleted file mode 100644
>>>> index 69cf53c..0000000
>>>> --- a/arch/x86/mach-i386/generic.c
>>>> +++ /dev/null
>>>> @@ -1,34 +0,0 @@
>>>> -/*
>>>> - * Copyright (C) 2009 Juergen Beisert, Pengutronix
>>>> - *
>>>> - * This program is free software; you can redistribute it and/or
>>>> - * modify it under the terms of the GNU General Public License as
>>>> - * published by the Free Software Foundation; either version 2 of
>>>> - * the License, or (at your option) any later version.
>>>> - *
>>>> - * This program is distributed in the hope that it will be useful,
>>>> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>>> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>>> - * GNU General Public License for more details.
>>>> - *
>>>> - *
>>>> - */
>>>> -
>>>> -/**
>>>> - * @file
>>>> - * @brief x86 Architecture Initialization routines
>>>> - */
>>>> -
>>>> -#include <io.h>
>>>> -
>>>> -/** to work with the 8250 UART driver implementation we need this f=
unction */
>>>> -unsigned int x86_uart_read(unsigned long base, unsigned char reg_id=
x)
>>>> -{
>>>> -    return inb(base + reg_idx);
>>>> -}
>>>> -
>>>> -/** to work with the 8250 UART driver implementation we need this f=
unction */
>>>> -void x86_uart_write(unsigned int val, unsigned long base, unsigned =
char reg_idx)
>>>> -{
>>>> -    outb(val, base + reg_idx);
>>>> -}
>>>> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial=
_ns16550.c
>>>> index 0c00eb1..dfe572d 100644
>>>> --- a/drivers/serial/serial_ns16550.c
>>>> +++ b/drivers/serial/serial_ns16550.c
>>>> @@ -47,6 +47,7 @@ struct ns16550_priv {
>>>>     struct console_device cdev;
>>>>     struct NS16550_plat plat;
>>>>     int access_width;
>>>> +    int mmio;
>>>>     struct clk *clk;
>>>>     uint32_t fcrval;
>>>> };
>>>> @@ -62,6 +63,87 @@ struct ns16550_drvdata {
>>>> };
>>>>
>>>> /**
>>>> + * @brief read system i/o (byte)
>>>> + * @param[in] addr address to read
>>>> + * @param[in] mmio memory i/o space or i/o port space
>>>> + */
>>>> +static inline uint8_t ns16550_sys_readb(void __iomem *addr, int mmi=
o)
>>>> +{
>>>> +    if (mmio)
>>>> +        return readb(addr);
>>>> +        else
>>>> +        return (uint8_t) inb((int) addr);
>>>> +}
>>>> +
>>>> +/**
>>>> + * @brief read system i/o (word)
>>>> + * @param[in] addr address to read
>>>> + * @param[in] mmio memory i/o space or i/o port space
>>>> + */
>>>> +static inline uint16_t ns16550_sys_readw(void __iomem *addr, int mm=
io)
>>>> +{
>>>> +    if (mmio)
>>>> +        return readw(addr);
>>>> +        else
>>>> +        return (uint16_t) inw((int) addr);
>>>> +}
>>>> +
>>>> +/**
>>>> + * @brief read system i/o (dword)
>>>> + * @param[in] addr address to read
>>>> + * @param[in] mmio memory i/o space or i/o port space
>>>> + */
>>>> +static inline uint32_t ns16550_sys_readl(void __iomem *addr, int mm=
io)
>>>> +{
>>>> +    if (mmio)
>>>> +        return readl(addr);
>>>> +        else
>>>> +        return (uint32_t) inl((int) addr);
>>>> +}
>>>> +
>>>> +/**
>>>> + * @brief write system i/o (byte)
>>>> + * @param[in] val data to write
>>>> + * @param[in] addr address to write to
>>>> + * @param[in] mmio memory i/o space or i/o port space
>>>> + */
>>>> +static inline void ns16550_sys_writeb(uint8_t val, void __iomem *ad=
dr, int mmio)
>>>> +{
>>>> +    if (mmio)
>>>> +        writeb(val, addr);
>>>> +        else
>>>> +        outb(val, (int) addr);
>>>> +}
>>>> +
>>>> +/**
>>>> + * @brief read system i/o (word)
>>>> + * @param[in] val data to write
>>>> + * @param[in] addr address to write to
>>>> + * @param[in] mmio memory i/o space or i/o port space
>>>> + */
>>>> +static inline void ns16550_sys_writew(uint16_t val, void __iomem *a=
ddr, int mmio)
>>>> +{
>>>> +    if (mmio)
>>>> +        writew(val, addr);
>>>> +        else
>>>> +        outw(val, (int) addr);
>>>> +}
>>>> +
>>>> +/**
>>>> + * @brief read system i/o (dword)
>>>> + * @param[in] val data to write
>>>> + * @param[in] addr address to write to
>>>> + * @param[in] mmio memory i/o space or i/o port space
>>>> + */
>>>> +static inline void ns16550_sys_writel(uint32_t val, void __iomem *a=
ddr, int mmio)
>>>> +{
>>>> +    if (mmio)
>>>> +        writel(val, addr);
>>>> +        else
>>>> +        outl(val, (int) addr);
>>>> +}
>>>> +
>>>> +/**
>>>>   * @brief read register
>>>>   *
>>>>   * @param[in] cdev pointer to console device
>>>> @@ -78,16 +160,13 @@ static uint32_t ns16550_read(struct console_dev=
ice *cdev, uint32_t off)
>>>>
>>>>     off <<=3D plat->shift;
>>>>
>>>> -    if (plat->reg_read)
>>>> -        return plat->reg_read((unsigned long)dev->priv, off);
>>>> -
>>>>     switch (width) {
>>>>     case IORESOURCE_MEM_8BIT:
>>>> -        return readb(dev->priv + off);
>>>> +        return ns16550_sys_readb(dev->priv + off, priv->mmio);
>>>>     case IORESOURCE_MEM_16BIT:
>>>> -        return readw(dev->priv + off);
>>>> +        return ns16550_sys_readw(dev->priv + off, priv->mmio);
>>>>     case IORESOURCE_MEM_32BIT:
>>>> -        return readl(dev->priv + off);
>>>> +        return ns16550_sys_readl(dev->priv + off, priv->mmio);
>>>>     }
>>>>     return -1;
>>>> }
>>>> @@ -109,20 +188,15 @@ static void ns16550_write(struct console_devic=
e *cdev, uint32_t val,
>>>>
>>>>     off <<=3D plat->shift;
>>>>
>>>> -    if (plat->reg_write) {
>>>> -        plat->reg_write(val, (unsigned long)dev->priv, off);
>>>> -        return;
>>>> -    }
>>>> -
>>>>     switch (width) {
>>>>     case IORESOURCE_MEM_8BIT:
>>>> -        writeb(val & 0xff, dev->priv + off);
>>>> +        ns16550_sys_writeb(val & 0xff, dev->priv + off, priv->mmio)=
;
>>>>         break;
>>>>     case IORESOURCE_MEM_16BIT:
>>>> -        writew(val & 0xffff, dev->priv + off);
>>>> +        ns16550_sys_writew(val & 0xffff, dev->priv + off, priv->mmi=
o);
>>>>         break;
>>>>     case IORESOURCE_MEM_32BIT:
>>>> -        writel(val, dev->priv + off);
>>>> +        ns16550_sys_writel(val, dev->priv + off, priv->mmio);
>>>>         break;
>>>>     }
>>>> }
>>>> @@ -293,16 +367,32 @@ static int ns16550_probe(struct device_d *dev)=

>>>>     struct console_device *cdev;
>>>>     struct NS16550_plat *plat =3D (struct NS16550_plat *)dev->platfo=
rm_data;
>>>>     struct ns16550_drvdata *devtype;
>>>> +    struct resource *res;
>>>>     int ret;
>>>>
>>>>     ret =3D dev_get_drvdata(dev, (unsigned long *)&devtype);
>>>>     if (ret)
>>>>         devtype =3D &ns16550_drvdata;
>>>>
>>>> -    dev->priv =3D dev_request_mem_region(dev, 0);
>>>> -
>>>>     priv =3D xzalloc(sizeof(*priv));
>>>>
>>>> +    res =3D dev_get_resource(dev, IORESOURCE_MEM, 0);
>>>> +    priv->mmio =3D (res !=3D NULL);
>>>> +    if (res)
>>>> +    {
>>>> +        res =3D request_iomem_region(dev_name(dev),res->start,res->=
end);
>>>> +    }
>>>> +    else
>>>> +    {
>>>
>>>
>>> Have you checked your patches with checkpatch.pl script?
>>>
>>>
>>>> +        res =3D dev_get_resource(dev, IORESOURCE_IO, 0);
>>>> +        if (res)
>>>> +            res =3D request_ioport_region(dev_name(dev),res->start,=
res->end);
>>>> +    }
>>>> +    if (!res)
>>>> +        goto err;
>>>> +    dev->priv =3D (void __force __iomem *) res->start;
>>>> +
>>>> +
>>>>     if (plat)
>>>>         priv->plat =3D *plat;
>>>>     else
>>>> diff --git a/include/driver.h b/include/driver.h
>>>> index 37797c7..ff4a5a1 100644
>>>> --- a/include/driver.h
>>>> +++ b/include/driver.h
>>>> @@ -276,7 +276,7 @@ static inline struct device_d *add_ns16550_devic=
e(int id, resource_size_t start,
>>>>         resource_size_t size, int flags, struct NS16550_plat *pdata)=

>>>> {
>>>>     return add_generic_device("ns16550_serial", id, NULL, start, siz=
e,
>>>> -                  IORESOURCE_MEM | flags, pdata);
>>>> +                  flags, pdata);
>>>> }
>>>>
>>>> #ifdef CONFIG_DRIVER_NET_DM9K
>>>> diff --git a/include/ns16550.h b/include/ns16550.h
>>>> index 36aa5ff..876bb04 100644
>>>> --- a/include/ns16550.h
>>>> +++ b/include/ns16550.h
>>>> @@ -33,18 +33,9 @@
>>>> struct NS16550_plat {
>>>>     /** Clock speed */
>>>>     unsigned int clock;
>>>> -    /**
>>>> -     * register read access capability
>>>> -     */
>>>> -    unsigned int (*reg_read) (unsigned long base, unsigned char reg=
_offset);
>>>> -    /**
>>>> -     * register write access capability
>>>> -     */
>>>> -    void (*reg_write) (unsigned int val, unsigned long base,
>>>> -                    unsigned char reg_offset);
>>>> -
>>>>     int shift;
>>>>     unsigned int flags;
>>>> +    int mmio;
>>> Do you really need this 'int mmio' here?
>>>
>>>> #define NS16650_FLAG_DISABLE_FIFO    1
>>>> };
>>>>
>>>> --=20
>>>> 1.7.1
>>>>
>>>>
>>>> _______________________________________________
>>>> barebox mailing list
>>>> barebox@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>
>>> --=20
>>> --=20
>>> Best regards,
>>>    Antony Pavlov
>



--------------ms050401020902030607020900
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIMmzCC
BjQwggQcoAMCAQICAR4wDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoT
DVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNp
Z25pbmcxKTAnBgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3
MTAyNDIxMDE1NVoXDTE3MTAyNDIxMDE1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1T
dGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWdu
aW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENs
aWVudCBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMcJg8zOLdgasSmkLhOr
lr6KMoOMpohBllVHrdRvEg/q6r8jR+EK75xCGhR8ToREoqe7zM9/UnC6TS2y9UKTpT1v7RSM
zR0t6ndl0TWBuUr/UXBhPk+Kmy7bI4yW4urC+y7P3/1/X7U8ocb8VpH/Clt+4iq7nirMcNh6
qJR+xjOhV+VHzQMALuGYn5KZmc1NbJQYclsGkDxDz2UbFqE2+6vIZoL+jb9x4Pa5gNf1TwSD
kOkikZB1xtB4ZqtXThaABSONdfmv/Z1pua3FYxnCFmdr/+N2JLKutIxMYqQOJebr/f/h5t95
m4JgrM3Y/w7YX9d7YAL9jvN4SydHsU6n65cCAwEAAaOCAa0wggGpMA8GA1UdEwEB/wQFMAMB
Af8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBRTcu2SnODaywFcfH6WNU7y1LhRgjAfBgNV
HSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRaMFgwJwYIKwYBBQUH
MAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYhaHR0cDovL3d3
dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5jb20v
c2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93
d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBAAqD
CH14qywGXLhjjF6uHLkjd02hcdh9hrw+VUsv+q1eeQWB21jWj3kJ96AUlPCoEGZ/ynJNScWy
6QMVQjbbMXltUfO4n4bGGdKo3awPWp61tjAFgraLJgDk+DsSvUD6EowjMTNx25GQgyYJ5RPI
zKKR9tQW8gGK+2+RHxkUCTbYFnL6kl8Ch507rUdPPipJ9CgJFws3kDS3gOS5WFMxcjO5DwKf
KSETEPrHh7p5shuuNktvsv6hxHTLhiMKX893gxdT3XLS9OKmCv87vkINQcNEcIIoFWbP9HOR
z9v3vQwR4e3ksLc2JZOAFK+ssS5XMEoznzpihEP0PLc4dCBYjbvSD7kxgDwZ+Aj8Q9PkbvE9
sIPP7ON0fz095HdThKjiVJe6vofq+n6b1NBc8XdrQvBmunwxD5nvtTW4vtN6VY7mUCmxsCie
uoBJ9OlqmsVWQvifIYf40dJPZkk9YgGTzWLpXDSfLSplbY2LL9C9U0ptvjcDjefLTvqSFc7t
w1sEhF0n/qpA2r0GpvkLRDmcSwVyPvmjFBGqUp/pNy8ZuPGQmHwFi2/14+xeSUDG2bwnsYJQ
G2EdJCB6luQ57GEnTA/yKZSTKI8dDQa8Sd3zfXb19mOgSF0bBdXbuKhEpuP9wirslFe6fQ1t
5j5R0xi72MZ8ikMu1RQZKCyDbMwazlHiMIIGXzCCBUegAwIBAgIDCWkOMA0GCSqGSIb3DQEB
BQUAMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMi
U2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20g
Q2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0EwHhcNMTQwMzI0MDkzNzUx
WhcNMTUwMzI1MDkyMDI1WjBhMRkwFwYDVQQNExBrY08xVFp2YlB1VHJwckU4MQswCQYDVQQG
EwJOTDEUMBIGA1UEAxMLTWljaGVsIFN0YW0xITAfBgkqhkiG9w0BCQEWEm1pY2hlbEByZXZl
cnplLm5ldDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKionYnufAXXVz55IVqM
4hUGc32XO6pXeHy2wb85GLs5UFnLVwqt+SsZWkAzGh2yb+ig59tamcw67ugX+6i+ya9UVD9E
lEPAYK3A5yTdM2Umg1944YiZjrV01NuHhrRPJTATZwmIqFCjqYKGaCt6xV5R/bEpSmetM66J
shnVbeRnMRzzocNuUkTiJqZu6mZRGcORfCDMUnfP7Sevzq9mCMKQM4q0tiMOK5MHdnfXnDhj
4VJGuOIzTqnMvivIENboKNtbJju4Yjmorm7kJ435fWlcBa0k2TyFrT+hkxooh2cwTclH6I1U
dh614RPbAG433Me9LzZNNkXX053VGwzKyyUCAwEAAaOCAvIwggLuMAkGA1UdEwQCMAAwCwYD
VR0PBAQDAgSwMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUNr7g
vLJAY8/w3wL6MIaqa0bw6fwwHwYDVR0jBBgwFoAUU3Ltkpzg2ssBXHx+ljVO8tS4UYIwHQYD
VR0RBBYwFIESbWljaGVsQHJldmVyemUubmV0MIIBZgYDVR0gBIIBXTCCAVkwggFVBgsrBgEE
AYG1NwECAzCCAUQwLgYIKwYBBQUHAgEWImh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGlj
eS5wZGYwggEQBggrBgEFBQcCAjCCAQIwJxYgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdHkwAwIBARqB1lRoaXMgY2VydGlmaWNhdGUgd2FzIGlzc3VlZCBhY2NvcmRpbmcgdG8g
dGhlIFN0YXJ0U1NMIFdlYi1vZi1UcnVzdCBDb21tdW5pdHkgVmFsaWRhdGlvbiByZXF1aXJl
bWVudHMgb2YgdGhlIFN0YXJ0Q29tIENBIHBvbGljeSwgcmVsaWFuY2Ugb25seSBmb3IgdGhl
IGludGVuZGVkIHB1cnBvc2UgaW4gY29tcGxpYW5jZSBvZiB0aGUgcmVseWluZyBwYXJ0eSBv
YmxpZ2F0aW9ucy4wNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5zdGFydHNzbC5jb20v
Y3J0dTEtY3JsLmNybDCBjgYIKwYBBQUHAQEEgYEwfzA5BggrBgEFBQcwAYYtaHR0cDovL29j
c3Auc3RhcnRzc2wuY29tL3N1Yi9jbGFzczEvY2xpZW50L2NhMEIGCCsGAQUFBzAChjZodHRw
Oi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zdWIuY2xhc3MxLmNsaWVudC5jYS5jcnQwIwYD
VR0SBBwwGoYYaHR0cDovL3d3dy5zdGFydHNzbC5jb20vMA0GCSqGSIb3DQEBBQUAA4IBAQCN
6w5arF+jboDXRlVPluqz/vHrmIY879dUxp4eLAfMCeL1efdrTcT8pOLSbJO80EQy460rDFOQ
2pbLKXkM9PfkcO/VKGG9CYWVjAFe2uyinxrtUE3EkfwLOleiLfFdDpSSQUfS1ns3nfrTU59w
VKUafg+j4u03gY78SI6WmPOWiQSQtHR8/ZIn1wz0bnI/2713PJgA1d9AgrZx13rib1fI7jQQ
wsJVWFG1B6acc05BmlIxtcp5NEwiJQmsT4hsRAtQvNbM4ivGBsZ7JocUe3Gqb4TBjv7/03Rw
fv2WhemEVSAMGgVGCLNIouhhHSMot1LEzfNZyUaIL3uPcy5z34zCMYID3TCCA9kCAQEwgZQw
gYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1
cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFz
cyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQQIDCWkOMAkGBSsOAwIaBQCgggId
MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE0MDQwNDE4MTE1
MFowIwYJKoZIhvcNAQkEMRYEFIInS98sMGKGp+azhATupzikdmbHMGwGCSqGSIb3DQEJDzFf
MF0wCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgIC
AIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaUGCSsGAQQBgjcQ
BDGBlzCBlDCBjDELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNV
BAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0
Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUgQ2xpZW50IENBAgMJaQ4wgacGCyqG
SIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRk
LjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UE
AxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAwlp
DjANBgkqhkiG9w0BAQEFAASCAQAO9Uq8S5/CBCuTpUq8OvSS/pELUv+n150p+j7007ROu+V1
SgrjveBmSSCtO+X6ozlajRLwiJ/e1Ju2ZWMyW4JN87hP1K8ksPRFQKNhK+wTWTvT7rFZrudQ
s3MMRK3K8v+uEMpCQuKidf9oHUff8vx+HVNk80kjnO48o2RD63k6tIa2Hdn3uD5sg0aCp4qQ
gkNNjXn5dy0vQqwsPHJuEb0vTHAaOnucJPswxLBKf/9XWfDAdcU3D1jVFAl/CcVwTNxmzfRe
0UaCmqOKHYUdl0PMJgQqa5p6lP89JgHhtPgUQTuTPnL9I6OXxcjLeSA+3Jlu4owGsuzsYVeI
4VZHmBPCAAAAAAAA
--------------ms050401020902030607020900--


--===============2055169477955259782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2055169477955259782==--
