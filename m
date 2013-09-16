Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Or-8l
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:48:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2013 10:48:10 +0200
Message-Id: <1379321300-8085-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] ARM: invalidate caches thoroughly
To: barebox@lists.infradead.org

The data caches should be invalided once during startup. This should
also be done when we do not have the MMU enabled in barebox because
the Kernel does not invalidate the caches during start.

To make this sure this patch enables the arm_early_mmu_cache_invalidate
function even if MMU support is disabled. Additionally this patch adds
calls to arm_early_mmu_cache_invalidate in start.c and uncompress.c.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile        |  6 +++---
 arch/arm/cpu/start.c         |  4 +++-
 arch/arm/cpu/uncompress.c    |  2 ++
 arch/arm/include/asm/cache.h | 10 ----------
 4 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index c3635a1..aba201b 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
 obj-$(CONFIG_OFDEVICE) += dtb.o
 obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
-pbl-$(CONFIG_MMU) += cache.o mmu-early.o
+pbl-$(CONFIG_MMU) += mmu-early.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-$(CONFIG_CPU_32v5) += cache-armv5.o
@@ -25,7 +25,7 @@ pbl-y += setupc.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
 pbl-$(CONFIG_PBL_MULTI_IMAGES) += start-images.o uncompress.o
 
-obj-y += common.o
-pbl-y += common.o
+obj-y += common.o cache.o
+pbl-y += common.o cache.o
 
 lwl-y += lowlevel.o
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 1f397ec..f8d343f 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -70,8 +70,10 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 		endmem &= ~0x3fff;
 		endmem -= SZ_16K; /* ttb */
 
-		if (!IS_ENABLED(CONFIG_PBL_IMAGE))
+		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
+			arm_early_mmu_cache_invalidate();
 			mmu_early_enable(membase, memsize, endmem);
+		}
 	}
 
 	/*
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b401f8e..b0819c7 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -54,6 +54,8 @@ static void noinline uncompress(uint32_t membase,
 	uint32_t *ptr;
 	void *pg_start;
 
+	arm_early_mmu_cache_invalidate();
+
 	endmem -= STACK_SIZE; /* stack */
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
index f5f8bf3..2f6eab0 100644
--- a/arch/arm/include/asm/cache.h
+++ b/arch/arm/include/asm/cache.h
@@ -8,17 +8,7 @@ static inline void flush_icache(void)
 
 int arm_set_cache_functions(void);
 
-#ifdef CONFIG_MMU
 void arm_early_mmu_cache_flush(void);
 void arm_early_mmu_cache_invalidate(void);
-#else
-static inline void arm_early_mmu_cache_flush(void)
-{
-}
-
-static inline void arm_early_mmu_cache_invalidate(void)
-{
-}
-#endif
 
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
