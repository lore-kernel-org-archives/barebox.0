Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSHLs-0008EP-8t
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 08:07:13 +0000
Date: Thu, 29 Nov 2018 09:07:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129080700.wav4b2tbk3l5sh43@pengutronix.de>
References: <20181128100118.28873-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181128100118.28873-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH] Kconfig: Add clocksource menu
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: cleger@kalray.eu, barebox@lists.infradead.org

On Wed, Nov 28, 2018 at 11:01:18AM +0100, Jules Maselbas wrote:
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/clocksource/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)

Appliedm, thanks

Sascha

> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 3caf72503..02659d86a 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -1,3 +1,5 @@
> +menu "Clocksource"
> +
>  config ARCH_HAS_IMX_GPT
>         bool
>  
> @@ -80,3 +82,5 @@ config CLOCKSOURCE_ARM_GLOBAL_TIMER
>  config CLOCKSOURCE_IMX_GPT
>  	def_bool y
>  	depends on ARCH_HAS_IMX_GPT
> +
> +endmenu
> -- 
> 2.19.1.1052.gd166e6a
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
