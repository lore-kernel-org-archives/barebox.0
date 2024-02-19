Delivery-date: Mon, 19 Feb 2024 14:39:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3ri-00Ea2x-1H
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rh-0005qs-PO
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vKPhT8smgVd6JQ9MNl2Un9pvMZxbkqCIYTyDHI13bxw=; b=b9te//WzStIvotfBiG5Z2dX65u
	yWRWNnZ2BzOk3fRVkAA+D3dd/iM0dk3pH/iPaAGM270OeAAP96KXL4LEVtcjoSiVQekDpNe8P8GW4
	1uDMaasL3YXevBhCG7L1HhQUpP6rbs8VDbwntR0vzZDv3y8/Td/YZyjueDoD8rUhfHyyd7CR1fpzC
	TzLgOCu8CI7RANvxi4cIf5QRoVM/7Gy3WXoGiCHQX9dXu6hByUTMLeB98V5ZfME9BxL5nz5jBrSZK
	FDJSXG1yFw6kTBttznSZgl4Pr8eLo/FCeuM8YlBzAS3v9ERMsynX0ncD97JBBsp1UdZ95apJoExFc
	HBUSIELA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3rB-0000000Ag1R-07M0;
	Mon, 19 Feb 2024 13:38:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r2-0000000Afw2-2LZr
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-000519-By; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-001f3Q-Vv; Mon, 19 Feb 2024 14:38:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-00GySQ-2m;
	Mon, 19 Feb 2024 14:38:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:23 +0100
Message-Id: <20240219133835.3886399-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_053844_678173_4F69419A 
X-CRM114-Status: GOOD (  11.95  )
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
Subject: [PATCH 03/15] usb: xhci: call xhci_flush_cache where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

xhci_flush_cache() is a no-op in barebox, because we use dma-coherent
allocations. Nevertheless, we define a stub for xhci_flush_cache, which
is used should we ever want to change this behavior.

The original U-Boot code doesn't use dma-coherent allocations and has
run into a few cache invalidation issues. Import the xhci_flush_cache()
added in the meantime.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-mem.c  | 3 +++
 drivers/usb/host/xhci-ring.c | 4 ++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/usb/host/xhci-mem.c b/drivers/usb/host/xhci-mem.c
index 5ae1512af53a..db38fd43f65a 100644
--- a/drivers/usb/host/xhci-mem.c
+++ b/drivers/usb/host/xhci-mem.c
@@ -408,6 +408,9 @@ static int xhci_scratchpad_alloc(struct xhci_ctrl *ctrl)
 		scratchpad->sp_array[i] = cpu_to_le64(ptr);
 	}
 
+	xhci_flush_cache((uintptr_t)scratchpad->sp_array,
+			 sizeof(u64) * num_sp);
+
 	return 0;
 
 fail_sp3:
diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 804384e0307f..d725b71983cd 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -670,6 +670,9 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 
 	first_trb = true;
 
+	/* flush the buffer before use */
+	xhci_flush_cache((uintptr_t)buffer, length);
+
 	/* Queue the first TRB, even if it's zero-length */
 	do {
 		u32 remainder = 0;
@@ -913,6 +916,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 		trb_fields[2] = length_field;
 		trb_fields[3] = field | ep_ring->cycle_state;
 
+		xhci_flush_cache((uintptr_t)buffer, length);
 		queue_trb(ctrl, ep_ring, true, trb_fields);
 	}
 
-- 
2.39.2



