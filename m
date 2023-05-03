Delivery-date: Wed, 03 May 2023 12:20:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bC-0033T4-AU
	for lore@lore.pengutronix.de; Wed, 03 May 2023 12:20:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pu9bA-0006Y6-EQ
	for lore@pengutronix.de; Wed, 03 May 2023 12:20:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgV9PoiekxjEbJgbefrpOQ+ty1kPXj7J9zhYKmp0ayE=; b=UUNnzr6cwJ9kda
	jfskDvW2bgRdez9OaD+6uzfCpA+CXb6IMZJvfxmw4uZeMNQfU3AGjs966EIOfIlibQfSfbTaN4Pe2
	ZEnqAO1XaZoCivF8UGOR6tHKyPSDFnjxuaqj2LzK9l0bC96YUdDdzf6wGB9tm1yux7HupQPmVpApO
	TOvz9WtcfGqxw7cdbauPdJbffSQWKaKrC8MzcE81svNAfLkmrjxb17luU23N71CWmmCQ1WkcM/52U
	a6hiW3SbX2iUttKpM8QR1+z6bwSbjvm0z2lT7O1e5fWyzlOiB7dkFlMb48geYO9BxZd7ZdsZfkMrU
	5U4jALRnJgiIiW98ERyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a6-0046pi-2o;
	Wed, 03 May 2023 10:19:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu9a2-0046nh-2n
	for barebox@lists.infradead.org;
	Wed, 03 May 2023 10:19:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zz-000657-Qa; Wed, 03 May 2023 12:19:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zx-000nx9-DR; Wed, 03 May 2023 12:19:21 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pu9Zw-007f5M-KZ; Wed, 03 May 2023 12:19:20 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  3 May 2023 12:19:18 +0200
Message-Id: <20230503101919.1826193-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230503101919.1826193-1-o.rempel@pengutronix.de>
References: <20230503101919.1826193-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_031926_943544_C9CBE9EE 
X-CRM114-Status: GOOD (  12.77  )
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
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Oleksij Rempel <o.rempel@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 3/4] usb: dwc2: fix multiplier handling in endpoint setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Michael Grzeschik <m.grzeschik@pengutronix.de>

If the multiplier is 0 in the descriptor bitfield the multiplier count
is one. For calculating the multiplier count the extra function
usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
and make multi packages work.

While at it, we also remove the USB_EP_MAXP_MULT and
USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
defined in include/usb/ch9.ch anyway.

Tested-by: Jules Maselbas <jmaselbas@kalray.eu>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/dwc2/gadget.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index bb55888abf..00323d2d90 100644
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
2.39.2



