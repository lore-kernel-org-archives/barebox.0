Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos5-00067v-4T
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:43 +0100
Message-Id: <20180316125354.23462-8-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/78] ARM: move away from ld_var
To: Barebox List <barebox@lists.infradead.org>

The ld_var solves the issue that when compiled with -pie the linker
provided variables are all 0x0. This mechanism however refuses to
compile with aarch64 support.

This patch replaces the ld_var mechanism with a nice little trick
learned from U-Boot: Instead of using linker provided variables
directly with "__bss_start = ." we put a zero size array into
a separate section and use the address of that array instead of
the linker variable. This properly works before relocation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c |  4 ++--
 arch/arm/cpu/Makefile                          |  2 +-
 arch/arm/cpu/common.c                          | 11 ++++-------
 arch/arm/cpu/sections.c                        | 11 +++++++++++
 arch/arm/cpu/setupc.S                          |  9 ++++-----
 arch/arm/include/asm/sections.h                |  5 +++++
 arch/arm/lib/pbl.lds.S                         | 22 +++++++++-------------
 arch/arm/lib32/barebox.lds.S                   | 23 ++++++++++-------------
 arch/arm/lib64/barebox.lds.S                   | 22 +++++++++-------------
 arch/arm/mach-imx/xload-common.c               |  4 ++--
 10 files changed, 57 insertions(+), 56 deletions(-)
 create mode 100644 arch/arm/cpu/sections.c

diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index fea00ef503..4b9ba87d70 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -96,7 +96,7 @@ void __bare_init barebox_arm_reset_vector(void)
 
 	debug_led(1, 1);
 
