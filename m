Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWCh-0003WQ-L3
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 11:50:28 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Oct 2019 13:50:20 +0200
Message-Id: <20191021115021.3129-2-o.rempel@pengutronix.de>
In-Reply-To: <20191021115021.3129-1-o.rempel@pengutronix.de>
References: <20191021115021.3129-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 2/3] MIPS: move r4k_cache_init in to cpu_probe function
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/boot/main_entry.c   | 6 ------
 arch/mips/include/asm/cache.h | 1 +
 arch/mips/lib/cpu-probe.c     | 5 +++++
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 4ae4457e7e..2c18bc81c3 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -77,12 +77,6 @@ void __bare_init main_entry(void *fdt, u32 fdt_size)
 
 	cpu_probe();
 
-	if (cpu_has_4k_cache) {
-		extern void r4k_cache_init(void);
-
-		r4k_cache_init();
-	}
-
 	trap_init();
 
 	malloc_end = (unsigned long)_stext;
diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
index cceba0acc0..4bb39b1cd4 100644
--- a/arch/mips/include/asm/cache.h
+++ b/arch/mips/include/asm/cache.h
@@ -2,5 +2,6 @@
 #define _ASM_MIPS_CACHE_H
 
 void flush_cache_all(void);
+void r4k_cache_init(void);
 
 #endif /* _ASM_MIPS_CACHE_H */
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index 2556a8b240..ddabddd466 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -9,6 +9,8 @@
  */
 #include <common.h>
 #include <asm/mipsregs.h>
+#include <asm/cache.h>
+#include <asm/cpu-features.h>
 #include <asm/cpu-info.h>
 #include <asm/cpu.h>
 #include <memory.h>
@@ -163,6 +165,9 @@ void cpu_probe(void)
 		cpu_probe_ingenic(c);
 		break;
 	}
+
+	if (cpu_has_4k_cache)
+		r4k_cache_init();
 }
 
 unsigned long mips_stack_top;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
