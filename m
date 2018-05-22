Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x230.google.com ([2a00:1450:400c:c0c::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Il-0003GM-8n
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:22 +0000
Received: by mail-wr0-x230.google.com with SMTP id i12-v6so7817999wrc.4
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:34:04 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:39 +0300
Message-Id: <20180522153342.24933-10-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 09/12] MIPS: use CKSEG1 instead of KSEG1
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

KSEG1 constant is defined for 32 bit MIPS only. Use CKSEG1 which is defined for
both MIPS32 and MIPS64.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/boot/dtb.c  | 4 ++--
 arch/mips/lib/c-r4k.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index e7633a5af..3f7f46641 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -30,10 +30,10 @@ void of_add_memory_bank(struct device_node *node, bool dump, int r,
 
 	if (IS_ENABLED(CONFIG_MMU)) {
 		sprintf(str, "kseg0_ram%d", r);
-		barebox_add_memory_bank(str, KSEG0 | base, size);
+		barebox_add_memory_bank(str, CKSEG0 | base, size);
 	} else {
 		sprintf(str, "kseg1_ram%d", r);
-		barebox_add_memory_bank(str, KSEG1 | base, size);
+		barebox_add_memory_bank(str, CKSEG1 | base, size);
 	}
 
 	if (dump)
diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 150205840..cb0544a53 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -58,14 +58,14 @@ void flush_cache_all(void)
 
 	dcache_size = c->dcache.waysize * c->dcache.ways;
 	lsize = c->dcache.linesz;
-	aend = (KSEG0 + dcache_size - 1) & ~(lsize - 1);
-	for (addr = KSEG0; addr <= aend; addr += lsize)
+	aend = (CKSEG0 + dcache_size - 1) & ~(lsize - 1);
+	for (addr = CKSEG0; addr <= aend; addr += lsize)
 		cache_op(Index_Writeback_Inv_D, addr);
 
 	icache_size = c->icache.waysize * c->icache.ways;
 	lsize = c->icache.linesz;
-	aend = (KSEG0 + icache_size - 1) & ~(lsize - 1);
-	for (addr = KSEG0; addr <= aend; addr += lsize)
+	aend = (CKSEG0 + icache_size - 1) & ~(lsize - 1);
+	for (addr = CKSEG0; addr <= aend; addr += lsize)
 		cache_op(Index_Invalidate_I, addr);
 
 	/* secondatory cache skipped */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