-	if (! load_stage2((void*)(ld_var(_text) - 16),
+	if (! load_stage2((void*)(_text - 16),
 				barebox_image_size + 16)) {
 		debug_led(3, 1);
 		while (1) { } /* hang */
@@ -104,7 +104,7 @@ void __bare_init barebox_arm_reset_vector(void)
 
 	debug_led(2, 1);
 
-	jump_sdram(IRAM_CODE_BASE - ld_var(_text));
+	jump_sdram(IRAM_CODE_BASE - (unsigned long)_text);
 
 	debug_led(1, 0);
 
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index ba729fb6e4..b2fed2be51 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -46,4 +46,4 @@ pbl-y += entry.o
 pbl-$(CONFIG_PBL_SINGLE_IMAGE) += start-pbl.o
 pbl-$(CONFIG_PBL_MULTI_IMAGES) += uncompress.o
 
-obj-pbl-y += common.o cache.o
+obj-pbl-y += common.o cache.o sections.o
diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 3c9864c0db..7c07d00c1b 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -36,11 +36,11 @@ void relocate_to_current_adr(void)
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
 
-	dstart = (void *)(ld_var(__rel_dyn_start) + offset);
-	dend = (void *)(ld_var(__rel_dyn_end) + offset);
+	dstart = (void *)__rel_dyn_start + offset;
+	dend = (void *)__rel_dyn_end + offset;
 
-	dynsym = (void *)(ld_var(__dynsym_start) + offset);
-	dynend = (void *)(ld_var(__dynsym_end) + offset);
+	dynsym = (void *)__dynsym_start + offset;
+	dynend = (void *)__dynsym_end + offset;
 
 	while (dstart < dend) {
 		uint32_t *fixup = (uint32_t *)(*dstart + offset);
@@ -77,6 +77,3 @@ int __pure cpu_architecture(void)
 	return __cpu_architecture;
 }
 #endif
-
-char __image_start[0] __attribute__((section(".__image_start")));
-char __image_end[0] __attribute__((section(".__image_end")));
\ No newline at end of file
diff --git a/arch/arm/cpu/sections.c b/arch/arm/cpu/sections.c
new file mode 100644
index 0000000000..5874da2b82
--- /dev/null
+++ b/arch/arm/cpu/sections.c
@@ -0,0 +1,11 @@
+#include <asm/sections.h>
+
+char __rel_dyn_start[0] __attribute__((section(".__rel_dyn_start")));
+char __rel_dyn_end[0] __attribute__((section(".__rel_dyn_end")));
+char __dynsym_start[0] __attribute__((section(".__dynsym_start")));
+char __dynsym_end[0] __attribute__((section(".__dynsym_end")));
+char _text[0] __attribute__((section("._text")));
+char __bss_start[0] __attribute__((section(".__bss_start")));
+char __bss_stop[0] __attribute__((section(".__bss_stop")));
+char __image_start[0] __attribute__((section(".__image_start")));
+char __image_end[0] __attribute__((section(".__image_end")));
diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
index 30e88330e7..717500cfff 100644
--- a/arch/arm/cpu/setupc.S
+++ b/arch/arm/cpu/setupc.S
@@ -55,17 +55,16 @@ ENTRY(relocate_to_adr)
 
 	mov	r5, r0
 
-	ld_var	_text, r0, r4
-	mov	r8, r0
+	ldr	r8, =_text
 
-	add	r1, r0, r5		/* r1: from address */
+	add	r1, r8, r5		/* r1: from address */
 
 	cmp	r1, r6			/* already at correct address? */
 	beq	1f			/* yes, skip copy to new address */
 
-	ld_var	__bss_start, r2, r4
+	ldr	r2, =__bss_start
 
-	sub	r2, r2, r0		/* r2: size */
+	sub	r2, r2, r8		/* r2: size */
 	mov	r0, r6			/* r0: target */
 
 	/* adjust return address */
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 8c7bc8cccc..087f63fb60 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -4,6 +4,11 @@
 #ifndef __ASSEMBLY__
 #include <asm-generic/sections.h>
 
+extern char __rel_dyn_start[];
+extern char __rel_dyn_end[];
+extern char __dynsym_start[];
+extern char __dynsym_end[];
+
 /*
  * Access a linker supplied variable. Use this if your code might not be running
  * at the address it is linked at.
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 7de7791b71..be0a4a3b1a 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -34,10 +34,10 @@ SECTIONS
 	PRE_IMAGE
 
 	. = ALIGN(4);
+	._text : { *(._text) }
 	.text      :
 	{
 		_stext = .;
-		_text = .;
 		*(.text_head_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
@@ -61,22 +61,18 @@ SECTIONS
 	. = ALIGN(4);
 	.data : { *(.data*) }
 
-	.rel.dyn : {
-		__rel_dyn_start = .;
-		*(.rel*)
-		__rel_dyn_end = .;
-	}
+	.rel_dyn_start : { *(.__rel_dyn_start) }
+	.rel.dyn : { *(.rel*) }
+	.rel_dyn_end : { *(.__rel_dyn_end) }
 
-	.dynsym : {
-		__dynsym_start = .;
-		*(.dynsym)
-		__dynsym_end = .;
-	}
+	.__dynsym_start :  { *(.__dynsym_start) }
+	.dynsym : { *(.dynsym) }
+	.__dynsym_end : { *(.__dynsym_end) }
 
 	. = ALIGN(4);
-	__bss_start = .;
+	.__bss_start :  { *(.__bss_start) }
 	.bss : { *(.bss*) }
-	__bss_stop = .;
+	.__bss_stop :  { *(.__bss_stop) }
 	_end = .;
 
 	. = ALIGN(4);
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 6fadc2a357..594bf56837 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -37,10 +37,11 @@ SECTIONS
 	PRE_IMAGE
 #endif
 	. = ALIGN(4);
+
+	._text : { *(._text) }
 	.text      :
 	{
 		_stext = .;
-		_text = .;
 		*(.text_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
@@ -109,25 +110,21 @@ SECTIONS
 
 	.dtb : { BAREBOX_DTB() }
 
-	.rel.dyn : {
-		__rel_dyn_start = .;
-		*(.rel*)
-		__rel_dyn_end = .;
-	}
+	.rel_dyn_start : { *(.__rel_dyn_start) }
+	.rel.dyn : { *(.rel*) }
+	.rel_dyn_end : { *(.__rel_dyn_end) }
 
-	.dynsym : {
-		__dynsym_start = .;
-		*(.dynsym)
-		__dynsym_end = .;
-	}
+	.__dynsym_start :  { *(.__dynsym_start) }
+	.dynsym : { *(.dynsym) }
+	.__dynsym_end : { *(.__dynsym_end) }
 
 	_edata = .;
 	.image_end : { *(.__image_end) }
 
 	. = ALIGN(4);
-	__bss_start = .;
+	.__bss_start :  { *(.__bss_start) }
 	.bss : { *(.bss*) }
-	__bss_stop = .;
+	.__bss_stop :  { *(.__bss_stop) }
 
 #ifdef CONFIG_ARM_SECURE_MONITOR
 	. = ALIGN(16);
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index a53b933bba..fa633e3699 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -35,10 +35,10 @@ SECTIONS
 	PRE_IMAGE
 #endif
 	. = ALIGN(4);
+	._text : { *(._text) }
 	.text      :
 	{
 		_stext = .;
-		_text = .;
 		*(.text_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
@@ -106,24 +106,20 @@ SECTIONS
 
 	.dtb : { BAREBOX_DTB() }
 
-	.rel.dyn : {
-		__rel_dyn_start = .;
-		*(.rel*)
-		__rel_dyn_end = .;
-	}
+	.rel_dyn_start : { *(.__rel_dyn_start) }
+	.rela.dyn : { *(.rela*) }
+	.rel_dyn_end : { *(.__rel_dyn_end) }
 
-	.dynsym : {
-		__dynsym_start = .;
-		*(.dynsym)
-		__dynsym_end = .;
-	}
+	.__dynsym_start :  { *(.__dynsym_start) }
+	.dynsym : { *(.dynsym) }
+	.__dynsym_end : { *(.__dynsym_end) }
 
 	_edata = .;
 
 	. = ALIGN(4);
-	__bss_start = .;
+	.__bss_start :  { *(.__bss_start) }
 	.bss : { *(.bss*) }
-	__bss_stop = .;
+	.__bss_stop :  { *(.__bss_stop) }
 	_end = .;
 	_barebox_image_size = __bss_start - TEXT_BASE;
 }
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 2644438f40..13cd612d3c 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -5,7 +5,7 @@
 
 int imx_image_size(void)
 {
-	uint32_t *image_end = (void *)ld_var(__image_end);
+	uint32_t *image_end = (void *)__image_end;
 	uint32_t payload_len, pbl_len, imx_header_len, sizep;
 	void *pg_start;
 
@@ -15,7 +15,7 @@ int imx_image_size(void)
 	imx_header_len = SZ_4K;
 
 	/* The length of the PBL image */
-	pbl_len = ld_var(__image_end) - ld_var(_text);
+	pbl_len = __image_end - _text;
 
 	sizep = 4;
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
