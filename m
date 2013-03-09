Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iB-9B
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:03 +0100
Message-Id: <1362826391-16215-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] nios: initialize malloc pool before start_barebox()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/nios2/cpu/start.S | 4 ++--
 arch/nios2/lib/board.c | 8 ++------
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/nios2/cpu/start.S b/arch/nios2/cpu/start.S
index 42520d7..41f65ff 100644
--- a/arch/nios2/cpu/start.S
+++ b/arch/nios2/cpu/start.S
@@ -150,8 +150,8 @@ _reloc:
 	/*
 	 * Call board_init -- never returns
 	 */
-	movhi   r4, %hi(start_barebox@h)
-	ori     r4, r4, %lo(start_barebox@h)
+	movhi   r4, %hi(nios_start_barebox@h)
+	ori     r4, r4, %lo(nios_start_barebox@h)
 	callr   r4
 
 	/* NEVER RETURNS -- but branch to the _start just
diff --git a/arch/nios2/lib/board.c b/arch/nios2/lib/board.c
index 624a4f8..7c4dc76 100644
--- a/arch/nios2/lib/board.c
+++ b/arch/nios2/lib/board.c
@@ -18,23 +18,19 @@
 
 #include <common.h>
 #include <malloc.h>
-#include <init.h>
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
 #include <cache.h>
 
-int altera_mem_malloc_init(void)
+void __noreturn nios_start_barebox(void)
 {
 
 	mem_malloc_init((void *)(NIOS_SOPC_TEXT_BASE - MALLOC_SIZE),
 			(void *)(NIOS_SOPC_TEXT_BASE - 1));
 
-	return 0;
+	start_barebox();
 }
 
-core_initcall(altera_mem_malloc_init);
-
 void arch_shutdown(void)
 {
 }
-
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
