Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-f180.google.com ([209.85.128.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VrBKS-00067i-Al
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 18:49:45 +0000
Received: by mail-ve0-f180.google.com with SMTP id jz11so615888veb.39
 for <barebox@lists.infradead.org>; Thu, 12 Dec 2013 10:49:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131212080359.GE24559@pengutronix.de>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
Date: Thu, 12 Dec 2013 13:49:19 -0500
Message-ID: <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha, thanks for the pointers(especially on the UART and debugging)
-- I had included the code from your PFLA02 board file but hadn't
enabled the extra debugging config options.

The good news is, based on your email, I think I have everything
right. The bad news is, it still doesn't work! (initial board
bring-ups are always just SO much fun - NOT) Everything links, no
error messages or warnings, I get an img file out, etc -- just no luck
in it actually doing anything. (PS...I am currently booting from SD
Card but intend on having some things in GPMI NAND eventually)

Based on this and from Alex's suggestion, I am just going to include
my actual modified source files in this email/post just in case anyone
sees anything blindingly obvious.

Thanks again!
Michael Burkey


----------------------------
boards\variscite-mx6\board.c
----------------------------
/*
 * Copyright (C) 2013 Michael Burkey
 * Based on code by Sascha Hauer, Pengutronix
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation.
 *
 */

#include <common.h>
#include <gpio.h>
#include <init.h>
#include <of.h>

#include <mach/imx6.h>

static int variscite_custom_init(void)
{
	if (!of_machine_is_compatible("variscite,imx6q-custom"))
		return 0;

	return 0;
}
device_initcall(variscite_custom_init);

static int variscite_custom_core_init(void)
{
	if (!of_machine_is_compatible("variscite,imx6q-custom"))
		return 0;

	imx6_init_lowlevel();

	return 0;
}
postcore_initcall(variscite_custom_core_init);

-------------------------------
boards\variscite-mx6\lowlevel.c
-------------------------------
/*
 *
 * Copyright (C) 2013 Michael Burkey
 * Based on code by Sascha Hauer <s.hauer@pengutronix.de>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */
#include <debug_ll.h>
#include <common.h>
#include <sizes.h>
#include <io.h>
#include <asm/barebox-arm-head.h>
#include <asm/barebox-arm.h>
#include <asm/sections.h>
#include <asm/cache.h>
#include <asm/mmu.h>
#include <mach/imx6-mmdc.h>
#include <mach/imx6.h>

static inline void setup_uart(void)
{
	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
	void __iomem *uartbase = (void *)MX6_UART1_BASE_ADDR;
	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;

	writel(0x4, iomuxbase + 0x01f8);

	writel(0xffffffff, ccmbase + 0x68);
	writel(0xffffffff, ccmbase + 0x6c);
	writel(0xffffffff, ccmbase + 0x70);
	writel(0xffffffff, ccmbase + 0x74);
	writel(0xffffffff, ccmbase + 0x78);
	writel(0xffffffff, ccmbase + 0x7c);
	writel(0xffffffff, ccmbase + 0x80);

	writel(0x00000000, uartbase + 0x80);
	writel(0x00004027, uartbase + 0x84);
	writel(0x00000704, uartbase + 0x88);
	writel(0x00000a81, uartbase + 0x90);
	writel(0x0000002b, uartbase + 0x9c);
	writel(0x00013880, uartbase + 0xb0);
	writel(0x0000047f, uartbase + 0xa4);
	writel(0x0000c34f, uartbase + 0xa8);
	writel(0x00000001, uartbase + 0x80);

	putc_ll('>');
}
extern char __dtb_imx6q_var_custom_start[];

ENTRY_FUNCTION(start_variscite_custom)(void)
{
	uint32_t fdt;

	__barebox_arm_head();

	arm_cpu_lowlevel_init();

	arm_setup_stack(0x00920000 - 8);

		setup_uart();
	fdt = (uint32_t)__dtb_imx6q_var_custom_start - get_runtime_offset();

	barebox_arm_entry(0x10000000, SZ_1G, fdt);
}

--------------------------------------------------
boards\variscite-mx6\flash-header-variscite.imxcfg
--------------------------------------------------

loadaddr 0x10000000
soc imx6
dcdofs 0x400
wm 32 0x020e0798 0x000C0000
wm 32 0x020e0758 0x00000000
wm 32 0x020e0588 0x00000030
wm 32 0x020e0594 0x00000030
wm 32 0x020e056c 0x00000030
wm 32 0x020e0578 0x00000030
wm 32 0x020e074c 0x00000030
wm 32 0x020e057c 0x00000030
wm 32 0x020e058c 0x00000000
wm 32 0x020e059c 0x00000030
wm 32 0x020e05a0 0x00000030
wm 32 0x020e078c 0x00000030
wm 32 0x020e0750 0x00020000
wm 32 0x020e05a8 0x00000030
wm 32 0x020e05b0 0x00000030
wm 32 0x020e0524 0x00000030
wm 32 0x020e051c 0x00000030
wm 32 0x020e0518 0x00000030
wm 32 0x020e050c 0x00000030
wm 32 0x020e05b8 0x00000030
wm 32 0x020e05c0 0x00000030
wm 32 0x020e0774 0x00020000
wm 32 0x020e0784 0x00000030
wm 32 0x020e0788 0x00000030
wm 32 0x020e0794 0x00000030
wm 32 0x020e079c 0x00000030
wm 32 0x020e07a0 0x00000030
wm 32 0x020e07a4 0x00000030
wm 32 0x020e07a8 0x00000030
wm 32 0x020e0748 0x00000030
wm 32 0x020e05ac 0x00000030
wm 32 0x020e05b4 0x00000030
wm 32 0x020e0528 0x00000030
wm 32 0x020e0520 0x00000030
wm 32 0x020e0514 0x00000030
wm 32 0x020e0510 0x00000030
wm 32 0x020e05bc 0x00000030
wm 32 0x020e05c4 0x00000030
wm 32 0x021b0800 0xA1390003
wm 32 0x021b080c 0x001F001F
wm 32 0x021b0810 0x001F001F
wm 32 0x021b480c 0x001F001F
wm 32 0x021b4810 0x001F001F
wm 32 0x021b083c 0x4333033F
wm 32 0x021b0840 0x032C031D
wm 32 0x021b483c 0x43200332
wm 32 0x021b4840 0x031A026A
wm 32 0x021b0848 0x4D464746
wm 32 0x021b4848 0x47453F4D
wm 32 0x021b0850 0x3E434440
wm 32 0x021b4850 0x47384839
wm 32 0x021b081c 0x33333333
wm 32 0x021b0820 0x33333333
wm 32 0x021b0824 0x33333333
wm 32 0x021b0828 0x33333333
wm 32 0x021b481c 0x33333333
wm 32 0x021b4820 0x33333333
wm 32 0x021b4824 0x33333333
wm 32 0x021b4828 0x33333333
wm 32 0x021b08b8 0x00000800
wm 32 0x021b48b8 0x00000800
wm 32 0x021b0004 0x00020036
wm 32 0x021b0008 0x09444040
wm 32 0x021b000c 0x555A7975
wm 32 0x021b0010 0xFF538F64
wm 32 0x021b0014 0x01FF00DB
wm 32 0x021b0018 0x00001740
wm 32 0x021b001c 0x00008000
wm 32 0x021b002c 0x000026D2
wm 32 0x021b0030 0x005A1023
wm 32 0x021b0040 0x00000027
wm 32 0x021b0000 0x831A0000
wm 32 0x021b001c 0x04088032
wm 32 0x021b001c 0x00008033
wm 32 0x021b001c 0x00048031
wm 32 0x021b001c 0x09408030
wm 32 0x021b001c 0x04008040
wm 32 0x021b0020 0x00005800
wm 32 0x021b0818 0x00011117
wm 32 0x021b4818 0x00011117
wm 32 0x021b0004 0x00025576
wm 32 0x021b0404 0x00011006
wm 32 0x021b001c 0x00000000
								--------------------------------
images\Makefile.imx
--------------------------------

appended:
pblx-$(CONFIG_MACH_VARISCITE_MX6) += start_variscite_custom
CFG_start_variscite_custom.pblx.imximg =
$(board)/variscite-mx6/flash-header-variscite.imxcfg
FILE_barebox-variscite-custom.img = start_variscite_custom.pblx.imximg
image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
	

-------------------------------------------------------------

I also added the CONFIG_MACH_VARISCITE_MX6 flag to the config options,
etc (and added "obj-$(CONFIG_MACH_VARISCITE_MX6) += variscite-mx6/" to
the Makefile under boards (and I have gone back and verified that
everything that should be spitting out a .o appears to be -- i.e. the
right files are actually getting built).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
