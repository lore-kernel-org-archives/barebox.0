Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeiCY-0008Hb-HG
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:50:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:49:38 +0200
Message-Id: <1398678579-17491-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
References: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] mtd: nand: create bb devices automatically
To: barebox@lists.infradead.org

When a mtd device can have bad blocks we want to create a
bb device, so do this automatically. This allows us to
drop bb device creation from the environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/env/bin/hush_hack            | 1 -
 arch/arm/boards/a9m2410/env/bin/init                 | 4 ----
 arch/arm/boards/a9m2440/env/bin/hush_hack            | 1 -
 arch/arm/boards/a9m2440/env/bin/init                 | 4 ----
 arch/arm/boards/eukrea_cpuimx27/env/bin/hush_hack    | 1 -
 arch/arm/boards/eukrea_cpuimx27/env/bin/init         | 4 ----
 arch/arm/boards/freescale-mx25-3ds/env/bin/hush_hack | 1 -
 arch/arm/boards/freescale-mx25-3ds/env/bin/init      | 4 ----
 arch/arm/boards/mmccpu/env/bin/hush_hack             | 1 -
 arch/arm/boards/mmccpu/env/bin/init                  | 4 ----
 arch/arm/boards/pm9263/env/bin/hush_hack             | 1 -
 arch/arm/boards/pm9263/env/bin/init                  | 4 ----
 defaultenv/defaultenv-1/bin/init                     | 1 -
 defaultenv/defaultenv-2-base/bin/mtdparts-add        | 4 ----
 drivers/mtd/core.c                                   | 3 +++
 drivers/of/partition.c                               | 3 ---
 include/linux/mtd/mtd.h                              | 2 ++
 17 files changed, 5 insertions(+), 38 deletions(-)
 delete mode 100644 arch/arm/boards/a9m2410/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/a9m2440/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/mmccpu/env/bin/hush_hack
 delete mode 100644 arch/arm/boards/pm9263/env/bin/hush_hack

diff --git a/arch/arm/boards/a9m2410/env/bin/hush_hack b/arch/arm/boards/a9m2410/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/a9m2410/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/a9m2410/env/bin/init b/arch/arm/boards/a9m2410/env/bin/init
index 5ae44dd..dd94ef6 100644
--- a/arch/arm/boards/a9m2410/env/bin/init
+++ b/arch/arm/boards/a9m2410/env/bin/init
@@ -7,10 +7,6 @@ export PATH
 
 if [ -e /dev/nand0 ]; then
 	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack
 fi
 
 if [ -z $eth0.ethaddr ]; then
diff --git a/arch/arm/boards/a9m2440/env/bin/hush_hack b/arch/arm/boards/a9m2440/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/a9m2440/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/a9m2440/env/bin/init b/arch/arm/boards/a9m2440/env/bin/init
index 5ae44dd..dd94ef6 100644
--- a/arch/arm/boards/a9m2440/env/bin/init
+++ b/arch/arm/boards/a9m2440/env/bin/init
@@ -7,10 +7,6 @@ export PATH
 
 if [ -e /dev/nand0 ]; then
 	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack
 fi
 
 if [ -z $eth0.ethaddr ]; then
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/hush_hack b/arch/arm/boards/eukrea_cpuimx27/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/init b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
index cd74974..e3c1091 100644
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/init
+++ b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
@@ -10,10 +10,6 @@ fi
 
 if [ -e /dev/nand0 ]; then
 	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack 
 fi
 
 if [ -f /env/logo.bmp ]; then
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/bin/hush_hack b/arch/arm/boards/freescale-mx25-3ds/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/freescale-mx25-3ds/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/freescale-mx25-3ds/env/bin/init b/arch/arm/boards/freescale-mx25-3ds/env/bin/init
index 0600b9e..8eafa34 100644
--- a/arch/arm/boards/freescale-mx25-3ds/env/bin/init
+++ b/arch/arm/boards/freescale-mx25-3ds/env/bin/init
@@ -10,10 +10,6 @@ fi
 
 if [ -e /dev/nand0 ]; then
 	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack 
 fi
 
 echo
diff --git a/arch/arm/boards/mmccpu/env/bin/hush_hack b/arch/arm/boards/mmccpu/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/mmccpu/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/mmccpu/env/bin/init b/arch/arm/boards/mmccpu/env/bin/init
index ac84bd5..ad9b65a 100644
--- a/arch/arm/boards/mmccpu/env/bin/init
+++ b/arch/arm/boards/mmccpu/env/bin/init
@@ -10,10 +10,6 @@ fi
 
 if [ -e /dev/nand0 ]; then
 	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack
 fi
 
 if [ -z $eth0.ethaddr ]; then
diff --git a/arch/arm/boards/pm9263/env/bin/hush_hack b/arch/arm/boards/pm9263/env/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/arch/arm/boards/pm9263/env/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/arch/arm/boards/pm9263/env/bin/init b/arch/arm/boards/pm9263/env/bin/init
index 02f5cd4..ad9b65a 100644
--- a/arch/arm/boards/pm9263/env/bin/init
+++ b/arch/arm/boards/pm9263/env/bin/init
@@ -10,10 +10,6 @@ fi
 
 if [ -e /dev/nand0 ]; then
 	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack 
 fi
 
 if [ -z $eth0.ethaddr ]; then
diff --git a/defaultenv/defaultenv-1/bin/init b/defaultenv/defaultenv-1/bin/init
index adb3c43..4781b5a 100644
--- a/defaultenv/defaultenv-1/bin/init
+++ b/defaultenv/defaultenv-1/bin/init
@@ -16,7 +16,6 @@ fi
 
 if [ -e /dev/nand0 -a -n "$nand_parts" ]; then
 	addpart /dev/nand0 $nand_parts
-	nand -a /dev/nand0.*
 fi
 
 if [ -f /env/bin/init_board ]; then
diff --git a/defaultenv/defaultenv-2-base/bin/mtdparts-add b/defaultenv/defaultenv-2-base/bin/mtdparts-add
index 58c9fa7..05ab638 100644
--- a/defaultenv/defaultenv-2-base/bin/mtdparts-add
+++ b/defaultenv/defaultenv-2-base/bin/mtdparts-add
@@ -39,10 +39,6 @@ fi
 addpart -n /dev/${device} "$parts" || exit
 mkdir -p /tmp/mtdparts/${device}
 
-if [ -n "${bbdev}" ]; then
-	nand -a /dev/${device}.*
-fi
-
 if [ -n ${kernelname} ]; then
 	global linux.mtdparts.${device}
 	global.linux.mtdparts.${device}="${kernelname}:${parts}"
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index c97c8c1..d954f72 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -409,6 +409,9 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 
 	devfs_create(&mtd->cdev);
 
+	if (mtd_can_have_bb(mtd))
+		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
+
 	if (mtd->parent && !mtd->master)
 		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 5ed44a8..074be09 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -61,9 +61,6 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 
 	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
 
-	if (cdev->mtd && cdev->mtd->type == MTD_NANDFLASH)
-		dev_add_bb_dev(filename, NULL);
-
 	free(filename);
 
 	return new;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index c63b514..5f02aee 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -211,6 +211,8 @@ struct mtd_info {
 	struct device_d *parent;
 	struct cdev cdev;
 
+	struct cdev *cdev_bb;
+
 	struct param_d param_size;
 	char *size_str;
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
