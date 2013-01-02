Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqLDx-0006vz-Ik
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 10:07:02 +0000
Date: Wed, 2 Jan 2013 11:07:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102100700.GB26326@pengutronix.de>
References: <20121228164327.GB7216@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121228164327.GB7216@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] atmel nand/spi/udc: request gpio
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 28, 2012 at 05:43:27PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	request and configure gpio via gpiolib for some of the Atmel drivers:
> 
> 	 - Nand
> 	 - SPI
> 	 - at91 udc
> 
> The following changes since commit 95bc1eacae260a56c233179bc0fbd6245f2c68ed:
> 
>   qil-a9260-64: ser2net config (2012-12-28 00:33:06 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91_gpio
> 

Applied, thanks

Sascha

> for you to fetch changes up to 52f0cda71c7e10a8bdf4a0976c7f7dee3a4f9678:
> 
>   spi: atmel: request cs pin via gpiolib (2012-12-29 00:29:39 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       mtd: atmel_nand: request and configure pio via gpiolib
>       usb: at91_udc: request and configure vbus pin via gpiolib
>       spi: atmel: request cs pin via gpiolib
> 
>  drivers/mtd/nand/atmel_nand.c |   53 +++++++++++++++++++++++++++++++++++++++++++++++++++--
>  drivers/spi/atmel_spi.c       |    8 ++++++++
>  drivers/usb/gadget/at91_udc.c |    7 +++++++
>  3 files changed, 66 insertions(+), 2 deletions(-)
> 
> Best Regards,
> J.
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
