Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZpj2-0007Cc-PU
	for barebox@lists.infradead.org; Tue, 26 Jan 2010 18:01:17 +0000
Date: Tue, 26 Jan 2010 19:01:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100126180109.GF19551@pengutronix.de>
References: <1263891265-15350-1-git-send-email-jacmet@sunsite.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1263891265-15350-1-git-send-email-jacmet@sunsite.dk>
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
Subject: Re: [PATCH] mach-at91: reset_cpu: fix confusing reference to watchdog
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On Tue, Jan 19, 2010 at 09:54:25AM +0100, Peter Korsgaard wrote:
> On at91 we talk directly to the reset controller to reset the cpu,
> rather than use the watchdog, so update the comment to match.

Ok, applied.

Sascha

> 
> Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
> ---
>  arch/arm/mach-at91/clocksource.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/clocksource.c b/arch/arm/mach-at91/clocksource.c
> index b5886f9..564b560 100644
> --- a/arch/arm/mach-at91/clocksource.c
> +++ b/arch/arm/mach-at91/clocksource.c
> @@ -71,7 +71,7 @@ static int clocksource_init (void)
>  core_initcall(clocksource_init);
>  
>  /*
> - * Reset the cpu by setting up the watchdog timer and let it time out
> + * Reset the cpu through the reset controller
>   */
>  void reset_cpu (ulong ignored)
>  {
> -- 
> 1.6.5
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
