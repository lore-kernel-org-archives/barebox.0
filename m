Delivery-date: Mon, 19 Feb 2024 14:46:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yG-00Eb2X-2Z
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:46:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3yG-0002QA-2b
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:46:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KkG7fLQ6OC3lzIEwxrm7MS2QrFn0wBMXo06vw7fkunA=; b=VqGQH8NKgbkUREg1TFjX/wyHyy
	rJHuuMUyL/FFtA8wkTDQwSw5CcFhaiwRhZBdHXOQsRnoA/LX2Lel7saxH25/N27KtQLY4Pn2hQW6u
	sHNMdK/n3UHLvaCoVRsmf8ACsy3n7tf3RAKCqiQduc9/9vHb0chAZrr7xjhpiYvn8PNEiu6n7g39E
	QsOwPwTv7J69gczqLiDHKLv43eIz/LNHLSlfel0ovIlmFPhWwfXepB367yIAl0EY5+XpiSt5jP0ue
	WqVUvywYaz0GSxgMD2CjSKq78fhmQnVkaePddt7H/22yo3LmZ7qPRXOWph1uHinhur5zONxizQXV2
	IBhkeNpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xo-0000000AiNP-2rMF;
	Mon, 19 Feb 2024 13:45:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xn-0000000AiMb-1tTX
	for barebox@bombadil.infradead.org;
	Mon, 19 Feb 2024 13:45:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KkG7fLQ6OC3lzIEwxrm7MS2QrFn0wBMXo06vw7fkunA=; b=Tt3RatbPT97wgSEVA9XzvvhUjZ
	FEHioOcIXvF9Y92OoZnxgsWMmy4Sf7ZC+ICyu65gzbPQ2AmiKVejkP8+TMAoLavDLOA6Ff2AuikHz
	wRAEJS9VHvwveXwvkGknJFuJRy3FV7fFzVjXxSTs25UB1mEVmVWlmX6lMceLAAEhdFxpJaW7EUXHd
	IxU5V/9r/ZFuNycjWJ0l8tg/Ow/c0dsGmdfls6b5Yjw3MJmVlISU0xkBMGN3JAWIAx0Tk6ElnFnyj
	Z4S23TS+ozrStBYDCZL6Np1nYz0lY0OlOXH3etas383piLlboT5owB0tNz9liPDGTQt2EVwa/sEKQ
	mFsuLNwA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3xH-00000001GoE-1xGq
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:45:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xB-0001LB-Bb; Mon, 19 Feb 2024 14:45:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3xA-001f5I-VG; Mon, 19 Feb 2024 14:45:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-00GySQ-1V;
	Mon, 19 Feb 2024 14:38:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:33 +0100
Message-Id: <20240219133835.3886399-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_134514_788895_CF41D0C7 
X-CRM114-Status: GOOD (  10.78  )
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
Subject: [PATCH 13/15] usb: xhci: Allow context state errors when halting an endpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports U-Boot commit 6f64f0ae230f9e8f68c5d9bf56ffee438fa60a6a:

| Author:     Hector Martin <marcan@marcan.st>
| AuthorDate: Sun Oct 29 15:37:40 2023 +0900
|
| usb: xhci: Allow context state errors when halting an endpoint
|
| There is a race where an endpoint may halt by itself while we are trying
| to halt it, which results in a context state error. See xHCI 4.6.9 which
| mentions this case.
|
| This also avoids BUGging when we attempt to stop an endpoint which was
| already stopped to begin with, which is probably a bug elsewhere but
| not a good reason to crash.
|
| Signed-off-by: Hector Martin <marcan@marcan.st>
| Reviewed-by: Marek Vasut <marex@denx.de>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 23357a882538..1b9a5b7867e0 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -550,6 +550,7 @@ static void abort_td(struct usb_device *udev, int ep_index)
 	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
 	struct xhci_ring *ring =  ctrl->devs[udev->slot_id]->eps[ep_index].ring;
 	union xhci_trb *event;
+	xhci_comp_code comp;
 	trb_type type;
 	dma_addr_t addr;
 	u32 field;
@@ -578,10 +579,11 @@ static void abort_td(struct usb_device *udev, int ep_index)
 		dev_warn(ctrl->dev, "abort_td: Expected a TRB_TRANSFER TRB first\n");
 	}
 
+	comp = GET_COMP_CODE(le32_to_cpu(event->event_cmd.status));
 	BUG_ON(type != TRB_COMPLETION ||
 		TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
-		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
-	        event->event_cmd.status)) != COMP_SUCCESS);
+		!= udev->slot_id || (comp != COMP_SUCCESS && comp
+		!= COMP_CTX_STATE));
 	xhci_acknowledge_event(ctrl);
 
 	addr = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
-- 
2.39.2



