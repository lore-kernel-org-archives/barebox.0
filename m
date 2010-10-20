Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P8NpK-0000T0-P8
	for barebox@lists.infradead.org; Wed, 20 Oct 2010 01:50:51 +0000
Date: Wed, 20 Oct 2010 03:48:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101020014820.GB20390@game.jcrosoft.org>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
	<1287492930-15716-22-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1287492930-15716-22-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 21/42] i.MX remove wdog registers from header files
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:55 Tue 19 Oct     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/clocksource.c             |   23 +++++++++++++++++++----
>  arch/arm/mach-imx/include/mach/imx1-regs.h  |    8 --------
>  arch/arm/mach-imx/include/mach/imx21-regs.h |    8 --------
>  arch/arm/mach-imx/include/mach/imx27-regs.h |    8 --------
>  arch/arm/mach-imx/include/mach/imx31-regs.h |   10 ----------
>  arch/arm/mach-imx/include/mach/imx35-regs.h |   10 ----------
>  arch/arm/mach-imx/include/mach/imx51-regs.h |    7 -------
>  7 files changed, 19 insertions(+), 55 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
> index e492890..4cb923f 100644
> --- a/arch/arm/mach-imx/clocksource.c
> +++ b/arch/arm/mach-imx/clocksource.c
> @@ -101,19 +101,34 @@ static int clocksource_init (void)
>  core_initcall(clocksource_init);
>  
>  /*
> + * Watchdog Registers
> + */
> +#ifdef CONFIG_ARCH_IMX1
> +#define WDOG_WCR	0x00 /* Watchdog Control Register */
> +#define WDOG_WSR	0x02 /* Watchdog Service Register */
> +#define WDOG_WSTR	0x04 /* Watchdog Status Register  */
> +#define WDOG_WCR_WDE	(1 << 0)
> +#else
> +#define WDOG_WCR	0x00 /* Watchdog Control Register */
> +#define WDOG_WSR	0x02 /* Watchdog Service Register */
> +#define WDOG_WSTR	0x04 /* Watchdog Status Register  */
> +#define WDOG_WCR_WDE	(1 << 2)
only the WDE seems different

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
