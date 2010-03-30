Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S7-Op
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:53 +0200
Message-Id: <1269947215-18214-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] add l2x0 cache support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig       |    8 ++
 arch/arm/cpu/Makefile      |    2 +
 arch/arm/cpu/cache-l2x0.c  |  183 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/mmu.c         |   11 +++
 arch/arm/include/asm/mmu.h |   11 +++
 5 files changed, 215 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/cpu/cache-l2x0.c

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index be01f3d..7e17f9d 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -69,3 +69,11 @@ config CPU_BIG_ENDIAN
 	  Note that your board must be properly built and your board
 	  port must properly enable any big-endian related features
 	  of your chipset/board/processor.
+
+config ARCH_HAS_L2X0
+	bool
+
+config CACHE_L2X0
+	bool "Enable L2x0 PrimeCell"
+	depends on ARCH_HAS_L2X0
+
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 7f03436..ae1f762 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -16,3 +16,5 @@ obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-$(CONFIG_CPU_32v5) += cache-armv5.o
 obj-$(CONFIG_CPU_32v6) += cache-armv6.o
 obj-$(CONFIG_CPU_32v7) += cache-armv7.o
+obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
+
diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
new file mode 100644
index 0000000..61569d2
--- /dev/null
+++ b/arch/arm/cpu/cache-l2x0.c
@@ -0,0 +1,183 @@
+#include <common.h>
+#include <init.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+
+#define CACHE_LINE_SIZE		32
+
+static void __iomem *l2x0_base;
+
+#define L2X0_CACHE_ID			0x000
+#define L2X0_CACHE_TYPE			0x004
+#define L2X0_CTRL			0x100
+#define L2X0_AUX_CTRL			0x104
+#define L2X0_TAG_LATENCY_CTRL		0x108
+#define L2X0_DATA_LATENCY_CTRL		0x10C
+#define L2X0_EVENT_CNT_CTRL		0x200
+#define L2X0_EVENT_CNT1_CFG		0x204
+#define L2X0_EVENT_CNT0_CFG		0x208
+#define L2X0_EVENT_CNT1_VAL		0x20C
+#define L2X0_EVENT_CNT0_VAL		0x210
+#define L2X0_INTR_MASK			0x214
+#define L2X0_MASKED_INTR_STAT		0x218
+#define L2X0_RAW_INTR_STAT		0x21C
+#define L2X0_INTR_CLEAR			0x220
+#define L2X0_CACHE_SYNC			0x730
+#define L2X0_INV_LINE_PA		0x770
+#define L2X0_INV_WAY			0x77C
+#define L2X0_CLEAN_LINE_PA		0x7B0
+#define L2X0_CLEAN_LINE_IDX		0x7B8
+#define L2X0_CLEAN_WAY			0x7BC
+#define L2X0_CLEAN_INV_LINE_PA		0x7F0
+#define L2X0_CLEAN_INV_LINE_IDX		0x7F8
+#define L2X0_CLEAN_INV_WAY		0x7FC
+#define L2X0_LOCKDOWN_WAY_D		0x900
+#define L2X0_LOCKDOWN_WAY_I		0x904
+#define L2X0_TEST_OPERATION		0xF00
+#define L2X0_LINE_DATA			0xF10
+#define L2X0_LINE_TAG			0xF30
+#define L2X0_DEBUG_CTRL			0xF40
+
+static inline void cache_wait(void __iomem *reg, unsigned long mask)
+{
+	/* wait for the operation to complete */
+	while (readl(reg) & mask)
+		;
+}
+
+static inline void cache_sync(void)
+{
+	void __iomem *base = l2x0_base;
+	writel(0, base + L2X0_CACHE_SYNC);
+	cache_wait(base + L2X0_CACHE_SYNC, 1);
+}
+
+static inline void l2x0_clean_line(unsigned long addr)
+{
+	void __iomem *base = l2x0_base;
+	cache_wait(base + L2X0_CLEAN_LINE_PA, 1);
+	writel(addr, base + L2X0_CLEAN_LINE_PA);
+}
+
+static inline void l2x0_inv_line(unsigned long addr)
+{
+	void __iomem *base = l2x0_base;
+	cache_wait(base + L2X0_INV_LINE_PA, 1);
+	writel(addr, base + L2X0_INV_LINE_PA);
+}
+
+static inline void l2x0_flush_line(unsigned long addr)
+{
+	void __iomem *base = l2x0_base;
+
+	/* Clean by PA followed by Invalidate by PA */
+	cache_wait(base + L2X0_CLEAN_LINE_PA, 1);
+	writel(addr, base + L2X0_CLEAN_LINE_PA);
+	cache_wait(base + L2X0_INV_LINE_PA, 1);
+	writel(addr, base + L2X0_INV_LINE_PA);
+}
+
+static inline void l2x0_inv_all(void)
+{
+	/* invalidate all ways */
+	writel(0xff, l2x0_base + L2X0_INV_WAY);
+	cache_wait(l2x0_base + L2X0_INV_WAY, 0xff);
+	cache_sync();
+}
+
+static void l2x0_inv_range(unsigned long start, unsigned long end)
+{
+	if (start & (CACHE_LINE_SIZE - 1)) {
+		start &= ~(CACHE_LINE_SIZE - 1);
+		l2x0_flush_line(start);
+		start += CACHE_LINE_SIZE;
+	}
+
+	if (end & (CACHE_LINE_SIZE - 1)) {
+		end &= ~(CACHE_LINE_SIZE - 1);
+		l2x0_flush_line(end);
+	}
+
+	while (start < end) {
+		unsigned long blk_end = start + min(end - start, 4096UL);
+
+		while (start < blk_end) {
+			l2x0_inv_line(start);
+			start += CACHE_LINE_SIZE;
+		}
+	}
+	cache_wait(l2x0_base + L2X0_INV_LINE_PA, 1);
+	cache_sync();
+}
+
+static void l2x0_clean_range(unsigned long start, unsigned long end)
+{
+	void __iomem *base = l2x0_base;
+
+	start &= ~(CACHE_LINE_SIZE - 1);
+	while (start < end) {
+		unsigned long blk_end = start + min(end - start, 4096UL);
+
+		while (start < blk_end) {
+			l2x0_clean_line(start);
+			start += CACHE_LINE_SIZE;
+		}
+	}
+	cache_wait(base + L2X0_CLEAN_LINE_PA, 1);
+	cache_sync();
+}
+
+void l2x0_flush_range(unsigned long start, unsigned long end)
+{
+	start &= ~(CACHE_LINE_SIZE - 1);
+	while (start < end) {
+		unsigned long blk_end = start + min(end - start, 4096UL);
+
+		while (start < blk_end) {
+			l2x0_flush_line(start);
+			start += CACHE_LINE_SIZE;
+		}
+	}
+	cache_wait(l2x0_base + L2X0_CLEAN_INV_LINE_PA, 1);
+	cache_sync();
+}
+
+static void l2x0_disable(void)
+{
+	writel(0xff, l2x0_base + L2X0_CLEAN_INV_WAY);
+	while (readl(l2x0_base + L2X0_CLEAN_INV_WAY));
+	writel(0, l2x0_base + L2X0_CTRL);
+}
+
+void __init l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask)
+{
+	__u32 aux;
+
+	l2x0_base = base;
+
+	/*
+	 * Check if l2x0 controller is already enabled.
+	 * If you are booting from non-secure mode
+	 * accessing the below registers will fault.
+	 */
+	if (!(readl(l2x0_base + L2X0_CTRL) & 1)) {
+
+		/* l2x0 controller is disabled */
+
+		aux = readl(l2x0_base + L2X0_AUX_CTRL);
+		aux &= aux_mask;
+		aux |= aux_val;
+		writel(aux, l2x0_base + L2X0_AUX_CTRL);
+
+		l2x0_inv_all();
+
+		/* enable L2X0 */
+		writel(1, l2x0_base + L2X0_CTRL);
+	}
+
+	outer_cache.inv_range = l2x0_inv_range;
+	outer_cache.clean_range = l2x0_clean_range;
+	outer_cache.flush_range = l2x0_flush_range;
+	outer_cache.disable = l2x0_disable;
+}
+
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index faf47c5..66ee987 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -60,12 +60,17 @@ void mmu_enable(void)
         );
 }
 
