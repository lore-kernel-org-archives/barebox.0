Delivery-date: Mon, 05 Aug 2024 17:26:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sazbn-006X0O-3C
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 17:26:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sazbn-0001IY-Dp
	for lore@pengutronix.de; Mon, 05 Aug 2024 17:26:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NyRR+ynuJ+PBTLEsfgdyqKDjUs8+k84BYBqBt+nK9pY=; b=tBVZUPQV/mUgQoTpu/oIUQvG9A
	Sx8pWABFJzV5r5/ZN0lSIiYJ8CSotu1Sy45R/WzAsPOh2Zf+KYcDCI2BDhohUebOpvht2biuftKQ2
	X4nhzcdoxGDSGkjPIkhlYHllbu+5vuoTNCzwgdmi7k7weciNQrB3ex/6oS/8hC1zXbS+vcuWH0CDy
	uOOtaxV9ypRr2P+Oljr3HCuSyaNwplwn9MW2OUG014R6NGOMSGyndJKKA6mxO+X0bWK7bRZPO9Jjk
	qpWOlJNGmQslkLIvkq6Dh3HP3TdB14AyN6E9qg+nnU+oE63IgQl+N/XqzgSPunbpEpHBXomomj7YL
	azoxgx7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazbF-0000000GJA8-2A2z;
	Mon, 05 Aug 2024 15:26:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sazbB-0000000GJ95-3JSa
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 15:26:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sazbA-0001DU-7Z; Mon, 05 Aug 2024 17:26:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sazb9-004k83-Qq; Mon, 05 Aug 2024 17:26:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sazb9-00CeX4-2O;
	Mon, 05 Aug 2024 17:26:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Aug 2024 17:26:11 +0200
Message-Id: <20240805152611.3015730-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_082613_847274_BABE84A6 
X-CRM114-Status: GOOD (  12.02  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] usb: xhci: fix erroneous USB_DT_CONFIG descriptor size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This bug initially manifested itself as an infinite loop printing the
message:

  ERROR: usb2: ifno = 17 > USB_MAXINTERFACES = 16 !

Such a hang could equally happen if actual USB devices besides the root
hub report bogus descriptors. This was fixed by not trusting device-reported
sizes blindly in commit b6a510525e63 ("usb: Use well-known descriptor sizes
when parsing configuration").

The root cause remains though, which is that the xHCI root hub reported
an erroneous size for USB_DT_CONFIG descriptor:

The descriptor size of 0x19 seems to be a copy-paste left-over from
EHCI (USB_DT_CONFIG_SIZE + USB_DT_INTERFACE_SIZE + USB_DT_ENDPOINT_SIZE).
xHCI has an additional USB_DT_SS_EP_COMP_SIZE == 6 for SuperSpeed,
which gets us to 0x19 + 0x6 == 0x1f.

By using 0x19, the memcpy() in xhci_submit_root skipped over the last 6
bytes, but the descriptor itself still had a wTotalLength of 0x1f
leading to a read of 6 uninitialized bytes.

Fix this by using the correct size.

Fixes: 105b2eabd55a ("usb: Add U-Boot xhci driver")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index e7b8344181ee..bad247ff9e19 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -903,7 +903,7 @@ static int xhci_submit_root(struct usb_device *udev, unsigned long pipe,
 		case USB_DT_CONFIG:
 			dev_dbg(&udev->dev, "USB_DT_CONFIG config\n");
 			srcptr = &descriptor.config;
-			srclen = 0x19;
+			srclen = 0x1f;
 			break;
 		case USB_DT_STRING:
 			dev_dbg(&udev->dev, "USB_DT_STRING config\n");
-- 
2.39.2



