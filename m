Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamM-0002Cd-0E
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:04:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:10 +0200
Message-Id: <1350507817-7819-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/28] ARM: Make malloc available in all initcalls
To: barebox@lists.infradead.org

This moves mem_malloc_init from an initcall to board_init_lowlevel_return.
This has the advantage that malloc is now available for all initcalls (though
only on ARM currently).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c  |    3 +++
 arch/arm/lib/Makefile |    1 -
 arch/arm/lib/arm.c    |   14 --------------
 3 files changed, 3 insertions(+), 15 deletions(-)
 delete mode 100644 arch/arm/lib/arm.c

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 793445a..d47a9e9 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -61,5 +61,8 @@ void __naked board_init_lowlevel_return(void)
 
 	setup_c();
 
+	mem_malloc_init((void *)MALLOC_BASE,
+			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
+
 	start_barebox();
 }
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 2e624cd..3ea695c 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -4,7 +4,6 @@ obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
 obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
-obj-y	+= arm.o
 obj-y	+= io.o
 obj-y	+= io-readsb.o
 obj-y	+= io-readsw-armv4.o
diff --git a/arch/arm/lib/arm.c b/arch/arm/lib/arm.c
deleted file mode 100644
index 80b62e9..0000000
--- a/arch/arm/lib/arm.c
+++ /dev/null
@@ -1,14 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <memory.h>
-#include <asm/barebox-arm.h>
-#include <asm-generic/memory_layout.h>
-
-static int arm_mem_malloc_init(void)
-{
-	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
-	return 0;
-}
-
-core_initcall(arm_mem_malloc_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
