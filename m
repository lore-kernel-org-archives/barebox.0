Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvluu-0001sU-CG
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 09:37:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Jan 2013 10:37:43 +0100
Message-Id: <1358415464-4657-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
References: <1358415464-4657-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM Ka-Ro TX25: Increase NAND partitions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/board.c    |    5 +++--
 arch/arm/boards/karo-tx25/env/config |    2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 98140b3..fba5e6a 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
+#include <sizes.h>
 #include <environment.h>
 #include <mach/imx25-regs.h>
 #include <asm/armlinux.h>
@@ -102,10 +103,10 @@ static int tx25_devices_init(void)
 
 	imx25_add_nand(&nand_info);
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	add_mem_device("sram0", 0x78000000, 128 * 1024,
diff --git a/arch/arm/boards/karo-tx25/env/config b/arch/arm/boards/karo-tx25/env/config
index 87beb6d..4ccf082 100644
--- a/arch/arm/boards/karo-tx25/env/config
+++ b/arch/arm/boards/karo-tx25/env/config
@@ -40,7 +40,7 @@ autoboot_timeout=3
 
 bootargs="console=ttymxc0,115200 tx25_base=$baseboard"
 
-nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
+nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),-(root)"
 nand_device=mxc_nand
 rootfs_mtdblock_nand=3
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
