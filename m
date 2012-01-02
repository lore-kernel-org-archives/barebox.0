Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhfSi-00078i-La
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 10:49:53 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Mon,  2 Jan 2012 11:49:18 +0100
Message-Id: <1325501358-7110-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] ARM: mark 'lr' as clobbered by inline assembler
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

When executing 'bl' in inline assembler, the 'lr' register must be
marked as clobbered too.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/cpu.c   |    2 +-
 arch/arm/cpu/mmu.c   |    6 +++---
 arch/arm/cpu/start.c |    2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index d4a3b14..fc98844 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -85,7 +85,7 @@ void arch_shutdown(void)
 		"bl __mmu_cache_off;"
 		:
 		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 #endif
 }
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 8e4e81a..29e12b7 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -24,7 +24,7 @@ static void create_sections(unsigned long virt, unsigned long phys, int size_m,
 		"bl __mmu_cache_flush;"
 		:
 		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 }
 
@@ -244,7 +244,7 @@ static int mmu_init(void)
 		"bl __mmu_cache_on;"
 		:
 		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
         );
 
 	/*
@@ -274,7 +274,7 @@ void mmu_disable(void)
 		"bl __mmu_cache_off;"
 		:
 		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 }
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index ff68783..61d7e3e 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -78,7 +78,7 @@ void __naked __bare_init reset(void)
 		"bl __mmu_cache_flush;"
 		:
 		:
-		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 
 	/* disable MMU stuff and caches */
-- 
1.7.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
