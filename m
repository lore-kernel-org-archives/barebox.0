Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKB1h-0001iy-2l
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 16:45:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 18:45:05 +0200
Message-Id: <1349455505-31731-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: simplify start.c
To: barebox@lists.infradead.org

start() for the PBL case is a duplicate of board_init_lowlevel_return().
Instead of duplicating it just call it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c |   22 ++++------------------
 1 file changed, 4 insertions(+), 18 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 7e0a29a..7e72eec 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -24,32 +24,19 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <asm/cache.h>
+#include <memory.h>
 
-#ifdef CONFIG_PBL_IMAGE
 /*
  * First function in the uncompressed image. We get here from
  * the pbl.
  */
 void __naked __section(.text_entry) start(void)
 {
-	u32 r;
-
-	/* Setup the stack */
-	r = STACK_BASE + STACK_SIZE - 16;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
-
-	setup_c();
-
-	start_barebox();
-}
+#ifdef CONFIG_PBL_IMAGE
+	board_init_lowlevel_return();
 #else
-
-/*
- * First function in the image without pbl support
- */
-void __naked __section(.text_entry) start(void)
-{
 	barebox_arm_head();
+#endif
 }
 
 /*
@@ -80,4 +67,3 @@ void __naked board_init_lowlevel_return(void)
 
 	start_barebox();
 }
-#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
