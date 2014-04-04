Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WW7PG-0000vx-Uw
 for barebox@lists.infradead.org; Fri, 04 Apr 2014 16:55:57 +0000
From: Michel Stam <michel@reverze.net>
Mime-Version: 1.0 (1.0)
Date: Fri, 4 Apr 2014 18:52:46 +0200
Message-Id: <F17C5AB3-87A5-4FA1-9CAB-7BF13489E1C5@reverze.net>
References: <1396618899-26105-1-git-send-email-michel@reverze.net>
 <1396618899-26105-3-git-send-email-michel@reverze.net>
 <20140404195639.7fdb6d8cb645145fffde4d22@gmail.com>
In-Reply-To: <20140404195639.7fdb6d8cb645145fffde4d22@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9120168613411780345=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] x86: ns16550: Rework driver to allow for x86 I/O space
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


--===============9120168613411780345==
Content-Type: multipart/signed; boundary=Apple-Mail-D18E7A87-BF5E-4118-B754-0AE441369D85; protocol="application/pkcs7-signature"; micalg=sha1
Content-Transfer-Encoding: 7bit


--Apple-Mail-D18E7A87-BF5E-4118-B754-0AE441369D85
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello Antony,

Sorry to hear that- the patch was not meant to add new functionality, merely=
 preserve the status quo in master.=20

To explain; add_ns16550_device() assumes that all ns16550 chips are mapped i=
nto memory. This is not so on the x86 platform. Previously, because no io-ma=
pped resources were available, x86 created a "memory" device with custom IO r=
outines. I rewrote this to use IORESOURCE_IO instead, but to do this, the in=
vocation of the add_ns16550_device() needed to specify the resource type. Th=
e patch which conflicts with your patch can be undone as far as I'm concerne=
d; I wasn't adding anything new to the mips/mach-xburst platform. I can redo=
 the patch, leaving the file targeted by your patch unchanged if you like?

Regards,

Michel Stam


