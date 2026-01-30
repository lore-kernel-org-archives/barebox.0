Delivery-date: Fri, 30 Jan 2026 09:05:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljVj-006ubb-0S
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 09:05:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljVh-0006CV-Ou
	for lore@pengutronix.de; Fri, 30 Jan 2026 09:05:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uSToqbjj2FyqarKki4ceQAVJ5XBM6/tUiXrBjSXuLnM=; b=Tx2UsfIFEYaMWqKMStcSANqjjp
	07R6tfyApL+xh57bZWaz/usAmvcUJCQtdfNIVJo5a1E8g2ZwBU3On8+5jZbM5KKPySnjRpsj/069K
	k5/1pTp/szZKf3V5ejxjetyrIZut4CJP8NxFjdPOzqz7mZBsqkQmyNhCLBpWJllpMUgsQmKW0XiCu
	sUTBw8wDqwtvkJNJEHSCNPpneCcpauKoqkcOaoUNiQcHpuQyBn0vV/TQDQIdK42e9khe0Kt67FUUw
	nzkmMmx1Q6CPTpcRpCJbEe4DEunGtQ6uTNx1JE43OKq+P8oht17+qg6RDuO7btB1c1GeEYh2ouOVk
	OepL/VHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljVJ-00000001BUM-45YS;
	Fri, 30 Jan 2026 08:05:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljVH-00000001BU1-3GyY
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 08:05:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vljVG-00067v-5j; Fri, 30 Jan 2026 09:05:18 +0100
Message-ID: <201176a5-7922-4af3-9c94-9efe8f45b1e9@pengutronix.de>
Date: Fri, 30 Jan 2026 09:05:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
 <20260130-barebox-kickpi-v2-14-d27cf94a39b6@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260130-barebox-kickpi-v2-14-d27cf94a39b6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_000519_997840_8CD9DB94 
