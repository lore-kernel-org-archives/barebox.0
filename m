Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVwy-0003Bm-2G
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:56:53 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 22 Nov 2010 13:52:55 +0100
Message-Id: <1290430375-8569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] arm: add touchbook support
To: barebox@lists.infradead.org
Cc: Gregoire Gentil <gregoire@alwaysinnovating.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Gregoire Gentil <gregoire@alwaysinnovating.com>
---
 arch/arm/boards/omap/Kconfig        |    9 +++++++++
 arch/arm/boards/omap/Makefile       |    1 +
 arch/arm/boards/omap/board-beagle.c |    7 ++++++-
 3 files changed, 16 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/omap/Kconfig b/arch/arm/boards/omap/Kconfig
index d612064..615457f 100644
--- a/arch/arm/boards/omap/Kconfig
+++ b/arch/arm/boards/omap/Kconfig
@@ -51,6 +51,15 @@ config MACH_BEAGLE
 	  help
 	  Say Y here if you are using Beagle Board
 
+config MACH_TOUCHBOOK
+	bool "AlwaysInnovating TouchBook"
+	select MACH_HAS_LOWLEVEL_INIT
+	select OMAP_CLOCK_ALL
+	select HAS_OMAP_NAND
+	  help
+	  Say Y here if you are using touchbook
+	  http://www.alwaysinnovating.com/touchbook/
+
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
 	select MACH_HAS_LOWLEVEL_INIT
diff --git a/arch/arm/boards/omap/Makefile b/arch/arm/boards/omap/Makefile
index 1e74e24..946d9bf 100644
--- a/arch/arm/boards/omap/Makefile
+++ b/arch/arm/boards/omap/Makefile
@@ -23,6 +23,7 @@
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += platform.o
 obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
 obj-$(CONFIG_MACH_BEAGLE) += board-beagle.o
+obj-$(CONFIG_MACH_TOUCHBOOK) += board-beagle.o
 obj-$(CONFIG_MACH_OMAP3EVM) += board-omap3evm.o
 obj-y += devices-gpmc-nand.o
 
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 6de2cce..8e9ab43 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -336,7 +336,12 @@ static int beagle_devices_init(void)
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)0x80000100);
-	armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
+
+	if (machine_is_touchbook())
+		armlinux_set_architecture(MACH_TYPE_TOUCHBOOK);
+	else
+		armlinux_set_architecture(MACH_TYPE_OMAP3_BEAGLE);
+
 failed:
 	return ret;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
