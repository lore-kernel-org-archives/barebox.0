Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXU-0004Md-0C
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:36 +0100
Message-Id: <1359705587-9762-24-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/34] ARM start-pbl: make board_init_lowlevel_return static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 06c0a17..0da4fef 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -139,18 +139,12 @@ static void __noreturn barebox_uncompress(void *compressed_start, unsigned int l
 	barebox();
 }
 
-/*
- * Board code can jump here by either returning from board_init_lowlevel
- * or by calling this function directly.
- */
-void __naked __noreturn board_init_lowlevel_return(void)
+static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
+		uint32_t memsize, uint32_t boarddata)
 {
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
 
-	/* Setup the stack */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
-
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 
@@ -194,5 +188,7 @@ void __naked __noreturn board_init_lowlevel_return(void)
 void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
-	board_init_lowlevel_return();
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
+
+	__barebox_arm_entry(membase, memsize, boarddata);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
