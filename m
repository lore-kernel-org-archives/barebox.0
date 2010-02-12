Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NfpfA-0000wJ-VP
	for barebox@lists.infradead.org; Fri, 12 Feb 2010 07:10:06 +0000
Date: Fri, 12 Feb 2010 08:09:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100212070955.GP17643@pengutronix.de>
References: <20100210195615.GE374@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100210195615.GE374@darwin>
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
Subject: Re: [PATCH] edb93xx: Fix SDRAM initialization
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Wed, Feb 10, 2010 at 08:56:15PM +0100, Matthias Kaehlcke wrote:
> Before programming the SDRAM mode registers, mode register update mode must be
> selected by setting the MRS bit and clearing INIT in GlConfig
> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>

Ok, applied

Sascha

> ---
>  board/edb93xx/sdram_cfg.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/board/edb93xx/sdram_cfg.c b/board/edb93xx/sdram_cfg.c
> index 9f56f72..25b214b 100644
> --- a/board/edb93xx/sdram_cfg.c
> +++ b/board/edb93xx/sdram_cfg.c
> @@ -111,6 +111,11 @@ static void setup_refresh_timer(void)
>  
>  static void program_mode_registers(void)
>  {
> +	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
> +
> +	/* Select mode register update mode */
> +	writel(GLCONFIG_MRS | GLCONFIG_CKE, &sdram->glconfig);
> +
>  	PROGRAM_MODE_REG(0);
>  
>  #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
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
