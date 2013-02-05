Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2msR-00011A-Jg
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 18:04:18 +0000
Received: from mail423.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C3FF4104FDE3
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 19:14:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Feb 2013 19:03:00 +0100
Message-Id: <1360087380-5700-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130205175927.GD19322@game.jcrosoft.org>
 <1360087380-5700-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] sama5d3: detect boot mode
To: barebox@lists.infradead.org

and dynamised where we are stored

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/sama5d3xek/init.c |   24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 110a83f..165aaac 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -36,6 +36,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <mach/at91sam9x5_matrix.h>
+#include <mach/bootmode.h>
 #include <input/qt1070.h>
 #include <readkey.h>
 #include <poller.h>
@@ -381,14 +382,21 @@ static int at91sama5d3xek_devices_init(void)
 
 	armlinux_set_bootparams((void *)(SAMA5_DDRCS + 0x100));
 
-	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
-	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
-	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
-	dev_add_bb_dev("env_raw1", "env1");
+	if (at91_boot_media_at25() && IS_ENABLED(CONFIG_DRIVER_SPI_ATMEL)) {
+		devfs_add_partition("m25p0", 0x00000, SZ_64K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+		devfs_add_partition("m25p0", SZ_64K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
+		devfs_add_partition("m25p0", SZ_64K + SZ_256K + SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
+		devfs_add_partition("m25p0", SZ_64K + SZ_512K + SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
+	} else {
+		devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+		dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+		devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITION_FIXED, "self_raw");
+		dev_add_bb_dev("self_raw", "self0");
+		devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+		devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw1");
+		dev_add_bb_dev("env_raw1", "env1");
+	}
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
