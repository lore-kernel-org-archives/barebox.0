Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLr2u-0006ze-1H
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:49:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TLr2r-0007dv-WA
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:49:33 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TLr2r-0003VH-V4
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:49:33 +0200
Date: Wed, 10 Oct 2012 09:49:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010074933.GM24458@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
 <1349725459-20226-6-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349725459-20226-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 05/10] ARM i.MX25: Enable all needed clocks during startup
To: barebox@lists.infradead.org

On Mon, Oct 08, 2012 at 09:44:14PM +0200, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/clk-imx25.c |   16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
> index 3b9588c..3a141c2 100644
> --- a/arch/arm/mach-imx/clk-imx25.c
> +++ b/arch/arm/mach-imx/clk-imx25.c
> @@ -76,9 +76,19 @@ static int imx25_ccm_probe(struct device_d *dev)
>  
>  	base = dev_request_mem_region(dev, 0);
>  
> -	writel(0x10e88578, base + CCM_CGCR0);
> -	writel(0x0478e1e0, base + CCM_CGCR0);
> -	writel(0x0007c400, base + CCM_CGCR0);

I applied this one to master as I noticed the clk setup was broken, all
values were written to CCM_CGCR0 :(


> +	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
> +			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
> +			(1 << 22) | (1 << 23) | (1 << 24) | (1 << 28),
> +			base + CCM_CGCR0);
> +
> +	writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
> +			(1 << 15) | (1 << 19) | (1 << 20) | (1 << 21) | (1 << 22) |
> +			(1 << 26) | (1 << 29) | (1 << 31),
> +			base + CCM_CGCR1);
> +
> +	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
> +			(1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
> +			base + CCM_CGCR2);
>  
>  	clks[dummy] = clk_fixed("dummy", 0);
>  	clks[osc] = clk_fixed("osc", 24000000);
> -- 
> 1.7.10.4
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
