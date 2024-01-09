Delivery-date: Tue, 09 Jan 2024 13:04:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNAq3-00AG85-1d
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 13:04:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNAq2-0001i7-Tb
	for lore@pengutronix.de; Tue, 09 Jan 2024 13:04:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ED/ILdzafIkdmgRKcLkRkiXnH3bfLZChZQEybFNcgtk=; b=RAfZdzOPQglAdfYc/s+isuv1/R
	QdCXbfDF6LSFfO6nHnYAKXF5GTT6+N4FcYruumPBTxYKO2ffSi40/cqOU5GYNUOVanYlnfXkBOOz8
	WCbNl2k4yboS+a4XHaqwFgiUqiGwdYAXfDKKfB211NF74bszTmkBrLEj9tT+PHhPRa7VAPIyNik6p
	v2Sq/enesKlZkpmy4J5hRe3yAzzN+gSzalwRwmaN6iyfB80nxamO3+h8+XcnR2ElC/k9DEdwmiodI
	JWjDed8oi8+2HEz0CXVIMTZ9olV0GRN62c+bSg4OujgdmcOnVfdkE+IPhrJTf0U/TTmNbPCCutKXo
	V/TzmTXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNAoA-008BAR-16;
	Tue, 09 Jan 2024 12:02:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNAo6-008B9C-0s
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 12:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNAo3-0001N4-ED; Tue, 09 Jan 2024 13:02:07 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNAo3-001Sui-1g; Tue, 09 Jan 2024 13:02:07 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNAo2-000zGQ-33;
	Tue, 09 Jan 2024 13:02:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Jan 2024 13:02:01 +0100
Message-Id: <20240109120201.211691-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_040210_312230_706407E0 
X-CRM114-Status: GOOD (  12.63  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: xhci: call dma_unmap_single in error paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

xHCI ring handling maps buffers prior to DMA and unmaps them on success,
but leaves them mapped in the error case. This leads to buffers being
remapped again triggering a CONFIG_DMA_API_DEBUG warning along with
a stack trace:

  WARNING: dwc3 2f00000.usb@2f00000.of: from-device mapping 0xbdfa0000+0x800: duplicate mapping

Fix this by unmapping the code in the error case too. This is ok to do,
because in the first instace, DMA hasn't been enabled yet and in the
others abort_td() called beforehand terminates it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 995772f92722..547047305dd0 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -639,8 +639,10 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 	 */
 	ret = prepare_ring(ctrl, ring,
 			   le32_to_cpu(ep_ctx->ep_info) & EP_STATE_MASK);
-	if (ret < 0)
+	if (ret < 0) {
+		dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
 		return ret;
+	}
 
 	/*
 	 * Don't give the first TRB to the hardware (by toggling the cycle bit)
@@ -725,6 +727,7 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
 		abort_td(udev, ep_index);
 		udev->status = USB_ST_NAK_REC;  /* closest thing to a timeout */
 		udev->act_len = 0;
+		dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
 		return -ETIMEDOUT;
 	}
 	field = le32_to_cpu(event->trans_event.flags);
@@ -967,5 +970,6 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
 	abort_td(udev, ep_index);
 	udev->status = USB_ST_NAK_REC;
 	udev->act_len = 0;
+	dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
 	return -ETIMEDOUT;
 }
-- 
2.39.2



