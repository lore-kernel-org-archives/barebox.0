Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iD-Bd
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:05 +0100
Message-Id: <1362826391-16215-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] blackfin: initialize malloc pool before start_barebox()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/cpu-bf561/start.S | 4 ++--
 arch/blackfin/lib/board.c       | 6 ++----
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/blackfin/cpu-bf561/start.S b/arch/blackfin/cpu-bf561/start.S
index 2664588..96da6b5 100644
--- a/arch/blackfin/cpu-bf561/start.S
+++ b/arch/blackfin/cpu-bf561/start.S
@@ -329,8 +329,8 @@ _clear_bss_skip:
         [p0] = r0;
 #endif
 
-	p0.l = _start_barebox;
-	p0.h = _start_barebox;
+	p0.l = _blackfin_start_barebox;
+	p0.h = _blackfin_start_barebox;
 	jump (p0);
 
 reset_start:
diff --git a/arch/blackfin/lib/board.c b/arch/blackfin/lib/board.c
index e335d6c..88ad618 100644
--- a/arch/blackfin/lib/board.c
+++ b/arch/blackfin/lib/board.c
@@ -31,15 +31,13 @@
 #include <asm/cpu.h>
 #include <asm-generic/memory_layout.h>
 
-int blackfin_mem_malloc_init(void)
+void __noreturn blackfin_start_barebox(void)
 {
 	mem_malloc_init((void *)(MALLOC_BASE),
 			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
-	return 0;
+	start_barebox();
 }
 
-core_initcall(blackfin_mem_malloc_init);
-
 void arch_shutdown(void)
 {
 	icache_disable();
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
