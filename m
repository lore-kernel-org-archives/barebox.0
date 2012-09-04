Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oob-0003ag-L2
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:48:58 +0000
Date: Tue, 4 Sep 2012 10:48:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904084855.GS26594@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-10-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346672765-16162-10-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 09/10] omap3: allow enabling clocks for UART3, MMC1 and SPI
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 01:46:04PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/Kconfig       |    4 ++++
>  arch/arm/mach-omap/omap3_clock.c |   35 +++++++++++++++++++++++++----------
>  2 files changed, 29 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index a781287..82fa46b 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -61,6 +61,10 @@ config OMAP_CLOCK_UART3
>  	bool
>  config OMAP_CLOCK_I2C
>  	bool
> +config OMAP_CLOCK_MMC1
> +	bool
> +config OMAP_CLOCK_SPI
> +	bool

A Kconfig entry for enabling a clock is overkill. Please do not continue
this.

Right now we have:

config OMAP_CLOCK_UART
	bool
config OMAP_CLOCK_UART2
	bool
config OMAP_CLOCK_UART3
	bool
config OMAP_CLOCK_I2C
	bool

And it's completely unused, so can be simply removed.

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
