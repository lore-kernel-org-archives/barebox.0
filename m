Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmje5-0008A9-VL
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:14 +0100
Message-Id: <1326709100-24106-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] ARM omap3: call a_init from board code
To: barebox@lists.infradead.org

There is no need to call a_init before relocation, so rename
the function to omap3_core_init and call it from board code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/board.c            |    2 ++
 arch/arm/boards/omap343xdsp/board.c       |    3 +++
 arch/arm/boards/omap3evm/board.c          |    2 ++
 arch/arm/mach-omap/include/mach/silicon.h |    4 +---
 arch/arm/mach-omap/omap3_core.S           |    9 ---------
 arch/arm/mach-omap/omap3_generic.c        |    2 +-
 6 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index bd663ad..faeaf8e 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -224,6 +224,8 @@ static int beagle_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
+	omap3_core_init();
+
 	mux_config();
 	/* Dont reconfigure SDRAM while running in SDRAM! */
 	if (!in_sdram)
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 2cbb987..4ad6f13 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -80,6 +80,9 @@ static void mux_config(void);
 static int sdp343x_board_init(void)
 {
 	int in_sdram = running_in_sdram();
+
+	omap3_core_init();
+
 	mux_config();
 	if (!in_sdram)
 		sdrc_init();
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index ec2ed2c..fdd5227 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -200,6 +200,8 @@ static int omap3_evm_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
+	omap3_core_init();
+
 	mux_config();
 
 	/* Dont reconfigure SDRAM while running in SDRAM! */
diff --git a/arch/arm/mach-omap/include/mach/silicon.h b/arch/arm/mach-omap/include/mach/silicon.h
index c2f0c41..638d6c4 100644
--- a/arch/arm/mach-omap/include/mach/silicon.h
+++ b/arch/arm/mach-omap/include/mach/silicon.h
@@ -30,10 +30,8 @@
 #endif
 
 /* If Architecture specific init functions are present */
-#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
 #ifndef __ASSEMBLY__
-void a_init(void);
+void omap3_core_init(void);
 #endif /* __ASSEMBLY__ */
-#endif
 
 #endif /* __ASM_ARCH_OMAP_SILICON_H */
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index 90c4243..b32017c 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -69,16 +69,7 @@ next:
 	orr r0, r0, r1
 	/* Store the new vector address */
 	mcr p15, #0, r0, c12, c0, #0
-	/* Setup a temporary stack so that we can call C functions */
-	ldr	sp,	SRAM_STACK
-        str     ip,	[sp]    /* stash old link register */
-        str     lr,	[sp]    /* stash current link register */
-	mov	ip,	lr	/* save link reg across call */
-	bl      a_init          /* Architecture init */
-        ldr     lr,	[sp]    /* restore current link register */
-        ldr     ip,	[sp]    /* restore save ip */
 
-	/* Invalidate all Dcaches */
 #ifndef CONFIG_CPU_V7_DCACHE_SKIP
 	/* If Arch specific ROM code SMI handling does not exist */
 	mrc	p15, 1, r0, c0, c0, 1	/* read clidr */
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index fc83d23..7219e28 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -484,7 +484,7 @@ static void try_unlock_memory(void)
  *
  * @return void
  */
-void a_init(void)
+void omap3_core_init(void)
 {
 	watchdog_init();
 
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
