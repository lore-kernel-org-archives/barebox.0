Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E5-0005Nj-Ul
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:39 +0000
Received: by mail-pf1-x444.google.com with SMTP id j26-v6so3803605pfi.10
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:29 -0700
Message-Id: <20180824025243.19479-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 10/24] ARM: i.MX: bbu: Detect which platforms need v2 i.MX
 header
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Detect which platforms need header v2 based on current CPU type and
replace all of the code explicitly specifying that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 32 +++++++++++++++++-----------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index be17189f1..c47a1726a 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -29,6 +29,7 @@
 #include <ioctl.h>
 #include <environment.h>
 #include <mach/bbu.h>
+#include <mach/generic.h>
 
 #define FLASH_HEADER_OFFSET_MMC		0x400
 
@@ -336,6 +337,18 @@ out:
 	return ret;
 }
 
+static enum filetype imx_bbu_expected_filetype(void)
+{
+	if (cpu_is_mx8mq() ||
+	    cpu_is_mx7()   ||
+	    cpu_is_mx6()   ||
+	    cpu_is_vf610() ||
+	    cpu_is_mx53())
+		return filetype_imx_image_v2;
+
+	return filetype_imx_image_v1;
+}
+
 static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_internal_bbu_handler *imx_handler =
@@ -410,7 +423,7 @@ static struct imx_internal_bbu_handler *__init_handler(const char *name,
 	handler->flags = flags;
 	handler->handler = imx_bbu_update;
 
-	imx_handler->expected_type = filetype_unknown;
+	imx_handler->expected_type = imx_bbu_expected_filetype();
 	imx_handler->write_device = __imx_bbu_write_device;
 
 	return imx_handler;
@@ -429,8 +442,7 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
 
 static int
 imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
-				      unsigned long flags,
-				      enum filetype expected_type)
+				      unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -438,8 +450,6 @@ imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 				     IMX_BBU_FLAG_KEEP_HEAD);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->expected_type = expected_type;
-
 	return __register_handler(imx_handler);
 }
 
@@ -462,9 +472,7 @@ int imx51_bbu_internal_mmc_register_handler(const char *name,
 					    const char *devicefile,
 					    unsigned long flags)
 {
-
-	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						     filetype_imx_image_v1);
+	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags);
 }
 
 /*
@@ -474,8 +482,7 @@ int imx53_bbu_internal_mmc_register_handler(const char *name,
 					    const char *devicefile,
 					    unsigned long flags)
 {
-	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						     filetype_imx_image_v2);
+	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags);
 }
 
 /*
@@ -493,8 +500,6 @@ int imx53_bbu_internal_spi_i2c_register_handler(const char *name,
 				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->expected_type = filetype_imx_image_v2;
-
 	return __register_handler(imx_handler);
 }
 
@@ -509,7 +514,6 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 	imx_handler = __init_handler(name, "/dev/nand0", flags);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->expected_type = filetype_imx_image_v2;
 	imx_handler->device_size = partition_size;
 	imx_handler->write_device = imx_bbu_internal_v2_write_nand_dbbt;
 
@@ -574,5 +578,7 @@ int imx_bbu_external_nor_register_handler(const char *name,
 	imx_handler = __init_handler(name, devicefile, flags |
 				     IMX_INTERNAL_FLAG_ERASE);
 
+	imx_handler->expected_type = filetype_unknown;
+
 	return __register_handler(imx_handler);
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
