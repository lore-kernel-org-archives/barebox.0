Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEo7N-00073o-Kq
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 21:17:06 +0000
Date: Thu, 20 Sep 2012 23:17:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120920211704.GB1322@pengutronix.de>
References: <20120920184515.GJ26553@game.jcrosoft.org>
 <1348167090-1372-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348167090-1372-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] fb: add it's own bus for fb devices
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 20, 2012 at 08:51:30PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This is need for oftree device probing
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/video/fb.c |   25 +++++++++++++++++++++----
>  include/fb.h       |    2 ++
>  2 files changed, 23 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index d885570..127723c 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -125,6 +125,7 @@ int register_framebuffer(struct fb_info *info)
>  
>  	sprintf(dev->name, "fb");
>  
> +	info->dev.bus = &fb_bus;
>  	register_device(&info->dev);
>  	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
>  	dev_set_param(dev, "enable", "0");
> @@ -160,19 +161,35 @@ static void fb_info(struct device_d *dev)
>  	printf("\n");
>  }
>  
> -static int fb_probe(struct device_d *hw_dev)
> +static struct driver_d fb_driver = {
> +	.name  = "fb",
> +	.info = fb_info,
> +};
> +
> +static int fb_match(struct device_d *dev, struct driver_d *drv)
>  {
>  	return 0;
>  }
>  
> -static struct driver_d fb_driver = {
> -	.name  = "fb",
> +static int fb_probe(struct device_d *dev)
> +{
> +	return 0;
> +}
> +
> +static void fb_remove(struct device_d *dev)
> +{
> +}
> +
> +struct bus_type fb_bus = {
> +	.name = "fb",
> +	.match = fb_match,
>  	.probe = fb_probe,
> -	.info = fb_info,
> +	.remove = fb_remove,
>  };
>  
>  static int fb_init_driver(void)
>  {
> +	fb_driver.bus = &fb_bus;
>  	register_driver(&fb_driver);
>  	return 0;
>  }
> diff --git a/include/fb.h b/include/fb.h
> index 41deb8c..c594418 100644
> --- a/include/fb.h
> +++ b/include/fb.h
> @@ -110,5 +110,7 @@ int register_framebuffer(struct fb_info *info);
>  #define	FBIO_ENABLE		_IO('F', 2)
>  #define	FBIO_DISABLE		_IO('F', 3)
>  
> +extern struct bus_type fb_bus;
> +
>  #endif /* __FB_H */
>  
> -- 
> 1.7.10.4
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
