Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAaz-0002Ui-9S
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 14:39:26 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  4 Jun 2019 16:38:52 +0200
Message-Id: <20190604143851.11928-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20190604143851.11928-1-r.czerwinski@pengutronix.de>
References: <20190604143851.11928-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/3] add CONFIG_PBL_BREAK option
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

With this option barebox will be build with breakpoint instruction
in early pbl stage.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/arm/cpu/common.c              | 13 +++++++++++++
 arch/arm/cpu/start.c               |  2 ++
 arch/arm/include/asm/barebox-arm.h |  2 ++
 common/Kconfig                     |  7 +++++++
 4 files changed, 24 insertions(+)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 51fe7ed988..6fe3476aa2 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -30,6 +30,19 @@
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
index 6573c2ef74..6bfc4da34c 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -168,6 +168,8 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	barrier();
 
+	pbl_barebox_break();
+
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
 	arm_endmem = endmem;
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index a11d34923d..12765b7277 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -55,6 +55,7 @@ static inline unsigned long global_variable_offset(void)
 }
 
 void setup_c(void);
+void pbl_barebox_break(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
@@ -177,6 +178,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 				(uint32_t r0, uint32_t r1, uint32_t r2)	\
 		{							\
 			__barebox_arm_head();				\
+			pbl_barebox_break();				\
 			__##name(r0, r1, r2);				\
 		}							\
 		static void NAKED noinline __##name			\
diff --git a/common/Kconfig b/common/Kconfig
index ffb7537592..4124857a0a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1245,6 +1245,13 @@ config DEBUG_INITCALLS
 	help
 	  If enabled this will print initcall traces.
 
+
+config PBL_BREAK
+	bool "Execute software break on pbl start"
+	help
+	  If this enabled, barebox will be compiled with BKPT instruction
+	  on early pbl init. This option be used only with JTAG debugger!
+
 endmenu
 
 config HAS_DEBUG_LL
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
