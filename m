Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2D3-0001YE-77
 for barebox@lists.infradead.org; Fri, 08 May 2020 12:34:34 +0000
Date: Fri, 8 May 2020 14:34:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200508123431.GM5877@pengutronix.de>
References: <20200508062530.23241-1-a.fatoum@pengutronix.de>
 <20200508062530.23241-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508062530.23241-4-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 4/5] drivers: add COMPILE_TEST prompts to some
 on-by-default drivers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 08, 2020 at 08:25:29AM +0200, Ahmad Fatoum wrote:
> Many clock source and GPIO controller drivers don't have a prompt, but
> are instead default y if their respective platform is enabled. Maintain
> this behavior, but add a prompt for when COMPILE_TEST is enabled, so
> they can be included in test builds.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clocksource/Kconfig | 16 +++++++++-------
>  drivers/gpio/Kconfig        | 12 ++++++++----
>  drivers/pinctrl/Kconfig     |  8 ++++----
>  3 files changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 8805cda39e02..bc2aae7ad723 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -75,16 +75,18 @@ config CLOCKSOURCE_ATMEL_PIT
>         bool
>  
>  config CLOCKSOURCE_ARM_ARCHITECTED_TIMER
> -	bool
> -	default y
> -	depends on ARM && (CPU_64v8 || CPU_V7)
> +	bool "ARM architected timer clock source" if COMPILE_TEST
> +	default y if ARM && (CPU_64v8 || CPU_V7)
> +	depends on (ARM && (CPU_64v8 || CPU_V7)) || COMPILE_TEST

This driver compiles only on ARM. It uses get_cntpct() which is a
contains inline assembly.

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
