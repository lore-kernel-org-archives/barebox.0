Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTm3w-0007uX-5Y
 for barebox@lists.infradead.org; Tue, 16 Sep 2014 06:16:29 +0000
Date: Tue, 16 Sep 2014 08:16:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140916061606.GF4992@pengutronix.de>
References: <1410811390-7009-1-git-send-email-dev@lynxeye.de>
 <1410811390-7009-2-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410811390-7009-2-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 2/2] arm: imx6: add Gateworks Ventana board
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 15, 2014 at 10:03:10PM +0200, Lucas Stach wrote:
> For now only the Quad 1GB variant is supported.
> 
> Tested:
> - starting barebox over USB
> - writing barebox to NAND with barebox_update
> - starting Linux kernel over TFTP
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/Makefile                           |  1 +
>  arch/arm/boards/gateworks-ventana/Makefile         |  2 +
>  arch/arm/boards/gateworks-ventana/board.c          | 92 ++++++++++++++++++++++
>  arch/arm/boards/gateworks-ventana/clocks.imxcfg    |  8 ++
>  .../flash-header-ventana-quad-1gx64.imxcfg         | 11 +++
>  arch/arm/boards/gateworks-ventana/gsc.c            | 66 ++++++++++++++++
>  arch/arm/boards/gateworks-ventana/gsc.h            | 58 ++++++++++++++
>  arch/arm/boards/gateworks-ventana/lowlevel.c       | 18 +++++
>  .../boards/gateworks-ventana/quad_128x64.imxcfg    | 41 ++++++++++
>  arch/arm/boards/gateworks-ventana/ram-base.imxcfg  | 56 +++++++++++++
>  arch/arm/configs/imx_v7_defconfig                  |  3 +-
>  arch/arm/dts/Makefile                              |  1 +
>  arch/arm/dts/imx6q-gw54xx.dts                      | 23 ++++++
>  arch/arm/dts/imx6qdl-gw54xx.dtsi                   | 38 +++++++++
>  arch/arm/mach-imx/Kconfig                          |  3 +
>  images/Makefile.imx                                |  5 ++
>  16 files changed, 425 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/gateworks-ventana/Makefile
>  create mode 100644 arch/arm/boards/gateworks-ventana/board.c
>  create mode 100644 arch/arm/boards/gateworks-ventana/clocks.imxcfg
>  create mode 100644 arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
>  create mode 100644 arch/arm/boards/gateworks-ventana/gsc.c
>  create mode 100644 arch/arm/boards/gateworks-ventana/gsc.h
>  create mode 100644 arch/arm/boards/gateworks-ventana/lowlevel.c
>  create mode 100644 arch/arm/boards/gateworks-ventana/quad_128x64.imxcfg
>  create mode 100644 arch/arm/boards/gateworks-ventana/ram-base.imxcfg
>  create mode 100644 arch/arm/dts/imx6q-gw54xx.dts
>  create mode 100644 arch/arm/dts/imx6qdl-gw54xx.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 122f5cd..a703f1d 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -48,6 +48,7 @@ obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
>  obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
>  obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
>  obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
> +obj-$(CONFIG_MACH_GW_VENTANA)			+= gateworks-ventana/
>  obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
>  obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
>  obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
> diff --git a/arch/arm/boards/gateworks-ventana/Makefile b/arch/arm/boards/gateworks-ventana/Makefile
> new file mode 100644
> index 0000000..7d195ee
> --- /dev/null
> +++ b/arch/arm/boards/gateworks-ventana/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o gsc.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
> new file mode 100644
> index 0000000..6e9ca17
> --- /dev/null
> +++ b/arch/arm/boards/gateworks-ventana/board.c
> @@ -0,0 +1,92 @@
> +/*
> + * Copyright (C) 2014 Lucas Stach, Pengutronix
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
> + */
> +
> +#include <common.h>
> +#include <environment.h>
> +#include <i2c/i2c.h>
> +#include <init.h>
> +#include <linux/marvell_phy.h>
> +#include <linux/phy.h>
> +#include <mach/bbu.h>
> +#include <mach/imx6.h>
> +#include <net.h>
> +
> +#include "gsc.h"
> +
> +static int gw54xx_devices_init(void)
> +{
> +	struct i2c_client client;
> +	struct device_node *dnode;
> +	u8 reg;
> +	u8 mac[6];
> +
> +	if (!of_machine_is_compatible("gw,imx6q-gw54xx"))
> +		return 0;
> +
> +	client.adapter = i2c_get_adapter(0);

You should check the return value here.

You have some trailing whitespaces in the patch.

Otherwise looks fine.

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
