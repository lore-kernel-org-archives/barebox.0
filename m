Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTbH8-0008RS-Ke
 for barebox@lists.infradead.org; Sat, 20 Apr 2013 17:08:35 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4DEB5104E149
 for <barebox@lists.infradead.org>; Sat, 20 Apr 2013 19:08:33 +0200 (CEST)
Date: Sat, 20 Apr 2013 19:04:02 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130420170402.GA13393@game.jcrosoft.org>
References: <1366431532-29121-1-git-send-email-shc_work@mail.ru>
 <1366431532-29121-5-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366431532-29121-5-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 4/5] GPIO: i.MX: Cleanup driver code
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 08:18 Sat 20 Apr     , Alexander Shiyan wrote:
> This patch provides only cleanup for i.MX GPIO driver.
> Indentation, reduced licence text etc.
no please drop it this is just noise on the history when doing blame
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/gpio/gpio-imx.c | 34 ++++++++++++----------------------
>  1 file changed, 12 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
> index 9dcabfc..f56346b 100644
> --- a/drivers/gpio/gpio-imx.c
> +++ b/drivers/gpio/gpio-imx.c
> @@ -1,23 +1,14 @@
>  /*
> - *  arch/arm/mach-imx/gpio.c
> + *  GPIO driver for i.MX machines
>   *
>   *  author: Sascha Hauer
>   *  Created: april 20th, 2004
>   *  Copyright: Synertronixx GmbH
>   *
> - *  Common code for i.MX machines
> - *
>   * This program is free software; you can redistribute it and/or modify
>   * it under the terms of the GNU General Public License as published by
>   * the Free Software Foundation; either version 2 of the License, or
>   * (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - *
>   */
>  
>  #include <init.h>
> @@ -33,15 +24,15 @@ struct imx_gpio_regs {
>  };
>  
>  static struct imx_gpio_regs regs_imx1 = {
> -	.dr = 0x1c,
> -	.gdir = 0x00,
> -	.psr = 0x24,
> +	.dr	= 0x1c,
> +	.gdir	= 0x00,
> +	.psr	= 0x24,
>  };
>  
>  static struct imx_gpio_regs regs_imx31 = {
> -	.dr = 0x00,
> -	.gdir = 0x04,
> -	.psr = 0x08,
> +	.dr	= 0x00,
> +	.gdir	= 0x04,
> +	.psr	= 0x08,
>  };
>  
>  static int imx_gpio_probe(struct device_d *dev)
> @@ -128,15 +119,14 @@ static struct platform_device_id imx_gpio_ids[] = {
>  };
>  
>  static struct driver_d imx_gpio_driver = {
> -	.name = "imx-gpio",
> -	.probe = imx_gpio_probe,
> -	.of_compatible = DRV_OF_COMPAT(imx_gpio_dt_ids),
> -	.id_table = imx_gpio_ids,
> +	.name		= "imx-gpio",
> +	.probe		= imx_gpio_probe,
> +	.of_compatible	= DRV_OF_COMPAT(imx_gpio_dt_ids),
> +	.id_table	= imx_gpio_ids,
>  };
>  
>  static int imx_gpio_add(void)
>  {
> -	platform_driver_register(&imx_gpio_driver);
> -	return 0;
> +	return platform_driver_register(&imx_gpio_driver);
>  }
>  coredevice_initcall(imx_gpio_add);
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
