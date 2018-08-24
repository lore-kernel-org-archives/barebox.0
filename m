Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Dx-0005Ng-HQ
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id b129-v6so3586923pga.13
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:26 -0700
Message-Id: <20180824025243.19479-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/24] ARM: i.MX: bbu: Consolidate various update helpers
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
index d6e45f13c..1041a0673 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -40,6 +40,7 @@ struct imx_internal_bbu_handler {
 			    struct bbu_data *);
 	unsigned long flash_header_offset;
 	size_t device_size;
+	enum filetype expected_type;
 };
 
 /*
@@ -164,31 +165,6 @@ static int imx_bbu_check_prereq(struct imx_internal_bbu_handler *imx_handler,
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
-				   filetype_imx_image_v1);
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
 
@@ -360,21 +336,14 @@ out:
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
 
@@ -427,21 +396,6 @@ free_bootpartvar:
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
@@ -453,7 +407,9 @@ static struct imx_internal_bbu_handler *__init_handler(const char *name, char *d
 	handler->devicefile = devicefile;
 	handler->name = name;
 	handler->flags = flags;
+	handler->handler = imx_bbu_update;
 
+	imx_handler->expected_type = filetype_unknown;
 	imx_handler->write_device = __imx_bbu_write_device;
 
 	return imx_handler;
@@ -472,7 +428,8 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
 
 static int
 imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-				      unsigned long flags, void *handler)
+				      unsigned long flags,
+				      enum filetype expected_type)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -480,7 +437,7 @@ imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 				     IMX_BBU_FLAG_KEEP_HEAD);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = handler;
+	imx_handler->expected_type = expected_type;
 
 	return __register_handler(imx_handler);
 }
@@ -494,8 +451,6 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = imx_bbu_internal_v1_update;
-
 	return __register_handler(imx_handler);
 }
 
@@ -507,7 +462,7 @@ int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 {
 
 	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						  imx_bbu_internal_v1_update);
+						     filetype_imx_image_v1);
 }
 
 /*
@@ -517,7 +472,7 @@ int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
 	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						  imx_bbu_internal_v2_update);
+						     filetype_imx_image_v2);
 }
 
 /*
@@ -534,7 +489,7 @@ int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefi
 				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = imx_bbu_internal_v2_update;
+	imx_handler->expected_type = filetype_imx_image_v2;
 
 	return __register_handler(imx_handler);
 }
@@ -550,7 +505,7 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 	imx_handler = __init_handler(name, NULL, flags);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->handler.handler = imx_bbu_internal_v2_update;
+	imx_handler->expected_type = filetype_imx_image_v2;
 	imx_handler->handler.devicefile = "/dev/nand0";
 	imx_handler->device_size = partition_size;
 	imx_handler->write_device = imx_bbu_internal_v2_write_nand_dbbt;
@@ -611,7 +566,6 @@ int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 
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
