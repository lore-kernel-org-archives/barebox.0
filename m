Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbbU-0005a6-LE
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:03:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 21:03:05 +0100
Message-Id: <1362427389-2144-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: add early mmu cache flush function and use it in
 setup_c
To: barebox@lists.infradead.org

Since recently with MMU_EARLY support it may happen that setup_c
runs with data caches enabled, so we have to make sure the caches
are flushed before we jump to the new binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache.c         | 33 +++++++++++++++++++++++++++++++++
 arch/arm/cpu/setupc.S        |  3 +++
 arch/arm/include/asm/cache.h |  8 ++++++++
 3 files changed, 44 insertions(+)

diff --git a/arch/arm/cpu/cache.c b/arch/arm/cpu/cache.c
index 1254609..95c8338 100644
--- a/arch/arm/cpu/cache.c
+++ b/arch/arm/cpu/cache.c
@@ -101,3 +101,36 @@ int arm_set_cache_functions(void)
 
 	return 0;
 }
+
+/*
+ * Early function to flush the caches. This is for use when the
+ * C environment is not yet fully initialized.
+ */
+void arm_early_mmu_cache_flush(void)
+{
+	switch (arm_early_get_cpu_architecture()) {
+#ifdef CONFIG_CPU_32v4T
+	case CPU_ARCH_ARMv4T:
+		v4_mmu_cache_flush();
+		return;
+#endif
+#ifdef CONFIG_CPU_32v5
+	case CPU_ARCH_ARMv5:
+	case CPU_ARCH_ARMv5T:
+	case CPU_ARCH_ARMv5TE:
+	case CPU_ARCH_ARMv5TEJ:
+		v5_mmu_cache_flush();
+		return;
+#endif
+#ifdef CONFIG_CPU_32v6
+	case CPU_ARCH_ARMv6:
+		v6_mmu_cache_flush();
+		return;
+#endif
+#ifdef CONFIG_CPU_32v7
+	case CPU_ARCH_ARMv7:
+		v7_mmu_cache_flush();
+		return;
+#endif
+	}
+}
diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index 9a8d54c..d0de87d 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -26,6 +26,9 @@ ENTRY(setup_c)
 	ldr	r2, =__bss_stop
 	sub	r2, r2, r0
 	bl	memset			/* clear bss */
+#ifdef CONFIG_MMU
+	bl	arm_early_mmu_cache_flush
+#endif
 	mov	r0, #0
 	mcr	p15, 0, r0, c7, c5, 0	/* flush icache */
 	add	lr, r5, r4		/* adjust return address to new location */
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index d5877ff..e5621eb 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -8,4 +8,12 @@ static inline void flush_icache(void)
 
 int arm_set_cache_functions(void);
 
+#ifdef CONFIG_MMU
+void arm_early_mmu_cache_flush(void);
+#else
+static inline void arm_early_mmu_cache_flush(void)
+{
+}
+#endif
+
 #endif
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
