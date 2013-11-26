Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000ca-8C
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:51 +0100
Message-Id: <1385484367-15366-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/17] ARM: Make multi images startup process simpler
To: barebox@lists.infradead.org

The multi image startup process used to have three binaries involved:
- The lowlevel board code to initialize SDRAM
- the uncompressor
- the regular (compressed) barebox binary
Drop the uncompressor and put the uncompress code into the lowlevel
board code binary. This makes the startup process easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile       |  2 +-
 arch/arm/cpu/start-images.c | 49 ---------------------------------------------
 arch/arm/cpu/uncompress.c   |  9 +++++----
 images/Makefile             | 12 +++--------
 4 files changed, 9 insertions(+), 63 deletions(-)
 delete mode 100644 arch/arm/cpu/start-images.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index aba201b..c29d030 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -23,7 +23,7 @@ obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
 
 pbl-y += setupc.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
-pbl-$(CONFIG_PBL_MULTI_IMAGES) += start-images.o uncompress.o
+pbl-$(CONFIG_PBL_MULTI_IMAGES) += uncompress.o
 
 obj-y += common.o cache.o
 pbl-y += common.o cache.o
diff --git a/arch/arm/cpu/start-images.c b/arch/arm/cpu/start-images.c
deleted file mode 100644
index d48d245..0000000
--- a/arch/arm/cpu/start-images.c
+++ /dev/null
@@ -1,49 +0,0 @@
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
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <common.h>
-#include <init.h>
-#include <sizes.h>
-#include <pbl.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/sections.h>
-#include <asm/pgtable.h>
-#include <debug_ll.h>
-
-void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
-		uint32_t boarddata)
-{
-	unsigned long barebox_base;
-	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
-
-	barebox_base = ld_var(__image_end) - get_runtime_offset() + 4;
-
-	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
-		barebox = (void *)(barebox_base + 1);
-	else
-		barebox = (void *)barebox_base;
-
-	barebox(membase, memsize, boarddata);
-}
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b0819c7..6d3302a 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -43,7 +43,7 @@ static int __attribute__((__used__))
 	__attribute__((__section__(".image_end")))
 	__image_end_dummy = 0xdeadbeef;
 
-static void noinline uncompress(uint32_t membase,
+static void __noreturn noinline uncompress_start_payload(uint32_t membase,
 		uint32_t memsize, uint32_t boarddata)
 {
 	uint32_t offset;
@@ -99,12 +99,13 @@ static void noinline uncompress(uint32_t membase,
 }
 
 /*
- * Generic second stage pbl uncompressor entry
+ * For the multi images startup process board code jumps here. We will uncompress
+ * the attached barebox image and start it.
  */
-ENTRY_FUNCTION(start_uncompress)(uint32_t membase, uint32_t memsize,
+void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
 {
 	arm_setup_stack(membase + memsize - 16);
 
-	uncompress(membase, memsize, boarddata);
+	uncompress_start_payload(membase, memsize, boarddata);
 }
diff --git a/images/Makefile b/images/Makefile
index ec033ab..b080a8c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -69,10 +69,10 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 
 quiet_cmd_pblx ?= PBLX    $@
       cmd_pblx ?= cat $(obj)/$(patsubst %.pblx,%.pblb,$(2)) > $@; \
-		  $(call size_append, $(obj)/barebox.x) >> $@; \
-		  cat $(obj)/barebox.x >> $@
+		  $(call size_append, $(obj)/barebox.z) >> $@; \
+		  cat $(obj)/barebox.z >> $@
 
-$(obj)/%.pblx: $(obj)/%.pblb $(obj)/barebox.x FORCE
+$(obj)/%.pblx: $(obj)/%.pblb $(obj)/barebox.z FORCE
 	$(call if_changed,pblx,$(@F))
 
 $(obj)/%.s: $(obj)/% FORCE
@@ -93,12 +93,6 @@ quiet_cmd_selfextract = COMP    $@
 			$(call size_append, $<) >> $@; \
 			cat $< >> $@
 
-pblx-y += start_uncompress
-# barebox.x - self extracting barebox binary
-# ----------------------------------------------------------------
-$(obj)/barebox.x: $(obj)/barebox.z $(obj)/start_uncompress.pblb FORCE
-	$(call if_changed,selfextract)
-
 # %.img - create a copy from another file
 # ----------------------------------------------------------------
 .SECONDEXPANSION:
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
