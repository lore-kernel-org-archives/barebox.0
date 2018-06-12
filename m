Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoGc-0002qt-EX
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:43:46 +0000
Received: by mail-pf0-x244.google.com with SMTP id a12-v6so12567946pfi.3
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:43:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:43:13 -0700
Message-Id: <20180612184316.4579-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184316.4579-1-andrew.smirnov@gmail.com>
References: <20180612184316.4579-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] ARM: i.MX: bbu: Share MMC code between i.MX51 and 53
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both functions do exactly the same thing with only difference being
type of hanler they pass one. Convert the code to use a generic
function accpeting handler as additional parameter.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 32 +++++++++++++++-------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 07a26f25a..b4e78aea4 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -473,11 +473,9 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
 	return ret;
 }
 
-/*
- * Register an i.MX51 internal boot update handler for MMC/SD
- */
-int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
+static int
+imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+				      unsigned long flags, void *handler)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -485,7 +483,7 @@ int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
 	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
-	imx_handler->handler.handler = imx_bbu_internal_v1_update;
+	imx_handler->handler.handler = handler;
 
 	return __register_handler(imx_handler);
 }
@@ -505,20 +503,24 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 }
 
 /*
- * Register an i.MX53 internal boot update handler for MMC/SD
+ * Register an i.MX51 internal boot update handler for MMC/SD
  */
-int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
-	struct imx_internal_bbu_handler *imx_handler;
-
-	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
-	imx_handler->handler.handler = imx_bbu_internal_v2_update;
+	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
+						  imx_bbu_internal_v1_update);
+}
 
-	return __register_handler(imx_handler);
+/*
+ * Register an i.MX53 internal boot update handler for MMC/SD
+ */
+int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+		unsigned long flags)
+{
+	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
+						  imx_bbu_internal_v2_update);
 }
 
 /*
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
