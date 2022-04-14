Delivery-date: Thu, 14 Apr 2022 09:36:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neu1o-001Rtb-9v
	for lore@lore.pengutronix.de; Thu, 14 Apr 2022 09:36:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neu1l-0001Mb-9y
	for lore@pengutronix.de; Thu, 14 Apr 2022 09:36:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G9qcLuUo+3fU85IwGLsk5ntZjX+oUCJxk4sberw6IDw=; b=QhA0nsWUiW1oD+eTdoUvAJjt4s
	zLVBBIfKl43U/Fx9/NTUNTVx1dHS9e73yb/w1vM8pvrSu84qU3/rrIQvDjU2+9ihoHLJCa23Vzj4Z
	EiN+L2D26k3gfydqHn/iFxbFbHWe1HpKoSW1E8Jvp44NUofUhMl4LNnYB5w2C1A2hRtLdTpbWBLro
	odXojHiDT60KGozFzzHoiEXnbyxn1zxw/lLz12VxIFiLe8wakCw9owDUSo1kaUVxraPjDx1+GktLp
	gF4snP2OAsT+1OJCkmMQO+ppKBpkaBN70sYCY1cvmF+EqmklEFiw4NGkv7NQIeKZfVXzUuu5mQW2w
	ssBzXNmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neu0Y-004MnD-Uk; Thu, 14 Apr 2022 07:35:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neu0R-004MkN-Db
 for barebox@lists.infradead.org; Thu, 14 Apr 2022 07:35:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neu0Q-000119-5N; Thu, 14 Apr 2022 09:35:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neu0P-0008UH-Rr; Thu, 14 Apr 2022 09:35:05 +0200
Date: Thu, 14 Apr 2022 09:35:05 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220414073505.GF4012@pengutronix.de>
References: <20220412195241.126535-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220412195241.126535-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:34:57 up 14 days, 20:04, 57 users,  load average: 0.01, 0.07, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_003507_503076_6D61AE78 
X-CRM114-Status: GOOD (  32.63  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] phy: freescale: imx8mq-usb: add support for i.MX8MP
 PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 12, 2022 at 09:52:40PM +0200, Lucas Stach wrote:
