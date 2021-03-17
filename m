Delivery-date: Wed, 17 Mar 2021 09:41:18 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMRjy-00044t-Cs
	for lore@lore.pengutronix.de; Wed, 17 Mar 2021 09:41:18 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lMRjn-0002Id-1j
	for lore@pengutronix.de; Wed, 17 Mar 2021 09:41:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0yqX3dYL+INwRqSBeMCUAUqF9R2uodAfXJjKuUzqd0U=; b=b5cLiK77DdXpeZegO2Eg0JYnm
	EVBP4EBSlturhGRGO/xUxERZkxJIk+UNGofll2FPe2R1CGI25A73gFbUU/r4GbgYlu4m6cwvMmQQy
	0to1/FIaAAfmmXHrN4iipQwfCcCfccYusa9oJuolPzz9ZztD6WCOGz/zcvzAhw4nQO3TGxi29TnMd
	q6w181IpoxatDYS9sToiQTLDDKlNV798GUs7BKkL6yjf89MNadz9l3fJ6JISFCJkqELiP/Lpw4xSa
	/dIdy7JAQNmZ9oNxV41KtQ3XiypohKwfvWeMs4bBnlmzzGRRpMP1xhtevx2v6nu5bCGi8y/rfg+SG
	3uFEL+3RA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMRig-002mMO-LC; Wed, 17 Mar 2021 08:39:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMRiY-002mLs-No
 for barebox@lists.infradead.org; Wed, 17 Mar 2021 08:39:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMRiY-00026g-6m; Wed, 17 Mar 2021 09:39:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lMRiX-00079v-TD; Wed, 17 Mar 2021 09:39:49 +0100
Date: Wed, 17 Mar 2021 09:39:49 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210317083949.GX23724@pengutronix.de>
References: <20210316085905.15672-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316085905.15672-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:39:27 up 27 days, 12:03, 84 users,  load average: 0.17, 0.13, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_083951_224240_84D07AAE 
X-CRM114-Status: GOOD (  45.79  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] phy: stm32: sync with upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 16, 2021 at 09:59:03AM +0100, Ahmad Fatoum wrote:
> This imports following Linux patches by Amelie Delaunay
> <amelie.delaunay@foss.st.com>:
> 
>   phy: stm32: manage 1v1 and 1v8 supplies at pll activation/deactivation
>   phy: stm32: replace regulator_bulk* by multiple regulator_*
>   phy: stm32: ensure pll is disabled before phys creation
>   phy: stm32: ensure phy are no more active when removing the driver
>   phy: stm32: rework PLL Lock detection
>   ARM: dts: stm32: add usbphyc vdda1v1 and vdda1v8 supplies on stm32mp151
> 
> This makes barebox compatible to the new device tree binding,
> reduces our differences to the upstream driver and removes
> the power_on, power_off callbacks which are now integrated
> into init/exit.
> 
> The device tree override is necessary, because unlike with Linux,
> barebox regulator core doesn't descend into child nodes to enable
> their regulators, but that's a fix for another day.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Sascha, could this be ordered before the dts sync? That one changes
> the device tree to use the binding implemented here

Did that. Applied, thanks

Sascha

