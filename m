Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gQGBY-0002EY-2l
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 18:28:14 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <m.tretter@pengutronix.de>) id 1gQGBM-0004Mi-5H
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 19:28:00 +0100
Date: Fri, 23 Nov 2018 19:27:59 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20181123192759.16313d67@litschi.hi.pengutronix.de>
In-Reply-To: <0b334e3e-2175-7371-890a-9bc6228dddc9@rempel-privat.de>
References: <20181123133553.24761-1-m.tretter@pengutronix.de>
 <20181123133553.24761-4-m.tretter@pengutronix.de>
 <0b334e3e-2175-7371-890a-9bc6228dddc9@rempel-privat.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: zynqmp: add support for Xilinx ZCU104 board
To: barebox@lists.infradead.org

On Fri, 23 Nov 2018 16:08:18 +0100, Oleksij Rempel wrote:
> Hi Michael,
> 
> Am 23.11.18 um 14:35 schrieb Michael Tretter:
> > Add support for the Xilinx Zynq Ultrascale+ MPSoC architecture (ZynqMP)
> > and the Xilinx ZCU104 board.
> > 
> > Barebox is booted as BL33 in EL-1 and expects that a BL2 (i.e. the FSBL)
> > already took care of initializing the RAM. Also for debug_ll, the UART
> > is expected to be already setup correctly.
> > 
> > Thus, you have to add the Barebox binary to a boot image as described in
> > "Chapter 11: Boot and Configuration" of "Zynq Ultrascale+ Device
> > Technical Reference Manual".
> > 
> > The ENTRY_FUNCTION macro cannot be used in aarch64, because aarch64 does
> > not specify the __naked__ attribute and gcc add a function prologue to
> > the entry function which writes to the stack, but the stack is not set
> > up. Thus, the entry has to be implemented in assembly.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  arch/arm/Kconfig                              | 14 +++++++
> >  arch/arm/Makefile                             |  1 +
> >  arch/arm/boards/Makefile                      |  1 +
> >  arch/arm/boards/xilinx-zcu104/Makefile        |  2 +
> >  arch/arm/boards/xilinx-zcu104/board.c         | 25 ++++++++++++
> >  arch/arm/boards/xilinx-zcu104/lowlevel.c      | 30 +++++++++++++++
> >  arch/arm/boards/xilinx-zcu104/lowlevel_init.S | 32 ++++++++++++++++
> >  arch/arm/configs/zynqmp_defconfig             | 38 +++++++++++++++++++
> >  arch/arm/dts/Makefile                         |  1 +
> >  arch/arm/mach-zynqmp/Kconfig                  |  9 +++++
> >  arch/arm/mach-zynqmp/Makefile                 |  1 +
> >  arch/arm/mach-zynqmp/include/mach/debug_ll.h  | 30 +++++++++++++++
> >  arch/arm/mach-zynqmp/zynqmp.c                 | 22 +++++++++++
> >  images/Makefile                               |  1 +
> >  images/Makefile.zynqmp                        |  7 ++++
> >  15 files changed, 214 insertions(+)
> >  create mode 100644 arch/arm/boards/xilinx-zcu104/Makefile
> >  create mode 100644 arch/arm/boards/xilinx-zcu104/board.c
> >  create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel.c
> >  create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel_init.S
> >  create mode 100644 arch/arm/configs/zynqmp_defconfig
> >  create mode 100644 arch/arm/mach-zynqmp/Kconfig
> >  create mode 100644 arch/arm/mach-zynqmp/Makefile
> >  create mode 100644 arch/arm/mach-zynqmp/include/mach/debug_ll.h
> >  create mode 100644 arch/arm/mach-zynqmp/zynqmp.c
> >  create mode 100644 images/Makefile.zynqmp
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 3b486f7b8b..842cbb1485 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -245,6 +245,19 @@ config ARCH_ZYNQ
> >  	bool "Xilinx Zynq-based boards"
> >  	select HAS_DEBUG_LL
> >  
> > +config ARCH_ZYNQMP
> > +	bool "Xilinx ZynqMP-based boards"
> > +	select CPU_V8
> > +	select HAS_DEBUG_LL
> > +	select HAVE_PBL_MULTI_IMAGES
> > +	select COMMON_CLK
> > +	select COMMON_CLK_OF_PROVIDER
> > +	select CLKDEV_LOOKUP
> > +	select OFDEVICE
> > +	select OFTREE
> > +	select RELOCATABLE
> > +	select SYS_SUPPORTS_64BIT_KERNEL
> > +
> >  config ARCH_QEMU
> >  	bool "ARM QEMU boards"
> >  	select HAS_DEBUG_LL
> > @@ -275,6 +288,7 @@ source arch/arm/mach-tegra/Kconfig
> >  source arch/arm/mach-uemd/Kconfig
> >  source arch/arm/mach-zynq/Kconfig
> >  source arch/arm/mach-qemu/Kconfig
> > +source arch/arm/mach-zynqmp/Kconfig
> >  
> >  config ARM_ASM_UNIFIED
> >  	bool
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 50958b787f..675d3433cc 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -101,6 +101,7 @@ machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
> >  machine-$(CONFIG_ARCH_TEGRA)		:= tegra
> >  machine-$(CONFIG_ARCH_UEMD)		:= uemd
> >  machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
> > +machine-$(CONFIG_ARCH_ZYNQMP)		:= zynqmp
> >  machine-$(CONFIG_ARCH_QEMU)		:= qemu
> >  
> >  
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index 3bf176b14d..a15a24c02e 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -153,6 +153,7 @@ obj-$(CONFIG_MACH_VSCOM_BALTOS)			+= vscom-baltos/
> >  obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
> >  obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
> >  obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
> > +obj-$(CONFIG_MACH_XILINX_ZCU104)		+= xilinx-zcu104/
> >  obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
> >  obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
> >  obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
> > diff --git a/arch/arm/boards/xilinx-zcu104/Makefile b/arch/arm/boards/xilinx-zcu104/Makefile
> > new file mode 100644
> > index 0000000000..918615bb76
> > --- /dev/null
> > +++ b/arch/arm/boards/xilinx-zcu104/Makefile
> > @@ -0,0 +1,2 @@
> > +obj-y += board.o
> > +lwl-y += lowlevel.o lowlevel_init.o
> > diff --git a/arch/arm/boards/xilinx-zcu104/board.c b/arch/arm/boards/xilinx-zcu104/board.c
> > new file mode 100644
> > index 0000000000..090c366e99
> > --- /dev/null
> > +++ b/arch/arm/boards/xilinx-zcu104/board.c
> > @@ -0,0 +1,25 @@
> > +/*
> > + * Copyright (C) 2018 Michael Tretter <m.tretter@pengutronix.de>
> > + *
> > + * This program is free software; you can redistribute it and/or modify it
> > + * under the terms of the GNU General Public License as published by the Free
> > + * Software Foundation; either version 2 of the License, or (at your option)
> > + * any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful, but WITHOUT
> > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > + * more details.
> > + */  
> 
> It will be better to start use SPDX-License-Identifier for new files.

