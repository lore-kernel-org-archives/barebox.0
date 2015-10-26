Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqbgW-0003RI-OR
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 06:55:13 +0000
Date: Mon, 26 Oct 2015 07:54:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151026065450.GT14476@pengutronix.de>
References: <1445643280-11515-1-git-send-email-eric@nelint.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445643280-11515-1-git-send-email-eric@nelint.com>
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
Subject: Re: [PATCH] imx6-mmdc: restore RALAT/WALAT in MMDC0, not MMDC1
To: Eric Nelson <eric@nelint.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 23, 2015 at 04:34:40PM -0700, Eric Nelson wrote:
> Signed-off-by: Eric Nelson <eric@nelint.com>
> ---
>  arch/arm/mach-imx/imx6-mmdc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
> index 40fe0cf..7840c1a 100644
> --- a/arch/arm/mach-imx/imx6-mmdc.c
> +++ b/arch/arm/mach-imx/imx6-mmdc.c
> @@ -474,7 +474,7 @@ int mmdc_do_dqs_calibration(void)
>  	writel(v, P0_IPS + MAPSR);
>  
>  	/* restore MDMISC value (RALAT, WALAT) */
> -	writel(esdmisc_val, P1_IPS + MDMISC);
> +	writel(esdmisc_val, P0_IPS + MDMISC);
>  
>  	/* clear DQS pull ups */
>  	v = readl(IOMUXC_SW_PAD_CTL_PAD_DRAM_SDQS0) & ~0x7000;
> -- 
> 2.6.2
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
