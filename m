Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNoP9-00053K-IC
 for barebox@lists.infradead.org; Sun, 22 Sep 2013 18:29:12 +0000
Date: Sun, 22 Sep 2013 20:28:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130922182850.GO30088@pengutronix.de>
References: <1379826744-7499-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379826744-7499-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2 v3] smc91111: add fixup for qemu phy support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 22, 2013 at 07:12:23AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as today qemu does not support phy, it will return always 0x0 to any read
> on the mii bus. So the phy_id is 0 and the link is donw.
> 
> To have the norwork running on versatilpb & other qenu board for the link up
> at 100Mbps.
> 
> Only enable if qemu_fixup is set.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/net/smc91111.c | 30 +++++++++++++++++++++++++++++-
>  include/net/smc91111.h | 14 ++++++++++++++
>  2 files changed, 43 insertions(+), 1 deletion(-)
>  create mode 100644 include/net/smc91111.h
> 
> diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
> index b868cbf..ba81e24 100644
> --- a/drivers/net/smc91111.c
> +++ b/drivers/net/smc91111.c
> @@ -66,6 +66,7 @@
>  #include <clock.h>
>  #include <io.h>
>  #include <linux/phy.h>
> +#include <net/smc91111.h>
>  
>  /*---------------------------------------------------------------
>   .
> @@ -446,6 +447,7 @@ struct smc91c111_priv {
>  	struct mii_bus miibus;
>  	struct accessors a;
>  	void __iomem *base;
> +	int qemu_fixup;
>  };
>  
>  #if (SMC_DEBUG > 2 )
> @@ -882,6 +884,7 @@ static void smc91c111_enable(struct eth_device *edev)
>  static int smc91c111_eth_open(struct eth_device *edev)
>  {
>  	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
> +	int ret;
>  
>  	/* Configure the Receive/Phy Control register */
>  	SMC_SELECT_BANK(priv, 0);
> @@ -889,8 +892,27 @@ static int smc91c111_eth_open(struct eth_device *edev)
>  
>  	smc91c111_enable(edev);
>  
> -	return phy_device_connect(edev, &priv->miibus, 0, NULL,
> +	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
>  				 0, PHY_INTERFACE_MODE_NA);
> +
> +	if (ret)
> +		return ret;
> +
> +	if (priv->qemu_fixup && edev->phydev->phy_id == 0x00000000) {
> +		struct phy_device *dev = edev->phydev;
> +
> +		dev->speed = SPEED_100;
> +		dev->duplex = DUPLEX_FULL;
> +		dev->autoneg = !AUTONEG_ENABLE;
> +		dev->force = 1;
> +		dev->link = 1;
> +
> +		dev_info(edev->parent, "phy with id 0x%08x detected this might be qemu\n",
> +			dev->phy_id);
> +		dev_info(edev->parent, "force link at 100Mpbs\n");
> +	}
> +
> +	return 0;
>  }
>  
>  static int smc91c111_eth_send(struct eth_device *edev, void *packet,
> @@ -1286,6 +1308,12 @@ static int smc91c111_probe(struct device_d *dev)
>  
>  	priv = edev->priv;
>  
> +	if (dev->platform_data) {
> +		struct smc91c111_pdata *pdata = dev->platform_data;
> +
> +		priv->qemu_fixup = pdata->qemu_fixup;
> +	}
> +
>  	priv->a = access_via_32bit;
>  
>  	edev->init = smc91c111_init_dev;
> diff --git a/include/net/smc91111.h b/include/net/smc91111.h
> new file mode 100644
> index 0000000..0b2d49b
> --- /dev/null
> +++ b/include/net/smc91111.h
> @@ -0,0 +1,14 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#ifndef __SMC91111_H__
> +#define __SMC91111_H__
> +
> +struct smc91c111_pdata {
> +	int qemu_fixup;
> +};
> +
> +#endif /* __SMC91111_H__ */
> -- 
> 1.8.4.rc3
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
