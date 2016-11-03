Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2BHl-0005QI-Ez
 for barebox@lists.infradead.org; Thu, 03 Nov 2016 06:14:01 +0000
Date: Thu, 3 Nov 2016 07:13:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161103061339.y37dqh7cxcuqulp5@pengutronix.de>
References: <20161101095227.2087-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161101095227.2087-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/2] fixup! watchdog: add designware driver
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 01, 2016 at 10:52:26AM +0100, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/watchdog/dw_wdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Squashed into the original commits, thanks

Sascha

> 
> diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
> index fa2752896c2f..8fd8c81e6c38 100644
> --- a/drivers/watchdog/dw_wdt.c
> +++ b/drivers/watchdog/dw_wdt.c
> @@ -151,7 +151,7 @@ static int dw_wdt_drv_probe(struct device_d *dev)
>  	if (ret)
>  		return ret;
>  
> -	dw_wdt->rst = reset_control_get(dev, "dw-wdt");
> +	dw_wdt->rst = reset_control_get(dev, NULL);
>  	if (IS_ERR(dw_wdt->rst))
>  		dev_warn(dev, "No reset lines. Will not be able to stop once started.\n");
>  
> -- 
> 2.10.1
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
