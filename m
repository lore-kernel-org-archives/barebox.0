Delivery-date: Fri, 14 Apr 2023 16:54:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKok-003Ob5-Vp
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 16:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKok-0002AX-Jb
	for lore@pengutronix.de; Fri, 14 Apr 2023 16:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MHqRSSyOh6Jpae3Qw5+o4M1XB/k2Mxj3FV1BsuchOIU=; b=fGG0392YieeUvadzChr1NUSDvA
	aqxT61Qtso2WecNWmdHDbhijJA4q3wSQYbHNa0qyGKJOmDOc200+EatLB2PjwpG5lbWfSj0rVaU1J
	KOrnJ/++oL6pI3fqi3RcFvcByC0NcHGxFb4HYLMmVkw0KKuYOTLkALdb9VO9PO8rdxBy50oA1jtNI
	2mgtM5L6j7UScRenpMR+QGVxsHB0iXcz2jCHhK801PhCSyHswbUtSxkq3qQJ39y1BCnbp/jOdr61w
	yOTVn4WbgIZVYBTFAdaWLt9++5U1mVX+yuQzv1pIWkxNqG/T3sAluX216nL7SlgUiOmbj8fZhf6eO
	Tt9dlJ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnZ-009sUA-2W;
	Fri, 14 Apr 2023 14:53:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnS-009sR3-1L
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 14:53:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnR-0001rS-6U; Fri, 14 Apr 2023 16:53:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnQ-00BDp1-HY; Fri, 14 Apr 2023 16:53:04 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnO-00FM06-RG; Fri, 14 Apr 2023 16:53:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 16:52:56 +0200
Message-Id: <20230414145259.3644816-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
References: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_075306_564713_DDBE757F 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: [PATCH v2 2/5] usb: xhci: pass physical device to DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The xHCI device is just a child of the DWC3 with no DT node assigned.
As such, it lacks all DMA settings that may be set in the DT.
Fix this by using the hardware device instead in case the xHCI lacks
its own DT node.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 8 ++++----
 drivers/usb/host/xhci.c      | 6 +++++-
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 4654ab14862f..995772f92722 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -594,7 +594,7 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 		memcpy(bounce, buffer, length);
 	}
 
-	map = addr = dma_map_single(ctrl->dev, bounce, length, direction);
+	map = addr = dma_map_single(ctrl->host.hw_dev, bounce, length, direction);
 
 	dev_dbg(&udev->dev, "pipe=0x%lx, buffer=%p, length=%d\n",
 		pipe, buffer, length);
@@ -740,7 +740,7 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 	record_transfer_result(udev, event, length);
 	xhci_acknowledge_event(ctrl);
 
-	dma_unmap_single(ctrl->dev, map, length, direction);
+	dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
 
 	if (usb_pipein(pipe))
 		memcpy(buffer, bounce, length);
@@ -895,7 +895,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 	if (length > 0) {
 		if (req->requesttype & USB_DIR_IN)
 			field |= TRB_DIR_IN;
-		map = buf_64 = dma_map_single(ctrl->dev, buffer, length, direction);
+		map = buf_64 = dma_map_single(ctrl->host.hw_dev, buffer, length, direction);
 
 		trb_fields[0] = lower_32_bits(buf_64);
 		trb_fields[1] = upper_32_bits(buf_64);
@@ -947,7 +947,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 
 	/* Invalidate buffer to make it available to usb-core */
 	if (length > 0)
-		dma_unmap_single(ctrl->dev, map, length, direction);
+		dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
 
 	if (GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len))
 			== COMP_SHORT_TX) {
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index f5cc6dac57d8..f149e784524d 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -1359,7 +1359,11 @@ int xhci_register(struct xhci_ctrl *ctrl)
 	 */
 	host->no_desc_before_addr = true;
 
-	host->hw_dev = dev;
+	/*
+	 * If xHCI doesn't have its own DT node, it'll be a child of a
+	 * physical USB host controller device that should be used for DMA
+	 */
+	host->hw_dev = dev_of_node(dev) ? dev : dev->parent;
 	host->submit_int_msg = xhci_submit_int_msg;
 	host->submit_control_msg = xhci_submit_control_msg;
 	host->submit_bulk_msg = xhci_submit_bulk_msg;
-- 
2.39.2



