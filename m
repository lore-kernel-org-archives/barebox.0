Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iom34-0008Jk-6E
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:25:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iom31-0003LK-92
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 11:25:15 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2020 11:25:13 +0100
Message-Id: <20200107102515.29198-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] esdhc-pbl: allow to skip starting i.MX8 image
To: barebox@lists.infradead.org

Add an option that allows to just load the image into memory, but
return to the calling function instead of directly jumping to the
loaded image.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c |  2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    |  2 +-
 arch/arm/mach-imx/include/mach/xload.h       |  2 +-
 drivers/mci/imx-esdhc-pbl.c                  | 22 ++++++++++++--------
 4 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 4e52b92ad305..4cacabb1fbfc 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -56,7 +56,7 @@ static void phytec_imx8mq_som_sram_setup(void)
 	imx8_get_boot_source(&src, &instance);
 
 	if (src == BOOTSOURCE_MMC)
-		ret = imx8_esdhc_start_image(instance);
+		ret = imx8_esdhc_load_image(instance, true);
 
 	BUG_ON(ret);
 }
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 795c98cb660e..f12d79ee6eee 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -78,7 +78,7 @@ static void zii_imx8mq_dev_sram_setup(void)
 	imx8_get_boot_source(&src, &instance);
 
 	if (src == BOOTSOURCE_MMC)
-		ret = imx8_esdhc_start_image(instance);
+		ret = imx8_esdhc_load_image(instance, true);
 
 	BUG_ON(ret);
 }
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index a605e76339c8..a9b9d93f246f 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -5,7 +5,7 @@ int imx53_nand_start_image(void);
 int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int len);
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
-int imx8_esdhc_start_image(int instance);
+int imx8_esdhc_load_image(int instance, bool start);
 int imx8_esdhc_load_piggy(int instance);
 
 int imx_image_size(void);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index c0d27fb7eb35..db4116fa9315 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -121,8 +121,8 @@ static int esdhc_search_header(struct fsl_esdhc_host *host,
 }
 
 static int
-esdhc_start_image(struct fsl_esdhc_host *host, ptrdiff_t address, ptrdiff_t entry,
-		  u32 offset)
+esdhc_load_image(struct fsl_esdhc_host *esdhc, ptrdiff_t address,
+		 ptrdiff_t entry, u32 offset, bool start)
 {
 
 	void *buf = (void *)address;
@@ -177,6 +177,9 @@ esdhc_start_image(struct fsl_esdhc_host *host, ptrdiff_t address, ptrdiff_t entr
 
 	pr_debug("Image loaded successfully\n");
 
+	if (!start)
+		return 0;
+
 	bb = buf + ofs;
 
 	sync_caches_for_execution();
@@ -254,22 +257,23 @@ int imx6_esdhc_start_image(int instance)
 
 	imx_esdhc_init(&host, &data);
 
-	return esdhc_start_image(&host, 0x10000000, 0x10000000, 0);
+	return esdhc_load_image(&host, 0x10000000, 0x10000000, 0, true);
 }
 
 /**
- * imx8_esdhc_start_image - Load and start an image from USDHC controller
+ * imx8_esdhc_load_image - Load and optionally start an image from USDHC controller
  * @instance: The USDHC controller instance (0..2)
+ * @start: Whether to directly start the loaded image
  *
  * This uses esdhc_start_image() to load an image from SD/MMC.  It is
  * assumed that the image is the currently running barebox image (This
  * information is used to calculate the length of the image). The
  * image is started afterwards.
  *
- * Return: If successful, this function does not return. A negative error
- * code is returned when this function fails.
+ * Return: If successful, this function does not return (if directly started)
+ * or 0. A negative error code is returned when this function fails.
  */
-int imx8_esdhc_start_image(int instance)
+int imx8_esdhc_load_image(int instance, bool start)
 {
 	struct esdhc_soc_data data;
 	struct fsl_esdhc_host host;
@@ -279,8 +283,8 @@ int imx8_esdhc_start_image(int instance)
 	if (ret)
 		return ret;
 
-	return esdhc_start_image(&host, MX8MQ_DDR_CSD1_BASE_ADDR,
-				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
+	return esdhc_load_image(&host, MX8MQ_DDR_CSD1_BASE_ADDR,
+				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, start);
 }
 
 int imx8_esdhc_load_piggy(int instance)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
