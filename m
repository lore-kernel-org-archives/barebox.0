Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027h-Bh
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:04:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:30 +0200
Message-Id: <1350507817-7819-22-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/28] ARM pbl: make MMU functional again
To: barebox@lists.infradead.org

We now have memory information available and thus can simply
map the available SDRAM space instead of selecting the regions
we need manually.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 751e4fa..98c1ae3 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -78,10 +78,12 @@ static void map_cachable(unsigned long start, unsigned long size)
 			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
 }
 
-static void mmu_enable(unsigned long compressed_start, unsigned int len)
+static void mmu_enable(unsigned long membase, unsigned long memsize)
 {
 	int i;
 
+	arm_set_cache_functions();
+
 	/* Set the ttb register */
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
 
@@ -91,20 +93,8 @@ static void mmu_enable(unsigned long compressed_start, unsigned int len)
 
 	create_sections(0, 4096, PMD_SECT_AP_WRITE |
 			PMD_SECT_AP_READ | PMD_TYPE_SECT);
-	/*
-	 * Setup all regions we need cacheable, namely:
-	 * - the stack
-	 * - the decompressor code
-	 * - the compressed image
-	 * - the uncompressed image
-	 * - the early malloc space
-	 */
-	map_cachable(STACK_BASE, STACK_SIZE);
-	map_cachable((unsigned long)&_text,
-			(unsigned long)&_end - (unsigned long)&_text);
-	map_cachable((unsigned long)compressed_start, len);
-	map_cachable(TEXT_BASE, len * 4);
-	map_cachable(free_mem_ptr, free_mem_end_ptr - free_mem_ptr);
+
+	map_cachable(membase, memsize);
 
 	__mmu_cache_on();
 }
@@ -126,7 +116,7 @@ static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
 	void (*barebox)(uint32_t, uint32_t, uint32_t);
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
-	int use_mmu = 0;
+	int use_mmu = IS_ENABLED(CONFIG_MMU);
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
