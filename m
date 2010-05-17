Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1ODx4Q-0002lI-NI
	for barebox@lists.infradead.org; Mon, 17 May 2010 09:57:12 +0000
Date: Mon, 17 May 2010 11:57:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100517095708.GX31199@pengutronix.de>
References: <20100517091450.GL31199@pengutronix.de>
	<1274089397-7462-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1274089397-7462-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] Add support for Eukrea's CPUIMX25
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, May 17, 2010 at 11:43:17AM +0200, Eric B=E9nard wrote:
> From: Eric Benard <eric@eukrea.com>
> =

> This boards integrates 64mB of DDR, a 256MB NAND flash, a RMII Ethernet P=
HY
> and a i.MX257 CPU.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
> v2:
> 	- fix GPIO26 handling
> 	- fix trailing whitespace
>  arch/arm/Makefile                           |    1 +
>  arch/arm/configs/eukrea_cpuimx25_defconfig  |  247 +++++++++++++++++++++=
++
>  arch/arm/mach-imx/Kconfig                   |   10 +
>  board/eukrea_cpuimx25/Makefile              |   24 +++
>  board/eukrea_cpuimx25/config.h              |   27 +++
>  board/eukrea_cpuimx25/env/bin/_update       |   36 ++++
>  board/eukrea_cpuimx25/env/bin/boot          |   53 +++++
>  board/eukrea_cpuimx25/env/bin/hush_hack     |    1 +
>  board/eukrea_cpuimx25/env/bin/init          |   38 ++++
>  board/eukrea_cpuimx25/env/bin/update_kernel |    8 +
>  board/eukrea_cpuimx25/env/bin/update_root   |    8 +
>  board/eukrea_cpuimx25/env/config            |   26 +++
>  board/eukrea_cpuimx25/eukrea_cpuimx25.c     |  280 +++++++++++++++++++++=
++++++
>  board/eukrea_cpuimx25/lowlevel_init.S       |  135 +++++++++++++
>  14 files changed, 894 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/configs/eukrea_cpuimx25_defconfig
>  create mode 100644 board/eukrea_cpuimx25/Makefile
>  create mode 100644 board/eukrea_cpuimx25/config.h
>  create mode 100644 board/eukrea_cpuimx25/env/bin/_update
>  create mode 100644 board/eukrea_cpuimx25/env/bin/boot
>  create mode 100644 board/eukrea_cpuimx25/env/bin/hush_hack
>  create mode 100644 board/eukrea_cpuimx25/env/bin/init
>  create mode 100644 board/eukrea_cpuimx25/env/bin/update_kernel
>  create mode 100644 board/eukrea_cpuimx25/env/bin/update_root
>  create mode 100644 board/eukrea_cpuimx25/env/config
>  create mode 100644 board/eukrea_cpuimx25/eukrea_cpuimx25.c
>  create mode 100644 board/eukrea_cpuimx25/lowlevel_init.S
> =


[snip]

