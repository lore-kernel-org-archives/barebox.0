Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI7y3-0007tu-5z
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 06:27:53 +0000
Date: Tue, 6 Jun 2017 08:27:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606062728.hka2xuqojyqgpxp3@pengutronix.de>
References: <20170604031154.26663-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170604031154.26663-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 0/4] GPIO "active low", hogging and usb-nop-xceive
 'reset-gpio' support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, barebox@lists.infradead.org, cphealy@gmail.com

On Sat, Jun 03, 2017 at 08:11:50PM -0700, Andrey Smirnov wrote:
> Hi everyone,
> 
> This is a v3 of my original patchset. Changes in this version are the following:
> 
>   - new flags, GPIOF_INIT_[IN]ACTIVE and GPIOF_OUT_INIT_[IN]ACTIVE are
>     added to avoid semantically overloading the meaing of "HIGH/LOW"
>     variants of those
> 
>   - added commentary about GPIO 'hog' interpretation of the meaning of
>     'output-high', 'output-low'
> 
> Changes since v1:
> 
>   - 'active low' support is moved inot a dedicated API
>   - of_gpiochip_scan_gpios renamed to of_gpiochip_scan_hogs
>   - nop_usbphy_init doesn't try to needlessly configure reset gpio's directionality
> 
> Let me know if anything else needs changing.
> 
> Thanks,
> Andrey Smirnov

Applied, thanks

Sascha

> 
> Andrey Smirnov (4):
>   gpio-imx: Do not use gpio_set_value()
>   gpiolib: Add code to support "active low" GPIOs
>   gpiolib: Add support for GPIO "hog" nodes
>   usb-nop-xceiv: Add support for 'reset-gpios' binding
> 
>  drivers/gpio/gpio-imx.c     |   2 +-
>  drivers/gpio/gpiolib.c      | 146 ++++++++++++++++++++++++++++++++++++++++++--
>  drivers/phy/usb-nop-xceiv.c |  45 ++++++++++++--
>  include/gpio.h              |  25 ++++++++
>  4 files changed, 208 insertions(+), 10 deletions(-)
> 
> -- 
> 2.9.4
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
