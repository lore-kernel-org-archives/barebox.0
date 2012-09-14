Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCOnH-0004sx-Cw
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 05:50:24 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BF0B8BF081
 for <barebox@lists.infradead.org>; Fri, 14 Sep 2012 07:49:57 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 14 Sep 2012 07:49:56 +0200
Message-Id: <1347601796-22812-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] pcm049 phycard l + xl2: update partion sizes
To: barebox@lists.infradead.org

Use 512k NAND Partion for barebox in enviroment and boards code
pcm049: use 4MB for kernel

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm049/board.c            |    4 ++--
 arch/arm/boards/pcm049/env/config         |    2 +-
 arch/arm/boards/phycard-a-l1/env/config   |    2 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c   |    6 +++---
 arch/arm/boards/phycard-a-xl2/env/config  |    2 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |    4 ++--
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 3ef38a7..3b10d0a 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -118,9 +118,9 @@ static int pcm049_devices_init(void)
 #ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "xload_raw");
 	dev_add_bb_dev("xload_raw", "xload");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
index efbe9ea..70e374f 100644
--- a/arch/arm/boards/pcm049/env/config
+++ b/arch/arm/boards/pcm049/env/config
@@ -40,7 +40,7 @@ autoboot_timeout=3
 
 bootargs="console=ttyO2,115200"
 
-nand_parts="128k(xload)ro,256k(barebox),128k(bareboxenv),2M(kernel),-(root)"
+nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
 rootfs_mtdblock_nand=4
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/phycard-a-l1/env/config
index e0f4dcc..5bc48d7 100644
--- a/arch/arm/boards/phycard-a-l1/env/config
+++ b/arch/arm/boards/phycard-a-l1/env/config
@@ -70,7 +70,7 @@ bootargs="$bootargs omapdss.def_disp=pd050vl1"
 #bootargs="$bootargs omapdss.def_disp=pd104slf"
 #bootargs="$bootargs omapdss.def_disp=pm070wl4"
 
-nand_parts="512k(x-loader)ro,1920k(barebox),128k(bareboxenv),4M(kernel),-(root)"
+nand_parts="128k(x-loader)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
 nand_device=omap2-nand.0
 rootfs_mtdblock_nand=4
 
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 907198d..a08518f 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -422,13 +422,13 @@ device_initcall(pcaal1_init_devices);
 static int pcaal1_late_init(void)
 {
 #ifdef CONFIG_PARTITION
-	devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "x-loader");
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "x-loader");
 	dev_add_bb_dev("self_raw", "x_loader0");
 
-	devfs_add_partition("nand0", 0x80000, 0x1e0000, DEVFS_PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", SZ_128K, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x260000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
 	return 0;
diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phycard-a-xl2/env/config
index 59e8eb3..44a4181 100644
--- a/arch/arm/boards/phycard-a-xl2/env/config
+++ b/arch/arm/boards/phycard-a-xl2/env/config
@@ -39,7 +39,7 @@ autoboot_timeout=3
 
 bootargs="console=ttyO2,115200"
 
-nand_parts="128k(xload)ro,256k(barebox),128k(bareboxenv),4M(kernel),-(root)"
+nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
 rootfs_mtdblock_nand=4
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 4fec0f0..91d45dc 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -136,10 +136,10 @@ static int pcaaxl2_devices_init(void)
 	devfs_add_partition("nand0", 0x00000, SZ_128K,
 			DEVFS_PARTITION_FIXED, "xload_raw");
 	dev_add_bb_dev("xload_raw", "xload");
-	devfs_add_partition("nand0", SZ_128K, SZ_256K,
+	devfs_add_partition("nand0", SZ_128K, SZ_512K,
 			DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_128K + SZ_256K, SZ_128K,
+	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K,
 			DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 #endif
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
