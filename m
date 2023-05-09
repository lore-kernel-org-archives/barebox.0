Delivery-date: Tue, 09 May 2023 09:23:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHgg-00BHKn-Hp
	for lore@lore.pengutronix.de; Tue, 09 May 2023 09:23:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHge-0004yh-Iz
	for lore@pengutronix.de; Tue, 09 May 2023 09:23:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=732KaG4JmTAC1a8Z9Np4ztoVMxRjXRLh5XKPCWikTmc=; b=W530RVxBGfngYSJqioiKXPa5Wp
	FQjL6pxjlHFCMapMv/7OGk0u1TKHnIIRk5MHqGTmHIwaElA0nPxbYoI1MBZ/KvCKxhbYknj/ZHmlJ
	FV8eOUVToTL76z+TlVachbDZHw/tztqp1NDvnhjVPbmkH0VELglEKBs/g5hrq8O3uvAnhBNhG5Av9
	sSn2Prb+lbU5H53B2eYhw3951PTJ0vDggvgtUgL5BoJkxfaO1lTGyAhdPVuekiLlpIqsPR4Lc/6yI
	GMPgjxs1CqyymQoHs6R4r4p+1+xN4WYNjvx4lBLlrQ5x1wl7l78J4Z9gkxGV5wVgjtQo+G3EMKyNZ
	1mu9fvTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHfK-002UnW-2G;
	Tue, 09 May 2023 07:21:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHfH-002UmR-1s
	for barebox@lists.infradead.org;
	Tue, 09 May 2023 07:21:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHfC-0004q0-Om; Tue, 09 May 2023 09:21:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHfC-0005bd-4T; Tue, 09 May 2023 09:21:34 +0200
Date: Tue, 9 May 2023 09:21:34 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org, patchwork-jzi@pengutronix.de
Message-ID: <20230509072134.GA29365@pengutronix.de>
References: <20230509060521.707205-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230509060521.707205-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_002139_616474_03C92F39 
X-CRM114-Status: GOOD (  26.89  )
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
Subject: Re: [PATCH v2] net: phy: print error messages to log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 09, 2023 at 08:05:21AM +0200, Johannes Zink wrote:
> Previously the phy core did just print info and error messages to
> console, but they did not show up in the system log.
> 
> Now the dev_info and dev_err macros are used instead of raw puts,
> they are now nicely formatted and show up in the log.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
> Changelog:
> 
> v1 -> v2: Worked in Ahmad's review findings:
>           - use dev_err and dev_info instead of pr_err and pr_info
> 
>           Thank you for your review!
> 
>  drivers/net/phy/phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 54dbbca7255a..dbc30b66b828 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -462,7 +462,7 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
>  	ret = -ENODEV;
>  out:
>  	if (ret)
> -		puts("Unable to find a PHY (unknown ID?)\n");
> +		dev_err(&edev->dev, "Unable to find a PHY (unknown ID?)\n");
>  
>  	return ret;
>  }
> @@ -675,7 +675,7 @@ int genphy_aneg_done(struct phy_device *phydev)
>  
>  	/* Restart auto-negotiation if remote fault */
>  	if (bmsr & BMSR_RFAULT) {
> -		puts("PHY remote fault detected\n"
> +		dev_info(&phydev->dev, "PHY remote fault detected\n"
>  		     "PHY restarting auto-negotiation\n");
>  		phy_write(phydev, MII_BMCR,
>  				  BMCR_ANENABLE | BMCR_ANRESTART);
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