> ---
>  arch/arm/dts/stm32mp151.dtsi    |   5 +
>  drivers/phy/phy-stm32-usbphyc.c | 231 +++++++++++++++++++++-----------
>  2 files changed, 156 insertions(+), 80 deletions(-)
> 
> diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
> index b82227fa206e..f1fd888fa1c6 100644
> --- a/arch/arm/dts/stm32mp151.dtsi
> +++ b/arch/arm/dts/stm32mp151.dtsi
> @@ -66,3 +66,8 @@
>  &vrefbuf {
>  	regulator-name = "vref";
>  };
> +
> +&usbphyc {
> +	vdda1v1-supply = <&reg11>;
> +	vdda1v8-supply = <&reg18>;
> +};
> diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
> index d1e064440e73..a50eae94d459 100644
> --- a/drivers/phy/phy-stm32-usbphyc.c
> +++ b/drivers/phy/phy-stm32-usbphyc.c
> @@ -10,6 +10,7 @@
>  #include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <io.h>
> +#include <linux/iopoll.h>
>  #include <linux/phy/phy.h>
>  #include <linux/reset.h>
>  #include <linux/math64.h>
> @@ -17,6 +18,7 @@
>  
>  #define STM32_USBPHYC_PLL	0x0
>  #define STM32_USBPHYC_MISC	0x8
> +#define STM32_USBPHYC_MONITOR(X) (0x108 + ((X) * 0x100))
>  #define STM32_USBPHYC_VERSION	0x3F4
>  
>  /* STM32_USBPHYC_PLL bit fields */
> @@ -32,19 +34,16 @@
>  /* STM32_USBPHYC_MISC bit fields */
>  #define SWITHOST		BIT(0)
>  
> +/* STM32_USBPHYC_MONITOR bit fields */
> +#define STM32_USBPHYC_MON_OUT	GENMASK(3, 0)
> +#define STM32_USBPHYC_MON_SEL	GENMASK(8, 4)
> +#define STM32_USBPHYC_MON_SEL_LOCKP 0x1F
> +#define STM32_USBPHYC_MON_OUT_LOCKP BIT(3)
> +
>  /* STM32_USBPHYC_VERSION bit fields */
>  #define MINREV			GENMASK(3, 0)
>  #define MAJREV			GENMASK(7, 4)
>  
> -static const char * const supplies_names[] = {
> -	"vdda1v1",	/* 1V1 */
> -	"vdda1v8",	/* 1V8 */
> -};
> -
> -#define NUM_SUPPLIES		ARRAY_SIZE(supplies_names)
> -
> -#define PLL_LOCK_TIME_US	100
> -#define PLL_PWR_DOWN_TIME_US	5
>  #define PLL_FVCO_MHZ		2880
>  #define PLL_INFF_MIN_RATE_HZ	19200000
>  #define PLL_INFF_MAX_RATE_HZ	38400000
> @@ -58,7 +57,6 @@ struct pll_params {
>  struct stm32_usbphyc_phy {
>  	struct phy *phy;
>  	struct stm32_usbphyc *usbphyc;
> -	struct regulator_bulk_data supplies[NUM_SUPPLIES];
>  	u32 index;
>  	bool active;
>  };
> @@ -69,6 +67,9 @@ struct stm32_usbphyc {
>  	struct clk *clk;
>  	struct stm32_usbphyc_phy **phys;
>  	int nphys;
> +	struct regulator *vdda1v1;
> +	struct regulator *vdda1v8;
> +	int n_pll_cons;
>  	int switch_setup;
>  };
>  
> @@ -82,6 +83,41 @@ static inline void stm32_usbphyc_clr_bits(void __iomem *reg, u32 bits)
>  	writel(readl(reg) & ~bits, reg);
>  }
>  
> +static int stm32_usbphyc_regulators_enable(struct stm32_usbphyc *usbphyc)
> +{
> +	int ret;
> +
> +	ret = regulator_enable(usbphyc->vdda1v1);
> +	if (ret)
> +		return ret;
> +
> +	ret = regulator_enable(usbphyc->vdda1v8);
> +	if (ret)
> +		goto vdda1v1_disable;
> +
> +	return 0;
> +
> +vdda1v1_disable:
> +	regulator_disable(usbphyc->vdda1v1);
> +
> +	return ret;
> +}
> +
> +static int stm32_usbphyc_regulators_disable(struct stm32_usbphyc *usbphyc)
> +{
> +	int ret;
> +
> +	ret = regulator_disable(usbphyc->vdda1v8);
> +	if (ret)
> +		return ret;
> +
> +	ret = regulator_disable(usbphyc->vdda1v1);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
>  static void stm32_usbphyc_get_pll_params(u32 clk_rate,
>  					 struct pll_params *pll_params)
>  {
> @@ -141,83 +177,106 @@ static int stm32_usbphyc_pll_init(struct stm32_usbphyc *usbphyc)
>  	return 0;
>  }
>  
> -static bool stm32_usbphyc_has_one_phy_active(struct stm32_usbphyc *usbphyc)
> +static int __stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
>  {
> -	int i;
> +	void __iomem *pll_reg = usbphyc->base + STM32_USBPHYC_PLL;
> +	u32 pllen;
> +
> +	stm32_usbphyc_clr_bits(pll_reg, PLLEN);
> +
> +	/* Wait for minimum width of powerdown pulse (ENABLE = Low) */
> +	if (readl_poll_timeout(pll_reg, pllen, !(pllen & PLLEN), 50))
> +		dev_err(usbphyc->dev, "PLL not reset\n");
>  
> -	for (i = 0; i < usbphyc->nphys; i++)
> -		if (usbphyc->phys[i]->active)
> -			return true;
> +	return stm32_usbphyc_regulators_disable(usbphyc);
> +}
> +
> +static int stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
> +{
> +	/* Check if a phy port is still active or clk48 in use */
> +	if (--usbphyc->n_pll_cons > 0)
> +		return 0;
>  
> -	return false;
> +	return __stm32_usbphyc_pll_disable(usbphyc);
>  }
>  
>  static int stm32_usbphyc_pll_enable(struct stm32_usbphyc *usbphyc)
>  {
>  	void __iomem *pll_reg = usbphyc->base + STM32_USBPHYC_PLL;
> -	bool pllen = (readl(pll_reg) & PLLEN);
> +	bool pllen = readl(pll_reg) & PLLEN;
>  	int ret;
>  
> -	/* Check if one phy port has already configured the pll */
> -	if (pllen && stm32_usbphyc_has_one_phy_active(usbphyc))
> +	/*
> +	 * Check if a phy port or clk48 prepare has configured the pll
> +	 * and ensure the PLL is enabled
> +	 */
> +	if (++usbphyc->n_pll_cons > 1 && pllen)
>  		return 0;
>  
>  	if (pllen) {
> -		stm32_usbphyc_clr_bits(pll_reg, PLLEN);
> -		/* Wait for minimum width of powerdown pulse (ENABLE = Low) */
> -		udelay(PLL_PWR_DOWN_TIME_US);
> +		/*
> +		 * PLL shouldn't be enabled without known consumer,
> +		 * disable it and reinit n_pll_cons
> +		 */
> +		dev_warn(usbphyc->dev, "PLL enabled without known consumers\n");
> +
> +		ret = __stm32_usbphyc_pll_disable(usbphyc);
> +		if (ret)
> +			return ret;
>  	}
>  
> +	ret = stm32_usbphyc_regulators_enable(usbphyc);
> +	if (ret)
> +		goto dec_n_pll_cons;
> +
>  	ret = stm32_usbphyc_pll_init(usbphyc);
>  	if (ret)
> -		return ret;
> +		goto reg_disable;
>  
>  	stm32_usbphyc_set_bits(pll_reg, PLLEN);
>  
> -	/* Wait for maximum lock time */
> -	udelay(PLL_LOCK_TIME_US);
> -
> -	if (!(readl(pll_reg) & PLLEN)) {
> -		dev_err(usbphyc->dev, "PLLEN not set\n");
> -		return -EIO;
> -	}
> -
>  	return 0;
> -}
> -
> -static int stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
> -{
> -	void __iomem *pll_reg = usbphyc->base + STM32_USBPHYC_PLL;
> -
> -	/* Check if other phy port active */
> -	if (stm32_usbphyc_has_one_phy_active(usbphyc))
> -		return 0;
>  
> -	stm32_usbphyc_clr_bits(pll_reg, PLLEN);
> -	/* Wait for minimum width of powerdown pulse (ENABLE = Low) */
> -	udelay(PLL_PWR_DOWN_TIME_US);
> +reg_disable:
> +	stm32_usbphyc_regulators_disable(usbphyc);
>  
> -	if (readl(pll_reg) & PLLEN) {
> -		dev_err(usbphyc->dev, "PLL not reset\n");
> -		return -EIO;
> -	}
> +dec_n_pll_cons:
> +	usbphyc->n_pll_cons--;
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static int stm32_usbphyc_phy_init(struct phy *phy)
>  {
>  	struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
>  	struct stm32_usbphyc *usbphyc = usbphyc_phy->usbphyc;
> +	u32 reg_mon = STM32_USBPHYC_MONITOR(usbphyc_phy->index);
> +	u32 monsel = FIELD_PREP(STM32_USBPHYC_MON_SEL,
> +				STM32_USBPHYC_MON_SEL_LOCKP);
> +	u32 monout;
>  	int ret;
>  
>  	ret = stm32_usbphyc_pll_enable(usbphyc);
>  	if (ret)
>  		return ret;
>  
> +	/* Check that PLL Lock input to PHY is High */
> +	writel(monsel, usbphyc->base + reg_mon);
> +	ret = readl_poll_timeout(usbphyc->base + reg_mon, monout,
> +				 (monout & STM32_USBPHYC_MON_OUT_LOCKP),
> +				 1000);
> +	if (ret) {
> +		dev_err(usbphyc->dev, "PLL Lock input to PHY is Low (val=%x)\n",
> +			(u32)(monout & STM32_USBPHYC_MON_OUT));
> +		goto pll_disable;
> +	}
> +
>  	usbphyc_phy->active = true;
>  
>  	return 0;
> +
> +pll_disable:
> +	return stm32_usbphyc_pll_disable(usbphyc);
>  }
>  
>  static int stm32_usbphyc_phy_exit(struct phy *phy)
> @@ -230,25 +289,9 @@ static int stm32_usbphyc_phy_exit(struct phy *phy)
>  	return stm32_usbphyc_pll_disable(usbphyc);
>  }
>  
> -static int stm32_usbphyc_phy_power_on(struct phy *phy)
> -{
> -	struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
> -
> -	return regulator_bulk_enable(NUM_SUPPLIES, usbphyc_phy->supplies);
> -}
> -
> -static int stm32_usbphyc_phy_power_off(struct phy *phy)
> -{
> -	struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
> -
> -	return regulator_bulk_disable(NUM_SUPPLIES, usbphyc_phy->supplies);
> -}
> -
>  static const struct phy_ops stm32_usbphyc_phy_ops = {
>  	.init = stm32_usbphyc_phy_init,
>  	.exit = stm32_usbphyc_phy_exit,
> -	.power_on = stm32_usbphyc_phy_power_on,
> -	.power_off = stm32_usbphyc_phy_power_off,
>  };
>  
>  static void stm32_usbphyc_switch_setup(struct stm32_usbphyc *usbphyc,
> @@ -311,7 +354,7 @@ static int stm32_usbphyc_probe(struct device_d *dev)
>  	struct device_node *child, *np = dev->device_node;
>  	struct resource *iores;
>  	struct phy_provider *phy_provider;
> -	u32 version;
> +	u32 pllen, version;
>  	int ret, port = 0;
>  
>  	usbphyc = xzalloc(sizeof(*usbphyc));
> @@ -337,17 +380,51 @@ static int stm32_usbphyc_probe(struct device_d *dev)
>  		goto release_region;
>  	}
>  
> -	device_reset_us(dev, 2);
> +	ret = device_reset_us(dev, 2);
> +	if (ret == -EPROBE_DEFER)
> +		goto clk_disable;
> +	if (ret)
> +		stm32_usbphyc_clr_bits(usbphyc->base + STM32_USBPHYC_PLL, PLLEN);
> +
> +	/*
> +	 * Wait for minimum width of powerdown pulse (ENABLE = Low):
> +	 * we have to ensure the PLL is disabled before phys initialization.
> +	 */
> +	if (readl_poll_timeout(usbphyc->base + STM32_USBPHYC_PLL,
> +			       pllen, !(pllen & PLLEN), 50)) {
> +		dev_warn(usbphyc->dev, "PLL not reset\n");
> +		ret = -EPROBE_DEFER;
> +		goto clk_disable;
> +	}
>  
>  	usbphyc->switch_setup = -EINVAL;
>  	usbphyc->nphys = of_get_child_count(np);
> -	usbphyc->phys = xzalloc(usbphyc->nphys * sizeof(*usbphyc->phys));
> +	usbphyc->phys = calloc(usbphyc->nphys, sizeof(*usbphyc->phys));
> +	if (!usbphyc->phys) {
> +		ret = -ENOMEM;
> +		goto clk_disable;
> +	}
> +
> +	usbphyc->vdda1v1 = regulator_get(dev, "vdda1v1");
> +	if (IS_ERR(usbphyc->vdda1v1)) {
> +		ret = PTR_ERR(usbphyc->vdda1v1);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "failed to get vdda1v1 supply: %d\n", ret);
> +		goto clk_disable;
> +	}
> +
> +	usbphyc->vdda1v8 = regulator_get(dev, "vdda1v8");
> +	if (IS_ERR(usbphyc->vdda1v8)) {
> +		ret = PTR_ERR(usbphyc->vdda1v8);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "failed to get vdda1v8 supply: %d\n", ret);
> +		goto clk_disable;
> +	}
>  
>  	for_each_child_of_node(np, child) {
>  		struct stm32_usbphyc_phy *usbphyc_phy;
>  		struct phy *phy;
>  		u32 index;
> -		int i;
>  
>  		phy = phy_create(dev, child, &stm32_usbphyc_phy_ops);
>  		if (IS_ERR(phy)) {
> @@ -360,18 +437,6 @@ static int stm32_usbphyc_probe(struct device_d *dev)
>  
>  		usbphyc_phy = xzalloc(sizeof(*usbphyc_phy));
>  
> -		for (i = 0; i < NUM_SUPPLIES; i++)
> -			usbphyc_phy->supplies[i].supply = supplies_names[i];
> -
> -		ret = regulator_bulk_get(&phy->dev, NUM_SUPPLIES,
> -					 usbphyc_phy->supplies);
> -		if (ret) {
> -			if (ret != -EPROBE_DEFER)
> -				dev_err(&phy->dev,
> -					"failed to get regulators: %d\n", ret);
> -			goto clk_disable;
> -		}
> -
>  		ret = of_property_read_u32(child, "reg", &index);
>  		if (ret || index > usbphyc->nphys) {
>  			dev_err(&phy->dev, "invalid reg property: %d\n", ret);
> @@ -417,6 +482,12 @@ release_region:
>  static void stm32_usbphyc_remove(struct device_d *dev)
>  {
>  	struct stm32_usbphyc *usbphyc = dev->priv;
> +	int port;
> +
> +	/* Ensure PHYs are not active, to allow PLL disabling */
> +	for (port = 0; port < usbphyc->nphys; port++)
> +		if (usbphyc->phys[port]->active)
> +			stm32_usbphyc_phy_exit(usbphyc->phys[port]->phy);
>  
>  	clk_disable(usbphyc->clk);
>  }
> -- 
> 2.29.2
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