> On 4 apr. 2014, at 17:56, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>=20
> On Fri,  4 Apr 2014 15:41:39 +0200
> michel@reverze.net wrote:
>=20
>> From: Michel Stam <m.stam@fugro.nl>
>>=20
>> The current implementation fakes a memory-mapped I/O device
>> at 0x3f8 and 0x2f8, then uses platform read/write functions
>> to do the actual reading and writing. These platform functions
>> only exist for the x86 platform; better to move the I/O
>> routines into the driver and have the driver request I/O ports
>> using request_ioport_region.
>> ---
>> arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
>> arch/arm/mach-mvebu/armada-370-xp.c               |    3 +-
>> arch/arm/mach-mvebu/kirkwood.c                    |    3 +-
>> arch/arm/mach-socfpga/xload.c                     |    4 +-
>> arch/arm/mach-tegra/tegra20.c                     |    2 +-
>> arch/mips/boards/dlink-dir-320/serial.c           |    2 +-
>> arch/mips/boards/loongson-ls1b/serial.c           |    2 +-
>> arch/mips/mach-ar231x/ar231x.c                    |    2 +-
>> arch/mips/mach-xburst/serial.c                    |   60 ++++++++++
> hmmm
> this partly revert my recent commit in the 'next' branch:
>=20
> commit 8f5d37835d44d07460d92307f0b6489048a18fba
> Author: Antony Pavlov <antonynpavlov@gmail.com>
> Date:   Tue Mar 25 20:50:58 2014 +0400
>=20
>    MIPS: mach-xburst: drop serial.c
>=20
>    We use dts for serial port initialization,
>    so we have no need in mach-xburst/serial.c anymore.
>=20
>    Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>=20
> arch/mips/mach-xburst/Makefile |  1 -
> arch/mips/mach-xburst/serial.c | 60 --------------------------------------=
---------------
> 2 files changed, 61 deletions(-)
>=20
>> arch/openrisc/boards/generic/generic.c            |    2 +-
>> arch/ppc/boards/freescale-p1022ds/p1022ds.c       |    2 +-
>> arch/ppc/boards/freescale-p2020rdb/p2020rdb.c     |    3 +-
>> arch/ppc/boards/geip-da923rc/da923rc.c            |    3 +-
>> arch/x86/boards/x86_generic/generic_pc.c          |    5 +-
>> arch/x86/mach-i386/Makefile                       |    1 -
>> arch/x86/mach-i386/generic.c                      |   34 ------
>> drivers/serial/serial_ns16550.c                   |  122 ++++++++++++++++=
++---
>> include/driver.h                                  |    2 +-
>> include/ns16550.h                                 |   11 +--
>> 19 files changed, 187 insertions(+), 78 deletions(-)
>> create mode 100644 arch/mips/mach-xburst/serial.c
>> delete mode 100644 arch/x86/mach-i386/generic.c
>>=20
>> diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm=
/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
>> index e2ad1c8..69967c5 100644
>> --- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
>> +++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
>> @@ -223,7 +223,7 @@ static int eukrea_cpuimx27_console_init(void)
>>    imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
>> #ifdef CONFIG_DRIVER_SERIAL_NS16550
>>    add_ns16550_device(DEVICE_ID_DYNAMIC, MX27_CS3_BASE_ADDR + QUART_OFFSE=
T, 0xf,
>> -             IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
>> +             IORESOURCE_MEM | IORESOURCE_MEM_16BIT, &quad_uart_serial_pl=
at);
>> #endif
>>    return 0;
>> }
>> diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/ar=
mada-370-xp.c
>> index 776b4c0..209be0b 100644
>> --- a/arch/arm/mach-mvebu/armada-370-xp.c
>> +++ b/arch/arm/mach-mvebu/armada-370-xp.c
>> @@ -60,7 +60,8 @@ static int armada_370_xp_add_uart(void)
>>    uart_plat.clock =3D clk_get_rate(tclk);
>>    if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
>>                (unsigned int)CONSOLE_UART_BASE, 32,
>> -                IORESOURCE_MEM_32BIT, &uart_plat))
>> +                IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
>> +                &uart_plat))
>>        return -ENODEV;
>>    return 0;
>> }
>> diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwoo=
d.c
>> index 1284220..c79d130 100644
>> --- a/arch/arm/mach-mvebu/kirkwood.c
>> +++ b/arch/arm/mach-mvebu/kirkwood.c
>> @@ -58,7 +58,8 @@ static int kirkwood_add_uart(void)
>>    uart_plat.clock =3D clk_get_rate(tclk);
>>    if (!add_ns16550_device(DEVICE_ID_DYNAMIC,
>>                (unsigned int)CONSOLE_UART_BASE, 32,
>> -                IORESOURCE_MEM_32BIT, &uart_plat))
>> +                IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
>> +                &uart_plat))
>>        return -ENODEV;
>>    return 0;
>> }
>> diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.=
c
>> index 0b99db0..6586ada 100644
>> --- a/arch/arm/mach-socfpga/xload.c
>> +++ b/arch/arm/mach-socfpga/xload.c
>> @@ -45,8 +45,8 @@ static void socfpga_uart_init(void)
>>    clks[uart] =3D clk_fixed("uart", 100000000);
>>    clkdev_add_physbase(clks[uart], CYCLONE5_UART0_ADDRESS, NULL);
>>    clkdev_add_physbase(clks[uart], CYCLONE5_UART1_ADDRESS, NULL);
>> -    add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM_8BIT,
>> -            &uart_pdata);
>> +    add_ns16550_device(0, 0xffc02000, 1024, IORESOURCE_MEM |
>> +            IORESOURCE_MEM_8BIT, &uart_pdata);
>> }
>>=20
>> static void socfpga_timer_init(void)
>> diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.=
c
>> index cc2d748..bdd7960 100644
>> --- a/arch/arm/mach-tegra/tegra20.c
>> +++ b/arch/arm/mach-tegra/tegra20.c
>> @@ -50,7 +50,7 @@ static int tegra20_add_debug_console(void)
>>        return -ENODEV;
>>=20
>>    add_ns16550_device(DEVICE_ID_DYNAMIC, base, 8 << debug_uart.shift,
>> -               IORESOURCE_MEM_8BIT, &debug_uart);
>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &debug_uart);
>>=20
>>    return 0;
>> }
>> diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/d=
link-dir-320/serial.c
>> index bddb683..eb87379 100644
>> --- a/arch/mips/boards/dlink-dir-320/serial.c
>> +++ b/arch/mips/boards/dlink-dir-320/serial.c
>> @@ -36,7 +36,7 @@ static int dir320_console_init(void)
>>=20
>>    /* Register the serial port */
>>    add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
>> -            IORESOURCE_MEM_8BIT, &serial_plat);
>> +            IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>>=20
>>    return 0;
>> }
>> diff --git a/arch/mips/boards/loongson-ls1b/serial.c b/arch/mips/boards/l=
oongson-ls1b/serial.c
>> index d8e0f7c..7159ab7 100644
>> --- a/arch/mips/boards/loongson-ls1b/serial.c
>> +++ b/arch/mips/boards/loongson-ls1b/serial.c
>> @@ -15,7 +15,7 @@ static int console_init(void)
>>    barebox_set_hostname("ls1b");
>>=20
>>    add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(LS1X_UART2_BASE),
>> -        8, IORESOURCE_MEM_8BIT, &serial_plat);
>> +        8, IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>>=20
>>    return 0;
>> }
>> diff --git a/arch/mips/mach-ar231x/ar231x.c b/arch/mips/mach-ar231x/ar231=
x.c
>> index ca912bf..06d2edb 100644
>> --- a/arch/mips/mach-ar231x/ar231x.c
>> +++ b/arch/mips/mach-ar231x/ar231x.c
>> @@ -189,7 +189,7 @@ static int ar2312_console_init(void)
>>    /* Register the serial port */
>>    serial_plat.clock =3D ar2312_sys_frequency();
>>    add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(AR2312_UART0),
>> -        8 << AR2312_UART_SHIFT, IORESOURCE_MEM_8BIT, &serial_plat);
>> +        8 << AR2312_UART_SHIFT, IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &s=
erial_plat);
>>    return 0;
>> }
>> console_initcall(ar2312_console_init);
>> diff --git a/arch/mips/mach-xburst/serial.c b/arch/mips/mach-xburst/seria=
l.c
>> new file mode 100644
>> index 0000000..4365d19
>> --- /dev/null
>> +++ b/arch/mips/mach-xburst/serial.c
>> @@ -0,0 +1,60 @@
>> +/*
>> + * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
>> + *
>> + * Based on the linux kernel JZ4740 serial support:
>> + * Copyright (C) 2010, Lars-Peter Clausen <lars@metafoo.de>
>> + *
>> + * This file is part of barebox.
>> + * See file CREDITS for list of people who contributed to this project.
>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License version 2
>> + * as published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + *
>> + */
>> +
>> +#include <common.h>
>> +#include <ns16550.h>
>> +#include <io.h>
>> +#include <mach/devices.h>
>> +
>> +#define JZ_UART_SHIFT    2
>> +
>> +#define ier        (1 << JZ_UART_SHIFT)
>> +#define fcr        (2 << JZ_UART_SHIFT)
>> +
>> +static void jz_serial_reg_write(unsigned int val, unsigned long base,
>> +    unsigned char reg_offset)
>> +{
>> +    switch (reg_offset) {
>> +    case fcr:
>> +        val |=3D 0x10; /* Enable uart module */
>> +        break;
>> +    case ier:
>> +        val |=3D (val & 0x4) << 2;
>> +        break;
>> +    default:
>> +        break;
>> +    }
>> +
>> +    writeb(val & 0xff, (void *)(base + reg_offset));
>> +}
>> +
>> +struct device_d *jz_add_uart(int id, unsigned long base, unsigned int cl=
ock)
>> +{
>> +    struct NS16550_plat *serial_plat;
>> +
>> +    serial_plat =3D xzalloc(sizeof(*serial_plat));
>> +
>> +    serial_plat->shift =3D JZ_UART_SHIFT;
>> +    serial_plat->reg_write =3D &jz_serial_reg_write;
>> +    serial_plat->clock =3D clock;
>> +
>> +    return add_ns16550_device(id, base, 8 << JZ_UART_SHIFT,
>> +            IORESOURCE_MEM | IORESOURCE_MEM_8BIT, serial_plat);
>> +}
>> diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/board=
s/generic/generic.c
>> index 290e05c..1d6ac8a 100644
>> --- a/arch/openrisc/boards/generic/generic.c
>> +++ b/arch/openrisc/boards/generic/generic.c
>> @@ -15,7 +15,7 @@ static int openrisc_console_init(void)
>>    barebox_set_hostname("or1k");
>>=20
>>    /* Register the serial port */
>> -    add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024,=
 IORESOURCE_MEM_8BIT, &serial_plat);