Ok.
 
> > +#include <common.h>
> > +#include <init.h>
> > +
> > +static int zcu104_console_init(void)  
> > +{> +	barebox_set_model("Xilinx Zynq UltraScale+ MPSoC ZCU104");  
> > +	barebox_set_hostname("zcu104");  
> 
> Latest barebox version can extract model and hostname from devicetree.
> So, probably we do not need complete board.c file.

I am assuming that we will need a board.c file once we have more
devices working. I will remove the board.c anyway and wait until it is
actually required.

> > +	return 0;
> > +}
> > +console_initcall(zcu104_console_init);
> > diff --git a/arch/arm/boards/xilinx-zcu104/lowlevel.c b/arch/arm/boards/xilinx-zcu104/lowlevel.c
> > new file mode 100644
> > index 0000000000..94ce8b1af9
> > --- /dev/null
> > +++ b/arch/arm/boards/xilinx-zcu104/lowlevel.c
> > @@ -0,0 +1,30 @@
> > +/*
> > + * (c) 2018 Michael Tretter <m.tretter@pengutronix.de>
> > + *
> > + * This program is free software; you can redistribute it and/or modify it
> > + * under the terms of the GNU General Public License as published by the Free
> > + * Software Foundation; either version 2 of the License, or (at your option)
> > + * any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful, but WITHOUT
> > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > + * more details.
> > + */
> > +
> > +#include <common.h>
> > +#include <debug_ll.h>
> > +#include <asm/barebox-arm.h>
> > +
> > +extern char __dtb_zynqmp_zcu104_revA_start[];
> > +
> > +void zynqmp_zcu104_start(uint32_t, uint32_t, uint32_t);
> > +
> > +void noinline zynqmp_zcu104_start(uint32_t r0, uint32_t r1, uint32_t r2)
> > +{
> > +	/* Assume that the first stage boot loader configured the UART */
> > +	putc_ll('>');
> > +
> > +	barebox_arm_entry(0, SZ_2G,
> > +			  __dtb_zynqmp_zcu104_revA_start + global_variable_offset());
> > +}
> > diff --git a/arch/arm/boards/xilinx-zcu104/lowlevel_init.S b/arch/arm/boards/xilinx-zcu104/lowlevel_init.S
> > new file mode 100644
> > index 0000000000..23f0ee99dd
> > --- /dev/null
> > +++ b/arch/arm/boards/xilinx-zcu104/lowlevel_init.S
> > @@ -0,0 +1,32 @@
> > +#include <linux/linkage.h>
> > +#include <init.h>
> > +#include <asm/barebox-arm-head.h>
> > +#include <asm/system.h>
> > +
> > +#define ENTRY_PROC(name) \
> > +	.section .text_head_entry_##name; \
> > +	ENTRY(##name); \
> > +		b 2f; \
> > +		nop; \
> > +		nop; \
> > +		nop; \
> > +		nop; \
> > +		nop; \
> > +		nop; \
> > +		nop; \
> > +		.asciz "barebox"; \
> > +		.word 0xffffffff; \
> > +		.word _barebox_image_size; \
> > +		.rept 8; \
> > +		.word 0x55555555; \
> > +		.endr; \
> > +		2:  
> 
> Is it some thing SoC specific, or we can move it to some generic place?

This is a replacement for the ENTRY_FUNCTION(...) macro. I am expecting
that other arm64 SoCs will use the same macro. However, I wasn't really
sure how to call it and where to put it. I am thinking about an arm64
header, but any suggestions are welcome.

> 
> > +#define ENTRY_PROC_END(name) \
> > +	END(##name)
> > +
> > +ENTRY_PROC(start_zynqmp_zcu104)
> > +	mov x0, #0x7ffffff0
> > +	mov sp, x0
> > +	b zynqmp_zcu104_start
> > +ENTRY_PROC_END(start_zynqmp_zcu104)
> > diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
> > new file mode 100644
> > index 0000000000..4dea9647fe
> > --- /dev/null
> > +++ b/arch/arm/configs/zynqmp_defconfig
> > @@ -0,0 +1,38 @@
> > +CONFIG_ARCH_ZYNQMP=y
> > +CONFIG_MACH_XILINX_ZCU104=y
> > +CONFIG_MMU=y
> > +CONFIG_MALLOC_SIZE=0x0
> > +CONFIG_MALLOC_TLSF=y
> > +CONFIG_KALLSYMS=y
> > +CONFIG_HUSH_FANCY_PROMPT=y
> > +CONFIG_CMDLINE_EDITING=y
> > +CONFIG_AUTO_COMPLETE=y
> > +CONFIG_MENU=y
> > +CONFIG_BOOTM_SHOW_TYPE=y
> > +CONFIG_BOOTM_VERBOSE=y
> > +CONFIG_BOOTM_INITRD=y
> > +CONFIG_BOOTM_OFTREE=y
> > +CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> > +CONFIG_LONGHELP=y
> > +CONFIG_CMD_MEMINFO=y
> > +CONFIG_CMD_GO=y
> > +CONFIG_CMD_RESET=y
> > +CONFIG_CMD_PARTITION=y
> > +CONFIG_CMD_EXPORT=y
> > +CONFIG_CMD_PRINTENV=y
> > +CONFIG_CMD_MAGICVAR=y
> > +CONFIG_CMD_MAGICVAR_HELP=y
> > +CONFIG_CMD_SAVEENV=y
> > +CONFIG_CMD_LN=y
> > +CONFIG_CMD_SLEEP=y
> > +CONFIG_CMD_EDIT=y
> > +CONFIG_CMD_MENU=y
> > +CONFIG_CMD_MENU_MANAGEMENT=y
> > +CONFIG_CMD_READLINE=y
> > +CONFIG_CMD_TIMEOUT=y
> > +CONFIG_CMD_CLK=y
> > +CONFIG_CMD_OFTREE=y
> > +CONFIG_CMD_TIME=y
> > +CONFIG_DRIVER_SERIAL_CADENCE=y
> > +# CONFIG_SPI is not set
> > +CONFIG_DIGEST=y
> > diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> > index 503d9b18f9..0ac3124c8c 100644
> > --- a/arch/arm/dts/Makefile
> > +++ b/arch/arm/dts/Makefile
> > @@ -119,6 +119,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
> >  pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
> >  pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
> > +pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
> >  
> >  pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
> >  
> > diff --git a/arch/arm/mach-zynqmp/Kconfig b/arch/arm/mach-zynqmp/Kconfig
> > new file mode 100644
> > index 0000000000..1c7727d66c
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/Kconfig
> > @@ -0,0 +1,9 @@
> > +if ARCH_ZYNQMP
> > +
> > +config MACH_XILINX_ZCU104
> > +	bool "Xilinx Zynq UltraScale+ MPSoC ZCU104"
> > +	help
> > +	  Say Y here if you are using the Xilinx Zynq UltraScale+ MPSoC ZCU104
> > +	  evaluation board.
> > +
> > +endif
> > diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Makefile
> > new file mode 100644
> > index 0000000000..1f4e72abc1
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/Makefile
> > @@ -0,0 +1 @@
> > +obj-y += zynqmp.o
> > diff --git a/arch/arm/mach-zynqmp/include/mach/debug_ll.h b/arch/arm/mach-zynqmp/include/mach/debug_ll.h
> > new file mode 100644
> > index 0000000000..cd2583a35b
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/include/mach/debug_ll.h
> > @@ -0,0 +1,30 @@
> > +#ifndef __MACH_DEBUG_LL_H__
> > +#define __MACH_DEBUG_LL_H__
> > +
> > +#include <io.h>
> > +
> > +#define ZYNQMP_UART0_BASE		0xFF000000
> > +#define ZYNQMP_UART1_BASE		0xFF010000
> > +#define ZYNQMP_UART_BASE		ZYNQMP_UART0_BASE
> > +#define ZYNQMP_DEBUG_LL_UART_BASE 	ZYNQMP_UART_BASE
> > +
> > +#define ZYNQMP_UART_RXTXFIFO	0x30
> > +#define ZYNQMP_UART_CHANNEL_STS	0x2C
> > +
> > +#define ZYNQMP_UART_STS_TFUL	(1 << 4)
> > +#define ZYNQMP_UART_TXDIS		(1 << 5)
> > +
> > +static inline void PUTC_LL(int c)
> > +{
> > +	void __iomem *base = (void __iomem *)ZYNQMP_DEBUG_LL_UART_BASE;
> > +
> > +	if (readl(base) & ZYNQMP_UART_TXDIS)
> > +		return;
> > +
> > +	while ((readl(base + ZYNQMP_UART_CHANNEL_STS) & ZYNQMP_UART_STS_TFUL) != 0)
> > +		;
> > +
> > +	writel(c, base + 0x30);
> > +}
> > +
> > +#endif
> > diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
> > new file mode 100644
> > index 0000000000..04aedb59e0
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/zynqmp.c
> > @@ -0,0 +1,22 @@
> > +/*
> > + * (c) 2018 Michael Tretter <m.tretter@pengutronix.de>
> > + *
> > + * This program is free software; you can redistribute it and/or modify it
> > + * under the terms of the GNU General Public License as published by the Free
> > + * Software Foundation; either version 2 of the License, or (at your option)
> > + * any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful, but WITHOUT
> > + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> > + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> > + * more details.
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>  
> 
> Do we need it?

Same as for board.c, but I will remove the file as well.

> 
> > +static int zynqmp_init(void)
> > +{
> > +	return 0;
> > +}
> > +postcore_initcall(zynqmp_init);
> > diff --git a/images/Makefile b/images/Makefile
> > index 5c4d99ac5a..4d28f73a57 100644
> > --- a/images/Makefile
> > +++ b/images/Makefile
> > @@ -113,6 +113,7 @@ include $(srctree)/images/Makefile.socfpga
> >  include $(srctree)/images/Makefile.tegra
> >  include $(srctree)/images/Makefile.vexpress
> >  include $(srctree)/images/Makefile.at91
> > +include $(srctree)/images/Makefile.zynqmp
> >  
> >  targets += $(image-y) pbl.lds barebox.x barebox.z
> >  targets += $(patsubst %,%.pblx,$(pblx-y))
> > diff --git a/images/Makefile.zynqmp b/images/Makefile.zynqmp
> > new file mode 100644
> > index 0000000000..f977a6baff
> > --- /dev/null
> > +++ b/images/Makefile.zynqmp
> > @@ -0,0 +1,7 @@
> > +#
> > +# barebox image generation Makefile for Xilinx Zynq UltraScale+
> > +#
> > +
> > +pblx-$(CONFIG_MACH_XILINX_ZCU104) += start_zynqmp_zcu104
> > +FILE_barebox-zynqmp-zcu104.img = start_zynqmp_zcu104.pblx
> > +image-$(CONFIG_MACH_XILINX_ZCU104) += barebox-zynqmp-zcu104.img
> >   
> 
> Sasha posted "ARM: images: Use piggydata" patches. It will be great if
> you can test you patches on top of piggy patchset.

Will do.

Thanks,

Michael

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
