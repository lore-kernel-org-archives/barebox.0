Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhQA-0003qq-1V
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 09:39:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1ifhQ7-0005Eb-78
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 10:39:35 +0100
References: <20191211200243.21164-1-rhi@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <92143e1d-9013-d016-fd05-928d2f1581d2@pengutronix.de>
Date: Fri, 13 Dec 2019 10:39:35 +0100
MIME-Version: 1.0
In-Reply-To: <20191211200243.21164-1-rhi@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 1/2] ARM: omap: support for WAGO PFC200v3 750-821x
To: barebox@lists.infradead.org

Hello Roland,

On 12/11/19 9:02 PM, Roland Hieber wrote:
> diff --git a/arch/arm/boards/wago-pfc-am335x/ram-timings.h b/arch/arm/boards/wago-pfc-am335x/ram-timings.h
> new file mode 100644
> index 000000000000..cc3d518f0c27
> --- /dev/null
> +++ b/arch/arm/boards/wago-pfc-am335x/ram-timings.h
> @@ -0,0 +1,94 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2015 Wadim Egorov, PHYTEC Messtechnik GmbH
> + *
> + * Copyright (C) 2018 WAGO Kontakttechnik GmbH & Co. KG <http://global.wago.com>
> + * Author: Oleg Karfich <oleg.karfich@wago.com>
> + */
> +
> +#ifndef __RAM_TIMINGS_H
> +#define __RAM_TIMINGS_H
> +
> +#define DDR_IOCTRL	0x18B
> +
> +struct am335x_sdram_timings {
> +	struct am33xx_emif_regs regs;
> +	struct am33xx_ddr_data data;
> +	struct am33xx_cmd_control cmd_ctrl;
> +};
> +
> +enum {
> +	PFC_DDR3_256MB,
> +	PFC_DDR3_512MB,
> +};
> +
> +struct am335x_sdram_timings pfc_timings[] = {

This should be static.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
