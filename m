Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJMHP-0007Tg-Vy
 for barebox@lists.infradead.org; Sat, 02 Jul 2016 14:52:25 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sat,  2 Jul 2016 16:50:02 +0200
Message-Id: <1467471002-9613-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] wdog: imx-wd: distinguish for WICR/WMCR support
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The IMX watchdog driver currently distinguishes two variants: imx1-wdt
using a 32-bit register interface and imx21-wdt with a 16-bit register
interface.
Further distinguishment is required: the i.MX21, i.MX27 and i.MX31 SOC
do provide a three register interface (WCR, WSR, WRSR) while later SOC
starting with i.MX25 provide two additional registers (WICR and WMCR).
The five-register interface is also used on i.MX35, and Cortex-A based
i.MX SOC.

With commit 4cc0a3d9c547 ("wdog: imx-wd: Disable watchdog powerdown counter")
one of the extended registers (WMCR) got used first.

Make imx-wd distinguish between the three and five register Watchdog Timers
and introduce the five register support as imx25-wdt.

Note on DTS: keep the i.MX related DTS in sync with linux and make the
existing programming model fsl,imx21-wdt behave like fsl,imx25-wdt for
the mean time until this is addressed upstream in linux.

fixes: 4cc0a3d9c547 ("wdog: imx-wd: Disable watchdog powerdown counter")

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/imx25.c |  2 +-
 arch/arm/mach-imx/imx35.c |  2 +-
 arch/arm/mach-imx/imx51.c |  2 +-
 arch/arm/mach-imx/imx53.c |  2 +-
 arch/arm/mach-imx/imx6.c  |  2 +-
 drivers/watchdog/imxwd.c  | 30 +++++++++++++++++++++++++++---
 6 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 2534d75..cad3a72 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -91,7 +91,7 @@ int imx25_devices_init(void)
 	add_generic_device("imx31-gpio", 1, NULL, MX25_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX25_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 3, NULL, MX25_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx21-wdt", 0, NULL, MX25_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx25-wdt", 0, NULL, MX25_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx25-usb-misc", 0, NULL, MX25_USB_OTG_BASE_ADDR + 0x600, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 3e1aa97..d4d4c6e 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -72,7 +72,7 @@ int imx35_devices_init(void)
 	add_generic_device("imx31-gpio", 0, NULL, MX35_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX35_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX35_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx21-wdt", 0, NULL, MX35_WDOG_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx25-wdt", 0, NULL, MX35_WDOG_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx35-usb-misc", 0, NULL, MX35_USB_OTG_BASE_ADDR + 0x600, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index a6784d0..cdc2b42 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -77,7 +77,7 @@ int imx51_devices_init(void)
 	add_generic_device("imx31-gpio", 1, NULL, MX51_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX51_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 3, NULL, MX51_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx21-wdt", 0, NULL, MX51_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx25-wdt", 0, NULL, MX51_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx51-usb-misc", 0, NULL, MX51_OTG_BASE_ADDR + 0x800, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 872d293..fc8c541 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -74,7 +74,7 @@ int imx53_devices_init(void)
 	add_generic_device("imx31-gpio", 4, NULL, MX53_GPIO5_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 5, NULL, MX53_GPIO6_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 6, NULL, MX53_GPIO7_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx21-wdt", 0, NULL, MX53_WDOG1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx25-wdt", 0, NULL, MX53_WDOG1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ba8fb89..ae3cd35 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -201,7 +201,7 @@ int imx6_devices_init(void)
 	add_generic_device("imx31-gpio", 4, NULL, MX6_GPIO5_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 5, NULL, MX6_GPIO6_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 6, NULL, MX6_GPIO7_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx21-wdt", 0, NULL, MX6_WDOG1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx25-wdt", 0, NULL, MX6_WDOG1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx6-usb-misc", 0, NULL, MX6_USBOH3_USB_BASE_ADDR + 0x800, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 03e116e..1e69ffa 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -48,11 +48,12 @@ struct imx_wd {
 #define IMX21_WDOG_WCR	0x00 /* Watchdog Control Register */
 #define IMX21_WDOG_WSR	0x02 /* Watchdog Service Register */
 #define IMX21_WDOG_WSTR	0x04 /* Watchdog Status Register  */
-#define IMX21_WDOG_WMCR	0x08 /* Misc Register */
 #define IMX21_WDOG_WCR_WDE	(1 << 2)
 #define IMX21_WDOG_WCR_SRS	(1 << 4)
 #define IMX21_WDOG_WCR_WDA	(1 << 5)
 
+#define IMX25_WDOG_WMCR	0x08 /* Misc Register */
+
 /* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
 #define WSTR_WARMSTART	(1 << 0)
 /* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
@@ -163,10 +164,17 @@ static int imx21_wd_init(struct imx_wd *priv)
 {
 	imx_watchdog_detect_reset_source(priv);
 
+	return 0;
+}
+
+static int imx25_wd_init(struct imx_wd *priv)
+{
+	imx_watchdog_detect_reset_source(priv);
+
 	/*
 	 * Disable watchdog powerdown counter
 	 */
-	writew(0x0, priv->base + IMX21_WDOG_WMCR);
+	writew(0x0, priv->base + IMX25_WDOG_WMCR);
 
 	return 0;
 }
@@ -225,6 +233,11 @@ on_error:
 	return ret;
 }
 
+static const struct imx_wd_ops imx25_wd_ops = {
+	.set_timeout = imx21_watchdog_set_timeout,
+	.init = imx25_wd_init,
+};
+
 static const struct imx_wd_ops imx21_wd_ops = {
 	.set_timeout = imx21_watchdog_set_timeout,
 	.init = imx21_wd_init,
@@ -240,7 +253,15 @@ static __maybe_unused struct of_device_id imx_wdt_dt_ids[] = {
 		.data = &imx1_wd_ops,
 	}, {
 		.compatible = "fsl,imx21-wdt",
-		.data = &imx21_wd_ops,
+		/* FIXME: backward compaibility for imported linux DTS
+		   Most references to fsl,imx21-wdt from linux imported DTS
+		   linux actually mean fsl,imx25-wdt. Make fsl,imx21-wdt
+		   behave like fsl,imx25-wdt for the mean time until
+		   this is fixed there */
+		.data = &imx25_wd_ops,
+	}, {
+		.compatible = "fsl,imx25-wdt",
+		.data = &imx25_wd_ops,
 	}, {
 		/* sentinel */
 	}
@@ -254,6 +275,9 @@ static struct platform_device_id imx_wdt_ids[] = {
 		.name = "imx21-wdt",
 		.driver_data = (unsigned long)&imx21_wd_ops,
 	}, {
+		.name = "imx25-wdt",
+		.driver_data = (unsigned long)&imx25_wd_ops,
+	}, {
 		/* sentinel */
 	},
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
