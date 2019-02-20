Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwOAP-0005vl-Vm
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 09:27:51 +0000
Date: Wed, 20 Feb 2019 10:27:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190220092748.oqjatylexpxn7bnw@pengutronix.de>
References: <20190219172150.11901-1-a.fatoum@pengutronix.de>
 <20190219172150.11901-16-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219172150.11901-16-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 15/16] ARM: at91: microchip-ksz9477: provide board
 code fallback
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2019 at 06:21:49PM +0100, Ahmad Fatoum wrote:
> The newly added device tree based first stage fails to load the second
> stage from MMC, which might be in relation to a preceding atmel_mci
> "command/data timeout" message.
> 
> Due to this and because it's not clear yet how viable it's to use the device
> tree for the size-constrained first stage anyway, make CONFIG_OFDEVICE
> configurable and provide a legacy board code based fallback whenever it's
> unselected. The resulting image is 48K big with PBL_CONSOLE compared to
> 72K for the device tree based version without PBL_CONSOLE.
> 
> If barebox can be shrunk further and the device tree support in the
> first stage was fixed, this commit could be reverted for full device
> tree goodness.
> 
> The board code is a stripped down version of the sama5d3_xplained board's.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../arm/boards/microchip-ksz9477-evb/Makefile |   3 +
>  arch/arm/boards/microchip-ksz9477-evb/board.c | 129 ++++++++++++++++++
>  .../boards/microchip-ksz9477-evb/lowlevel.c   |   3 +-
>  ...rochip_ksz9477_evb_bootstrap_mmc_defconfig |  24 ++++
>  arch/arm/mach-at91/Kconfig                    |  14 +-
>  5 files changed, 169 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/boards/microchip-ksz9477-evb/board.c
>  create mode 100644 arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig
> 
> diff --git a/arch/arm/boards/microchip-ksz9477-evb/Makefile b/arch/arm/boards/microchip-ksz9477-evb/Makefile
> index b08c4a93ca27..8d0379a3f59f 100644
> --- a/arch/arm/boards/microchip-ksz9477-evb/Makefile
> +++ b/arch/arm/boards/microchip-ksz9477-evb/Makefile
> @@ -1 +1,4 @@
>  lwl-y += lowlevel.o
> +ifeq ($(CONFIG_MACH_MICROCHIP_KSZ9477_EVB_DT),)
> +obj-y += board.o
> +endif
> diff --git a/arch/arm/boards/microchip-ksz9477-evb/board.c b/arch/arm/boards/microchip-ksz9477-evb/board.c
> new file mode 100644
> index 000000000000..b5c95c5efba3
> --- /dev/null
> +++ b/arch/arm/boards/microchip-ksz9477-evb/board.c
> @@ -0,0 +1,129 @@
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

This ifdef must go away for multi image builds. Just drop it from your
code for now.

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
