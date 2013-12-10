Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqHyB-0005X5-1w
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 07:43:03 +0000
Date: Tue, 10 Dec 2013 08:42:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131210074240.GT24559@pengutronix.de>
References: <1386598214-9489-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386598214-9489-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 0/3] Socfpga: update preloader files - The missing link
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 09, 2013 at 03:10:11PM +0100, Steffen Trumtrar wrote:
> Hi!
> 
> This is an addon to the series
> 
> 	SOCFPGA: update to v13.1 preloader files
> 
> The last series was actually missing a rather important update to the
> iocsr setup.
> The current barebox version produces a (memory?)setup, that leads to
> an unstable linux kernel. Namely: page alloc errors, kmemleaks and
> NULL pointer dereferences on the Terasic SoCkit. The EBV Socrates didn't
> show these errors.
> 
> Something in those magic numbers in patch 2/3 seems to fix this,
> as these problems haven't been seen as of yet with this new setup.
> 
> Regards,
> Steffen
> 
> Steffen Trumtrar (3):
>   ARM: socfpga: sockit: update sdram config
>   ARM: socfpga: update iocsr config
>   ARM: socfpga: sockit: reconfigure src for sdmmc

Applied, thanks

Sascha

> 
>  arch/arm/boards/terasic-sockit/pll_config.h   |   2 +-
>  arch/arm/boards/terasic-sockit/sdram_config.h |  21 +-
>  arch/arm/mach-socfpga/iocsr-config-cyclone5.c | 418 +++++++++++++-------------
>  3 files changed, 223 insertions(+), 218 deletions(-)
> 
> -- 
> 1.8.4.3
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
