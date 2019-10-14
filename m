Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzdM-0000Ls-Aa
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:39:34 +0000
Date: Mon, 14 Oct 2019 14:39:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014123930.x2ea4ka6hwu3u7uv@pengutronix.de>
References: <20191011162753.17100-1-a.fatoum@pengutronix.de>
 <20191011162753.17100-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011162753.17100-3-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 3/4] watchdog: add support for Fintek F718xx and, F818xx
 Super I/O
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 11, 2019 at 06:27:52PM +0200, Ahmad Fatoum wrote:
> This is an adaptation of the Linux v5.3 f71808e_wdt driver for the watchdog
> component of the Fintek Super I/O chips.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/watchdog/Kconfig       |  10 +
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/f71808e_wdt.c | 379 +++++++++++++++++++++++++++++++++
>  3 files changed, 390 insertions(+)
>  create mode 100644 drivers/watchdog/f71808e_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index fbaab896d460..b1c2a39b6629 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -90,10 +90,20 @@ config STM32_IWDG_WATCHDOG
>  	  Enable to support configuration of the STM32's on-SoC IWDG watchdog.
>  	  Once started by the user, the IWDG can't be disabled.
>  
> +

Please drop this hunk.

>  config STPMIC1_WATCHDOG
>  	bool "STPMIC1 Watchdog"
>  	depends on MFD_STPMIC1
>  	help
>  	  Enable to support configuration of the stpmic1's built-in watchdog.
>  
> +config F71808E_WDT
> +	bool "Fintek F718xx, F818xx Super I/O Watchdog"
> +	depends on X86
> +	select FINTEK_SUPERIO

I prefer a "depends on" here.

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
