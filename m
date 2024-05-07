Delivery-date: Tue, 07 May 2024 16:12:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4LYa-000zoX-1B
	for lore@lore.pengutronix.de;
	Tue, 07 May 2024 16:12:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s4LYY-0008Jx-BT
	for lore@pengutronix.de; Tue, 07 May 2024 16:12:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fJOYiqcSMe6FF99Xq7PvGPJLszxV99ZAfLzPBjxQnNA=; b=19vY5D1Bijwv6XPczx9fjFgmbU
	KwQdT06YdBLz1mW4UYcKA/VbxMdrTDIzheOVszm65uTafW634GiscEoHlpZZvggFbBu+jLbtsb7LW
	dELJ+Ju1qVIPXFtSih+EWDNsOwnibpPorzE/wpxcDl/yGjFQHPyCFUzjfG9/iwuelbZ62IO17PozE
	O15MGeQsAbCo/QNqAiKRq/8ezduzcAaOenE18Oq4NkwDZuD4mNSnKzuJNSPaMxO28f/agEzat7VqG
	hIBFgchSk3KATG0t+NPTNaAoymzMj/94sBtK7XUve8ZiPgz52ZwK8F8DoGmmVEScYLyHLrHYuQ/cG
	iPuSOFmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4LXx-0000000BPg0-1g0B;
	Tue, 07 May 2024 14:11:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4LXu-0000000BPdV-12dv
	for barebox@lists.infradead.org;
	Tue, 07 May 2024 14:11:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1s4LXr-0007xc-Gs; Tue, 07 May 2024 16:11:51 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1s4LXr-0006uP-3d; Tue, 07 May 2024 16:11:51 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1s4LXr-00GRmQ-06;
	Tue, 07 May 2024 16:11:51 +0200
Date: Tue, 7 May 2024 16:11:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zjo2p5lZd6W6d-Lh@pengutronix.de>
References: <20240507133952.3716733-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240507133952.3716733-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_071154_366763_C24BD0B1 
X-CRM114-Status: GOOD (  23.43  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: dp83867: reset PHY on probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, May 07, 2024 at 03:39:52PM +0200, Roland Hieber wrote:
> Some PHY variants set the DP83867_PHYCR_FORCE_LINK_GOOD bit by default,
> which should be unset if we want to rely on autonegotiation. Port
> dp83867_phy_reset() from Linux v6.9-rc7, which already does all
> necessary things, and call it in dp83867_probe(). (Keep the functions in
> the original order so that the diff stays clean.)
> 
> Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
>  drivers/net/phy/dp83867.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
> index 5dc5bac12536..aefc65148926 100644
> --- a/drivers/net/phy/dp83867.c
> +++ b/drivers/net/phy/dp83867.c
> @@ -362,6 +362,8 @@ static int dp83867_of_init(struct phy_device *phydev)
>  	return 0;
>  }
>  
> +static int dp83867_phy_reset(struct phy_device *phydev); /* see below */
> +
>  static int dp83867_probe(struct phy_device *phydev)
>  {
>  	struct dp83867_private *dp83867;
> @@ -370,6 +372,8 @@ static int dp83867_probe(struct phy_device *phydev)
>  
>  	phydev->priv = dp83867;
>  
> +	dp83867_phy_reset(phydev);
> +
>  	return dp83867_of_init(phydev);
>  }
>  
> @@ -563,6 +567,20 @@ static int dp83867_config_init(struct phy_device *phydev)
>  	return 0;
>  }
>  
> +static int dp83867_phy_reset(struct phy_device *phydev)
> +{
> +	int err;
> +
> +	err = phy_write(phydev, DP83867_CTRL, DP83867_SW_RESTART);
> +	if (err < 0)
> +		return err;
> +
> +	udelay(20);
> +
> +	return phy_modify(phydev, MII_DP83867_PHYCTRL,
> +			 DP83867_PHYCR_FORCE_LINK_GOOD, 0);
> +}
> +
>  static struct phy_driver dp83867_driver[] = {
>  	{
>  		.phy_id		= DP83867_PHY_ID,
> -- 
> 2.39.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


