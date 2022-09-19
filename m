Delivery-date: Mon, 19 Sep 2022 10:03:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkJ-009ODr-Ht
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 10:03:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaBkH-0000UW-5K
	for lore@pengutronix.de; Mon, 19 Sep 2022 10:03:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=veyFs7UpiPrwWh2KnMfXpr7GaDEHjXPFy67DeY48gGc=; b=PdfaGXa1MKWn+vu64aaat5gasU
	51W22X4nqtthYYWkqWyQR400YsDqYZkOzof5a8oBrh1y7LN2tJwiQcjvvlHIooBvtuEXYnJhz67pT
	xgRZBVGA0CE15MR+A9Rw+WNKE9m9r8TqTwAlIv1q07Iu37106TZcmiBVY/A600GUvQ44fAvaVbwEc
	N9JrPH+hOnqTuXjdjLpDHKe61dELu6lWx+y2+mT/xVefwSIHXkdH3uyWKFX5yaRhaaKznh7Xy1rdd
	8/j0zQH06HOUzuuqOuaMH2kR/25vkhRmZotkjaQOfWvF6lSKKm6ogS+CsnF7IZbawFXh0Gm9rgwNi
	ieTQ+ivA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBj1-009fhh-A8; Mon, 19 Sep 2022 08:01:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaBik-009fO1-3u
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 08:01:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-0008Kz-72; Mon, 19 Sep 2022 10:01:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBii-001cXO-Th; Mon, 19 Sep 2022 10:01:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oaBig-003geq-D2; Mon, 19 Sep 2022 10:01:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Sep 2022 10:01:24 +0200
Message-Id: <20220919080133.877651-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_010138_332990_447242D4 
X-CRM114-Status: GOOD (  12.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] Reduce usage of NetRxPackets[]
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Usage of the globally allocted network receive buffers NetRxPackets[] is
inherently broken. Some drivers queue these buffers in the hardware.
When multiple of these drivers are active at the same time then they
stamp over each others packets and bad things happen.

The goal is to remove NetRxPackets[] entirely in favor of per device
packet buffers. This series is a first step into that direction. It
removes the simple cases where only NetRxPackets[0] is used to store the
single packet that is pulled out of the hardware before net_receive() is
called.

Sascha

Sascha Hauer (9):
  net: tap: Allocate own receive buffer
  net: macb: Allocate own receive buffer
  net: cs8900: Allocate own receive buffer
  net: liteeth: Do not use NetRxPackets
  net: efi-snp: Allocate own receive buffer
  net: smc91111: Allocate own receive buffer
  net: smc911x: Allocate own receive buffer
  net: ks8851_mll: Allocate own receive buffer
  net: remove altera_tse driver

 drivers/net/Kconfig      |  16 --
 drivers/net/Makefile     |   1 -
 drivers/net/altera_tse.c | 563 ---------------------------------------
 drivers/net/altera_tse.h | 296 --------------------
 drivers/net/cs8900.c     |   7 +-
 drivers/net/efi-snp.c    |   6 +-
 drivers/net/ks8851_mll.c |   9 +-
 drivers/net/liteeth.c    |   8 +-
 drivers/net/macb.c       |  12 +-
 drivers/net/smc91111.c   |  10 +-
 drivers/net/smc911x.c    |   8 +-
 drivers/net/tap.c        |   7 +-
 12 files changed, 45 insertions(+), 898 deletions(-)
 delete mode 100644 drivers/net/altera_tse.c
 delete mode 100644 drivers/net/altera_tse.h

-- 
2.30.2



