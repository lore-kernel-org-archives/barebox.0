Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001nd-55
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:40 +0100
Message-Id: <1355418044-27452-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] ARM i.MX31: Add USB device functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx31.c                      |    1 +
 arch/arm/mach-imx/include/mach/devices-imx31.h |   15 +++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 2882675..f0954b5 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -39,6 +39,7 @@ static int imx31_init(void)
 	add_generic_device("imx31-gpio", 2, NULL, MX31_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX31_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-esdctl", 0, NULL, MX31_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx31-usb-misc", 0, NULL, MX31_USB_OTG_BASE_ADDR + 0x600, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index fe71930..15ceb34 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -51,3 +51,18 @@ static inline struct device_d *imx31_add_fb(struct imx_ipu_fb_platform_data *pda
 {
 	return imx_add_ipufb((void *)MX31_IPU_CTRL_BASE_ADDR, pdata);
 }
+
+static inline struct device_d *imx31_add_usbotg(void *pdata)
+{
+	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx31_add_usbh1(void *pdata)
+{
+	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR + 0x200, 1, pdata);
+}
+
+static inline struct device_d *imx31_add_usbh2(void *pdata)
+{
+	return imx_add_usb((void *)MX31_USB_OTG_BASE_ADDR + 0x400, 2, pdata);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
