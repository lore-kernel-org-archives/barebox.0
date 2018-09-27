Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5QNU-0002zE-GX
 for barebox@lists.infradead.org; Thu, 27 Sep 2018 07:06:31 +0000
Date: Thu, 27 Sep 2018 09:05:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180927070551.GV4097@pengutronix.de>
References: <20180926013418.26920-1-andrew.smirnov@gmail.com>
 <20180926013418.26920-4-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180926013418.26920-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/6] i.MX7D: DCD: Create shared DDR configuration header
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 25, 2018 at 06:34:15PM -0700, Andrey Smirnov wrote:
> Create a shared DDR configuration header based on configuration used
> by i.MX7D SabreSD board.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  .../flash-header-mx7-sabresd.imxcfg           | 79 +------------------
>  .../flash-header/imx7d-ddr-default.imxcfg     | 78 ++++++++++++++++++
>  2 files changed, 79 insertions(+), 78 deletions(-)
>  create mode 100644 arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg
> 
> diff --git a/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg
> new file mode 100644
> index 000000000..e98f055ee
> --- /dev/null
> +++ b/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg
> @@ -0,0 +1,78 @@
> +/*
> + * Copyright (C) 2016 NXP Semiconductors
> + *
> + * SPDX-License-Identifier:	GPL-2.0
> + *
> + * Refer docs/README.imxmage for more details about how-to configure
> + * and create imximage boot image
> + *
> + * The syntax is taken as close as possible with the kwbimage
> + *
> + * Taken from upstream U-Boot git://git.denx.de/u-boot.git, commit
> + * 1a8150d4b16fbafa6f1d207ddb85eda7dc399e2d
> + */
> +
> +#include <mach/imx7-ddr-regs.h>
> +
> +wm 32 0x30340004 0x4F400005
> +
> +wm 32 0x30391000 0x00000002
> +
> +wm 32 MX7_DDRC_MSTR 0x01040001

How default is this default header? It looks like it only works for the
exact DDR type and size like used on the i.MX7D SabreSD board. Many boards
are more or less copied from the eval boards, so having a common DDR
setup header is a good thing, but calling this "default" sounds a bit
strong. How about replacing "default" with "sabresd"?

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
