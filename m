Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjkrp-0007jf-7O
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 07:09:30 +0000
Date: Fri, 22 Nov 2013 08:09:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131122070907.GH24559@pengutronix.de>
References: <1384982546-9111-1-git-send-email-lisovy@gmail.com>
 <1384982546-9111-3-git-send-email-lisovy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384982546-9111-3-git-send-email-lisovy@gmail.com>
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
Subject: Re: [PATCH 2/3] ARM: i.mx53: Parse Reset GPIO pin in FEC driver from
 Devicetree
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On Wed, Nov 20, 2013 at 10:22:25PM +0100, Rostislav Lisovy wrote:
> Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 2f31352..31fb2aa 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -27,6 +27,8 @@
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  #include <of_net.h>
> +#include <of_gpio.h>
> +#include <gpio.h>
>  
>  #include <asm/mmu.h>
>  
> @@ -643,6 +645,7 @@ static int fec_probe(struct device_d *dev)
>  	void *base;
>  	int ret;
>  	enum fec_type type;
> +	int phy_reset;
>  
>  	ret = dev_get_drvdata(dev, (unsigned long *)&type);
>  	if (ret)
> @@ -671,6 +674,22 @@ static int fec_probe(struct device_d *dev)
>  
>  	fec->regs = dev_request_mem_region(dev, 0);
>  
> +	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
> +	if (!gpio_is_valid(phy_reset)) {
> +		dev_info(dev, "'phy-reset' gpio is not valid\n");

Applied this series, but dropped this message. The problem with these
kind of messages is that now nearly all i.MX users start seeing it and
wonder if this is something they have to care about.

Sascha

> +	} else {
> +		ret = gpio_request(phy_reset, "phy-reset");
> +		if (ret)
> +			goto err_free;
> +
> +		ret = gpio_direction_output(phy_reset, 0);
> +		if (ret)
> +			goto err_free;
> +
> +		udelay(10);
> +		gpio_set_value(phy_reset, 1);
> +	}
> +
>  	/* Reset chip. */
>  	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
>  	while(readl(fec->regs + FEC_ECNTRL) & 1) {
> -- 
> 1.7.10.4
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
