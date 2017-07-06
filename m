Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dT7Wv-0000iK-RZ
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 14:13:19 +0000
Message-ID: <1499350371.23968.4.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 06 Jul 2017 16:12:51 +0200
In-Reply-To: <20170706140042.5029-3-o.rempel@pengutronix.de>
References: <20170706140042.5029-1-o.rempel@pengutronix.de>
 <20170706140042.5029-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 3/3] regulator: pfuze: provide power over standby
 handler
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 06.07.2017, 16:00 +0200 schrieb Oleksij Rempel:
> This patch is providing an optional power off handler
> which will configure standby state of the PMIC to disable all power lines.
> 
> In my power consumption test on RIoTBoard, I got the following results:
> power off without this patch:   320 mA
> power off with this patch:      2   mA
> suspend to ram:                 40  mA

You probably haven't measured suspend to ram with barebox, right? ;)

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/regulator/pfuze.c | 87 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
> index 2a5fb715ce..94fa03ff15 100644
> --- a/drivers/regulator/pfuze.c
> +++ b/drivers/regulator/pfuze.c
> @@ -26,10 +26,53 @@
>  
>  #include <i2c/i2c.h>
>  
> +#include <poweroff.h>
> +#include <mach/imx6.h>
> +
This introduces a build dependency of the PFUZE driver to the i.MX6
architecture. While I think this is fine, as it keeps things
straight-forward and the PFUZE is unlikely to be used on other SoCs,
this needs at least a "depends on ARCH_IMX6" in the Kconfig entry.

Regards,
Lucas

>  #define DRIVERNAME		"pfuze"
>  
>  #define MC13XXX_NUMREGS		0x3f
>  
> +#define PFUZE_NUMREGS		128
> +#define PFUZE100_VOL_OFFSET	0
> +#define PFUZE100_STANDBY_OFFSET	1
> +#define PFUZE100_MODE_OFFSET	3
> +#define PFUZE100_CONF_OFFSET	4
> +
> +#define PFUZE100_DEVICEID	0x0
> +#define PFUZE100_REVID		0x3
> +#define PFUZE100_FABID		0x4
> +
> +#define PFUZE100_COINVOL	0x1a
> +#define PFUZE100_SW1ABVOL	0x20
> +#define PFUZE100_SW1ABMODE	0x23
> +#define PFUZE100_SW1CVOL	0x2e
> +#define PFUZE100_SW1CMODE	0x31
> +#define PFUZE100_SW2VOL		0x35
> +#define PFUZE100_SW2MODE	0x38
> +#define PFUZE100_SW3AVOL	0x3c
> +#define PFUZE100_SW3AMODE	0x3f
> +#define PFUZE100_SW3BVOL	0x43
> +#define PFUZE100_SW3BMODE	0x46
> +#define PFUZE100_SW4VOL		0x4a
> +#define PFUZE100_SW4MODE	0x4d
> +#define PFUZE100_SWBSTCON1	0x66
> +#define PFUZE100_VREFDDRCON	0x6a
> +#define PFUZE100_VSNVSVOL	0x6b
> +#define PFUZE100_VGEN1VOL	0x6c
> +#define PFUZE100_VGEN2VOL	0x6d
> +#define PFUZE100_VGEN3VOL	0x6e
> +#define PFUZE100_VGEN4VOL	0x6f
> +#define PFUZE100_VGEN5VOL	0x70
> +#define PFUZE100_VGEN6VOL	0x71
> +
> +#define PFUZE100_SWxMODE_MASK	0xf
> +#define PFUZE100_SWxMODE_APS_APS	0x8
> +#define PFUZE100_SWxMODE_APS_OFF	0x4
> +
> +#define PFUZE100_VGENxLPWR	BIT(6)
> +#define PFUZE100_VGENxSTBY	BIT(5)
> +
>  struct pfuze {
>  	struct device_d			*dev;
>  	struct regmap			*map;
> @@ -85,6 +128,46 @@ static int pfuze_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
>  	return ret == 1 ? 0 : ret;
>  }
>  
> +static void pfuze_power_off_prepare(struct poweroff_handler *handler)
> +{
> +	dev_info(pfuze_dev->dev, "Configure standy mode for power off");
> +
> +	/* Switch from default mode: APS/APS to APS/Off */
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_SW1ABMODE,
> +			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_SW1CMODE,
> +			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_SW2MODE,
> +			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_SW3AMODE,
> +			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_SW3BMODE,
> +			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_SW4MODE,
> +			  PFUZE100_SWxMODE_MASK, PFUZE100_SWxMODE_APS_OFF);
> +
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN1VOL,
> +			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
> +			  PFUZE100_VGENxSTBY);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN2VOL,
> +			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
> +			  PFUZE100_VGENxSTBY);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN3VOL,
> +			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
> +			  PFUZE100_VGENxSTBY);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN4VOL,
> +			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
> +			  PFUZE100_VGENxSTBY);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN5VOL,
> +			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
> +			  PFUZE100_VGENxSTBY);
> +	regmap_write_bits(pfuze_dev->map, PFUZE100_VGEN6VOL,
> +			  PFUZE100_VGENxLPWR | PFUZE100_VGENxSTBY,
> +			  PFUZE100_VGENxSTBY);
> +
> +	imx6_pm_stby_poweroff();
> +}
> +
>  static struct regmap_bus regmap_pfuze_i2c_bus = {
>  	.reg_write = pfuze_i2c_reg_write,
>  	.reg_read = pfuze_i2c_reg_read,
> @@ -122,6 +205,10 @@ static int __init pfuze_probe(struct device_d *dev)
>  	if (pfuze_init_callback)
>  		pfuze_init_callback(pfuze_dev->map);
>  
> +	if (of_property_read_bool(dev->device_node,
> +				  "fsl,pmic-stby-poweroff"))
> +		return poweroff_handler_register_fn(pfuze_power_off_prepare);
> +
>  	return 0;
>  }
>  



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
