Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dShKL-0002nT-Bj
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 10:14:35 +0000
Message-ID: <1499249631.22075.4.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Jul 2017 12:13:51 +0200
In-Reply-To: <20170705093301.7411-1-o.rempel@pengutronix.de>
References: <20170705093301.7411-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 1/2] nvmem: snvs_lpgpr: sync with latest version for
 kernel
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.07.2017, 11:33 +0200 schrieb Oleksij Rempel:
> DT format is ACKed now without "offset" parameter.
> Make sure barebox driver will work with it properly.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/snvs_lpgpr.c | 97 ++++++++++++++++++++++++++++++----------------
>  1 file changed, 64 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
> index 74118a6b75..ac68673bdc 100644
> --- a/drivers/nvmem/snvs_lpgpr.c
> +++ b/drivers/nvmem/snvs_lpgpr.c
> @@ -11,45 +11,71 @@
>  #include <init.h>
>  #include <io.h>
>  #include <of.h>
> +#include <of_device.h>
>  #include <malloc.h>
>  #include <regmap.h>
>  #include <mfd/syscon.h>
>  #include <linux/nvmem-provider.h>
>  
> +#define IMX6Q_SNVS_HPLR		0x00
> +#define IMX6Q_GPR_SL		BIT(5)
> +#define IMX6Q_SNVS_LPLR		0x34
> +#define IMX6Q_GPR_HL		BIT(5)
> +#define IMX6Q_SNVS_LPGPR	0x68
> +
> +struct snvs_lpgpr_cfg {
> +	int offset;
> +	int offset_hplr;
> +	int offset_lplr;
> +};
> +
>  struct snvs_lpgpr_priv {
> -	struct device_d		*dev;
> -	struct regmap		*regmap;
> -	int			offset;
> -	struct nvmem_config	cfg;
> +	struct device_d			*dev;
> +	struct regmap			*regmap;
> +	struct nvmem_config		cfg;
> +	const struct snvs_lpgpr_cfg	*dcfg;
> +};
> +
> +static const struct snvs_lpgpr_cfg snvs_lpgpr_cfg_imx6q = {
> +	.offset		= IMX6Q_SNVS_LPGPR,
> +	.offset_hplr	= IMX6Q_SNVS_HPLR,
> +	.offset_lplr	= IMX6Q_SNVS_LPLR,
>  };
>  
> -static int snvs_lpgpr_write(struct device_d *dev, const int reg,
> -			    const void *_val, int bytes)
> +static int snvs_lpgpr_write(struct device_d *dev, const int offset,
> +			    const void *val, int bytes)
>  {
>  	struct snvs_lpgpr_priv *priv = dev->parent->priv;
> -	const u32 *val = _val;
> -	int i = 0, words = bytes / 4;
> +	const struct snvs_lpgpr_cfg *dcfg = priv->dcfg;
> +	unsigned int lock_reg;
> +	int ret;
>  
> -	while (words--)
> -		regmap_write(priv->regmap, priv->offset + reg + (i++ * 4),
> -			     *val++);
> +	ret = regmap_read(priv->regmap, dcfg->offset_hplr, &lock_reg);
> +	if (ret < 0)
> +		return ret;
>  
> -	return 0;
> +	if (lock_reg & IMX6Q_GPR_SL)
> +		return -EPERM;
> +
> +	ret = regmap_read(priv->regmap, dcfg->offset_lplr, &lock_reg);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (lock_reg & IMX6Q_GPR_HL)
> +		return -EPERM;
> +
> +	return regmap_bulk_write(priv->regmap, dcfg->offset + offset, val,
> +				 bytes);
>  }
>  
> -static int snvs_lpgpr_read(struct device_d *dev, const int reg, void *_val,
> -			int bytes)
> +static int snvs_lpgpr_read(struct device_d *dev, const int offset, void *val,
> +			   int bytes)
>  {
>  	struct snvs_lpgpr_priv *priv = dev->parent->priv;
> -	u32 *val = _val;
> -	int i = 0, words = bytes / 4;
> -
> -	while (words--)
> -		regmap_read(priv->regmap, priv->offset + reg + (i++ * 4),
> -			    val++);
> +	const struct snvs_lpgpr_cfg *dcfg = priv->dcfg;
>  
> -
> -	return 0;
> +	return regmap_bulk_read(priv->regmap, dcfg->offset + offset,
> +				val, bytes);
>  }
>  
>  static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
> @@ -60,10 +86,11 @@ static const struct nvmem_bus snvs_lpgpr_nvmem_bus = {
>  static int snvs_lpgpr_probe(struct device_d *dev)
>  {
>  	struct device_node *node = dev->device_node;
> +	struct device_node *syscon_node;
>  	struct snvs_lpgpr_priv *priv;
>  	struct nvmem_config *cfg;
> +	const struct snvs_lpgpr_cfg *dcfg;

No need for this, assing directly to priv->dcfg instead.

>  	struct nvmem_device *nvmem;
> -	int err;
>  
>  	if (!node)
>  		return -ENOENT;
> @@ -72,15 +99,19 @@ static int snvs_lpgpr_probe(struct device_d *dev)
>  	if (!priv)
>  		return -ENOMEM;
>  
> -	priv->regmap = syscon_node_to_regmap(of_get_parent(node));
> -	if (IS_ERR(priv->regmap)) {
> -		free(priv);
> +	dcfg = of_device_get_match_data(dev);
> +	if (!dcfg)
> +		return -EINVAL;
> +
> +	syscon_node = of_get_parent(node);
> +	if (!syscon_node)
> +		return -ENODEV;
> +
> +	priv->regmap = syscon_node_to_regmap(syscon_node);
> +	if (IS_ERR(priv->regmap))
>  		return PTR_ERR(priv->regmap);
> -	}
>  
> -	err = of_property_read_u32(node, "offset", &priv->offset);
> -	if (err)
> -		return err;
> +	priv->dcfg = dcfg;
>  
>  	cfg = &priv->cfg;
>  	cfg->name = dev_name(dev);
> @@ -102,13 +133,13 @@ static int snvs_lpgpr_probe(struct device_d *dev)
>  }
>  
>  static __maybe_unused struct of_device_id snvs_lpgpr_dt_ids[] = {
> -	{ .compatible = "fsl,imx6sl-snvs-lpgpr", },
> -	{ .compatible = "fsl,imx6q-snvs-lpgpr", },
> +	{ .compatible = "fsl,imx6q-snvs-lpgpr", .data = &snvs_lpgpr_cfg_imx6q },
> +	{ .compatible = "fsl,imx6ul-snvs-lpgpr", .data = &snvs_lpgpr_cfg_imx6q },
>  	{ },
>  };
>  
>  static struct driver_d snvs_lpgpr_driver = {
> -	.name	= "nvmem-snvs-lpgpr",
> +	.name	= "snvs_lpgpr",
>  	.probe	= snvs_lpgpr_probe,
>  	.of_compatible = DRV_OF_COMPAT(snvs_lpgpr_dt_ids),
>  };



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
