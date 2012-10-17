Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamN-0002D5-9Q
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:04:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:29 +0200
Message-Id: <1350507817-7819-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/28] ARM pbl: Call uncompressed binary with arguments
To: barebox@lists.infradead.org

This puts the code from barebox_uncompress inline into
the caller. Also we now call the uncompressed binary
with the memory and boarddata arguments, so everything
is ready for the uncompressed image to pick up the
values.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   64 +++++++++++++++++++---------------------------
 1 file changed, 27 insertions(+), 37 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index e612d51..751e4fa 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -120,47 +120,13 @@ void noinline errorfn(char *error)
 	while (1);
 }
 
-static void barebox_uncompress(void *compressed_start, unsigned int len)
-{
-	void (*barebox)(void);
-	/*
-	 * remap_cached currently does not work rendering the feature
-	 * of enabling the MMU in the PBL useless. disable for now.
-	 */
-	int use_mmu = 0;
-
-	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
-	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
-	free_mem_end_ptr = free_mem_ptr + SZ_128K;
-
-	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
-
-	if (use_mmu)
-		mmu_enable((unsigned long)compressed_start, len);
-
-	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-		barebox = (void *)(TEXT_BASE + 1);
-	else
-		barebox = (void *)TEXT_BASE;
-
-	decompress((void *)compressed_start,
-			len,
-			NULL, NULL,
-			(void *)TEXT_BASE, NULL, errorfn);
-
-	if (use_mmu)
-		mmu_disable();
-
-	flush_icache();
-
-	barebox();
-}
-
 static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
+	void (*barebox)(uint32_t, uint32_t, uint32_t);
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
+	int use_mmu = 0;
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
@@ -180,7 +146,31 @@ static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
 
 	setup_c();
 
-	barebox_uncompress((void *)pg_start, pg_len);
+	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
+	free_mem_ptr = membase + memsize - SZ_256K;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
+	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
+
+	if (use_mmu)
+		mmu_enable(membase, memsize);
+
+	decompress((void *)pg_start,
+			pg_len,
+			NULL, NULL,
+			(void *)TEXT_BASE, NULL, errorfn);
+
+	if (use_mmu)
+		mmu_disable();
+
+	flush_icache();
+
+	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
+		barebox = (void *)(TEXT_BASE + 1);
+	else
+		barebox = (void *)TEXT_BASE;
+
+	barebox(membase, memsize, boarddata);
 }
 
 /*
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
