Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLmO-0001mL-51
 for barebox@lists.infradead.org; Mon, 24 Jun 2019 10:00:54 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 24 Jun 2019 12:00:42 +0200
Message-Id: <20190624100043.27636-2-o.rempel@pengutronix.de>
In-Reply-To: <20190624100043.27636-1-o.rempel@pengutronix.de>
References: <20190624100043.27636-1-o.rempel@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v4 1/2] add CONFIG_PBL_BREAK option
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

With this option barebox will be build with breakpoint instruction
in early pbl stage.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/arm/cpu/common.c                   | 13 +++++++++++++
 arch/arm/cpu/start.c                    |  2 ++
 arch/arm/include/asm/barebox-arm-head.h |  7 +++++++
 arch/arm/include/asm/barebox-arm.h      |  1 +
 common/Kconfig                          |  8 ++++++++
 5 files changed, 31 insertions(+)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 821cafbf26..4a2b6734db 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -46,6 +46,19 @@ void sync_caches_for_execution(void)
 #define R_ARM_RELATIVE 23
 #define R_AARCH64_RELATIVE 1027
 
+void pbl_barebox_break(void)
+{
+	__asm__ __volatile__ (
+#ifdef CONFIG_PBL_BREAK
+		"bkpt #17\n"
+		"nop\n"
+#else
+		"nop\n"
+		"nop\n"
+#endif
+	);
+}
+
 /*
  * relocate binary to the currently running address
  */
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 1b1659b315..c97b2770c4 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -168,6 +168,8 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	barrier();
 
+	pbl_barebox_break();
+
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
 	arm_endmem = endmem;
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 5c6205c815..83a22c4d94 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -64,6 +64,13 @@ static inline void __barebox_arm_head(void)
 		".word 0x55555555\n"
 		".endr\n"
 		"2:\n"
+#ifdef CONFIG_PBL_BREAK
+		"bkpt #17\n"
+		"nop\n"
+#else
+		"nop\n"
+		"nop\n"
+#endif
 	);
 }
 static inline void barebox_arm_head(void)
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index a1e6bff3a3..9840482b23 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -55,6 +55,7 @@ static inline unsigned long global_variable_offset(void)
 }
 
 void setup_c(void);
+void pbl_barebox_break(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
diff --git a/common/Kconfig b/common/Kconfig
index f5777a304c..8aad5baecd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1287,6 +1287,14 @@ config DEBUG_INITCALLS
 	help
 	  If enabled this will print initcall traces.
 
+
+config PBL_BREAK
+	bool "Execute software break on pbl start"
+	depends on ARM
+	help
+	  If this enabled, barebox will be compiled with BKPT instruction
+	  on early pbl init. This option should be used only with JTAG debugger!
+
 endmenu
 
 config HAS_DEBUG_LL
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
