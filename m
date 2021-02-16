Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC4Iw-0001tt-5E
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 17:38:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 0D0CB1A5AAC
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2021 17:38:26 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KL8AIMTO
 for barebox@lists.infradead.org;
 Tue, 16 Feb 2021 17:38:25 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id CE99D1A5AAB
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2021 17:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id A706A27E09CB
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2021 18:38:25 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 16 Feb 2021 18:38:11 +0100
Message-Id: <20210216173811.4550-1-jmaselbas@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] usb: otg: Add support to register more than one otg dev
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

This allow each otg controller to register one otg device for
host/peripheral mode switch. The first otg device registered
"otg0" will also be aliased by "otg" for compatibility.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/otg/otgdev.c | 63 +++++++++++++++++++++++++++-------------
 1 file changed, 43 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index 52f43b75d..734b87266 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -4,28 +4,33 @@
 #include <driver.h>
 #include <usb/usb.h>
 
-static int (*set_mode_callback)(void *ctx, enum usb_dr_mode mode);
-static unsigned int otg_mode;
+struct otg_mode {
+	struct device_d dev;
+	unsigned int var_mode;
+	unsigned int cur_mode;
+	int (*set_mode_callback)(void *ctx, enum usb_dr_mode mode);
+	void *ctx;
+};
 
 static int otg_set_mode(struct param_d *param, void *ctx)
 {
-	static int cur_mode = USB_DR_MODE_OTG;
+	struct otg_mode *otg = ctx;
 	int ret;
 
-	if (otg_mode == USB_DR_MODE_UNKNOWN)
+	if (otg->var_mode == USB_DR_MODE_UNKNOWN)
 		return -EINVAL;
 
-	if (otg_mode == cur_mode)
+	if (otg->var_mode == otg->cur_mode)
 		return 0;
 
-	if (cur_mode != USB_DR_MODE_OTG)
+	if (otg->cur_mode != USB_DR_MODE_OTG)
 		return -EBUSY;
 
-	ret = set_mode_callback(ctx, otg_mode);
+	ret = otg->set_mode_callback(otg->ctx, otg->var_mode);
 	if (ret)
 		return ret;
 
-	cur_mode = otg_mode;
+	otg->cur_mode = otg->var_mode;
 
 	return 0;
 }
@@ -47,20 +52,38 @@ int usb_register_otg_device(struct device_d *parent,
 {
 	int ret;
 	struct param_d *param_mode;
-
-	if (otg_device.parent)
-		return -EBUSY;
-
-	otg_device.parent = parent;
-	set_mode_callback = set_mode;
-	otg_mode = USB_DR_MODE_OTG;
-
-	ret = register_device(&otg_device);
+	struct otg_mode *otg;
+
+	otg = xmalloc(sizeof(*otg));
+	otg->dev.priv = otg;
+	otg->dev.parent = parent;
+	otg->dev.id = DEVICE_ID_DYNAMIC;
+	dev_set_name(&otg->dev, "otg");
+
+	otg->var_mode = USB_DR_MODE_OTG;
+	otg->cur_mode = USB_DR_MODE_OTG;
+	otg->set_mode_callback = set_mode;
+	otg->ctx = ctx;
+
+	/* register otg.mode as an alias of otg0.mode */
+	if (otg_device.parent == NULL) {
+		otg_device.parent = parent;
+		ret = register_device(&otg_device);
+		if (ret)
+			return ret;
+
+		param_mode = dev_add_param_enum(&otg_device, "mode",
+				otg_set_mode, NULL, &otg->var_mode,
+				otg_mode_names, ARRAY_SIZE(otg_mode_names), otg);
+	}
+
+	ret = register_device(&otg->dev);
 	if (ret)
 		return ret;
 
-	param_mode = dev_add_param_enum(&otg_device, "mode",
-			otg_set_mode, NULL, &otg_mode,
-			otg_mode_names, ARRAY_SIZE(otg_mode_names), ctx);
+	param_mode = dev_add_param_enum(&otg->dev, "mode",
+			otg_set_mode, NULL, &otg->var_mode,
+			otg_mode_names, ARRAY_SIZE(otg_mode_names), otg);
+
 	return PTR_ERR_OR_ZERO(param_mode);
 }
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
