Delivery-date: Tue, 02 Apr 2024 10:47:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZnI-00380F-20
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 10:47:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZnH-00028k-Df
	for lore@pengutronix.de; Tue, 02 Apr 2024 10:47:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7HOlzy3Hkb7VaXaJ4dO0lLASvh5NF69HQmj7X5lajwo=; b=ZIxjtQxCAK0spYOXh13xnXsrHi
	DI32HXRJaITS52egHR3+H5sigmN6ocR6GTl1NUEfNpPyJfxhGoKlARJuqiqtbAKAvG3R2b6efmwJ/
	2fNgFZ5VtuqqkbNo1pNbYKI+oq0sIkirKNa05pEK+oUd0fZIbKTnlQptbckbxwqYtONy3M5x8shrz
	12PiyoVNLHL0sd3s8Cb0wwfQK2VL9AR5T5U5goJg3dvYoerSZhvEgQspgukx5so9PPuuZonikZuUs
	ir8w8VLMch0w1Yc7CjV2568WnGGQ6LCV0Dr/AQAK7OU7LcDFzHKRs3xHswaP5Mwrrio+1k3j/g1+P
	Je0zJovA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZmh-0000000AIyq-1tLM;
	Tue, 02 Apr 2024 08:46:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZme-0000000AIx3-0Rze
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 08:46:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZmc-0001Vl-L9; Tue, 02 Apr 2024 10:46:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZmc-009wl7-54; Tue, 02 Apr 2024 10:46:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZmc-00EQDf-0B;
	Tue, 02 Apr 2024 10:46:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: David Jander <david@protonic.nl>
Date: Tue,  2 Apr 2024 10:46:16 +0200
Message-Id: <20240402084616.3437060-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_014620_194283_4289B574 
X-CRM114-Status: GOOD (  10.20  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: usb: ax88179_178a.c: Add 2 new USB ids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

Add support for the Sitecom USB 3.0 to Gigabit Adapter and the
Belkin Gigabit Ethernet Adapter. The existing driver works as is, so
only add the IDs.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/net/usb/ax88179_178a.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
index c6108c488b..067b0c2f9e 100644
--- a/drivers/net/usb/ax88179_178a.c
+++ b/drivers/net/usb/ax88179_178a.c
@@ -723,6 +723,10 @@ static const struct usb_device_id products[] = {
 	/* Sitecom USB 3.0 to Gigabit Adapter */
 	USB_DEVICE(0x0df6, 0x0072),
 	.driver_info = &sitecom_info,
+}, {
+	/* Sitecom USB 3.0 to Gigabit Adapter */
+	USB_DEVICE(0x0df6, 0x0056),
+	.driver_info = &sitecom_info,
 }, {
 	/* Samsung USB Ethernet Adapter */
 	USB_DEVICE(0x04e8, 0xa100),
@@ -735,6 +739,10 @@ static const struct usb_device_id products[] = {
 	/* Belkin B2B128 USB 3.0 Hub + Gigabit Ethernet Adapter */
 	USB_DEVICE(0x050d, 0x0128),
 	.driver_info = &belkin_info,
+}, {
+	/* Belkin Gigabit Ethernet Adapter */
+	USB_DEVICE(0x050d, 0x5055),
+	.driver_info = &belkin_info,
 },
 	{ },
 };
-- 
2.39.2



