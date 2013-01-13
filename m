Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f54.google.com ([74.125.83.54])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZM-0002P8-Vy
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:42:06 +0000
Received: by mail-ee0-f54.google.com with SMTP id c13so1659945eek.13
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:42:02 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:21 +0100
Message-Id: <1358098943-18928-8-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 7/9] barebox-data: add barebox-data sections
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

Add barebox-data section in arm branch to get complete
barebox regions in sdram regions tree.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/lib/barebox.lds.S                       | 6 +++++-
 arch/blackfin/boards/ipe337/barebox.lds.S        | 6 +++++-
 arch/mips/lib/barebox.lds.S                      | 5 ++++-
 arch/nios2/cpu/barebox.lds.S                     | 5 +++--
 arch/ppc/boards/freescale-p2020rdb/barebox.lds.S | 6 ++++--
 arch/ppc/boards/pcm030/barebox.lds.S             | 5 +++--
 arch/x86/lib/barebox.lds.S                       | 5 ++++-
 common/memory.c                                  | 4 ++++
 include/asm-generic/sections.h                   | 1 +
 9 files changed, 33 insertions(+), 10 deletions(-)

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index bac1a04..6cad804 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -65,7 +65,9 @@ SECTIONS
 		__stop_unwind_tab = .;
 	}
 #endif
-	_etext = .;			/* End of text and rodata section */
+	_etext = . - 1;			/* End of text and rodata section */
+
+	_sdata = .;
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
@@ -87,6 +89,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	_edata = . - 1;
+
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss*) }
diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 6a07b43..29f5d9e 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -54,7 +54,9 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata) }
 
-	__etext = .;			/* End of text and rodata section */
+	__etext = . - 1;	/* End of text and rodata section */
+
+	_sdata = .;
 
 	. = ALIGN(4);
 	.data : { *(.data) }
@@ -79,6 +81,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	___usymtab_end = .;
 
+	_edata - . -1;
+
 	. = ALIGN(4);
 	___bss_start = .;
 	.bss : { *(.bss) }
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 0cbf2d7..6f05513 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -43,7 +43,8 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
-	_etext = .;			/* End of text and rodata section */
+	_etext = . - 1;			/* End of text and rodata section */
+	_sdata = .;
 
 	. = ALIGN(4);
 	.data : { *(.data*) }
@@ -68,6 +69,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	_edata = . - 1;
+
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss*) }
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index af7be4d..ac4cc8a 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -67,13 +67,14 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	___usymtab_end = .;
 
-	_etext = .; /* End of text and rodata section */
+	_etext = . - 1; /* End of text and rodata section */
 
 	/* INIT DATA sections - "Small" data (see the gcc -G option)
 	 * is always gp-relative. Here we make all init data sections
 	 * adjacent to simplify the startup code -- and provide
 	 * the global pointer for gp-relative access.
 	 */
+	_sdata = .;
 	_data = .;
 	.data :
 	{
@@ -94,7 +95,7 @@ SECTIONS
 	}
 	. = ALIGN(4);
 
-	_edata = .;
+	_edata = . - 1;
 	PROVIDE (edata = .);
 
 	/* UNINIT DATA - Small uninitialized data is first so it's
diff --git a/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S b/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
index 95033d4..e9b0679 100644
--- a/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
+++ b/arch/ppc/boards/freescale-p2020rdb/barebox.lds.S
@@ -39,7 +39,9 @@ SECTIONS
     *(.text*)
   } :text
 
-  _etext = .;
+  _etext = . - 1;
+
+  _sdata = .;
   PROVIDE (etext = .);
 
   .rodata    :
@@ -74,7 +76,7 @@ SECTIONS
     *(.dynamic*)
     CONSTRUCTORS
   }
-  _edata  =  .;
+  _edata  =  . - 1;
   PROVIDE (edata = .);
 
   . = .;
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index cc86d82..bfc646b 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -67,7 +67,8 @@ SECTIONS
 
   /* Read-write section, merged into data segment: */
   . = (. + 0x0FFF) & 0xFFFFF000;
-  _etext = .;
+  _etext = . - 1;
+  _sdata = .;
   PROVIDE (erotext = .);
   .reloc   :
   {
@@ -90,7 +91,7 @@ SECTIONS
     *(.dynamic*)
     CONSTRUCTORS
   }
-  _edata  =  .;
+  _edata  =  . - 1;
   PROVIDE (edata = .);
 
   . = .;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 8bd2a7b..5826fb2 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -149,7 +149,8 @@ SECTIONS
 		. = ALIGN(4);
 		*(.rodata*)
 		. = ALIGN(4);
-		_etext = .;			/* End of text and rodata section */
+		_etext = . - 1;	/* End of text and rodata section */
+		_sdata = .;
 	} > barebox
 	BAREBOX_BARE_INIT_SIZE
 
@@ -191,6 +192,8 @@ SECTIONS
 		. = ALIGN(4);
 	} > barebox
 
+	_edata = . - 1;
+
 	.bss : {
 		__bss_start = .;
 		*(.bss*);
diff --git a/common/memory.c b/common/memory.c
index 24dd0dd..1748d78 100644
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
