Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDXCL-0001yB-Sn
 for barebox@lists.infradead.org; Thu, 16 Jun 2016 13:19:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jun 2016 15:18:22 +0200
Message-Id: <1466083102-6241-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1466083102-6241-1-git-send-email-s.hauer@pengutronix.de>
References: <1466083102-6241-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] ARM: start: drop unnecessary variable
To: Barebox List <barebox@lists.infradead.org>

No need anymore to store arm_head_bottom globally as it's only used
in barebox_non_pbl_start(). Also rename the variable to malloc_end
which is more meaningful.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 38f69d5..f25e592 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -34,7 +34,6 @@
 #include "mmu-early.h"
 
 unsigned long arm_stack_top;
-static unsigned long arm_head_bottom;
 static unsigned long arm_barebox_size;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
@@ -162,7 +161,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	arm_stack_top = endmem;
 	arm_barebox_size = barebox_size;
-	arm_head_bottom = arm_mem_barebox_image(membase, endmem,
+	malloc_end = arm_mem_barebox_image(membase, endmem,
 						arm_barebox_size);
 
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
@@ -201,12 +200,10 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 			barebox_boarddata = memcpy((void *)mem, boarddata,
 						   totalsize);
 			barebox_boarddata_size = totalsize;
-			arm_head_bottom = mem;
+			malloc_end = mem;
 		}
 	}
 
-	malloc_end = arm_head_bottom;
-
 	/*
 	 * Maximum malloc space is the Kconfig value if given
 	 * or 1GB.
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
