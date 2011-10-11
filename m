Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDe8A-0003RO-5y
	for barebox@lists.infradead.org; Tue, 11 Oct 2011 15:20:35 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id p9BFKTo8003019
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Tue, 11 Oct 2011 10:20:31 -0500
Received: from dbde70.ent.ti.com (localhost [127.0.0.1])
	by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9BFKTQN000560
	for <barebox@lists.infradead.org>; Tue, 11 Oct 2011 20:50:29 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Tue, 11 Oct 2011 20:50:24 +0530
Message-ID: <1318346424-13246-1-git-send-email-premi@ti.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] iomap: Unify run_shell() in xload configuration
To: barebox@lists.infradead.org

Currently, there are multiple definitions of run_shell()
for each board that can be build in "xload" configuration.
Now there is only one function used by all boards.

The functions defined in xload.c are used only when "xload"
configuration used; but it gets compiled unconditionally.
This has been fixed as well.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---

 Only build tested with these commands:
   make distclean ; make omap3530_beagle_defconfig ; make ;
   make distclean ; make omap3530_beagle_xload_defconfig ; make ;
   make distclean ; make panda_xload_defconfig ; make ;
   make distclean ; make panda_defconfig ; make ;
   make distclean ; make pcm049_defconfig ; make ;
   make distclean ; make pcm049_xload_defconfig ; make ;

 arch/arm/boards/omap/board-beagle.c |   31 ------------------------------
 arch/arm/boards/panda/board.c       |   19 ------------------
 arch/arm/boards/pcm049/board.c      |   30 -----------------------------
 arch/arm/mach-omap/Makefile         |    3 +-
 arch/arm/mach-omap/xload.c          |   36 +++++++++++++++++++++++++++++++++++
 5 files changed, 38 insertions(+), 81 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 4e7f179..bcebd5c 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -313,34 +313,3 @@ static int beagle_devices_init(void)
 	return 0;
 }
 device_initcall(beagle_devices_init);
-
-#ifdef CONFIG_SHELL_NONE
-
-int run_shell(void)
-{
-	int (*func)(void) = NULL;
-
-	switch (omap3_bootsrc()) {
-	case OMAP_BOOTSRC_MMC1:
-		printf("booting from MMC1\n");
-		func = omap_xload_boot_mmc();
-		break;
-	case OMAP_BOOTSRC_UNKNOWN:
-		printf("unknown boot source. Fall back to nand\n");
-	case OMAP_BOOTSRC_NAND:
-		printf("booting from NAND\n");
-		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
-		break;
-	}
-
-	if (!func) {
-		printf("booting failed\n");
-		while (1);
-	}
-
-	shutdown_barebox();
-	func();
-
-	while (1);
-}
-#endif
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 33ec144..cfc5bb9 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -170,22 +170,3 @@ static int panda_env_init(void)
 }
 late_initcall(panda_env_init);
 #endif
-
-
-#ifdef CONFIG_SHELL_NONE
-int run_shell(void)
-{
-	int (*func)(void);
-
-	func = omap_xload_boot_mmc();
-	if (!func) {
-		printf("booting failed\n");
-		while (1);
-	}
-
-	shutdown_barebox();
-	func();
-
-	while (1);
-}
-#endif
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 3d02779..6814b59 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -112,33 +112,3 @@ static int pcm049_devices_init(void)
 	return 0;
 }
 device_initcall(pcm049_devices_init);
-
-#ifdef CONFIG_SHELL_NONE
-int run_shell(void)
-{
-	int (*func)(void) = NULL;
-
-	switch (omap4_bootsrc()) {
-	case OMAP_BOOTSRC_MMC1:
-		printf("booting from MMC1\n");
-		func = omap_xload_boot_mmc();
-		break;
-	case OMAP_BOOTSRC_UNKNOWN:
-		printf("unknown boot source. Fall back to nand\n");
-	case OMAP_BOOTSRC_NAND:
-		printf("booting from NAND\n");
-		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
-		break;
-	}
-
-	if (!func) {
-		printf("booting failed\n");
-		while (1);
-	}
-
-	shutdown_barebox();
-	func();
-
-	while (1);
-}
-#endif
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 7204746..07bf30a 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -25,4 +25,5 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
-obj-y += gpio.o xload.o
+obj-$(CONFIG_SHELL_NONE) += xload.o
+obj-y += gpio.o
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 216b9b5..ac859fa 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -52,3 +52,39 @@ void *omap_xload_boot_mmc(void)
 
 	return buf;
 }
+
+/*
+ * Replaces the default shell in xload configuration
+ */
+int run_shell(void)
+{
+	int (*func)(void) = NULL;
+
+#if defined(CONFIG_ARCH_OMAP3)
+	switch (omap3_bootsrc())
+#elif  defined(CONFIG_ARCH_OMAP4)
+	switch (omap4_bootsrc())
+#endif
+	{
+	case OMAP_BOOTSRC_MMC1:
+		printf("booting from MMC1\n");
+		func = omap_xload_boot_mmc();
+		break;
+	case OMAP_BOOTSRC_UNKNOWN:
+		printf("unknown boot source. Fall back to nand\n");
+	case OMAP_BOOTSRC_NAND:
+		printf("booting from NAND\n");
+		func = omap_xload_boot_nand(SZ_128K, SZ_256K);
+		break;
+	}
+
+	if (!func) {
+		printf("booting failed\n");
+		while (1);
+	}
+
+	shutdown_barebox();
+	func();
+
+	while (1);
+}
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
