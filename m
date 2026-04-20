Delivery-date: Mon, 20 Apr 2026 11:03:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXK-00EHew-16
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 11:03:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXJ-00024Z-Mw
	for lore@pengutronix.de; Mon, 20 Apr 2026 11:03:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mfVu5ImRVTRoMw64GTXlU8Y0xRVFhyKFeKpsLDbG9w8=; b=YVCuKMxBDqnxz2MDD+/TV+o/3L
	wA0U6Pp00yjDF9KdWfoscDeCQ9LNpQBWerg326Zl04Zz82hdY1Ito4caPODZBn3tQo345bxVZmDR4
	VpJF01PjYS8fkLSKUDWEdqqJrh9F430asAptLARQGORWnv0O/8KNdzIiOisU045Idw7YM3BVN+qk7
	MLlWm6q+nEUOHo7sMHvY2qr/PgJs7m85FFBpmfFwvL7BKBfF+LFJd5Z1WHzJYiW3p1AiV1Jur4ifP
	XuhyiZRxcf9+6pu7/d+xkjvzY6qleesnoW0XkGPZ5ao9nJuX471w3sjZMY5yvxHcm5lcDYK4LyudS
	EOyvG7Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWO-00000006eDr-2nf6;
	Mon, 20 Apr 2026 09:02:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWL-00000006eCV-0yhs
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 09:02:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-0001gG-QO; Mon, 20 Apr 2026 11:02:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-006Iwl-1d;
	Mon, 20 Apr 2026 11:02:19 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-00000006TEi-1hge;
	Mon, 20 Apr 2026 11:02:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 11:02:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-usb-typec-stusb160x-v1-3-5875bbae80ab@pengutronix.de>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
In-Reply-To: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776675739; l=2718;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=X/fibSuy6BCM3zK782SJjGyQd1Yo/b0NQOhTivuPeTo=;
 b=vIHzXMTqkUKJ9+NDoCfPqdg6z/Mwxl28SAUZqYF4tYf1gMWlNE2ljmBMMUM8y6jQ4Xg0rvkmN
 KUpDvfye/aJC52ntBfKS1vVjD5FAImvlKo0m4CPf2Et8cN+yUfFhmqy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_020221_337485_1EED8B17 
X-CRM114-Status: UNSURE (   9.95  )
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
Cc: "Claude Sonnet 4.6" <noreply@anthropic.com>
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
Subject: [PATCH 3/4] usb: typec: add typec_find_port_power_role() and
 typec_find_pwr_opmode()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add helpers to parse 'power-role' and 'typec-power-opmode' DT strings
into their respective enum values, mirroring the Linux typec framework.

Move enum typec_port_type and enum typec_pwr_opmode from driver-local
definitions into the typec framework header where they belong.

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/typec/class.c | 28 ++++++++++++++++++++++++++++
 include/linux/usb/typec.h | 16 ++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index b88e1c1e46..363c5b8cbb 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -11,6 +11,7 @@
 #include <init.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
+#include <linux/string.h>
 #include <linux/usb/role.h>
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_altmode.h>
@@ -151,6 +152,33 @@ void *typec_get_drvdata(struct typec_port *port)
 }
 EXPORT_SYMBOL_GPL(typec_get_drvdata);
 
+static const char * const typec_port_power_roles[] = {
+	[TYPEC_PORT_SRC] = "source",
+	[TYPEC_PORT_SNK] = "sink",
+	[TYPEC_PORT_DRP] = "dual",
+};
+
+static const char * const typec_pwr_opmodes[] = {
+	[TYPEC_PWR_MODE_USB]  = "default",
+	[TYPEC_PWR_MODE_1_5A] = "1.5A",
+	[TYPEC_PWR_MODE_3_0A] = "3.0A",
+	[TYPEC_PWR_MODE_PD]   = "usb_power_delivery",
+};
+
+int typec_find_port_power_role(const char *name)
+{
+	return match_string(typec_port_power_roles,
+			    ARRAY_SIZE(typec_port_power_roles), name);
+}
+EXPORT_SYMBOL_GPL(typec_find_port_power_role);
+
+int typec_find_pwr_opmode(const char *name)
+{
+	return match_string(typec_pwr_opmodes,
+			    ARRAY_SIZE(typec_pwr_opmodes), name);
+}
+EXPORT_SYMBOL_GPL(typec_find_pwr_opmode);
+
 static int typec_register_port_dev(struct typec_port *port, const char *name, int id)
 {
 	port->dev.id = id;
diff --git a/include/linux/usb/typec.h b/include/linux/usb/typec.h
index 315dee95e4..a8fa314d9e 100644
--- a/include/linux/usb/typec.h
+++ b/include/linux/usb/typec.h
@@ -8,6 +8,19 @@
 
 struct typec_port;
 
+enum typec_port_type {
+	TYPEC_PORT_SRC,
+	TYPEC_PORT_SNK,
+	TYPEC_PORT_DRP,
+};
+
+enum typec_pwr_opmode {
+	TYPEC_PWR_MODE_USB,
+	TYPEC_PWR_MODE_1_5A,
+	TYPEC_PWR_MODE_3_0A,
+	TYPEC_PWR_MODE_PD,
+};
+
 struct device;
 struct device_node;
 
@@ -51,4 +64,7 @@ int typec_set_role(struct typec_port *port, enum usb_role role);
 
 void *typec_get_drvdata(struct typec_port *port);
 
+int typec_find_port_power_role(const char *name);
+int typec_find_pwr_opmode(const char *name);
+
 #endif /* __LINUX_USB_TYPEC_H */

-- 
2.47.3



