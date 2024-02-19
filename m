Delivery-date: Mon, 19 Feb 2024 14:46:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yF-00Eb1q-0u
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:46:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yE-0002MV-I5
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:46:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bvCX0bxaXHJN5ziKWG9ShujKYsIA5tiafQQUrw1fl+s=; b=Hzja4hsaxdFNht/hRdvmVHElmp
	4H3/rUmAE8Lz+HOpK7RfhwuUW04VtyKPjZgKLyyviBR0xqCFAAN+vOfrOl13MZGuIe5ilobIFoerq
	KD5IV7y/8enFHsKd/cZJkdrPocC3fRRRVh7MUS9vstSqpHH61fpVxhQeNlAGnkVqcZ5BYveiD2gvu
	D5RYuE3BUr35mpn/WuU1GMvz7FzrFpRf1VD/7ZoBUQRt3DBnNnJdr4urF50IzkOZdLuoKl8OqMKk2
	ZXLhiivIkvSYmybpffvC+t54axUshCR3fvotRM+7e1HuvU7a2IOL3h4yBPDkLJ7vqCdHIz77CYJmz
	95T7rGLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xl-0000000AiLr-3qSA;
	Mon, 19 Feb 2024 13:45:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xk-0000000AiLI-0DQC
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=bvCX0bxaXHJN5ziKWG9ShujKYsIA5tiafQQUrw1fl+s=; b=TJ+Ir1FYLzC56IgpSrxp97bV3x
	4eOS/flCdCj3uQWz+eOnE+0FGxFMjngtdJTNgSCb2MNCl3q3syBfhhdq1PfWh/WrzVUGJKbTxKIRj
	uTnkiHg/BMvxYjIadwW6WDrqsvHogwy4duOO0jIZA+awTY5wU8FK45Sr5zb/EsgyE8SKP227S4UGt
	PhO3MDBsdFPW/kHzqToHFuwq3nXVCPYjTL6b/DY5r9mzIXwBNDF31n4jJqRSf6te4edMu5TJEzwhL
	7BGlO2tPiaJz6dR9RoiN3nT0P0eNMzrArjRXr62NOwGyE2iFLtrcodgAMGnweeeUKxRb2TDS2Mbde
	kI8xauHQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xH-00000001GoH-1xTl
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:45:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-0001Lj-IE; Mon, 19 Feb 2024 14:45:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-001f5R-5n; Mon, 19 Feb 2024 14:45:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-11;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:30 +0100
Message-Id: <20240219133835.3886399-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_134515_324847_9CFE08D5 
X-CRM114-Status: GOOD (  13.35  )
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
Subject: [PATCH 10/15] usb: xhci: Fix root hub descriptor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit e330c8b83e8784d23614f80ca3f12b11ceb515d8:

| Author:     Mark Kettenis <kettenis@openbsd.org>
| AuthorDate: Sat Jan 21 20:28:00 2023 +0100
|
| usb: xhci: Fix root hub descriptor
|
| When a system has multiple XHCI controllers, some of the
| properties described in the descriptor of the root hub (such as
| the number of ports) might differ between controllers.  Fix this
| by switching from a single global hub descriptor to a hub
| descriptor per controller.
|
| Signed-off-by: Mark Kettenis <kettenis@openbsd.org>

and additionally marks the descriptor template const, so it's safe
against future inadvertent modification.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci.c | 19 +++++++++++--------
 drivers/usb/host/xhci.h |  1 +
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 2c923b9869ae..c5c21a526a29 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -30,7 +30,7 @@
 
 #include "xhci.h"
 
-static struct descriptor {
+static const struct descriptor {
 	struct usb_hub_descriptor hub;
 	struct usb_device_descriptor device;
 	struct usb_config_descriptor config;
@@ -861,7 +861,7 @@ static int xhci_submit_root(struct usb_device *udev, unsigned long pipe,
 {
 	uint8_t tmpbuf[4];
 	u16 typeReq;
-	void *srcptr = NULL;
+	const void *srcptr = NULL;
 	int len, srclen;
 	uint32_t reg;
 	volatile uint32_t *status_reg;
@@ -929,7 +929,7 @@ static int xhci_submit_root(struct usb_device *udev, unsigned long pipe,
 		case USB_DT_HUB:
 		case USB_DT_SS_HUB:
 			dev_dbg(&udev->dev, "USB_DT_HUB config\n");
-			srcptr = &descriptor.hub;
+			srcptr = &ctrl->hub_desc;
 			srclen = 0x8;
 			break;
 		default:
@@ -1188,20 +1188,23 @@ static int xhci_lowlevel_init(struct xhci_ctrl *ctrl)
 	/* initializing xhci data structures */
 	if (xhci_mem_init(ctrl, hccr, hcor) < 0)
 		return -ENOMEM;
+	ctrl->hub_desc = descriptor.hub;
 
 	reg = xhci_readl(&hccr->cr_hcsparams1);
-	descriptor.hub.bNbrPorts = HCS_MAX_PORTS(reg);
+	ctrl->hub_desc.bNbrPorts = HCS_MAX_PORTS(reg);
+
+	dev_dbg(ctrl->dev, "Register 0x%x NbrPorts %d\n", reg, ctrl->hub_desc.bNbrPorts);
 
 	/* Port Indicators */
 	reg = xhci_readl(&hccr->cr_hccparams);
 	if (HCS_INDICATOR(reg))
-		put_unaligned(get_unaligned(&descriptor.hub.wHubCharacteristics)
-				| 0x80, &descriptor.hub.wHubCharacteristics);
+		put_unaligned(get_unaligned(&ctrl->hub_desc.wHubCharacteristics)
+				| 0x80, &ctrl->hub_desc.wHubCharacteristics);
 
 	/* Port Power Control */
 	if (HCC_PPC(reg))
-		put_unaligned(get_unaligned(&descriptor.hub.wHubCharacteristics)
-				| 0x01, &descriptor.hub.wHubCharacteristics);
+		put_unaligned(get_unaligned(&ctrl->hub_desc.wHubCharacteristics)
+				| 0x01, &ctrl->hub_desc.wHubCharacteristics);
 
 	if (xhci_start(ctrl)) {
 		xhci_reset(ctrl);
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index e676116f4266..4a08f3f9e0d2 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1223,6 +1223,7 @@ struct xhci_ctrl {
 	struct xhci_erst_entry entry[ERST_NUM_SEGS];
 	struct xhci_scratchpad *scratchpad;
 	struct xhci_virt_device *devs[MAX_HC_SLOTS];
+	struct usb_hub_descriptor hub_desc;
 	void *bounce_buffer;
 	int rootdev;
 };
-- 
2.39.2



