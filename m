Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mZl-0003JR-Lb
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 12:52:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2019 14:51:53 +0200
Message-Id: <20190822125158.10296-4-s.hauer@pengutronix.de>
In-Reply-To: <20190822125158.10296-1-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] pbl: Move piggy verification into pbl_barebox_uncompress()
To: Barebox List <barebox@lists.infradead.org>

piggy verification is a direct prerequisite of uncompressing the
piggydata, so move the verification there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/uncompress.c | 17 +----------------
 pbl/decomp.c              | 17 +++++++++++++++++
 2 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 9cc3b358b0..4f16af22f8 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -42,18 +42,14 @@ unsigned long free_mem_end_ptr;
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
-extern unsigned char sha_sum[];
-extern unsigned char sha_sum_end[];
-
 void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	uint32_t pg_len, uncompressed_len, pbl_hash_len;
+	uint32_t pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	unsigned long endmem = membase + memsize;
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
-	void *pbl_hash_start, *pbl_hash_end;
 	unsigned long pc = get_pc();
 
 	pg_start = input_data + global_variable_offset();
@@ -96,17 +92,6 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
 
-	if (IS_ENABLED(CONFIG_PBL_VERIFY_PIGGY)) {
-		pbl_hash_start = sha_sum;
-		pbl_hash_end = sha_sum_end;
-		pbl_hash_len = pbl_hash_end - pbl_hash_start;
-		if (pbl_barebox_verify(pg_start, pg_len, pbl_hash_start,
-				       pbl_hash_len) != 0) {
-			putc_ll('!');
-			panic("hash mismatch, refusing to decompress");
-		}
-	}
-
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
 	sync_caches_for_execution();
diff --git a/pbl/decomp.c b/pbl/decomp.c
index ef713a6c74..8767f9fa7e 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -51,8 +51,25 @@ static void noinline errorfn(char *error)
 	while (1);
 }
 
+extern unsigned char sha_sum[];
+extern unsigned char sha_sum_end[];
+
 void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len)
 {
+	uint32_t pbl_hash_len;
+	void *pbl_hash_start, *pbl_hash_end;
+
+	if (IS_ENABLED(CONFIG_PBL_VERIFY_PIGGY)) {
+		pbl_hash_start = sha_sum;
+		pbl_hash_end = sha_sum_end;
+		pbl_hash_len = pbl_hash_end - pbl_hash_start;
+		if (pbl_barebox_verify(compressed_start, len, pbl_hash_start,
+				       pbl_hash_len) != 0) {
+			putc_ll('!');
+			panic("hash mismatch, refusing to decompress");
+		}
+	}
+
 	decompress((void *)compressed_start,
 			len,
 			NULL, NULL,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
