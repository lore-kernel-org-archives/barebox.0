Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VBhub-0006R1-7F
 for barebox@lists.infradead.org; Tue, 20 Aug 2013 09:07:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Aug 2013 11:07:13 +0200
Message-Id: <1376989634-13909-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: move esdctl device registration to soc_init
To: barebox@lists.infradead.org

The esdctl devices are currently not in the devicetrees. this means
they are not registered when booting from the devicetree. Move the
device registration from soc_devices_init to soc_init which is called
even with devicetree support so that we get esdctl devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx1.c  | 2 +-
 arch/arm/mach-imx/imx25.c | 2 +-
 arch/arm/mach-imx/imx27.c | 4 ++--
 arch/arm/mach-imx/imx31.c | 2 +-
 arch/arm/mach-imx/imx35.c | 2 +-
 arch/arm/mach-imx/imx51.c | 2 +-
 arch/arm/mach-imx/imx53.c | 2 +-
 7 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index ecd71b8..78a0242 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -55,6 +55,7 @@ void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
 int imx1_init(void)
 {
 	imx1_detect_reset_source();
+	add_generic_device("imx1-sdramc", 0, NULL, MX1_SDRAMC_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
@@ -70,7 +71,6 @@ int imx1_devices_init(void)
 	add_generic_device("imx1-gpio", 2, NULL, MX1_GPIO3_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 3, NULL, MX1_GPIO4_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-wdt", 0, NULL, MX1_WDT_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
-	add_generic_device("imx1-sdramc", 0, NULL, MX1_SDRAMC_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 1d94419..1f87787 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -56,6 +56,7 @@ u64 imx_uid(void)
 int imx25_init(void)
 {
 	imx25_boot_save_loc((void *)MX25_CCM_BASE_ADDR);
+	add_generic_device("imx25-esdctl", 0, NULL, MX25_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
@@ -73,7 +74,6 @@ int imx25_devices_init(void)
 	add_generic_device("imx31-gpio", 2, NULL, MX25_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 3, NULL, MX25_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX25_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx25-esdctl", 0, NULL, MX25_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index e0f4765..d3eaa87 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -101,6 +101,8 @@ int imx27_init(void)
 {
 	imx27_silicon_revision();
 	imx27_boot_save_loc((void *)MX27_SYSCTRL_BASE_ADDR);
+	add_generic_device("imx27-esdctl", DEVICE_ID_SINGLE, NULL,
+			   MX27_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
@@ -124,8 +126,6 @@ int imx27_devices_init(void)
 	add_generic_device("imx1-gpio", 4, NULL, MX27_GPIO5_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 5, NULL, MX27_GPIO6_BASE_ADDR, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX27_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx27-esdctl", DEVICE_ID_SINGLE, NULL,
-			   MX27_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx27-usb-misc", 0, NULL, MX27_USB_OTG_BASE_ADDR + 0x600, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index eb0c415..3013f02 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -29,6 +29,7 @@ void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 
 int imx31_init(void)
 {
+	add_generic_device("imx31-esdctl", 0, NULL, MX31_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 
@@ -44,7 +45,6 @@ int imx31_devices_init(void)
 	add_generic_device("imx31-gpio", 1, NULL, MX31_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX31_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX31_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx31-esdctl", 0, NULL, MX31_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-usb-misc", 0, NULL, MX31_USB_OTG_BASE_ADDR + 0x600, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 14ddba3..40f5770 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -56,6 +56,7 @@ int imx35_init(void)
 	imx35_silicon_revision();
 
 	imx35_boot_save_loc((void *)MX35_CCM_BASE_ADDR);
+	add_generic_device("imx35-esdctl", 0, NULL, MX35_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
@@ -72,7 +73,6 @@ int imx35_devices_init(void)
 	add_generic_device("imx31-gpio", 1, NULL, MX35_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX35_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX35_WDOG_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx35-esdctl", 0, NULL, MX35_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index bcb3a76..a0b627f 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -45,6 +45,7 @@ int imx51_init(void)
 {
 	imx_set_silicon_revision("i.MX51", imx51_silicon_revision());
 	imx51_boot_save_loc((void *)MX51_SRC_BASE_ADDR);
+	add_generic_device("imx51-esdctl", 0, NULL, MX51_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
@@ -62,7 +63,6 @@ int imx51_devices_init(void)
 	add_generic_device("imx31-gpio", 2, NULL, MX51_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 3, NULL, MX51_GPIO4_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX51_WDOG_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx51-esdctl", 0, NULL, MX51_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx51-usb-misc", 0, NULL, MX51_OTG_BASE_ADDR + 0x800, 0x100, IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 3e1b7fc..62e65e0 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -54,6 +54,7 @@ int imx53_init(void)
 {
 	imx53_silicon_revision();
 	imx53_boot_save_loc((void *)MX53_SRC_BASE_ADDR);
+	add_generic_device("imx53-esdctl", 0, NULL, MX53_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
@@ -74,7 +75,6 @@ int imx53_devices_init(void)
 	add_generic_device("imx31-gpio", 5, NULL, MX53_GPIO6_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 6, NULL, MX53_GPIO7_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx21-wdt", 0, NULL, MX53_WDOG1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
-	add_generic_device("imx53-esdctl", 0, NULL, MX53_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
