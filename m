Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lPy-0006w7-L9
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:27:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2019 09:27:19 +0200
Message-Id: <20190916072721.12392-5-s.hauer@pengutronix.de>
In-Reply-To: <20190916072721.12392-1-s.hauer@pengutronix.de>
References: <20190916072721.12392-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: Merge single pbl with multi pbl
To: Barebox List <barebox@lists.infradead.org>

So far we have two different implementations for PBL: One for a single
PBL and one for multiple images. This patch implements the single PBL
case as a special case of the multi PBL case. With this the single PBL
becomes a multi PBL image with the entry point start_pbl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                  |  2 +-
 arch/arm/cpu/Makefile     |  3 +-
 arch/arm/cpu/entry.c      |  6 +--
 arch/arm/cpu/entry.h      | 10 ++--
 arch/arm/cpu/start-pbl.c  | 96 ---------------------------------------
 arch/arm/cpu/uncompress.c | 17 ++++++-
 images/Makefile           |  7 +++
 7 files changed, 29 insertions(+), 112 deletions(-)
 delete mode 100644 arch/arm/cpu/start-pbl.c

diff --git a/Makefile b/Makefile
index aa50aa73ed..71f3ce5775 100644
--- a/Makefile
+++ b/Makefile
@@ -519,7 +519,7 @@ images: barebox.bin FORCE
 images/%.s: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
-ifdef CONFIG_PBL_MULTI_IMAGES
+ifdef CONFIG_PBL_IMAGE
 all: barebox.bin images
 else
 all: barebox-flash-image barebox-flash-images
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 97e4eb52e3..e6a1a321dc 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -48,7 +48,6 @@ obj-pbl-$(CONFIG_CPU_64v8) += cache-armv8.o
 AFLAGS_pbl-cache-armv8.o       :=-Wa,-march=armv8-a
 
 pbl-y += entry.o
-pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
-pbl-$(CONFIG_PBL_MULTI_IMAGES) += uncompress.o
+pbl-y += uncompress.o
 
 obj-pbl-y += common.o sections.o
diff --git a/arch/arm/cpu/entry.c b/arch/arm/cpu/entry.c
index 30df95f078..8b17179437 100644
--- a/arch/arm/cpu/entry.c
+++ b/arch/arm/cpu/entry.c
@@ -30,10 +30,8 @@ void NAKED __noreturn barebox_arm_entry(unsigned long membase,
 	arm_setup_stack(arm_mem_stack_top(membase, membase + memsize));
 	arm_early_mmu_cache_invalidate();
 
-	if (IS_ENABLED(CONFIG_PBL_MULTI_IMAGES))
-		barebox_multi_pbl_start(membase, memsize, boarddata);
-	else if (IS_ENABLED(CONFIG_PBL_SINGLE_IMAGE))
-		barebox_single_pbl_start(membase, memsize, boarddata);
+	if (IS_ENABLED(CONFIG_PBL_IMAGE))
+		barebox_pbl_start(membase, memsize, boarddata);
 	else
 		barebox_non_pbl_start(membase, memsize, boarddata);
 }
diff --git a/arch/arm/cpu/entry.h b/arch/arm/cpu/entry.h
index f0163a34f7..18110eadf3 100644
--- a/arch/arm/cpu/entry.h
+++ b/arch/arm/cpu/entry.h
@@ -7,12 +7,8 @@ void __noreturn barebox_non_pbl_start(unsigned long membase,
 				      unsigned long memsize,
 				      void *boarddata);
 
