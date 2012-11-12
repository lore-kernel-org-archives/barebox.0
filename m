Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXoZU-0004Is-4d
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 07:36:40 +0000
Date: Mon, 12 Nov 2012 08:36:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112073637.GJ10369@pengutronix.de>
References: <20121106193010.GE25679@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121106193010.GE25679@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/8] atmtel: fix spi driver + rm9200
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 06, 2012 at 08:30:10PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> The following changes since commit d74bef2b04a3ccf7339ba916e56830bb2feae957:
> 
>   mount: add compatibility to old mount command (2012-11-02 21:26:29 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/atmel_spi_fix
> 
> for you to fetch changes up to 7e7b7aa81cdf7e47a8f828818f1e453a27046c38:
> 
>   at91rm9200: fix spi cs support (2012-11-06 04:39:09 +0800)

Applied, thanks

Sascha

> 
> ----------------------------------------------------------------
> atmel spi support fix
> 
> The current drivers for atmel have a lot of issues but we are lucky
> enough if you use it one device + one master instance it will work on
> most of the spi device
> 
> but this will not work on mmc spi or multi-master instance or multi-device
> 
> so now fix all those issues
>  - fix the cs support
>  - fix setup setup support
>  - do not call setup before each transfert
>  - add sanity check
> 
> now the atmel spi work on rm9200, mmc spi and at24, at45, eeprom
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (8):
>       atmel_spi: use device id as bus num
>       atmel_spi: split transfert to atmel_spi_do_xfer
>       atmel_spi: after setup the cs need to be disable
>       atmel_spi: add sanity check in setup
>       atmel_spi: fix cs support
>       atmel_spi: drop setup during transfer
>       atmel_spi: add cs change support
>       at91rm9200: fix spi cs support
> 
>  arch/arm/mach-at91/at91rm9200_devices.c |    7 ++++++-
>  drivers/spi/atmel_spi.c                 |  260 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------------------------------
>  2 files changed, 196 insertions(+), 71 deletions(-)
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
