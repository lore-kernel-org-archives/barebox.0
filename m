Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurkr-0007Zi-Pt
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:28 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:11:03 +0200
Message-Id: <1962c134dfaf22736ce5d8d4e507a5dacc207496.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 13/16] arm: uncompress: verify sha256 if enabled
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add piggydata verification before the ARM uncompress function.
This calculates the sha256sum of the compressed barebox binary and only
continues if the builtin sha256sum matches the calculated sha256sum.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/uncompress.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index c7851c5..7ea07d0 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -42,14 +42,18 @@ unsigned long free_mem_end_ptr;
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
+extern unsigned char sha_sum[];
+extern unsigned char sha_sum_end[];
+
 void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	uint32_t pg_len, uncompressed_len;
+	uint32_t pg_len, uncompressed_len, pbl_hash_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	unsigned long endmem = membase + memsize;
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
+	void *pbl_hash_start, *pbl_hash_end;
 	unsigned long pc = get_pc();
 
 	pg_start = input_data + global_variable_offset();
@@ -92,6 +96,17 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
 
+	if (IS_ENABLED(CONFIG_PBL_VERIFY_PIGGY)) {
+		pbl_hash_start = sha_sum;
+		pbl_hash_end = sha_sum_end;
+		pbl_hash_len = pbl_hash_end - pbl_hash_start;
+		if (pbl_barebox_verify(pg_start, pg_len, pbl_hash_start,
+				       pbl_hash_len) != 0) {
+			putc_ll('!');
+			panic("hash mismatch, refusing to decompress");
+		}
+	}
+
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
 	sync_caches_for_execution();
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
