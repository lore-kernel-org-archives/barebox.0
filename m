Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RHstZ-00079B-VF
	for barebox@lists.infradead.org; Sun, 23 Oct 2011 07:55:03 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 988661008514
	for <barebox@lists.infradead.org>;
	Sun, 23 Oct 2011 09:51:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 23 Oct 2011 15:48:21 +0800
Message-Id: <1319356101-4521-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1319356101-4521-1-git-send-email-plagnioj@jcrosoft.com>
References: <1319356101-4521-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] sandbox: simplify linker script
To: barebox@lists.infradead.org

let the linker to provide the basic linker script

just insert the commands and initcalls before the .rodata section

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/Makefile            |    8 +-
 arch/sandbox/board/Makefile      |    3 -
 arch/sandbox/board/barebox.lds.S |  245 +++-----------------------------------
 3 files changed, 17 insertions(+), 239 deletions(-)
 rewrite arch/sandbox/board/barebox.lds.S (99%)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 860ed1c..ed1194c 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -38,23 +38,17 @@ SUBARCH := $(shell uname -m | sed -e s/i.86/i386/ -e s/sun4u/sparc64/ \
 				  -e s/ppc.*/powerpc/ -e s/mips.*/mips/ )
 
 ifeq ($(SUBARCH),x86_64)
-ELF_ARCH   := i386:x86-64
-ELF_FORMAT := elf64-x86-64
 ELF_CLASS := ELFCLASS64
 endif
 ifeq ($(SUBARCH),i386)
-ELF_ARCH   := $(SUBARCH)
-ELF_FORMAT := elf32-$(SUBARCH)
 ELF_CLASS  := ELFCLASS32
 endif
 ifeq ($(SUBARCH),powerpc)
-ELF_ARCH   := powerpc
-ELF_FORMAT := elf32-powerpc
 ELF_CLASS  := ELFCLASS32
 endif
 
 CPPFLAGS += -DELF_CLASS="$(ELF_CLASS)"
-export ELF_FORMAT ELF_ARCH SUBARCH ELF_CLASS
+export ELF_CLASS
 
 archprepare: maketools
 
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 8abe5dd..266c3a3 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -3,7 +3,4 @@ obj-y += clock.o
 obj-y += hostfile.o
 obj-y += console.o
 
-CPPFLAGS_barebox.lds = -U$(SUBARCH) -DELF_ARCH=$(ELF_ARCH) \
-        -DELF_FORMAT="$(ELF_FORMAT)"
 extra-y += barebox.lds
