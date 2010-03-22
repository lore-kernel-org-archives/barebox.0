Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Ntcp8-0008Ab-5F
	for barebox@lists.infradead.org; Mon, 22 Mar 2010 08:17:23 +0000
Date: Mon, 22 Mar 2010 09:17:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100322081719.GE2241@pengutronix.de>
References: <1269008851-16647-1-git-send-email-eric@eukrea.com>
	<1269008851-16647-2-git-send-email-eric@eukrea.com>
	<1269008851-16647-3-git-send-email-eric@eukrea.com>
	<1269008851-16647-4-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1269008851-16647-4-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] Add support for Eukrea's CPUIMX25
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Fri, Mar 19, 2010 at 03:27:31PM +0100, Eric Benard wrote:
> This boards integrates 64mB of DDR, a 256MB NAND flash, a RMII Ethernet PHY
> and a i.MX257 CPU.
> 
> Signed-off-by: Eric Benard <eric@eukrea.com>
> ---
> diff --git a/board/eukrea_cpuimx25/Makefile b/board/eukrea_cpuimx25/Makefile
> new file mode 100644
> index 0000000..9cc2fa5
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/Makefile
> @@ -0,0 +1,24 @@
> +#
> +# (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>

Can you replace the copyrights with your own in files like these? There
is nothing left from any work from Juergen here.

> +#
> +# See file CREDITS for list of people who contributed to this
> +# project.
> +#
> +# This program is free software; you can redistribute it and/or
> +# modify it under the terms of the GNU General Public License as
> +# published by the Free Software Foundation; either version 2 of
> +# the License, or (at your option) any later version.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License
> +# along with this program; if not, write to the Free Software
> +# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> +# MA 02111-1307 USA
> +#
> +
> +obj-y += lowlevel_init.o
> +obj-y += eukrea_cpuimx25.o
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/eukrea_cpuimx25.c
> @@ -0,0 +1,290 @@
> +/*
> + * (C) 2009 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
> + * (c) 2010 Eukrea, Eric Benard <eric@eukrea.com>
> + * 
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <environment.h>
> +#include <mach/imx-regs.h>
> +#include <asm/armlinux.h>
> +#include <mach/gpio.h>
> +#include <asm/io.h>
> +#include <asm/mmu.h>
> +
> +#include <partition.h>
> +#include <asm/mach-types.h>
> +#include <mach/imx-nand.h>
> +#include <mach/imxfb.h>
> +#include <fec.h>
> +#include <nand.h>
> +#include <mach/imx-flash-header.h>
> +#include <mach/iomux-mx25.h>
> +
> +extern unsigned long _stext;
> +
> +void __naked __flash_header_start go(void)
> +{
> +	__asm__ __volatile__("b _start\n");
> +}
> +
> +struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] = {
> +	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
> +	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x12344321, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2100000, },
> +	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
> +	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2100000, },
> +	{ .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x81000000, .val = 0xff, },
> +	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216080, },
> +	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x00295729, },
> +	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
> +};
> +
> +#define APP_DEST	0x80000000
> +
> +struct imx_flash_header __flash_header_0x400 eukrea_cpuimx25_header = {
> +	.app_code_jump_vector	= APP_DEST + 0x1000,
> +	.app_code_barker	= APP_CODE_BARKER,
> +	.app_code_csf		= 0,
> +	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
> +	.super_root_key		= 0,
> +	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
> +	.app_dest		= APP_DEST,
> +	.dcd_barker		= DCD_BARKER,
> +	.dcd_block_len		= sizeof (dcd_entry),
> +};

This is what we did in another project recently:

struct imx_flash_header __flash_header_0x400 cm3389_header = {
	.app_code_jump_vector	= TEXT_BASE + 0x2000,
	.app_code_barker	= APP_CODE_BARKER,
	.app_code_csf		= 0,
	.dcd_ptr_ptr		= TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd),
	.super_root_key		= 0,
	.dcd			= TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
	.app_dest		= TEXT_BASE,
	.dcd_barker		= DCD_BARKER,
	.dcd_block_len		= sizeof (dcd_entry),
};

The advantage is that we do not have to copy ourselves to another
location in SDRAM and it's slightly easier to read. You might want to
change it.

> +
> +extern unsigned long __bss_start;
> +
> +unsigned long __image_len_0x400 barebox_len = 0x40000;
> +
> +static struct fec_platform_data fec_info = {
> +	.xcv_type	= RMII,
> +	.phy_addr	= 1,
> +};
> +
> +static struct device_d fec_dev = {
> +	.name     = "fec_imx",
> +	.map_base = IMX_FEC_BASE,
> +	.platform_data	= &fec_info,
> +};
> +
> +static struct memory_platform_data sdram_pdata = {
> +	.name	= "ram0",
> +	.flags	= DEVFS_RDWR,
> +};
> +
> +static struct device_d sdram0_dev = {
> +	.name     = "mem",
> +	.map_base = IMX_SDRAM_CS0,
> +	.size     = 64 * 1024 * 1024,
> +	.platform_data = &sdram_pdata,
> +};
> +
> +struct imx_nand_platform_data nand_info = {
> +	.width	= 1,
> +	.hw_ecc	= 1,
> +};
> +
> +static struct device_d nand_dev = {
> +	.name     = "imx_nand",
> +	.map_base = IMX_NFC_BASE,
> +	.platform_data	= &nand_info,
> +};
> +
> +static struct imx_fb_videomode imxfb_mode = {
> +	.mode = {
> +		.name		= "CMO-QVGA",
> +		.refresh	= 60,
> +		.xres		= 320,
> +		.yres		= 240,
> +		.pixclock	= KHZ2PICOS(6500),
> +		.hsync_len	= 30,
> +		.left_margin	= 38,
> +		.right_margin	= 20,
> +		.vsync_len	= 3,
> +		.upper_margin	= 15,
> +		.lower_margin	= 4,
> +	},
> +	.pcr		= 0xCAD08B80,
> +	.bpp		= 16,
> +};
> +
> +static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
> +	.mode		= &imxfb_mode,
> +	.pwmr		= 0x00A903FF,
> +	.lscr1		= 0x00120300,
> +	.dmacr		= 0x80040060,
> +};
> +
> +
> +static struct device_d imxfb_dev = {
> +	.name		= "imxfb",
> +	.map_base	= 0x53fbc000,
> +	.size		= 0x1000,
> +	.platform_data	= &eukrea_cpuimx25_fb_data,
> +};
> +
> +#ifdef CONFIG_MMU
> +static void eukrea_cpuimx25_mmu_init(void)
> +{
> +	mmu_init();
> +
> +	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
> +	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
> +
> +	setup_dma_coherent(0x10000000);
> +
> +#if TEXT_BASE & (0x100000 - 1)
> +#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
> +#else
> +	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
> +#endif

Unfortunately this doesn't work as expected. Due to the Flash header the
compiled in vector table is not on TEXT_BASE. I thought about adding
support for 4k pages but haven't gotten anywhere yet. We could also add
the vector page to __flash_header_start.
Until we have a solution you should remove this.

Otherwise fine. I already applied the other two patches to -next.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
