Delivery-date: Wed, 12 Mar 2025 14:07:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnv-00D8Eq-3B
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:07:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnu-0002ZX-QI
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:07:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tfA6LrON28U1JKJ8/iR/atJmUgTZGCJ97V4OyZKp/YQ=; b=dbjn+nktaXTZWayPvrFqe+H2/2
	A5kIyQ8FqfU6vRnubxXvbkW1GmfkxSyI0vsQ9R+kP7rbMKukLdh3GxAqcpykbo3iVpRXfZQqNqJnQ
	oTPfk1KTyhRBSqxZZOZKCaeb89aXvYhc3HE938PbWoiExnyaIvuojremRC/c+uIJH/G1ydTodDUPm
	y26CezwC0X6THpsotugzSHVs9kLLjIU1SKV+XBGkUjUAAOGgVlJ24x8LdsYpEroplWoWKtqTmmZY7
	FTsbDc3M/VPaQqx1GFZfOI3L3Vo+RbV8yYxF6AmvQXN80RYtvVIWpG2I9XzsC/QH7iGm45z2WQC8n
	E6tXSvJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLnU-00000008VfQ-2evR;
	Wed, 12 Mar 2025 13:06:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLQm-00000008RJM-1eKe
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:43:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLQk-0006lY-ST; Wed, 12 Mar 2025 13:43:26 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLQk-005MPp-2F;
	Wed, 12 Mar 2025 13:43:26 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLQk-009X9s-1t;
	Wed, 12 Mar 2025 13:43:26 +0100
Date: Wed, 12 Mar 2025 13:43:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <Z9GBboek1bS-u1rb@pengutronix.de>
References: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
 <20250311-pca9450-wdog-v1-2-45120abeae00@pengutronix.de>
 <f6277af8-56a9-4327-a299-d2e2d39cbc1a@pengutronix.de>
 <2a97c0f8-f9fd-47f0-8ac6-a0c5b7499dc1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2a97c0f8-f9fd-47f0-8ac6-a0c5b7499dc1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_054328_448446_07DB6736 
X-CRM114-Status: GOOD (  17.79  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: boards: remove obsolete PCA9450_RESET_CTRL setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 11, 2025 at 12:21:52PM +0100, Jonas Rebmann wrote:
> Hi Ahmad,
> 
> Not so much. As mentioned in the cover, the imx8 boards routinely configure
> a larger array of pca9450 registers. As I didn't give the rest of that setup
> a closer look, I did not change the code.
> 
> I have only tested this series on the phyboard segin imx93.
> 
> Just like with the imx93 boards, after application of the driver patch, the
> { PCA9450_RESET_CTRL, 0xA1 } lines in lowlevel.c should no more have an
> effect (as no board currently uses nxp,wdog_b-warm-reset).
> 
> Should I remove all { PCA9450_RESET_CTRL, 0xA1 } configuration in v2?

Better not. We have other PMIC register accesses in the lowlevel.c
anyway, so having one more doesn't hurt. The positive effect is that
these boards work better in case the PMIC driver is disabled.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


