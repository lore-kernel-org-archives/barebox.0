Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S4-Pj
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:50 +0200
Message-Id: <1269947215-18214-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] ARM: replace cleanup_before_linux with the generic
	shutdown_barebox function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c            |   12 +++++-------
 arch/arm/include/asm/common.h |    2 +-
 arch/arm/lib/armlinux.c       |    6 +++---
 3 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 1b8fc97..a5e2fe2 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -132,18 +132,16 @@ int icache_status (void)
 }
 
 /**
- * Prepare a "clean" CPU for Linux to run
+ * Disable MMU and D-cache, flush caches
  * @return 0 (always)
  *
- * This function is called by the generic barebox part just before we call
- * Linux. It prepares the processor for Linux.
+ * This function is called by shutdown_barebox to get a clean
+ * memory/cache state.
  */
-int cleanup_before_linux (void)
+void arch_shutdown(void)
 {
 	int i;
 
-	shutdown_barebox();
-
 #ifdef CONFIG_MMU
 	mmu_disable();
 #endif
@@ -151,8 +149,8 @@ int cleanup_before_linux (void)
 	/* flush I/D-cache */
 	i = 0;
 	asm ("mcr p15, 0, %0, c7, c7, 0": :"r" (i));
-	return 0;
 }
+
 /**
  * @page arm_boot_preparation Linux Preparation on ARM
  *
diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index da84fa5..9afcff7 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -1 +1 @@
-/* nothing */
+#define ARCH_SHUTDOWN
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index ec9ad8e..f8b8520 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -192,7 +192,7 @@ int do_bootm_linux(struct image_data *data)
 	/* we assume that the kernel is in place */
 	printf("\nStarting kernel ...\n\n");
 
-	cleanup_before_linux();
+	shutdown_barebox();
 	theKernel (0, armlinux_architecture, armlinux_bootparams);
 
 	return -1;
@@ -287,7 +287,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 #endif
 	setup_end_tag();
 
-	cleanup_before_linux();
+	shutdown_barebox();
 	theKernel(0, armlinux_architecture, armlinux_bootparams);
 
 	return 0;
@@ -329,7 +329,7 @@ static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 	setup_commandline_tag(commandline);
 	setup_end_tag();
 
-	cleanup_before_linux();
+	shutdown_barebox();
 	theKernel(0, armlinux_architecture, armlinux_bootparams);
 
 	return 1;
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
