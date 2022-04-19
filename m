Delivery-date: Tue, 19 Apr 2022 09:37:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiQh-007alA-AQ
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 09:37:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiQd-0006XP-BD
	for lore@pengutronix.de; Tue, 19 Apr 2022 09:37:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JsXfRG6jWVRZ7VWjffQTTluEuxh1DPjB+u4f4K2xamY=; b=aTxh6cqOLzouf80tafd/78hWZG
	VEdvXAgWcjd00HcoXlWDf7nk4w8AuTez5aSzIyaPRf/falP7z55LNnjfd9A5NsuUBdcR6Qwoo9kTV
	MRpoSmXgq84UixmuG88HdUADauHtNLo32PDS7B9/W0+o/444TKfVKtgJYeTrZTZ3xH/k38vZ3gHrt
	ELG+VWgXo8QZ1Rj3F9Hu9cYq7ByjIBq0B8U7NPzBGEliYgc3SBI4N8t0dA7WADM1e2764+w0NP8qL
	2oyOtRMxdxp3EP1yqOZiMkKDsOeYcymIqkX6otRyaPspOD1aGaIil//Sxfy5zSzRVxsOhYAVVnHwp
	tw0CRRXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngiOi-0022Y7-RD; Tue, 19 Apr 2022 07:35:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngi5c-001uP7-4z
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 07:16:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ngi5X-0002vk-Lb; Tue, 19 Apr 2022 09:15:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ngi5X-00072a-CN; Tue, 19 Apr 2022 09:15:51 +0200
Date: Tue, 19 Apr 2022 09:15:51 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220419071551.GM4012@pengutronix.de>
References: <20220414075530.1372003-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220414075530.1372003-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:15:41 up 19 days, 19:45, 72 users,  load average: 0.21, 0.30, 0.49
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_001556_327231_D1A71184 
X-CRM114-Status: GOOD (  30.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] net: phy: do not call adjust_link() form
 phy_device_attach()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 14, 2022 at 09:55:30AM +0200, Oleksij Rempel wrote:
> phy_device_attach() is usually called from eth_open() to enable
> interface, configure MAC, etc. Some times we have situations like this:
> 1. find and configure PHY
> 2. define PHY as clock provider for MAC
> 3. reset and configure MAC
> 4. detect link and speed and configure MAC accordingly.
> 
> Which works as expected unless we use fixed PHY. Since fixed-phy was
> handled differently by the PHY code, we did step 4. before step 3. In
> this case we will loose MAC speed configuration at least on designware-eqos
> Ethernet controller.
> 
> With this change, we handle real PHY and virtual fixed-PHY in the same way.
> So, adjust_link() (step 4.) will be called after edev->open() (step 3.)
> as it should be for both variants.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/phy/phy.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 85cdd7862f..adff9dadd1 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -54,6 +54,13 @@ int phy_update_status(struct phy_device *phydev)
>  			return ret;
>  	}
>  
> +	/*
> +	 * If the phy is a fixed-link, set it to active state to trigger
> +	 * MAC configuration
> +	 */
> +	if (!phydev->bus && !phydev->link)
> +		phydev->link = 1;
> +
>  	if (phydev->speed == oldspeed && phydev->duplex == oldduplex &&
>  	    phydev->link == oldlink)
>  		return 0;
> @@ -311,7 +318,7 @@ struct phy_device *of_phy_register_fixed_link(struct device_node *np,
>  
>  	phydev->dev.parent = &edev->dev;
>  	phydev->registered = 1;
> -	phydev->link = 1;
> +	phydev->link = 0;
>  
>  	if (of_property_read_u32(np, "speed", &phydev->speed))
>  		return NULL;
> @@ -401,10 +408,6 @@ static int phy_device_attach(struct phy_device *phy, struct eth_device *edev,
>  
>  	phy->adjust_link = adjust_link;
>  
> -	/* If the phy is a fixed-link, then call adjust_link directly */
> -	if (!phy->bus && adjust_link)
> -		adjust_link(edev);
> -
>  	return 0;
>  }
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

