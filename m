Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkQoZ-00080j-Ek
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 07:10:35 +0000
Date: Thu, 15 Sep 2016 09:10:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160915071008.tbpw5d222h2chd5w@pengutronix.de>
References: <1473841313-4204-1-git-send-email-s.hauer@pengutronix.de>
 <1473841313-4204-2-git-send-email-s.hauer@pengutronix.de>
 <1473877833.4359.15.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473877833.4359.15.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/2] ARM: Fix calling of arm_mem_barebox_image()
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Sep 14, 2016 at 06:27:04PM +0000, Trent Piepho wrote:
> On Wed, 2016-09-14 at 10:21 +0200, Sascha Hauer wrote:
> > arm_mem_barebox_image() is used to pick a suitable place where to
> > put the final image to. This is called from both the PBL uncompression
> > code and also from the final image. To make it work properly it is
> > crucial that it's called with the same arguments both times. Currently
> 
> This code has changed since I was working with it, but wouldn't
> arm_mem_barebox_image() returning a different value from when the PBL
> code calls it versus barebox_non_pbl_start() just result in an
> unnecessary relocation of the uncompressed barebox from the PBL's choice
> to the main barebox choice?

That may work when both regions do not overlap.

> 
> 
> > it is called with the wrong image size from the PBL uncompression code.
> > The size passed to arm_mem_barebox_image() has to be the size of the
> > whole uncompressed image including the BSS segment size. The PBL code
> > calls it with the compressed image size instead and without the BSS
> > segment. This patch fixes this by reading the uncompressed image size
> > from the compressed binary (the uncompressed size is appended to the
> > end of the compressed binary by our compression wrappers). The size
> > of the BSS segment is unknown though by the PBL uncompression code,
> > so we introduce a maximum BSS size which is used instead.
> 
> Could the size including BSS be appended?  Seems like putting:
> size -A barebox | awk '$1==".bss"{print $2}'
> in the size_append function would do that pretty simply.

I already tried. Somehow I didn't like the result that much, see the
patch below. The patch also still misses the single pbl handling.

Sascha

--------------------8<--------------------

From ea6cf2609ee1285cf415f28ded2317f31ddec7b2 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Jul 2016 12:45:42 +0200
Subject: [PATCH] wip

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c         | 19 +++++++++----------
 arch/arm/cpu/uncompress.c    | 11 +++++++++--
 arch/arm/lib32/barebox.lds.S |  1 +
 images/Makefile              | 13 +++++++++++++
 4 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f25e592..1ee669b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -34,6 +34,7 @@
 #include "mmu-early.h"
 
 unsigned long arm_stack_top;
+static unsigned long arm_barebox_base;
 static unsigned long arm_barebox_size;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
@@ -116,7 +117,7 @@ static inline unsigned long arm_mem_boarddata(unsigned long membase,
 {
 	unsigned long mem;
 
-	mem = arm_mem_barebox_image(membase, endmem, barebox_image_size);
+	mem = arm_barebox_base;
 	mem -= ALIGN(size, 64);
 
 	return mem;
@@ -143,15 +144,13 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 {
 	unsigned long endmem = membase + memsize;
 	unsigned long malloc_start, malloc_end;
-	unsigned long barebox_size = barebox_image_size +
-		((unsigned long)&__bss_stop - (unsigned long)&__bss_start);
+	unsigned long barebox_size = ld_var(__bss_stop) - ld_var(_text);
+	unsigned long barebox_base;
 
-	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
-		unsigned long barebox_base = arm_mem_barebox_image(membase,
-								   endmem,
-								   barebox_size);
+	barebox_base = arm_mem_barebox_image(membase, endmem, barebox_size);
+
+	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		relocate_to_adr(barebox_base);
-	}
 
 	setup_c();
 
@@ -161,8 +160,8 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	arm_stack_top = endmem;
 	arm_barebox_size = barebox_size;
-	malloc_end = arm_mem_barebox_image(membase, endmem,
-						arm_barebox_size);
+	arm_barebox_base = barebox_base;
+	malloc_end = barebox_base;
 
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 		unsigned long ttb = arm_mem_ttb(membase, endmem);
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b8e2e9f..0c54bc5 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -29,6 +29,7 @@
 #include <asm/sections.h>
 #include <asm/pgtable.h>
 #include <asm/cache.h>
+#include <asm/unaligned.h>
 
 #include <debug_ll.h>
 
@@ -49,6 +50,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
 	uint32_t *image_end;
+	uint32_t full_size;
 	void *pg_start;
 	unsigned long pc = get_pc();
 
@@ -69,19 +71,24 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	/*
 	 * image_end is the first location after the executable. It contains
 	 * the size of the appended compressed binary followed by the binary.
+	 * The last 32bit word of the compressed binary contains the full size
+	 * of the uncompressed barebox image including bss.
 	 */
 	pg_start = image_end + 1;
-	pg_len = *(image_end);
+	pg_len = *(image_end) - sizeof(uint32_t);
+	full_size = get_unaligned_le32((void *)(pg_start + pg_len));
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		barebox_base = arm_mem_barebox_image(membase, endmem,
-						     pg_len);
+						     full_size);
 	else
 		barebox_base = TEXT_BASE;
 
 	setup_c();
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
+	pr_debug("barebox image has full size 0x%08x, putting image to 0x%08lx\n",
+		 full_size, barebox_base);
 
 	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
 		unsigned long ttb = arm_mem_ttb(membase, endmem);
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 6dc8bd2..170b3b1 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -123,4 +123,5 @@ SECTIONS
 	__bss_stop = .;
 	_end = .;
 	_barebox_image_size = __bss_start - TEXT_BASE;
+	_barebox_full_size = __bss_stop - TEXT_BASE;
 }
diff --git a/images/Makefile b/images/Makefile
index da9cc8d..98812ed 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -67,6 +67,18 @@ $(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) FORCE
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
 
+barebox_full_size = printf $(shell							\
+		    hex_size=$$($(NM) $1 | awk '$$3 == "_barebox_full_size" { print $$1 }');	\
+											\
+echo $$hex_size |									\
+	sed 's/\(..\)/\1 /g' | {							\
+		read ch0 ch1 ch2 ch3;							\
+		for ch in $$ch3 $$ch2 $$ch1 $$ch0; do					\
+			printf '%s%03o' '\\' $$((0x$$ch)); 				\
+		done;									\
+	}										\
+)
+
 quiet_cmd_pblx ?= PBLX    $@
       cmd_pblx ?= cat $(obj)/$(patsubst %.pblx,%.pblb,$(2)) > $@; \
 		  $(call size_append, $(obj)/barebox.z) >> $@; \
@@ -91,6 +103,7 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = shipped
 # ----------------------------------------------------------------
 $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
 	$(call if_changed,$(suffix_y))
+	$(call barebox_full_size, $(obj)/../barebox) >> $@
 
 # %.img - create a copy from another file
 # ----------------------------------------------------------------
-- 
2.8.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
