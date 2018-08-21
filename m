Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07n-00006T-Q3
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:49 +0000
Received: by mail-pf1-x442.google.com with SMTP id l9-v6so7978347pff.9
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 Aug 2018 23:25:50 -0700
Message-Id: <20180821062603.17393-10-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/22] ARM: i.MX: bbu: Detect which platforms need v2 i.MX
 header
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Detect which platforms need header v2 based on current CPU type and
replace all of the code explicitly specifying that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 29 ++++++++++++++++------------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index cff4f6802..3ef49a859 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -29,6 +29,7 @@
 #include <ioctl.h>
 #include <environment.h>
 #include <mach/bbu.h>
+#include <mach/generic.h>
 
 #define FLASH_HEADER_OFFSET_MMC		0x400
 
@@ -332,6 +333,18 @@ out:
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
+	return filetype_unknown;
+}
+
 static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_internal_bbu_handler *imx_handler =
@@ -406,7 +419,7 @@ static struct imx_internal_bbu_handler *__init_handler(const char *name,
 	handler->flags = flags;
 	handler->handler = imx_bbu_update;
 
-	imx_handler->expected_type = filetype_unknown;
+	imx_handler->expected_type = imx_bbu_expected_filetype();
 	imx_handler->write_device = __imx_bbu_write_device;
 
 	return imx_handler;
@@ -425,8 +438,7 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
 
 static int
 imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
-				      unsigned long flags,
-				      enum filetype expected_type)
+				      unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -434,8 +446,6 @@ imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 				     IMX_BBU_FLAG_KEEP_HEAD);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->expected_type = expected_type;
-
 	return __register_handler(imx_handler);
 }
 
@@ -459,8 +469,7 @@ int imx51_bbu_internal_mmc_register_handler(const char *name,
 					    unsigned long flags)
 {
 
-	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						     filetype_unknown);
+	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags);
 }
 
 /*
@@ -470,8 +479,7 @@ int imx53_bbu_internal_mmc_register_handler(const char *name,
 					    const char *devicefile,
 					    unsigned long flags)
 {
-	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
-						     filetype_imx_image_v2);
+	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags);
 }
 
 /*
@@ -489,8 +497,6 @@ int imx53_bbu_internal_spi_i2c_register_handler(const char *name,
 				     IMX_INTERNAL_FLAG_ERASE);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->expected_type = filetype_imx_image_v2;
-
 	return __register_handler(imx_handler);
 }
 
@@ -505,7 +511,6 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 	imx_handler = __init_handler(name, "/dev/nand0", flags);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->expected_type = filetype_imx_image_v2;
 	imx_handler->device_size = partition_size;
 	imx_handler->write_device = imx_bbu_internal_v2_write_nand_dbbt;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
