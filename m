Delivery-date: Tue, 22 Jun 2021 08:55:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaJm-0005EA-Bv
	for lore@lore.pengutronix.de; Tue, 22 Jun 2021 08:55:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvaJl-0008G3-Eo
	for lore@pengutronix.de; Tue, 22 Jun 2021 08:55:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/Ee+7jBM6EXrWVc1N/fkFn4+6CadZBERMs+S7KTo4E=; b=hXahys8viBG/f3
	5RST9vojosWShyxDPOMdKtDnCH8WUC/9uabwVm4zajvQlQCk7EUewO2MV/vlF40uUB3jJzmYrW9Om
	3pySQsx2gyvVQYlkOaOReOg0Z3mBYRJBbPp1pBonDezMskLoBR37SErZ6HTlYJCvPYBcJFIqibTS4
	3ta5Qv/clXYGlHxwusQ/0DCTpMFl/DLL8ohDlr/DTT+l+Bczbm1c1aIdMD1JJbYl0XXHzo6EU0Vi7
	qHEyOAkm6PMIfZdtk/Y8E0rJyWhmNH6hMxvaIXNgExXJjaIC8+iTCp6Ac6J2ZWlIKtL+YmNFmpOhx
	dPhTyFP+ceSPD3x82Miw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvaIX-005uHm-1t; Tue, 22 Jun 2021 06:54:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvaIS-005uH2-53
 for barebox@lists.infradead.org; Tue, 22 Jun 2021 06:54:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaIQ-00083C-Hl; Tue, 22 Jun 2021 08:54:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvaIQ-0002Mf-7U; Tue, 22 Jun 2021 08:54:06 +0200
Date: Tue, 22 Jun 2021 08:54:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210622065406.GX31738@pengutronix.de>
References: <20210622064711.14058-1-s.hauer@pengutronix.de>
 <20210622064711.14058-6-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622064711.14058-6-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:52:39 up 124 days, 10:16, 106 users,  load average: 0.27, 0.19,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_235408_248489_8561C80B 
X-CRM114-Status: GOOD (  24.22  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/7] fixup! phy: Rockchip: Add driver for usb2phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 22, 2021 at 08:47:10AM +0200, Sascha Hauer wrote:
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)

Grumpf. -ENOCOFFEEBEFORESENDING

Sascha

> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 5c7d6ddb72..bb1a5c747e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -333,8 +333,7 @@ static const struct clk_ops rockchip_usb2phy_clkout_ops = {
>  	.recalc_rate = rockchip_usb2phy_clk480m_recalc_rate,
>  };
>  
> -static int
> -rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
> +static int rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>  {
>  	struct device_node *node = rphy->dev->device_node;
>  	struct clk_init_data init = {};
> @@ -359,7 +358,6 @@ rockchip_usb2phy_clk480m_register(struct rockchip_usb2phy *rphy)
>  
>  	rphy->clk480m_hw.init = &init;
>  
> -	/* register the clock */
>  	rphy->clk480m = clk_register(rphy->dev, &rphy->clk480m_hw);
>  	if (IS_ERR(rphy->clk480m)) {
>  		ret = PTR_ERR(rphy->clk480m);
> @@ -391,16 +389,13 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
>  
>  	rphy->dev = dev;
>  
> -	rphy->grf_base = syscon_regmap_lookup_by_phandle(np,
> -							"rockchip,usbgrf");
> +	rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
>  	if (IS_ERR(rphy->grf_base))
>  		return PTR_ERR(rphy->grf_base);
>  
>  	phy_cfgs = device_get_match_data(dev);
> -	if (!phy_cfgs) {
> -		dev_err(dev, "unable to get phy_cfgs\n");
> +	if (!phy_cfgs)
>  		return -EINVAL;
> -	}
>  
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores)) {
> -- 
> 2.29.2
> 
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

