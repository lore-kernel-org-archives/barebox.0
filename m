Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC6e6-0002LC-BF
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 12:36:46 +0000
Date: Tue, 29 Jul 2014 14:36:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140729123622.GH23235@pengutronix.de>
References: <1406628653-27214-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406628653-27214-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH] ARM: at91: clock: fix the pllb checking
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 29, 2014 at 06:10:53PM +0800, Bo Shen wrote:
> On at91sam9n12 soc, it has pllb, while on sama5d3 soc,
> it doesn't has pllb.
> 
> Signed-off-by: Bo Shen <voice.shen@atmel.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-at91/clock.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
> index 59c4d11..9d2a846 100644
> --- a/arch/arm/mach-at91/clock.c
> +++ b/arch/arm/mach-at91/clock.c
> @@ -65,7 +65,7 @@
>  #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
>  				|| cpu_is_at91sam9g45() \
>  				|| cpu_is_at91sam9x5() \
> -				|| cpu_is_at91sam9n12()))
> +				|| cpu_is_sama5d3()))
>  
>  #define cpu_has_upll()		(cpu_is_at91sam9g45() \
>  				|| cpu_is_at91sam9x5() \
> -- 
> 1.8.5.2
> 
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
