Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RoLxd-0003he-Ur
 for barebox@lists.infradead.org; Fri, 20 Jan 2012 21:25:27 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 20 Jan 2012 22:25:02 +0100
Message-Id: <1327094703-6958-3-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
References: <1327094703-6958-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] ARM pca-a-l1: fix board_init
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

board_init was moved to pure_initcall. broken since:

commit 0adce7ec683b4b325f51de4ac8892b32925d7ef8
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Sun Jan 15 21:11:17 2012 +0100

    ARM omap3: move board_init to pure_initcall

    board_init initializes the mux and sdram. For both there is no
    need to configure this so early. Move the code to a pure_initcall
    and remove the surrounding unneeded code.

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
    Tested-by: Sanjeev Premi <premi@ti.com>

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |    8 +++++---
 arch/arm/mach-omap/Kconfig              |    1 -
 barebox_default_env.gz                  |  Bin 0 -> 2656 bytes
 3 files changed, 5 insertions(+), 4 deletions(-)
 create mode 100644 barebox_default_env.gz

diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 11e8638..0518894 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -74,8 +74,6 @@
 #include <mach/syslib.h>
 #include <mach/xload.h>
 
-#include "pca-a-l1.h"
-
 #define SMC911X_BASE 0x2c000000
 
 /*
@@ -224,15 +222,19 @@ static void pcaal1_mux_config(void)
  *
  * @return void
  */
-void omap3_board_init(void)
+static int pcaal1_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
 	pcaal1_mux_config();
+
 	/* Dont reconfigure SDRAM while running in SDRAM! */
 	if (!in_sdram)
 		pcaal1_sdrc_init();
+
+	return 0;
 }
+pure_initcall(pcaal1_board_init);
 
 /*
  * Run-time initialization(s)
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 970c899..ecdabb0 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -150,7 +150,6 @@ config MACH_PCM049
 
 config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
-	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_ALL
 	select HAS_OMAP_NAND
 	  help
diff --git a/barebox_default_env.gz b/barebox_default_env.gz
new file mode 100644
index 0000000000000000000000000000000000000000..bdf466e5d710f54fe8d66db5fb74edb33a788ff3
GIT binary patch
literal 2656
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
OPUn9!+#d!U9{>R02OW_B

literal 0
HcmV?d00001

-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
