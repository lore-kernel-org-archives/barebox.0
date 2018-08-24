Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Dx-0005Nf-HX
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id v66-v6so3592761pgb.10
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:25 -0700
Message-Id: <20180824025243.19479-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/24] ARM: i.MX: bbu: Drop IMX_INTERNAL_FLAG_NAND
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Replace IMX_INTERNAL_FLAG_NAND with a function pointer that can be
customized by individual registration functions. The change by iteself
doesn't have that much value, however it makes the simplification in
the commit that follows more straightforward.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index b334fe3d8..d6e45f13c 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -32,11 +32,12 @@
 
 #define FLASH_HEADER_OFFSET_MMC		0x400
 
-#define IMX_INTERNAL_FLAG_NAND		BIT(31)
 #define IMX_INTERNAL_FLAG_ERASE		BIT(30)
 
 struct imx_internal_bbu_handler {
 	struct bbu_handler handler;
+	int (*write_device)(struct imx_internal_bbu_handler *,
+			    struct bbu_data *);
 	unsigned long flash_header_offset;
 	size_t device_size;
 };
@@ -106,6 +107,13 @@ err_close:
 	return ret;
 }
 
+static int __imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
+				  struct bbu_data *data)
+{
+	return imx_bbu_write_device(imx_handler, data->devicefile, data,
+				    data->image, data->len);
+}
+
 static int imx_bbu_check_prereq(struct imx_internal_bbu_handler *imx_handler,
 				const char *devicefile, struct bbu_data *data,
 				enum filetype expected_type)
@@ -370,13 +378,7 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	if (ret)
 		return ret;
 
-	if (imx_handler->handler.flags & IMX_INTERNAL_FLAG_NAND)
-		ret = imx_bbu_internal_v2_write_nand_dbbt(imx_handler, data);
-	else
-		ret = imx_bbu_write_device(imx_handler, data->devicefile, data,
-					   data->image, data->len);
-
-	return ret;
+	return imx_handler->write_device(imx_handler, data);
 }
 
 static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
@@ -452,6 +454,8 @@ static struct imx_internal_bbu_handler *__init_handler(const char *name, char *d
 	handler->name = name;
 	handler->flags = flags;
 
+	imx_handler->write_device = __imx_bbu_write_device;
+
 	return imx_handler;
 }
 
@@ -543,13 +547,13 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
-	imx_handler = __init_handler(name, NULL, flags |
-				     IMX_INTERNAL_FLAG_NAND);
+	imx_handler = __init_handler(name, NULL, flags);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 	imx_handler->handler.devicefile = "/dev/nand0";
 	imx_handler->device_size = partition_size;
+	imx_handler->write_device = imx_bbu_internal_v2_write_nand_dbbt;
 
 	return __register_handler(imx_handler);
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
