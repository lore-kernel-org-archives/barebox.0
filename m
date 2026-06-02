Delivery-date: Tue, 02 Jun 2026 09:36:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJfk-001VaL-0B
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 09:36:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJfi-0003BR-TY
	for lore@pengutronix.de; Tue, 02 Jun 2026 09:36:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MetcHL/A74jqq/837aEDtJ/ZVKQhsOOecBNBaEvyvHU=; b=qXTaRnkBLe7LBSMb1MCfXPJoTf
	8LM+JVCEU92hf8U0rpy8E3orMgTseKGuJi8AiiAoML2TvAKvZ6tZXSIM8fqEWD/XRlmFkqVq90IFc
	H3wrOqrWMSuT0N8mzh3jpcR4Y1CqAnS7rj7xrRXl/RcVgnCik5UIRU2Zgbd/lnOKBMtEwLUDqWbg0
	U3dyeaQI+u0VpIjUnwIvjyiFG57BXM2MPHYlaH6GdEYsMoVAhVz566uUWF9VFcEsRuBYooiQFZ344
	FBJc/270itEQHkvGtpSWn2wxAoucx3N/DQSz7hZ9mL/KSn7QnU79U2Zpb3DxFNLgySMlq7ZSPopdQ
	Hx60LFnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJde-0000000CUOU-1CGp;
	Tue, 02 Jun 2026 07:34:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJda-0000000CUNs-3PSJ
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 07:34:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wUJdZ-0002vC-97; Tue, 02 Jun 2026 09:34:09 +0200
Message-ID: <e86fea6a-c634-4fe4-9ac9-509a574f11af@pengutronix.de>
Date: Tue, 2 Jun 2026 09:34:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com, mfe <mfe@pengutronix.de>,
 Lucas Stach <lst@pengutronix.de>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
 <20260602040953.1060278-3-johannes.schneider@leica-geosystems.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260602040953.1060278-3-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_003411_186836_7F1A65AE 
X-CRM114-Status: GOOD (  38.54  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/6] pmdomain: imx8mp-blk-ctrl: add media blk-ctrl power
 domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 6/2/26 6:09 AM, Johannes Schneider wrote:
