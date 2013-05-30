Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0Tt-0004Qi-4d
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:53:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:52:46 +0200
Message-Id: <1369911168-15654-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369911168-15654-1-git-send-email-s.hauer@pengutronix.de>
References: <1369911168-15654-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] usb: Add devicetree helpers
To: barebox@lists.infradead.org

Add helpers to get the dr_mode and the phy_mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/Makefile |  1 +
 drivers/usb/core/of.c     | 91 +++++++++++++++++++++++++++++++++++++++++++++++
 include/usb/usb.h         | 21 +++++++++++
 3 files changed, 113 insertions(+)
 create mode 100644 drivers/usb/core/of.c

diff --git a/drivers/usb/core/Makefile b/drivers/usb/core/Makefile
index d49c68d..368fb56 100644
--- a/drivers/usb/core/Makefile
+++ b/drivers/usb/core/Makefile
@@ -1,2 +1,3 @@
 
 obj-y += usb.o
+obj-$(CONFIG_OFDEVICE) += of.o
diff --git a/drivers/usb/core/of.c b/drivers/usb/core/of.c
new file mode 100644
index 0000000..222b760
--- /dev/null
+++ b/drivers/usb/core/of.c
@@ -0,0 +1,91 @@
+/*
+ * usb devicetree helper functions
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <usb/usb.h>
+#include <of.h>
+
+static const char *usb_dr_modes[] = {
+	[USB_DR_MODE_UNKNOWN]		= "",
+	[USB_DR_MODE_HOST]		= "host",
+	[USB_DR_MODE_PERIPHERAL]	= "peripheral",
+	[USB_DR_MODE_OTG]		= "otg",
+};
+
+/**
+ * of_usb_get_dr_mode - Get dual role mode for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * The function gets phy interface string from property 'dr_mode',
+ * and returns the correspondig enum usb_dr_mode
+ */
+enum usb_dr_mode of_usb_get_dr_mode(struct device_node *np,
+		const char *propname)
+{
+	const char *dr_mode;
+	int err, i;
+
+	if (!propname)
+		propname = "barebox,dr_mode";
+
+	err = of_property_read_string(np, propname, &dr_mode);
+	if (err < 0)
+		return USB_DR_MODE_UNKNOWN;
+
+	for (i = 0; i < ARRAY_SIZE(usb_dr_modes); i++)
+		if (!strcmp(dr_mode, usb_dr_modes[i]))
+			return i;
+
+	return USB_DR_MODE_UNKNOWN;
+}
+EXPORT_SYMBOL_GPL(of_usb_get_dr_mode);
+
+static const char *usbphy_modes[] = {
+	[USBPHY_INTERFACE_MODE_UNKNOWN]	= "",
+	[USBPHY_INTERFACE_MODE_UTMI]	= "utmi",
+	[USBPHY_INTERFACE_MODE_UTMIW]	= "utmi_wide",
+	[USBPHY_INTERFACE_MODE_ULPI]	= "ulpi",
+	[USBPHY_INTERFACE_MODE_SERIAL]	= "serial",
+	[USBPHY_INTERFACE_MODE_HSIC]	= "hsic",
+};
+
+/**
+ * of_usb_get_phy_mode - Get phy mode for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * The function gets phy interface string from property 'phy_type',
+ * and returns the correspondig enum usb_phy_interface
+ */
+enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
+		const char *propname)
+{
+	const char *phy_type;
+	int err, i;
+
+	if (!propname)
+		propname = "barebox,phy_type";
+
+	err = of_property_read_string(np, propname, &phy_type);
+	if (err < 0)
+		return USBPHY_INTERFACE_MODE_UNKNOWN;
+
+	for (i = 0; i < ARRAY_SIZE(usbphy_modes); i++)
+		if (!strcmp(phy_type, usbphy_modes[i]))
+			return i;
+
+	return USBPHY_INTERFACE_MODE_UNKNOWN;
+}
+EXPORT_SYMBOL_GPL(of_usb_get_phy_mode);
diff --git a/include/usb/usb.h b/include/usb/usb.h
index b270012..da0090e 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -519,4 +519,25 @@ struct usb_device_id {
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
+enum usb_dr_mode of_usb_get_dr_mode(struct device_node *np,
+		const char *propname);
+
+enum usb_dr_mode {
+	USB_DR_MODE_UNKNOWN,
+	USB_DR_MODE_HOST,
+	USB_DR_MODE_PERIPHERAL,
+	USB_DR_MODE_OTG,
+};
+
+enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
+		const char *propname);
+
+enum usb_phy_interface {
+	USBPHY_INTERFACE_MODE_UNKNOWN,
+	USBPHY_INTERFACE_MODE_UTMI,
+	USBPHY_INTERFACE_MODE_UTMIW,
+	USBPHY_INTERFACE_MODE_ULPI,
+	USBPHY_INTERFACE_MODE_SERIAL,
+	USBPHY_INTERFACE_MODE_HSIC,
+};
 #endif /*_USB_H_ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
