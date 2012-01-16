Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmi2i-0000WZ-Lj
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 08:35:54 +0000
Date: Mon, 16 Jan 2012 09:35:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120116083527.GK5446@pengutronix.de>
References: <1326552527-8359-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326552527-8359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] usb: fix driver name
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 14, 2012 at 03:48:47PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> use the usb_driver name

Can you add some explanation to the commit log why this is needed? Which
name is used before the patch and what does it use now?

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/usb/core/usb.c    |    1 +
>  drivers/usb/storage/usb.c |    1 -
>  2 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7039a2c..f10bcad 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -1275,6 +1275,7 @@ static int usb_hub_probe(struct usb_device *dev, int ifnum)
>  
>  int usb_driver_register(struct usb_driver *drv)
>  {
> +	drv->driver.name = drv->name;
>  	drv->driver.bus = &usb_bus_type;
>  	return register_driver(&drv->driver);
>  }
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index 865ba8e..5b8923f 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -632,7 +632,6 @@ static struct usb_driver usb_storage_driver = {
>  
>  static int __init usb_stor_init(void)
>  {
> -	usb_storage_driver.name = usb_storage_driver.driver.name;
>  	return usb_driver_register(&usb_storage_driver);
>  }
>  device_initcall(usb_stor_init);
> -- 
> 1.7.7
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
