Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fWPDV-0002gt-TT
 for barebox@lists.infradead.org; Fri, 22 Jun 2018 16:47:24 +0000
Received: by mail-wr0-x244.google.com with SMTP id b8-v6so1892170wro.6
 for <barebox@lists.infradead.org>; Fri, 22 Jun 2018 09:47:11 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Fri, 22 Jun 2018 19:46:57 +0300
Message-Id: <20180622164657.8060-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH] usb: imx: implement support for limiting host to full speed
To: Sascha Hauer <sha@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Chris Healy <cphealy@gmail.com>

This is needed when host is known to not work properly in high speed
mode.

In linux, chipidea driver supports 'maximum-speed' device tree property.
When that is set to "full-speed", driver sets PFSC bit in PORTSC
register, which disallows use of high speed mode.

This patch implements same support for barebox.

Important technical detail is that PFSC bit is cleared by port reset,
thus setting it has to be done in ehci->init() callback which is called
after ehci_reset().

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 drivers/usb/core/common.c      | 12 ++++++++++++
 drivers/usb/core/of.c          | 24 ++++++++++++++++++++++++
 drivers/usb/imx/chipidea-imx.c | 13 +++++++++++++
 include/usb/ch9.h              |  6 ++++++
 include/usb/chipidea-imx.h     |  1 +
 include/usb/usb.h              |  3 +++
 6 files changed, 59 insertions(+)

diff --git a/drivers/usb/core/common.c b/drivers/usb/core/common.c
index 690d5a39e..bcbe3a155 100644
--- a/drivers/usb/core/common.c
+++ b/drivers/usb/core/common.c
@@ -17,3 +17,15 @@ const char *usb_speed_string(enum usb_device_speed speed)
 	return speed_names[speed];
 }
 EXPORT_SYMBOL_GPL(usb_speed_string);
+
+enum usb_device_speed usb_speed_by_string(const char *string)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(speed_names); i++)
+		if (!strcmp(string, speed_names[i]))
+			return i;
+
+	return USB_SPEED_UNKNOWN;
+}
+EXPORT_SYMBOL_GPL(usb_speed_by_string);
diff --git a/drivers/usb/core/of.c b/drivers/usb/core/of.c
index fd2036842..979088ef4 100644
--- a/drivers/usb/core/of.c
+++ b/drivers/usb/core/of.c
@@ -90,3 +90,27 @@ enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
 	return USBPHY_INTERFACE_MODE_UNKNOWN;
 }
 EXPORT_SYMBOL_GPL(of_usb_get_phy_mode);
+
+/**
+ * of_usb_get_maximum_speed - Get maximum speed for given device_node
+ * @np:	Pointer to the given device_node
+ *
+ * The function gets maximum speed string from property 'maximum-speed',
+ * and returns the correspondig enum usb_device_speed
+ */
+enum usb_device_speed of_usb_get_maximum_speed(struct device_node *np,
+		const char *propname)
+{
+	const char *maximum_speed;
+	int err;
+
+	if (!propname)
+		propname = "maximum-speed";
+
+	err = of_property_read_string(np, propname, &maximum_speed);
+	if (err < 0)
+		return USB_SPEED_UNKNOWN;
+
+	return usb_speed_by_string(maximum_speed);
+}
+EXPORT_SYMBOL_GPL(of_usb_get_maximum_speed);
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 505f5eb35..3e3e6a365 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -51,6 +51,7 @@ struct imx_chipidea {
 static int imx_chipidea_port_init(void *drvdata)
 {
 	struct imx_chipidea *ci = drvdata;
+	uint32_t portsc;
 	int ret;
 
 	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
@@ -74,6 +75,14 @@ static int imx_chipidea_port_init(void *drvdata)
 	if (ret)
 		dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
 
+	/* PFSC bit is reset by ehci_reset(), thus have to set it not in
+	 * probe but here, after ehci_reset() is already called */
+	if (ci->flags & MXC_EHCI_PFSC) {
+		portsc = readl(ci->base + 0x184);
+		portsc |= MXC_EHCI_PFSC;
+		writel(portsc, ci->base + 0x184);
+	}
+
 	return ret;
 }
 
@@ -159,6 +168,10 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 				   "over-current-active-high", NULL))
 		ci->flags |= MXC_EHCI_OC_PIN_ACTIVE_LOW;
 
+	if (of_usb_get_maximum_speed(ci->dev->device_node, NULL) ==
+			USB_SPEED_FULL)
+		ci->flags |= MXC_EHCI_PFSC;
+
 	return 0;
 }
 
diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index ab5d53192..b44d41e85 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -1004,6 +1004,12 @@ struct usb_set_sel_req {
  */
 const char *usb_speed_string(enum usb_device_speed speed);
 
+/**
+ * usb_speed_by_string() - Get speed from human readable name.
+ * @string: The human readable name for the speed. If it is not one of known
+ *   names, USB_SPEED_UNKNOWN will be returned.
+ */
+enum usb_device_speed usb_speed_by_string(const char *string);
 
 /**
  * usb_state_string - Returns human readable name for the state.
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 640ae0694..973aee6a0 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -13,6 +13,7 @@
 #define MXC_EHCI_MODE_ULPI		(2 << 30)
 #define MXC_EHCI_MODE_HSIC		(1 << 25)
 #define MXC_EHCI_MODE_SERIAL		(3 << 30)
+#define MXC_EHCI_PFSC			(1 << 24)
 
 /*
  * USB misc flags
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 93308cec0..9aab06c87 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -438,6 +438,9 @@ enum usb_dr_mode {
 enum usb_phy_interface of_usb_get_phy_mode(struct device_node *np,
 		const char *propname);
 
+enum usb_device_speed of_usb_get_maximum_speed(struct device_node *np,
+		const char *propname);
+
 extern struct list_head usb_device_list;
 
 #endif /*_USB_H_ */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
