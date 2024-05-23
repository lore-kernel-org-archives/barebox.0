Delivery-date: Thu, 23 May 2024 16:47:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9ii-00FHSS-2C
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 16:47:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9ii-0007kh-2h
	for lore@pengutronix.de; Thu, 23 May 2024 16:47:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JKPF9HEL0my5t9ekcMML8cYs7J0hl0PuTUljfXaKdP4=; b=Yiwl4Gqj8WcsWzoChL56G59NGk
	5V2z9KLUV0NK7usuW9dTEcVNj36plGIGO5j7Pr4t1Rfjd1PE8Znq2pz3UxrAyQ/tIyhbPwHbEW3Rd
	AZ5NBVhg+I7cT7Z+9QPOEKbA2HQ0LsPrIhMLGW/miF3aox76ztd5uXOGvHtS5ctl7K+wX4/P3Wq32
	ZxwIBtlQBeM75grOwIetOp6e0gci2fUmD0GbUiUWukLDYmeowMx7GCiPNrKETS7rseYoKNR5FZ3Jv
	86l9/3xGVkd5ODDolY4Exbd2q4q/SXpgkdJWei11vht1MfcQ6F4eny0swCVf808FOJCwixpZBVTXC
	6YWAEL7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9iJ-00000006X8N-0IuU;
	Thu, 23 May 2024 14:46:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9iG-00000006X7n-2lBM
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 14:46:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sA9iD-0007bb-Vn; Thu, 23 May 2024 16:46:34 +0200
Message-ID: <590b3485-8464-40b1-9fc5-a21c87906aa9@pengutronix.de>
Date: Thu, 23 May 2024 16:46:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
 <20240523-feature-dp83867-soft-reset-v1-1-428d15168dfe@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240523-feature-dp83867-soft-reset-v1-1-428d15168dfe@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_074636_735401_10E4BC6D 
X-CRM114-Status: GOOD (  23.88  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] net: phy: allow PHY drivers to implement their own
 software reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23.05.24 16:40, Stefan Kerkmann wrote:
> This is a port of linux commit 9df81dd7583d14862d0cfb673a941b261f3b2112
> ("net: phy: allow PHY drivers to implement their own software reset")
> which implements the ability for phy drivers to implement the own
> non-standard software reset sequence.
> 
> A side effect is that fixups will now applied always even if
> .config_init is undefined. This shouldn't be possible to happen though,
> because phy_driver_register will populate the member with
> genphy_config_init in that case, so the member should never be NULL.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/phy/phy.c | 16 ++++++++++++++--
>  include/linux/phy.h   |  5 +++++
>  2 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index abd78b2c80..a83f183302 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -1108,14 +1108,26 @@ int phy_init_hw(struct phy_device *phydev)
>  	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
>  	int ret;
>  
> -	if (!phydrv || !phydrv->config_init)
> +	if (!phydrv)
>  		return 0;
>  
> +	if (phydrv->soft_reset) {
> +		ret = phydrv->soft_reset(phydev);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
>  	ret = phy_scan_fixups(phydev);
>  	if (ret < 0)
>  		return ret;
>  
> -	return phydrv->config_init(phydev);
> +	if (phydrv->config_init) {
> +		ret = phydrv->config_init(phydev);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
>  }
>  
>  static struct phy_driver genphy_driver = {
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 7da4f94e0e..a6b96a5984 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -275,6 +275,11 @@ struct phy_driver {
>  	const void *driver_data;
>  	bool is_phy;
>  
> +	/**
> +	 * @soft_reset: Called to issue a PHY software reset
> +	 */
> +	int (*soft_reset)(struct phy_device *phydev);
> +
>  	/*
>  	 * Called to initialize the PHY,
>  	 * including after a reset
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



