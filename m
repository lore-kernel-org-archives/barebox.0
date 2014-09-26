Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQoI-0005KZ-0F
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:23:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:07 +0200
Message-Id: <1411719735-30949-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] USB: add usb phy header file
To: barebox@lists.infradead.org

Mostly taken from the Linux Kernel to ease porting phy
handling code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/of.c          |   1 +
 drivers/usb/imx/chipidea-imx.c |   1 +
 include/usb/phy.h              | 220 +++++++++++++++++++++++++++++++++++++++++
 include/usb/usb.h              |   9 --
 4 files changed, 222 insertions(+), 9 deletions(-)
 create mode 100644 include/usb/phy.h

diff --git a/drivers/usb/core/of.c b/drivers/usb/core/of.c
index 1ddbdaa..fd20368 100644
--- a/drivers/usb/core/of.c
+++ b/drivers/usb/core/of.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <usb/usb.h>
+#include <usb/phy.h>
 #include <of.h>
 
 static const char *usb_dr_modes[] = {
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 62feae8..959f5ba 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -22,6 +22,7 @@
 #include <usb/ehci.h>
 #include <regulator.h>
 #include <usb/chipidea-imx.h>
+#include <usb/phy.h>
 #include <usb/ulpi.h>
 #include <usb/fsl_usb2.h>
 
diff --git a/include/usb/phy.h b/include/usb/phy.h
new file mode 100644
index 0000000..057ad1c
--- /dev/null
+++ b/include/usb/phy.h
@@ -0,0 +1,220 @@
+/* USB OTG (On The Go) defines */
+/*
+ *
+ * These APIs may be used between USB controllers.  USB device drivers
+ * (for either host or peripheral roles) don't use these calls; they
+ * continue to use just usb_device and usb_gadget.
+ */
+
+#ifndef __LINUX_USB_PHY_H
+#define __LINUX_USB_PHY_H
+
+#include <notifier.h>
+#include <usb/usb.h>
+#include <linux/err.h>
+
+enum usb_phy_interface {
+	USBPHY_INTERFACE_MODE_UNKNOWN,
+	USBPHY_INTERFACE_MODE_UTMI,
+	USBPHY_INTERFACE_MODE_UTMIW,
+	USBPHY_INTERFACE_MODE_ULPI,
+	USBPHY_INTERFACE_MODE_SERIAL,
+	USBPHY_INTERFACE_MODE_HSIC,
+};
+
+enum usb_phy_events {
+	USB_EVENT_NONE,         /* no events or cable disconnected */
+	USB_EVENT_VBUS,         /* vbus valid event */
+	USB_EVENT_ID,           /* id was grounded */
+	USB_EVENT_CHARGER,      /* usb dedicated charger */
+	USB_EVENT_ENUMERATED,   /* gadget driver enumerated */
+};
+
+/* associate a type with PHY */
+enum usb_phy_type {
+	USB_PHY_TYPE_UNDEFINED,
+	USB_PHY_TYPE_USB2,
+	USB_PHY_TYPE_USB3,
+};
+
+struct usb_phy;
+
+/* for transceivers connected thru an ULPI interface, the user must
+ * provide access ops
+ */
+struct usb_phy_io_ops {
+	int (*read)(struct usb_phy *x, u32 reg);
+	int (*write)(struct usb_phy *x, u32 val, u32 reg);
+};
+
+struct usb_phy {
+	struct device_d		*dev;
+	const char		*label;
+	unsigned int		 flags;
+
+	enum usb_phy_type	type;
+	enum usb_phy_events	last_event;
+
+	struct usb_phy_io_ops	*io_ops;
+	void __iomem		*io_priv;
+
+	/* to pass extra port status to the root hub */
+	u16			port_status;
+	u16			port_change;
+
+	/* to support controllers that have multiple transceivers */
+	struct list_head	head;
+
+	/* initialize/shutdown the OTG controller */
+	int	(*init)(struct usb_phy *x);
+	void	(*shutdown)(struct usb_phy *x);
+
+	/* enable/disable VBUS */
+	int	(*set_vbus)(struct usb_phy *x, int on);
+
+	/* effective for B devices, ignored for A-peripheral */
+	int	(*set_power)(struct usb_phy *x,
+				unsigned mA);
+
+	/* for non-OTG B devices: set transceiver into suspend mode */
+	int	(*set_suspend)(struct usb_phy *x,
+				int suspend);
+
+	/*
+	 * Set wakeup enable for PHY, in that case, the PHY can be
+	 * woken up from suspend status due to external events,
+	 * like vbus change, dp/dm change and id.
+	 */
+	int	(*set_wakeup)(struct usb_phy *x, bool enabled);
+
+	/* notify phy connect status change */
+	int	(*notify_connect)(struct usb_phy *x,
+			enum usb_device_speed speed);
+	int	(*notify_disconnect)(struct usb_phy *x,
+			enum usb_device_speed speed);
+};
+
+/**
+ * struct usb_phy_bind - represent the binding for the phy
+ * @dev_name: the device name of the device that will bind to the phy
+ * @phy_dev_name: the device name of the phy
+ * @index: used if a single controller uses multiple phys
+ * @phy: reference to the phy
+ * @list: to maintain a linked list of the binding information
+ */
+struct usb_phy_bind {
+	const char	*dev_name;
+	const char	*phy_dev_name;
+	u8		index;
+	struct usb_phy	*phy;
+	struct list_head list;
+};
+
+/* helpers for direct access thru low-level io interface */
+static inline int usb_phy_io_read(struct usb_phy *x, u32 reg)
+{
+	if (x && x->io_ops && x->io_ops->read)
+		return x->io_ops->read(x, reg);
+
+	return -EINVAL;
+}
+
+static inline int usb_phy_io_write(struct usb_phy *x, u32 val, u32 reg)
+{
+	if (x && x->io_ops && x->io_ops->write)
+		return x->io_ops->write(x, val, reg);
+
+	return -EINVAL;
+}
+
+static inline int
+usb_phy_init(struct usb_phy *x)
+{
+	if (x && x->init)
+		return x->init(x);
+
+	return 0;
+}
+
+static inline void
+usb_phy_shutdown(struct usb_phy *x)
+{
+	if (x && x->shutdown)
+		x->shutdown(x);
+}
+
+static inline int
+usb_phy_vbus_on(struct usb_phy *x)
+{
+	if (!x || !x->set_vbus)
+		return 0;
+
+	return x->set_vbus(x, true);
+}
+
+static inline int
+usb_phy_vbus_off(struct usb_phy *x)
+{
+	if (!x || !x->set_vbus)
+		return 0;
+
+	return x->set_vbus(x, false);
+}
+
+static inline int
+usb_phy_set_power(struct usb_phy *x, unsigned mA)
+{
+	if (x && x->set_power)
+		return x->set_power(x, mA);
+	return 0;
+}
+
+/* Context: can sleep */
+static inline int
+usb_phy_set_suspend(struct usb_phy *x, int suspend)
+{
+	if (x && x->set_suspend != NULL)
+		return x->set_suspend(x, suspend);
+	else
+		return 0;
+}
+
+static inline int
+usb_phy_set_wakeup(struct usb_phy *x, bool enabled)
+{
+	if (x && x->set_wakeup)
+		return x->set_wakeup(x, enabled);
+	else
+		return 0;
+}
+
+static inline int
+usb_phy_notify_connect(struct usb_phy *x, enum usb_device_speed speed)
+{
+	if (x && x->notify_connect)
+		return x->notify_connect(x, speed);
+	else
+		return 0;
+}
+
+static inline int
+usb_phy_notify_disconnect(struct usb_phy *x, enum usb_device_speed speed)
+{
+	if (x && x->notify_disconnect)
+		return x->notify_disconnect(x, speed);
+	else
+		return 0;
+}
+
+static inline const char *usb_phy_type_string(enum usb_phy_type type)
+{
+	switch (type) {
+	case USB_PHY_TYPE_USB2:
+		return "USB2 PHY";
+	case USB_PHY_TYPE_USB3:
+		return "USB3 PHY";
+	default:
+		return "UNKNOWN PHY TYPE";
+	}
+}
+#endif /* __LINUX_USB_PHY_H */
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 82acf20..f02f1fb 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -440,15 +440,6 @@ enum usb_dr_mode {
 enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
 		const char *propname);
 
-enum usb_phy_interface {
-	USBPHY_INTERFACE_MODE_UNKNOWN,
-	USBPHY_INTERFACE_MODE_UTMI,
-	USBPHY_INTERFACE_MODE_UTMIW,
-	USBPHY_INTERFACE_MODE_ULPI,
-	USBPHY_INTERFACE_MODE_SERIAL,
-	USBPHY_INTERFACE_MODE_HSIC,
-};
-
 extern struct list_head usb_device_list;
 
 #endif /*_USB_H_ */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
