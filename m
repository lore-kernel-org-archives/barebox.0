Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9MV-0008C1-R1
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:01:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:01:23 +0100
Message-Id: <1354215684-25235-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354215684-25235-1-git-send-email-s.hauer@pengutronix.de>
References: <1354215684-25235-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM i.MX bbu internal: Add spi/i2c support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c |   54 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/bbu.h |   22 ++++++++++++++
 2 files changed, 76 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 029bd5b..f36081c 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -36,6 +36,7 @@
 
 #define IMX_INTERNAL_FLAG_NAND		(1 << 0)
 #define IMX_INTERNAL_FLAG_KEEP_DOSPART	(1 << 1)
+#define IMX_INTERNAL_FLAG_ERASE		(1 << 2)
 
 struct imx_internal_bbu_handler {
 	struct bbu_handler handler;
@@ -60,6 +61,17 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (fd < 0)
 		return fd;
 
+	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
+		debug("%s: eraseing %s from 0 to 0x%08x\n", __func__,
+				data->devicefile, image_len);
+		ret = erase(fd, image_len, 0);
+		if (ret) {
+			printf("erasing %s failed with %s\n", data->devicefile,
+					strerror(-ret));
+			goto err_close;
+		}
+	}
+
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_KEEP_DOSPART) {
 		void *mbr = xzalloc(512);
 
@@ -522,6 +534,32 @@ int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 }
 
 /*
+ * Register a i.MX53 internal boot update handler for i2c/spi
+ * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
+ * keep a partition table. We have to erase the device beforehand though.
+ */
+int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
+{
+	struct imx_internal_bbu_handler *imx_handler;
+
+	imx_handler = __init_handler(name, devicefile, flags);
+	imx53_bbu_internal_init_dcd(imx_handler, dcd, dcdsize);
+	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
+
+	if (app_dest)
+		imx_handler->app_dest = app_dest;
+	else
+		imx_handler->app_dest = 0x70000000;
+
+	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
+	imx_handler->handler.handler = imx_bbu_internal_v2_update;
+
+	return __register_handler(imx_handler);
+}
+
+/*
  * Register a i.MX53 internal boot update handler for NAND
  */
 int imx53_bbu_internal_nand_register_handler(const char *name,
@@ -555,3 +593,19 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 	return imx53_bbu_internal_mmc_register_handler(name, devicefile,
 		flags, dcd, dcdsize, app_dest);
 }
+
+/*
+ * Register a i.MX53 internal boot update handler for i2c/spi
+ * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
+ * keep a partition table. We have to erase the device beforehand though.
+ */
+int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
+{
+	if (!app_dest)
+		app_dest = 0x10000000;
+
+	return imx53_bbu_internal_spi_i2c_register_handler(name, devicefile,
+		flags, dcd, dcdsize, app_dest);
+}
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index 249ed4a..37ebb57 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -14,6 +14,10 @@ int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize);
 
+int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest);
+
 int imx53_bbu_internal_nand_register_handler(const char *name,
 		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
 		int partition_size);
@@ -22,6 +26,10 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
 		unsigned long app_dest);
 
+int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest);
+
 #else
 
 static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
@@ -36,6 +44,13 @@ static inline int imx53_bbu_internal_mmc_register_handler(const char *name, char
 	return -ENOSYS;
 }
 
+static inline int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
+{
+	return -ENOSYS;
+}
+
 static inline int imx53_bbu_internal_nand_register_handler(const char *name,
 		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
 		int partition_size)
@@ -50,6 +65,13 @@ static inline int imx6_bbu_internal_mmc_register_handler(const char *name, char
 	return -ENOSYS;
 }
 
+static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
+{
+	return -ENOSYS;
+}
+
 #endif
 
 struct dcd_table {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
