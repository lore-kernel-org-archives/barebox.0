Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFZ-0004vX-MG
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:08 +0000
Received: by mail-lb0-x233.google.com with SMTP id bc4so129871090lbc.2
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:45 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:17 +0300
Message-Id: <1457357426-9868-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 06/15] MIPS: flush cache on shutdown
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/cache.h |  6 ++++++
 arch/mips/lib/Makefile        |  1 +
 arch/mips/lib/c-r4k.c         | 23 +++++++++++++++++++++++
 arch/mips/lib/shutdown.c      | 12 ++++++++++++
 4 files changed, 42 insertions(+)

diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
new file mode 100644
index 0000000..cceba0a
--- /dev/null
+++ b/arch/mips/include/asm/cache.h
@@ -0,0 +1,6 @@
+#ifndef _ASM_MIPS_CACHE_H
+#define _ASM_MIPS_CACHE_H
+
+void flush_cache_all(void);
+
+#endif /* _ASM_MIPS_CACHE_H */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 02ee189..43f7af7 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -6,6 +6,7 @@ obj-y += ashrdi3.o
 obj-y += cpu-probe.o
 obj-y += traps.o
 obj-y += genex.o
+obj-y += shutdown.o
 
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memcpy.o
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memset.o
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 4fe046a..1502058 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -48,6 +48,29 @@ static inline void blast_##pfx##cache##_range(unsigned long start,	\
 __BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D)
 __BUILD_BLAST_CACHE_RANGE(inv_d, dcache, Hit_Invalidate_D)
 
+void flush_cache_all(void)
+{
+	struct cpuinfo_mips *c = &current_cpu_data;
+	unsigned long lsize;
+	unsigned long addr;
+	unsigned long aend;
+	unsigned int icache_size, dcache_size;
+
+	dcache_size = c->dcache.waysize * c->dcache.ways;
+	lsize = c->dcache.linesz;
+	aend = (KSEG0 + dcache_size - 1) & ~(lsize - 1);
+	for (addr = KSEG0; addr <= aend; addr += lsize)
+		cache_op(Index_Writeback_Inv_D, addr);
+
+	icache_size = c->icache.waysize * c->icache.ways;
+	lsize = c->icache.linesz;
+	aend = (KSEG0 + icache_size - 1) & ~(lsize - 1);
+	for (addr = KSEG0; addr <= aend; addr += lsize)
+		cache_op(Index_Invalidate_I, addr);
+
+	/* secondatory cache skipped */
+}
+
 void dma_flush_range(unsigned long start, unsigned long end)
 {
 	blast_dcache_range(start, end);
diff --git a/arch/mips/lib/shutdown.c b/arch/mips/lib/shutdown.c
new file mode 100644
index 0000000..973cd23
--- /dev/null
+++ b/arch/mips/lib/shutdown.c
@@ -0,0 +1,12 @@
+/**
+ * This function is called by shutdown_barebox to get a clean
+ * memory/cache state.
+ */
+#include <init.h>
+#include <asm/cache.h>
+
+static void arch_shutdown(void)
+{
+	flush_cache_all();
+}
+archshutdown_exitcall(arch_shutdown);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
