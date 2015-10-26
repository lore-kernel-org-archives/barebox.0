Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqiRT-0001xD-GU
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 14:08:11 +0000
Date: Mon, 26 Oct 2015 15:07:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151026140745.GH25308@pengutronix.de>
References: <1445868188-29541-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445868188-29541-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: clocksource: add new DT compatible
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 26, 2015 at 03:03:08PM +0100, Lucas Stach wrote:
> The i.MX6 DL/S DT has been changed to use more specific compatibles as
> GPTv2 has a different programming model for modes used in Linux. This
> difference doesn't matter for Barebox, but the old mx31 compatible has
> been dropped from the DT, so we need to match on the one still present.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

I also just stumbled upon this, but you were faster sending it ;)

Applied, thanks

Sascha

> ---
> This fixes a "Warning: Using dummy clocksource" and resulting wrong
> delays present in -next on MX6DL/S.
> ---
>  arch/arm/mach-imx/clocksource.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
> index 06d2fba41299..a11b978bf4c8 100644
> --- a/arch/arm/mach-imx/clocksource.c
> +++ b/arch/arm/mach-imx/clocksource.c
> @@ -141,6 +141,9 @@ static __maybe_unused struct of_device_id imx_gpt_dt_ids[] = {
>  		.compatible = "fsl,imx31-gpt",
>  		.data = &regs_imx31,
>  	}, {
> +		.compatible = "fsl,imx6q-gpt",
> +		.data = &regs_imx31,
> +	}, {
>  		/* sentinel */
>  	}
>  };
> -- 
> 2.6.1
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
