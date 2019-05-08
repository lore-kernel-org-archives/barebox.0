Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOILm-0001wM-AT
 for barebox@lists.infradead.org; Wed, 08 May 2019 08:54:56 +0000
Date: Wed, 8 May 2019 10:54:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190508085449.hs4ato3yzoe72qta@pengutronix.de>
References: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.f11bd6763969bb7d206b1b29aa16d5758acb980a.1556875750.git-series.s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 00/10] spi: spi-mem and fsl-qspi support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, May 03, 2019 at 11:33:50AM +0200, Steffen Trumtrar wrote:
> Hi!
> 
> This series imports the spi-mem framework from linux into barebox.
> 
> The first patches sync the respective driver with linux to ease
> porting of the following patches.
> Then drivers/spi/spi.c is updated to use the spi-mem framework.
> The Freescale QSPI controller driver, which uses this framework,
> is ported from linux; the older driver was removed from mainline
> linux and wasn't even working correctly.
> Finally drivers/mtd/devices/m25p80.c is simplified by using spi-mem.
> 
> The series was tested with the Layerscape LS1046a and SocFPGA Cyclone5
> SoCs.
> 
> Best regards,
> Steffen

Applied, thanks

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
