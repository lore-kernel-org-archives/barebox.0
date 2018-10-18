Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDARF-0007CD-4D
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 15:43:36 +0000
Date: Thu, 18 Oct 2018 17:42:04 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181018154204.GD2206@ravnborg.org>
References: <20181018101931.11417-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181018101931.11417-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH] i2c: introduce device_i2c_driver() macro
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Marco

> diff --git a/drivers/video/mtl017.c b/drivers/video/mtl017.c
> index 1a1f686223..085ea110ba 100644
> --- a/drivers/video/mtl017.c
> +++ b/drivers/video/mtl017.c
> @@ -16,7 +16,6 @@
>   *
>   */
>  #include <common.h>
> -#include <init.h>
>  #include <driver.h>
>  #include <xfuncs.h>
>  #include <errno.h>
> @@ -270,11 +269,4 @@ static struct driver_d twl_driver = {
>  	.name  = "mtl017",
>  	.probe = mtl017_probe,
>  };
> -
> -static int mtl017_init(void)
> -{
> -	i2c_driver_register(&twl_driver);
> -	return 0;
> -}
> -
> -device_initcall(mtl017_init);
> +device_i2c_driver(twl_driver);

Not related to your patch, but it looks strange that
the mtl017 file has a twl_driver.
It looks like a copy-paste issue from the past.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
