Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7Lzb-0005Qz-Oe
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 08:22:34 +0000
Date: Mon, 18 Feb 2013 09:22:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130218082230.GJ1906@pengutronix.de>
References: <1361000182-26607-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361000182-26607-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Make "dev_get_resource" publicly available
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Feb 16, 2013 at 11:36:22AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/base/driver.c | 2 +-
>  include/driver.h      | 4 ++++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index d4066fc..fa30c68 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -230,7 +230,7 @@ int register_driver(struct driver_d *drv)
>  }
>  EXPORT_SYMBOL(register_driver);
>  
> -static struct resource *dev_get_resource(struct device_d *dev, int num)
> +struct resource *dev_get_resource(struct device_d *dev, int num)
>  {
>  	int i, n = 0;
>  
> diff --git a/include/driver.h b/include/driver.h
> index 31f5d69..092a46b 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -193,6 +193,10 @@ static inline const char *dev_name(const struct device_d *dev)
>  }
>  
>  /*
> + * get resource 'num' for a device
> + */
> +struct resource *dev_get_resource(struct device_d *dev, int num);
> +/*
>   * get resource base 'name' for a device
>   */
>  struct resource *dev_get_resource_by_name(struct device_d *dev,
> -- 
> 1.7.12.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
