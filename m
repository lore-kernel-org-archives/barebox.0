Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkNz-0000Nk-2O
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 11:12:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Nov 2019 12:12:23 +0100
Message-Id: <20191121111226.5036-2-s.hauer@pengutronix.de>
In-Reply-To: <20191121111226.5036-1-s.hauer@pengutronix.de>
References: <20191121111226.5036-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] usb: Add function to register otg dev
To: Barebox List <barebox@lists.infradead.org>

We have two drivers in the tree which register an "otg" device to
configure the host/peripheral switching. Before introducing a third
driver create a common function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/otg/Kconfig  |  4 +++
 drivers/usb/otg/Makefile |  2 +-
 drivers/usb/otg/otgdev.c | 69 ++++++++++++++++++++++++++++++++++++++++
 include/usb/usb.h        |  3 ++
 4 files changed, 77 insertions(+), 1 deletion(-)
 create mode 100644 drivers/usb/otg/otgdev.c

diff --git a/drivers/usb/otg/Kconfig b/drivers/usb/otg/Kconfig
index 2c9fb46e4d..2c094452b6 100644
--- a/drivers/usb/otg/Kconfig
+++ b/drivers/usb/otg/Kconfig
@@ -6,3 +6,7 @@ config USB_ULPI
 config USB_TWL4030
 	depends on MFD_TWL4030
 	bool "TWL4030 Transceiver support"
+
+config USB_OTGDEV
+	bool
+
diff --git a/drivers/usb/otg/Makefile b/drivers/usb/otg/Makefile
index 465a7f098c..49c2491e58 100644
--- a/drivers/usb/otg/Makefile
+++ b/drivers/usb/otg/Makefile
@@ -1,3 +1,3 @@
 obj-$(CONFIG_USB_ULPI)		+= ulpi.o
 obj-$(CONFIG_USB_TWL4030)	+= twl4030.o
-
+obj-$(CONFIG_USB_OTGDEV)	+= otgdev.o
diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
new file mode 100644
index 0000000000..7017796e8c
--- /dev/null
+++ b/drivers/usb/otg/otgdev.c
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <driver.h>
+#include <usb/usb.h>
+
+static int (*set_mode_callback)(void *ctx, enum usb_dr_mode mode);
+static unsigned int otg_mode;
+
+static int otg_set_mode(struct param_d *param, void *ctx)
+{
+	static int cur_mode = USB_DR_MODE_OTG;
+	int ret;
+
+	if (otg_mode == USB_DR_MODE_UNKNOWN)
+		return -EINVAL;
+
+	if (otg_mode == cur_mode)
+		return 0;
+
+	if (cur_mode != USB_DR_MODE_OTG)
+		return -EBUSY;
+
+	ret = set_mode_callback(ctx, otg_mode);
+	if (ret)
+		return ret;
+
+	cur_mode = otg_mode;
+
+	return 0;
+}
+
+static const char *otg_mode_names[] = {
+	[USB_DR_MODE_UNKNOWN] = "unknown",
+	[USB_DR_MODE_HOST] = "host",
+	[USB_DR_MODE_PERIPHERAL] = "peripheral",
+	[USB_DR_MODE_OTG] = "otg",
+};
+
+static struct device_d otg_device = {
+	.name = "otg",
+	.id = DEVICE_ID_SINGLE,
+};
+
+int usb_register_otg_device(struct device_d *parent,
+			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
+{
+	int ret;
+	struct param_d *param_mode;
+
+	if (otg_device.parent)
+		return -EBUSY;
+
+	otg_device.parent = parent;
+	set_mode_callback = set_mode;
+	otg_mode = USB_DR_MODE_OTG;
+
+	ret = register_device(&otg_device);
+	if (ret)
+		return ret;
+
+	param_mode = dev_add_param_enum(&otg_device, "mode",
+			otg_set_mode, NULL, &otg_mode,
+			otg_mode_names, ARRAY_SIZE(otg_mode_names), ctx);
+	if (IS_ERR(param_mode))
+		return PTR_ERR(param_mode);
+
+	return 0;
+}
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 0045608d64..d39de71aff 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -444,6 +444,9 @@ enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
 enum usb_device_speed of_usb_get_maximum_speed(struct device_node *np,
 		const char *propname);
 
+int usb_register_otg_device(struct device_d *parent,
+			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx);
+
 extern struct list_head usb_device_list;
 
 #endif /*_USB_H_ */
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
