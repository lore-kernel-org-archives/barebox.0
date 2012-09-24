Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG3sK-0003J0-RA
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 08:18:45 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 24 Sep 2012 10:18:31 +0200
Message-Id: <1348474714-5807-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/4] ARM OMAP: remove SRAM stack
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap3-silicon.h |    2 --
 arch/arm/mach-omap/include/mach/omap4-silicon.h |    2 --
 arch/arm/mach-omap/omap3_core.S                 |    2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index e4002e6..3581b60 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -110,8 +110,6 @@
 #define OMAP_SRAM_BASE		0x40200000
 #define OMAP_SRAM_INTVECT	0x4020F800
 #define OMAP_SRAM_INTVECT_COPYSIZE	0x64
-/** Temporary stack for us to use C calls in low_level_init */
-#define OMAP_SRAM_STACK		0x4020FFFC
 
 /** Gives the silicon revision */
 #define OMAP_TAP_BASE		(OMAP_L4_WKUP_BASE + 0xA000)
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 4082bac..e6b31ed 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -147,8 +147,6 @@ struct s32ktimer {
 #define NON_SECURE_SRAM_END	0x4030E000	/* Not inclusive */
 /* base address for indirect vectors (internal boot mode) */
 #define SRAM_ROM_VECT_BASE	0x4030D000
-/* Temporary SRAM stack used while low level init is done */
-#define LOW_LEVEL_SRAM_STACK	NON_SECURE_SRAM_END
 
 /*
  * OMAP4 real hardware:
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index ceb3c76..6a9f44f 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -95,6 +95,4 @@ finished_inval:
 	mov	pc,	lr
 ENDPROC(arch_init_lowlevel)
 
-SRAM_STACK:
-	.word	OMAP_SRAM_STACK
 #endif /* CONFIG_ARCH_HAS_LOWLEVEL_INIT */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
