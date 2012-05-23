Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXIBC-0007II-0t
 for barebox@lists.infradead.org; Wed, 23 May 2012 20:29:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2012 22:29:00 +0200
Message-Id: <1337804940-9512-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337804940-9512-1-git-send-email-s.hauer@pengutronix.de>
References: <1337804940-9512-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM startup: Do call __mmu_cache_flush during startup
To: barebox@lists.infradead.org

Traditionally we call __mmu_cache_flush in early startup. There
is a problem with armv7 and hierarchical caches though, on these
systems __mmu_cache_flush uses the stack. Appearantly this was
seldomly a problem, because most of these systems have a ROM
bootloader which sets up some stack, but on a special i.MX6 system
this failed badly. We should not have to flush caches here. Every
sane system should pass control to the bootloader without stale
entries in the caches *), so it should be a safe assumption that the
cache flush can be removed.

Since __mmu_cache_flush is not called from early code anymore we can
also move it to the regular text section.

Be brave and give it a try.

*) omap3 seems to be a exception to this, but this has a cache flush
in arch_init_lowlevel already

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv4.S |    1 -
 arch/arm/cpu/cache-armv5.S |    1 -
 arch/arm/cpu/cache-armv6.S |    1 -
 arch/arm/cpu/cache-armv7.S |    1 -
 arch/arm/cpu/start.c       |    6 ------
 5 files changed, 10 deletions(-)

diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
index fc53653..6d03565 100644
--- a/arch/arm/cpu/cache-armv4.S
+++ b/arch/arm/cpu/cache-armv4.S
@@ -42,7 +42,6 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
-__BARE_INIT
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r6, c0, c0	@ get processor ID
 		mov	r2, #64*1024		@ default: 32K dcache size (*2)
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
index d870e6b..a1193a6 100644
--- a/arch/arm/cpu/cache-armv5.S
+++ b/arch/arm/cpu/cache-armv5.S
@@ -42,7 +42,6 @@ ENTRY(__mmu_cache_off)
 		mov	pc, lr
 ENDPROC(__mmu_cache_off)
 
-__BARE_INIT
 ENTRY(__mmu_cache_flush)
 1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
 		bne	1b
diff --git a/arch/arm/cpu/cache-armv6.S b/arch/arm/cpu/cache-armv6.S
index 9de76da..335bac2 100644
--- a/arch/arm/cpu/cache-armv6.S
+++ b/arch/arm/cpu/cache-armv6.S
@@ -44,7 +44,6 @@ ENTRY(__mmu_cache_off)
 #endif
 		mov	pc, lr
 
-__BARE_INIT
 ENTRY(__mmu_cache_flush)
 		mov	r1, #0
 		mcr	p15, 0, r1, c7, c14, 0	@ clean+invalidate D
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 416498d..28a6315 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -50,7 +50,6 @@ ENTRY(__mmu_cache_off)
 		mov	pc, r12
 ENDPROC(__mmu_cache_off)
 
-__BARE_INIT
 ENTRY(__mmu_cache_flush)
 		mrc	p15, 0, r10, c0, c1, 5	@ read ID_MMFR1
 		tst	r10, #0xf << 16		@ hierarchical cache (ARMv7)
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 0fcc950..f2f6173 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -75,12 +75,6 @@ void __naked __bare_init reset(void)
 #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
 	arch_init_lowlevel();
 #endif
-	__asm__ __volatile__ (
-		"bl __mmu_cache_flush;"
-		:
-		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
-	);
 
 	/* disable MMU stuff and caches */
 	r = get_cr();
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
