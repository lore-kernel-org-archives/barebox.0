Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH6Z6-0002O8-WF
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 09:09:06 +0000
Message-ID: <1452157722.21272.8.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 07 Jan 2016 10:08:42 +0100
In-Reply-To: <1451627918-31967-5-git-send-email-andrew.smirnov@gmail.com>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
 <1451627918-31967-5-git-send-email-andrew.smirnov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 5/6] i.MX6: pci: Reconcile imx6_pcie_start_link with the
 kernel code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 31.12.2015, 21:58 -0800 schrieb Andrey Smirnov:
> Reconcile imx6_pcie_start_link with almost identical
> imx6_pcie_establish_link from analogous Linux kernel driver. This
> change is purely cosmetical, but refactoring the code this way
> simplifies implementation comparison.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
>  drivers/pci/pci-imx6.c | 42 ++++++++++++++++++++++++++----------------
>  1 file changed, 26 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
> index 84a937f..713007b 100644
> --- a/drivers/pci/pci-imx6.c
> +++ b/drivers/pci/pci-imx6.c
> @@ -362,13 +362,29 @@ static int imx6_pcie_wait_for_link(struct pcie_port *pp)
>  	}
>  }
> 
> +static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
> +{
> +	uint32_t tmp;
> +	uint64_t start = get_time_ns();
> +
> +	while (!is_timeout(start, SECOND)) {
> +		tmp = readl(pp->dbi_base + PCIE_LINK_WIDTH_SPEED_CONTROL);
> +		/* Test if the speed change finished. */
> +		if (!(tmp & PORT_LOGIC_SPEED_CHANGE))
> +			return 0;
> +	}
> +
> +	dev_err(pp->dev, "Speed change timeout\n");
> +	return -EINVAL;
> +}
> +
> +
>  static int imx6_pcie_start_link(struct pcie_port *pp)
>  {
>  	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
>  	uint32_t tmp;
>  	int ret;
>  	u32 gpr12;
> -	u64 start;
> 
>  	/*
>  	 * Force Gen1 operation when starting the link.  In case the link is
> @@ -403,28 +419,22 @@ static int imx6_pcie_start_link(struct pcie_port *pp)
>  	tmp |= PORT_LOGIC_SPEED_CHANGE;
>  	writel(tmp, pp->dbi_base + PCIE_LINK_WIDTH_SPEED_CONTROL);
> 
> -	start = get_time_ns();
> -	while (!is_timeout(start, SECOND)) {
> -		tmp = readl(pp->dbi_base + PCIE_LINK_WIDTH_SPEED_CONTROL);
> -		/* Test if the speed change finished. */
> -		if (!(tmp & PORT_LOGIC_SPEED_CHANGE))
> -			break;
> +	ret = imx6_pcie_wait_for_speed_change(pp);
> +	if (ret) {
> +		dev_err(pp->dev, "Failed to bring link up!\n");
> +		return ret;
>  	}
> 
>  	/* Make sure link training is finished as well! */
> -	if (tmp & PORT_LOGIC_SPEED_CHANGE)
> -		ret = -EINVAL;
> -	else
> -		ret = imx6_pcie_wait_for_link(pp);
> -
> +	ret = imx6_pcie_wait_for_link(pp);
>  	if (ret) {
>  		dev_err(pp->dev, "Failed to bring link up!\n");
> -	} else {
> -		tmp = readl(pp->dbi_base + PCIE_RC_LCSR);
> -		dev_dbg(pp->dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
> +		return ret;
>  	}
> 
> -	return ret;
> +	tmp = readl(pp->dbi_base + PCIE_RC_LCSR);
> +	dev_dbg(pp->dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
> +	return 0;
>  }
> 
>  static void imx6_pcie_host_init(struct pcie_port *pp)
> --
> 2.5.0
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
