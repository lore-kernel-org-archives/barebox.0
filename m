Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S73Ru-0006mc-7x
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 11:29:59 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 83674DC6A73
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:33:02 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Mar 2012 12:17:50 +0100
Message-Id: <1331551082-7730-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
References: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/14] at91sam9263ek: add runtime nor detection
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

most of the board does not have a nor soldered

update the nand partition table to boot from nand with bootstrap

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/env/config |    6 +++---
 arch/arm/boards/at91sam9263ek/init.c     |   23 ++++++++++++++---------
 2 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index e189b8e..388a939 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -25,10 +25,10 @@ kernelimage=uImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
-rootfs_mtdblock_nand=3
+nand_parts="128k(at91bootstrap),256k(barebox)ro,128k(bareboxenv),128k(bareboxenv2),4M(kernel),120M(rootfs),-(data)"
+rootfs_mtdblock_nand=5
 
-nor_parts="256k(barebox),64k(bareboxenv),1536k(kernel),-(root)"
+nor_parts="256k(barebox),64k(bareboxenv),4M(kernel),-(root)"
 
 autoboot_timeout=3
 
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index d7b9afe..1c52acc 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -32,6 +32,7 @@
 #include <io.h>
 #include <asm/hardware.h>
 #include <nand.h>
+#include <sizes.h>
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
@@ -129,15 +130,19 @@ static int at91sam9263ek_devices_init(void)
 	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 8 * 1024 * 1024, 0);
 	ek_add_device_mci();
 
-#if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
-#elif defined(CONFIG_NAND_ATMEL)
-	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-#endif
+	if (IS_ENABLED(CONFIG_DRIVER_CFI) && cdev_by_name("nor0")) {
+		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self");
+		devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	} else if (IS_ENABLED(CONFIG_NAND_ATMEL)) {
+		devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "at91bootstrap_raw");
+		dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+		devfs_add_partition("nand0", SZ_128K, SZ_256K, PARTITION_FIXED, "self_raw");
+		dev_add_bb_dev("self_raw", "self0");
+		devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, PARTITION_FIXED, "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+		devfs_add_partition("nand0", SZ_512K, SZ_128K, PARTITION_FIXED, "env_raw1");
+		dev_add_bb_dev("env_raw1", "env1");
+	}
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(MACH_TYPE_AT91SAM9263EK);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
