Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFY-0004vL-Fe
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:07 +0000
Received: by mail-lb0-x22d.google.com with SMTP id bc4so129870409lbc.2
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:44 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:16 +0300
Message-Id: <1457357426-9868-6-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 05/15] MIPS: add initial R4000-style cache support
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/cacheops.h |  7 ++++++
 arch/mips/include/asm/io.h       |  3 +++
 arch/mips/lib/c-r4k.c            | 48 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 58 insertions(+)

diff --git a/arch/mips/include/asm/cacheops.h b/arch/mips/include/asm/cacheops.h
index 5bd44d5..3bc5852 100644
--- a/arch/mips/include/asm/cacheops.h
+++ b/arch/mips/include/asm/cacheops.h
@@ -18,12 +18,19 @@
 #define Cache_I				0x00
 #define Cache_D				0x01
 
+#define Index_Writeback_Inv		0x00
 #define Index_Store_Tag			0x08
+#define Hit_Invalidate			0x10
+#define Hit_Writeback_Inv		0x14	/* not with Cache_I though */
 
 /*
  * Cache Operations available on all MIPS processors with R4000-style caches
  */
+#define Index_Invalidate_I		(Cache_I | Index_Writeback_Inv)
+#define Index_Writeback_Inv_D		(Cache_D | Index_Writeback_Inv)
 #define Index_Store_Tag_I		(Cache_I | Index_Store_Tag)
 #define Index_Store_Tag_D		(Cache_D | Index_Store_Tag)
+#define Hit_Invalidate_D		(Cache_D | Hit_Invalidate)
+#define Hit_Writeback_Inv_D		(Cache_D | Hit_Writeback_Inv)
 
 #endif	/* __ASM_CACHEOPS_H */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4832be6..4bee591 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -14,6 +14,9 @@
 #include <asm/types.h>
 #include <asm/byteorder.h>
 
+void dma_flush_range(unsigned long, unsigned long);
+void dma_inv_range(unsigned long, unsigned long);
+
 #define	IO_SPACE_LIMIT	0
 
 /*****************************************************************************/
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index ff68677..4fe046a 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -10,10 +10,58 @@
 #include <common.h>
 #include <asm/io.h>
 #include <asm/mipsregs.h>
+#include <asm/cache.h>
+#include <asm/cacheops.h>
 #include <asm/cpu.h>
 #include <asm/cpu-info.h>
 #include <asm/bitops.h>
 
+#define cache_op(op,addr)						\
+	__asm__ __volatile__(						\
+	"	.set	push					\n"	\
+	"	.set	noreorder				\n"	\
+	"	.set	mips3\n\t				\n"	\
+	"	cache	%0, %1					\n"	\
+	"	.set	pop					\n"	\
+	:								\
+	: "i" (op), "R" (*(unsigned char *)(addr)))
+
+#define __BUILD_BLAST_CACHE_RANGE(pfx, desc, hitop)			\
+static inline void blast_##pfx##cache##_range(unsigned long start,	\
+					      unsigned long end)	\
+{									\
+	unsigned long lsize = current_cpu_data.desc.linesz;		\
+	unsigned long addr = start & ~(lsize - 1);			\
+	unsigned long aend = (end - 1) & ~(lsize - 1);			\
+									\
+	if (current_cpu_data.desc.flags & MIPS_CACHE_NOT_PRESENT)	\
+		return;							\
+									\
+	while (1) {							\
+		cache_op(hitop, addr);					\
+		if (addr == aend)					\
+			break;						\
+		addr += lsize;						\
+	}								\
+}
+
+__BUILD_BLAST_CACHE_RANGE(d, dcache, Hit_Writeback_Inv_D)
+__BUILD_BLAST_CACHE_RANGE(inv_d, dcache, Hit_Invalidate_D)
+
+void dma_flush_range(unsigned long start, unsigned long end)
+{
+	blast_dcache_range(start, end);
+
+	/* secondatory cache skipped */
+}
+
+void dma_inv_range(unsigned long start, unsigned long end)
+{
+	blast_inv_dcache_range(start, end);
+
+	/* secondatory cache skipped */
+}
+
 void r4k_cache_init(void);
 
 static void probe_pcache(void)
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
