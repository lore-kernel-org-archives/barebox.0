Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvu-00043Y-QO
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:10 +0100
Message-Id: <1358696119-18387-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
References: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] startup: call a barebox_main function pointer at the
 end of the startup
To: barebox@lists.infradead.org

Currently Kconfig dependencies are used to allow non-interactive builds.
This leads to problems in Kconfig getting the dependencies right.

This patch adds a barebox_main function pointer which is called at the
end of the startup process. This defaults to run_shell when a shell is
enabled.

With this the HAVE_NOSHELL Kconfig variable can be removed. Non interactive
builds can now be enabled for every board allowing to compile a binary
without further Kconfig dependencies. This also allows for more flexibility,
for example boards may decide to try non-interactive startup first and
call run_shell if that fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig |    9 ---------
 arch/arm/mach-omap/xload.c |   11 ++++++++++-
 common/Kconfig             |    8 ++------
 common/startup.c           |   13 ++++++++++++-
 include/common.h           |    6 ++++++
 5 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 6611a65..f659184 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -128,7 +128,6 @@ config MACH_OMAP343xSDP
 
 config MACH_BEAGLE
 	bool "Texas Instrument's Beagle Board"
-	select HAVE_NOSHELL
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on ARCH_OMAP3
 	help
@@ -137,21 +136,18 @@ config MACH_BEAGLE
 config MACH_BEAGLEBONE
 	bool "Texas Instrument's Beagle Bone"
 	select OMAP_CLOCK_ALL
-	select HAVE_NOSHELL
 	depends on ARCH_AM33XX
 	  help
 	  Say Y here if you are using Beagle Bone
 
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
-	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
 	help
 	  Say Y here if you are using OMAP3EVM
 
 config MACH_PANDA
 	bool "Texas Instrument's Panda Board"
-	select HAVE_NOSHELL
 	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on ARCH_OMAP4
@@ -160,7 +156,6 @@ config MACH_PANDA
 
 config MACH_ARCHOSG9
 	bool "Archos G9 tablets"
-	select HAVE_NOSHELL
 	select MACH_HAS_LOWLEVEL_INIT
 	depends on ARCH_OMAP4
 	help
@@ -168,7 +163,6 @@ config MACH_ARCHOSG9
 
 config MACH_PCM049
 	bool "Phytec phyCORE pcm049"
-	select HAVE_NOSHELL
 	depends on ARCH_OMAP4
 	select MACH_HAS_LOWLEVEL_INIT
 	help
@@ -177,14 +171,12 @@ config MACH_PCM049
 
 config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
-	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
 	help
 	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
 
 config MACH_PCAAXL2
 	bool "Phytec phyCARD XL2"
-	select HAVE_NOSHELL
 	select MACH_HAS_LOWLEVEL_INIT
 	depends on ARCH_OMAP4
 	help
@@ -193,7 +185,6 @@ config MACH_PCAAXL2
 config MACH_PCM051
 	bool "Phytec phyCORE pcm051"
 	select OMAP_CLOCK_ALL
-	select HAVE_NOSHELL
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on ARCH_AM33XX
 	help
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 47c5d98..41533a9 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <partition.h>
 #include <nand.h>
+#include <init.h>
 #include <driver.h>
 #include <linux/mtd/mtd.h>
 #include <fs.h>
@@ -171,7 +172,7 @@ enum omap_boot_src omap_bootsrc(void)
 /*
  * Replaces the default shell in xload configuration
  */
-int run_shell(void)
+static __noreturn int omap_xload(void)
 {
 	int (*func)(void) = NULL;
 
@@ -211,3 +212,11 @@ int run_shell(void)
 
 	while (1);
 }
+
+static int omap_set_xload(void)
+{
+	barebox_main = omap_xload;
+
+	return 0;
+}
+late_initcall(omap_set_xload);
diff --git a/common/Kconfig b/common/Kconfig
index b60b78b..9d26abb 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -37,9 +37,6 @@ config BLOCK
 config BLOCK_WRITE
 	bool
 
-config HAVE_NOSHELL
-	bool
-
 config FILETYPE
 	bool
 
@@ -352,12 +349,11 @@ choice
 		  simple shell. No if/then, no return values from commands, no loops
 
 	config SHELL_NONE
-		depends on HAVE_NOSHELL
 		bool "no shell (noninteractive build)"
 		help
 		  No shell at all. This means no shell is started and your board has
-		  to provide a run_shell() function which is started at the end of
-		  the barebox startup process.
+		  to overwrite the barebox_main function pointer which is then called
+		  at the end of the barebox startup process.
 endchoice
 
 config GLOB
diff --git a/common/startup.c b/common/startup.c
index 14409a2..6309f53 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -88,6 +88,8 @@ static int mount_root(void)
 fs_initcall(mount_root);
 #endif
 
+int (*barebox_main)(void);
+
 void start_barebox (void)
 {
 	initcall_t *initcall;
@@ -96,6 +98,9 @@ void start_barebox (void)
 	struct stat s;
 #endif
 
+	if (!IS_ENABLED(CONFIG_SHELL_NONE))
+		barebox_main = run_shell;
+
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
 		debug("initcall-> %pS\n", *initcall);
@@ -126,9 +131,15 @@ void start_barebox (void)
 		printf("not found\n");
 	}
 #endif
+
+	if (!barebox_main) {
+		printf("No main function! aborting.\n");
+		hang();
+	}
+
 	/* main_loop() can return to retry autoboot, if so just run it again. */
 	for (;;)
-		run_shell();
+		barebox_main();
 
 	/* NOTREACHED - no way out of command loop except booting */
 }
diff --git a/include/common.h b/include/common.h
index b1c96de..e858d0a 100644
--- a/include/common.h
+++ b/include/common.h
@@ -159,6 +159,12 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size);
 unsigned long strtoul_suffix(const char *str, char **endp, int base);
 unsigned long long strtoull_suffix(const char *str, char **endp, int base);
 
+/*
+ * Function pointer to the main barebox function. Defaults
+ * to run_shell() when a shell is enabled.
+ */
+extern int (*barebox_main)(void);
+
 void start_barebox(void);
 void shutdown_barebox(void);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
