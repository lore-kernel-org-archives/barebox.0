Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXU-0004Mb-1H
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:37 +0100
Message-Id: <1359705587-9762-25-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/34] ARM start-pbl: call uncompressed binary with arguments
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 0da4fef..64cd6ff 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -106,9 +106,8 @@ static void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-static void __noreturn barebox_uncompress(void *compressed_start, unsigned int len)
+static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
-	void __noreturn (*barebox)(void);
 	/*
 	 * remap_cached currently does not work rendering the feature
 	 * of enabling the MMU in the PBL useless. disable for now.
@@ -124,19 +123,12 @@ static void __noreturn barebox_uncompress(void *compressed_start, unsigned int l
 	if (use_mmu)
 		mmu_enable((unsigned long)compressed_start, len);
 
-	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-		barebox = (void *)(TEXT_BASE + 1);
-	else
-		barebox = (void *)TEXT_BASE;
-
 	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
 
 	if (use_mmu)
 		mmu_disable();
 
 	flush_icache();
-
-	barebox();
 }
 
 static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
@@ -144,6 +136,7 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 {
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
+	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
@@ -164,6 +157,13 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 	setup_c();
 
 	barebox_uncompress((void *)pg_start, pg_len);
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
