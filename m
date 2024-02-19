Delivery-date: Mon, 19 Feb 2024 14:46:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yJ-00Eb3W-1F
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:46:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yI-0002Rd-MW
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:46:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xi5Pb2Mp93MlDFY3ldFOAe0KDvl5/E6N0bJWdhf3I9o=; b=BthYBVExb9eWcjURDJA0E6P2ee
	ajT/csY28vGdC98rBTawws1v08GgIG7w+f3efnLrSmwOQkxMY4at2q9X6KUMAnndIrjZGSxZbxfye
	n9dWkSE8ksGETdqVC320LTpYVboeQrjAtZbbwTCevayTCsksWWVGeT/16b77XOdItlPs+OZhP6TZI
	3FP5od2dZ2JFzYHI7rVUXrJnw7wAKNxXhD28XbTLkHiqjozUzNZSgYDG1fpZ6nBDdBkh6x72qOjf+
	SnbpxBdNw4TaQkFdsZ5qO1VEOe/OtE0tV7dfFIeOpEDt3X3qbRrCCJKcZAz3FESVcyeDjln4BoI23
	BeA4Lr9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xr-0000000AiOs-1n2k;
	Mon, 19 Feb 2024 13:45:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xo-0000000AiMq-0ElH
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xi5Pb2Mp93MlDFY3ldFOAe0KDvl5/E6N0bJWdhf3I9o=; b=Dzn7I7mdlfkjyXCP8YlfPgiz3g
	7cQ28Db8D2aIZAriTfFHhb2+WerMumby8rWeYbIWf9lkMnD77Bh7kQI1N9hM47M7kuyGoEbyyxVJD
	udF6S6rRN4kK9aNoOELXt1ELWPkVc20zEB3LWBEn5Peryh8OLUBRHKpIalGbfiCFR5JcCr79dev10
	clu8o+DNPpKGwdrjtNqa09lIXIitUQYWPFaQJ9p8R9VoKGlFwX7gZWJ/Maz/7+20sueDkuBordoN1
	dYW7YmulXxoTxmOkcsrX9VBD1ZmuL4Bey4jDhsYxKOrzaeJOaifxmRH2eTpw490DkNfhycGyRqyaB
	csjWUfTA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xH-00000001GoC-1xR9
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:45:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-0001LA-9E; Mon, 19 Feb 2024 14:45:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xA-001f5F-Ss; Mon, 19 Feb 2024 14:45:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-1L;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:32 +0100
Message-Id: <20240219133835.3886399-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_134515_722920_E5920080 
X-CRM114-Status: GOOD (  14.13  )
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
Subject: [PATCH 12/15] usb: xhci: Better error handling in abort_td()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit 2526cd993272966606cb64b1898343e6963fb1d9:

| Author:     Hector Martin <marcan@marcan.st>
| AuthorDate: Sun Oct 29 15:37:39 2023 +0900
|
| usb: xhci: Better error handling in abort_td()
|
| If the xHC has a problem with our STOP ENDPOINT command, it is likely to
| return a completion directly instead of first a transfer event for the
| in-progress transfer. Handle that more gracefully.
|
| We still BUG() on the error code, but at least we don't end up timing
| out on the event and ending up with unexpected event errors.
|
| Signed-off-by: Hector Martin <marcan@marcan.st>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 36 +++++++++++++++++++++++-------------
 drivers/usb/host/xhci.h      |  2 ++
 2 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index d3f2018422cc..23357a882538 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -470,7 +470,8 @@ union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected,
 			continue;
 
 		type = TRB_FIELD_TO_TYPE(le32_to_cpu(event->event_cmd.flags));
-		if (type == expected)
+		if (type == expected ||
+		    (expected == TRB_NONE && type != TRB_PORT_STATUS))
 			return event;
 
 		if (type == TRB_PORT_STATUS)
@@ -549,29 +550,38 @@ static void abort_td(struct usb_device *udev, int ep_index)
 	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
 	struct xhci_ring *ring =  ctrl->devs[udev->slot_id]->eps[ep_index].ring;
 	union xhci_trb *event;
+	trb_type type;
 	dma_addr_t addr;
 	u32 field;
 
 	xhci_queue_command(ctrl, 0, udev->slot_id, ep_index, TRB_STOP_RING);
 
-	event = xhci_wait_for_event(ctrl, TRB_TRANSFER, XHCI_TIMEOUT_DEFAULT);
+	event = xhci_wait_for_event(ctrl, TRB_NONE, XHCI_TIMEOUT_DEFAULT);
 	if (!event)
 		return;
 
-	field = le32_to_cpu(event->trans_event.flags);
-	BUG_ON(TRB_TO_SLOT_ID(field) != udev->slot_id);
-	BUG_ON(TRB_TO_EP_INDEX(field) != ep_index);
-	BUG_ON(GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len
-		!= COMP_STOP)));
-	xhci_acknowledge_event(ctrl);
+	type = TRB_FIELD_TO_TYPE(le32_to_cpu(event->event_cmd.flags));
+	if (type == TRB_TRANSFER) {
+		field = le32_to_cpu(event->trans_event.flags);
+		BUG_ON(TRB_TO_SLOT_ID(field) != udev->slot_id);
+		BUG_ON(TRB_TO_EP_INDEX(field) != ep_index);
+		BUG_ON(GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len
+			!= COMP_STOP)));
+		xhci_acknowledge_event(ctrl);
 
-	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
-	if (!event)
-		return;
+		event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
+		if (!event)
+			return;
+		type = TRB_FIELD_TO_TYPE(le32_to_cpu(event->event_cmd.flags));
 
-	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
+	} else {
+		dev_warn(ctrl->dev, "abort_td: Expected a TRB_TRANSFER TRB first\n");
+	}
+
+	BUG_ON(type != TRB_COMPLETION ||
+		TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
 		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
-		event->event_cmd.status)) != COMP_SUCCESS);
+	        event->event_cmd.status)) != COMP_SUCCESS);
 	xhci_acknowledge_event(ctrl);
 
 	addr = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 4a08f3f9e0d2..37e8cee843cf 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -906,6 +906,8 @@ union xhci_trb {
 
 /* TRB type IDs */
 typedef enum {
+	/* reserved, used as a software sentinel */
+	TRB_NONE = 0,
 	/* bulk, interrupt, isoc scatter/gather, and control data stage */
 	TRB_NORMAL = 1,
 	/* setup stage for control transfers */
-- 
2.39.2



