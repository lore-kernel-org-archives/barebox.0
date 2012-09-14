Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQc3-0005P0-P1
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:46:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Sep 2012 09:45:13 +0200
Message-Id: <1347608713-10133-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
References: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM pcm038: register nor update handler
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm038.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 912d6ea..2f4d71d 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -30,6 +30,7 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
+#include <bbu.h>
 #include <nand.h>
 #include <spi/spi.h>
 #include <io.h>
@@ -196,6 +197,7 @@ static int pcm038_devices_init(void)
 	int i;
 	u64 uid = 0;
 	char *envdev;
+	unsigned long bbu_flags_nor = 0, bbu_flags_nand = 0;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -318,6 +320,7 @@ static int pcm038_devices_init(void)
 					DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
 		envdev = "NAND";
+		bbu_flags_nand = BBU_HANDLER_FLAG_DEFAULT;
 		break;
 	default:
 		devfs_add_partition("nor0", 0x00000, 0x80000,
@@ -327,6 +330,7 @@ static int pcm038_devices_init(void)
 		protect_file("/dev/env0", 1);
 
 		envdev = "NOR";
+		bbu_flags_nor = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
 	printf("Using environment in %s Flash\n", envdev);
@@ -336,6 +340,9 @@ static int pcm038_devices_init(void)
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM038);
 
+	bbu_register_arm_handler("nor", "/dev/nor0", bbu_flags_nor);
+	bbu_register_arm_handler("nand", "/dev/nand0", bbu_flags_nand);
+
 	return 0;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
