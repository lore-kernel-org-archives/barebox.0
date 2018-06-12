Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoGc-0002hU-Ec
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:43:45 +0000
Received: by mail-pf0-x244.google.com with SMTP id b74-v6so12566259pfl.5
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:43:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:43:10 -0700
Message-Id: <20180612184316.4579-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] ARM: i.MX: bbu: Alias identical functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some BBU functions for i.MX53 and i.MX6 are identical, so declare the
latter as an alias for former to avoid code duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 31 ++++++----------------------
 1 file changed, 6 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c7375ff52..4655bdcc3 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -563,18 +563,8 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
  * Register an i.MX6 internal boot update handler for MMC/SD
  */
 int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
-{
-	struct imx_internal_bbu_handler *imx_handler;
-
-	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
-
-	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
-	imx_handler->handler.handler = imx_bbu_internal_v2_update;
-
-	return __register_handler(imx_handler);
-}
+					   unsigned long flags)
+	__alias(imx53_bbu_internal_mmc_register_handler);
 
 /*
  * Register a handler that writes to the non-active boot partition of an mmc
@@ -603,19 +593,10 @@ int imx6_bbu_internal_mmcboot_register_handler(const char *name, char *devicefil
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
  * keep a partition table. We have to erase the device beforehand though.
  */
-int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
-{
-	struct imx_internal_bbu_handler *imx_handler;
-
-	imx_handler = __init_handler(name, devicefile, flags);
-	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
-
-	imx_handler->flags = IMX_INTERNAL_FLAG_ERASE;
-	imx_handler->handler.handler = imx_bbu_internal_v2_update;
-
-	return __register_handler(imx_handler);
-}
+int imx6_bbu_internal_spi_i2c_register_handler(const char *name,
+					       char *devicefile,
+					       unsigned long flags)
+	__alias(imx53_bbu_internal_spi_i2c_register_handler);
 
 int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 		unsigned long flags)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