>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024,=
 IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>>=20
>> #ifdef CONFIG_DRIVER_NET_ETHOC
>>    add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
>> diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.c b/arch/ppc/board=
s/freescale-p1022ds/p1022ds.c
>> index c800064..57e7953 100644
>> --- a/arch/ppc/boards/freescale-p1022ds/p1022ds.c
>> +++ b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
>> @@ -130,7 +130,7 @@ static int p1022ds_console_init(void)
>>=20
>>    serial_plat.clock =3D fsl_get_bus_freq(0);
>>    add_ns16550_device(DEVICE_ID_DYNAMIC, CFG_IMMR + 0x4500, 16,
>> -               IORESOURCE_MEM_8BIT, &serial_plat);
>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>>    return 0;
>> }
>>=20
>> diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boa=
rds/freescale-p2020rdb/p2020rdb.c
>> index 229ae41..385a436 100644
>> --- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
>> +++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
>> @@ -112,7 +112,8 @@ static int p2020_console_init(void)
>>=20
>>    serial_plat.clock =3D fsl_get_bus_freq(0);
>>=20
>> -    add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16, IORESOURCE_MEM=
_8BIT,
>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16,
>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
>>               &serial_plat);
>>    return 0;
>> }
>> diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/boards/gei=
p-da923rc/da923rc.c
>> index 976aa8d..3d77349 100644
>> --- a/arch/ppc/boards/geip-da923rc/da923rc.c
>> +++ b/arch/ppc/boards/geip-da923rc/da923rc.c
>> @@ -115,7 +115,8 @@ static int da923rc_console_init(void)
>>        barebox_set_model("unknown");
>>=20
>>    serial_plat.clock =3D fsl_get_bus_freq(0);
>> -    add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16, IORESOURCE_MEM_8BIT,=

