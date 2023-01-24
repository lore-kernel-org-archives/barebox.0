Delivery-date: Tue, 24 Jan 2023 21:03:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPVb-000nYN-Pl
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 21:03:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPVY-0007eF-Rh
	for lore@pengutronix.de; Tue, 24 Jan 2023 21:03:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E5Fdi2pniyr6M0BDcS3hcbn7IoVrttka95BbHQD13TA=; b=R0urRug1Uezyi/L+LFTu/71saa
	UBfiFLZ7QNJ/osxNpRRxj94geFY2HGh3iFOnsj7VwO6uJmcTyZFYVaiG94iP0zLwI1BQjjXDj9bdN
	nXh2o/J43jaFYhYEqSfDkKQ2+40aY+VzVBV8fMVUEpSeCHpSZwuqiaebdexTeFw2edzRDCJXaBk6W
	Y2epeiXwU19se/edq6u3Q4s/eLZUGh5SVuNHXVBs0IRSYBS4l2TigAN5Q2ROD1utpJxJVngHc0fqT
	1oQh5goyh9JAhIsvGA1mAM/SeCgBCW/NBGoRBic4IAJ8/lBKdw1GMrGy18mypsQCmeRIJ8DhyQAgt
	ptxF9rMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPU1-0058eS-Bv; Tue, 24 Jan 2023 20:01:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPTw-0058bj-H4
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 20:01:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPTp-0007QR-9L; Tue, 24 Jan 2023 21:01:17 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPTp-000BBn-Ah; Tue, 24 Jan 2023 21:01:16 +0100
Received: from mgr by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPTn-00DGHH-PQ; Tue, 24 Jan 2023 21:01:15 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 24 Jan 2023 21:01:14 +0100
Message-Id: <20230124200114.3160585-2-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
References: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_120124_589781_154DA963 
X-CRM114-Status: GOOD (  12.52  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] usb: dwc2: fix multiplier handling in endpoint setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the multiplier is 0 in the descriptor bitfield the multiplier count
is one. For calculating the multiplier count the extra function
usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
and make multi packages work.

While at it, we also remove the USB_EP_MAXP_MULT and
USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
defined in include/usb/ch9.ch anyway.

Tested-by: Jules Maselbas <jmaselbas@kalray.eu>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: - added tested-by

 drivers/usb/dwc2/gadget.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 7070485410..5a72ba795b 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -14,13 +14,6 @@
 #define spin_lock_irqsave(lock, flags) (void)(flags)
 #define spin_unlock_irqrestore(lock, flags) (void)(flags)
 
-#ifndef USB_ENDPOINT_MAXP_MASK
-#define USB_ENDPOINT_MAXP_MASK	0x07ff
-#endif
-#ifndef USB_EP_MAXP_MULT
-#define USB_EP_MAXP_MULT(m)	(((m) & 0x1800) >> 11)
-#endif
-
 static void kill_all_requests(struct dwc2 *, struct dwc2_ep *, int);
 
 static inline struct dwc2_ep *index_to_ep(struct dwc2 *dwc2,
@@ -484,7 +477,7 @@ static int dwc2_ep_enable(struct usb_ep *ep,
 
 	ep_type = desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
 	mps = usb_endpoint_maxp(desc) & USB_ENDPOINT_MAXP_MASK;
-	mc =  USB_EP_MAXP_MULT(usb_endpoint_maxp(desc));
+	mc = usb_endpoint_maxp_mult(desc);
 
 	/* note, we handle this here instead of dwc2_set_ep_maxpacket */
 	epctrl_reg = dir_in ? DIEPCTL(index) : DOEPCTL(index);
-- 
2.30.2



