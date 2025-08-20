Delivery-date: Wed, 20 Aug 2025 16:32:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrU-002eE5-01
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrR-0006M1-VV
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=95WZR2/IvaE9bawinyDPSxso1dvmxot4cquK/kv3yZ0=; b=uBSH6BO96by6lFYG9Ijf/td2Kf
	6lo5Xm+QNxu4QKwSGrdR4H9ZdNI0zCOA2xbkNJ6SdYqYFtE32i9alFr3dPfJlivdVB+Iy/escCl6r
	Jul6fS3pcnLe5MxIpdqb9DAv7oWDmXZI1S8QxsMBhu451kG1UHg6i7O4CD+BHITT6MLUsOmfb+Lps
	+7y6TXeMtWhDz7v4WvO5rENnw3R3suSBkGUMsRk8gkCI73HMzFc8u5uZthH4saniLFFAYDMCWNmXS
	JmizufwPQ/XFmKYc4v+4gjKg5M5b0ajq8Uff1o2f6a+/YY5Jsg14eyJ/Pmij20oXiKIZx1qN0Cbby
	QTIxdnbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojqu-0000000E4MM-20kE;
	Wed, 20 Aug 2025 14:31:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixJ-0000000DoZg-0V2F
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-0003FN-Ve; Wed, 20 Aug 2025 15:34:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-001Fro-2X;
	Wed, 20 Aug 2025 15:34:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1p;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:18:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-18-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=886;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0vUCJ/hkkT/hAI6CV02ctYq4DsoaFb7aZeiVjUUcbs0=;
 b=0GO03AvGtAX+tO+L10GWpmUMsRBhBLmBz1QQX9BdWFvC5vVRby1hZdqvm7ILEMTNAEKDm8OER
 43AlKFeQqCFBf7bkOeu2E+LKnOEV3sk9DIsQhLS8rE6B1R4zgWtnJRz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_063421_188588_94A18C36 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 18/24] usbserial: add inline wrappers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll need static inline wrappers in following patches, let's add them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/usb/usbserial.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/usb/usbserial.h b/include/linux/usb/usbserial.h
index e1375c489a027448c8e75ce1ce051c279650bcc9..2d33a8e25a7f86a8956805dec1742757e2a7c60f 100644
--- a/include/linux/usb/usbserial.h
+++ b/include/linux/usb/usbserial.h
@@ -7,7 +7,18 @@ struct usb_serial_pdata {
 	bool			acm;
 };
 
+#ifdef CONFIG_USB_GADGET_SERIAL
 int usb_serial_register(struct usb_serial_pdata *pdata);
 void usb_serial_unregister(void);
+#else
+static inline int usb_serial_register(struct usb_serial_pdata *pdata)
+{
+	return -ENOSYS;
+}
+
+static inline void usb_serial_unregister(void)
+{
+}
+#endif
 
 #endif /* _USB_SERIAL_H */

-- 
2.39.5



