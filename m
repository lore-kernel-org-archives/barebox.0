Delivery-date: Wed, 12 Jun 2024 18:22:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHQkG-004u8D-1I
	for lore@lore.pengutronix.de;
	Wed, 12 Jun 2024 18:22:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHQkF-00040x-S5
	for lore@pengutronix.de; Wed, 12 Jun 2024 18:22:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A2WxBL9fudKEYdRBvKkXU5pO65BfIGkLvn75SElNt0E=; b=PNUU6czlhgbbFh6rSTvROUjZuA
	1vxzGgeZJNtiDiW1p4/b+U6Dcg3lNTy4IfHxj1hdm9HOMVT+8P0c9JdNk+jz0yT5rhTkhH5Wy/mPM
	Zh5zeAl52O6hmxuv32JBbKPnyIUYCFW+BV/XndnX5p5VwrbtBqcgl+IXb/elZLeyVPrPfBQ76ncS8
	L8YmBM+YvPXsHKyT81Ip2/ytwAJmJQkN9yzjGZh12Z7YlnbvQV/MMkWQz5OR80eduSVGHzQr2z50z
	bRIfKv0JKU2QfId3QT/H82qyTKH1J8SgNbX7BjxMgXwwCs5t8DuOQ9rwVORlprrO62Mf7C/4uAUwj
	lpGEpsZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQjf-0000000DMhT-3Hxf;
	Wed, 12 Jun 2024 16:22:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQjW-0000000DMdm-22IA
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 16:22:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sHQjS-0003u8-Tw; Wed, 12 Jun 2024 18:21:54 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sHQjS-001pOp-HX; Wed, 12 Jun 2024 18:21:54 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sHQjS-006c4j-1U;
	Wed, 12 Jun 2024 18:21:54 +0200
Date: Wed, 12 Jun 2024 18:21:54 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZmnLIlxKkEH9WiP6@pengutronix.de>
References: <20240612140918.3832186-1-o.rempel@pengutronix.de>
 <9924712c-7e50-4f10-94d6-0a15a734ce12@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9924712c-7e50-4f10-94d6-0a15a734ce12@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_092158_543190_14A94376 
X-CRM114-Status: GOOD (  14.79  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] net: phy: Add support for PHY-specific link polling
 interval and randomization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jun 12, 2024 at 04:23:41PM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 12.06.24 16:09, Oleksij Rempel wrote:
> >  static int eth_carrier_check(struct eth_device *edev, bool may_wait)
> >  {
> > +	uint64_t timeout;
> > +
> >  	if (!IS_ENABLED(CONFIG_PHYLIB))
> >  		return 0;
> >  
> >  	if (!edev->phydev)
> >  		return 0;
> >  
> > +	if (edev->phydev->polling_interval)
> > +		timeout = edev->phydev->polling_interval;
> > +	else
> > +		timeout = 5 * SECOND;
> 
> IMO, you should initialize edev->phydev->polling_interval in phy_device_create(),
> so phydev->polling_interval always has a valid value.
 
Good point.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


