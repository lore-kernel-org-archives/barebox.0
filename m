Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMeIz-0006MQ-WA
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 13:30:02 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8850ADC8873
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 15:29:40 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 15:30:51 +0200
Message-Id: <1379597451-6275-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] animeo_ip: the env in nand is u-boot env not a barebox one
To: barebox@lists.infradead.org

on animeo ip we use a RO barebox env

we will add later it's support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/env/config | 2 +-
 arch/arm/boards/animeo_ip/init.c     | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/env/config b/arch/arm/boards/animeo_ip/env/config
index 7526fcf..2220f93 100644
--- a/arch/arm/boards/animeo_ip/env/config
+++ b/arch/arm/boards/animeo_ip/env/config
@@ -28,7 +28,7 @@ kernelimage=zImage
 #kernelimage=Image.lzo
 
 nand_device=atmel_nand
-nand_parts="32k(at91bootstrap),320k(barebox)ro,32k(bareboxenv),-(ubi)"
+nand_parts="32k(at91bootstrap),320k(barebox)ro,32k(u_boot_env),-(ubi)"
 rootfs_mtdblock_nand=3
 
 autoboot_timeout=3
diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index de7be97..d0e1cc8 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -249,8 +249,10 @@ static int animeo_ip_devices_init(void)
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
 	devfs_add_partition("nand0", SZ_32K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_256K + SZ_32K, SZ_32K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_256K + SZ_64K + SZ_32K, SZ_16K, DEVFS_PARTITION_FIXED, "env0_u_boot_raw");
+	dev_add_bb_dev("env0_u_boot_raw", "env0_u_boot");
+	devfs_add_partition("nand0", SZ_256K + SZ_64K + SZ_32K + SZ_16K, SZ_16K, DEVFS_PARTITION_FIXED, "env1_u_boot_raw");
+	dev_add_bb_dev("env1_u_boot_raw", "env1_u_boot");
 
 	return 0;
 }
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
