Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPlX-0008Vv-Es
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:46:56 +0100
Message-Id: <1359283623-1782-28-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 27/34] ARM pbl: Use dynamic parameters for early malloc space
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   12 ++++++++----
 arch/arm/cpu/start.c     |    1 +
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 1900daa..6610be6 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -128,10 +128,6 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	 */
 	int use_mmu = 0;
 
-	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
-	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
-	free_mem_end_ptr = free_mem_ptr + SZ_128K;
-
 	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
 
 	if (use_mmu)
@@ -154,6 +150,10 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
 	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
+	uint32_t endmem = membase + memsize;
+
+	endmem -= ARM_RESERVE_MEM_SIZE;
+	endmem -= STACK_SIZE; /* stack */
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
@@ -173,6 +173,10 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 
 	setup_c();
 
+	endmem -= SZ_128K; /* early malloc */
+	free_mem_ptr = endmem;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
 	barebox_uncompress((void *)pg_start, pg_len);
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 530fb09..b77b070 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -35,6 +35,7 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 
 	setup_c();
 
+	endmem -= ARM_RESERVE_MEM_SIZE;
 	arm_stack_top = endmem;
 	endmem -= STACK_SIZE; /* Stack */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
