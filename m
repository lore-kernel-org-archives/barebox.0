Delivery-date: Mon, 19 Feb 2024 14:46:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yI-00Eb38-2L
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:46:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yI-0002RD-1t
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:46:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G5OSKf5i+gJqegOnqqXPvAUxA72ZPzgW5ZMOP52n9lw=; b=BAdLHh4d1MdjLUpHgM4Bzzhtv7
	oikOvw4ewrtDUmgxJLyh5yJz8JBHJ4LrT5nM1C+oEOT5HjG9X4hPr5rNzdmEIaqyf/QlBP6ZKIpQb
	z+j3C9ytgqYd12iFEuaC4NMhmuUOX4LUnIXQgyf9Vmr8EhsyAL6IMN+TQBD1e/3UG1cwRGHSWWO6K
	zgotZzEXUQPhF4/335mkljVb1HfmLPE8T1RlpSnnRcbjx3Ce+VJhkq4cMtAaQlStVYYjFi3YJ47Cb
	5s2Bt521lN8SopPpHfK3p5qLTgSPD02u1cFs4RsdXwySgTIiFwyORRflbvon3Nt1qrtpuzsb7eTx+
	Hsg2t6Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xs-0000000AiPK-0U49;
	Mon, 19 Feb 2024 13:45:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xo-0000000AiMp-0CK7
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=G5OSKf5i+gJqegOnqqXPvAUxA72ZPzgW5ZMOP52n9lw=; b=gDpUUWLpLbd51E3UYHqYafdAdB
	taOLBDDPXsnqAIPqbJnf/ALl+3D5qCwhpCvIwZoIeYbeK250Y6o3XSQw8A83yJF4ZT7v/mWAPN9d2
	mxpK37KF2DuZczJ6rSQmBr0ILZeP6/YRSgEDt3xRfVakE6GWKPy+6gf4YcV4Q8jpBbotN+qEmkBlK
	XzvMFcY2NFSe+/pr6GNZu2mmEICWRLZpQ0vLw+kj/cfgDkxseL4jXTBnaeyfCZ0ZIE6USv9fw4MyC
	1YF7O5kXsOVolITAdIUmG61s2rJwFYM7XNyWvTUah8gGA+JaCmo7DYA51wBJ9/vaH4qyhEJ+1OcM3
	j9yFuHKA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xH-00000001Go9-1xDY
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:45:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-0001L9-74; Mon, 19 Feb 2024 14:45:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xA-001f5C-QY; Mon, 19 Feb 2024 14:45:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-1C;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:31 +0100
Message-Id: <20240219133835.3886399-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_134515_569344_667D9782 
X-CRM114-Status: GOOD (  10.25  )
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
Subject: [PATCH 11/15] usb: xhci: Guard all calls to xhci_wait_for_event
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit 8d1e03f984c7467d7c8883f15dea14b2f8b4c0e2:

| Author:     Hector Martin <marcan@marcan.st>
| AuthorDate: Sun Oct 29 15:37:38 2023 +0900
|
| usb: xhci: Guard all calls to xhci_wait_for_event
|
| xhci_wait_for_event returns NULL on timeout, so the caller always has to
| check for that. This addresses immediate explosions in this part
| of the code when timeouts happen, but not the root cause for the
| timeout.
|
| Signed-off-by: Hector Martin <marcan@marcan.st>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 9 +++++++++
 drivers/usb/host/xhci.c      | 9 +++++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 056613445330..d3f2018422cc 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -555,6 +555,9 @@ static void abort_td(struct usb_device *udev, int ep_index)
 	xhci_queue_command(ctrl, 0, udev->slot_id, ep_index, TRB_STOP_RING);
 
 	event = xhci_wait_for_event(ctrl, TRB_TRANSFER, XHCI_TIMEOUT_DEFAULT);
+	if (!event)
+		return;
+
 	field = le32_to_cpu(event->trans_event.flags);
 	BUG_ON(TRB_TO_SLOT_ID(field) != udev->slot_id);
 	BUG_ON(TRB_TO_EP_INDEX(field) != ep_index);
@@ -563,6 +566,9 @@ static void abort_td(struct usb_device *udev, int ep_index)
 	xhci_acknowledge_event(ctrl);
 
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
+	if (!event)
+		return;
+
 	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
 		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
 		event->event_cmd.status)) != COMP_SUCCESS);
@@ -572,6 +578,9 @@ static void abort_td(struct usb_device *udev, int ep_index)
 	addr |= ring->cycle_state;
 	xhci_queue_command(ctrl, addr, udev->slot_id, ep_index, TRB_SET_DEQ);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
+	if (!event)
+		return;
+
 	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
 		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
 		event->event_cmd.status)) != COMP_SUCCESS);
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index c5c21a526a29..e7b8344181ee 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -446,6 +446,9 @@ static int xhci_configure_endpoints(struct usb_device *udev, bool ctx_change)
 	xhci_queue_command(ctrl, in_ctx->dma, udev->slot_id, 0,
 			   ctx_change ? TRB_EVAL_CONTEXT : TRB_CONFIG_EP);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
+	if (!event)
+		return -ETIMEDOUT;
+
 	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
 		!= udev->slot_id);
 
@@ -632,6 +635,9 @@ static int xhci_address_device(struct usb_device *udev, int root_portnr)
 	xhci_queue_command(ctrl, virt_dev->in_ctx->dma,
 			   slot_id, 0, TRB_ADDR_DEV);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
+	if (!event)
+		return -ETIMEDOUT;
+
 	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags)) != slot_id);
 
 	switch (GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))) {
@@ -707,6 +713,9 @@ static int _xhci_alloc_device(struct usb_device *udev)
 
 	xhci_queue_command(ctrl, 0, 0, 0, TRB_ENABLE_SLOT);
 	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
+	if (!event)
+		return -ETIMEDOUT;
+
 	BUG_ON(GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))
 		!= COMP_SUCCESS);
 
-- 
2.39.2



