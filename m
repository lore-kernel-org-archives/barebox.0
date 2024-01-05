Delivery-date: Fri, 05 Jan 2024 10:22:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLgPc-004ZtV-1t
	for lore@lore.pengutronix.de;
	Fri, 05 Jan 2024 10:22:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLgPb-0000Kz-T6
	for lore@pengutronix.de; Fri, 05 Jan 2024 10:22:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=95uqV83ZSpHv4BOmu+sTERs2cByNX67F4X8wYgfaEQ4=; b=iv3Fom84wsGKKP5vm9QrAUz4nZ
	8PsrWwuJAWlpsdgT/2LRqHwZDZBvYuxXA5YIULa9qEE4ZIkjZohslA0PciJ4z1bbv67iOWS1KJKGP
	U/XRYh7KOoAzCwTQ1ZsJOGy3BxbsfbvNRhLDxotx01h6CovUllQutbWAd693eHOVeNP7P7XGKSIHo
	xDuIBPbs+ZEjZ1m7pui4SK6Oo122h765zujZwf6gvll8SiZS2M1b2ndtSLBf7hJAw6Mf8McKqIWjI
	O7JNGQT2+eEmDS2Wo83dDPFOqbFCfn1AtNf1Wg+VlTfaGgN0+FsYCMNzSkdaU/Bzlcs9p1pdmy83g
	WCxydFxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgOV-00GN77-08;
	Fri, 05 Jan 2024 09:21:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgOR-00GN5s-1e
	for barebox@lists.infradead.org;
	Fri, 05 Jan 2024 09:21:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLgOQ-0008S9-Ay; Fri, 05 Jan 2024 10:21:30 +0100
