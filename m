Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJN2w-0002JJ-2M
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 13:00:11 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 28 Feb 2014 12:58:53 +0000
Message-Id: <1393592335-9871-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1393592335-9871-1-git-send-email-renaud.barbier@ge.com>
References: <1393592335-9871-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/4] ppc: add support for memtest with cache disabled
To: barebox@lists.infradead.org

Add support to enable caching on a memory region during the memory test.

Tested on P2020RDB and DA923RC.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/cpu-85xx/Makefile               |    1 +
 arch/ppc/cpu-85xx/mmu.c                  |   54 ++++++++++++++++++++++++++++++
 arch/ppc/cpu-85xx/tlb.c                  |   17 +++++++++-
 arch/ppc/include/asm/mmu.h               |    6 +++
 arch/ppc/mach-mpc85xx/include/mach/mmu.h |    5 +++
 5 files changed, 82 insertions(+), 1 deletions(-)
 create mode 100644 arch/ppc/cpu-85xx/mmu.c

diff --git a/arch/ppc/cpu-85xx/Makefile b/arch/ppc/cpu-85xx/Makefile
index 3ee0397..c649c4e 100644
--- a/arch/ppc/cpu-85xx/Makefile
+++ b/arch/ppc/cpu-85xx/Makefile
@@ -1,4 +1,5 @@
 obj-y			+= traps.o
 obj-y			+= tlb.o
+obj-$(CONFIG_MMU)	+= mmu.o
 extra-y			+= start.o
 extra-y			+= resetvec.o
diff --git a/arch/ppc/cpu-85xx/mmu.c b/arch/ppc/cpu-85xx/mmu.c
new file mode 100644
index 0000000..7e86e6b
--- /dev/null
+++ b/arch/ppc/cpu-85xx/mmu.c
@@ -0,0 +1,54 @@
+/*
+ * Copyright 2014 GE Intelligent Platforms, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <asm/cache.h>
+#include <mach/mmu.h>
+
+void remap_range(void *_start, size_t size, uint32_t flags)
+{
+	uint32_t ptr, start, tsize, valid, wimge;
+	unsigned long epn;
+	phys_addr_t rpn = 0;
+	int esel = 0;
+
+	ptr = start = (uint32_t)_start;
+	wimge = flags | MAS2_M;
+
+	while (ptr < (start + size)) {
+		esel = e500_find_tlb_idx((void *)ptr, 1);
+		if (esel != -1)
+			break;
+		e500_read_tlbcam_entry(esel, &valid, &tsize, &epn,
+				&rpn);
+		if (flags & MAS2_I) {
+			flush_dcache();
+			invalidate_icache();
+		}
+		e500_set_tlb(1, epn, rpn, MAS3_SX|MAS3_SW|MAS3_SR,
+				(u8)wimge, 0, esel, tsize, 1);
+		/* convert tsize to bytes to increment address. */
+		ptr += (1ULL << ((tsize) + 10));
+	}
+}
+
+uint32_t mmu_get_pte_cached_flags(void)
+{
+	return 0;
+}
+
+uint32_t mmu_get_pte_uncached_flags(void)
+{
+	return MAS2_I;
+}
diff --git a/arch/ppc/cpu-85xx/tlb.c b/arch/ppc/cpu-85xx/tlb.c
index a2739d0..3a5b413 100644
--- a/arch/ppc/cpu-85xx/tlb.c
+++ b/arch/ppc/cpu-85xx/tlb.c
@@ -50,7 +50,22 @@ void e500_init_tlbs(void)
 	return ;
 }
 
-static int e500_find_free_tlbcam(void)
+void e500_read_tlbcam_entry(int idx, u32 *valid, u32 *tsize,
+		unsigned long *epn, phys_addr_t *rpn)
+{
+	u32 _mas1;
+
+	mtspr(MAS0, FSL_BOOKE_MAS0(1, idx, 0));
+	asm volatile("tlbre;isync");
+	_mas1 = mfspr(MAS1);
+
+	*valid = (_mas1 & MAS1_VALID);
+	*tsize = (_mas1 >> 7) & 0x1f;
+	*epn = mfspr(MAS2) & MAS2_EPN;
+	*rpn = mfspr(MAS3) & MAS3_RPN;
+}
+
+int e500_find_free_tlbcam(void)
 {
 	int ix;
 	u32 _mas1;
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index 72233b4..6e15975 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -557,6 +557,11 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 
 #ifndef __ASSEMBLY__
 
+#ifdef CONFIG_MMU
+void remap_range(void *_start, size_t size, uint32_t flags);
+uint32_t mmu_get_pte_cached_flags(void);
+uint32_t mmu_get_pte_uncached_flags(void);
+#else
 static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
 }
@@ -570,6 +575,7 @@ static inline uint32_t mmu_get_pte_uncached_flags(void)
 {
 	return 0;
 }
+#endif /* CONFIG_MMU */
 #endif
 
 #endif /* _PPC_MMU_H_ */
diff --git a/arch/ppc/mach-mpc85xx/include/mach/mmu.h b/arch/ppc/mach-mpc85xx/include/mach/mmu.h
index 00459e2..e2ecc62 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/mmu.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/mmu.h
@@ -13,6 +13,11 @@
 #include <asm/mmu.h>
 
 #ifndef __ASSEMBLY__
+extern int e500_find_free_tlbcam(void);
+extern void e500_read_tlbcam_entry(int idx, u32 *valid, u32 *tsize,
+		unsigned long *epn, phys_addr_t *rpn);
+extern void e500_read_tlbcam_entry(int idx, u32 *valid, u32 *tsize,
+		unsigned long *epn, phys_addr_t *rpn);
 extern void e500_set_tlb(u8 tlb, u32 epn, u64 rpn, u8 perms, u8 wimge,
 		u8 ts, u8 esel, u8 tsize, u8 iprot);
 extern void e500_disable_tlb(u8 esel);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
