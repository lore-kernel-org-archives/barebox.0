Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlHxd-0007ix-5C
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 08:55:57 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 17 Aug 2010 10:55:37 +0200
Message-Id: <1282035337-25094-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH|RFC] beagle: make nand ecc command based
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
This will only work once and bring the nand chip into a undefined state
after a second call. Any ideas for doing this save?

 arch/arm/boards/omap/board-beagle.c |   28 +++++++++++++++++++++++++++-
 1 files changed, 27 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index c0b6b43..99766af 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -53,6 +53,7 @@
  */
 
 #include <common.h>
+#include <command.h>
 #include <console.h>
 #include <init.h>
 #include <driver.h>
@@ -324,7 +325,6 @@ static int beagle_devices_init(void)
 	/* WP is made high and WAIT1 active Low */
 	gpmc_generic_init(0x10);
 #endif
-	gpmc_generic_nand_devices_init(0, 16, 1);
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
@@ -333,3 +333,29 @@ failed:
 	return ret;
 }
 device_initcall(beagle_devices_init);
+
+static int do_ecc(struct command *cmdtp, int argc, char *argv[])
+{
+	if (*argv[0] == 's') {
+		gpmc_generic_nand_devices_init(0, 16, 0);
+	} else {
+		gpmc_generic_nand_devices_init(0, 16, 1);
+	}
+	return 0;
+}
+
+static const __maybe_unused char cmd_ecc_help[] =
+"Usage: (s|h)whwcc <device>\n"
+"set software or hardware ecc for nand controller \n";
+
+BAREBOX_CMD_START(hwecc)
+        .cmd            = do_ecc,
+        .usage          = "enable HWECC support in NAND",
+        BAREBOX_CMD_HELP(cmd_ecc_help)
+BAREBOX_CMD_END
+
+BAREBOX_CMD_START(swecc)
+        .cmd            = do_ecc,
+        .usage          = "enable SWECC support in NAND",
+        BAREBOX_CMD_HELP(cmd_ecc_help)
+BAREBOX_CMD_END
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
