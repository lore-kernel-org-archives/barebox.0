Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnima-0003DH-4j
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:16:02 +0200
Message-Id: <20200623131606.16316-17-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/20] mci: imx-esdhc-pbl: Add imx8mp_esdhc_load_image() for
 i.MX8MP
To: Barebox List <barebox@lists.infradead.org>

The image format of the i.MX8MP is different from i.MX8M, so add its own
image loading function for it.

Older i.MX SoCs had a IVT Offset (the offset from the start of the image
to the actual data) of 1KiB. This was done to leave space for the
partition table at the beginning of the device. To support GPT SoCs
starting with i.MX8M an additional gap of 32KiB was added, so that the
actual image started at offset 33KiB. Now starting with i.MX8MP the now
superfluous 1KiB offset was removed do that the actual image now starts
at 32KiB.
Unfortunately the 1KiB offset is woven into the offsets of the IVT
whereas the 32KiB are not, which means that we really have to handle
both offsets individually instead of just handling the sum of the
offsets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/xload.h |  1 +
 drivers/mci/imx-esdhc-pbl.c            | 42 +++++++++++++++++++++-----
 2 files changed, 36 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index dca05aa5d4..05022e9d09 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -6,6 +6,7 @@ int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
 int imx8m_esdhc_load_image(int instance, bool start);
+int imx8mp_esdhc_load_image(int instance, bool start);
 
 int imx_image_size(void);
 int piggydata_size(void);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index caaf1ac9b5..5c382bbcc2 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -77,7 +77,7 @@ static int esdhc_read_blocks(struct fsl_esdhc_host *host, void *dst, size_t len)
 #ifdef CONFIG_ARCH_IMX
 static int esdhc_search_header(struct fsl_esdhc_host *host,
 			       struct imx_flash_header_v2 **header_pointer,
-			       void *buffer, u32 *offset)
+			       void *buffer, u32 *offset, u32 ivt_offset)
 {
 	int ret;
 	int i, header_count = 1;
@@ -86,11 +86,11 @@ static int esdhc_search_header(struct fsl_esdhc_host *host,
 
 	for (i = 0; i < header_count; i++) {
 		ret = esdhc_read_blocks(host, buf,
-					*offset + SZ_1K + SECTOR_SIZE);
+					*offset + ivt_offset + SECTOR_SIZE);
 		if (ret)
 			return ret;
 
-		hdr = buf + *offset + SZ_1K;
+		hdr = buf + *offset + ivt_offset;
 
 		if (!is_imx_flash_header_v2(hdr)) {
 			pr_debug("IVT header not found on SD card. "
@@ -123,7 +123,7 @@ static int esdhc_search_header(struct fsl_esdhc_host *host,
 
 static int
 esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
-		 ptrdiff_t entry, u32 offset, bool start)
+		 ptrdiff_t entry, u32 offset, u32 ivt_offset, bool start)
 {
 
 	void *buf = (void *)address;
@@ -135,7 +135,7 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
 	len = imx_image_size();
 	len = ALIGN(len, SECTOR_SIZE);
 
-	ret = esdhc_search_header(host, &hdr, buf, &offset);
+	ret = esdhc_search_header(host, &hdr, buf, &offset, ivt_offset);
 	if (ret)
 		return ret;
 
@@ -262,7 +262,7 @@ int imx6_esdhc_start_image(int instance)
 
 	imx_esdhc_init(&host, &data);
 
-	return esdhc_load_image(&host, 0x10000000, 0x10000000, 0, true);
+	return esdhc_load_image(&host, 0x10000000, 0x10000000, 0, SZ_1K, true);
 }
 
 /**
@@ -289,7 +289,35 @@ int imx8m_esdhc_load_image(int instance, bool start)
 		return ret;
 
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
-				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, start);
+				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, SZ_1K,
+				start);
+}
+
+/**
+ * imx8mp_esdhc_load_image - Load and optionally start an image from USDHC controller
+ * @instance: The USDHC controller instance (0..2)
+ * @start: Whether to directly start the loaded image
+ *
+ * This uses esdhc_start_image() to load an image from SD/MMC.  It is
+ * assumed that the image is the currently running barebox image (This
+ * information is used to calculate the length of the image). The
+ * image is started afterwards.
+ *
+ * Return: If successful, this function does not return (if directly started)
+ * or 0. A negative error code is returned when this function fails.
+ */
+int imx8mp_esdhc_load_image(int instance, bool start)
+{
+	struct esdhc_soc_data data;
+	struct fsl_esdhc_host host;
+	int ret;
+
+	ret = imx8m_esdhc_init(&host, &data, instance);
+	if (ret)
+		return ret;
+
+	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
+				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, 0, start);
 }
 #endif
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
