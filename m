Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uhz4X-0002Vz-AK
 for barebox@lists.infradead.org; Thu, 30 May 2013 09:23:01 +0000
Date: Thu, 30 May 2013 11:22:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130530092243.GZ32299@pengutronix.de>
References: <1369741903-24988-4-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369741903-24988-4-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] pcm049: clean up
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, May 28, 2013 at 01:51:42PM +0200, Jan Weitzel wrote:
> Remove magic numbers
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/pcm049/lowlevel.c |   10 +++++-----
>  1 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
> index 8548868..caac21e 100644
> --- a/arch/arm/boards/pcm049/lowlevel.c
> +++ b/arch/arm/boards/pcm049/lowlevel.c
> @@ -127,11 +127,11 @@ static void noinline pcm049_init_lowlevel(void)
>  	/* Enable all clocks */
>  	omap4_enable_all_clocks();
>  
> -	sr32(0x4A30a31C, 8, 1, 0x1);  /* enable software ioreq */
> -	sr32(0x4A30a31C, 1, 2, 0x0);  /* set for sys_clk (19.2MHz) */
> -	sr32(0x4A30a31C, 16, 4, 0x0); /* set divisor to 1 */
> -	sr32(0x4A30a110, 0, 1, 0x1);  /* set the clock source to active */
> -	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
> +	sr32(OMAP44XX_SCRM_AUXCLK3, 8, 1, 0x1);  /* enable software ioreq */
> +	sr32(OMAP44XX_SCRM_AUXCLK3, 1, 2, 0x0);  /* set for sys_clk (19.2MHz) */
> +	sr32(OMAP44XX_SCRM_AUXCLK3, 16, 4, 0x0); /* set divisor to 1 */
> +	sr32(OMAP44XX_SCRM_ALTCLKSRC, 0, 1, 0x1);  /* activate clock source */
> +	sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);  /* enable clocks */
>  }
>  
>  void barebox_arm_reset_vector(void)
> -- 
> 1.7.0.4
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
