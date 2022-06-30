Delivery-date: Thu, 30 Jun 2022 13:59:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6spQ-001z4F-Vg
	for lore@lore.pengutronix.de; Thu, 30 Jun 2022 13:59:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6spT-000277-4Z
	for lore@pengutronix.de; Thu, 30 Jun 2022 13:59:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Y3Gdbi666q3kSlu8TKQE99dvMJLdalixNTo6kubKd8=; b=pTB922Y5ElFRQ1HQEbLLDxB+CI
	UrbHRrrnAsw/EJSQJ/NoGNRQeJVyDtSWUOfEqTxPkxP7c0ycCvokclmlXiMyEiFkvkM/0GCIJfPmC
	mKB15BjthigW7jhnYL3t/YqhCTfaq/G8Gj7JZA3qv8dwZuXkl97ySet6orRGUxjcD9wQL1GAeBEoN
	/8pNAijSG/dDARl/Y4cvMRCI6DIljduNOQ2CNMWJgHahC8mAUSKsqyUIawLwlYNo9OM6n+sX7GVWJ
	aFAGlo3dlq/59K+CAtWy5rXX5Sk3PA5HbBVZWojYb/PrhYg1vLglAlBVuyvPpUXxPCyXaADTBbdwq
	2RL8pGAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6snj-00Gz09-D3; Thu, 30 Jun 2022 11:57:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6sne-00GyyM-B6
	for barebox@lists.infradead.org; Thu, 30 Jun 2022 11:57:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6snc-0001hJ-PQ; Thu, 30 Jun 2022 13:57:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6snc-0002ZT-Fc; Thu, 30 Jun 2022 13:57:32 +0200
Date: Thu, 30 Jun 2022 13:57:32 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220630115732.GB2387@pengutronix.de>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
 <20220627102500.18427-7-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220627102500.18427-7-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:51:15 up 92 days, 20 min, 86 users,  load average: 0.03, 0.10,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_045734_406865_286E2293 
X-CRM114-Status: GOOD (  17.02  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 6/8] pbl: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 27, 2022 at 01:24:58PM +0300, Alexander Shiyan wrote:
> WARNING: unmet direct dependencies detected for PBL_IMAGE
> Depends on [n]: HAVE_PBL_IMAGE [=n]
> Selected by [y]:
> - PBL_MULTI_IMAGES [=y] && HAVE_PBL_MULTI_IMAGES [=y]
> 
> WARNING: unmet direct dependencies detected for PBL_VERIFY_PIGGY
> Depends on [n]: PBL_IMAGE [=n] && ARM [=y]
> Selected by [y]:
> - ARCH_IMX8M [=y] && ARCH_IMX [=y] && HABV4 [=y]
> 
> WARNING: unmet direct dependencies detected for BOARD_GENERIC_DT
> Depends on [n]: PBL_IMAGE [=n]
> Selected by [y]:
> - BOARD_ARM_GENERIC_DT [=y] && HAVE_PBL_MULTI_IMAGES [=y] && OFDEVICE [=y]

I had to revert this one as it breaks for example am335x_mlo_defconfig.
It breaks because HAVE_PBL_MULTI_IMAGES is set. With this
PBL_MULTI_IMAGES becomes enabled because it is default y. That option
in turn selects PBL_IMAGE. Now with this patch applied we end up
with PBL_IMAGE disabled and the config doesn't compile anymore.

I think we have to split this patch up further. What I trapped in was:

> WARNING: unmet direct dependencies detected for PBL_IMAGE
> Depends on [n]: HAVE_PBL_IMAGE [=n]
> Selected by [y]:
> - PBL_MULTI_IMAGES [=y] && HAVE_PBL_MULTI_IMAGES [=y]

And I think that one could be fixed with:

config HAVE_PBL_MULTI_IMAGES
	select HAVE_PBL_IMAGE
	bool

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