> This is a port of the Linux kernel commit 4708ee37826e
> by Li Jun <jun.li@nxp.com>. The USB3 PHY in the i.MX8MP is very
> close to the one in the i.MX8MQ and just needs a different setup
> routine.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 87 ++++++++++++++++++----
>  1 file changed, 74 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> index d3f9c1ba6ecf..fc5fb006b56c 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -2,20 +2,24 @@
>  /* Copyright (c) 2017 NXP. */
>  
>  #include <common.h>
> +#include <driver.h>
> +#include <errno.h>
>  #include <init.h>
>  #include <io.h>
> -#include <of.h>
> -#include <errno.h>
> -#include <driver.h>
> -#include <malloc.h>
> -#include <usb/phy.h>
> -#include <linux/phy/phy.h>
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> +#include <linux/phy/phy.h>
> +#include <malloc.h>
> +#include <of_device.h>
> +#include <of.h>
> +#include <usb/phy.h>
>  
>  
>  #define PHY_CTRL0			0x0
>  #define PHY_CTRL0_REF_SSP_EN		BIT(2)
> +#define PHY_CTRL0_FSEL_MASK		GENMASK(10, 5)
> +#define PHY_CTRL0_FSEL_24M		0x2a
>  
>  #define PHY_CTRL1			0x4
>  #define PHY_CTRL1_RESET			BIT(0)
> @@ -26,6 +30,11 @@
>  
>  #define PHY_CTRL2			0x8
>  #define PHY_CTRL2_TXENABLEN0		BIT(8)
> +#define PHY_CTRL2_OTG_DISABLE		BIT(9)
> +
> +#define PHY_CTRL6			0x18
> +#define PHY_CTRL6_ALT_CLK_EN		BIT(1)
> +#define PHY_CTRL6_ALT_CLK_SEL		BIT(0)
>  
>  struct imx8mq_usb_phy {
>  	struct phy *phy;
> @@ -59,6 +68,44 @@ static int imx8mq_usb_phy_init(struct phy *phy)
>  	return 0;
>  }
>  
> +static int imx8mp_usb_phy_init(struct phy *phy)
> +{
> +	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
> +	u32 value;
> +
> +	/* USB3.0 PHY signal fsel for 24M ref */
> +	value = readl(imx_phy->base + PHY_CTRL0);
> +	value &= ~PHY_CTRL0_FSEL_MASK;
> +	value |= FIELD_PREP(PHY_CTRL0_FSEL_MASK, PHY_CTRL0_FSEL_24M);
> +	writel(value, imx_phy->base + PHY_CTRL0);
> +
> +	/* Disable alt_clk_en and use internal MPLL clocks */
> +	value = readl(imx_phy->base + PHY_CTRL6);
> +	value &= ~(PHY_CTRL6_ALT_CLK_SEL | PHY_CTRL6_ALT_CLK_EN);
> +	writel(value, imx_phy->base + PHY_CTRL6);
> +
> +	value = readl(imx_phy->base + PHY_CTRL1);
> +	value &= ~(PHY_CTRL1_VDATSRCENB0 | PHY_CTRL1_VDATDETENB0);
> +	value |= PHY_CTRL1_RESET | PHY_CTRL1_ATERESET;
> +	writel(value, imx_phy->base + PHY_CTRL1);
> +
> +	value = readl(imx_phy->base + PHY_CTRL0);
> +	value |= PHY_CTRL0_REF_SSP_EN;
> +	writel(value, imx_phy->base + PHY_CTRL0);
> +
> +	value = readl(imx_phy->base + PHY_CTRL2);
> +	value |= PHY_CTRL2_TXENABLEN0 | PHY_CTRL2_OTG_DISABLE;
> +	writel(value, imx_phy->base + PHY_CTRL2);
> +
> +	udelay(10);
> +
> +	value = readl(imx_phy->base + PHY_CTRL1);
> +	value &= ~(PHY_CTRL1_RESET | PHY_CTRL1_ATERESET);
> +	writel(value, imx_phy->base + PHY_CTRL1);
> +
> +	return 0;
> +}
> +
>  static int imx8mq_phy_power_on(struct phy *phy)
>  {
>  	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
> @@ -75,12 +122,26 @@ static int imx8mq_phy_power_off(struct phy *phy)
>  	return 0;
>  }
>  
> -static struct phy_ops imx8mq_usb_phy_ops = {
> +static const struct phy_ops imx8mq_usb_phy_ops = {
>  	.init		= imx8mq_usb_phy_init,
>  	.power_on	= imx8mq_phy_power_on,
>  	.power_off	= imx8mq_phy_power_off,
>  };
>  
> +static const struct phy_ops imx8mp_usb_phy_ops = {
> +	.init		= imx8mp_usb_phy_init,
> +	.power_on	= imx8mq_phy_power_on,
> +	.power_off	= imx8mq_phy_power_off,
> +};
> +
> +static const struct of_device_id imx8mq_usb_phy_of_match[] = {
> +	{.compatible = "fsl,imx8mq-usb-phy",
> +	 .data = &imx8mq_usb_phy_ops,},
> +	{.compatible = "fsl,imx8mp-usb-phy",
> +	 .data = &imx8mp_usb_phy_ops,},
> +	{ }
> +};
> +
>  static struct phy *imx8mq_usb_phy_xlate(struct device_d *dev,
>  					struct of_phandle_args *args)
>  {
> @@ -93,6 +154,7 @@ static int imx8mq_usb_phy_probe(struct device_d *dev)
>  {
>  	struct phy_provider *phy_provider;
>  	struct imx8mq_usb_phy *imx_phy;
> +	const struct phy_ops *phy_ops;
>  
>  	imx_phy = xzalloc(sizeof(*imx_phy));
>  
> @@ -106,7 +168,11 @@ static int imx8mq_usb_phy_probe(struct device_d *dev)
>  	if (IS_ERR(imx_phy->base))
>  		return PTR_ERR(imx_phy->base);
>  
> -	imx_phy->phy = phy_create(dev, NULL, &imx8mq_usb_phy_ops);
> +	phy_ops = of_device_get_match_data(dev);
> +	if (!phy_ops)
> +		return -EINVAL;
> +
> +	imx_phy->phy = phy_create(dev, NULL, phy_ops);
>  	if (IS_ERR(imx_phy->phy))
>  		return PTR_ERR(imx_phy->phy);
>  
> @@ -117,11 +183,6 @@ static int imx8mq_usb_phy_probe(struct device_d *dev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> -static const struct of_device_id imx8mq_usb_phy_of_match[] = {
> -	{.compatible = "fsl,imx8mq-usb-phy",},
> -	{ },
> -};
> -
>  static struct driver_d imx8mq_usb_phy_driver = {
>  	.name	= "imx8mq-usb-phy",
>  	.probe	= imx8mq_usb_phy_probe,
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

