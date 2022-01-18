Delivery-date: Tue, 18 Jan 2022 14:45:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9ong-005bmX-1m
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 14:45:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9onb-0003q4-7h
	for lore@pengutronix.de; Tue, 18 Jan 2022 14:45:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a2bwAmL3DmmqzuWReSaXPc5uXT1OJHqy1YPTP0sMtis=; b=EZHqU9DVtohtON
	LYOdzZDVf1/rAop2P44LwxlEea2F4xf4NHShQlmhr6ikHCCGRhEFBvnlL7vEfFimhQoDjYP+bnDHE
	3bTO8xLu6BxwX8DlXnFTt2CV01s+XfBLpzpj7qIVLc8EHuesKZEqJmga9VTx52rhfQejp/54HtuIs
	lzocLoWcoeFrbXoKHIC9mLKPAtBOsqWNIqHwQ+J0FCzlyUJvTjOa8u9JKK//k2Lhbl2aqAttTWuEq
	nd7uA9bye7RT2RLJfI54F7OdCwMajAuKvom0uA1f+iuJ8d9/919luX4G42LLT3qlQbZe/e3anrQ6a
	eo6tbLOXnRf9QyF4RawA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9olu-001hFx-Gy; Tue, 18 Jan 2022 13:43:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9olq-001hF4-1x
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 13:43:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>) id 1n9olm-0003cM-NY
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:43:30 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 18 Jan 2022 14:43:17 +0100
Message-Id: <20220118134317.1686090-1-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_054334_126239_50573970 
X-CRM114-Status: UNSURE (   9.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] efi: skip devices without driver in
 efi_pause/continue_devices()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Skip devices on the EFI bus that do not have a driver assigned.

Fixes: f68a547deebd ("efi: add efi_device hook to be called before an image is started")
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/efi/efi-device.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 39724ec2f431..f91d09e8eaa5 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -473,7 +473,12 @@ void efi_pause_devices(void)
 	bus_for_each_device(&efi_bus, dev) {
 		struct driver_d *drv = dev->driver;
 		struct efi_device *efidev = to_efi_device(dev);
-		struct efi_driver *efidrv = to_efi_driver(drv);
+		struct efi_driver *efidrv;
+
+		if (!drv)
+			continue;
+
+		efidrv = to_efi_driver(drv);
 
 		if (efidrv->dev_pause)
 			efidrv->dev_pause(efidev);
@@ -487,7 +492,12 @@ void efi_continue_devices(void)
 	bus_for_each_device(&efi_bus, dev) {
 		struct driver_d *drv = dev->driver;
 		struct efi_device *efidev = to_efi_device(dev);
-		struct efi_driver *efidrv = to_efi_driver(drv);
+		struct efi_driver *efidrv;
+
+		if (!drv)
+			continue;
+
+		efidrv = to_efi_driver(drv);
 
 		if (efidrv->dev_continue)
 			efidrv->dev_continue(efidev);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

