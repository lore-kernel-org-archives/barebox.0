Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk5ST-0002II-Ad
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 08:22:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 10:21:53 +0200
Message-Id: <1473841313-4204-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473841313-4204-1-git-send-email-s.hauer@pengutronix.de>
References: <1473841313-4204-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: Fix calling of arm_mem_barebox_image()
To: Barebox List <barebox@lists.infradead.org>

arm_mem_barebox_image() is used to pick a suitable place where to
put the final image to. This is called from both the PBL uncompression
code and also from the final image. To make it work properly it is
crucial that it's called with the same arguments both times. Currently
it is called with the wrong image size from the PBL uncompression code.
The size passed to arm_mem_barebox_image() has to be the size of the
whole uncompressed image including the BSS segment size. The PBL code
calls it with the compressed image size instead and without the BSS
segment. This patch fixes this by reading the uncompressed image size
from the compressed binary (the uncompressed size is appended to the
end of the compressed binary by our compression wrappers). The size
of the BSS segment is unknown though by the PBL uncompression code,
so we introduce a maximum BSS size which is used instead.

The code before this patch worked by accident because the base address
of the final image was aligned down to a 1MiB boundary. The alignment
was sufficient already to make enough space. This breaks though when
the uncompressed image including BSS becomes bigger than 1MiB while
the compressed image is smaller.

Fixes: 65071bd0: arm: Clarify memory layout calculation

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c           |  6 ++++--
 arch/arm/cpu/start.c               |  3 +--
 arch/arm/cpu/uncompress.c          | 10 ++++++----
 arch/arm/include/asm/barebox-arm.h |  9 ++++++++-
 4 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index f723edc..5f1469b 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -28,6 +28,7 @@
 #include <asm/sections.h>
 #include <asm/pgtable.h>
 #include <asm/cache.h>
+#include <asm/unaligned.h>
 
 #include "mmu-early.h"
 
@@ -49,7 +50,7 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
 	uint32_t offset;
-	uint32_t pg_start, pg_end, pg_len;
+	uint32_t pg_start, pg_end, pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
@@ -63,9 +64,10 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	pg_start = (uint32_t)&input_data - offset;
 	pg_end = (uint32_t)&input_data_end - offset;
 	pg_len = pg_end - pg_start;
+	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
-		barebox_base = arm_mem_barebox_image(membase, endmem, pg_len);
+		barebox_base = arm_mem_barebox_image(membase, endmem, uncompressed_len + MAX_BSS_SIZE);
 	else
 		barebox_base = TEXT_BASE;
 
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f25e592..0120117 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -143,8 +143,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 {
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
-	unsigned long barebox_size = barebox_image_size +
-		((unsigned long)&__bss_stop - (unsigned long)&__bss_start);
+	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
 		unsigned long barebox_base = arm_mem_barebox_image(membase,
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b8e2e9f..eeb5a65 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -29,6 +29,7 @@
 #include <asm/sections.h>
 #include <asm/pgtable.h>
 #include <asm/cache.h>
+#include <asm/unaligned.h>
 
 #include <debug_ll.h>
 
@@ -44,7 +45,7 @@ static int __attribute__((__used__))
 void __noreturn barebox_multi_pbl_start(unsigned long membase,
 		unsigned long memsize, void *boarddata)
 {
-	uint32_t pg_len;
+	uint32_t pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
@@ -72,10 +73,11 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	 */
 	pg_start = image_end + 1;
 	pg_len = *(image_end);
+	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		barebox_base = arm_mem_barebox_image(membase, endmem,
-						     pg_len);
+						     uncompressed_len + MAX_BSS_SIZE);
 	else
 		barebox_base = TEXT_BASE;
 
@@ -92,8 +94,8 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	free_mem_ptr = arm_mem_early_malloc(membase, endmem);
 	free_mem_end_ptr = arm_mem_early_malloc_end(membase, endmem);
 
-	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx\n",
-			pg_start, pg_len, barebox_base);
+	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
+			pg_start, pg_len, barebox_base, uncompressed_len);
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 0acdfa3..061296a 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -164,6 +164,13 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 		static void __naked noinline __##name			\
 			(uint32_t arg0, uint32_t arg1, uint32_t arg2)
 
-
+/*
+ * When using compressed images in conjunction with relocatable images
+ * the PBL code must pick a suitable place where to uncompress the barebox
+ * image. For doing this the PBL code must know the size of the final
+ * image including the BSS segment. The BSS size is unknown to the PBL
+ * code, so define a maximum BSS size here.
+ */
+#define MAX_BSS_SIZE SZ_1M
 
 #endif	/* _BAREBOX_ARM_H_ */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
