Delivery-date: Wed, 17 Sep 2025 16:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszw-0046OH-1a
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszs-0003gZ-Q6
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2pvGiHUxrM8IChXfsXIS+JZyJkJw25O26GTQUtHC9nE=; b=Jrh/wZs4e949ue6V06UlPFeWSh
	RNHhtQgyqzzVOQfraGQ43l9YSGql+0P2VOVoqqERrsj6k8i5kMUUhN0P0sjnr3/0xfOTvXEvZQpVl
	xgGZlYsTqUnXsVBNfYBIrKkmVtatT6TUmt506X7OKYpVGtF5Ltvn5X8sD9sSjh8brCKlv9330kUSp
	tD3slzRueosR3WGy6BxYCDWVaBsScwTwN5ECMNl1b47KkAtaTrGRL4La7t3xhyGJLhCr/rBO87OVX
	zAabFQZvRM2rX7qXWOejvJQJ0toYdb/qBgJyqwMjCWNhJTgKEv7mmYbFbXF6CKwUb2WNn/JiLx4SX
	QK36NIzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszL-0000000C8DU-1J6a;
	Wed, 17 Sep 2025 14:18:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87N-0Blz
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-000315-Gs; Wed, 17 Sep 2025 16:18:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGT-13;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-36Ho;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-19-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=4769;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=b3a9ynG3tEaeiTf5zb3/e6J4H0/sB9Apa2siPLB5FY8=;
 b=WhN9MlbeK6e04VrMvMpdRdNjd/GCJ7gj6s3zeT9uBCd48C4X/97uzLnY2hpYo+gJfmCw9SlJJ
 lHAdlXXyLVaBub1Xsn8w4HSlkICKZRprt4JYlQIPWK+clJQlHU2rNQy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_108946_D67C337D 
X-CRM114-Status: GOOD (  17.07  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 19/24] security: usbgadget: add usbgadget security
 policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

USB gadget might be considered dangerous in secure environments, so add
a security policy for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Sconfig                            |  1 +
 common/usbgadget.c                 | 26 ++++++++++++++++++++++++++
 drivers/usb/gadget/Sconfig         | 11 +++++++++++
 drivers/usb/gadget/composite.c     |  4 ++++
 drivers/usb/gadget/legacy/serial.c |  4 ++++
 5 files changed, 46 insertions(+)

diff --git a/Sconfig b/Sconfig
index f1ae5c7a1482058d170f99c75b706f66a954a9cb..7d7657e79061f4bf200519cf1fab8810b544f97e 100644
--- a/Sconfig
+++ b/Sconfig
@@ -6,4 +6,5 @@ source "scripts/Sconfig.include"
 
 source "security/Sconfig"
 source "common/Sconfig"
+source "drivers/usb/gadget/Sconfig"
 source "commands/Sconfig"
diff --git a/common/usbgadget.c b/common/usbgadget.c
index 1333eaa413eafb766dc74e37e14d5082e93879ac..dc7b3ddc808ee0b1c63d81b914ff915bcc92a863 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -18,6 +18,7 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <system-partitions.h>
+#include <security/config.h>
 
 static int autostart;
 static int nv_loaded;
@@ -81,6 +82,9 @@ int usbgadget_register(struct f_multi_opts *opts)
 	int ret;
 	struct device *dev;
 
+	if (!IS_ALLOWED(SCONFIG_USB_GADGET))
+		return -EPERM;
+
 	/*
 	 * Creating a gadget with both DFU and Fastboot may not work.
 	 * fastboot 1:8.1.0+r23-5 can deal with it, but dfu-util 0.9
@@ -106,6 +110,9 @@ int usbgadget_prepare_register(const struct usbgadget_funcs *funcs)
 	struct f_multi_opts *opts;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_USB_GADGET))
+		return -EPERM;
+
 	opts = usbgadget_prepare(funcs);
 	if (IS_ERR(opts))
 		return PTR_ERR(opts);
@@ -161,6 +168,21 @@ void usbgadget_autostart(bool enable)
 	usbgadget_do_autostart();
 }
 
+static void usbgadget_sconfig_update(struct sconfig_notifier_block *nb,
+				     enum security_config_option opt,
+				     bool allowed)
+{
+        if (allowed) {
+		if (autostart)
+			usbgadget_do_autostart();
+	} else {
+		usb_multi_unregister();
+		usb_serial_unregister();
+	}
+}
+
+static struct sconfig_notifier_block sconfig_notifier;
+
 static int usbgadget_globalvars_init(void)
 {
 	globalvar_add_simple_bool("usbgadget.acm", &acm);
@@ -169,6 +191,10 @@ static int usbgadget_globalvars_init(void)
 		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set,
 				   &autostart, NULL);
 
+	sconfig_register_handler_filtered(&sconfig_notifier,
+                                          usbgadget_sconfig_update,
+                                          SCONFIG_USB_GADGET);
+
 	return 0;
 }
 coredevice_initcall(usbgadget_globalvars_init);
diff --git a/drivers/usb/gadget/Sconfig b/drivers/usb/gadget/Sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..38797301e514c203f75f876fa54971846d39d292
--- /dev/null
+++ b/drivers/usb/gadget/Sconfig
@@ -0,0 +1,11 @@
+
+menu "USB Gadget Policy"
+
+config USB_GADGET
+	bool "Allow USB gadget"
+	depends on $(kconfig-enabled,USB_GADGET)
+	help
+	  USB gadget support might be potentially dangerous in secure environments.
+	  The DFU and fastboot protocols allow to modify system partitions.
+
+endmenu
diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 98f7b5bf7fb412b77f8a926375df3f0ffbbc96da..2a9984e37ad3ec1325822eb2d328481ceb3ff906 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -15,6 +15,7 @@
 #include <linux/usb/composite.h>
 #include <linux/bitfield.h>
 #include <linux/uuid.h>
+#include <security/config.h>
 #include <asm/unaligned.h>
 #include <asm/byteorder.h>
 
@@ -2489,6 +2490,9 @@ int usb_composite_probe(struct usb_composite_driver *driver)
 {
 	struct usb_gadget_driver *gadget_driver;
 
+	if (!IS_ALLOWED(SCONFIG_USB_GADGET))
+		return -EPERM;
+
 	if (!driver || !driver->dev || !driver->bind)
 		return -EINVAL;
 
diff --git a/drivers/usb/gadget/legacy/serial.c b/drivers/usb/gadget/legacy/serial.c
index 913d174a917794e7cab0f8006b8fd814887029f4..700e9db3a57462e331936efd303c6614544b251a 100644
--- a/drivers/usb/gadget/legacy/serial.c
+++ b/drivers/usb/gadget/legacy/serial.c
@@ -15,6 +15,7 @@
 #include <linux/usb/gadget.h>
 #include <linux/usb/composite.h>
 #include <linux/usb/usbserial.h>
+#include <security/config.h>
 #include <asm/byteorder.h>
 
 #include "u_serial.h"
@@ -253,6 +254,9 @@ int usb_serial_register(struct usb_serial_pdata *pdata)
 {
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_USB_GADGET))
+		return -EPERM;
+
 	if (usb_serial_registered) {
 		pr_err("USB serial gadget already registered\n");
 		return -EBUSY;

-- 
2.47.3



