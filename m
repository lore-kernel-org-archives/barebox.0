Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-0008BO-61
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:15 +0100
Message-Id: <20180316125354.23462-40-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 39/78] ARM: aarch64: mmu: enable mmu in generic code
To: Barebox List <barebox@lists.infradead.org>

Using board code to enable the MMU is not nice. Do it in generic
code. Since mmu_enable() is now done in mmu_64.c we no longer have
to export it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/qemu-virt64/init.c | 10 ----------
 arch/arm/cpu/mmu_64.c              | 20 ++++++++------------
 arch/arm/include/asm/mmu.h         |  1 -
 3 files changed, 8 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/qemu-virt64/init.c b/arch/arm/boards/qemu-virt64/init.c
index 686231696e..19cfcae1f0 100644
--- a/arch/arm/boards/qemu-virt64/init.c
+++ b/arch/arm/boards/qemu-virt64/init.c
@@ -62,13 +62,3 @@ static int virt_core_init(void)
 	return 0;
 }
 postcore_initcall(virt_core_init);
-
-#ifdef CONFIG_MMU
-static int virt_mmu_enable(void)
-{
-	mmu_enable();
-
-	return 0;
-}
-postmmu_initcall(virt_mmu_enable);
-#endif
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 639aa6d189..695a73262d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -210,6 +210,12 @@ int arch_remap_range(void *_start, size_t size, unsigned flags)
 	return 0;
 }
 
+static void mmu_enable(void)
+{
+	isb();
+	set_cr(get_cr() | CR_M | CR_C | CR_I);
+}
+
 /*
  * Prepare MMU for usage enable it.
  */
@@ -256,22 +262,12 @@ static int mmu_init(void)
 	for_each_memory_bank(bank)
 		create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
 
+	mmu_enable();
+
 	return 0;
 }
 mmu_initcall(mmu_init);
 
-void mmu_enable(void)
-{
-	if (!ttb)
-		arm_mmu_not_initialized_error();
-
-	if (!(get_cr() & CR_M)) {
-
-		isb();
-		set_cr(get_cr() | CR_M | CR_C | CR_I);
-	}
-}
-
 void mmu_disable(void)
 {
 	unsigned int cr;
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 2a1daeafe3..840851858f 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -8,7 +8,6 @@
 
 struct arm_memory;
 
-void mmu_enable(void);
 void mmu_disable(void);
 static inline void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
 		unsigned int flags)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
