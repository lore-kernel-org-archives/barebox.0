Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8zd-00045X-6B
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 07:57:26 +0000
Date: Tue, 18 Jun 2019 09:57:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190618075723.hnc5uabshtrypfda@pengutronix.de>
References: <CAHBg2Ld_n600PKRkg1Ye+QviSYoguos5vheT6MWVQw3Nz4za4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHBg2Ld_n600PKRkg1Ye+QviSYoguos5vheT6MWVQw3Nz4za4Q@mail.gmail.com>
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
Subject: Re: Raspberry CM3 eMMC Boot
To: Rico Pahlisch <rico.pahlisch@kiwigrid.com>
Cc: barebox@lists.infradead.org

Hi Rico,

On Mon, Jun 17, 2019 at 03:44:17PM +0200, Rico Pahlisch wrote:
> Hello,
> 
> I try to boot from the internal eMMC with the raspberry CM3 barebox
> build but I dont get a promt.
> After changing the code barebox works fine. Does any one else have
> problems with the raspberry 3 compute module.
> 
> diff --git a/drivers/pinctrl/pinctrl-bcm2835.c
> b/drivers/pinctrl/pinctrl-bcm2835.c
> index 5fd5740..56daa04 100644
> --- a/drivers/pinctrl/pinctrl-bcm2835.c
> +++ b/drivers/pinctrl/pinctrl-bcm2835.c
> @@ -209,4 +209,4 @@ static int bcm2835_gpio_add(void)
>  {
>         return platform_driver_register(&bcm2835_gpio_driver);
>  }
> -coredevice_initcall(bcm2835_gpio_add);
> +device_initcall(bcm2835_gpio_add);

I have no idea why this helps. Do you have any logs that explain the
issue?

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
