Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWCh-0003WO-KS
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 11:50:28 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Oct 2019 13:50:19 +0200
Message-Id: <20191021115021.3129-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 1/3] MIPS: reloc: remove init of relocated bss
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

It will be done in main_entry() any way.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/lib/reloc.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 9a9e404f7e..798a68680d 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -110,7 +110,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 {
 	unsigned long addr, length, bss_len;
 	u32 relocaddr, new_stack;
-	uint8_t *buf, *bss_start;
+	uint8_t *buf;
 	unsigned int type;
 	long off;
 
@@ -149,10 +149,6 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 	/* Ensure the icache is coherent */
 	flush_cache_all();
 
-	/* Clear the .bss section */
-	bss_start = (uint8_t *)((unsigned long)__bss_start + off);
-	memset(bss_start, 0, bss_len);
-
 	 __asm__ __volatile__ (
 			"move	$a0, %0\n"
 		"	move	$a1, %1\n"
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
