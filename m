Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdG8Y-00025R-Lk
 for barebox@lists.infradead.org; Fri, 17 May 2013 08:35:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 May 2013 10:35:15 +0200
Message-Id: <1368779715-3143-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: invalidate data caches during early init
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Some SoCs come up with invalid entries in the data cache. This can
lead to memory corruption when we enable them later, so invalidate
the caches early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
CC: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---

This is based on the patches Enrico recently sent. Enrico, I hope
this fixes your data cache issues in a way that you do not have
to add this to your board code.

 arch/arm/cpu/cache.c         | 21 +++++++++++++++++++++
 arch/arm/cpu/start-pbl.c     |  2 ++
 arch/arm/cpu/start.c         |  2 ++
 arch/arm/include/asm/cache.h |  5 +++++
 4 files changed, 30 insertions(+)

diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 95c8338..7aab55b 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -134,3 +134,24 @@ void arm_early_mmu_cache_flush(void)
 #endif
 	}
 }
+
+void v7_mmu_cache_invalidate(void);
+
+void arm_early_mmu_cache_invalidate(void)
+{
+	switch (arm_early_get_cpu_architecture()) {
+	case CPU_ARCH_ARMv4T:
+	case CPU_ARCH_ARMv5:
+	case CPU_ARCH_ARMv5T:
+	case CPU_ARCH_ARMv5TE:
+	case CPU_ARCH_ARMv5TEJ:
+	case CPU_ARCH_ARMv6:
+		asm volatile("mcr p15, 0, %0, c7, c6, 0\n" : : "r"(0));
+		return;
+#ifdef CONFIG_CPU_32v7
+	case CPU_ARCH_ARMv7:
+		v7_mmu_cache_invalidate();
+		return;
+#endif
+	}
+}
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 6f03c4a..3ef0118 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -59,6 +59,8 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 
 	endmem -= STACK_SIZE; /* stack */
 
+	arm_early_mmu_cache_invalidate();
+
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
 		relocate_to_current_adr();
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 580c1fe..5a3c629 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -124,6 +124,8 @@ void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
 {
 	arm_setup_stack(membase + memsize - 16);
 
+	arm_early_mmu_cache_invalidate();
+
 	__start(membase, memsize, boarddata);
 }
 #else
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index e5621eb..f5f8bf3 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -10,10 +10,15 @@ int arm_set_cache_functions(void);
 
 #ifdef CONFIG_MMU
 void arm_early_mmu_cache_flush(void);
+void arm_early_mmu_cache_invalidate(void);
 #else
 static inline void arm_early_mmu_cache_flush(void)
 {
 }
+
+static inline void arm_early_mmu_cache_invalidate(void)
+{
+}
 #endif
 
 #endif
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
