Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STbn2-0001KM-Va
 for barebox@lists.infradead.org; Sun, 13 May 2012 16:37:01 +0000
Received: by laap9 with SMTP id p9so3573870laa.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 09:36:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 13 May 2012 20:36:50 +0400
Message-Id: <1336927010-13872-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fix typo funtion -> function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/start.c                   |    2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c |    2 +-
 drivers/mtd/nand/nand_imx.c            |    2 +-
 include/linux/mtd/nand.h               |    2 +-
 scripts/mod/modpost.c                  |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index ede8fd1..c7462f6 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -108,7 +108,7 @@ void __naked __bare_init reset(void)
 
 /*
  * Board code can jump here by either returning from board_init_lowlevel
- * or by calling this funtion directly.
+ * or by calling this function directly.
  */
 void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 {
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 0fc32f1..cf87b57 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -49,7 +49,7 @@ static struct gpmc_nand_platform_data nand_plat = {
 /**
  * @brief gpmc_generic_nand_devices_init - init generic nand device
  *
- * @return success/fail based on device funtion
+ * @return success/fail based on device function
  */
 int gpmc_generic_nand_devices_init(int cs, int width,
 		enum gpmc_ecc_mode eccmode, struct gpmc_config *nand_cfg)
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 85cfbed..e75ffbc 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1135,7 +1135,7 @@ static int __init imxnd_probe(struct device_d *dev)
 
 	this->ecc.layout = oob_smallpage;
 
-	/* NAND bus width determines access funtions used by upper layer */
+	/* NAND bus width determines access functions used by upper layer */
 	if (pdata->width == 2) {
 		this->options |= NAND_BUSWIDTH_16;
 		this->ecc.layout = &nandv1_hw_eccoob_smallpage;
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 8e20876..2a1c4ff 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -313,7 +313,7 @@ struct nand_buffers {
  * @select_chip:	[REPLACEABLE] select chip nr
  * @block_bad:		[REPLACEABLE] check, if the block is bad
  * @block_markbad:	[REPLACEABLE] mark the block bad
- * @cmd_ctrl:		[BOARDSPECIFIC] hardwarespecific funtion for controlling
+ * @cmd_ctrl:		[BOARDSPECIFIC] hardwarespecific function for controlling
  *			ALE/CLE/nCE. Also used to write command and address
  * @dev_ready:		[BOARDSPECIFIC] hardwarespecific function for accesing device ready/busy line
  *			If set to NULL no access to ready/busy is available and the ready/busy information
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index e994486..795ee8d 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -604,7 +604,7 @@ static int strrcmp(const char *s, const char *sub)
  * Whitelist to allow certain references to pass with no warning.
  *
  * Pattern 0:
- *   Do not warn if funtion/data are marked with __init_refok/__initdata_refok.
+ *   Do not warn if function/data are marked with __init_refok/__initdata_refok.
  *   The pattern is identified by:
  *   fromsec = .text.init.refok | .data.init.refok
  *
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
