Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPOP-0005oL-DP
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 16:09:50 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 15 Oct 2019 18:09:45 +0200
Message-Id: <20191015160945.7930-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] MIPS: init cache before flashing it
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Cache information was not initialized on flush_cache_all(). This was the
reason for relatively slow boot speed on MIPS.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/lib/reloc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 9a9e404f7e..3d05ff1381 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -40,6 +40,7 @@
 #include <linux/sizes.h>
 #include <asm-generic/memory_layout.h>
 
+void r4k_cache_init(void);
 void main_entry(void *fdt, u32 fdt_size);
 void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
 
@@ -146,6 +147,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 		apply_reloc(type, (void *)addr, off);
 	}
 
+	r4k_cache_init();
 	/* Ensure the icache is coherent */
 	flush_cache_all();
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
