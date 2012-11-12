Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXoVX-0004BP-H5
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 07:32:36 +0000
Date: Mon, 12 Nov 2012 08:32:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112073233.GH10369@pengutronix.de>
References: <20121105182148.GA25679@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121105182148.GA25679@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2 v4] add spi command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 05, 2012 at 07:21:48PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v4:
> 	do not touch the atmel_spi
> 
> 	v3:
> 	call setup before accesing the device
> 	This was working properly on at91 as the driver is wrong.
> 	It call setup for every transfer. I will fix the atmel_spi.
> 
> 	v2:
> 	add default return usage
> 	use memory_display
> 
> 	while debugging a spi issue I found we have a i2c commands but no spi
> 	command
> 
> 	So introduce one
> 
> The following changes since commit 56371f4e8446d04d2a5608dd5890fd87a50f888e:

Applied, thanks

Sascha

> 
>   iomux-imx35: add missing comma in pad definition (2012-11-01 16:32:12 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/command_spi
> 
> for you to fetch changes up to 268e3d4f67da35571159fd096c62fa2e660783b0:
> 
>   introduce spi command (2012-11-05 11:13:25 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       spi: introduce spi_get_master
>       introduce spi command
> 
>  commands/Kconfig  |    6 ++++++
>  commands/Makefile |    1 +
>  commands/spi.c    |  132 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/spi/spi.c |   12 ++++++++++++
>  include/spi/spi.h |    2 ++
>  5 files changed, 153 insertions(+)
>  create mode 100644 commands/spi.c
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
