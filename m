Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Ed-0000cq-6s
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:20 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2C1DB104ED36
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:29 +0100
Message-Id: <1359904236-11622-29-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 29/36] ARM pbl: Use dynamic parameters for early malloc space
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
