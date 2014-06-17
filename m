Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WwyKG-0001K0-8Y
 for barebox@lists.infradead.org; Tue, 17 Jun 2014 18:41:44 +0000
Date: Tue, 17 Jun 2014 20:41:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140617184121.GK15686@pengutronix.de>
References: <1402905137-6953-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402905137-6953-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] [WIP] i2c: add Marvell 64xxx driver
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 16, 2014 at 11:52:17AM +0400, Antony Pavlov wrote:
> This driver is also used for Allwinner SoCs I2C controllers.
> 
> Ported from linux-3.15.
> 
> The most notable barebox driver version changes:
> 
>   * drop message offloading support;
>   * add reg-io-width parameter to use driver with byte-oriented
>     controller versions.
> 
> TODOs:
> 
>   * check timeout in mv64xxx_i2c_wait_for_completion();

Indeed.

>   * remove 'line over 80 characters' warnings.

Personally I don't care about lines over 80 characters as long
as the line length is inside reasonable limits.

> +++ b/include/linux/mv643xx_i2c.h
> @@ -0,0 +1,22 @@
> +/*
> + * This program is free software; you can redistribute  it and/or modify it
> + * under  the terms of  the GNU General  Public License as published by the
> + * Free Software Foundation;  either version 2 of the  License, or (at your
> + * option) any later version.
> + */
> +
> +#ifndef _MV64XXX_I2C_H_
> +#define _MV64XXX_I2C_H_
> +
> +#include <linux/types.h>
> +
> +#define MV64XXX_I2C_CTLR_NAME	"mv64xxx_i2c"
> +
> +/* i2c Platform Device, Driver Data */
> +struct mv64xxx_i2c_pdata {
> +	u32	freq_m;
> +	u32	freq_n;
> +	u32	timeout;	/* In milliseconds */
> +};

This is unused.

Otherwise the driver looks fine to me.

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
