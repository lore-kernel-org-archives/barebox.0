Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E5-0005Nl-Ug
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id p12-v6so3812630pfh.2
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:31 -0700
Message-Id: <20180824025243.19479-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/24] ARM: i.MX: bbu: Alias
 imx5*_bbu_internal_spi_i2c_register_handler()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Alias imx5*_bbu_internal_spi_i2c_register_handler() to a common function.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index d45fe1b68..fef3797a1 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -453,8 +453,10 @@ imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
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
 
@@ -465,6 +467,11 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
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
@@ -489,15 +496,7 @@ int imx53_bbu_internal_mmc_register_handler(const char *name,
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
