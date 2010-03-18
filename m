Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Ns9y3-0003Ii-T7
	for barebox@lists.infradead.org; Thu, 18 Mar 2010 07:16:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Mar 2010 08:16:26 +0100
Message-Id: <1268896587-20407-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1268896587-20407-1-git-send-email-s.hauer@pengutronix.de>
References: <1268896587-20407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] armv5: use proper cache flush function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile      |    2 +-
 arch/arm/cpu/cache-armv5.S |  113 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 114 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/cpu/cache-armv5.S

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 9a48130..7f03436 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -13,6 +13,6 @@ obj-$(CONFIG_ARCH_IMX35) += start-arm.o
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_MMU) += mmu.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
-obj-$(CONFIG_CPU_32v5) += cache-armv4.o
+obj-$(CONFIG_CPU_32v5) += cache-armv5.o
 obj-$(CONFIG_CPU_32v6) += cache-armv6.o
 obj-$(CONFIG_CPU_32v7) += cache-armv7.o
diff --git a/arch/arm/cpu/cache-armv5.S b/arch/arm/cpu/cache-armv5.S
new file mode 100644
index 0000000..3618c44
--- /dev/null
+++ b/arch/arm/cpu/cache-armv5.S
@@ -0,0 +1,113 @@
+#include <linux/linkage.h>
+
+#define CACHE_DLINESIZE 32
+
+ENTRY(__mmu_cache_on)
+		mov	r12, lr
+#ifdef CONFIG_MMU
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c10, 4	@ drain write buffer
+		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
+		mrc	p15, 0, r0, c1, c0, 0	@ read control reg
+		orr	r0, r0, #0x5000		@ I-cache enable, RR cache replacement
+		orr	r0, r0, #0x0030
+#ifdef CONFIG_CPU_ENDIAN_BE8
+		orr	r0, r0, #1 << 25	@ big-endian page tables
+#endif
+		bl	__common_mmu_cache_on
+		mov	r0, #0
+		mcr	p15, 0, r0, c8, c7, 0	@ flush I,D TLBs
+#endif
+		mov	pc, r12
+ENDPROC(__mmu_cache_on)
+
+__common_mmu_cache_on:
+		orr	r0, r0, #0x000d		@ Write buffer, mmu
+		b	1f
+		.align	5			@ cache line aligned
+1:		mcr	p15, 0, r0, c1, c0, 0	@ load control register
+		mrc	p15, 0, r0, c1, c0, 0	@ and read it back to
+		sub	pc, lr, r0, lsr #32	@ properly flush pipeline
+
+ENTRY(__mmu_cache_off)
+#ifdef CONFIG_MMU
+		mrc	p15, 0, r0, c1, c0
+		bic	r0, r0, #0x000d
+		mcr	p15, 0, r0, c1, c0	@ turn MMU and cache off
+		mov	r0, #0
+		mcr	p15, 0, r0, c7, c7	@ invalidate whole cache v4
+		mcr	p15, 0, r0, c8, c7	@ invalidate whole TLB v4
+#endif
+		mov	pc, lr
+ENDPROC(__mmu_cache_off)
+
+ENTRY(__mmu_cache_flush)
+1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
+		bne	1b
+		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
+		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
+		mov	pc, lr
+ENDPROC(__mmu_cache_flush)
+
+/*
+ *	dma_inv_range(start, end)
+ *
+ *	Invalidate (discard) the specified virtual address range.
+ *	May not write back any entries.  If 'start' or 'end'
+ *	are not cache line aligned, those lines must be written
+ *	back.
+ *
+ *	- start	- virtual start address
+ *	- end	- virtual end address
+ *
+ * (same as v4wb)
+ */
+ENTRY(dma_inv_range)
+	tst	r0, #CACHE_DLINESIZE - 1
+	bic	r0, r0, #CACHE_DLINESIZE - 1
+	mcrne	p15, 0, r0, c7, c10, 1		@ clean D entry
+	tst	r1, #CACHE_DLINESIZE - 1
+	mcrne	p15, 0, r1, c7, c10, 1		@ clean D entry
+1:	mcr	p15, 0, r0, c7, c6, 1		@ invalidate D entry
+	add	r0, r0, #CACHE_DLINESIZE
+	cmp	r0, r1
+	blo	1b
+	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
+	mov	pc, lr
+
+/*
+ *	dma_clean_range(start, end)
+ *
+ *	Clean the specified virtual address range.
+ *
+ *	- start	- virtual start address
+ *	- end	- virtual end address
+ *
+ * (same as v4wb)
+ */
+ENTRY(dma_clean_range)
+	bic	r0, r0, #CACHE_DLINESIZE - 1
+1:	mcr	p15, 0, r0, c7, c10, 1		@ clean D entry
+	add	r0, r0, #CACHE_DLINESIZE
+	cmp	r0, r1
+	blo	1b
+	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
+	mov	pc, lr
+
+/*
+ *	dma_flush_range(start, end)
+ *
+ *	Clean and invalidate the specified virtual address range.
+ *
+ *	- start	- virtual start address
+ *	- end	- virtual end address
+ */
+ENTRY(dma_flush_range)
+	bic	r0, r0, #CACHE_DLINESIZE - 1
+1:	mcr	p15, 0, r0, c7, c14, 1		@ clean+invalidate D entry
+	add	r0, r0, #CACHE_DLINESIZE
+	cmp	r0, r1
+	blo	1b
+	mcr	p15, 0, r0, c7, c10, 4		@ drain WB
+	mov	pc, lr
+
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