> From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> 
> The i.MX8MP LCDIF2 controller lives inside the MEDIAMIX power domain,
> which has its own blk-ctrl to gate clocks and control resets.  Without
> enabling the MEDIAMIX bus clock and de-asserting the block-level resets
> before the first register access, any read or write to LCDIF2 registers
> causes an AXI bus hang and barebox locks up on startup.
> 
> Extend the existing blk-ctrl driver (currently HSIO-only) to support the
> media blk-ctrl (fsl,imx8mp-media-blk-ctrl) by:
> - Separating the HSIO ADB handshake into the HSIO-specific power_on hook
>   so the generic path is clean for other blk-ctrls without such handshake.
> - Adding null checks on bc->power_on/off to allow instances without custom
>   callbacks.
> - Increasing DOMAIN_MAX_CLKS from 2 to 3 (LCDIF2 needs disp2, axi, apb).
> - Adding media blk-ctrl probe that enables the MEDIAMIX bus clock and
>   de-asserts LCDIF2 clocks/resets, mirroring what the Linux kernel does
>   in imx8mp_media_power_notifier.
> 
> The media_blk_ctrl DTS node retains its syscon compatible so that
> syscon_node_to_regmap() continues to work for the LDB bridge sub-device.
> 
> Assisted-by: Claude:claude-sonnet-4-6
> Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> ---
>  drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 117 +++++++++++++++++++++++--
>  1 file changed, 108 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
> index 3d302cbde7..87e0114c22 100644
> --- a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
> +++ b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
> @@ -17,6 +17,7 @@
>  
>  #include <dt-bindings/power/imx8mp-power.h>
>  
> +/* HSIO blk-ctrl registers */
>  #define GPR_REG0		0x0
>  #define  PCIE_CLOCK_MODULE_EN	BIT(0)
>  #define  USB_CLOCK_MODULE_EN	BIT(1)
> @@ -32,6 +33,11 @@
>  #define  PLL_CKE		BIT(17)
>  #define  PLL_RST		BIT(31)
>  
> +/* Media blk-ctrl registers */
> +#define LCDIF_ARCACHE_CTRL	0x40
> +#define  LCDIF_1_RD_HURRY	GENMASK(6, 4)
> +#define  LCDIF_0_RD_HURRY	GENMASK(2, 0)
> +
>  struct imx8mp_blk_ctrl_domain;
>  
>  struct imx8mp_blk_ctrl {
> @@ -51,7 +57,7 @@ struct imx8mp_blk_ctrl_domain_data {
>  	const char *gpc_name;
>  };
>  
> -#define DOMAIN_MAX_CLKS 2
> +#define DOMAIN_MAX_CLKS 3
>  
>  struct imx8mp_blk_ctrl_domain {
>  	struct generic_pm_domain genpd;
> @@ -155,9 +161,14 @@ static int imx8mp_hsio_blk_ctrl_probe(struct imx8mp_blk_ctrl *bc)
>  	return of_clk_add_hw_provider(dev_of_node(bc->dev), of_clk_hw_simple_get, hw);
>  }
>  
> +static int imx8mp_hsio_propagate_adb_handshake(struct imx8mp_blk_ctrl *bc);
> +
>  static void imx8mp_hsio_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
>  					  struct imx8mp_blk_ctrl_domain *domain)
>  {
> +	/* propagate ADB handshake once before any HSIO sub-domain is enabled */
> +	imx8mp_hsio_propagate_adb_handshake(bc);

This used to happen _before_ enabling upstream clocks, but now it
happens _after_. The commit message doesn't explain why this would be ok.

Maybe Marco or Lucas have a thought on this?

Cheers,
Ahmad

> +
>  	switch (domain->id) {
>  	case IMX8MP_HSIOBLK_PD_USB:
>  		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
> @@ -259,6 +270,66 @@ static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
>  	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
>  };
>  
> +/* Media blk-ctrl */
> +
> +/*
> + * MEDIAMIX BLK_CTRL register offsets (from i.MX 8M Plus RM, section 13).
> + * Bit SET = reset de-asserted / clock enabled.
> + */
> +#define BLK_SFT_RSTN		0x00
> +#define BLK_CLK_EN		0x04
> +
> +/* BIT(8): bus/APB clock and reset for the MEDIAMIX interconnect */
> +#define MEDIAMIX_BUS_CLK_RST	BIT(8)
> +
> +/*
> + * LCDIF2 (mediablk-lcdif-2) bits in BLK_SFT_RSTN and BLK_CLK_EN:
> + *   BIT(11): lcdif2-axi, BIT(12): lcdif2-apb, BIT(24): disp2 pixel clock
> + * (from Linux kernel imx8m-blk-ctrl.c IMX8MP_MEDIABLK_PD_LCDIF_2)
> + */
> +#define LCDIF2_CLK_RST_MASK	(BIT(11) | BIT(12) | BIT(24))
> +
> +static int imx8mp_media_blk_ctrl_probe(struct imx8mp_blk_ctrl *bc)
> +{
> +	/* Set panic read hurry level for LCDIF interfaces to 7 */
> +	regmap_update_bits(bc->regmap, LCDIF_ARCACHE_CTRL,
> +			   FIELD_PREP(LCDIF_1_RD_HURRY, 7) |
> +			   FIELD_PREP(LCDIF_0_RD_HURRY, 7),
> +			   FIELD_PREP(LCDIF_1_RD_HURRY, 7) |
> +			   FIELD_PREP(LCDIF_0_RD_HURRY, 7));
> +
> +	/*
> +	 * Enable the MEDIAMIX bus clock and de-assert its reset so the
> +	 * internal AHB/APB fabric is up before sub-module access.
> +	 * (Mirrors Linux kernel imx8mp_media_power_notifier BIT(8) writes.)
> +	 */
> +	regmap_set_bits(bc->regmap, BLK_CLK_EN,  MEDIAMIX_BUS_CLK_RST);
> +	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, MEDIAMIX_BUS_CLK_RST);
> +	udelay(5); /* wait for ADB handshake, as Linux kernel does */
> +
> +	/*
> +	 * Enable LCDIF2 clocks and de-assert its reset within MEDIAMIX.
> +	 * Without this, LCDIF2 registers are inaccessible (AXI bus hangs).
> +	 * (Mirrors Linux kernel imx8mp_blk_ctrl_power_on for LCDIF_2 domain.)
> +	 */
> +	regmap_set_bits(bc->regmap, BLK_CLK_EN,  LCDIF2_CLK_RST_MASK);
> +	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, LCDIF2_CLK_RST_MASK);
> +
> +	return 0;
> +}
> +
> +static const struct imx8mp_blk_ctrl_data imx8mp_media_blk_ctl_dev_data = {
> +	.max_reg = 0x138,
> +	.probe = imx8mp_media_blk_ctrl_probe,
> +	/*
> +	 * num_domains intentionally omitted (= 0): skip GPC power domain
> +	 * management for the media blk-ctrl.  MEDIAMIX is already powered
> +	 * on by the boot ROM/SPL, so no GPC sequencing is needed in the
> +	 * bootloader.  With barebox deep-probe enabled, lcdif2
> +	 * silently ignores the missing genpd provider and probes directly.
> +	 */
> +};
> +
>  static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
>  {
>  	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
> @@ -273,12 +344,6 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
>  		return ret;
>  	}
>  
> -	ret = imx8mp_hsio_propagate_adb_handshake(bc);
> -	if (ret) {
> -		dev_err(bc->dev, "failed to propagate adb handshake\n");
> -		goto bus_put;
> -	}
> -
>  	/* enable upstream clocks */
>  	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
>  	if (ret) {
> @@ -287,7 +352,8 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
>  	}
>  
>  	/* domain specific blk-ctrl manipulation */
> -	bc->power_on(bc, domain);
> +	if (bc->power_on)
> +		bc->power_on(bc, domain);
>  
>  	/* power up upstream GPC domain */
>  	ret = pm_runtime_resume_and_get_genpd(domain->power_dev);
> @@ -322,7 +388,8 @@ static int imx8mp_blk_ctrl_power_off(struct generic_pm_domain *genpd)
>  	}
>  
>  	/* domain specific blk-ctrl manipulation */
> -	bc->power_off(bc, domain);
> +	if (bc->power_off)
> +		bc->power_off(bc, domain);
>  
>  	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
>  
> @@ -380,6 +447,35 @@ static int imx8mp_blk_ctrl_probe(struct device *dev)
>  	if (!bc->onecell_data.domains)
>  		return -ENOMEM;
>  
> +	/*
> +	 * Skip GPC power domain management when num_domains == 0.
> +	 * This is used for blk-ctrl instances (e.g. media) where we only
> +	 * want the regmap/probe side-effects and not genpd provider
> +	 * registration, which could trigger GPC power-on sequences at
> +	 * unexpected times during boot.
> +	 */
> +	if (num_domains == 0) {
> +		/*
> +		 * For the media blk-ctrl we skip genpd provider registration to
> +		 * avoid triggering full GPC power sequencing for every consumer.
> +		 * However we still need the MEDIAMIX domain to be powered before
> +		 * accessing any of its registers (including blk-ctrl itself).
> +		 * Power it on via the "bus" domain and keep it on.
> +		 */
> +		bc->bus_power_dev = dev_pm_domain_attach_by_name(dev, "bus");
> +		if (!IS_ERR_OR_NULL(bc->bus_power_dev)) {
> +			ret = pm_runtime_resume_and_get_genpd(bc->bus_power_dev);
> +			if (ret < 0)
> +				dev_warn(dev, "failed to power on MEDIAMIX (ignoring): %d\n", ret);
> +		}
> +		if (bc_data->probe) {
> +			ret = bc_data->probe(bc);
> +			if (ret)
> +				return ret;
> +		}
> +		return 0;
> +	}
> +
>  	bc->bus_power_dev = dev_pm_domain_attach_by_name(dev, "bus");
>  	if (IS_ERR(bc->bus_power_dev))
>  		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
> @@ -461,6 +557,9 @@ static const struct of_device_id imx8mp_blk_ctrl_of_match[] = {
>  	{
>  		.compatible = "fsl,imx8mp-hsio-blk-ctrl",
>  		.data = &imx8mp_hsio_blk_ctl_dev_data,
> +	}, {
> +		.compatible = "fsl,imx8mp-media-blk-ctrl",
> +		.data = &imx8mp_media_blk_ctl_dev_data,
>  	}, {
>  		/* Sentinel */
>  	}

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



