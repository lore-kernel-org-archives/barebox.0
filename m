Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcS04-0004GM-0O
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 05:44:53 +0000
Date: Thu, 17 Sep 2015 07:44:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150917054428.GO4018@pengutronix.de>
References: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
 <1442392292-15898-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442392292-15898-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 3/4] MIPS: ath79: add black-swift board support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Wed, Sep 16, 2015 at 11:31:31AM +0300, Antony Pavlov wrote:
> Black Swift is a tiny coin-sized embedded computer based on AR9331 SoC.
> See http://www.black-swift.com/ for details.
> 
> See also Black Swift kickstarter page:
>   https://www.kickstarter.com/projects/1133560316/black-swift-tiny-wireless-computer
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Makefile                                 |  1 +
>  arch/mips/boards/black-swift/Makefile              |  1 +
>  arch/mips/boards/black-swift/board.c               | 27 +++++++++++++
>  .../black-swift/include/board/board_pbl_start.h    | 46 ++++++++++++++++++++++
>  arch/mips/dts/black-swift.dts                      | 36 +++++++++++++++++
>  arch/mips/mach-ath79/Kconfig                       |  5 +++
>  6 files changed, 116 insertions(+)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 6ef2bf7..75761b5 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -80,6 +80,7 @@ board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
>  
>  machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
> +board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
>  
>  machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
>  board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
> diff --git a/arch/mips/boards/black-swift/Makefile b/arch/mips/boards/black-swift/Makefile
> new file mode 100644
> index 0000000..dcfc293
> --- /dev/null
> +++ b/arch/mips/boards/black-swift/Makefile
> @@ -0,0 +1 @@
> +obj-y += board.o
> diff --git a/arch/mips/boards/black-swift/board.c b/arch/mips/boards/black-swift/board.c
> new file mode 100644
> index 0000000..2e2ed20
> --- /dev/null
> +++ b/arch/mips/boards/black-swift/board.c
> @@ -0,0 +1,27 @@
> +/*
> + * Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +
> +static int model_hostname_init(void)
> +{
> +	barebox_set_hostname("black-swift");
> +
> +	return 0;
> +}
> +postcore_initcall(model_hostname_init);
> diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
> new file mode 100644
> index 0000000..176491f
> --- /dev/null
> +++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
> @@ -0,0 +1,46 @@
> +/*
> + * Copyright (C) 2013, 2015 Antony Pavlov <antonynpavlov@gmail.com>
> + * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <asm/pbl_macros.h>
> +#include <mach/pbl_macros.h>
> +
> +	.macro	board_pbl_start
> +	.set	push
> +	.set	noreorder
> +
> +	mips_barebox_10h
> +
> +	mips_disable_interrupts
> +
> +	pbl_ar9331_pll
> +	pbl_ar9331_ddr2_config
> +
> +	/*
> +	 * General Purpose I/O Function (GPIO_FUNCTION_1)
> +	 *
> +	 *  SPI_EN  (18) enables SPI SPA Interface signals
> +	 *               in GPIO_2, GPIO_3, GPIO_4 and GPIO_5.
> +	 *  RES     (15) reserved. This bit must be written with 1.
> +	 *  UART_EN  (2) enables UART I/O on GPIO_9 (SIN) and GPIO_10 (SOUT).
> +	 */
> +	pbl_reg_writel 0x48002, 0xb8040028
> +
> +	copy_to_link_location	pbl_start
> +
> +	.set	pop
> +	.endm
> diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
> new file mode 100644
> index 0000000..db13c73
> --- /dev/null
> +++ b/arch/mips/dts/black-swift.dts
> @@ -0,0 +1,36 @@
> +/dts-v1/;
> +
> +#include "ar9331.dtsi"
> +
> +/ {
> +	model = "Black Swift";
> +	compatible = "smartlx,black-swift";
> +
> +	memory {
> +		reg = <0x00000000 0x4000000>;
> +	};
> +};
> +
> +&serial0 {
> +	status = "okay";
> +};
> +
> +&spi {
> +	num-chipselects = <1>;
> +	status = "okay";
> +
> +	/* Winbond W25Q128FV SPI flash */
> +	spiflash: m25p80@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "m25p80";
> +		spi-max-frequency = <104000000>;
> +		reg = <0>;
> +	};
> +};
> +
> +/ {
> +	aliases {
> +		spiflash = &spiflash;
> +	};

I would expect this aliases node near the top of this file, that's where
aliases usually are.

Otherwise this series looks good to me, but I can't say much to it as I
don't know mips assembly. If it works for you I am fine with it.

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
