Delivery-date: Fri, 14 Apr 2023 16:54:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKog-003OZa-11
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 16:54:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKof-00028E-N9
	for lore@pengutronix.de; Fri, 14 Apr 2023 16:54:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qvUggNp480uFjV5TNT8AEllhWI34mGwJVzS3AyjD1HY=; b=mK9PO8L3Atb0NFuV6m1x7r3O08
	7+3UjaXYXVLrvQv/m8MDI6WuArxQYuM4yfBUV6H7d1HcazMmMq2SbjFnoXZNwj8wJH3qPCdAY54bc
	wEMxjvhGwif0Hey6yAwbNV24P7DiItFUyCqk8CcYfootQ/rV3M1UpSFlf9Ceqol2EzCPb6hRFR0iV
	xjc/v8FcDtygtf3/DCm/TwLP6Un5mW31LeZc9C8rxuT+Y2K/vmuSKvi12V6W+dhhWsA5tI3r2MSGI
	LkHrek/PkcFkPXXiZxEpFfzEU4KIpkaN31Z516GEtw6yvIuF6Kj5dDbvEcul/2VxbKaEa1zk8oLcq
	esV3AY2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnX-009sTH-13;
	Fri, 14 Apr 2023 14:53:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnS-009sR4-1T
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 14:53:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnR-0001rT-AF
	for barebox@lists.infradead.org; Fri, 14 Apr 2023 16:53:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnQ-00BDp4-MR
	for barebox@lists.infradead.org; Fri, 14 Apr 2023 16:53:04 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnO-00FLzz-QH
	for barebox@lists.infradead.org; Fri, 14 Apr 2023 16:53:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Apr 2023 16:52:54 +0200
Message-Id: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_075306_557867_742D6440 
X-CRM114-Status: UNSURE (   6.88  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] dma: pass physical device to DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This splits off the non-contentions parts of my dma-coherency series:
https://lore.barebox.org/barebox/20230221080524.607241-1-a.fatoum@pengutronix.de/

Only change is a typo fix in a comment, but no other changes.

Ahmad Fatoum (5):
  usb: dwc3: populate parent of xHCI dev
  usb: xhci: pass physical device to DMA API
  net: rtl8169: pass physical device for DMA API
  firmware: zynqmp-fpga: pass physical device to DMA API
  net: designware: eqos: pass physical device to DMA API

 drivers/base/resource.c        |  6 ++++--
 drivers/firmware/zynqmp-fpga.c |  7 ++++---
 drivers/net/designware_eqos.c  | 13 ++++++-------
 drivers/net/rtl8169.c          |  9 +++++----
 drivers/usb/dwc3/host.c        |  8 ++++----
 drivers/usb/host/xhci-ring.c   |  8 ++++----
 drivers/usb/host/xhci.c        |  6 +++++-
 include/driver.h               | 12 ++++++++++--
 8 files changed, 42 insertions(+), 27 deletions(-)

-- 
2.39.2



