Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk2zA-0002lO-Rk
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 08:25:15 +0000
Date: Thu, 17 Jan 2019 09:25:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190117082510.xg5thkgwcdkeshrh@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
 <20190116174559.17416-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190116174559.17416-10-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 09/11] ARM: at91: microchip-ksz9477-evb: reintroduce
 board code for first stage
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <ahmad@a3f.at>

On Wed, Jan 16, 2019 at 06:45:57PM +0100, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> We are limited to 64K in the first stage, but we still need MMC and FAT
> support, so to make place, make the device tree support optional by
> providing the sama5d3's board code for NAND/MMC as an alternative.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../arm/boards/microchip-ksz9477-evb/Makefile |   3 +
>  arch/arm/boards/microchip-ksz9477-evb/init.c  | 143 ++++++++++++++++++
>  .../configs/microchip_ksz9477_evb_defconfig   |   1 +
>  arch/arm/dts/Makefile                         |   2 +-
>  arch/arm/mach-at91/Kconfig                    |  11 +-
>  5 files changed, 157 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/microchip-ksz9477-evb/init.c
> 
> diff --git a/arch/arm/boards/microchip-ksz9477-evb/Makefile b/arch/arm/boards/microchip-ksz9477-evb/Makefile
> index b08c4a93ca27..0ca5b98a9b33 100644
> --- a/arch/arm/boards/microchip-ksz9477-evb/Makefile
> +++ b/arch/arm/boards/microchip-ksz9477-evb/Makefile
> @@ -1 +1,4 @@
>  lwl-y += lowlevel.o
> +ifeq ($(CONFIG_MACH_MICROCHIP_KSZ9477_EVB_DT),)
> +obj-y += init.o
> +endif
> diff --git a/arch/arm/boards/microchip-ksz9477-evb/init.c b/arch/arm/boards/microchip-ksz9477-evb/init.c
> new file mode 100644
> index 000000000000..39febad84c5d
> --- /dev/null
> +++ b/arch/arm/boards/microchip-ksz9477-evb/init.c
> @@ -0,0 +1,143 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2014 Bo Shen <voice.shen@gmail.com>
> + */
> +
> +#include <init.h>
> +#include <mach/board.h>
> +#include <mach/iomux.h>
> +
> +#if defined(CONFIG_NAND_ATMEL)
> +static struct atmel_nand_data nand_pdata = {
> +	.ale		= 21,
> +	.cle		= 22,
> +	.det_pin	= -EINVAL,
> +	.rdy_pin	= -EINVAL,
> +	.enable_pin	= -EINVAL,
> +	.ecc_mode	= NAND_ECC_HW,
> +	.has_pmecc	= 1,
> +	.pmecc_sector_size = 512,
> +	.pmecc_corr_cap = 4,
> +#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
> +	.bus_width_16	= 1,
> +#endif
> +	.on_flash_bbt	= 1,
> +};
> +
> +static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
> +	.ncs_read_setup		= 1,
> +	.nrd_setup		= 2,
> +	.ncs_write_setup	= 1,
> +	.nwe_setup		= 2,
> +
> +	.ncs_read_pulse		= 5,
> +	.nrd_pulse		= 3,
> +	.ncs_write_pulse	= 5,
> +	.nwe_pulse		= 3,
> +
> +	.read_cycle		= 8,
> +	.write_cycle		= 8,
> +
> +	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE,
> +	.tdf_cycles		= 3,
> +
> +	.tclr			= 3,
> +	.tadl			= 10,
> +	.tar			= 3,
> +	.ocms			= 0,
> +	.trr			= 4,
> +	.twb			= 5,
> +	.rbnsel			= 3,
> +	.nfsel			= 1
> +};
> +
> +static void ek_add_device_nand(void)
> +{
> +	struct clk *clk = clk_get(NULL, "smc_clk");
> +
> +	clk_enable(clk);
> +
> +	/* setup bus-width (8 or 16) */
> +	if (nand_pdata.bus_width_16)
> +		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_16;
> +	else
> +		sama5d3_xplained_nand_smc_config.mode |= AT91_SMC_DBW_8;
> +
> +	/* configure chip-select 3 (NAND) */
> +	sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
> +
> +	at91_add_device_nand(&nand_pdata);
> +}
> +#else
> +static void ek_add_device_nand(void) {}
> +#endif
> +
> +#if defined(CONFIG_MCI_ATMEL)
> +/*
> + * MCI (SD/MMC)
> + */
> +static struct atmel_mci_platform_data mci0_data = {
> +	.bus_width	= 8,
> +	.detect_pin	= AT91_PIN_PE0,
> +	.wp_pin		= -EINVAL,
> +};
> +
> +static void ek_add_device_mci(void)
> +{
> +	/* MMC0 */
> +	at91_add_device_mci(0, &mci0_data);
> +}
> +#else
> +static void ek_add_device_mci(void) {}
> +#endif
> +
> +static int sama5d3_xplained_mem_init(void)
> +{
> +	at91_add_device_sdram(0);
> +
> +	return 0;
> +}
> +mem_initcall(sama5d3_xplained_mem_init);
> +
> +static const struct devfs_partition sama5d3_xplained_nand0_partitions[] = {
> +	{
> +		.offset = 0x00000,
> +		.size = SZ_256K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "at91bootstrap_raw",
> +		.bbname = "at91bootstrap",
> +	}, {
> +		.offset = DEVFS_PARTITION_APPEND, /* 256 KiB */
> +		.size = SZ_256K + SZ_128K,

384K can get tight quite fast for bigger barebox images. I would at
least add the 128KiB hole below, but preferrably go to something like
1MiB for barebox.

> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "self_raw",
> +		.bbname = "self0",
> +	},
> +	/* hole of 128 KiB */
> +	{
> +		.offset = SZ_512K + SZ_256K,
> +		.size = SZ_256K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "env_raw",
> +		.bbname = "env0",
> +	}, {
> +		.offset = DEVFS_PARTITION_APPEND, /* 1 MiB */
> +		.size = SZ_256K,
> +		.flags = DEVFS_PARTITION_FIXED,
> +		.name = "env_raw1",
> +		.bbname = "env1",
> +	}, {

The environment partitions end up unused, right? So I think you should
remove them here.

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
