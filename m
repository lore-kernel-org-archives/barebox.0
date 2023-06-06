Delivery-date: Tue, 06 Jun 2023 11:55:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TPD-00CtY2-EN
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:55:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6TPB-00031Z-22
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:55:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DRNqtxZT7gAf3DcrfnbCbwmY56pd2ePbIEtc+/Xa5lY=; b=z22mcKEUM1oafOU4rSXzp32aag
	H45eY2Xic40MuSPat/wUFn5Dj1HELQNr3ScT95bV71zy5QLwW8GGOT/DNWYKgiVg5UyrEO8tM0EEn
	6mdVk4uVY6DvJstbAtp6NVyrReqQ+o3Aew8aEISDFke6KRnU0A7EvUZmUtlD3sUNTiNotXK75QiPv
	m/3Y3KaanXlc4548iACwwwiI9EHPLStGhYeSfBwvrB2lnhQxoCFxArRgvdSbRDNN5XI2bfnM6YlX6
	+YGMGnOqRdsofGrizGCPtp92QLGcQ2s8JiAuRLU6sO5pVCj0ye4D6ZYkGU3h04uzbEHrGFcrEABPz
	qvsfe+Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TOB-0015oc-08;
	Tue, 06 Jun 2023 09:54:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6TO8-0015n4-10
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:54:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TO6-0002mv-OE; Tue, 06 Jun 2023 11:54:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6TO6-0004Nw-Gv; Tue, 06 Jun 2023 11:54:02 +0200
Date: Tue, 6 Jun 2023 11:54:02 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230606095402.GB18491@pengutronix.de>
References: <20230605125748.3665121-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605125748.3665121-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_025404_349150_A72E10B8 
X-CRM114-Status: GOOD (  23.01  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] net: phy: add phy_modify_mmd_indirect convenience
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 02:57:47PM +0200, Roland Hieber wrote:
> Add a read-modify-write convenience helper similar to phy_modify() for
> setting single bits in MMD registers.
> 
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
> PATCH v1 -> v2: new in v2
> 
>  drivers/net/phy/phy.c | 23 +++++++++++++++++++++++
>  include/linux/phy.h   |  2 ++
>  2 files changed, 25 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 54dbbca7255a..cbdd5bbfb607 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -882,6 +882,29 @@ void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
>  	phy_write(phydev, MII_MMD_DATA, data);
>  }
>  
> +/**
> + * phy_modify_mmd_indirect - Convenience function for modifying a MMD register
> + * @phydev: phy device
> + * @prtad: MMD Address
> + * @devad: MMD DEVAD
> + * @mask: bit mask of bits to clear
> + * @set: new value of bits set in @mask
> + *
> + */
> +int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
> +				   u16 mask, u16 set)
> +{
> +	int ret;
> +
> +	ret = phy_read_mmd_indirect(phydev, prtad, devad);
> +	if (ret < 0)
> +		return ret;
> +
> +	phy_write_mmd_indirect(phydev, prtad, devad, (ret & ~mask) | set);
> +
> +	return 0;
> +}
> +
>  int genphy_config_init(struct phy_device *phydev)
>  {
>  	int val;
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 5c3ad91d5ecc..509bf72de918 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -409,6 +409,8 @@ int phy_scan_fixups(struct phy_device *phydev);
>  int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad);
>  void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
>  				   u16 data);
> +int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
> +				    u16 mask, u16 set);
>  
>  static inline bool phy_acquired(struct phy_device *phydev)
>  {
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


