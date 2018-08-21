Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07p-00007o-Rb
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:53 +0000
Received: by mail-pl0-x242.google.com with SMTP id w14-v6so8295363plp.6
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 11/22] ARM: i.MX: bbu: Alias
 imx5*_bbu_internal_spi_i2c_register_handler()
Date: Mon, 20 Aug 2018 23:25:52 -0700
Message-Id: <20180821062603.17393-12-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Alias imx5*_bbu_internal_spi_i2c_register_handler() to a common function.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index e7fbe3e16..318efd88e 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -449,8 +449,10 @@ imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 	return __register_handler(imx_handler);
 }
 
-int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
-		const char *devicefile, unsigned long flags)
+static int
+imx_bbu_internal_spi_i2c_register_handler(const char *name,
+					  const char *devicefile,
+					  unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -461,6 +463,11 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 	return __register_handler(imx_handler);
 }
 
+int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
+						const char *devicefile,
+						unsigned long flags)
+	__alias(imx_bbu_internal_spi_i2c_register_handler);
+
 /*
  * Register an i.MX51 internal boot update handler for MMC/SD
  */
@@ -485,15 +492,7 @@ int imx53_bbu_internal_mmc_register_handler(const char *name,
 int imx53_bbu_internal_spi_i2c_register_handler(const char *name,
 						const char *devicefile,
 						unsigned long flags)
-{
-	struct imx_internal_bbu_handler *imx_handler;
-
-	imx_handler = __init_handler(name, devicefile, flags |
-				     IMX_INTERNAL_FLAG_ERASE);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
-
-	return __register_handler(imx_handler);
-}
+	__alias(imx_bbu_internal_spi_i2c_register_handler);
 
 /*
  * Register an i.MX53 internal boot update handler for NAND
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