>> +    add_ns16550_device(1, CFG_CCSRBAR + 0x4600, 16,
>> +               IORESOURCE_MEM | IORESOURCE_MEM_8BIT,
>>               &serial_plat);
>>    return 0;
>> }
>> diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x=
86_generic/generic_pc.c
>> index 895b88d..69c6f58 100644
>> --- a/arch/x86/boards/x86_generic/generic_pc.c
>> +++ b/arch/x86/boards/x86_generic/generic_pc.c
>> @@ -141,8 +141,6 @@ device_initcall(devices_init);
>>=20
>> static struct NS16550_plat serial_plat =3D {
>>        .clock =3D 1843200,
>> -       .reg_read =3D x86_uart_read,
>> -       .reg_write =3D x86_uart_write,
>> };
>>=20
>> static int pc_console_init(void)
>> @@ -151,7 +149,8 @@ static int pc_console_init(void)
>>    barebox_set_hostname("x86");
>>=20
>>    /* Register the serial port */
>> -    add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat);
>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, IORESOURCE_IO, &seri=
al_plat);
>> +    add_ns16550_device(DEVICE_ID_DYNAMIC, 0x2f8, 8, IORESOURCE_IO, &seri=
al_plat);
>>=20
>>    return 0;
>> }
>> diff --git a/arch/x86/mach-i386/Makefile b/arch/x86/mach-i386/Makefile
>> index 10712e6..e46aa5b 100644
>> --- a/arch/x86/mach-i386/Makefile
>> +++ b/arch/x86/mach-i386/Makefile
>> @@ -1,4 +1,3 @@
>> -obj-y +=3D generic.o
>> obj-y +=3D reset.o
>>=20
>> # reference clocksource
>> diff --git a/arch/x86/mach-i386/generic.c b/arch/x86/mach-i386/generic.c
>> deleted file mode 100644
>> index 69cf53c..0000000
>> --- a/arch/x86/mach-i386/generic.c
>> +++ /dev/null
>> @@ -1,34 +0,0 @@
>> -/*
>> - * Copyright (C) 2009 Juergen Beisert, Pengutronix
>> - *
>> - * This program is free software; you can redistribute it and/or
>> - * modify it under the terms of the GNU General Public License as
>> - * published by the Free Software Foundation; either version 2 of
>> - * the License, or (at your option) any later version.
>> - *
>> - * This program is distributed in the hope that it will be useful,
>> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> - * GNU General Public License for more details.
>> - *
>> - *
>> - */
>> -
>> -/**
>> - * @file
>> - * @brief x86 Architecture Initialization routines
>> - */
>> -
>> -#include <io.h>
>> -
>> -/** to work with the 8250 UART driver implementation we need this functi=
on */
>> -unsigned int x86_uart_read(unsigned long base, unsigned char reg_idx)
>> -{
>> -    return inb(base + reg_idx);
>> -}
>> -
>> -/** to work with the 8250 UART driver implementation we need this functi=
on */
>> -void x86_uart_write(unsigned int val, unsigned long base, unsigned char r=
eg_idx)
>> -{
>> -    outb(val, base + reg_idx);
>> -}
>> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16=
550.c
>> index 0c00eb1..dfe572d 100644
>> --- a/drivers/serial/serial_ns16550.c
>> +++ b/drivers/serial/serial_ns16550.c
>> @@ -47,6 +47,7 @@ struct ns16550_priv {
>>    struct console_device cdev;
>>    struct NS16550_plat plat;
>>    int access_width;
>> +    int mmio;
>>    struct clk *clk;
>>    uint32_t fcrval;
>> };
>> @@ -62,6 +63,87 @@ struct ns16550_drvdata {
>> };
>>=20
>> /**
>> + * @brief read system i/o (byte)
>> + * @param[in] addr address to read
>> + * @param[in] mmio memory i/o space or i/o port space
>> + */
>> +static inline uint8_t ns16550_sys_readb(void __iomem *addr, int mmio)
>> +{
>> +    if (mmio)
>> +        return readb(addr);
>> +        else
>> +        return (uint8_t) inb((int) addr);
>> +}
>> +
>> +/**
>> + * @brief read system i/o (word)
>> + * @param[in] addr address to read
>> + * @param[in] mmio memory i/o space or i/o port space
>> + */
>> +static inline uint16_t ns16550_sys_readw(void __iomem *addr, int mmio)
>> +{
>> +    if (mmio)
>> +        return readw(addr);
>> +        else
>> +        return (uint16_t) inw((int) addr);
>> +}
>> +
>> +/**
>> + * @brief read system i/o (dword)
>> + * @param[in] addr address to read
>> + * @param[in] mmio memory i/o space or i/o port space
>> + */
>> +static inline uint32_t ns16550_sys_readl(void __iomem *addr, int mmio)
>> +{
>> +    if (mmio)
>> +        return readl(addr);
>> +        else
>> +        return (uint32_t) inl((int) addr);
>> +}
>> +
>> +/**
>> + * @brief write system i/o (byte)
>> + * @param[in] val data to write
>> + * @param[in] addr address to write to
>> + * @param[in] mmio memory i/o space or i/o port space
>> + */
>> +static inline void ns16550_sys_writeb(uint8_t val, void __iomem *addr, i=
nt mmio)
>> +{
>> +    if (mmio)
>> +        writeb(val, addr);
>> +        else
>> +        outb(val, (int) addr);
>> +}
>> +
>> +/**
>> + * @brief read system i/o (word)
>> + * @param[in] val data to write
>> + * @param[in] addr address to write to
>> + * @param[in] mmio memory i/o space or i/o port space
>> + */
>> +static inline void ns16550_sys_writew(uint16_t val, void __iomem *addr, i=
nt mmio)
>> +{
>> +    if (mmio)
>> +        writew(val, addr);
>> +        else
>> +        outw(val, (int) addr);
>> +}
>> +
>> +/**
>> + * @brief read system i/o (dword)
>> + * @param[in] val data to write
>> + * @param[in] addr address to write to
>> + * @param[in] mmio memory i/o space or i/o port space
>> + */
>> +static inline void ns16550_sys_writel(uint32_t val, void __iomem *addr, i=
nt mmio)
>> +{
>> +    if (mmio)
>> +        writel(val, addr);
>> +        else
>> +        outl(val, (int) addr);
>> +}
>> +
>> +/**
>>  * @brief read register
>>  *
>>  * @param[in] cdev pointer to console device
>> @@ -78,16 +160,13 @@ static uint32_t ns16550_read(struct console_device *=
cdev, uint32_t off)
>>=20
>>    off <<=3D plat->shift;
>>=20
>> -    if (plat->reg_read)
>> -        return plat->reg_read((unsigned long)dev->priv, off);
>> -
>>    switch (width) {
>>    case IORESOURCE_MEM_8BIT:
>> -        return readb(dev->priv + off);
>> +        return ns16550_sys_readb(dev->priv + off, priv->mmio);
>>    case IORESOURCE_MEM_16BIT:
>> -        return readw(dev->priv + off);
>> +        return ns16550_sys_readw(dev->priv + off, priv->mmio);
>>    case IORESOURCE_MEM_32BIT:
>> -        return readl(dev->priv + off);
>> +        return ns16550_sys_readl(dev->priv + off, priv->mmio);
>>    }
>>    return -1;
>> }
>> @@ -109,20 +188,15 @@ static void ns16550_write(struct console_device *cd=
ev, uint32_t val,
>>=20
>>    off <<=3D plat->shift;
>>=20
>> -    if (plat->reg_write) {
>> -        plat->reg_write(val, (unsigned long)dev->priv, off);
>> -        return;
>> -    }
>> -
>>    switch (width) {
>>    case IORESOURCE_MEM_8BIT:
>> -        writeb(val & 0xff, dev->priv + off);
>> +        ns16550_sys_writeb(val & 0xff, dev->priv + off, priv->mmio);
>>        break;
>>    case IORESOURCE_MEM_16BIT:
>> -        writew(val & 0xffff, dev->priv + off);
>> +        ns16550_sys_writew(val & 0xffff, dev->priv + off, priv->mmio);
>>        break;
>>    case IORESOURCE_MEM_32BIT:
>> -        writel(val, dev->priv + off);
>> +        ns16550_sys_writel(val, dev->priv + off, priv->mmio);
>>        break;
>>    }
>> }
>> @@ -293,16 +367,32 @@ static int ns16550_probe(struct device_d *dev)
>>    struct console_device *cdev;
>>    struct NS16550_plat *plat =3D (struct NS16550_plat *)dev->platform_dat=
a;
>>    struct ns16550_drvdata *devtype;
>> +    struct resource *res;
>>    int ret;
>>=20
>>    ret =3D dev_get_drvdata(dev, (unsigned long *)&devtype);
>>    if (ret)
>>        devtype =3D &ns16550_drvdata;
>>=20
>> -    dev->priv =3D dev_request_mem_region(dev, 0);
>> -
>>    priv =3D xzalloc(sizeof(*priv));
>>=20
>> +    res =3D dev_get_resource(dev, IORESOURCE_MEM, 0);
>> +    priv->mmio =3D (res !=3D NULL);
>> +    if (res)
>> +    {
>> +        res =3D request_iomem_region(dev_name(dev),res->start,res->end);=

>> +    }
>> +    else
>> +    {
>=20
>=20
>=20
> Have you checked your patches with checkpatch.pl script?
>=20
>=20
>> +        res =3D dev_get_resource(dev, IORESOURCE_IO, 0);
>> +        if (res)
>> +            res =3D request_ioport_region(dev_name(dev),res->start,res->=
end);
>> +    }
>> +    if (!res)
>> +        goto err;
>> +    dev->priv =3D (void __force __iomem *) res->start;
>> +
>> +
>>    if (plat)
>>        priv->plat =3D *plat;
>>    else
>> diff --git a/include/driver.h b/include/driver.h
>> index 37797c7..ff4a5a1 100644
>> --- a/include/driver.h
>> +++ b/include/driver.h
>> @@ -276,7 +276,7 @@ static inline struct device_d *add_ns16550_device(int=
 id, resource_size_t start,
>>        resource_size_t size, int flags, struct NS16550_plat *pdata)
>> {
>>    return add_generic_device("ns16550_serial", id, NULL, start, size,
>> -                  IORESOURCE_MEM | flags, pdata);
>> +                  flags, pdata);
>> }
>>=20
>> #ifdef CONFIG_DRIVER_NET_DM9K
>> diff --git a/include/ns16550.h b/include/ns16550.h
>> index 36aa5ff..876bb04 100644
>> --- a/include/ns16550.h
>> +++ b/include/ns16550.h
>> @@ -33,18 +33,9 @@
>> struct NS16550_plat {
>>    /** Clock speed */
>>    unsigned int clock;
>> -    /**
>> -     * register read access capability
>> -     */
>> -    unsigned int (*reg_read) (unsigned long base, unsigned char reg_offs=
et);
>> -    /**
>> -     * register write access capability
>> -     */
>> -    void (*reg_write) (unsigned int val, unsigned long base,
>> -                    unsigned char reg_offset);
>> -
>>    int shift;
>>    unsigned int flags;
>> +    int mmio;
>=20
> Do you really need this 'int mmio' here?
>=20
>> #define NS16650_FLAG_DISABLE_FIFO    1
>> };
>>=20
>> --=20
>> 1.7.1
>>=20
>>=20
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>=20
>=20
> --=20
> --=20
> Best regards,
>   Antony Pavlov

