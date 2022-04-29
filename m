Delivery-date: Fri, 29 Apr 2022 09:18:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKu4-001lKW-St
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:18:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKu2-0007we-Em
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:18:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J2Z0kXuckSSKRCJyHMmDzAVI/vmChHCmgsr3nIGTASo=; b=4Y73Wk8yk/X8PeBcvB6LwG6LOX
	sxcprEIG8kc3sKXyvR6vxMdmSBP36z3UgazmwBp2rwIjfmea1S56F8Xwio4SQjrkloud8EzBBi5gn
	dykUI9KUH5oeKufU31r7nYPNV8jIjAuBxag5qd8n4sRbUklD04aWI3+SxhS0ZG7tKSFol9Ax/JNv0
	0sZgu1mycRo2jJZ6arNtBgMj2aZ5RmEYA9I652OZaHNezyzGI6P4xCb0PTKRrecyad/BxEplw9i0W
	fC1Q1EwAz+Hq/E6HS8qbdNO7Ye50rNEsg6Dul4HPu+8Vcl2BjYRKfvNaEHz1AZWIBId8uoKoJVRbz
	Cc2TNrCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkKsr-009x5o-3Q; Fri, 29 Apr 2022 07:17:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkKsm-009x4g-0s
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:17:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKsk-0007oX-RP; Fri, 29 Apr 2022 09:17:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKsk-000489-If; Fri, 29 Apr 2022 09:17:38 +0200
Date: Fri, 29 Apr 2022 09:17:38 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220429071738.GS4012@pengutronix.de>
References: <20220427073340.3125330-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427073340.3125330-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:17:25 up 29 days, 19:47, 77 users,  load average: 0.04, 0.11, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_001740_103226_B39FB322 
X-CRM114-Status: GOOD (  22.70  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] net: dsa: wait until PHY aneg is done
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 27, 2022 at 09:33:40AM +0200, Oleksij Rempel wrote:
> Some PHYs need a bit longer to complete auto negotiation. So, wait long
> enough until this process is done.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/dsa.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha


> 
> diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
> index f2420d306f..d9e629cefc 100644
> --- a/drivers/net/dsa.c
> +++ b/drivers/net/dsa.c
> @@ -111,6 +111,10 @@ static int dsa_port_start(struct eth_device *edev)
>  
>  	dsa_port_set_ethaddr(edev);
>  
> +	ret = phy_wait_aneg_done(dp->edev.phydev);
> +	if (ret)
> +		return ret;
> +
>  	if (ops->port_enable) {
>  		ret = ops->port_enable(dp, dp->index, dp->edev.phydev);
>  		if (ret)
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

