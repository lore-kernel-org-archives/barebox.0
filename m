Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLsCf-0000Xh-I3
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:03:46 +0000
Date: Wed, 10 Oct 2012 11:03:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010090343.GV27665@pengutronix.de>
References: <1349614983-12495-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349614983-12495-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] designware: add clock support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2012 at 03:03:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> allow the driver to request it's clock and enable it
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/designware.c |   20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index ec51825..1cbcd5a 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -32,8 +32,10 @@
>  #include <asm/mmu.h>
>  #include <net/designware.h>
>  #include <linux/phy.h>
> -#include "designware.h"
> +#include <linux/clk.h>
> +#include <linux/err.h>
>  
> +#include "designware.h"
>  
>  struct dw_eth_dev {
>  	struct eth_device netdev;
> @@ -390,6 +392,8 @@ static int dwc_ether_probe(struct device_d *dev)
>  	struct mii_bus *miibus;
>  	void __iomem *base;
>  	struct dwc_ether_platform_data *pdata = dev->platform_data;
> +	struct clk *clk;
> +	int ret;
>  
>  	if (!pdata) {
>  		printf("dwc_ether: no platform_data\n");
> @@ -427,6 +431,20 @@ static int dwc_ether_probe(struct device_d *dev)
>  	miibus->write = dwc_ether_mii_write;
>  	miibus->priv = priv;
>  
> +	clk = clk_get(dev, NULL);
> +	if (IS_ERR(clk)) {
> +		ret = PTR_ERR(clk);
> +		dev_err(dev, "no clk ret = %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_enable(clk);
> +	if (ret) {
> +		dev_err(dev, "can not enable clk ret = %d\n", ret);
> +		clk_put(clk);
> +		return ret;
> +	}

I really doubt it makes sense to request clks in drivers just to enable
it in barebox. The clock ends up being enabled everytime anyway since
the clk enable is done in the probe function and is never disabled
again. This forces every user of this driver to provide the clk API for
absolutely no gain.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
