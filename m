Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBtM-0004x7-S2
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 05:15:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id 131so4810536ljf.4
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 22:15:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 21 Jun 2019 08:15:07 +0300
Message-Id: <20190621051507.11700-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: reloc: make flush_cache_all() usable
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

flush_cache_all() uses 'struct cpuinfo_mips current_cpu_data' data fields.
These data fields are initialized in r4k_cache_init().

However in the current implementation the r4k_cache_init() function
is called __AFTER__ relocate_code().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/reloc.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 14ba6167dd..6f1cd6d82f 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -37,6 +37,7 @@
 #include <asm/mipsregs.h>
 #include <asm/relocs.h>
 #include <asm/sections.h>
+#include <asm/cpu-features.h>
 #include <linux/sizes.h>
 #include <asm-generic/memory_layout.h>
 
@@ -157,6 +158,17 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 		apply_reloc(type, (void *)addr, off);
 	}
 
+	/* clear the BSS first */
+	memset(__bss_start, 0x00, bss_len);
+
+	cpu_probe();
+
+	if (cpu_has_4k_cache) {
+		extern void r4k_cache_init(void);
+
+		r4k_cache_init();
+	}
+
 	/* Ensure the icache is coherent */
 	flush_cache_all();
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
