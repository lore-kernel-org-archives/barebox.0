Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tws0T-00073t-0X
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:20:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 11:19:54 +0100
Message-Id: <1358677194-23423-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
References: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM i.MX6: Add Chipidea support
To: barebox@lists.infradead.org

This allows to register the USB ports for the chipidea driver. For
now the otg/h1 register functions also register the corresponding
USB phys.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c                      |    1 +
 arch/arm/mach-imx/include/mach/devices-imx6.h |   26 +++++++++++++++++++++++++
 drivers/usb/imx/imx-usb-misc.c                |   12 ++++++++++++
 3 files changed, 39 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 37ee5d8..b62f412 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -68,6 +68,7 @@ static int imx6_init(void)
 	add_generic_device("imx31-gpio", 5, NULL, MX6_GPIO6_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 6, NULL, MX6_GPIO7_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX6_WDOG1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx6-usb-misc", 0, NULL, MX6_USBOH3_USB_BASE_ADDR + 0x800, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index 0f17016..a9c7e8d 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -69,3 +69,29 @@ static inline struct device_d *imx6_add_sata(void)
 {
 	return add_generic_device("imx6-sata", 0, NULL, MX6_SATA_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 }
+
+static inline struct device_d *imx6_add_usbotg(void *pdata)
+{
+	add_generic_device("imx-usb-phy", 0, NULL, MX6_USBPHY1_BASE_ADDR, 0x1000,
+			IORESOURCE_MEM, NULL);
+
+	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx6_add_usbh1(void *pdata)
+{
+	add_generic_device("imx-usb-phy", 1, NULL, MX6_USBPHY2_BASE_ADDR, 0x1000,
+			IORESOURCE_MEM, NULL);
+
+	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x200, 1, pdata);
+}
+
+static inline struct device_d *imx6_add_usbh2(void *pdata)
+{
+	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x400, 2, pdata);
+}
+
+static inline struct device_d *imx6_add_usbh3(void *pdata)
+{
+	return imx_add_usb((void *)MX6_USBOH3_USB_BASE_ADDR + 0x600, 2, pdata);
+}
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 7c0ba5c..4cdf5ab 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -324,6 +324,12 @@ static __maybe_unused int mx5_initialize_usb_hw(void __iomem *base, int port,
 	return 0;
 }
 
+static __maybe_unused int mx6_initialize_usb_hw(void __iomem *base, int port,
+		unsigned int flags)
+{
+	return 0;
+}
+
 static struct platform_device_id imx_usbmisc_ids[] = {
 #ifdef CONFIG_ARCH_IMX25
 	{
@@ -361,6 +367,12 @@ static struct platform_device_id imx_usbmisc_ids[] = {
 		.driver_data = (unsigned long)&mx5_initialize_usb_hw,
 	},
 #endif
+#ifdef CONFIG_ARCH_IMX6
+	{
+		.name = "imx6-usb-misc",
+		.driver_data = (unsigned long)&mx6_initialize_usb_hw,
+	},
+#endif
 	{
                 /* sentinel */
 	},
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
