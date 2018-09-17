Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1nym-0007eP-5g
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 07:29:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Sep 2018 09:29:42 +0200
Message-Id: <20180917072942.12445-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Multi PBL: Fix image calculation for certain toolchains
To: Barebox List <barebox@lists.infradead.org>
Cc: perachet7@gmail.com

The current way to calculate the compressed image position works
with the OSELAS toolchains, but not with the Debian/Ubuntu toolchains.
For these toolchains &image_end_marker already returns the correct
address, adding global_variable_offset() to it is wrong.

The solution seems to be to put the image_end_marker into a different
object file so that the compiler cannot play any tricks to resolve
the address internally in the object file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/sections.c         | 2 ++
 arch/arm/cpu/uncompress.c       | 5 +----
 arch/arm/include/asm/sections.h | 2 ++
 arch/arm/lib/pbl.lds.S          | 2 +-
 4 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/sections.c b/arch/arm/cpu/sections.c
index 5874da2b82..ab08ebf42e 100644
--- a/arch/arm/cpu/sections.c
+++ b/arch/arm/cpu/sections.c
@@ -1,4 +1,5 @@
 #include <asm/sections.h>
+#include <linux/types.h>
 
 char __rel_dyn_start[0] __attribute__((section(".__rel_dyn_start")));
 char __rel_dyn_end[0] __attribute__((section(".__rel_dyn_end")));
@@ -9,3 +10,4 @@ char __bss_start[0] __attribute__((section(".__bss_start")));
 char __bss_stop[0] __attribute__((section(".__bss_stop")));
 char __image_start[0] __attribute__((section(".__image_start")));
 char __image_end[0] __attribute__((section(".__image_end")));
+uint32_t __image_end_marker[1] __attribute__((section(".__image_end_marker"))) = { 0xdeadbeef };
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b07087e4cf..43b49b4212 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -36,9 +36,6 @@
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-static int __attribute__((__section__(".image_end")))
-	image_end_marker = 0xdeadbeef;
-
 void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
@@ -50,7 +47,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	void *pg_start;
 	unsigned long pc = get_pc();
 
-	image_end = (void *)&image_end_marker + global_variable_offset();
+	image_end = (void *)__image_end_marker + global_variable_offset();
 
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
 		/*
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 6933c7032d..b4659256cc 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -3,6 +3,7 @@
 
 #ifndef __ASSEMBLY__
 #include <asm-generic/sections.h>
+#include <linux/types.h>
 
 extern char __rel_dyn_start[];
 extern char __rel_dyn_end[];
@@ -10,6 +11,7 @@ extern char __dynsym_start[];
 extern char __dynsym_end[];
 extern char __exceptions_start[];
 extern char __exceptions_stop[];
+extern uint32_t __image_end_marker[];
 
 #endif
 
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 9df1800543..ddc65bbf45 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -92,7 +92,7 @@ SECTIONS
 	__piggydata_end = .;
 
 	. = ALIGN(4);
-	.image_end : { *(.image_end) }
+	.image_end : { *(.__image_end_marker) }
 	__image_end = .;
 
 	_barebox_image_size = __image_end - BASE;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
