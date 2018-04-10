Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f62xX-0008AS-W5
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:45:57 +0000
Received: by mail-pf0-x241.google.com with SMTP id y66so15430pfi.7
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:45:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:45:36 -0700
Message-Id: <20180410234536.4914-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: start: Avoid calling arm_mem_barebox_image() twice
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Avoid calling arm_mem_barebox_image() twice by making barebox_base
function-wide in scope

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/start.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 68fff892e..64bd942ad 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -144,13 +144,11 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
 	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
-
-	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
-		unsigned long barebox_base = arm_mem_barebox_image(membase,
-								   endmem,
-								   barebox_size);
+	unsigned long barebox_base = arm_mem_barebox_image(membase,
+							   endmem,
+							   barebox_size);
+	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		relocate_to_adr(barebox_base);
-	}
 
 	setup_c();
 
@@ -160,8 +158,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	arm_stack_top = arm_mem_stack_top(membase, endmem);
 	arm_barebox_size = barebox_size;
-	malloc_end = arm_mem_barebox_image(membase, endmem,
-						arm_barebox_size);
+	malloc_end = barebox_base;
 
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 		unsigned long ttb = arm_mem_ttb(membase, endmem);
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
