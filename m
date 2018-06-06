Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdR9-0000si-7d
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:46:37 +0000
Received: by mail-pl0-x243.google.com with SMTP id 31-v6so4366275plc.4
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:16 -0700
Message-Id: <20180606184431.10348-24-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 23/38] ARM: i.MX: xload-esdhc: Rework to make code be less
 i.MX6-specific
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert imx6_esdhc_start_image() into a generic esdhc_start_image() by
making accept already filled "struct esdhc" as well as use
esdhc_read_blocks().

With that change, create new imx6_esdhc_start_image() whose sole task
is to properly fill a struct esdhc with appropriate offset and to pass
it on to esdhc_start_image().

Both changes are made with a goal of simplifying adding support of new
SoC in mind (see following commits adding support for i.MX8 as example).

NOTE: This commit does not re-implement imx6_esdhc_load_image(),
instead opting for dropping it, due to lack of any users in the
codebase.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/xload.h |  1 -
 arch/arm/mach-imx/xload-esdhc.c        | 87 ++++++++++++--------------
 2 files changed, 41 insertions(+), 47 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 3898d664e..4e38ac7e2 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -4,7 +4,6 @@
 int imx53_nand_start_image(void);
 int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
 int imx6_spi_start_image(int instance);
-int imx6_esdhc_load_image(int instance, void *buf, int len);
 int imx6_esdhc_start_image(int instance);
 
 int imx_image_size(void);
diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index bd58bdc64..4580f53cd 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -216,50 +216,7 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	return 0;
 }
 
-int imx6_esdhc_load_image(int instance, void *buf, int len)
-{
-	struct esdhc esdhc;
-	int ret;
-
-	switch (instance) {
-	case 0:
-		esdhc.regs = IOMEM(MX6_USDHC1_BASE_ADDR);
-		break;
-	case 1:
-		esdhc.regs = IOMEM(MX6_USDHC2_BASE_ADDR);
-		break;
-	case 2:
-		esdhc.regs = IOMEM(MX6_USDHC3_BASE_ADDR);
-		break;
-	case 3:
-		esdhc.regs = IOMEM(MX6_USDHC4_BASE_ADDR);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	esdhc.is_mx6 = 1;
-
-	ret = esdhc_read_blocks(&esdhc, buf, len);
-	if (ret)
-		return ret;
-
-	return 0;
-}
-
-/**
- * imx6_esdhc_start_image - Load and start an image from USDHC controller
- * @instance: The USDHC controller instance (0..4)
- *
- * This uses imx6_esdhc_load_image() to load an image from SD/MMC.
- * It is assumed that the image is the currently running barebox image
- * (This information is used to calculate the length of the image). The
- * image is started afterwards.
- *
- * Return: If successful, this function does not return. A negative error
- * code is returned when this function fails.
- */
-int imx6_esdhc_start_image(int instance)
+static int esdhc_start_image(struct esdhc *esdhc)
 {
 	void *buf = (void *)0x10000000;
 	u32 *ivt = buf + SZ_1K;
@@ -270,7 +227,7 @@ int imx6_esdhc_start_image(int instance)
 	len = imx_image_size();
 	len = ALIGN(len, SECTOR_SIZE);
 
-	ret = imx6_esdhc_load_image(instance, buf, 3 * SECTOR_SIZE);
+	ret = esdhc_read_blocks(esdhc, buf, 3 * SECTOR_SIZE);
 	if (ret)
 		return ret;
 	if (*(u32 *)(ivt) != 0x402000d1) {
@@ -281,7 +238,7 @@ int imx6_esdhc_start_image(int instance)
 
 	pr_debug("Check ok, loading image\n");
 
-	ret = imx6_esdhc_load_image(instance, buf, len);
+	ret = esdhc_read_blocks(esdhc, buf, len);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
 		return ret;
@@ -295,3 +252,41 @@ int imx6_esdhc_start_image(int instance)
 
 	bb();
 }
+
+/**
+ * imx6_esdhc_start_image - Load and start an image from USDHC controller
+ * @instance: The USDHC controller instance (0..4)
+ *
+ * This uses esdhc_start_image() to load an image from SD/MMC.  It is
+ * assumed that the image is the currently running barebox image (This
+ * information is used to calculate the length of the image). The
+ * image is started afterwards.
+ *
+ * Return: If successful, this function does not return. A negative error
+ * code is returned when this function fails.
+ */
+int imx6_esdhc_start_image(int instance)
+{
+	struct esdhc esdhc;
+
+	switch (instance) {
+	case 0:
+		esdhc.regs = IOMEM(MX6_USDHC1_BASE_ADDR);
+		break;
+	case 1:
+		esdhc.regs = IOMEM(MX6_USDHC2_BASE_ADDR);
+		break;
+	case 2:
+		esdhc.regs = IOMEM(MX6_USDHC3_BASE_ADDR);
+		break;
+	case 3:
+		esdhc.regs = IOMEM(MX6_USDHC4_BASE_ADDR);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	esdhc.is_mx6 = 1;
+
+	return esdhc_start_image(&esdhc);
+}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
