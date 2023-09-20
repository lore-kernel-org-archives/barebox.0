Delivery-date: Wed, 20 Sep 2023 14:05:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivxT-004bG8-LQ
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 14:05:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivxR-0004MD-GG
	for lore@pengutronix.de; Wed, 20 Sep 2023 14:05:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9y6yH1tc6kgBP2Cj1MCnsGtfTEqchGo7TK/N0OKhVLI=; b=39fUooRY0h8+8EQnNtDwqnvoMQ
	afE2WMVof4bTr1vUVyJry9sKtnui/wPlT8rAQDImNIyyFZCr36hUX91ii1Sh0VGMny6z0rkj89Sxd
	RPfCD1pShnaq1ri+GgU2fuVX6UfclJZkFqzEPoVR1DAjfHOsUzpntx6dtUormCC16mt7tMBMq4/5a
	r696UjD6BluTr4fG5Wh6oGbRaLyP4gkUrRap3aMCHa8hq5ZugCp1uhI0zqf1sRrJhqB6JCQrS7rZI
	+kuHoFS75TxgTVxM2N4TXJvMI1/Tew7vMncVDbBHMFH3+HdoGyRM2Nsea98fMxyOU3A7jff0yfFHC
	CzWh5nig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivwJ-002xmW-1l;
	Wed, 20 Sep 2023 12:04:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivwG-002xls-2x
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 12:04:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivwF-00046Y-JU; Wed, 20 Sep 2023 14:04:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivwF-007g0q-5c; Wed, 20 Sep 2023 14:04:15 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivwF-00AC68-3J; Wed, 20 Sep 2023 14:04:15 +0200
Date: Wed, 20 Sep 2023 14:04:15 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920120415.2oetmygjxjup27qy@pengutronix.de>
References: <20230920112252.2782897-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920112252.2782897-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_050416_955950_39B82C45 
X-CRM114-Status: GOOD (  16.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] net: phy: Add phy_(set|clear)_bits_mmd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-20, Sascha Hauer wrote:
> Provide phy_set_bits_mmd() and phy_clear_bits() for easier code adoption
> from the kernel.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  include/linux/phy.h | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index bb728dfaf8..d68ee5665a 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -422,6 +422,34 @@ int phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
>  int phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
>  			   u16 mask, u16 set);
>  
> +/**
> + * phy_set_bits_mmd - Convenience function for setting bits in a register
> + * on MMD
> + * @phydev: the phy_device struct
> + * @devad: the MMD containing register to modify
> + * @regnum: register number to modify
> + * @val: bits to set
> + */
> +static inline int phy_set_bits_mmd(struct phy_device *phydev, int devad,
> +		u32 regnum, u16 val)
> +{
> +	return phy_modify_mmd(phydev, devad, regnum, 0, val);
> +}
> +
> +/**
> + * phy_clear_bits_mmd - Convenience function for clearing bits in a register
> + * on MMD
> + * @phydev: the phy_device struct
> + * @devad: the MMD containing register to modify
> + * @regnum: register number to modify
> + * @val: bits to clear
> + */
> +static inline int phy_clear_bits_mmd(struct phy_device *phydev, int devad,
> +		u32 regnum, u16 val)
> +{
> +	return phy_modify_mmd(phydev, devad, regnum, val, 0);
> +}
> +
>  static inline bool phy_acquired(struct phy_device *phydev)
>  {
>  	return phydev && phydev->bus && slice_acquired(&phydev->bus->slice);
> -- 
> 2.39.2
> 
> 
> 


