Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5umx-00052w-2x
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:07:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:07:26 +0100
Message-Id: <1360832847-22414-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
References: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] USB i.MX chipidea: implement post init support
To: barebox@lists.infradead.org

Some controllers need an init hook after the USB controller is
started, so implement the post init hook for i.MX.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c |   43 ++++++++++++++++++++++-----
 drivers/usb/imx/imx-usb-misc.c |   63 ++++++++++++++++++++++++++++++++--------
 include/usb/chipidea-imx.h     |    2 ++
 3 files changed, 89 insertions(+), 19 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 64bb866..de80c36 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -22,12 +22,41 @@
 
 #define MXC_EHCI_PORTSC_MASK ((0xf << 28) | (1 << 25))
 
+static int imx_chipidea_port_init(void *drvdata)
+{
+	struct device_d *dev = drvdata;
+	struct imxusb_platformdata *pdata = dev->platform_data;
+	int ret;
+
+	ret = imx_usbmisc_port_init(dev->id, pdata->flags);
+	if (ret)
+		dev_err(dev, "misc init failed: %s\n", strerror(-ret));
+
+	if (pdata->init)
+		pdata->init(dev->id);
+
+	return ret;
+}
+
+static int imx_chipidea_port_post_init(void *drvdata)
+{
+	struct device_d *dev = drvdata;
+	struct imxusb_platformdata *pdata = dev->platform_data;
+	int ret;
+
+	ret = imx_usbmisc_port_post_init(dev->id, pdata->flags);
+	if (ret)
+		dev_err(dev, "post misc init failed: %s\n", strerror(-ret));
+
+	return ret;
+}
+
 static int imx_chipidea_probe(struct device_d *dev)
 {
 	struct imxusb_platformdata *pdata = dev->platform_data;
 	int ret;
 	void __iomem *base;
-	struct ehci_data data;
+	struct ehci_data data = {};
 	uint32_t portsc;
 
 	if (!pdata) {
@@ -39,17 +68,17 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (!base)
 		return -ENODEV;
 
+	data.init = imx_chipidea_port_init;
+	data.post_init = imx_chipidea_port_post_init;
+	data.drvdata = dev;
+
+	imx_chipidea_port_init(dev);
+
 	portsc = readl(base + 0x184);
 	portsc &= ~MXC_EHCI_PORTSC_MASK;
 	portsc |= pdata->flags & MXC_EHCI_PORTSC_MASK;
 	writel(portsc, base + 0x184);
 
-	ret = imx_usbmisc_port_init(dev->id, pdata->flags);
-	if (ret) {
-		dev_err(dev, "failed to init misc regs: %s\n", strerror(-ret));
-		return ret;
-	}
-
 	if ((pdata->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
 		dev_dbg(dev, "using ULPI phy\n");
 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 4cdf5ab..d42f4c0 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -34,6 +34,11 @@
 #define MX25_H1_USBTE_BIT	(1 << 4)
 #define MX25_H1_OCPOL_BIT	(1 << 2)
 
+struct imx_usb_misc_data {
+	int (*init)(void __iomem *base, int port, unsigned int flags);
+	int (*post_init)(void __iomem *base, int port, unsigned int flags);
+};
+
 static __maybe_unused int mx25_initialize_usb_hw(void __iomem *base, int port, unsigned int flags)
 {
 	unsigned int v;
@@ -93,6 +98,10 @@ static __maybe_unused int mx25_initialize_usb_hw(void __iomem *base, int port, u
 	return 0;
 }
 
+static __maybe_unused struct imx_usb_misc_data mx25_data = {
+	.init = mx25_initialize_usb_hw,
+};
+
 #define MX27_OTG_SIC_SHIFT	29
 #define MX27_OTG_SIC_MASK	(0x3 << MX27_OTG_SIC_SHIFT)
 #define MX27_OTG_PM_BIT		(1 << 24)
@@ -152,6 +161,10 @@ static __maybe_unused int mx27_mx31_initialize_usb_hw(void __iomem *base, int po
 	return 0;
 }
 
+static __maybe_unused struct imx_usb_misc_data mx27_mx31_data = {
+	.init = mx27_mx31_initialize_usb_hw,
+};
+
 #define USBCTRL_OTGBASE_OFFSET	0x600
 
 #define MX35_OTG_SIC_SHIFT	29
@@ -229,6 +242,10 @@ static __maybe_unused int mx35_initialize_usb_hw(void __iomem *base, int port, u
 	return 0;
 }
 
+static __maybe_unused struct imx_usb_misc_data mx35_data = {
+	.init = mx35_initialize_usb_hw,
+};
+
 /* USB_CTRL */
 #define MX5_OTG_UCTRL_OWIE_BIT		(1 << 27)	/* OTG wakeup intr enable */
 #define MX5_OTG_UCTRL_OPM_BIT		(1 << 24)	/* OTG power mask */
@@ -324,53 +341,61 @@ static __maybe_unused int mx5_initialize_usb_hw(void __iomem *base, int port,
 	return 0;
 }
 
+static __maybe_unused struct imx_usb_misc_data mx5_data = {
+	.init = mx5_initialize_usb_hw,
+};
+
 static __maybe_unused int mx6_initialize_usb_hw(void __iomem *base, int port,
 		unsigned int flags)
 {
 	return 0;
 }
 
+static __maybe_unused struct imx_usb_misc_data mx6_data = {
+	.init = mx6_initialize_usb_hw,
+};
+
 static struct platform_device_id imx_usbmisc_ids[] = {
 #ifdef CONFIG_ARCH_IMX25
 	{
 		.name = "imx25-usb-misc",
-		.driver_data = (unsigned long)&mx25_initialize_usb_hw,
+		.driver_data = (unsigned long)&mx25_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX27
 	{
 		.name = "imx27-usb-misc",
-		.driver_data = (unsigned long)&mx27_mx31_initialize_usb_hw,
+		.driver_data = (unsigned long)&mx27_mx31_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX31
 	{
 		.name = "imx31-usb-misc",
-		.driver_data = (unsigned long)&mx27_mx31_initialize_usb_hw,
+		.driver_data = (unsigned long)&mx27_mx31_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX35
 	{
 		.name = "imx35-usb-misc",
-		.driver_data = (unsigned long)&mx35_initialize_usb_hw,
+		.driver_data = (unsigned long)&mx35_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX51
 	{
 		.name = "imx51-usb-misc",
-		.driver_data = (unsigned long)&mx5_initialize_usb_hw,
+		.driver_data = (unsigned long)&mx5_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX53
 	{
 		.name = "imx53-usb-misc",
-		.driver_data = (unsigned long)&mx5_initialize_usb_hw,
+		.driver_data = (unsigned long)&mx5_data,
 	},
 #endif
 #ifdef CONFIG_ARCH_IMX6
 	{
 		.name = "imx6-usb-misc",
-		.driver_data = (unsigned long)&mx6_initialize_usb_hw,
+		.driver_data = (unsigned long)&mx6_data,
 	},
 #endif
 	{
@@ -378,20 +403,34 @@ static struct platform_device_id imx_usbmisc_ids[] = {
 	},
 };
 
-static int (*__imx_usbmisc_port_init)(void __iomem *base, int port, unsigned flags);
+static struct imx_usb_misc_data *imxusbmisc_data;
 static void __iomem *usbmisc_base;
 
 int imx_usbmisc_port_init(int port, unsigned flags)
 {
-	if (!__imx_usbmisc_port_init)
+	if (!imxusbmisc_data)
 		return -ENODEV;
 
-	return __imx_usbmisc_port_init(usbmisc_base, port, flags);
+	if (!imxusbmisc_data->init)
+		return 0;
+
+	return imxusbmisc_data->init(usbmisc_base, port, flags);
+}
+
+int imx_usbmisc_port_post_init(int port, unsigned flags)
+{
+	if (!imxusbmisc_data)
+		return -ENODEV;
+
+	if (!imxusbmisc_data->post_init)
+		return 0;
+
+	return imxusbmisc_data->post_init(usbmisc_base, port, flags);
 }
 
 static int imx_usbmisc_probe(struct device_d *dev)
 {
-	struct imx_serial_devtype_data *devtype;
+	struct imx_usb_misc_data *devtype;
 	int ret;
 
 	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
@@ -402,7 +441,7 @@ static int imx_usbmisc_probe(struct device_d *dev)
 	if (!usbmisc_base)
 		return -ENOMEM;
 
-	__imx_usbmisc_port_init = (void *)devtype;
+	imxusbmisc_data = devtype;
 
 	return 0;
 }
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 252d488..3f9f61e 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -40,8 +40,10 @@ enum imx_usb_mode {
 struct imxusb_platformdata {
 	unsigned long flags;
 	enum imx_usb_mode mode;
+	int (*init)(int port);
 };
 
 int imx_usbmisc_port_init(int port, unsigned flags);
+int imx_usbmisc_port_post_init(int port, unsigned flags);
 
 #endif /* __USB_CHIPIDEA_IMX_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