> diff --git a/board/eukrea_cpuimx25/eukrea_cpuimx25.c b/board/eukrea_cpuim=
x25/eukrea_cpuimx25.c
> new file mode 100644
> index 0000000..cddba97
> --- /dev/null
> +++ b/board/eukrea_cpuimx25/eukrea_cpuimx25.c
> @@ -0,0 +1,280 @@
> +/*
> + * (C) 2009 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
> + * (c) 2010 Eukrea Electromatique, Eric B=E9nard <eric@eukrea.com>
> + * =

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
> +	__asm__ __volatile__("b exception_vectors\n");
> +}
> +
> +struct imx_dcd_entry __dcd_entry_0x400 dcd_entry[] =3D {
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x00000004, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92100000, },
> +	{ .ptr_type =3D 1, .addr =3D 0x80000400, .val =3D 0x12344321, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xa2100000, },
> +	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x12344321, },
> +	{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x12344321, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb2100000, },
> +	{ .ptr_type =3D 1, .addr =3D 0x80000033, .val =3D 0xda, },
> +	{ .ptr_type =3D 1, .addr =3D 0x81000000, .val =3D 0xff, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x82216080, },
> +	{ .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x00295729, },
> +	{ .ptr_type =3D 4, .addr =3D 0x53f80008, .val =3D 0x20034000, },
> +};
> +
> +#define APP_DEST	0x80000000
> +
> +struct imx_flash_header __flash_header_0x400 eukrea_cpuimx25_header =3D {
> +	.app_code_jump_vector	=3D TEXT_BASE + 0x2000,
> +	.app_code_barker	=3D APP_CODE_BARKER,
> +	.app_code_csf		=3D 0,
> +	.dcd_ptr_ptr		=3D TEXT_BASE + 0x400 + offsetof(struct imx_flash_header,=
 dcd),
> +	.super_root_key		=3D 0,
> +	.dcd			=3D TEXT_BASE + 0x400 + offsetof(struct imx_flash_header, dcd_ba=
rker),
> +	.app_dest		=3D TEXT_BASE,
> +	.dcd_barker		=3D DCD_BARKER,
> +	.dcd_block_len		=3D sizeof(dcd_entry),
> +};
> +
> +extern unsigned long __bss_start;
> +
> +unsigned long __image_len_0x400 barebox_len =3D 0x40000;
> +
> +static struct fec_platform_data fec_info =3D {
> +	.xcv_type	=3D RMII,
> +	.phy_addr	=3D 1,
> +};
> +
> +static struct device_d fec_dev =3D {
> +	.name     =3D "fec_imx",
> +	.map_base =3D IMX_FEC_BASE,
> +	.platform_data	=3D &fec_info,
> +};
> +
> +static struct memory_platform_data sdram_pdata =3D {
> +	.name	=3D "ram0",
> +	.flags	=3D DEVFS_RDWR,
> +};
> +
> +static struct device_d sdram0_dev =3D {
> +	.name     =3D "mem",
> +	.map_base =3D IMX_SDRAM_CS0,
> +	.size     =3D 64 * 1024 * 1024,
> +	.platform_data =3D &sdram_pdata,
> +};
> +
> +struct imx_nand_platform_data nand_info =3D {
> +	.width	=3D 1,
> +	.hw_ecc	=3D 1,
> +};
> +
> +static struct device_d nand_dev =3D {
> +	.name     =3D "imx_nand",
> +	.map_base =3D IMX_NFC_BASE,
> +	.platform_data	=3D &nand_info,
> +};
> +
> +static struct imx_fb_videomode imxfb_mode =3D {
> +	.mode =3D {
> +		.name		=3D "CMO-QVGA",
> +		.refresh	=3D 60,
> +		.xres		=3D 320,
> +		.yres		=3D 240,
> +		.pixclock	=3D KHZ2PICOS(6500),
> +		.hsync_len	=3D 30,
> +		.left_margin	=3D 38,
> +		.right_margin	=3D 20,
> +		.vsync_len	=3D 3,
> +		.upper_margin	=3D 15,
> +		.lower_margin	=3D 4,
> +	},
> +	.pcr		=3D 0xCAD08B80,
> +	.bpp		=3D 16,
> +};
> +
> +static struct imx_fb_platform_data eukrea_cpuimx25_fb_data =3D {
> +	.mode		=3D &imxfb_mode,
> +	.pwmr		=3D 0x00A903FF,
> +	.lscr1		=3D 0x00120300,
> +	.dmacr		=3D 0x80040060,
> +};
> +
> +
> +static struct device_d imxfb_dev =3D {
> +	.name		=3D "imxfb",
> +	.map_base	=3D 0x53fbc000,
> +	.size		=3D 0x1000,
> +	.platform_data	=3D &eukrea_cpuimx25_fb_data,
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
> +	mmu_enable();
> +}
> +#else
> +static void eukrea_cpuimx25_mmu_init(void)
> +{
> +}
> +#endif
> +
> +static struct pad_desc eukrea_cpuimx25_pads[] =3D {
> +	MX25_PAD_FEC_MDC__MDC,
> +	MX25_PAD_FEC_MDIO__MDIO,
> +	MX25_PAD_FEC_RDATA0__RDATA0,
> +	MX25_PAD_FEC_RDATA1__RDATA1,
> +	MX25_PAD_FEC_RX_DV__RX_DV,
> +	MX25_PAD_FEC_TDATA0__TDATA0,
> +	MX25_PAD_FEC_TDATA1__TDATA1,
> +	MX25_PAD_FEC_TX_CLK__TX_CLK,
> +	MX25_PAD_FEC_TX_EN__TX_EN,
> +	/* UART1 */
> +	MX25_PAD_UART1_RXD__RXD_MUX,
> +	MX25_PAD_UART1_TXD__TXD_MUX,
> +	MX25_PAD_UART1_RTS__RTS,
> +	MX25_PAD_UART1_CTS__CTS,
> +	/* LCDC */
> +	MX25_PAD_LD0__LCDC_LD0,
> +	MX25_PAD_LD1__LCDC_LD1,
> +	MX25_PAD_LD2__LCDC_LD2,
> +	MX25_PAD_LD3__LCDC_LD3,
> +	MX25_PAD_LD4__LCDC_LD4,
> +	MX25_PAD_LD5__LCDC_LD5,
> +	MX25_PAD_LD6__LCDC_LD6,
> +	MX25_PAD_LD7__LCDC_LD7,
> +	MX25_PAD_LD8__LCDC_LD8,
> +	MX25_PAD_LD9__LCDC_LD9,
> +	MX25_PAD_LD10__LCDC_LD10,
> +	MX25_PAD_LD11__LCDC_LD11,
> +	MX25_PAD_LD12__LCDC_LD12,
> +	MX25_PAD_LD13__LCDC_LD13,
> +	MX25_PAD_LD14__LCDC_LD14,
> +	MX25_PAD_LD15__LCDC_LD15,
> +	MX25_PAD_GPIO_E__LCDC_LD16,
> +	MX25_PAD_GPIO_F__LCDC_LD17,
> +	MX25_PAD_LSCLK__LCDC_LSCLK,
> +	MX25_PAD_OE_ACD__LCDC_OE_ACD,
> +	MX25_PAD_VSYNC__LCDC_VSYN,
> +	MX25_PAD_HSYNC__LCDC_HSYN,
> +	/* BACKLIGHT CONTROL */
> +	MX25_PAD_PWM__GPIO26,
> +};
> +
> +#define IOMUXC_BASE_ADDR        0x43FAC000
> +#define GPIO1_BASE_ADDR         0x53FCC000
> +#define GPIO_GDIR               0x04
> +#define GPIO_DR                 0x00

These are not needed anymore.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