+struct outer_cache_fns outer_cache;
+
 /*
  * Clean and invalide caches, disable MMU
  */
 void mmu_disable(void)
 {
 
+	if (outer_cache.disable)
+		outer_cache.disable();
+
 	asm volatile (
 		"bl __mmu_cache_flush;"
 		"bl __mmu_cache_off;"
@@ -118,16 +123,22 @@ void dma_free_coherent(void *mem)
 
 void dma_clean_range(unsigned long start, unsigned long end)
 {
+	if (outer_cache.clean_range)
+		outer_cache.clean_range(start, end);
 	__dma_clean_range(start, end);
 }
 
 void dma_flush_range(unsigned long start, unsigned long end)
 {
+	if (outer_cache.flush_range)
+		outer_cache.flush_range(start, end);
 	__dma_flush_range(start, end);
 }
 
 void dma_inv_range(unsigned long start, unsigned long end)
 {
+	if (outer_cache.inv_range)
+		outer_cache.inv_range(start, end);
 	__dma_inv_range(start, end);
 }
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index a779101..fdd23b5 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -60,6 +60,17 @@ static inline void dma_inv_range(unsigned long s, unsigned long e)
 
 #endif
 
+void __init l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask);
+
+struct outer_cache_fns {
+	void (*inv_range)(unsigned long, unsigned long);
+	void (*clean_range)(unsigned long, unsigned long);
+	void (*flush_range)(unsigned long, unsigned long);
+	void (*disable)(void);
+};
+
+extern struct outer_cache_fns outer_cache;
+
 void __dma_clean_range(unsigned long, unsigned long);
 void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
