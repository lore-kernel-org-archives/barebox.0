Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmrzG-0006rj-Ed
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 00:35:40 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 22 Sep 2016 00:35:14 +0000
Message-ID: <1474504514.22305.66.camel@rtred1test09.kymeta.local>
References: <1473841313-4204-1-git-send-email-s.hauer@pengutronix.de>
 <1473841313-4204-2-git-send-email-s.hauer@pengutronix.de>
 <1473877833.4359.15.camel@rtred1test09.kymeta.local>
 <20160915071008.tbpw5d222h2chd5w@pengutronix.de>
In-Reply-To: <20160915071008.tbpw5d222h2chd5w@pengutronix.de>
Content-Language: en-US
Content-ID: <5D6039CD6603FA47943845605A0C2208@kymetacorp.com>
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
Subject: Re: [PATCH 2/2] ARM: Fix calling of arm_mem_barebox_image()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, 2016-09-15 at 09:10 +0200, Sascha Hauer wrote:
> On Wed, Sep 14, 2016 at 06:27:04PM +0000, Trent Piepho wrote:
> > On Wed, 2016-09-14 at 10:21 +0200, Sascha Hauer wrote:
> > > arm_mem_barebox_image() is used to pick a suitable place where to
> > > put the final image to. This is called from both the PBL uncompression
> > > code and also from the final image. To make it work properly it is
> > > crucial that it's called with the same arguments both times. Currently
> > 
> > This code has changed since I was working with it, but wouldn't
> > arm_mem_barebox_image() returning a different value from when the PBL
> > code calls it versus barebox_non_pbl_start() just result in an
> > unnecessary relocation of the uncompressed barebox from the PBL's choice
> > to the main barebox choice?
> 
> That may work when both regions do not overlap.

Ah, good point.  I suppose barebox could check that it doesn't try to
relocate on top of itself while running.


> I already tried. Somehow I didn't like the result that much, see the
> patch below. The patch also still misses the single pbl handling.

Here's what I was thinking.  multi and single pbl should work, getting
the size (data+bss) from the compressed data's size word.  Non-pbl and
PBL main barebox know the data via the linker symbols.

From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Sat, 17 Sep 2016 16:24:59 -0700
Subject: [PATCH] Include BSS in the size appended to compressed barebox

In a PBL config the compressed main barebox image includes the
uncompressed size as a LE 32-bit word at the end of the compressed
image.  This allows the pbl to know how much space the main barebox
will need.  But this value alone is not correct, as the image also
needs BSS space which, being all zero, is not actually stored in the
compressed image.

While the BSS space could be estimated, it is important that both the
PBL and the main barebox use the same value.

To fix this, when making the barebox.z compressed data for the PBL,
include BSS in the size word.  Now the PBL knows the size it needs.

The main boxbox image (both in PBL and non-PBL modes) already knows
the correct values as they are embedded in the binary directly by the
linker, and are used elsewhere like setup_c() and
mem_malloc_resource().
---
 arch/arm/cpu/start-pbl.c  |  7 +++++--
 arch/arm/cpu/uncompress.c |  8 ++++++--
 images/Makefile           |  4 ++++
 scripts/Makefile.lib      | 23 ++++++++++-------------
 4 files changed, 25 insertions(+), 17 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index f723edc..1869a96 100644
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
+	uint32_t pg_start, pg_end, pg_len, barebox_mem_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
@@ -63,9 +64,11 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	pg_start = (uint32_t)&input_data - offset;
 	pg_end = (uint32_t)&input_data_end - offset;
 	pg_len = pg_end - pg_start;
+	/* Size word at end of image includes space for BSS */
+	barebox_mem_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
-		barebox_base = arm_mem_barebox_image(membase, endmem, pg_len);
+		barebox_base = arm_mem_barebox_image(membase, endmem, barebox_mem_len);
 	else
 		barebox_base = TEXT_BASE;
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index b8e2e9f..9bec77f 100644
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
+	uint32_t pg_len, barebox_mem_len;
 	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
 	uint32_t endmem = membase + memsize;
 	unsigned long barebox_base;
@@ -69,13 +70,16 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 	/*
 	 * image_end is the first location after the executable. It contains
 	 * the size of the appended compressed binary followed by the binary.
+	 * The final word of the compressed binary is the space (uncompressed
+	 * image plus bss room) needed by barebox.
 	 */
 	pg_start = image_end + 1;
 	pg_len = *(image_end);
+	barebox_mem_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		barebox_base = arm_mem_barebox_image(membase, endmem,
-						     pg_len);
+						     barebox_mem_len);
 	else
 		barebox_base = TEXT_BASE;
 
diff --git a/images/Makefile b/images/Makefile
index da9cc8d..cc76958 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -89,8 +89,12 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = shipped
 
 # barebox.z - compressed barebox binary
 # ----------------------------------------------------------------
+quiet_cmd_sizebss = SIZEBSS $@
+cmd_sizebss = $(call size_append, $<, $(obj)/../barebox) >> $@
+
 $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
 	$(call if_changed,$(suffix_y))
+	$(call if_changed,sizebss)
 
 # %.img - create a copy from another file
 # ----------------------------------------------------------------
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e55bc27..5b9d172 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -299,20 +299,17 @@ cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
 
 # Bzip2 and LZMA do not include size in file... so we have to fake that;
 # append the size as a 32-bit littleendian number as gzip does.
-size_append = printf $(shell						\
-dec_size=0;								\
-for F in $1; do								\
-	fsize=$$(stat -c "%s" $$F);					\
-	dec_size=$$(expr $$dec_size + $$fsize);				\
+# If a second argument is supplied, include the BSS space it uses, as
+# this gives the memory needs to load a compressed binary.
+size_append = size=0;							\
+[ -n "$2" ] && size=`size -A $2 | awk '$$1==".bss"{print $$2}'`;	\
+for F in $1; do 							\
+	fsize=`stat -c %s $$F`;						\
+	size=$$((size + fsize));					\
 done;									\
-printf "%08x\n" $$dec_size |						\
-	sed 's/\(..\)/\1 /g' | {					\
-		read ch0 ch1 ch2 ch3;					\
-		for ch in $$ch3 $$ch2 $$ch1 $$ch0; do			\
-			printf '%s%03o' '\\' $$((0x$$ch)); 		\
-		done;							\
-	}								\
-)
+printf `printf '\\\\%03o\\\\%03o\\\\%03o\\\\%03o' 			\
+	$$((size&0xff)) $$((size>>8&0xff)) 				\
+	$$((size>>16&0xff)) $$((size>>24&0xff))`
 
 quiet_cmd_bzip2 = BZIP2   $@
 cmd_bzip2 = (cat $(filter-out FORCE,$^) | \
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
