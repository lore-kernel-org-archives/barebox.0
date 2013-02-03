Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21GZ-0007Fx-Rl
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:14:00 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id CA5C7104ECD6
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:02 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:25 +0100
Message-Id: <1359904236-11622-25-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 25/36] ARM start-pbl: make board_init_lowlevel_return static
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
