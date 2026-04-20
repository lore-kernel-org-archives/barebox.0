Delivery-date: Mon, 20 Apr 2026 11:03:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXG-00EHeW-0p
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 11:03:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEkXF-00023h-J9
	for lore@pengutronix.de; Mon, 20 Apr 2026 11:03:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wCDaYy4+JXXKt3bDhAYXuB5Nzi3YvHOUQ21hZ/Jf7zQ=; b=czDHNDgJlZRppR+MVHGrPJbvij
	Dx4gFXwm1BJIR9ZUOPmSbNFnJjZ8GWqzY1mG5NIY7enBUfjyM93HJQ0xpIO/7G7qHSEgV1FKUS+75
	DX09Lvq0SLwFTjuWGMyDNCyd9d/H0P1knAJn/F50G8WLBIgR+a+8S3aHgcW0/hxuBpXaALQKdtvLv
	3t9qZNKnQc6tIhXUOxVS52zDMk/mtM93Y5hZN16qUr6zbRUExOF0hWZUqL9+b+OOb991ScBSN6m7M
	VgrSrOuk5H+hMs0bl3GHm6dpKLRc6bVauICQv3nnXglZtaclyXArF6A8/tQ+YCEox6zBrW6zz5ZG3
	n45CIijw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWV-00000006eGY-3LB1;
	Mon, 20 Apr 2026 09:02:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEkWT-00000006eFT-103D
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 09:02:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-0001gI-QO; Mon, 20 Apr 2026 11:02:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-006Iwj-1e;
	Mon, 20 Apr 2026 11:02:19 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wEkWJ-00000006TEi-1geO;
	Mon, 20 Apr 2026 11:02:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Apr 2026 11:02:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-usb-typec-stusb160x-v1-2-5875bbae80ab@pengutronix.de>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
In-Reply-To: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776675739; l=3683;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OKrYr/EGU4/DPQQ6I385peP5TuuJVFhEePbZAc0C6Os=;
 b=ACPkWPB/82QoVjMRjahs3MSMeBRrj92Dg2VLoXOniJhkUmzQd1DOxHQZIYmuKie0T6yH/PpW2
 YzLVL+yZXWKD0zzLmZSfWyFxhznyFoGNr4ctlllQVKv3U/tdz9f6miN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_020229_289141_C815DB64 
X-CRM114-Status: GOOD (  15.50  )
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
Subject: [PATCH 2/4] usb: typec: wire USB role changes to OTG device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When a Type-C controller reports a USB role change via typec_set_role(),
find the associated OTG device via the OF graph and set its dr_mode
accordingly.

Since the Type-C controller may probe before the OTG device registers,
a late_initcall sweeps all known ports and applies any role that was not
yet forwarded.

Co-Authored-By: Claude Sonnet 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/typec/class.c | 60 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
index e03eaccbb9..b88e1c1e46 100644
--- a/drivers/usb/typec/class.c
+++ b/drivers/usb/typec/class.c
@@ -8,10 +8,15 @@
 
 #include <module.h>
 #include <driver.h>
+#include <init.h>
 #include <linux/kernel.h>
+#include <linux/list.h>
 #include <linux/usb/role.h>
 #include <linux/usb/typec.h>
 #include <linux/usb/typec_altmode.h>
+#include <linux/usb/usb.h>
+#include <linux/device/bus.h>
+#include <of_graph.h>
 #include <param.h>
 
 enum typec_param_accessory {
@@ -22,12 +27,16 @@ enum typec_param_accessory {
 
 struct typec_port {
 	struct device dev;
+	struct list_head list;
 	const struct typec_operations *ops;
 	int pwr_role;		/* enum typec_role */
 	int usb_role;		/* enum usb_role role */
 	int accessory;		/* enum typec_param_accessory */
+	bool otg_role_applied;
 };
 
+static LIST_HEAD(typec_port_list);
+
 /**
  * typec_set_pwr_role - Report power role change
  * @port: The USB Type-C Port where the role was changed
@@ -68,6 +77,41 @@ int typec_set_mode(struct typec_port *port, int mode)
 }
 EXPORT_SYMBOL_GPL(typec_set_mode);
 
+static bool typec_apply_otg_role(struct typec_port *port)
+{
+	struct device_node *connector = port->dev.of_node;
+	struct device_node *ep, *remote;
+	struct device *dev;
+	enum usb_dr_mode dr_mode;
+	bool applied = false;
+
+	if (!IS_ENABLED(CONFIG_USB_OTGDEV) || !connector)
+		return false;
+
+	if (port->usb_role == USB_ROLE_HOST)
+		dr_mode = USB_DR_MODE_HOST;
+	else if (port->usb_role == USB_ROLE_DEVICE)
+		dr_mode = USB_DR_MODE_PERIPHERAL;
+	else
+		return false;
+
+	for_each_endpoint_of_node(connector, ep) {
+		remote = of_graph_get_remote_port_parent(ep);
+		if (!remote)
+			continue;
+
+		bus_for_each_device(&otg_bus_type, dev) {
+			if (dev->parent && dev->parent->of_node == remote) {
+				otg_device_set_dr_mode(dev, dr_mode);
+				applied = true;
+				break;
+			}
+		}
+	}
+
+	return applied;
+}
+
 /**
  * typec_set_role - Set USB role for a Type-C connector
  * @port: USB Type-C connector
@@ -79,10 +123,24 @@ EXPORT_SYMBOL_GPL(typec_set_mode);
 int typec_set_role(struct typec_port *port, enum usb_role role)
 {
 	port->usb_role = role;
+	port->otg_role_applied = typec_apply_otg_role(port);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(typec_set_role);
 
+static int typec_apply_otg_roles(void)
+{
+	struct typec_port *port;
+
+	list_for_each_entry(port, &typec_port_list, list) {
+		if (!port->otg_role_applied)
+			port->otg_role_applied = typec_apply_otg_role(port);
+	}
+
+	return 0;
+}
+late_initcall(typec_apply_otg_roles);
+
 /**
  * typec_get_drvdata - Return private driver data pointer
  * @port: USB Type-C port
@@ -165,6 +223,8 @@ struct typec_port *typec_register_port(struct device *parent,
 	if (dev->of_node)
 		dev->of_node->dev = dev;
 
+	list_add_tail(&port->list, &typec_port_list);
+
 	dev_add_param_enum(dev, "usb_role", param_set_readonly, typec_param_update,
 			   &port->usb_role, usb_role_names,
 			   ARRAY_SIZE(usb_role_names), port);

-- 
2.47.3