--Apple-Mail-D18E7A87-BF5E-4118-B754-0AE441369D85
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Disposition: attachment;
	filename=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIUaDCCBjQw
ggQcoAMCAQICAR4wDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDE1NVoX
DTE3MTAyNDIxMDE1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMcJg8zOLdgasSmkLhOrlr6KMoOMpohBllVHrdRvEg/q6r8jR+EK
75xCGhR8ToREoqe7zM9/UnC6TS2y9UKTpT1v7RSMzR0t6ndl0TWBuUr/UXBhPk+Kmy7bI4yW4urC
+y7P3/1/X7U8ocb8VpH/Clt+4iq7nirMcNh6qJR+xjOhV+VHzQMALuGYn5KZmc1NbJQYclsGkDxD
z2UbFqE2+6vIZoL+jb9x4Pa5gNf1TwSDkOkikZB1xtB4ZqtXThaABSONdfmv/Z1pua3FYxnCFmdr
/+N2JLKutIxMYqQOJebr/f/h5t95m4JgrM3Y/w7YX9d7YAL9jvN4SydHsU6n65cCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBRTcu2SnODaywFc
fH6WNU7y1LhRgjAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBAAqDCH14qywG
XLhjjF6uHLkjd02hcdh9hrw+VUsv+q1eeQWB21jWj3kJ96AUlPCoEGZ/ynJNScWy6QMVQjbbMXlt
UfO4n4bGGdKo3awPWp61tjAFgraLJgDk+DsSvUD6EowjMTNx25GQgyYJ5RPIzKKR9tQW8gGK+2+R
HxkUCTbYFnL6kl8Ch507rUdPPipJ9CgJFws3kDS3gOS5WFMxcjO5DwKfKSETEPrHh7p5shuuNktv
sv6hxHTLhiMKX893gxdT3XLS9OKmCv87vkINQcNEcIIoFWbP9HORz9v3vQwR4e3ksLc2JZOAFK+s
sS5XMEoznzpihEP0PLc4dCBYjbvSD7kxgDwZ+Aj8Q9PkbvE9sIPP7ON0fz095HdThKjiVJe6vofq
+n6b1NBc8XdrQvBmunwxD5nvtTW4vtN6VY7mUCmxsCieuoBJ9OlqmsVWQvifIYf40dJPZkk9YgGT
zWLpXDSfLSplbY2LL9C9U0ptvjcDjefLTvqSFc7tw1sEhF0n/qpA2r0GpvkLRDmcSwVyPvmjFBGq
Up/pNy8ZuPGQmHwFi2/14+xeSUDG2bwnsYJQG2EdJCB6luQ57GEnTA/yKZSTKI8dDQa8Sd3zfXb1
9mOgSF0bBdXbuKhEpuP9wirslFe6fQ1t5j5R0xi72MZ8ikMu1RQZKCyDbMwazlHiMIIGXzCCBUeg
AwIBAgIDCWkOMA0GCSqGSIb3DQEBBQUAMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRD
b20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYG
A1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0EwHhcN
MTQwMzI0MDkzNzUxWhcNMTUwMzI1MDkyMDI1WjBhMRkwFwYDVQQNExBrY08xVFp2YlB1VHJwckU4
MQswCQYDVQQGEwJOTDEUMBIGA1UEAxMLTWljaGVsIFN0YW0xITAfBgkqhkiG9w0BCQEWEm1pY2hl
bEByZXZlcnplLm5ldDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKionYnufAXXVz55
IVqM4hUGc32XO6pXeHy2wb85GLs5UFnLVwqt+SsZWkAzGh2yb+ig59tamcw67ugX+6i+ya9UVD9E
lEPAYK3A5yTdM2Umg1944YiZjrV01NuHhrRPJTATZwmIqFCjqYKGaCt6xV5R/bEpSmetM66JshnV
beRnMRzzocNuUkTiJqZu6mZRGcORfCDMUnfP7Sevzq9mCMKQM4q0tiMOK5MHdnfXnDhj4VJGuOIz
TqnMvivIENboKNtbJju4Yjmorm7kJ435fWlcBa0k2TyFrT+hkxooh2cwTclH6I1Udh614RPbAG43
3Me9LzZNNkXX053VGwzKyyUCAwEAAaOCAvIwggLuMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0G
A1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUNr7gvLJAY8/w3wL6MIaqa0bw
6fwwHwYDVR0jBBgwFoAUU3Ltkpzg2ssBXHx+ljVO8tS4UYIwHQYDVR0RBBYwFIESbWljaGVsQHJl
dmVyemUubmV0MIIBZgYDVR0gBIIBXTCCAVkwggFVBgsrBgEEAYG1NwECAzCCAUQwLgYIKwYBBQUH
AgEWImh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwggEQBggrBgEFBQcCAjCCAQIw
JxYgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwAwIBARqB1lRoaXMgY2VydGlmaWNh
dGUgd2FzIGlzc3VlZCBhY2NvcmRpbmcgdG8gdGhlIFN0YXJ0U1NMIFdlYi1vZi1UcnVzdCBDb21t
dW5pdHkgVmFsaWRhdGlvbiByZXF1aXJlbWVudHMgb2YgdGhlIFN0YXJ0Q29tIENBIHBvbGljeSwg
cmVsaWFuY2Ugb25seSBmb3IgdGhlIGludGVuZGVkIHB1cnBvc2UgaW4gY29tcGxpYW5jZSBvZiB0
aGUgcmVseWluZyBwYXJ0eSBvYmxpZ2F0aW9ucy4wNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2Ny
bC5zdGFydHNzbC5jb20vY3J0dTEtY3JsLmNybDCBjgYIKwYBBQUHAQEEgYEwfzA5BggrBgEFBQcw
AYYtaHR0cDovL29jc3Auc3RhcnRzc2wuY29tL3N1Yi9jbGFzczEvY2xpZW50L2NhMEIGCCsGAQUF
BzAChjZodHRwOi8vYWlhLnN0YXJ0c3NsLmNvbS9jZXJ0cy9zdWIuY2xhc3MxLmNsaWVudC5jYS5j
cnQwIwYDVR0SBBwwGoYYaHR0cDovL3d3dy5zdGFydHNzbC5jb20vMA0GCSqGSIb3DQEBBQUAA4IB
AQCN6w5arF+jboDXRlVPluqz/vHrmIY879dUxp4eLAfMCeL1efdrTcT8pOLSbJO80EQy460rDFOQ
2pbLKXkM9PfkcO/VKGG9CYWVjAFe2uyinxrtUE3EkfwLOleiLfFdDpSSQUfS1ns3nfrTU59wVKUa
fg+j4u03gY78SI6WmPOWiQSQtHR8/ZIn1wz0bnI/2713PJgA1d9AgrZx13rib1fI7jQQwsJVWFG1
B6acc05BmlIxtcp5NEwiJQmsT4hsRAtQvNbM4ivGBsZ7JocUe3Gqb4TBjv7/03Rwfv2WhemEVSAM
GgVGCLNIouhhHSMot1LEzfNZyUaIL3uPcy5z34zCMIIHyTCCBbGgAwIBAgIBATANBgkqhkiG9w0B
AQUFADB9MQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2Vj
dXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzEpMCcGA1UEAxMgU3RhcnRDb20gQ2VydGlm
aWNhdGlvbiBBdXRob3JpdHkwHhcNMDYwOTE3MTk0NjM2WhcNMzYwOTE3MTk0NjM2WjB9MQswCQYD
VQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwg
Q2VydGlmaWNhdGUgU2lnbmluZzEpMCcGA1UEAxMgU3RhcnRDb20gQ2VydGlmaWNhdGlvbiBBdXRo
b3JpdHkwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDBiNsJvGxGfHiflXu1M5DycmLW
wTYgIiRezul38kMKogZkpMyONvg45iPwbm2xPN1yo4UcodM9tDMr0y+v/uqwQVlntsQGfQqedIXW
eUyAN3rfOQVSWff0G0ZDpNKFhdLDcfN1YjS6LIp/Ho/u7TTQEceWzVI9ujPW3U3eCztKS5/CJi/6
tRYccjV3yjxd5srhJosaNnZcAdt0FCX+7bWgiA/deMotHweXMAEtcnn6RtYTKqi5pquDSR3l8u/d
5AGOGAqPY1MWhWKpDhk6zLVmpsJrdAfkK+F2PrRt2PZE4XNiHzvEvqBTViVsUQn3qqvKv3b9bZvz
ndu/PWa8DFaqr5hIlTpL36dYUNk4dalb6kMMAv+Z6+hsTXBbKWWc3apdzK8BMewM69KN6Oqce+Zu
9ydmDBpI125C4z/eIT574Q1w+2OqqGwaVLRcJXrJosmLFqa7LH4XXgVNWG4SHQHuEhANxjJ/GP/8
9PrNbpHoNkm+Gkhpi8KWTRoSsmkXwQqQ1vp5Iki/untp+HDH+no32NgN0nZPV/+Qt+OR0t3vwmC3
Zzrd/qqc8NSLf3Iizsafl7b4r4qgEKjZ+xjGtrVcUjyJthkqcwEKDwOzEmDyei+B26Nu/yYwl/WL
3YlXtq09s68rxbd2AvCl1iuahhQqcvbjM4xdCUsT37uMdBNSSwIDAQABo4ICUjCCAk4wDAYDVR0T
BAUwAwEB/zALBgNVHQ8EBAMCAa4wHQYDVR0OBBYEFE4L7xqkQFulF2mHMMo0aEPQQa7yMGQGA1Ud
HwRdMFswLKAqoCiGJmh0dHA6Ly9jZXJ0LnN0YXJ0Y29tLm9yZy9zZnNjYS1jcmwuY3JsMCugKaAn
hiVodHRwOi8vY3JsLnN0YXJ0Y29tLm9yZy9zZnNjYS1jcmwuY3JsMIIBXQYDVR0gBIIBVDCCAVAw
ggFMBgsrBgEEAYG1NwEBATCCATswLwYIKwYBBQUHAgEWI2h0dHA6Ly9jZXJ0LnN0YXJ0Y29tLm9y
Zy9wb2xpY3kucGRmMDUGCCsGAQUFBwIBFilodHRwOi8vY2VydC5zdGFydGNvbS5vcmcvaW50ZXJt
ZWRpYXRlLnBkZjCB0AYIKwYBBQUHAgIwgcMwJxYgU3RhcnQgQ29tbWVyY2lhbCAoU3RhcnRDb20p
IEx0ZC4wAwIBARqBl0xpbWl0ZWQgTGlhYmlsaXR5LCByZWFkIHRoZSBzZWN0aW9uICpMZWdhbCBM
aW1pdGF0aW9ucyogb2YgdGhlIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IFBvbGlj
eSBhdmFpbGFibGUgYXQgaHR0cDovL2NlcnQuc3RhcnRjb20ub3JnL3BvbGljeS5wZGYwEQYJYIZI
AYb4QgEBBAQDAgAHMDgGCWCGSAGG+EIBDQQrFilTdGFydENvbSBGcmVlIFNTTCBDZXJ0aWZpY2F0
aW9uIEF1dGhvcml0eTANBgkqhkiG9w0BAQUFAAOCAgEAFmyZ9GYMNPXQhV59CuzaEE44HF7fpiUF
S5Eyweg78T3dRAlbB0mKKctmArexmvclmAk8jhvh3TaHK0u7aNM5Zj2gJsfyOZEdUauCe37Vzlrk
4gNXcGmXCPleWKYK34wGmkUWFjgKXlf2Ysd6AgXmvB618p70qSmD+LIU424oh0TDkBreOKk8rENN
ZEXO3SipXPJzewT4F+irsfMuXGRuczE6Eri8sxHkfY+BUZo7jYn0TZNmezwD7dOaHZrzZVD1oNB1
ny+v8OqCQ5j4aZyJecRDjkZy42Q2Eq/3JR44iZB3fsNrarnDy0RLrHiQi+fHLB5LEUTINFInzQpd
n4XBidUaePKVEFMy3YCEZnXZtWgo+2EuvoSoOMCZEoalHmdkrQYuL6lwhceWD3yJZfWOQ1QOq92l
gDmUYMA0yZZwLKMS9R9Ie70cfmu3nZD0Ijuu+PwqyvqCUqDvr0tVk+vBtfAii6w0TiYiBKGHLHVK
t+V9E9e4DGTANtLJL4YSjCMJwRuCO3NJo2pXh5Tl1njFmUNj403gdy3hZZlyaQQaRwnmDwFWJPsf
vw55qVguucQJAX6Vum0ABj6y6koQOdjQK/W/7HW/lwLFCRsI3FU34oH7N4RDYiDK51ZLZer+bMEk
kyShNOsF/5oirpt9P/FlUQqmMGqz9IgcgA38corog14xggNvMIIDawIBATCBlDCBjDELMAkGA1UE
BhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENl
cnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRl
cm1lZGlhdGUgQ2xpZW50IENBAgMJaQ4wCQYFKw4DAhoFAKCCAa8wGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTQwNDA0MTY1MjQ3WjAjBgkqhkiG9w0BCQQxFgQUbFE/
AQpRCDmh615Yty7ipil4aSYwgaUGCSsGAQQBgjcQBDGBlzCBlDCBjDELMAkGA1UEBhMCSUwxFjAU
BgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRl
IFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRlcm1lZGlhdGUg
Q2xpZW50IENBAgMJaQ4wgacGCyqGSIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQGEwJJTDEWMBQG
A1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUg
U2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBD
bGllbnQgQ0ECAwlpDjANBgkqhkiG9w0BAQEFAASCAQBrczYzqd06uL5fvTH8RK5DCuxpusXt17H8
JNBnjzme2XnYEKPtzoSEpN1JLSxlkpeYZsiZP2SeQ7RAafG7TPo2udNoqCbLLcxgtN01BuobO7dp
o9IpYDqG2NR4cNVp3PrZ32BUkbXp99KNbXnLPOiBFj0WHsKHJWoSMn8twx4eo9Uk1LzSVkf2RC1S
RznlnOsQmg8QJolosxqPLDQ2KOG57/T1vQXHQTVItiQ3f6G9KQeplqbOC1vVamkm/qHgG8NqlJb1
KF4XgQ1/7INPeKc6iu7ph4osJd9iHeuN+Ij8LXWc8QbyRih+5N3Hy4jH0JFQkckmVf4lCyLTx8X9
yCW4AAAAAAAA
--Apple-Mail-D18E7A87-BF5E-4118-B754-0AE441369D85--


--===============9120168613411780345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9120168613411780345==--
