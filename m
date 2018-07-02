Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZqeP-0004Rd-O1
 for barebox@lists.infradead.org; Mon, 02 Jul 2018 04:41:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jul 2018 06:41:06 +0200
Message-Id: <20180702044108.11466-3-s.hauer@pengutronix.de>
In-Reply-To: <20180702044108.11466-1-s.hauer@pengutronix.de>
References: <20180702044108.11466-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX: bbu: remove handler specific flags variable
To: Barebox List <barebox@lists.infradead.org>

Now that we can store flags in the generic handler flags
we no longer need our own variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 35 ++++++++++++++--------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 84810f18a9..fae94fdc4e 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -34,15 +34,14 @@
 
 #define FLASH_HEADER_OFFSET_MMC		0x400
 
-#define IMX_INTERNAL_FLAG_NAND		(1 << 0)
-#define IMX_INTERNAL_FLAG_KEEP_DOSPART	(1 << 1)
-#define IMX_INTERNAL_FLAG_ERASE		(1 << 2)
+#define IMX_INTERNAL_FLAG_NAND		BIT(16)
+#define IMX_INTERNAL_FLAG_KEEP_DOSPART	BIT(17)
+#define IMX_INTERNAL_FLAG_ERASE		BIT(18)
 
 struct imx_internal_bbu_handler {
 	struct bbu_handler handler;
 	unsigned long flash_header_offset;
 	size_t device_size;
-	unsigned long flags;
 };
 
 /*
@@ -60,7 +59,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (fd < 0)
 		return fd;
 
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
+	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE) {
 		pr_debug("%s: unprotecting %s from 0 to 0x%08x\n", __func__,
 				devicefile, image_len);
 		ret = protect(fd, image_len, 0, 0);
@@ -80,7 +79,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		}
 	}
 
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_KEEP_DOSPART) {
+	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_KEEP_DOSPART) {
 		void *mbr = xzalloc(512);
 
 		pr_debug("%s: reading DOS partition table in order to keep it\n", __func__);
@@ -113,7 +112,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (ret < 0)
 		goto err_close;
 
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_ERASE) {
+	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_ERASE) {
 		pr_debug("%s: protecting %s from 0 to 0x%08x\n", __func__,
 				devicefile, image_len);
 		ret = protect(fd, image_len, 0, 1);
@@ -371,7 +370,7 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 		return -EINVAL;
 	}
 
-	if (imx_handler->flags & IMX_INTERNAL_FLAG_NAND)
+	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_NAND)
 		ret = imx_bbu_internal_v2_write_nand_dbbt(imx_handler, data);
 	else
 		ret = imx_bbu_write_device(imx_handler, data->devicefile, data,
@@ -479,10 +478,10 @@ imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
-	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler = __init_handler(name, devicefile, flags |
+				     IMX_INTERNAL_FLAG_KEEP_DOSPART);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
 	imx_handler->handler.handler = handler;
 
 	return __register_handler(imx_handler);
@@ -493,10 +492,10 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
-	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler = __init_handler(name, devicefile, flags |
+				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
 	imx_handler->handler.handler = imx_bbu_internal_v1_update;
 
 	return __register_handler(imx_handler);
@@ -533,10 +532,10 @@ int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefi
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
-	imx_handler = __init_handler(name, devicefile, flags);
+	imx_handler = __init_handler(name, devicefile, flags |
+				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 
 	return __register_handler(imx_handler);
@@ -550,11 +549,11 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
-	imx_handler = __init_handler(name, NULL, flags);
+	imx_handler = __init_handler(name, NULL, flags |
+				     IMX_INTERNAL_FLAG_NAND);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
-	imx_handler->flags = IMX_INTERNAL_FLAG_NAND;
 	imx_handler->handler.devicefile = "/dev/nand0";
 	imx_handler->device_size = partition_size;
 
@@ -612,8 +611,8 @@ int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
-	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
+	imx_handler = __init_handler(name, devicefile, flags |
+				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->handler.handler = imx_bbu_external_update;
 
 	return __register_handler(imx_handler);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
