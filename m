Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmtf-0004vQ-ES
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 09:58:52 +0000
Date: Tue, 9 Jul 2019 11:58:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190709095849.xm767fc4obdkacfw@pengutronix.de>
References: <20190708072510.4169-1-o.rempel@pengutronix.de>
 <20190708072510.4169-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708072510.4169-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH 2/2] net: fec_imx: add regulator support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jul 08, 2019 at 09:25:10AM +0200, Oleksij Rempel wrote:
> at least imx28-evk need it to work with devicetree
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/fec_imx.c | 20 ++++++++++++++++++++
>  drivers/net/fec_imx.h |  1 +
>  2 files changed, 21 insertions(+)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 38a29fc83e..10422d2e2d 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -19,6 +19,7 @@
>  #include <linux/err.h>
>  #include <of_net.h>
>  #include <of_gpio.h>
> +#include <regulator.h>
>  #include <gpio.h>
>  #include <linux/iopoll.h>
>  
> @@ -776,6 +777,22 @@ static int fec_probe(struct device_d *dev)
>  	}
>  	fec->regs = IOMEM(iores->start);
>  
> +	fec->reg_phy = regulator_get(dev, "phy");
> +	if (!IS_ERR(fec->reg_phy)) {
> +		ret = regulator_enable(fec->reg_phy);
> +		if (ret) {
> +			dev_err(dev,
> +				"Failed to enable phy regulator: %d\n", ret);
> +			goto disable_clk;
> +		}
> +	} else {
> +		if (PTR_ERR(fec->reg_phy) == -EPROBE_DEFER) {
> +			ret = -EPROBE_DEFER;
> +			goto disable_clk;
> +		}
> +		fec->reg_phy = NULL;
> +	}

NULL is a valid regulator, you can call regulator_enable() on it. With
this the code can be simplified a bit.

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
