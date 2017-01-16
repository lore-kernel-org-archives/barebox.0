Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4t0-0002h3-4H
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 09/23] usb: imx: Add usbmisc support for i.MX7
Date: Mon, 16 Jan 2017 11:50:54 +0100
Message-Id: <20170116105108.13617-10-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Taken directly from Linux-4.10-rc3

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/imx-usb-misc.c | 53 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 16fb38018..55dc0492b 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -353,6 +353,7 @@ static __maybe_unused struct imx_usb_misc_data mx5_data = {
 
 #define MX6_USB_CTRL(n)			((n) * 4)
 #define MX6_USB_CTRL_OVER_CUR_DIS	(1 << 7)
+#define MX6_USB_CTRL_OVER_CUR_ACT_HIGH	(1 << 8)
 
 static void mx6_hsic_pullup(unsigned long reg, int on)
 {
@@ -427,6 +428,46 @@ static __maybe_unused struct imx_usb_misc_data mx6_data = {
 	.post_init = mx6_post_init,
 };
 
+#define MX7D_USBNC_USB_CTRL2		0x4
+#define MX7D_USB_VBUS_WAKEUP_SOURCE_MASK	0x3
+#define MX7D_USB_VBUS_WAKEUP_SOURCE(v)		(v << 0)
+#define MX7D_USB_VBUS_WAKEUP_SOURCE_VBUS	MX7D_USB_VBUS_WAKEUP_SOURCE(0)
+#define MX7D_USB_VBUS_WAKEUP_SOURCE_AVALID	MX7D_USB_VBUS_WAKEUP_SOURCE(1)
+#define MX7D_USB_VBUS_WAKEUP_SOURCE_BVALID	MX7D_USB_VBUS_WAKEUP_SOURCE(2)
+#define MX7D_USB_VBUS_WAKEUP_SOURCE_SESS_END	MX7D_USB_VBUS_WAKEUP_SOURCE(3)
+
+static int usbmisc_imx7d_init(void __iomem *base, int port,
+		unsigned int flags)
+{
+	u32 reg;
+
+	if (port >= 1)
+		return -EINVAL;
+
+	reg = readl(base);
+	if (flags & MXC_EHCI_DISABLE_OVERCURRENT) {
+		reg |= MX6_USB_CTRL_OVER_CUR_DIS;
+	} else {
+		reg &= ~MX6_USB_CTRL_OVER_CUR_DIS;
+		if (flags & MXC_EHCI_OC_PIN_ACTIVE_LOW)
+			reg &= ~MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
+		else
+			reg |= MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
+	}
+	writel(reg, base);
+
+	reg = readl(base + MX7D_USBNC_USB_CTRL2);
+	reg &= ~MX7D_USB_VBUS_WAKEUP_SOURCE_MASK;
+	writel(reg | MX7D_USB_VBUS_WAKEUP_SOURCE_BVALID,
+		 base + MX7D_USBNC_USB_CTRL2);
+
+	return 0;
+}
+
+static __maybe_unused struct imx_usb_misc_data mx7_data = {
+	.init = usbmisc_imx7d_init,
+};
+
 static struct platform_device_id imx_usbmisc_ids[] = {
 #ifdef CONFIG_ARCH_IMX25
 	{
@@ -476,6 +517,12 @@ static struct platform_device_id imx_usbmisc_ids[] = {
 		.driver_data = (unsigned long)&mx6_data,
 	},
 #endif
+#ifdef CONFIG_ARCH_IMX7
+	{
+		.name = "imx7d-usb-misc",
+		.driver_data = (unsigned long)&mx7_data,
+	},
+#endif
 	{
                 /* sentinel */
 	},
@@ -518,6 +565,12 @@ static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
 		.data = &mx5_data,
 	},
 #endif
+#ifdef CONFIG_ARCH_IMX7
+	{
+		.compatible = "fsl,imx7d-usbmisc",
+		.data = &mx7_data,
+	},
+#endif
 #ifdef CONFIG_ARCH_IMX6
 	{
 		.compatible = "fsl,imx6q-usbmisc",
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
