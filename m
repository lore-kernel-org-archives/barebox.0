Delivery-date: Mon, 19 Feb 2024 14:39:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3re-00Ea1U-2o
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3re-0005kX-2G
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8jsaf6un0X0Ero+wMsydrnXGkd6TFGekrEc8DRlvo1w=; b=aA3Dh7gnaAflqoPQRJpMVvhqp1
	6NeMTBTKnx1sqLpeNuYa+um1W+2YDHwsxCx/Qgu6ZE+OiTQvIuyEHJNfhiZ0DlxHsEQwY+xn66x8S
	hEL/U49CpSBMIsvYHRsUrWOgAwXKW4XSKmKaTBGRev8p29vFc0KjcKN2c52cRKPWNbKwqqOUnFTgU
	awpMmNOzhQ8W/sawKMvQGDhm1wkaq9beLQBTRuTEVw8DwUtyQS3YwxedXQdi70yS3e42in7M+BuqH
	BgJ7/K5wrIWya5zEo/0kGWhxOb+DN3X+Y/l7GuGsCdhXrO9bXgW1JPiQtUpuN7ddd1w5Z5YGHue3t
	piqUdLDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r9-0000000Ag0G-16Kn;
	Mon, 19 Feb 2024 13:38:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r2-0000000Afw0-1feO
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-000513-8P; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-001f3M-SI; Mon, 19 Feb 2024 14:38:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-00GySQ-2I;
	Mon, 19 Feb 2024 14:38:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:21 +0100
Message-Id: <20240219133835.3886399-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_053844_565685_50CD8EDA 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/15] usb: xhci: usb: xhci: avoid type conversion of void *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Original U-Boot commit 3fade88686e71c9acee4cbeb3ae9706bbc845608:

| Author:     Heinrich Schuchardt <xypron.glpk@gmx.de>
| AuthorDate: Tue Sep 29 22:03:01 2020 +0200
|
| usb: xhci: avoid type conversion of void *
|
| void * can be assigned to any pointer variable. Avoid
| unnecessary conversions.
|
| Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>

removes 8 such instances, of which only one remains in barebox.
So remove that single remaining cast.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-mem.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index f975b1c0a931..5ae1512af53a 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -464,8 +464,7 @@ int xhci_alloc_virt_device(struct xhci_ctrl *ctrl, unsigned int slot_id)
 		return -EEXIST;
 	}
 
-	ctrl->devs[slot_id] = (struct xhci_virt_device *)
-					malloc(sizeof(struct xhci_virt_device));
+	ctrl->devs[slot_id] = malloc(sizeof(struct xhci_virt_device));
 
 	if (!ctrl->devs[slot_id]) {
 		dev_err(ctrl->dev, "Failed to allocate virtual device\n");
-- 
2.39.2



