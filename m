Delivery-date: Thu, 16 May 2024 09:09:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEn-00GuSU-0l
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VEm-0006Tq-B4
	for lore@pengutronix.de; Thu, 16 May 2024 09:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9YEQBHn0wVm+jpy+j8bHvJCLyQNFfeHBuY34fskXD70=; b=URhEy25/ZW3/Ai28KFRZl36BNt
	raZQw+zUPilgjWodl9kE1/EcYpF97/TvQKQd0bpegXHqofAYIfpU/hSrRCZpxZ0+6V5V18yJYPWsR
	UL68OQKAatJOWp9JcglIdMrZ/beoQFFaP6ZSnR43SjTc9vd3xX/iBZm4Q/BqlDVTK14Dn7o7UX4ck
	kU2mUvQXOtbi3e/C3RrlwjK0MFy46dnpX7AkmloKT3qW6Xpw+vCViTXDTRwlYxwOWCiYGxulNkh2t
	C5Z2nBMnZ+qRJTDn1gbgg4LtNgrM/Z1jDX2yP2U7io4TvTZRxKkIEYXSjLOCui8c0rF0rufvsmAyo
	xLjxxXiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE9-00000003wPG-0fpu;
	Thu, 16 May 2024 07:08:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VE4-00000003wLa-0h3j
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:08:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00061o-Qi; Thu, 16 May 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-001fSx-EA; Thu, 16 May 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VDz-00BWfZ-12;
	Thu, 16 May 2024 09:08:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 16 May 2024 09:08:15 +0200
Message-Id: <20240516070822.2746845-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_000828_298373_C2717F49 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] replace cdev_by_name() with cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As Ahmad noticed cdev_by_name() doesn't increase the reference counting
on the returned cdev which causes problems further down the road. This
series replaces some of the easier occurences of cdev_by_name() with
cdev_open_by_name().

Sascha Hauer (7):
  ARM: Freescale i.MX23 evk: use cdev_open_by_name()
  ARM: tx28: use cdev_open_by_name()
  ARM: omap: use cdev_open_by_name()
  ARM: Rockchip: use cdev_open_by_name()
  commands: devlookup: use cdev_open_by_name()
  commands: findmnt: use cdev_open_by_name()
  bootm: use cdev_open_by_name()

 arch/arm/boards/freescale-mx23-evk/mx23-evk.c | 13 +++++++------
 arch/arm/boards/karo-tx28/tx28-stk5.c         | 13 ++++++++-----
 arch/arm/mach-omap/omap_generic.c             |  5 ++++-
 arch/arm/mach-rockchip/bbu.c                  |  8 +++++++-
 commands/devlookup.c                          | 15 ++++++++++-----
 commands/findmnt.c                            |  3 ++-
 common/bootm.c                                |  5 ++++-
 7 files changed, 42 insertions(+), 20 deletions(-)

-- 
2.39.2



