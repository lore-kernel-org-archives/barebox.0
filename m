Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0bO-0008Dy-Uk
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 08:34:11 +0000
Date: Thu, 16 Jan 2020 09:34:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200116083405.62dy2zjf63l6f246@pengutronix.de>
References: <20200115111409.24129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115111409.24129-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] Revert "clocksource: ARMv8 timer can only be built on
 ARMv8"
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 15, 2020 at 12:14:09PM +0100, Ahmad Fatoum wrote:
> This reverts commit 33ec8cb5872617fa95aea08d9f7f2b684d95b6de,
> so that barebox can once again match against "arm,armv7-timer"
> compatibles. The reverted commit restricted the timer to CPU_V8,
> because in i.MX multi-image configuration with MACH_SCB9328 set,
> we can have both CPU_32v7 and CPU_32v4T in the same build.
> 
> To avoid this issue properly, force use of -march=armv7-a for
> non-CONFIG_CPU_V8 targets. This is acceptable as we don't expect
> non-ARMv7 device trees to have the architected arm,armv7-timer.
> 
> Suggested-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clocksource/Kconfig  | 2 +-
>  drivers/clocksource/Makefile | 5 ++++-
>  2 files changed, 5 insertions(+), 2 deletions(-)

Applied, thanks

> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 44a6cef6fbae..43c5bfc9736a 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -73,7 +73,7 @@ config CLOCKSOURCE_ATMEL_PIT
>  config CLOCKSOURCE_ARMV8_TIMER
>  	bool
>  	default y
> -	depends on ARM && CPU_V8
> +	depends on ARM && (CPU_64v8 || CPU_V7)

Is it worth renaming the driver to something not v8 specific?
ARM_ARCHITECTED_TIMER maybe?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
