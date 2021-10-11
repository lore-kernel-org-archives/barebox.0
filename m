Delivery-date: Mon, 11 Oct 2021 10:05:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJK-0007PV-E0
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 10:05:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZqJJ-0006m4-Ee
	for lore@pengutronix.de; Mon, 11 Oct 2021 10:05:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y6UG5gEuh6GsmiZ4JpxeiQK7adVN7CPjCe2vnKDhnt8=; b=gakEhNEVraRP5N
	wiYXGQPOGjacqNWj7C9bX8W5EQBVGhxNzhEDCLZwiWzhFq5HvskkO4Se0ZHMy6S583EUtMwzOIknZ
	gWAChLszUy5/rg7/jc/nXJKwEcNUQ1y2U1i4I7o5vthF/JkdAIKJi1CdJN7DFqOV7RQ+OeKTx6Jpc
	zxe00mD/fvk95h+1fXNL8VQL4rXxCh8jUEEnowIuLtrY11hRzFgNQgUg1p/pNEGkQwZzeUudgMMAE
	GpS+Qq1kUjAQYAWVmAcMBXEoeEKVrRPHp6LByxves+VYBASoh9pDP9CBglZXoOCRL1YeJrqTvUEQ/
	TsmpMwftMO01LPzBra1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZqHp-008DLg-SK; Mon, 11 Oct 2021 08:03:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZqHl-008DJl-8V
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 08:03:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0006Dk-R0; Mon, 11 Oct 2021 10:03:47 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mZqHj-0009ho-6V; Mon, 11 Oct 2021 10:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Oct 2021 10:03:37 +0200
Message-Id: <20211011080346.37197-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_010349_329602_CE50E69B 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/9] RK3568 updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series has some updates for the Rockchip RK3568 support

Sascha Hauer (9):
  phy: rockchip: Add dummy driver for child node
  ARM: Rockchip rk3568 EVB: Enable deep probe
  ARM: Rockchip: rk3568 EVB: use 64bit partition sizes
  phy: rockchip-inno-usb2: handle disabled child nodes gracefully
  usb: dwc3: reset controller before using it
  usb: dwc3: Clarify error message
  ARM: rk3568: Detect USB boot
  cdev: Add function to get unallocated start of device
  ARM: Rockchip: RK3568: implement failsafe barebox update

 arch/arm/boards/rockchip-rk3568-evb/board.c   |   7 +-
 arch/arm/dts/rk3568-evb1-v10.dts              |  22 +---
 arch/arm/mach-rockchip/Makefile               |   1 +
 arch/arm/mach-rockchip/bbu.c                  | 117 ++++++++++++++++++
 arch/arm/mach-rockchip/include/mach/bbu.h     |   9 +-
 arch/arm/mach-rockchip/rk3568.c               |   5 +
 common/partitions.c                           |  28 +++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c |  12 +-
 drivers/usb/dwc3/core.c                       |  15 ++-
 drivers/usb/dwc3/core.h                       |   2 +
 include/driver.h                              |   1 +
 11 files changed, 195 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/bbu.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

