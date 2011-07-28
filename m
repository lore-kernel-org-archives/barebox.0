Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qS-MM
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:00:55 +0200
Message-Id: <1311840062-11446-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] ARM i.MX: add helper for usb device registration
To: barebox@lists.infradead.org

And also, switch to resources along the way.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    9 +--------
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    9 +--------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    9 +--------
 arch/arm/boards/guf-neso/board.c                  |   10 +---------
 arch/arm/boards/pcm037/pcm037.c                   |   18 ++----------------
 arch/arm/boards/pcm038/pcm038.c                   |    9 +--------
 arch/arm/boards/phycard-i.MX27/pca100.c           |   18 ++----------------
 arch/arm/mach-imx/devices.c                       |    5 +++++
 arch/arm/mach-imx/include/mach/devices-imx25.h    |    9 +++++++++
 arch/arm/mach-imx/include/mach/devices-imx27.h    |   13 +++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx31.h    |   15 +++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx35.h    |   10 ++++++++++
 arch/arm/mach-imx/include/mach/devices.h          |    2 +-
 13 files changed, 62 insertions(+), 74 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 6ea4a6e..57cc1e8 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -147,13 +147,6 @@ static void imx25_usb_init(void)
 	tmp = readl(IMX_OTG_BASE + 0x5a8);
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
 #endif
 
 static struct fsl_usb2_platform_data usb_pdata = {
@@ -282,7 +275,7 @@ static int eukrea_cpuimx25_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx25_usb_init();
-	register_device(&usbh2_dev);
+	imx25_add_ehci1(NULL);
 #endif
 	register_device(&usbotg_dev);
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index d1de495..d43d3af 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -117,13 +117,6 @@ static void imx35_usb_init(void)
 	tmp = readl(IMX_OTG_BASE + 0x5a8);
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
 #endif
 
 static struct fsl_usb2_platform_data usb_pdata = {
@@ -181,7 +174,7 @@ static int eukrea_cpuimx35_devices_init(void)
 
 #ifdef CONFIG_USB
 	imx35_usb_init();
-	register_device(&usbh2_dev);
+	imx35_add_ehci1(NULL);
 #endif
 #ifdef CONFIG_USB_GADGET
 	/* Workaround ENGcm09152 */
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 6d4bde5..522cf70 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -137,13 +137,6 @@ static void imx25_usb_init(void)
 	tmp = readl(IMX_OTG_BASE + 0x5a8);
 	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
 }
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
 #endif
 
 static struct i2c_board_info i2c_devices[] = {
@@ -207,7 +200,7 @@ static int imx25_devices_init(void)
 	 * the CPLD has to be initialized.
 	 */
 	imx25_usb_init();
-	register_device(&usbh2_dev);
+	imx25_add_ehci1(NULL);
 #endif
 
 	imx25_add_fec(&fec_info);
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 4e0ac90..e36e804 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -114,14 +114,6 @@ static struct imx_fb_platform_data neso_fb_data = {
 };
 
 #ifdef CONFIG_USB
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void neso_usbh_init(void)
 {
 	uint32_t temp;
@@ -304,7 +296,7 @@ static int neso_devices_init(void)
 
 #ifdef CONFIG_USB
 	neso_usbh_init();
-	register_device(&usbh2_dev);
+	imx27_add_ehci2(NULL);
 #endif
 
 	imx27_add_fec(&fec_info);
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 6e20d1d..af4ad8b 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -70,20 +70,6 @@ struct imx_nand_platform_data nand_info = {
 };
 
 #ifdef CONFIG_USB
-static struct device_d usbotg_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
-};
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void pcm037_usb_init(void)
 {
 	u32 tmp;
@@ -250,8 +236,8 @@ static int imx31_devices_init(void)
 #endif
 #ifdef CONFIG_USB
 	pcm037_usb_init();
-	register_device(&usbotg_dev);
-	register_device(&usbh2_dev);
+	imx31_add_ehci0(NULL);
+	imx31_add_ehci2(NULL);
 #endif
 
 	armlinux_set_bootparams((void *)0x80000100);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 2f87b12..74c8b34 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -109,13 +109,6 @@ static struct imx_fb_platform_data pcm038_fb_data = {
 };
 
 #ifdef CONFIG_USB
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void pcm038_usbh_init(void)
 {
 	uint32_t temp;
@@ -271,7 +264,7 @@ static int pcm038_devices_init(void)
 
 #ifdef CONFIG_USB
 	pcm038_usbh_init();
-	register_device(&usbh2_dev);
+	imx27_add_ehci2(NULL);
 #endif
 
 	/* Register the fec device after the PLL re-initialisation
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 63216f5..8c36a3f 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -53,20 +53,6 @@ struct imx_nand_platform_data nand_info = {
 };
 
 #ifdef CONFIG_USB
-static struct device_d usbotg_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE,
-	.size     = 0x200,
-};
-
-static struct device_d usbh2_dev = {
-	.id	  = -1,
-	.name     = "ehci",
-	.map_base = IMX_OTG_BASE + 0x400,
-	.size     = 0x200,
-};
-
 static void pca100_usb_register(void)
 {
 	mdelay(10);
@@ -77,9 +63,9 @@ static void pca100_usb_register(void)
 	mdelay(10);
 
 	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x170), 1);
-	register_device(&usbotg_dev);
+	imx27_add_ehci0(NULL);
 	isp1504_set_vbus_power((void *)(IMX_OTG_BASE + 0x570), 1);
-	register_device(&usbh2_dev);
+	imx27_add_ehci2(NULL);
 }
 #endif
 
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 5b062f5..eb070c6 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -52,3 +52,8 @@ struct device_d *imx_add_esdhc(void *base, int id, void *pdata)
 {
 	return imx_add_device("imx-esdhc", id, base, 0x1000, pdata);
 }
+
+struct device_d *imx_add_ehci(void *base, int id, void *pdata)
+{
+	return imx_add_device("ehci", id, base, 0x200, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index 87f5ba0..cf4c61d 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -36,3 +36,12 @@ static inline struct device_d *imx25_add_mmc0(void *pdata)
 	return imx_add_esdhc((void *)0x53fb4000, 0, pdata);
 }
 
+static inline struct device_d *imx25_add_ehci0(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx25_add_ehci1(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE + 0x400, 1, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index 0511eb5..04d1474 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -51,4 +51,17 @@ static inline struct device_d *imx27_add_mmc0(void *pdata)
 	return imx_add_mmc((void *)0x10014000, 0, pdata);
 }
 
+static inline struct device_d *imx27_add_ehci0(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE, 0, pdata);
+}
 
+static inline struct device_d *imx27_add_ehci1(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE + 0x200, 1, pdata);
+}
+
+static inline struct device_d *imx27_add_ehci2(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE + 0x400, 2, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 5dcea82..aa7cb60 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -33,3 +33,18 @@ static inline struct device_d *imx31_add_fb(struct imx_ipu_fb_platform_data *pda
 {
 	return imx_add_ipufb((void *)IPU_BASE, pdata);
 }
+
+static inline struct device_d *imx31_add_ehci0(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx31_add_ehci1(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE + 0x200, 1, pdata);
+}
+
+static inline struct device_d *imx31_add_ehci2(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE + 0x400, 2, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 69f4b36..701ba7a 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -55,3 +55,13 @@ static inline struct device_d *imx35_add_mmc2(void *pdata)
 {
 	return imx_add_esdhc((void *)IMX_SDHC3_BASE, 2, pdata);
 }
+
+static inline struct device_d *imx35_add_ehci0(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx35_add_ehci1(void *pdata)
+{
+	return imx_add_ehci((void *)IMX_OTG_BASE + 0x400, 1, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 7338ac5..7402616 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -15,4 +15,4 @@ struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
 struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
 struct device_d *imx_add_mmc(void *base, int id, void *pdata);
 struct device_d *imx_add_esdhc(void *base, int id, void *pdata);
-
+struct device_d *imx_add_ehci(void *base, int id, void *pdata);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
