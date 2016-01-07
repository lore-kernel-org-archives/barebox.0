Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH6Un-00073t-G1
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 09:04:38 +0000
Message-ID: <1452157454.21272.7.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 07 Jan 2016 10:04:14 +0100
In-Reply-To: <1451627918-31967-4-git-send-email-andrew.smirnov@gmail.com>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
 <1451627918-31967-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 4/6] i.MX6: pci: Replace magic number with a named constant
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 31.12.2015, 21:58 -0800 schrieb Andrey Smirnov:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/pci/pci-imx6.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
> index eaa5f0e..84a937f 100644
> --- a/drivers/pci/pci-imx6.c
> +++ b/drivers/pci/pci-imx6.c
> @@ -51,6 +51,8 @@ struct imx6_pcie {
>  #define PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2	0x2
>  #define PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK	0xf
> 
> +#define PCIE_RC_LCSR				0x80
> +
>  /* PCIe Port Logic registers (memory-mapped) */
>  #define PL_OFFSET 0x700
>  #define PCIE_PL_PFLR (PL_OFFSET + 0x08)
> @@ -418,7 +420,7 @@ static int imx6_pcie_start_link(struct pcie_port *pp)
>  	if (ret) {
>  		dev_err(pp->dev, "Failed to bring link up!\n");
>  	} else {
> -		tmp = readl(pp->dbi_base + 0x80);
> +		tmp = readl(pp->dbi_base + PCIE_RC_LCSR);
>  		dev_dbg(pp->dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
>  	}
> 
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
