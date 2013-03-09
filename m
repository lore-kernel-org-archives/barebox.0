Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iE-Bw
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:06 +0100
Message-Id: <1362826391-16215-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] x86: initialize malloc pool before start_barebox()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/x86/boot/main_entry.c | 4 ++--
 arch/x86/lib/memory.c      | 7 +++----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/x86/boot/main_entry.c b/arch/x86/boot/main_entry.c
index f7f4710..afb7e32 100644
--- a/arch/x86/boot/main_entry.c
+++ b/arch/x86/boot/main_entry.c
@@ -22,7 +22,7 @@
 #include <string.h>
 #include <asm/sections.h>
 
-extern void start_barebox(void);
+extern void x86_start_barebox(void);
 
 /**
  * Called plainly from assembler that switches from real to flat mode
@@ -33,5 +33,5 @@ void uboot_entry(void)
 {
 	/* clear the BSS first */
 	memset(__bss_start, 0x00, __bss_stop - __bss_start);
-	start_barebox();
+	x86_start_barebox();
 }
diff --git a/arch/x86/lib/memory.c b/arch/x86/lib/memory.c
index 43b6931..de0e5d9 100644
--- a/arch/x86/lib/memory.c
+++ b/arch/x86/lib/memory.c
@@ -21,6 +21,7 @@
  * @brief Memory management
  */
 
+#include <common.h>
 #include <init.h>
 #include <stdio.h>
 #include <memory.h>
@@ -36,7 +37,7 @@
  * - memory above 0x100000
  */
 
-static int x86_mem_malloc_init(void)
+int x86_start_barebox(void)
 {
 #ifdef CONFIG_MEMORY_LAYOUT_DEFAULT
 	unsigned long memory_size;
@@ -57,7 +58,5 @@ static int x86_mem_malloc_init(void)
 	mem_malloc_init((void *)MALLOC_BASE,
 			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
 #endif
-	return 0;
+	start_barebox();
 }
-
-core_initcall(x86_mem_malloc_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
