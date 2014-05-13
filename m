Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk7i0-0000fZ-Ay
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:05:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 May 2014 10:04:43 +0200
Message-Id: <1399968283-10190-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] drop CONFIG_PARTITION_NEED_MTD
To: barebox@lists.infradead.org

With CONFIG_PARTITION_NEED_MTD enabled we use mtd rather than devfs
directly to create partitions on mtd devices. Since:

| commit b32cd8df87b87ef744365138e145b829c02eb719
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Wed Apr 9 15:49:32 2014 +0200
|
|     mtd: nand: bb: use mtd api directly
|
|     The devfs layer just adds an addition indirection between mtd
|     and the bb devices with no purpose. Drop it.
|
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

The bad block aware device creation doesn't work if this option
is disabled. With this we remove CONFIG_PARTITION_NEED_MTD and always
use mtd partitions on mtd devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/phytec-phycard-omap3_defconfig | 1 -
 arch/arm/configs/tx51stk5_defconfig             | 1 -
 commands/Kconfig                                | 1 -
 drivers/mtd/Makefile                            | 3 +--
 drivers/mtd/ubi/Kconfig                         | 1 -
 fs/Kconfig                                      | 3 ---
 fs/devfs-core.c                                 | 4 ++--
 7 files changed, 3 insertions(+), 11 deletions(-)

diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index b901658..b0378b3 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -162,7 +162,6 @@ CONFIG_FS_DEVFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_PARTITION_NEED_MTD=y
 CONFIG_ZLIB=y
 CONFIG_BZLIB=y
 CONFIG_PROCESS_ESCAPE_SEQUENCE=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 354e809..6578f4d 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -139,7 +139,6 @@ CONFIG_LED_GPIO=y
 CONFIG_FS_RAMFS=y
 CONFIG_FS_DEVFS=y
 CONFIG_FS_FAT=y
-CONFIG_PARTITION_NEED_MTD=y
 CONFIG_PARAMETER=y
 CONFIG_UNCOMPRESS=y
 CONFIG_ZLIB=y
diff --git a/commands/Kconfig b/commands/Kconfig
index 3ef8860..676690a 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -584,7 +584,6 @@ config CMD_NANDTEST
 	depends on NAND
 	depends on PARTITION
 	depends on NAND_ECC_HW || NAND_ECC_SOFT
-	select PARTITION_NEED_MTD
 	prompt "nandtest"
 
 config CMD_MEMTEST
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index d831264..9c77257 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -2,7 +2,6 @@ obj-$(CONFIG_NAND)			+= nand/
 obj-$(CONFIG_DRIVER_CFI)		+= nor/
 obj-$(CONFIG_MTD_UBI)			+= ubi/
 obj-y					+= devices/
-obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
-obj-$(CONFIG_MTD)			+= core.o
+obj-$(CONFIG_MTD)			+= core.o partition.o
 obj-$(CONFIG_MTD_OOB_DEVICE)		+= mtdoob.o
 obj-$(CONFIG_MTD_RAW_DEVICE)		+= mtdraw.o
diff --git a/drivers/mtd/ubi/Kconfig b/drivers/mtd/ubi/Kconfig
index 926d31c..ccd547d 100644
--- a/drivers/mtd/ubi/Kconfig
+++ b/drivers/mtd/ubi/Kconfig
@@ -1,7 +1,6 @@
 menuconfig MTD_UBI
 	tristate "Enable UBI - Unsorted block images"
 	select CRC32
-	select PARTITION_NEED_MTD
 	help
 	  UBI is a software layer above MTD layer which admits of LVM-like
 	  logical volumes on top of MTD devices, hides some complexities of
diff --git a/fs/Kconfig b/fs/Kconfig
index 50a15c6..3724b34 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -63,7 +63,4 @@ config FS_UIMAGEFS
 	bool
 	prompt "uImage FS support"
 
-config PARTITION_NEED_MTD
-	bool
-
 endmenu
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 455b21a..f45f8ca 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -296,7 +296,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD) && cdev->mtd) {
+	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
 		struct mtd_info *mtd;
 
 		mtd = mtd_add_partition(cdev->mtd, offset, size,
@@ -352,7 +352,7 @@ int devfs_del_partition(const char *name)
 	if (!cdev)
 		return -ENOENT;
 
-	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD) && cdev->mtd) {
+	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
 		ret = mtd_del_partition(cdev->mtd);
 		return ret;
 	}
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
