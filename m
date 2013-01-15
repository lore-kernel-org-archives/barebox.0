Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f52.google.com ([74.125.83.52])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6sk-0003wQ-Vf
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:53 +0000
Received: by mail-ee0-f52.google.com with SMTP id b15so61430eek.11
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:46 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:48 +0100
Message-Id: <1358257730-20579-7-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/8] barebox-data: add barebox-data sections
To: barebox@lists.infradead.org

Add barebox-data section in arm branch to get complete
barebox regions in sdram regions tree.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/lib/barebox.lds.S                       | 2 ++
 arch/blackfin/boards/ipe337/barebox.lds.S        | 2 ++
 arch/mips/lib/barebox.lds.S                      | 2 ++
 arch/nios2/cpu/barebox.lds.S                     | 1 +
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S | 1 +
 arch/ppc/boards/pcm030/barebox.lds.S             | 1 +
 arch/x86/lib/barebox.lds.S                       | 2 ++
 common/memory.c                                  | 4 ++++
 include/asm-generic/sections.h                   | 1 +
 9 files changed, 16 insertions(+)

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index bac1a04..e5aee8c 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -66,6 +66,7 @@ SECTIONS
 	}
 #endif
 	_etext = .;			/* End of text and rodata section */
+	_sdata = .;
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
@@ -87,6 +88,7 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	_edata = .;
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss*) }
diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 6a07b43..a063841 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -55,6 +55,7 @@ SECTIONS
 	.rodata : { *(.rodata) }
 
 	__etext = .;			/* End of text and rodata section */
+	_sdata = .;
 
 	. = ALIGN(4);
 	.data : { *(.data) }
@@ -79,6 +80,7 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	___usymtab_end = .;
 
+	_edata - .;
 	. = ALIGN(4);
 	___bss_start = .;
 	.bss : { *(.bss) }
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 0cbf2d7..5b3d45d 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -44,6 +44,7 @@ SECTIONS
 	.rodata : { *(.rodata*) }
 
 	_etext = .;			/* End of text and rodata section */
+	_sdata = .;
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
@@ -68,6 +69,7 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	_edata = .;
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss*) }
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index af7be4d..943c507 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -74,6 +74,7 @@ SECTIONS
 	 * adjacent to simplify the startup code -- and provide
 	 * the global pointer for gp-relative access.
 	 */
+	_sdata = .;
 	_data = .;
 	.data :
 	{
diff --git a/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S b/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
index 95033d4..85a864e 100644
--- a/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
+++ b/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
@@ -41,6 +41,7 @@ SECTIONS
 
   _etext = .;
   PROVIDE (etext = .);
+  _sdata = .;
 
   .rodata    :
   {
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index cc86d82..20ac0d8 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -69,6 +69,7 @@ SECTIONS
   . = (. + 0x0FFF) & 0xFFFFF000;
   _etext = .;
   PROVIDE (erotext = .);
+  _sdata = .;
   .reloc   :
   {
     *(.got)
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 8bd2a7b..05d0f77 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -153,6 +153,7 @@ SECTIONS
 	} > barebox
 	BAREBOX_BARE_INIT_SIZE
 
+	_sdata = .;
 	.data : AT ( LOADADDR(.text) + SIZEOF(.text) ) {
 		*(.data*)
 		. = ALIGN(4);
@@ -191,6 +192,7 @@ SECTIONS
 		. = ALIGN(4);
 	} > barebox
 
+	_edata = .;
 	.bss : {
 		__bss_start = .;
 		*(.bss*);
diff --git a/common/memory.c b/common/memory.c
index f9192ab..d2e9164 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -75,6 +75,10 @@ static int mem_malloc_resource(void)
 			(unsigned long)&_stext,
 			(unsigned long)&_etext -
 			(unsigned long)&_stext);
+	request_sdram_region("barebox data",
+			(unsigned long)&_sdata,
+			(unsigned long)&_edata -
+			(unsigned long)&_sdata);
 	request_sdram_region("bss",
 			(unsigned long)&__bss_start,
 			(unsigned long)&__bss_stop -
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 17d5fd1..5492aa4 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -3,6 +3,7 @@
 
 extern char _text[], _stext[], _etext[];
 extern char __bss_start[], __bss_stop[];
+extern char _sdata[], _edata[];
 extern char __bare_init_start[], __bare_init_end[];
 extern char _end[];
 extern void *_barebox_image_size;
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
