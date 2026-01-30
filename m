Delivery-date: Fri, 30 Jan 2026 09:02:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljSM-006uWo-2c
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 09:02:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljSL-0005Xd-Nz
	for lore@pengutronix.de; Fri, 30 Jan 2026 09:02:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PAXGDMNEYMKDGSHhtFBXGk5j9qk6dpkFIRT4OXuvmso=; b=KUjhlJ9wRMf4aOZxmYCAyg6upI
	aNQvYQ9F5tPs2+7fko7rC2Qmm0ekj5OVZC9oHly+QwdTL4zSNsb1gD5DGiI9gMRtACxcveR4Dkmcz
	/XTTaf9kOuFEJ7+rkAgJc1hEiCXgiXpPNqq3JiDx9FDMkR02Tl9myaMS4b0xTyBvcK9O2Qyerllcw
	mW4kQn6VnvKC3QNtlQxEGgiM3LS7C0OGetP+St+HFuUkJVL7luVZTURGSb/I57q7MhfpKQ79EJiUY
	RJaMztG69vQq79As8Q5MEotTEWIJ5HqOYngRL7VCkxvIV8/UuxzTf+jrgdaEkeRPP3jygQCKY+EFe
	lT/VxDyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljRj-00000001B23-2huR;
	Fri, 30 Jan 2026 08:01:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljRg-00000001B0n-1Z5V
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 08:01:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vljRe-0005Nf-Nr; Fri, 30 Jan 2026 09:01:34 +0100
Message-ID: <286e4835-2283-4e58-b7ba-d4b053aa952c@pengutronix.de>
Date: Fri, 30 Jan 2026 09:01:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
 <20260130-barebox-kickpi-v2-9-d27cf94a39b6@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260130-barebox-kickpi-v2-9-d27cf94a39b6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_000136_415084_1F256A99 
X-CRM114-Status: GOOD (  18.83  )
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
Subject: Re: [PATCH v2 09/14] phy: rockchip-inno-usb2: Add support for RK3562
 PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/30/26 06:17, Sohaib Mohamed wrote:
> Add support for the RK3562 PHY variant.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 52 ++++++++++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 9805537c34..6b57522090 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -394,7 +394,8 @@ static int rockchip_usb2phy_probe(struct device *dev)
>  	rphy->dev = dev;
>  
>  	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy") ||
> -	    of_device_is_compatible(np, "rockchip,rk3568-usb2phy"))
> +	    of_device_is_compatible(np, "rockchip,rk3568-usb2phy") ||
> +	    of_device_is_compatible(np, "rockchip,rk3562-usb2phy"))
>  		rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
>  	else
>  		rphy->grf_base = syscon_node_to_regmap(dev->parent->of_node);
> @@ -857,6 +858,54 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
>  	{ /* sentinel */ }
>  };
>  
> +static const struct rockchip_usb2phy_cfg rk3562_phy_cfgs[] = {
> +	{
> +		.reg = 0xff740000,
> +		.num_ports	= 2,
> +		.clkout_ctl	= { 0x0108, 4, 4, 1, 0 },
> +		.port_cfgs	= {
> +			[USB2PHY_PORT_OTG] = {
> +				.phy_sus	= { 0x0100, 8, 0, 0, 0x1d1 },
> +				.bvalid_det_en	= { 0x0110, 2, 2, 0, 1 },
> +				.bvalid_det_st	= { 0x0114, 2, 2, 0, 1 },
> +				.bvalid_det_clr = { 0x0118, 2, 2, 0, 1 },
> +				.idfall_det_en	= { 0x0110, 5, 5, 0, 1 },
> +				.idfall_det_st	= { 0x0114, 5, 5, 0, 1 },
> +				.idfall_det_clr = { 0x0118, 5, 5, 0, 1 },
> +				.idrise_det_en	= { 0x0110, 4, 4, 0, 1 },
> +				.idrise_det_st	= { 0x0114, 4, 4, 0, 1 },
> +				.idrise_det_clr = { 0x0118, 4, 4, 0, 1 },
> +				.ls_det_en	= { 0x0110, 0, 0, 0, 1 },
> +				.ls_det_st	= { 0x0114, 0, 0, 0, 1 },
> +				.ls_det_clr	= { 0x0118, 0, 0, 0, 1 },
> +				.utmi_avalid	= { 0x0120, 10, 10, 0, 1 },
> +				.utmi_bvalid	= { 0x0120, 9, 9, 0, 1 },
> +				.utmi_ls	= { 0x0120, 5, 4, 0, 1 },
> +			},
> +			[USB2PHY_PORT_HOST] = {
> +				.phy_sus	= { 0x0104, 8, 0, 0x1d2, 0x1d1 },
> +				.ls_det_en	= { 0x0110, 1, 1, 0, 1 },
> +				.ls_det_st	= { 0x0114, 1, 1, 0, 1 },
> +				.ls_det_clr	= { 0x0118, 1, 1, 0, 1 },
> +				.utmi_ls	= { 0x0120, 17, 16, 0, 1 },
> +				.utmi_hstdet	= { 0x0120, 19, 19, 0, 1 }
> +			}
> +		},
> +		.chg_det = {
> +			.cp_det		= { 0x0120, 24, 24, 0, 1 },
> +			.dcp_det	= { 0x0120, 23, 23, 0, 1 },
> +			.dp_det		= { 0x0120, 25, 25, 0, 1 },
> +			.idm_sink_en	= { 0x0108, 8, 8, 0, 1 },
> +			.idp_sink_en	= { 0x0108, 7, 7, 0, 1 },
> +			.idp_src_en	= { 0x0108, 9, 9, 0, 1 },
> +			.rdm_pdwn_en	= { 0x0108, 10, 10, 0, 1 },
> +			.vdm_src_en	= { 0x0108, 12, 12, 0, 1 },
> +			.vdp_src_en	= { 0x0108, 11, 11, 0, 1 },
> +		},
> +	},
> +	{ /* sentinel */ }
> +};
> +
>  static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
>  	{
>  		.reg = 0x100,
> @@ -1040,6 +1089,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>  	{ .compatible = "rockchip,rk322x-usb2phy", .data = &rk322x_phy_cfgs },
>  	{ .compatible = "rockchip,rk3308-usb2phy", .data = &rk3328_phy_cfgs },
>  	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
> +	{ .compatible = "rockchip,rk3562-usb2phy", .data = &rk3562_phy_cfgs },
>  	{ .compatible = "rockchip,rk3368-usb2phy", .data = &rk3368_phy_cfgs },
>  	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
>  	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


