Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aknkv-0004OI-E1
 for barebox@lists.infradead.org; Tue, 29 Mar 2016 07:08:02 +0000
Date: Tue, 29 Mar 2016 09:07:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160329070737.GB30994@pengutronix.de>
References: <1458546476-20624-1-git-send-email-alexander.stein@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1458546476-20624-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: Re: [PATCH 1/1] ARM i.MX35: Read reset source from CCM
To: Alexander Stein <alexander.stein@systec-electronic.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 21, 2016 at 08:47:56AM +0100, Alexander Stein wrote:
> CCM has reset status bits with more detailed information than the
> watchdog. Set reset source with higher priority.
> 
> Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
> ---
>  arch/arm/mach-imx/clk-imx35.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
> index 2433d73..af6c405 100644
> --- a/arch/arm/mach-imx/clk-imx35.c
> +++ b/arch/arm/mach-imx/clk-imx35.c
> @@ -14,6 +14,7 @@
>  #include <linux/clkdev.h>
>  #include <linux/err.h>
>  #include <mach/imx35-regs.h>
> +#include <reset_source.h>
>  
>  #include "clk.h"
>  
> @@ -95,12 +96,31 @@ static int imx35_ccm_probe(struct device_d *dev)
>  	struct arm_ahb_div *aad;
>  	unsigned char *hsp_div;
>  	void __iomem *base;
> +	u32 reg;
>  
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
>  	base = IOMEM(iores->start);
>  
> +	/* Check reset source */
> +	reg = readl(base + CCM_RCSR);
> +
> +	switch (reg & 0x0F) {
> +	case 0x00:
> +		reset_source_set_priority(RESET_POR, 200);
> +		break;
> +	case 0x02:
> +		reset_source_set_priority(RESET_JTAG, 200);
> +		break;
> +	case 0x04:
> +		reset_source_set_priority(RESET_RST, 200);
> +		break;
> +	case 0x08:
> +		reset_source_set_priority(RESET_WDG, 200);
> +		break;
> +	}
> +
>  	writel(0xffffffff, base + CCM_CGR0);
>  	writel(0xffffffff, base + CCM_CGR1);
>  	writel(0xfbffffff, base + CCM_CGR2);
> -- 
> 2.7.3
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
