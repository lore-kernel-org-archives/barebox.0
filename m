Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07l-00006C-8j
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id r1-v6so7958565pgp.11
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 Aug 2018 23:25:47 -0700
Message-Id: <20180821062603.17393-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/22] ARM: i.MX: bbu: Consolidate vairous update helpers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All three, imx_bbu_internal_v1_update(), imx_bbu_external_update() and
imx_bbu_internal_v2_update() are doing exactly the same thing. Instead
of having three almost identical functions, convert
imx_bbu_internal_v2_update() (the most versatile of the three) to be a
generic function and use it everywhere.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 70 +++++-----------------------
 1 file changed, 12 insertions(+), 58 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 0e55e4fd1..34c8ea92c 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -40,6 +40,7 @@ struct imx_internal_bbu_handler {
 			    struct bbu_data *);
 	unsigned long flash_header_offset;
 	size_t device_size;
+	enum filetype expected_type;
 };
 
 /*
@@ -160,31 +161,6 @@ static int imx_bbu_check_prereq(struct imx_internal_bbu_handler *imx_handler,
 	return 0;
 }
 
-/*
- * Update barebox on a v1 type internal boot (i.MX25, i.MX35, i.MX51)
- *
- * This constructs a DCD header, adds the specific DCD data and writes
- * the resulting image to the device. Currently this handles MMC/SD
- * devices.
- */
-static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_data *data)
-{
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
-	int ret;
-
-	ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
-				   filetype_unknown);
-	if (ret)
-		return ret;
-
-	pr_info("updating to %s\n", data->devicefile);
-
-	ret = imx_bbu_write_device(imx_handler, data->devicefile, data, data->image, data->len);
-
-	return ret;
-}
-
 #define DBBT_MAGIC	0x44424254
 #define FCB_MAGIC	0x20424346
 
@@ -356,21 +332,14 @@ out:
 	return ret;
 }
 
-/*
- * Update barebox on a v2 type internal boot (i.MX53)
- *
- * This constructs a DCD header, adds the specific DCD data and writes
- * the resulting image to the device. Currently this handles MMC/SD
- * and NAND devices.
- */
-static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_data *data)
+static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
 
 	ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
-				   filetype_imx_image_v2);
+				   imx_handler->expected_type);
 	if (ret)
 		return ret;
 
@@ -423,21 +392,6 @@ free_bootpartvar:
 	return ret;
 }
 
-static int imx_bbu_external_update(struct bbu_handler *handler, struct bbu_data *data)
-{
-	struct imx_internal_bbu_handler *imx_handler =
-		container_of(handler, struct imx_internal_bbu_handler, handler);
-	int ret;
-
-	ret = imx_bbu_check_prereq(imx_handler, data->devicefile, data,
-				   filetype_unknown);
-	if (ret)
-		return ret;
-
-	return imx_bbu_write_device(imx_handler, data->devicefile, data,
-				    data->image, data->len);
-}
-
 static struct imx_internal_bbu_handler *__init_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
@@ -449,7 +403,9 @@ static struct imx_internal_bbu_handler *__init_handler(const char *name, char *d
 	handler->devicefile = devicefile;
 	handler->name = name;
 	handler->flags = flags;
+	handler->handler = imx_bbu_update;
 
+	imx_handler->expected_type = filetype_unknown;
 	imx_handler->write_device = __imx_bbu_write_device;
 
 	return imx_handler;
@@ -468,7 +424,8 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
 
 static int
 imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-				      unsigned long flags, void *handler)
+				      unsigned long flags,
+				      enum filetype expected_type)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -476,7 +433,7 @@ imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 				     IMX_BBU_FLAG_KEEP_HEAD);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = handler;
+	imx_handler->expected_type = expected_type;
 
 	return __register_handler(imx_handler);
 }
@@ -490,8 +447,6 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = imx_bbu_internal_v1_update;
-
 	return __register_handler(imx_handler);
 }
 
@@ -503,7 +458,7 @@ int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 {
 
 	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						  imx_bbu_internal_v1_update);
+						     filetype_unknown);
 }
 
 /*
@@ -513,7 +468,7 @@ int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
 	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						  imx_bbu_internal_v2_update);
+						     filetype_imx_image_v2);
 }
 
 /*
@@ -530,7 +485,7 @@ int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefi
 				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = imx_bbu_internal_v2_update;
+	imx_handler->expected_type = filetype_imx_image_v2;
 
 	return __register_handler(imx_handler);
 }
@@ -546,7 +501,7 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 	imx_handler = __init_handler(name, NULL, flags);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = imx_bbu_internal_v2_update;
+	imx_handler->expected_type = filetype_imx_image_v2;
 	imx_handler->handler.devicefile = "/dev/nand0";
 	imx_handler->device_size = partition_size;
 	imx_handler->write_device = imx_bbu_internal_v2_write_nand_dbbt;
@@ -607,7 +562,6 @@ int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 
 	imx_handler = __init_handler(name, devicefile, flags |
 				     IMX_INTERNAL_FLAG_ERASE);
-	imx_handler->handler.handler = imx_bbu_external_update;
 
 	return __register_handler(imx_handler);
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
