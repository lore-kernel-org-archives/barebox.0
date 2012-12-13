Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001nb-7Z
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:38 +0100
Message-Id: <1355418044-27452-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
References: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] ARM i.MX27: Add USB device functions
To: barebox@lists.infradead.org

Register the USB misc devices and provide convenience wrappers to
register the USB ports for i.MX27.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/devices.c                    |    5 +++++
 arch/arm/mach-imx/imx27.c                      |    1 +
 arch/arm/mach-imx/include/mach/devices-imx27.h |   15 +++++++++++++++
 arch/arm/mach-imx/include/mach/devices.h       |    2 ++
 4 files changed, 23 insertions(+)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index d82fbf7..682f39a 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -72,3 +72,8 @@ struct device_d *imx_add_pata(void *base)
 {
 	return imx_add_device("imx-pata", -1, base, 0x1000, NULL);
 }
+
+struct device_d *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata)
+{
+	return imx_add_device("imx-usb", id, base, 0x200, pdata);
+}
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 31117f4..6d30276 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -118,6 +118,7 @@ static int imx27_init(void)
 	add_generic_device("imx1-gpio", 5, NULL, MX27_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX27_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx27-esdctl", 0, NULL, MX27_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx27-usb-misc", 0, NULL, MX27_USB_OTG_BASE_ADDR + 0x600, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index 79da935..d6c884a 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -70,3 +70,18 @@ static inline struct device_d *imx27_add_mmc2(void *pdata)
 {
 	return imx_add_mmc((void *)MX27_SDHC3_BASE_ADDR, 2, pdata);
 }
+
+static inline struct device_d *imx27_add_usbotg(void *pdata)
+{
+	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx27_add_usbh1(void *pdata)
+{
+	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR + 0x200, 1, pdata);
+}
+
+static inline struct device_d *imx27_add_usbh2(void *pdata)
+{
+	return imx_add_usb((void *)MX27_USB_OTG_BASE_ADDR + 0x400, 2, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 016778a..5929658 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -7,6 +7,7 @@
 #include <mach/imxfb.h>
 #include <mach/imx-ipu-fb.h>
 #include <mach/esdhc.h>
+#include <usb/chipidea-imx.h>
 
 struct device_d *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
 struct device_d *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata);
@@ -21,3 +22,4 @@ struct device_d *imx_add_mmc(void *base, int id, void *pdata);
 struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *pdata);
 struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata);
 struct device_d *imx_add_pata(void *base);
+struct device_d *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