-
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
dissimilarity index 99%
index 53e9f60..76975ee 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -1,229 +1,16 @@
-#include <asm-generic/barebox.lds.h>
-
-OUTPUT_FORMAT(ELF_FORMAT)
-OUTPUT_ARCH(ELF_ARCH)
-ENTRY(_start)
-
-SECTIONS
-{
-  /* Read-only sections, merged into text segment: */
-  PROVIDE (__executable_start = 0x400000); . = 0x400000 + SIZEOF_HEADERS;
-  .interp         : { *(.interp) }
-  .hash           : { *(.hash) }
-  .gnu.hash       : { *(.gnu.hash) }
-  .dynsym         : { *(.dynsym) }
-  .dynstr         : { *(.dynstr) }
-  .gnu.version    : { *(.gnu.version) }
-  .gnu.version_d  : { *(.gnu.version_d) }
-  .gnu.version_r  : { *(.gnu.version_r) }
-  .rel.dyn        :
-    {
-      *(.rel.init)
-      *(.rel.text .rel.text.* .rel.gnu.linkonce.t.*)
-      *(.rel.fini)
-      *(.rel.rodata .rel.rodata.* .rel.gnu.linkonce.r.*)
-      *(.rel.data.rel.ro* .rel.gnu.linkonce.d.rel.ro.*)
-      *(.rel.data .rel.data.* .rel.gnu.linkonce.d.*)
-      *(.rel.tdata .rel.tdata.* .rel.gnu.linkonce.td.*)
-      *(.rel.tbss .rel.tbss.* .rel.gnu.linkonce.tb.*)
-      *(.rel.ctors)
-      *(.rel.dtors)
-      *(.rel.got)
-      *(.rel.bss .rel.bss.* .rel.gnu.linkonce.b.*)
-      *(.rel.ldata .rel.ldata.* .rel.gnu.linkonce.l.*)
-      *(.rel.lbss .rel.lbss.* .rel.gnu.linkonce.lb.*)
-      *(.rel.lrodata .rel.lrodata.* .rel.gnu.linkonce.lr.*)
-    }
-  .rela.dyn       :
-    {
-      *(.rela.init)
-      *(.rela.text .rela.text.* .rela.gnu.linkonce.t.*)
-      *(.rela.fini)
-      *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.*)
-      *(.rela.data .rela.data.* .rela.gnu.linkonce.d.*)
-      *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.*)
-      *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.*)
-      *(.rela.ctors)
-      *(.rela.dtors)
-      *(.rela.got)
-      *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.*)
-      *(.rela.ldata .rela.ldata.* .rela.gnu.linkonce.l.*)
-      *(.rela.lbss .rela.lbss.* .rela.gnu.linkonce.lb.*)
-      *(.rela.lrodata .rela.lrodata.* .rela.gnu.linkonce.lr.*)
-    }
-  .rel.plt        : { *(.rel.plt) }
-  .rela.plt       : { *(.rela.plt) }
-  .init           :
-  {
-    KEEP (*(.init))
-  } =0x90909090
-  .plt            : { *(.plt) }
-  .text           :
-  {
-    *(.text .stub .text.* .gnu.linkonce.t.*)
-    KEEP (*(.text.*personality*))
-    /* .gnu.warning sections are handled specially by elf32.em.  */
-    *(.gnu.warning)
-  } =0x90909090
-  .fini           :
-  {
-    KEEP (*(.fini))
-  } =0x90909090
-
-  . = ALIGN(64);
-  __barebox_initcalls_start = .;
-  __barebox_initcalls : { INITCALLS }
-  __barebox_initcalls_end = .;
-  . = ALIGN(64);
-  __barebox_cmd_start = .;
-  __barebox_cmd : { BAREBOX_CMDS }
-  __barebox_cmd_end = .;
-
-  PROVIDE (__etext = .);
-  PROVIDE (_etext = .);
-  PROVIDE (etext = .);
-  .rodata         : { *(.rodata .rodata.* .gnu.linkonce.r.*) }
-  .rodata1        : { *(.rodata1) }
-  .eh_frame_hdr : { *(.eh_frame_hdr) }
-  .eh_frame       : ONLY_IF_RO { KEEP (*(.eh_frame)) }
-  .gcc_except_table   : ONLY_IF_RO { *(.gcc_except_table .gcc_except_table.*) }
-  /* Adjust the address for the data segment.  We want to adjust up to
-     the same address within the page on the next page up.  */
-  . = ALIGN (CONSTANT (MAXPAGESIZE)) - ((CONSTANT (MAXPAGESIZE) - .) & (CONSTANT (MAXPAGESIZE) - 1)); . = DATA_SEGMENT_ALIGN (CONSTANT (MAXPAGESIZE), CONSTANT (COMMONPAGESIZE));
-  /* Exception handling  */
-  .eh_frame       : ONLY_IF_RW { KEEP (*(.eh_frame)) }
-  .gcc_except_table   : ONLY_IF_RW { *(.gcc_except_table .gcc_except_table.*) }
-  /* Thread Local Storage sections  */
-  .tdata	  : { *(.tdata .tdata.* .gnu.linkonce.td.*) }
-  .tbss		  : { *(.tbss .tbss.* .gnu.linkonce.tb.*) *(.tcommon) }
-  .preinit_array     :
-  {
-    PROVIDE_HIDDEN (__preinit_array_start = .);
-    KEEP (*(.preinit_array))
-    PROVIDE_HIDDEN (__preinit_array_end = .);
-  }
-  .init_array     :
-  {
-     PROVIDE_HIDDEN (__init_array_start = .);
-     KEEP (*(SORT(.init_array.*)))
-     KEEP (*(.init_array))
-     PROVIDE_HIDDEN (__init_array_end = .);
-  }
-  .fini_array     :
-  {
-    PROVIDE_HIDDEN (__fini_array_start = .);
-    KEEP (*(.fini_array))
-    KEEP (*(SORT(.fini_array.*)))
-    PROVIDE_HIDDEN (__fini_array_end = .);
-  }
-  .ctors          :
-  {
-    /* gcc uses crtbegin.o to find the start of
-       the constructors, so we make sure it is
-       first.  Because this is a wildcard, it
-       doesn't matter if the user does not
-       actually link against crtbegin.o; the
-       linker won't look for a file to match a
-       wildcard.  The wildcard also means that it
-       doesn't matter which directory crtbegin.o
-       is in.  */
-    KEEP (*crtbegin.o(.ctors))
-    KEEP (*crtbegin?.o(.ctors))
-    /* We don't want to include the .ctor section from
-       the crtend.o file until after the sorted ctors.
-       The .ctor section from the crtend file contains the
-       end of ctors marker and it must be last */
-    KEEP (*(EXCLUDE_FILE (*crtend.o *crtend?.o ) .ctors))
-    KEEP (*(SORT(.ctors.*)))
-    KEEP (*(.ctors))
-  }
-  .dtors          :
-  {
-    KEEP (*crtbegin.o(.dtors))
-    KEEP (*crtbegin?.o(.dtors))
-    KEEP (*(EXCLUDE_FILE (*crtend.o *crtend?.o ) .dtors))
-    KEEP (*(SORT(.dtors.*)))
-    KEEP (*(.dtors))
-  }
-  .jcr            : { KEEP (*(.jcr)) }
-  .data.rel.ro : { *(.data.rel.ro.local* .gnu.linkonce.d.rel.ro.local.*) *(.data.rel.ro* .gnu.linkonce.d.rel.ro.*) }
-  .dynamic        : { *(.dynamic) }
-  .got            : { *(.got) }
-  . = DATA_SEGMENT_RELRO_END (24, .);
-  .got.plt        : { *(.got.plt) }
-  .data           :
-  {
-    *(.data .data.* .gnu.linkonce.d.*)
-    KEEP (*(.gnu.linkonce.d.*personality*))
-    SORT(CONSTRUCTORS)
-  }
-  .data1          : { *(.data1) }
-  _edata = .; PROVIDE (edata = .);
-  __bss_start = .;
-  .bss            :
-  {
-   *(.dynbss)
-   *(.bss .bss.* .gnu.linkonce.b.*)
-   *(COMMON)
-   /* Align here to ensure that the .bss section occupies space up to
-      _end.  Align after .bss to ensure correct alignment even if the
-      .bss section disappears because there are no input sections.
-      FIXME: Why do we need it? When there is no .bss section, we don't
-      pad the .data section.  */
-   . = ALIGN(. != 0 ? 64 / 8 : 1);
-  }
-  .lbss   :
-  {
-    *(.dynlbss)
-    *(.lbss .lbss.* .gnu.linkonce.lb.*)
-    *(LARGE_COMMON)
-  }
-  . = ALIGN(64 / 8);
-  .lrodata   ALIGN(CONSTANT (MAXPAGESIZE)) + (. & (CONSTANT (MAXPAGESIZE) - 1)) :
-  {
-    *(.lrodata .lrodata.* .gnu.linkonce.lr.*)
-  }
-  .ldata   ALIGN(CONSTANT (MAXPAGESIZE)) + (. & (CONSTANT (MAXPAGESIZE) - 1)) :
-  {
-    *(.ldata .ldata.* .gnu.linkonce.l.*)
-    . = ALIGN(. != 0 ? 64 / 8 : 1);
-  }
-  . = ALIGN(64 / 8);
-  _end = .; PROVIDE (end = .);
-  . = DATA_SEGMENT_END (.);
-  /* Stabs debugging sections.  */
-  .stab          0 : { *(.stab) }
-  .stabstr       0 : { *(.stabstr) }
-  .stab.excl     0 : { *(.stab.excl) }
-  .stab.exclstr  0 : { *(.stab.exclstr) }
-  .stab.index    0 : { *(.stab.index) }
-  .stab.indexstr 0 : { *(.stab.indexstr) }
-  .comment       0 : { *(.comment) }
-  /* DWARF debug sections.
-     Symbols in the DWARF debugging sections are relative to the beginning
-     of the section so we begin them at 0.  */
-  /* DWARF 1 */
-  .debug          0 : { *(.debug) }
-  .line           0 : { *(.line) }
-  /* GNU DWARF 1 extensions */
-  .debug_srcinfo  0 : { *(.debug_srcinfo) }
-  .debug_sfnames  0 : { *(.debug_sfnames) }
-  /* DWARF 1.1 and DWARF 2 */
-  .debug_aranges  0 : { *(.debug_aranges) }
-  .debug_pubnames 0 : { *(.debug_pubnames) }
-  /* DWARF 2 */
-  .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
-  .debug_abbrev   0 : { *(.debug_abbrev) }
-  .debug_line     0 : { *(.debug_line) }
-  .debug_frame    0 : { *(.debug_frame) }
-  .debug_str      0 : { *(.debug_str) }
-  .debug_loc      0 : { *(.debug_loc) }
-  .debug_macinfo  0 : { *(.debug_macinfo) }
-  /* SGI/MIPS DWARF 2 extensions */
-  .debug_weaknames 0 : { *(.debug_weaknames) }
-  .debug_funcnames 0 : { *(.debug_funcnames) }
-  .debug_typenames 0 : { *(.debug_typenames) }
-  .debug_varnames  0 : { *(.debug_varnames) }
-  /DISCARD/ : { *(.note.GNU-stack) }
-}
-
+#include <asm-generic/barebox.lds.h>
+
+SECTIONS
+{
+	. = ALIGN(64);
+	__barebox_initcalls_start = .;
+	__barebox_initcalls : { INITCALLS }
+	__barebox_initcalls_end = .;
+
+	. = ALIGN(64);
+	__barebox_cmd_start = .;
+	__barebox_cmd : { BAREBOX_CMDS }
+	__barebox_cmd_end = .;
+}
+
+INSERT BEFORE .rodata;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
