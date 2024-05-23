Delivery-date: Thu, 23 May 2024 16:47:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9jH-00FHTz-2K
	for lore@lore.pengutronix.de;
	Thu, 23 May 2024 16:47:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sA9jH-0007wj-4E
	for lore@pengutronix.de; Thu, 23 May 2024 16:47:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dZl2ELAEPAis8lIcSw4NaXx8vlODOT1JwQq7Uqx3jJY=; b=i4yjxmzvdl/ykMO/YP2DnSLtW5
	MJe+aJFBx4kCTHk0TO4UXALyt4jnme+xw0JmX+Sh+QTMZQ2LR99D+1TdRuJl1ldNtrD3NijfeMvsP
	Zq02iKwLESSh4udVGxBdnSzPXfqs5IugrGM7/oFMI3bQR9pv345eVw3b8qlu8yAGrI2/UbkS3Hf2X
	0csRPb6sgGp1+ovrt5sVDDYWVhLjmM4ad7JldoKFG460W35LiF4lLKMCaaJdpEpB5b6PG1Oqo+/vK
	uwMlC4A6qJxFaxx1sZCgExdO4jzaXZ48VZ4y4sV967inyf2FiIUVxMJmEGN+q5k33O7n2EPTMyRJN
	8zwmLUeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9iu-00000006XCx-2Bs7;
	Thu, 23 May 2024 14:47:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA9ir-00000006XCU-2Glg
	for barebox@lists.infradead.org;
	Thu, 23 May 2024 14:47:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sA9ip-0007mY-Rb; Thu, 23 May 2024 16:47:11 +0200
Message-ID: <568dd431-3373-4cf9-bba3-d76afc3a14ce@pengutronix.de>
Date: Thu, 23 May 2024 16:47:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240523-feature-dp83867-soft-reset-v1-0-428d15168dfe@pengutronix.de>
 <20240523-feature-dp83867-soft-reset-v1-2-428d15168dfe@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240523-feature-dp83867-soft-reset-v1-2-428d15168dfe@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_074713_676186_2009CCDF 
X-CRM114-Status: GOOD (  19.64  )
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
Subject: Re: [PATCH 2/3] net: phy: document core PHY structures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23.05.24 16:40, Stefan Kerkmann wrote:
> This is a port of linux commit 4069a572d423b73919ae40a500dfc4b10f8a6f32
> ("net: phy: Document core PHY structures"), that copies the Doxygen
> comments for the PHY structure where applicable.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/linux/phy.h | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index a6b96a5984..ef25dec033 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -280,36 +280,38 @@ struct phy_driver {
>  	 */
>  	int (*soft_reset)(struct phy_device *phydev);
>  
> -	/*
> -	 * Called to initialize the PHY,
> +	/**
> +	 * @config_init: Called to initialize the PHY,
>  	 * including after a reset
>  	 */
>  	int (*config_init)(struct phy_device *phydev);
>  
> -	/*
> -	 * Called during discovery.  Used to set
> +	/**
> +	 * @probe: Called during discovery.  Used to set
>  	 * up device-specific structures, if any
>  	 */
>  	int (*probe)(struct phy_device *phydev);
>  
> -	/*
> -	 * Configures the advertisement and resets
> +	/**
> +	 * @config_aneg: Configures the advertisement and resets
>  	 * autonegotiation if phydev->autoneg is on,
>  	 * forces the speed to the current settings in phydev
>  	 * if phydev->autoneg is off
>  	 */
>  	int (*config_aneg)(struct phy_device *phydev);
>  
> -	/* Determines the auto negotiation result */
> +	/** @aneg_done: Determines the auto negotiation result */
>  	int (*aneg_done)(struct phy_device *phydev);
>  
> -	/* Determines the negotiated speed and duplex */
> +	/** @read_status: Determines the negotiated speed and duplex */
>  	int (*read_status)(struct phy_device *phydev);
>  
> -	/* Clears up any memory if needed */
> +	/** @remove: Clears up any memory if needed */
>  	void (*remove)(struct phy_device *phydev);
>  
> +	/** @read_page: Return the current PHY register page number */
>  	int (*read_page)(struct phy_device *phydev);
> +	/** @write_page: Set the current PHY register page number */
>  	int (*write_page)(struct phy_device *phydev, int page);
>  
>  	struct driver	 drv;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