X-CRM114-Status: GOOD (  22.56  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/14] phy: rockchip: naneng-combphy: Add RK3562
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/30/26 06:17, Sohaib Mohamed wrote:
> Add RK3562 naneng combphy support for PCIe and USB3 modes with SSC,
> CTLE, PLL configuration, and support for 24MHz/25MHz/100MHz reference
> clocks.
> NOTE: this commit is compile-tested Only. I tested only USB 2.0.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 161 +++++++++++++++++++++
>  1 file changed, 161 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index 7951a109f5..4a2e5f11ee 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -402,6 +402,163 @@ static int rockchip_combphy_probe(struct device *dev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> +static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
> +{
> +	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
> +	unsigned long rate;
> +	u32 val;
> +
> +	switch (priv->type) {
> +	case PHY_TYPE_PCIE:
> +		/* Set SSC downward spread spectrum */
> +		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
> +					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
> +					 PHYREG32);
> +
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
> +		break;
> +	case PHY_TYPE_USB3:
> +		/* Set SSC downward spread spectrum */
> +		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
> +					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
> +					 PHYREG32);
> +
> +		/* Enable adaptive CTLE for USB3.0 Rx */
> +		rockchip_combphy_updatel(priv, PHYREG15_CTLE_EN,
> +					 PHYREG15_CTLE_EN, PHYREG15);
> +
> +		/* Set PLL KVCO fine tuning signals */
> +		rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
> +					 BIT(3), PHYREG33);
> +
> +		/* Set PLL LPF R1 to su_trim[10:7]=1001 */
> +		writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
> +
> +		/* Set PLL input clock divider 1/2 */
> +		val = FIELD_PREP(PHYREG6_PLL_DIV_MASK, PHYREG6_PLL_DIV_2);
> +		rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK, val, PHYREG6);
> +
> +		/* Set PLL loop divider */
> +		writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
> +
> +		/* Set PLL KVCO to min and set PLL charge pump current to max */
> +		writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
> +
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_usb, true);
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
> +		break;
> +	default:
> +		dev_err(priv->dev, "incompatible PHY type\n");
> +		return -EINVAL;
> +	}
> +
> +	rate = clk_get_rate(priv->refclk);
> +
> +	switch (rate) {
> +	case REF_CLOCK_24MHz:
> +		if (priv->type == PHY_TYPE_USB3) {
> +			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
> +			val = FIELD_PREP(PHYREG15_SSC_CNT_MASK,
> +					 PHYREG15_SSC_CNT_VALUE);
> +			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
> +						 val, PHYREG15);
> +
> +			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
> +		}
> +		break;
> +	case REF_CLOCK_25MHz:
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
> +		break;
> +	case REF_CLOCK_100MHz:
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
> +		if (priv->type == PHY_TYPE_PCIE) {
> +			/* Gate_tx_pck_sel length select for L1ss support */
> +			rockchip_combphy_updatel(priv, PHYREG13_CKRCV_AMP0,
> +						 PHYREG13_CKRCV_AMP0,
> +						 PHYREG30);
> +			/* PLL KVCO tuning fine */
> +			val = FIELD_PREP(PHYREG33_PLL_KVCO_MASK,
> +					 PHYREG33_PLL_KVCO_VALUE);
> +			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
> +						 val, PHYREG33);
> +
> +			/* Enable controlling random jitter, aka RMJ */
> +			writel(0x4, priv->mmio + PHYREG12);
> +
> +			val = PHYREG6_PLL_DIV_2 << PHYREG6_PLL_DIV_SHIFT;
> +			rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK,
> +						 val, PHYREG6);
> +
> +			writel(0x32, priv->mmio + PHYREG18);
> +			writel(0xf0, priv->mmio + PHYREG11);
> +		}
> +		break;
> +	default:
> +		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
> +		return -EINVAL;
> +	}
> +
> +	if (priv->ext_refclk) {
> +		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
> +		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_100MHz) {
> +			val = PHYREG13_RESISTER_HIGH_Z << PHYREG13_RESISTER_SHIFT;
> +			val |= PHYREG13_CKRCV_AMP0;
> +			rockchip_combphy_updatel(priv, PHYREG13_RESISTER_MASK, val,
> +						 PHYREG13);
> +
> +			val = readl(priv->mmio + PHYREG14);
> +			val |= PHYREG14_CKRCV_AMP1;
> +			writel(val, priv->mmio + PHYREG14);
> +		}
> +	}
> +
> +	if (priv->enable_ssc) {
> +		val = readl(priv->mmio + PHYREG8);
> +		val |= PHYREG8_SSC_EN;
> +		writel(val, priv->mmio + PHYREG8);
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct rockchip_combphy_grfcfg rk3562_combphy_grfcfgs = {
> +	/* pipe-phy-grf */
> +	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
> +	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
> +	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
> +	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
> +	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
> +	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
> +	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
> +	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
> +	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
> +	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
> +	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
> +	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
> +	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
> +	.pipe_sel_usb		= { 0x000c, 14, 13, 0x00, 0x01 },
> +	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
> +	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x1000 },
> +	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x0000 },
> +	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x0101 },
> +	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
> +};
> +
> +static const struct rockchip_combphy_cfg rk3562_combphy_cfgs = {
> +	.num_phys = 2,
> +	.phy_ids = {
> +		0xff750000
> +	},
> +	.grfcfg		= &rk3562_combphy_grfcfgs,
> +	.combphy_cfg	= rk3562_combphy_cfg,
> +};
> +
> +
>  static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>  {
>  	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
> @@ -1055,6 +1212,10 @@ static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
>  };
>  
>  static const struct of_device_id rockchip_combphy_of_match[] = {
> +	{
> +		.compatible = "rockchip,rk3562-naneng-combphy",
> +		.data = &rk3562_combphy_cfgs,
> +	},
>  	{
>  		.compatible = "rockchip,rk3568-naneng-combphy",
>  		.data = &rk3568_combphy_cfgs,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


