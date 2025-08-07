Delivery-date: Thu, 07 Aug 2025 17:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wK-0081zq-2b
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 17:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uk2wK-0005Wm-6d
	for lore@pengutronix.de; Thu, 07 Aug 2025 17:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pJ9gDdTSu6o3suxt8gWNE41pFExNJ/KmHH6YOKobky4=; b=AdxXLKTQ+xsl8den4tkj0ts6Mn
	z6H1Ly0o+11V4zSsNwJIa8/t0EnM2WjgUKN/l3wf9NI3n+BlXcxdbExWp16J1tUoiE1h2F80T7V5u
	LCn91Gi0ALwjpDwmP+TGjVLEUaqyYlDwptwLTEmtE+PT28++zneRatpvJ+DMAiljN2AhAjPGLypFH
	UADIvVsGx/GKagJ28MzM/4DA1HP5saaxmSJrDDdZHV/i/DHCbhJN8oXJ96tCZmO9szovWe5i3jZSO
	lqxDo5nCb/6EUiGHBrZL0oa7pXNBSjaWtBPNYDnVme9fPTfxGcWgm2jlqL+V7rOmQqK1CA6a2fQxv
	QrkWDyGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vj-000000013D0-0hRA;
	Thu, 07 Aug 2025 15:53:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk2vd-000000013AU-40qT
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 15:53:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-0005FF-Bm; Thu, 07 Aug 2025 17:53:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-00COnF-0S;
	Thu, 07 Aug 2025 17:53:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uk2va-006PB8-0D;
	Thu, 07 Aug 2025 17:53:14 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Aug 2025 17:53:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250807-fix-rtl8152-dropped-packages-v1-3-a71d05b4d166@pengutronix.de>
References: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
In-Reply-To: <20250807-fix-rtl8152-dropped-packages-v1-0-a71d05b4d166@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_085318_001252_266684E3 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] net: usb: usbnet: calm noisy debug calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These calls are in a hot path so adding #DEBUG to this file will spam
the console.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 91ce1f00fa24471a8c4afac7358ff8665897f063..6e3ee4d552be36fe6bb052ae29f04a0650b4567d 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -85,7 +85,7 @@ static int usbnet_send(struct eth_device *edev, void *eth_data, int data_length)
 	struct driver_info	*info = dev->driver_info;
 	int			len, alen, ret;
 
-	dev_dbg(&edev->dev, "%s\n",__func__);
+	dev_vdbg(&edev->dev, "%s\n", __func__);
 
 	/* some devices want funky USB-level framing, for
 	 * win32 driver (usually) and/or hardware quirks
@@ -121,7 +121,7 @@ static void usbnet_recv(struct eth_device *edev)
 	struct driver_info	*info = dev->driver_info;
 	int len, ret, alen = 0;
 
-	dev_dbg(&edev->dev, "%s\n",__func__);
+	dev_vdbg(&edev->dev, "%s\n", __func__);
 
 	len = dev->rx_urb_size;
 

-- 
2.39.5



