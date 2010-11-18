Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PIzg7-0003tZ-Fl
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 08:17:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Nov 2010 09:17:06 +0100
Message-Id: <1290068226-9576-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX device macros: Fix esdhci
To: barebox@lists.infradead.org

The patch introducing device macros for i.MX accidently registered a
imx-mmc device for i.MX25/35/51. It should be a imx-esdhc device. This
patch fixes tis

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/devices.c                    |    5 +++++
 arch/arm/mach-imx/include/mach/devices-imx25.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h |    6 +++---
 arch/arm/mach-imx/include/mach/devices-imx51.h |    4 ++--
 arch/arm/mach-imx/include/mach/devices.h       |    1 +
 5 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 11cf2a4..0395b0e 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -57,3 +57,8 @@ struct device_d *imx_add_mmc(void *base, int id, void *pdata)
 {
 	return imx_add_device("imx-mmc", id, base, 0x1000, pdata);
 }
+
+struct device_d *imx_add_esdhc(void *base, int id, void *pdata)
+{
+	return imx_add_device("imx-esdhc", id, base, 0x1000, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index dc7f98f..87f5ba0 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -33,6 +33,6 @@ static inline struct device_d *imx25_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx25_add_mmc0(void *pdata)
 {
-	return imx_add_mmc((void *)0x53fb4000, 0, pdata);
+	return imx_add_esdhc((void *)0x53fb4000, 0, pdata);
 }
 
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 3b2b1ff..69f4b36 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -43,15 +43,15 @@ static inline struct device_d *imx35_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx35_add_mmc0(void *pdata)
 {
-	return imx_add_mmc((void *)IMX_SDHC1_BASE, 0, pdata);
+	return imx_add_esdhc((void *)IMX_SDHC1_BASE, 0, pdata);
 }
 
 static inline struct device_d *imx35_add_mmc1(void *pdata)
 {
-	return imx_add_mmc((void *)IMX_SDHC2_BASE, 1, pdata);
+	return imx_add_esdhc((void *)IMX_SDHC2_BASE, 1, pdata);
 }
 
 static inline struct device_d *imx35_add_mmc2(void *pdata)
 {
-	return imx_add_mmc((void *)IMX_SDHC3_BASE, 2, pdata);
+	return imx_add_esdhc((void *)IMX_SDHC3_BASE, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index ae85318..a5deb5c 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -43,12 +43,12 @@ static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx51_add_mmc0(void *pdata)
 {
-	return imx_add_mmc((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx51_add_mmc1(void *pdata)
 {
-	return imx_add_mmc((void *)MX51_MMC_SDHC2_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 677d5b5..7338ac5 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -14,4 +14,5 @@ struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
 struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
 struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
 struct device_d *imx_add_mmc(void *base, int id, void *pdata);
+struct device_d *imx_add_esdhc(void *base, int id, void *pdata);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
