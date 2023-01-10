Delivery-date: Tue, 10 Jan 2023 16:19:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGP8-007s8Z-E8
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:19:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGP6-0004UO-JZ
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:19:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=clJG8qP/HSL8MkJT+X+l6pqTsLvfcFA53902tecxCIg=; b=WrXJJzl+WUvxspfxxLRSYXwJl1
	bmZnfvC2Did7rtwio63UfB3HtE2bst36vMENUbymWLbGvIfpleElKe4SZkwStea/fDA9WDomaTFA+
	0cg+rCmGvLYAUwqcr5k3zvOf+UNoIQFjwBE7X6aLEoFW1wjEu37wr0SbsW2kOo80kuW4ahs/xvaT7
	3ohqfCOZX+3EOQeKMrov14AxGhN0I7Y6mGXr0BsaaTJzZcitwXN68BxCq4m6bwifgcuOGdhk7SW2a
	BOElkCYg76CD19HEZAL+5SrsvoCrCs5PZvwdnKXR4gKLuv3TE5ll31yJCPQ8lRw7Z1+fAgDpO3rGC
	IJ2ne48w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGNv-007XEz-Pz; Tue, 10 Jan 2023 15:17:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGNo-007XDJ-Bp
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:17:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pFGNk-0004LJ-P6
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 16:17:44 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pFGNk-0056gq-44
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 16:17:44 +0100
Received: from mgr by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pFGNj-00GrYd-Fl
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 16:17:43 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Jan 2023 16:17:38 +0100
Message-Id: <20230110151738.4019078-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_071748_419350_11C8358A 
X-CRM114-Status: GOOD (  12.06  )
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
Subject: [PATCH] usb: dwc2: fix multiplier handling in endpoint setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the multiplier is 0 in the descriptor bitfield the multiplier count
is one. For calculating the multiplier count the extra function
usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
and make multi packages work.

While at it, we also remove the USB_EP_MAXP_MULT and
USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
defined in include/usb/ch9.ch anyway.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
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



