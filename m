Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5LzV-0001gQ-CQ
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 21:34:57 +0000
Date: Thu, 10 Jul 2014 23:34:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140710213435.GG23235@pengutronix.de>
References: <1405022845-12402-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405022845-12402-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/2] add driver for PCA95[357]x, PCA9698, TCA64xx, and
 MAX7310 SMBus I/O expanders
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 11, 2014 at 12:07:23AM +0400, Antony Pavlov wrote:
> changes since RFC v1 patchseries:
> 
>   * gpio-pca953x.c: drop depricated devicetree parameters;
>   * gpio-pca953x.c: add pca953x_gpio_get_direction();
>   * move SMBus stuff from i2c.c to i2c-smbus.c, introduce CONFIG_I2C_SMBUS.
> 
> Antony Pavlov (2):
>   i2c: import SMBus stuff from linux
>   gpio: add driver for PCA95[357]x, PCA9698, TCA64xx, and MAX7310 SMBus
>     I/O expanders

Applied, thanks

Sascha

> 
>  drivers/gpio/Kconfig            |  21 ++
>  drivers/gpio/Makefile           |   1 +
>  drivers/gpio/gpio-pca953x.c     | 481 ++++++++++++++++++++++++++++++++++++++++
>  drivers/i2c/Kconfig             |   3 +
>  drivers/i2c/Makefile            |   1 +
>  drivers/i2c/i2c-smbus.c         | 371 +++++++++++++++++++++++++++++++
>  include/i2c/i2c.h               |  57 +++++
>  include/platform_data/pca953x.h |  27 +++
>  8 files changed, 962 insertions(+)
>  create mode 100644 drivers/gpio/gpio-pca953x.c
>  create mode 100644 drivers/i2c/i2c-smbus.c
>  create mode 100644 include/platform_data/pca953x.h
> 
> -- 
> 2.0.1
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
