Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXb-0004Nk-Tr
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:40 +0100
Message-Id: <1359705587-9762-28-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 27/34] ARM pbl: Use dynamic parameters for early malloc space
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 89839f0..9c168b3 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -114,10 +114,6 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	 */
 	int use_mmu = 0;
 
-	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
-	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
-	free_mem_end_ptr = free_mem_ptr + SZ_128K;
-
 	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
 
 	if (use_mmu)
@@ -137,6 +133,9 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
 	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
+	uint32_t endmem = membase + memsize;
+
+	endmem -= STACK_SIZE; /* stack */
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
@@ -156,6 +155,10 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 
 	setup_c();
 
+	endmem -= SZ_128K; /* early malloc */
+	free_mem_ptr = endmem;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
 	barebox_uncompress((void *)pg_start, pg_len);
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