-void __noreturn barebox_multi_pbl_start(unsigned long membase,
-					unsigned long memsize,
-					void *boarddata);
-
-void __noreturn barebox_single_pbl_start(unsigned long membase,
-					 unsigned long memsize,
-					 void *boarddata);
+void __noreturn barebox_pbl_start(unsigned long membase,
+				  unsigned long memsize,
+				  void *boarddata);
 
 #endif
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
deleted file mode 100644
index 0006f40d55..0000000000
--- a/arch/arm/cpu/start-pbl.c
+++ /dev/null
@@ -1,96 +0,0 @@
-/*
- * start-pbl.c
- *
- * Copyright (c) 2010-2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-#include <linux/sizes.h>
-#include <pbl.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/sections.h>
-#include <asm/secure.h>
-#include <asm/cache.h>
-#include <asm/mmu.h>
-#include <asm/unaligned.h>
-
-#include "entry.h"
-
-unsigned long free_mem_ptr;
-unsigned long free_mem_end_ptr;
-
-void pbl_start(void);
-
-/*
- * First instructions in the pbl image
- */
-void __naked __section(.text_head_entry) pbl_start(void)
-{
-	barebox_arm_head();
-}
-
-extern void *input_data;
-extern void *input_data_end;
-
-__noreturn void barebox_single_pbl_start(unsigned long membase,
-		unsigned long memsize, void *boarddata)
-{
-	unsigned long pg_start, pg_end, pg_len, uncompressed_len;
-	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
-	unsigned long endmem = membase + memsize;
-	unsigned long barebox_base;
-
-	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
-		relocate_to_current_adr();
-
-	pg_start = (unsigned long)&input_data + global_variable_offset();
-	pg_end = (unsigned long)&input_data_end + global_variable_offset();
-	pg_len = pg_end - pg_start;
-	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
-
-	if (IS_ENABLED(CONFIG_RELOCATABLE))
-		barebox_base = arm_mem_barebox_image(membase, endmem, uncompressed_len + MAX_BSS_SIZE);
-	else
-		barebox_base = TEXT_BASE;
-
-	setup_c();
-
-	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
-		unsigned long ttb = arm_mem_ttb(membase, endmem);
-		mmu_early_enable(membase, memsize, ttb);
-	}
-
-	free_mem_ptr = arm_mem_early_malloc(membase, endmem);
-	free_mem_end_ptr = arm_mem_early_malloc_end(membase, endmem);
-
-	pbl_barebox_uncompress((void*)barebox_base, (void *)pg_start, pg_len);
-
-	sync_caches_for_execution();
-
-	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-		barebox = (void *)(barebox_base + 1);
-	else
-		barebox = (void *)barebox_base;
-
-	if (IS_ENABLED(CONFIG_CPU_V7) && boot_cpu_mode() == HYP_MODE)
-		armv7_switch_to_hyp();
-
-	barebox(membase, memsize, boarddata);
-}
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 4f16af22f8..88d073ebdd 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -36,14 +36,27 @@
 
 #include "entry.h"
 
+#ifndef CONFIG_HAVE_PBL_MULTI_IMAGES
+
+void start_pbl(void);
+
+/*
+ * First instructions in the pbl image
+ */
+void __naked __section(.text_head_entry_start_single_pbl) start_pbl(void)
+{
+	barebox_arm_head();
+}
+#endif
+
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
-void __noreturn barebox_multi_pbl_start(unsigned long membase,
-		unsigned long memsize, void *boarddata)
+void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
+				  void *boarddata)
 {
 	uint32_t pg_len, uncompressed_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
diff --git a/images/Makefile b/images/Makefile
index dd39f44afb..ceb00618d2 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -164,10 +164,17 @@ include $(srctree)/images/Makefile.at91
 include $(srctree)/images/Makefile.zynqmp
 include $(srctree)/images/Makefile.layerscape
 
+
 pblb-$(CONFIG_BOARD_ARM_GENERIC_DT) += start_dt_2nd
 FILE_barebox-dt-2nd.img = start_dt_2nd.pblb
 image-$(CONFIG_BOARD_ARM_GENERIC_DT) += barebox-dt-2nd.img
 
+ifdef CONFIG_ARM
+pblb-$(CONFIG_PBL_SINGLE_IMAGE) += start_pbl
+FILE_barebox.img = start_pbl.pblb
+image-$(CONFIG_PBL_SINGLE_IMAGE) += barebox.img
+endif
+
 ifneq ($(pblx-y)$(pblx-),)
   $(error pblx- has been removed. Please use pblb- instead.)
 endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
