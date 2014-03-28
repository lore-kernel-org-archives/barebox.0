Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTTKo-0007Eg-E0
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:44:23 +0000
Date: Fri, 28 Mar 2014 10:44:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140328094400.GG17250@pengutronix.de>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
 <1395955604-12826-8-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395955604-12826-8-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 7/9] MIPS: ath79: add tplink-mr3020 board support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 28, 2014 at 01:26:42AM +0400, Antony Pavlov wrote:
> This board support code can be used for TP-LINK WR703 too.
> 
> TP-LINK WR703 is very similar to TP-LINK MR3020, there are
> some non-essential differences:
> 
>   * WR703 is smaller and cheaper;
>   * WR703 has only one led, but MR3020 has five leds;
>   * MR3020 uses mini-USB connector, WR703 uses micro-USB connector.
> 
> See https://forum.openwrt.org/viewtopic.php?id=45159 for details.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Makefile                      |  1 +
>  arch/mips/boards/tplink-mr3020/Makefile |  1 +
>  arch/mips/boards/tplink-mr3020/board.c  | 27 +++++++++++++++++++++++++++
>  arch/mips/dts/tplink-mr3020.dts         | 18 ++++++++++++++++++
>  arch/mips/mach-ath79/Kconfig            |  8 ++++++++
>  5 files changed, 55 insertions(+)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 5ca5fc9..b3bacf3 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
>  board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
>  
>  machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
> +board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
>  
>  machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
>  board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
> diff --git a/arch/mips/boards/tplink-mr3020/Makefile b/arch/mips/boards/tplink-mr3020/Makefile
> new file mode 100644
> index 0000000..dcfc293
> --- /dev/null
> +++ b/arch/mips/boards/tplink-mr3020/Makefile
> @@ -0,0 +1 @@
> +obj-y += board.o
> diff --git a/arch/mips/boards/tplink-mr3020/board.c b/arch/mips/boards/tplink-mr3020/board.c
> new file mode 100644
> index 0000000..318998c
> --- /dev/null
> +++ b/arch/mips/boards/tplink-mr3020/board.c
> @@ -0,0 +1,27 @@
> +/*
> + * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
> +	barebox_set_hostname("mr3020");
> +
> +	return 0;
> +}
> +postcore_initcall(model_hostname_init);
> diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
> new file mode 100644
> index 0000000..b9539c5
> --- /dev/null
> +++ b/arch/mips/dts/tplink-mr3020.dts
> @@ -0,0 +1,18 @@
> +/dts-v1/;
> +
> +#include <ar9331.dtsi>
> +
> +/ {
> +	model = "TP-LINK MR3020";
> +	compatible = "tplink,mr3020";
> +
> +	memory {
> +		reg = <0x00000000 0x2000000>;
> +	};
> +
> +	soc {
> +		serial0: serial@b8020000 {
> +			status = "okay";
> +		};
> +	};

This can be easier written as:

&serial0 {
	status = "okay";
};

With bigger board dts files this is much nicer since you don't have to
resemble the tree structure in your board dts.

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
