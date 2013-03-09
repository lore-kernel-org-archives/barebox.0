Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iC-9F
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:04 +0100
Message-Id: <1362826391-16215-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] openrisc: initialize malloc pool before start_barebox()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/cpu/start.S | 2 +-
 arch/openrisc/lib/board.c | 7 ++-----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/openrisc/cpu/start.S b/arch/openrisc/cpu/start.S
index 9109cce..269abc0 100644
--- a/arch/openrisc/cpu/start.S
+++ b/arch/openrisc/cpu/start.S
@@ -245,7 +245,7 @@ _start:
 	l.andi	r30, r0, 0
 	l.andi	r31, r0, 0
 
-	l.j	start_barebox
+	l.j	openrisc_start_barebox
 	 l.nop
 
 	.size	_start, .-_start
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
index f62fbaf..98033b4 100644
--- a/arch/openrisc/lib/board.c
+++ b/arch/openrisc/lib/board.c
@@ -22,17 +22,14 @@
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
 
-int openrisc_mem_malloc_init(void)
+void __noreturn openrisc_start_barebox(void)
 {
-
 	mem_malloc_init((void *)(OPENRISC_SOPC_TEXT_BASE - MALLOC_SIZE),
 			(void *)(OPENRISC_SOPC_TEXT_BASE - 1));
 
-	return 0;
+	start_barebox();
 }
 
-core_initcall(openrisc_mem_malloc_init);
-
 void arch_shutdown(void)
 {
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
