Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027g-BF
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:28 +0200
Message-Id: <1350507817-7819-20-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/28] ARM pbl: setup stack at end of SDRAM
To: barebox@lists.infradead.org

We now have memory information available in barebox_arm_entry,
use it to setup the stack at the end of SDRAM instead of hardcoded
config value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index a2cdbf2..e612d51 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -162,9 +162,6 @@ static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
 	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
 
-	/* Setup the stack */
-	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
-
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 
@@ -196,5 +193,7 @@ static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
 void __naked barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
+	arm_setup_stack(membase + memsize - 8);
+
 	__barebox_arm_entry(membase, memsize, boarddata);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
