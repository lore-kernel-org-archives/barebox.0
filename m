Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFcPG-0007Aq-DD
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 06:12:31 +0000
Date: Thu, 16 Jul 2015 08:12:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150716061208.GY18700@pengutronix.de>
References: <1436890599-31412-1-git-send-email-s.trumtrar@pengutronix.de>
 <1436890599-31412-3-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436890599-31412-3-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 3/5] ARM: socfpga: add bbu handler for spi nor
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 14, 2015 at 06:16:37PM +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/Kconfig               |  8 +++
>  arch/arm/mach-socfpga/Makefile              |  1 +
>  arch/arm/mach-socfpga/include/mach/bbu.h    | 15 +++++
>  arch/arm/mach-socfpga/socfpga_bbu_spi_nor.c | 86 +++++++++++++++++++++++++++++
>  4 files changed, 110 insertions(+)
>  create mode 100644 arch/arm/mach-socfpga/include/mach/bbu.h
>  create mode 100644 arch/arm/mach-socfpga/socfpga_bbu_spi_nor.c
> 
> diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
> index 90b3533b1ffb..a85749b7f829 100644
> --- a/arch/arm/mach-socfpga/Kconfig
> +++ b/arch/arm/mach-socfpga/Kconfig
> @@ -20,4 +20,12 @@ config MACH_SOCFPGA_TERASIC_SOCKIT
>  	select HAVE_DEFAULT_ENVIRONMENT_NEW
>  	bool "Terasic SoCKit"
>  
> +config BAREBOX_UPDATE_SOCFPGA_SPI_NOR
> +	prompt "barebox update SPI NOR XLOAD handler"
> +	bool
> +	depends on BAREBOX_UPDATE
> +	depends on SPI_CADENCE_QUADSPI
> +	help
> +	  Say Y for barebox update SPI NOR XLOAD handler.
> +
>  endif
> diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
> index b81d57da26fd..12c5252d1a6e 100644
> --- a/arch/arm/mach-socfpga/Makefile
> +++ b/arch/arm/mach-socfpga/Makefile
> @@ -3,3 +3,4 @@ pbl-y += init.o freeze-controller.o scan-manager.o system-manager.o
>  pbl-y += clock-manager.o
>  obj-$(CONFIG_ARCH_SOCFPGA_XLOAD) += xload.o
>  obj-$(CONFIG_ARCH_SOCFPGA_FPGA) += fpga.o
> +obj-$(CONFIG_BAREBOX_UPDATE_SOCFPGA_SPI_NOR) += socfpga_bbu_spi_nor.o
> diff --git a/arch/arm/mach-socfpga/include/mach/bbu.h b/arch/arm/mach-socfpga/include/mach/bbu.h
> new file mode 100644
> index 000000000000..e4846d36bc5d
> --- /dev/null
> +++ b/arch/arm/mach-socfpga/include/mach/bbu.h
> @@ -0,0 +1,15 @@
> +#ifndef __MACH_BBU_H
> +#define __MACH_BBU_H
> +
> +#include <bbu.h>
> +
> +#ifdef CONFIG_BAREBOX_UPDATE_SOCFPGA_SPI_NOR
> +int socfpga_bbu_spi_nor_register_handler(const char *name, char *devicefile);
> +#else
> +static inline int socfpga_bbu_spi_nor_register_handler(const char *name, char *devicefile)
> +{
> +	return 0;
> +}
> +#endif
> +
> +#endif
> diff --git a/arch/arm/mach-socfpga/socfpga_bbu_spi_nor.c b/arch/arm/mach-socfpga/socfpga_bbu_spi_nor.c
> new file mode 100644
> index 000000000000..cf44bc81c60b
> --- /dev/null
> +++ b/arch/arm/mach-socfpga/socfpga_bbu_spi_nor.c
> @@ -0,0 +1,86 @@
> +/*
> + * Copyright (c) 2015 Pengutronix, Steffen Trumtrar <s.trumtrar@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +#include <common.h>
> +#include <malloc.h>
> +#include <bbu.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <linux/stat.h>
> +
> +static int spi_nor_handler(struct bbu_handler *handler,
> +			   struct bbu_data *data)
> +{
> +	int fd, ret;
> +	int *header;
> +
> +	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
> +		if (!bbu_force(data, "Not an ARM barebox image"))
> +			return -EINVAL;
> +	}
> +
> +	header = data->image;
> +
> +	if (!header[0x40] == 0x31305341) {

This will never be true. header[0x40] != 0x31305341 instead?
Also you probably want to expliticitly use u32 instead of int.

> +		if (!bbu_force(data, "Not a valid SOCFPGA image"))
> +			return -EINVAL;
> +	}
> +
> +	ret = bbu_confirm(data);
> +	if (ret)
> +		return ret;
> +
> +	fd = open(data->devicefile, O_RDWR | O_CREAT);
> +	if (fd < 0)
> +		return fd;
> +
> +	debug("%s: eraseing %s from 0 to 0x%08x\n", __func__,
> +			data->devicefile, data->len);

s/eraseing/erasing/

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
