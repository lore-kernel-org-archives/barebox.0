Delivery-date: Mon, 20 Apr 2026 11:03:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXE-00EHe6-1u
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 11:03:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXE-00023F-1G
	for lore@pengutronix.de; Mon, 20 Apr 2026 11:03:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3UPgs62Q+Eg/KzpHv1FaK4Hu8JtzM97AuRGBUNVZCqU=; b=Or1O7ts9f390QUxPuYWg0HGay7
	oDV8xFCncP9MQ9oILN6MjSNfIrhXdlffew/XvSdCjneydZ1QO4+UoZqhd2ZA4FX92a2EHFixIi4/L
	210/61pqHc6ZxWTPrwmtQ+R9KeAKTQ4K2oe/7rkmA6y034oj8N/sA+N4Cl+M4rAvlV3mh5hPzKm26
	fk5fyx1PT9IVr0yRCidxTGOZCvjVzPkYFyb3zmppkFNZy3ijXDj964b6nJnP5F1qKEcoW0Hdj+YQU
	WTeVNIy5ciJyTH1Qu01AIxZEavd6xXuXoFSmUU7Cz97T1yi9C48hQS5wVB2GP76T3KiSupoPLyNnM
	0NGZptFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWQ-00000006eE8-1QCn;
	Mon, 20 Apr 2026 09:02:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWL-00000006eCS-0yX4
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 09:02:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-0001gJ-OT; Mon, 20 Apr 2026 11:02:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-006Iwi-1d;
	Mon, 20 Apr 2026 11:02:19 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-00000006TEi-1fZH;
	Mon, 20 Apr 2026 11:02:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 11:02:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-usb-typec-stusb160x-v1-1-5875bbae80ab@pengutronix.de>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
In-Reply-To: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776675739; l=1497;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Sjf0bV/Br5BAYd6zuQNNavqG7fVLGRw9/bdVCzlmfu4=;
 b=wRTRZ3jT+3vRqyBH1PGuA6jvHq/n8WVtgNB7Wc+D0kLJBxRDWrsshMp/0GkEw2n84WSN4gvY8
 B9BwVOrBxaQDJkAFrXcsKmM1kOaKmBUZdICasy4q/2YlLdJt1juMu3b
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_020221_337187_5A736E7D 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] usb: otg: Add function to set dr_mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we can only set the dr_mode on the command line. Add a function
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/otg/otgdev.c | 20 ++++++++++++++++++++
 include/linux/usb/usb.h  |  1 +
 2 files changed, 21 insertions(+)

diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index 5a86263430..50d8105be3 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -74,6 +74,26 @@ int otg_device_get_mode(struct device *dev)
 	return otg->cur_mode;
 }
 
+int otg_device_set_dr_mode(struct device *dev, enum usb_dr_mode mode)
+{
+	struct otg_mode *otg;
+	int ret;
+
+	if (dev->bus != &otg_bus_type)
+		return -ENODEV;
+
+	otg = dev->priv;
+
+	ret = otg->set_mode_callback(otg->ctx, mode);
+	if (ret)
+		return ret;
+
+	otg->cur_mode = mode;
+	otg->var_mode = mode;
+
+	return 0;
+}
+
 int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
 {
diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
index c25f3d73c3..6aa9e55cc9 100644
--- a/include/linux/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -477,6 +477,7 @@ int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx);
 
 int otg_device_get_mode(struct device *dev);
+int otg_device_set_dr_mode(struct device *dev, enum usb_dr_mode mode);
 
 extern struct bus_type otg_bus_type;
 

-- 
2.47.3



