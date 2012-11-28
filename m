Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdeOl-0002rP-On
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 09:57:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 10:57:39 +0100
Message-Id: <1354096660-14174-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] ARM i.MX bbu: Allow to overwrite app_dest
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    2 +-
 arch/arm/boards/karo-tx53/board.c          |    5 +++--
 arch/arm/mach-imx/imx-bbu-internal.c       |   29 ++++++++++++++++++++++------
 arch/arm/mach-imx/include/mach/bbu.h       |   16 +++++++++------
 4 files changed, 37 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index cb190ef..831ed0e 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -254,7 +254,7 @@ static int f3s_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
-		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry));
+		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry), 0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 581b6fa..8a69e99 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -218,11 +218,12 @@ static int tx53_devices_init(void)
 
 	/* rev xx30 can boot from nand or USB */
 	imx53_bbu_internal_nand_register_handler("nand-xx30",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)dcd_entry_xx30, sizeof(dcd_entry_xx30), SZ_512K);
+		BBU_HANDLER_FLAG_DEFAULT, (void *)dcd_entry_xx30,
+		sizeof(dcd_entry_xx30), SZ_512K, 0);
 
 	/* rev 1011 can boot from MMC/SD, other bootsource currently unknown */
 	imx53_bbu_internal_mmc_register_handler("mmc-1011", "/dev/disk0",
-		0, (void *)dcd_entry_1011, sizeof(dcd_entry_1011));
+		0, (void *)dcd_entry_1011, sizeof(dcd_entry_1011), 0);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c34f86f..4300b63 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -453,7 +453,8 @@ static int __register_handler(struct imx_internal_bbu_handler *imx_handler)
  * Register a i.MX51 internal boot update handler for MMC/SD
  */
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_entry *dcd, int dcdsize)
+		unsigned long flags, struct imx_dcd_entry *dcd, int dcdsize,
+		unsigned long app_dest)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
@@ -461,7 +462,12 @@ int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 	imx_handler->dcd = dcd;
 	imx_handler->dcdsize = dcdsize;
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
-	imx_handler->app_dest = 0x90000000;
+
+	if (app_dest)
+		imx_handler->app_dest = app_dest;
+	else
+		imx_handler->app_dest = 0x90000000;
+
 	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
 	imx_handler->handler.handler = imx_bbu_internal_v1_update;
 
@@ -507,14 +513,20 @@ static int imx53_bbu_internal_init_dcd(struct imx_internal_bbu_handler *imx_hand
  * Register a i.MX53 internal boot update handler for MMC/SD
  */
 int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize)
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, devicefile, flags);
 	imx53_bbu_internal_init_dcd(imx_handler, dcd, dcdsize);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
-	imx_handler->app_dest = 0x70000000;
+
+	if (app_dest)
+		imx_handler->app_dest = app_dest;
+	else
+		imx_handler->app_dest = 0x70000000;
+
 	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 
@@ -526,14 +538,19 @@ int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
  */
 int imx53_bbu_internal_nand_register_handler(const char *name,
 		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		int partition_size)
+		int partition_size, unsigned long app_dest)
 {
 	struct imx_internal_bbu_handler *imx_handler;
 
 	imx_handler = __init_handler(name, NULL, flags);
 	imx53_bbu_internal_init_dcd(imx_handler, dcd, dcdsize);
 	imx_handler->flash_header_offset = 0x400;
-	imx_handler->app_dest = 0x70000000;
+
+	if (app_dest)
+		imx_handler->app_dest = app_dest;
+	else
+		imx_handler->app_dest = 0x70000000;
+
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 	imx_handler->flags = IMX_INTERNAL_FLAG_NAND;
 	imx_handler->handler.devicefile = "/dev/nand0";
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index f9ec1cc..dd3eefc 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -9,32 +9,36 @@ struct imx_dcd_v2_entry;
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_entry *, int dcdsize);
+		unsigned long flags, struct imx_dcd_entry *, int dcdsize,
+		unsigned long app_dest);
 
 int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize);
+		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
+		unsigned long app_dest);
 
 int imx53_bbu_internal_nand_register_handler(const char *name,
 		unsigned long flags, struct imx_dcd_v2_entry *, int dcdsize,
-		int partition_size);
+		int partition_size, unsigned long app_dest);
 
 #else
 
 static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_entry *dcd, int dcdsize)
+		unsigned long flags, struct imx_dcd_entry *dcd, int dcdsize,
+		unsigned long app_dest)
 {
 	return -ENOSYS;
 }
 
 static inline int imx53_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
-		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize)
+		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
+		unsigned long app_dest)
 {
 	return -ENOSYS;
 }
 
 static inline int imx53_bbu_internal_nand_register_handler(const char *name,
 		unsigned long flags, struct imx_dcd_v2_entry *dcd, int dcdsize,
-		int partition_size)
+		int partition_size, unsigned long app_dest)
 {
 	return -ENOSYS;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