Message-ID: <4fe5efdc-07b5-4450-bc23-5f541ae8998e@pengutronix.de>
Date: Fri, 5 Jan 2024 10:21:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240104112241.989839-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240104112241.989839-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_012131_553016_B3E6D825 
X-CRM114-Status: GOOD (  17.59  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] net/phy: sync phy_interface_t types with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.01.24 12:22, Sascha Hauer wrote:
> This syncs the phy interface modes with Linux as of linux-6.7-rc7.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/linux/phy.h | 55 +++++++++++++++++++++++++++++++++++++++++----
>  1 file changed, 51 insertions(+), 4 deletions(-)
> 
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index d68ee5665a..7da4f94e0e 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -36,7 +36,46 @@
>  #define PHY_GBIT_FEATURES       (PHY_BASIC_FEATURES | \
>  				 PHY_1000BT_FEATURES)
>  
> -/* Interface Mode definitions */
> +/**
> + * enum phy_interface_t - Interface Mode definitions
> + *
> + * @PHY_INTERFACE_MODE_NA: Not Applicable - don't touch
> + * @PHY_INTERFACE_MODE_INTERNAL: No interface, MAC and PHY combined
> + * @PHY_INTERFACE_MODE_MII: Media-independent interface
> + * @PHY_INTERFACE_MODE_GMII: Gigabit media-independent interface
> + * @PHY_INTERFACE_MODE_SGMII: Serial gigabit media-independent interface
> + * @PHY_INTERFACE_MODE_TBI: Ten Bit Interface
> + * @PHY_INTERFACE_MODE_REVMII: Reverse Media Independent Interface
> + * @PHY_INTERFACE_MODE_RMII: Reduced Media Independent Interface
> + * @PHY_INTERFACE_MODE_REVRMII: Reduced Media Independent Interface in PHY role
> + * @PHY_INTERFACE_MODE_RGMII: Reduced gigabit media-independent interface
> + * @PHY_INTERFACE_MODE_RGMII_ID: RGMII with Internal RX+TX delay
> + * @PHY_INTERFACE_MODE_RGMII_RXID: RGMII with Internal RX delay
> + * @PHY_INTERFACE_MODE_RGMII_TXID: RGMII with Internal RX delay
> + * @PHY_INTERFACE_MODE_RTBI: Reduced TBI
> + * @PHY_INTERFACE_MODE_SMII: Serial MII
> + * @PHY_INTERFACE_MODE_XGMII: 10 gigabit media-independent interface
> + * @PHY_INTERFACE_MODE_XLGMII:40 gigabit media-independent interface
> + * @PHY_INTERFACE_MODE_MOCA: Multimedia over Coax
> + * @PHY_INTERFACE_MODE_PSGMII: Penta SGMII
> + * @PHY_INTERFACE_MODE_QSGMII: Quad SGMII
> + * @PHY_INTERFACE_MODE_TRGMII: Turbo RGMII
> + * @PHY_INTERFACE_MODE_100BASEX: 100 BaseX
> + * @PHY_INTERFACE_MODE_1000BASEX: 1000 BaseX
> + * @PHY_INTERFACE_MODE_2500BASEX: 2500 BaseX
> + * @PHY_INTERFACE_MODE_5GBASER: 5G BaseR
> + * @PHY_INTERFACE_MODE_RXAUI: Reduced XAUI
> + * @PHY_INTERFACE_MODE_XAUI: 10 Gigabit Attachment Unit Interface
> + * @PHY_INTERFACE_MODE_10GBASER: 10G BaseR
> + * @PHY_INTERFACE_MODE_25GBASER: 25G BaseR
> + * @PHY_INTERFACE_MODE_USXGMII:  Universal Serial 10GE MII
> + * @PHY_INTERFACE_MODE_10GKR: 10GBASE-KR - with Clause 73 AN
> + * @PHY_INTERFACE_MODE_QUSGMII: Quad Universal SGMII
> + * @PHY_INTERFACE_MODE_1000BASEKX: 1000Base-KX - with Clause 73 AN
> + * @PHY_INTERFACE_MODE_MAX: Book keeping
> + *
> + * Describes the interface between the MAC and PHY.
> + */
>  typedef enum {
>  	PHY_INTERFACE_MODE_NA,
>  	PHY_INTERFACE_MODE_INTERNAL,
> @@ -54,17 +93,25 @@ typedef enum {
>  	PHY_INTERFACE_MODE_RTBI,
>  	PHY_INTERFACE_MODE_SMII,
>  	PHY_INTERFACE_MODE_XGMII,
> +	PHY_INTERFACE_MODE_XLGMII,
>  	PHY_INTERFACE_MODE_MOCA,
> +	PHY_INTERFACE_MODE_PSGMII,
>  	PHY_INTERFACE_MODE_QSGMII,
>  	PHY_INTERFACE_MODE_TRGMII,
> +	PHY_INTERFACE_MODE_100BASEX,
>  	PHY_INTERFACE_MODE_1000BASEX,
>  	PHY_INTERFACE_MODE_2500BASEX,
> +	PHY_INTERFACE_MODE_5GBASER,
>  	PHY_INTERFACE_MODE_RXAUI,
>  	PHY_INTERFACE_MODE_XAUI,
> -	/* 10GBASE-KR, XFI, SFI - single lane 10G Serdes */
> +	/* 10GBASE-R, XFI, SFI - single lane 10G Serdes */
> +	PHY_INTERFACE_MODE_10GBASER,
> +	PHY_INTERFACE_MODE_25GBASER,
> +	PHY_INTERFACE_MODE_USXGMII,
> +	/* 10GBASE-KR - with Clause 73 AN */
>  	PHY_INTERFACE_MODE_10GKR,
> -	PHY_INTERFACE_MODE_SGMII_2500,
> -	PHY_INTERFACE_MODE_NONE,
> +	PHY_INTERFACE_MODE_QUSGMII,
> +	PHY_INTERFACE_MODE_1000BASEKX,
>  	PHY_INTERFACE_MODE_MAX,
>  } phy_interface_t;
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



