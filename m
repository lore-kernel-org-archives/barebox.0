Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Yve-00064B-1u
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 21:22:47 +0000
Date: Thu, 7 Feb 2013 22:22:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130207212243.GA1906@pengutronix.de>
References: <1360243466-30498-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360243466-30498-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v3 0/3] Add mxs spi driver and mx28evk as its first user
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2013 at 02:24:23PM +0100, Michael Grzeschik wrote:
> this series adds support for the mxs spi driver
> and adds the mx28evk as the first user to use it
> with an m25p80 flash memory.
> 
> The driver was tested to work with the pio mode,
> as its implementation has currently no dma support.
> 
> The SSP clock needed to be lower than the max possible
> frequency for the flash. Otherwise it sometimes, after
> a lot of spi transactions, the SSP stopped working.
> 
> Michael Grzeschik (3):
>   ARM mxs: ssp move to common register layout
>   SPI: Add i.MX 23/28 SPI driver support
>   mx28evk: add m25p80 flash via ssp2

Applied, thanks

Sascha

> 
>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   29 +++
>  arch/arm/mach-mxs/include/mach/ssp.h          |  120 ++++++++++
>  drivers/mci/mxs.c                             |  118 +---------
>  drivers/spi/Kconfig                           |    5 +
>  drivers/spi/Makefile                          |    1 +
>  drivers/spi/mxs_spi.c                         |  289 +++++++++++++++++++++++++
>  6 files changed, 445 insertions(+), 117 deletions(-)
>  create mode 100644 arch/arm/mach-mxs/include/mach/ssp.h
>  create mode 100644 drivers/spi/mxs_spi.c
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
