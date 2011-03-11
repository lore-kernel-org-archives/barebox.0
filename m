Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pxqxf-0003YL-3V
	for barebox@lists.infradead.org; Fri, 11 Mar 2011 01:16:12 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 11 Mar 2011 02:10:41 +0100
Message-Id: <1299805841-23710-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1299805841-23710-1-git-send-email-plagnioj@jcrosoft.com>
References: <1299805841-23710-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] at91sam9261ek: fix env location and size
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)

so we will match the erase block size

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/boards/at91sam9261ek/env/config |    2 +-
 arch/arm/boards/at91sam9261ek/init.c     |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index b8ca18d..733326d 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -30,7 +30,7 @@ kernelimage=uImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
+nand_parts="256k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
 rootfs_mtdblock_nand=3
 
 autoboot_timeout=3
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 576a022..b1388e1 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -149,9 +149,9 @@ static int at91sam9261ek_devices_init(void)
 	ek_add_device_nand();
 	ek_add_device_dm9000();
 
-	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
