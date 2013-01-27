Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPla-0007J3-IP
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:46:53 +0100
Message-Id: <1359283623-1782-25-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
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
index 71732d6..4fa1f32 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -120,9 +120,8 @@ static void noinline errorfn(char *error)
 	while (1);
 }
 
-static void __noreturn barebox_uncompress(void *compressed_start, unsigned int len)
+static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
-	void __noreturn (*barebox)(void);
 	/*
 	 * remap_cached currently does not work rendering the feature
 	 * of enabling the MMU in the PBL useless. disable for now.
@@ -138,11 +137,6 @@ static void __noreturn barebox_uncompress(void *compressed_start, unsigned int l
 	if (use_mmu)
 		mmu_enable((unsigned long)compressed_start, len);
 
-	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-		barebox = (void *)(TEXT_BASE + 1);
-	else
-		barebox = (void *)TEXT_BASE;
-
 	decompress((void *)compressed_start,
 			len,
 			NULL, NULL,
@@ -152,8 +146,6 @@ static void __noreturn barebox_uncompress(void *compressed_start, unsigned int l
 		mmu_disable();
 
 	flush_icache();
-
-	barebox();
 }
 
 static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
@@ -161,6 +153,7 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 {
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
+	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
@@ -181,6 +174,13 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
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
