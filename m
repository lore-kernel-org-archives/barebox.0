Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07m-00006R-M4
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id f1-v6so7961640pgq.12
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 08/22] ARM: i.MX: bbu: Constify all 'devicefile' arguments
Date: Mon, 20 Aug 2018 23:25:49 -0700
Message-Id: <20180821062603.17393-9-andrew.smirnov@gmail.com>
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

Constify all 'devicefile' arguments since they are treated as so by
all of the users in BBU code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 40 +++++++++++++++++-----------
 arch/arm/mach-imx/include/mach/bbu.h | 40 ++++++++++++++--------------
 2 files changed, 44 insertions(+), 36 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 9aee102cc..cff4f6802 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -392,8 +392,9 @@ free_bootpartvar:
 	return ret;
 }
 
-static struct imx_internal_bbu_handler *__init_handler(const char *name, char *devicefile,
-		unsigned long flags)
+static struct imx_internal_bbu_handler *__init_handler(const char *name,
+						       const char *devicefile,
+						       unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 	struct bbu_handler *handler;
@@ -423,7 +424,7 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
 }
 
 static int
-imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+imx_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 				      unsigned long flags,
 				      enum filetype expected_type)
 {
@@ -439,7 +440,7 @@ imx_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 }
 
 int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
-		char *devicefile, unsigned long flags)
+		const char *devicefile, unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -453,8 +454,9 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 /*
  * Register an i.MX51 internal boot update handler for MMC/SD
  */
-int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
+int imx51_bbu_internal_mmc_register_handler(const char *name,
+					    const char *devicefile,
+					    unsigned long flags)
 {
 
 	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
@@ -464,8 +466,9 @@ int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 /*
  * Register an i.MX53 internal boot update handler for MMC/SD
  */
-int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
+int imx53_bbu_internal_mmc_register_handler(const char *name,
+					    const char *devicefile,
+					    unsigned long flags)
 {
 	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags,
 						     filetype_imx_image_v2);
@@ -476,8 +479,9 @@ int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
  * keep a partition table. We have to erase the device beforehand though.
  */
-int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
+int imx53_bbu_internal_spi_i2c_register_handler(const char *name,
+						const char *devicefile,
+						unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -511,14 +515,16 @@ int imx53_bbu_internal_nand_register_handler(const char *name,
 /*
  * Register an i.MX6 internal boot update handler for MMC/SD
  */
-int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+int imx6_bbu_internal_mmc_register_handler(const char *name,
+					   const char *devicefile,
 					   unsigned long flags)
 	__alias(imx53_bbu_internal_mmc_register_handler);
 
 /*
  * Register an VF610 internal boot update handler for MMC/SD
  */
-int vf610_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+int vf610_bbu_internal_mmc_register_handler(const char *name,
+					    const char *devicefile,
 					    unsigned long flags)
 	__alias(imx6_bbu_internal_mmc_register_handler);
 
@@ -531,7 +537,8 @@ int vf610_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
  * Note that no further partitioning of the boot partition is supported up to
  * now.
  */
-int imx6_bbu_internal_mmcboot_register_handler(const char *name, char *devicefile,
+int imx6_bbu_internal_mmcboot_register_handler(const char *name,
+					       const char *devicefile,
 					       unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
@@ -550,12 +557,13 @@ int imx6_bbu_internal_mmcboot_register_handler(const char *name, char *devicefil
  * keep a partition table. We have to erase the device beforehand though.
  */
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name,
-					       char *devicefile,
+					       const char *devicefile,
 					       unsigned long flags)
 	__alias(imx53_bbu_internal_spi_i2c_register_handler);
 
-int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
+int imx_bbu_external_nor_register_handler(const char *name,
+					  const char *devicefile,
+					  unsigned long flags)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index b9b2c5bcb..b16766c75 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -32,57 +32,57 @@ struct imx_dcd_v2_entry;
 
 #ifdef CONFIG_BAREBOX_UPDATE
 
-int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+int imx51_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
 int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
-		char *devicefile, unsigned long flags);
+		const char *devicefile, unsigned long flags);
 
-int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+int imx53_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
-int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+int imx53_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
 int imx53_bbu_internal_nand_register_handler(const char *name,
 		unsigned long flags, int partition_size);
 
-int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+int imx6_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
-int imx6_bbu_internal_mmcboot_register_handler(const char *name, char *devicefile,
+int imx6_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
-int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
-int vf610_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+int vf610_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
-int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
+int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
 #else
 
-static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+static inline int imx51_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
 static inline int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
-		char *devicefile, unsigned long flags)
+		const char *devicefile, unsigned long flags)
 {
 	return -ENOSYS;
 }
 
-static inline int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+static inline int imx53_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
-static inline int imx53_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+static inline int imx53_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
 	return -ENOSYS;
@@ -94,32 +94,32 @@ static inline int imx53_bbu_internal_nand_register_handler(const char *name,
 	return -ENOSYS;
 }
 
-static inline int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+static inline int imx6_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
 static inline int imx6_bbu_internal_mmcboot_register_handler(const char *name,
-							     char *devicefile,
+							     const char *devicefile,
 							     unsigned long flags)
 {
 	return -ENOSYS;
 }
 
-static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, char *devicefile,
+static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
 	return -ENOSYS;
 }
 
-static inline int vf610_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
+static inline int vf610_bbu_internal_mmc_register_handler(const char *name, const char *devicefile,
 					    unsigned long flags)
 {
 	return -ENOSYS;
 }
 
-static inline int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
+static inline int imx_bbu_external_nor_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
 	return -ENOSYS;
@@ -127,10 +127,10 @@ static inline int imx_bbu_external_nor_register_handler(const char *name, char *
 #endif
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND)
-int imx_bbu_external_nand_register_handler(const char *name, char *devicefile,
+int imx_bbu_external_nand_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 #else
-static inline int imx_bbu_external_nand_register_handler(const char *name, char *devicefile,
+static inline int imx_bbu_external_nand_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
 	return -ENOSYS;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
