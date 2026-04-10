Delivery-date: Fri, 10 Apr 2026 09:20:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wB6A1-00AZJN-1P
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 09:20:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wB6A0-0006b4-P2
	for lore@pengutronix.de; Fri, 10 Apr 2026 09:20:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rc4GmXhkKQV1MEd+gg6AK3dwmcYqIC7aOL/3Lx5AJng=; b=JqdaSjH6KvgHyDxAtgy+mJ/dol
	esXmqL51wJzV7iNkqAPmIfTr7N6armblgtmTumlBGwXc9O3NSi1Nm7OmZWYH6pn81qBfX+Uws3FSK
	ciRSzf+Wz+EBso2E1qBzIPbghsVlp67+l3Qzwp7wXxREQdwCt1sNpJ0EO37GpONjODSlVfpVmmKSz
	cJfFpXPxpMSCXEeg6t9cKD+z01eBFRqR08mrwVTpOsaklVgICTnfbhvtkIFsvg+L5kEfBnqhWnOiS
	c7x61Pbr6lZ/Baxp5Y8rYnUCXsKoMPFdHv8eMIdGRypb8+7eF7D/ViTp/pkEPqAgvNwhmhPQdXoLl
	tOeKP0VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB69C-0000000Bj2Y-195P;
	Fri, 10 Apr 2026 07:19:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB699-0000000Bj2C-13zz
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 07:19:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wB697-0006RC-3W; Fri, 10 Apr 2026 09:19:17 +0200
Message-ID: <68ee1a91-eb84-4739-bf54-464b35834768@pengutronix.de>
Date: Fri, 10 Apr 2026 09:19:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Tretter <m.tretter@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260409-socfpga-agilex5-sdhci-v1-1-d1753ac5defa@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260409-socfpga-agilex5-sdhci-v1-1-d1753ac5defa@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_001919_321659_8573C3B6 
X-CRM114-Status: GOOD (  21.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: cadence: fix device tree override of host_caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/9/26 4:15 PM, Michael Tretter wrote:
> The host_caps setting in the device tree shall override the default
> host_caps set by the driver to allow board specific overrides.
> 
> Move the configuration of the driver default host_caps before the call
> to mci_of_parse().
> 
> mci_of_parse() still has to be called in the middle of the mci
> configuration, because f_max may be set in the device tree, but is used
> to calculate f_min.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mci/cadence-sdhci.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mci/cadence-sdhci.c b/drivers/mci/cadence-sdhci.c
> index ccd0f36cb033..b76c04f5e087 100644
> --- a/drivers/mci/cadence-sdhci.c
> +++ b/drivers/mci/cadence-sdhci.c
> @@ -471,13 +471,14 @@ static int sdhci_cdns_probe(struct device *dev)
>  
>  	dev->priv = priv;
>  
> +	priv->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
> +	priv->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
> +	priv->mci.host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
> +
>  	priv->mci.f_max = clk_get_rate(priv->biu_clk);
>  	mci_of_parse(mci);
>  	priv->mci.f_min = priv->mci.f_max / SDHCI_MAX_DIV_SPEC_300;
>  
> -	priv->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
> -	priv->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
> -	priv->mci.host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
>  	if (is_sd4hc) {
>  		ret = sdhci_cdns4_phy_probe(dev, priv);
>  	} else {
> 
> ---
> base-commit: 86269eff785a915cfb96f09d9c7ec81a89d33012
> change-id: 20260409-socfpga-agilex5-sdhci-d4179764d02f
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



