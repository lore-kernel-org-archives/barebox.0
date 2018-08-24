Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E5-0005Op-AM
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:37 +0000
Received: by mail-pg1-x541.google.com with SMTP id z25-v6so3598240pgu.7
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:33 -0700
Message-Id: <20180824025243.19479-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 14/24] ARM: i.MX: bbu: Adjust FLASH_HEADER_OFFSET_MMC for
 i.MX8MQ
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Flash header is located at 33KiB mark on i.MX8MQ, so we need to take
that into account when initializing imx_handler->flash_header_offset.

Convert FLASH_HEADER_OFFSET_MMC into a function call that will check
if Barebox is running on i.MX8MQ CPU and adjust the offset
accordingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 12d48401d..c1b3d9ce8 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -31,8 +31,6 @@
 #include <mach/bbu.h>
 #include <mach/generic.h>
 
-#define FLASH_HEADER_OFFSET_MMC		0x400
-
 #define IMX_INTERNAL_FLAG_ERASE		BIT(30)
 
 struct imx_internal_bbu_handler {
@@ -371,6 +369,20 @@ static enum filetype imx_bbu_expected_filetype(void)
 	return filetype_imx_image_v1;
 }
 
+static unsigned long imx_bbu_flash_header_offset_mmc(void)
+{
+	unsigned long offset = SZ_1K;
+
+	/*
+	 * i.MX8MQ moved the header by 32K to accomodate for GPT
+	 * partition tables
+	 */
+	if (cpu_is_mx8mq())
+		offset += SZ_32K;
+
+	return offset;
+}
+
 static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_internal_bbu_handler *imx_handler =
@@ -470,7 +482,7 @@ imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 
 	imx_handler = __init_handler(name, devicefile, flags |
 				     IMX_BBU_FLAG_KEEP_HEAD);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
+	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
 
 	return __register_handler(imx_handler);
 }
@@ -484,7 +496,7 @@ imx_bbu_internal_spi_i2c_register_handler(const char *name,
 
 	imx_handler = __init_handler(name, devicefile, flags |
 				     IMX_INTERNAL_FLAG_ERASE);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
+	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
 
 	return __register_handler(imx_handler);
 }
@@ -529,7 +541,7 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, "/dev/nand0", flags);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
+	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
 
 	imx_handler->device_size = partition_size;
 	imx_handler->write_device = imx_bbu_internal_v2_write_nand_dbbt;
@@ -569,7 +581,7 @@ int imx6_bbu_internal_mmcboot_register_handler(const char *name,
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
+	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
 
 	imx_handler->handler.handler = imx_bbu_internal_v2_mmcboot_update;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
