Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ZBd-0004Ka-Db
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:30:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:30:31 +0200
Message-Id: <1344781832-17978-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
References: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM pbl: enable MMU during decompression
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile    |    4 ++++
 arch/arm/cpu/start-pbl.c |   45 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 49 insertions(+)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 78d300d..0ecc72e 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -10,9 +10,13 @@ obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
 obj-$(CONFIG_MMU) += mmu.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
+pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-$(CONFIG_CPU_32v5) += cache-armv5.o
+pbl-$(CONFIG_CPU_32v5) += cache-armv5.o
 obj-$(CONFIG_CPU_32v6) += cache-armv6.o
+pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
 obj-$(CONFIG_CPU_32v7) += cache-armv7.o
+pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
 obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 
 pbl-y += start-pbl.o start-reset.o
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 004ba6a..1b67e2a 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -28,6 +28,9 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
+#include <asm/pgtable.h>
+
+#include "mmu.h"
 
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
@@ -50,14 +53,53 @@ extern void *input_data_end;
 #include "../../../../lib/decompress_inflate.c"
 #endif
 
+static void mmu_enable(unsigned long *ttb)
+{
+	int i;
+
+	/* Set the ttb register */
+	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
+
+	/* Set the Domain Access Control Register */
+	i = 0x3;
+	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
+
+	/* create a flat mapping using 1MiB sections */
+	for (i = 0; i < 4096; i++)
+		ttb[i] = (i << 20) | PMD_SECT_AP_WRITE |
+			PMD_SECT_AP_READ | PMD_TYPE_SECT |
+			PMD_SECT_WB;
+
+	__mmu_cache_on();
+}
+
+static void mmu_disable(void)
+{
+	__mmu_cache_flush();
+	__mmu_cache_off();
+}
+
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	void (*barebox)(void);
+	unsigned long *ttb;
+	/*
+	 * We create a flat mapping for the whole address space
+	 * and enable the MMU here. This means that you cannot use
+	 * any hardware like UARTs while the MMU is on. If you want
+	 * to debug this code disable MMU support below.
+	 */
+	int use_mmu = IS_ENABLED(CONFIG_MMU);
 
 	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
 	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
 	free_mem_end_ptr = free_mem_ptr + SZ_128K;
 
+	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
+
+	if (use_mmu)
+		mmu_enable(ttb);
+
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
 		barebox = (void *)(TEXT_BASE + 1);
 	else
@@ -68,6 +110,9 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 			NULL, NULL,
 			(void *)TEXT_BASE, NULL, NULL);
 
+	if (use_mmu)
+		mmu_disable();
+
 	/* flush I-cache before jumping to the uncompressed binary */
 	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
