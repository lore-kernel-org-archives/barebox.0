Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9CJR-0004es-1t
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 09:54:22 +0000
Date: Wed, 5 Sep 2012 11:54:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120905095415.GD26594@pengutronix.de>
References: <1346833433-24733-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346833433-24733-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v4 0/2] Add stmpe mfd
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2012 at 10:23:51AM +0200, Steffen Trumtrar wrote:
> Hi,
> 
> another day, another patch version. This version includes the following requests by
> Sascha and Marc (Thanks again):
> 	- remove all the iomem stuff in add_generic_device in stmpe-i2c.c
> 	- allocate stmpe_client_info for every device, not just one
> 	- remove unused struct fields
> 	- remove extern for prototypes
> 
> Regards,
> Steffen
> 
> 
> Steffen Trumtrar (2):
>   mfd: add stmpe-i2c driver
>   gpio: add driver for stmpe io-expander

Applied, thanks

Sascha

> 
>  drivers/Kconfig           |    1 +
>  drivers/gpio/Kconfig      |    9 +++
>  drivers/gpio/Makefile     |    2 +
>  drivers/gpio/gpio-stmpe.c |  161 +++++++++++++++++++++++++++++++++++++++++++++
>  drivers/mfd/Kconfig       |    4 ++
>  drivers/mfd/Makefile      |    1 +
>  drivers/mfd/stmpe-i2c.c   |  153 ++++++++++++++++++++++++++++++++++++++++++
>  include/mfd/stmpe-i2c.h   |   53 +++++++++++++++
>  8 files changed, 384 insertions(+)
>  create mode 100644 drivers/gpio/Kconfig
>  create mode 100644 drivers/gpio/Makefile
>  create mode 100644 drivers/gpio/gpio-stmpe.c
>  create mode 100644 drivers/mfd/stmpe-i2c.c
>  create mode 100644 include/mfd/stmpe-i2c.h
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
