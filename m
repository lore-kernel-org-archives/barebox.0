Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfsP-0006Jv-5t
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:45:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:30 +0200
Message-Id: <20191002144430.14946-8-s.hauer@pengutronix.de>
In-Reply-To: <20191002144430.14946-1-s.hauer@pengutronix.de>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] lds: Add and use RO_DATA_SECTION macro
To: Barebox List <barebox@lists.infradead.org>

We have many different pointer arrays which we put into linker sections
and each time there's one added we have to adjust all linker scripts.
This adds a common RO_DATA_SECTION define and uses it for all
architectures. This makes it easier to add a new linker array.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S           | 14 ++++--------
 arch/arm/lib64/barebox.lds.S           | 16 ++++---------
 arch/mips/lib/barebox.lds.S            | 16 ++++---------
 arch/nios2/cpu/barebox.lds.S           | 12 ++++------
 arch/openrisc/cpu/barebox.lds.S        | 11 +--------
 arch/ppc/boards/pcm030/barebox.lds.S   |  9 +-------
 arch/ppc/mach-mpc85xx/barebox.lds.S    |  8 +------
 arch/riscv/lib/barebox.lds.S           | 12 ++++------
 arch/sandbox/board/barebox.lds.S       |  8 +++----
 arch/x86/lib/barebox.lds.S             | 31 +-------------------------
 arch/x86/mach-efi/elf_ia32_efi.lds.S   |  9 +-------
 arch/x86/mach-efi/elf_x86_64_efi.lds.S |  9 +-------
 include/asm-generic/barebox.lds.h      | 11 +++++++++
 13 files changed, 40 insertions(+), 126 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 3a19d8faab..c479e02e91 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -55,7 +55,10 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
-	.rodata : { *(.rodata*) }
+	.rodata : {
+		*(.rodata*)
+		RO_DATA_SECTION
+	}
 
 #ifdef CONFIG_ARM_UNWIND
 	/*
@@ -82,15 +85,6 @@ SECTIONS
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = .;
-	.barebox_cmd : { BAREBOX_CMDS }
-	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	__usymtab : { BAREBOX_SYMS }
-	.pci_fixup : { BAREBOX_PCI_FIXUP }
-	.oftables : { BAREBOX_CLK_TABLE }
-	.dtb : { BAREBOX_DTB }
 
 	.rel_dyn_start : { *(.__rel_dyn_start) }
 	.rel.dyn : { *(.rel*) }
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 3ad9d5f132..cf6ef18895 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -53,7 +53,10 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
-	.rodata : { *(.rodata*) }
+	.rodata : {
+		*(.rodata*)
+		RO_DATA_SECTION
+	}
 
 	_etext = .;			/* End of text and rodata section */
 	_sdata = .;
@@ -63,17 +66,6 @@ SECTIONS
 
 	.barebox_imd : { BAREBOX_IMD }
 
-	. = .;
-	.barebox_cmd : { BAREBOX_CMDS }
-	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	__usymtab : { BAREBOX_SYMS }
-	.pci_fixup : { BAREBOX_PCI_FIXUP }
-	.oftables : { BAREBOX_CLK_TABLE }
-	.dtb : { BAREBOX_DTB }
-
 	.rel_dyn_start : { *(.__rel_dyn_start) }
 	.rela.dyn : { *(.rela*) }
 	.rel_dyn_end : { *(.__rel_dyn_end) }
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index f9a0b44937..e96c3bf6e2 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -30,7 +30,10 @@ SECTIONS
 	PRE_IMAGE
 
 	. = ALIGN(4);
-	.rodata : { *(.rodata*) }
+	.rodata : {
+		*(.rodata*)
+		RO_DATA_SECTION
+	}
 
 	_etext = .;			/* End of text and rodata section */
 	_sdata = .;
@@ -40,17 +43,6 @@ SECTIONS
 
 	.barebox_imd : { BAREBOX_IMD }
 
-	. = .;
-	.barebox_cmd : { BAREBOX_CMDS }
-	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	__usymtab : { BAREBOX_SYMS }
-	.pci_fixup : { BAREBOX_PCI_FIXUP }
-	.oftables : { BAREBOX_CLK_TABLE }
-	.dtb : { BAREBOX_DTB }
-
 	_edata = .;
 	.image_end : { *(.__image_end) }
 
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index efe8e106a1..8d82aa59e7 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -48,15 +48,11 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
-	.rodata : { *(.rodata) }
 
-	. = .;
-	.barebox_cmd : { BAREBOX_CMDS }
-	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	__usymtab : { BAREBOX_SYMS }
+	.rodata : {
+		*(.rodata*)
+		RO_DATA_SECTION
+	}
 
 	_etext = .; /* End of text and rodata section */
 
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index 37242f9c5e..adb0c22f85 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -49,18 +49,9 @@ SECTIONS
 		*(.rodata);
 		*(.rodata.*)
 		*(.bbenv.rodata.*)
+		RO_DATA_SECTION
 	} > ram
 
-	. = ALIGN(4);
-	. = .;
-	.barebox_cmd : { BAREBOX_CMDS } > ram
-	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS } > ram
-	.barebox_magicvar : { BAREBOX_MAGICVARS } > ram
-	.barebox_initcalls : { BAREBOX_INITCALLS } > ram
-	.barebox_exitcalls : { BAREBOX_EXITCALLS } > ram
-	__usymtab : { BAREBOX_SYMS } > ram
-	.dtb : { BAREBOX_DTB } > ram
-
 	__etext = .; /* End of text and rodata section */
 
 	. = ALIGN(4);
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 73e4bde434..6c91ed6256 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -38,6 +38,7 @@ SECTIONS
     *(.rodata*)
     *(.rodata1*)
     *(.rodata.str1.4)
+    RO_DATA_SECTION
   }
 
   /* Read-only sections, merged into text segment: */
@@ -99,14 +100,6 @@ SECTIONS
   _edata  =  .;
   PROVIDE (edata = .);
 
-  . = .;
-  .barebox_cmd : { BAREBOX_CMDS }
-  .barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-  .barebox_magicvar : { BAREBOX_MAGICVARS }
-  .barebox_initcalls : { BAREBOX_INITCALLS }
-  .barebox_exitcalls : { BAREBOX_EXITCALLS }
-  __usymtab : { BAREBOX_SYMS }
-
   __start___ex_table = .;
   __ex_table : { *(__ex_table) }
   __stop___ex_table = .;
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index 1874319e71..a09a01eba1 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -71,6 +71,7 @@ SECTIONS
    .rodata    :
    {
     *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))
+    RO_DATA_SECTION
   } :text
 
   /* Read-write section, merged into data segment: */
@@ -100,13 +101,6 @@ SECTIONS
     CONSTRUCTORS
   }
 
-  . = .;
-  .barebox_cmd : { BAREBOX_CMDS }
-  .barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-  .barebox_initcalls : { BAREBOX_INITCALLS }
-  .barebox_exitcalls : { BAREBOX_EXITCALLS }
-  __usymtab : { BAREBOX_SYMS }
-
   . = .;
   __start___ex_table = .;
   __ex_table : { *(__ex_table) }
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 23e4468e2f..5149f8ce28 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -30,7 +30,10 @@ SECTIONS
 	}
 
 	. = ALIGN(8);
-	.rodata : { *(.rodata*) }
+	.rodata : {
+		*(.rodata*)
+		RO_DATA_SECTION
+	}
 
 	_etext = .;			/* End of text and rodata section */
 	_sdata = .;
@@ -43,13 +46,6 @@ SECTIONS
 	. = ALIGN(8);
 	.got : { *(.got*) }
 
-	. = .;
-	.barebox_cmd : { BAREBOX_CMDS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	__usymtab : { BAREBOX_SYMS }
-
 	.rela.dyn : { *(.rela*) }
 
 	.oftables : { BAREBOX_CLK_TABLE }
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 862376dd0e..7a5a8eb1e7 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -3,11 +3,9 @@
 SECTIONS
 {
 	. = ALIGN(64);
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	.barebox_rodata : {
+		RO_DATA_SECTION
+	}
 }
 
 INSERT BEFORE .rodata;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index d26f060a3e..71251642dc 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -133,6 +133,7 @@ SECTIONS
 		*(.boot.rodata*)
 		*(.boot.data*)
 		. = ALIGN(4);
+		RO_DATA_SECTION
 	} > barebox
 #endif
 
@@ -164,36 +165,6 @@ SECTIONS
 		. = ALIGN(4);
 	} > barebox
 
-	.barebox_cmd : AT ( LOADADDR(.got) + SIZEOF (.got) ) {
-		BAREBOX_CMDS
-		. = ALIGN(4);
-	} > barebox
-
-	.barebox_ratp_cmd : AT ( LOADADDR(.got) + SIZEOF (.got) ) {
-		BAREBOX_RATP_CMDS
-		. = ALIGN(4);
-	} > barebox
-
-	.barebox_magicvars : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
-		BAREBOX_MAGICVARS
-		. = ALIGN(4);
-	} > barebox
-
-	.barebox_initcalls : AT ( LOADADDR(.barebox_magicvars) + SIZEOF (.barebox_magicvars) ) {
-		BAREBOX_INITCALLS
-		. = ALIGN(4);
-	} > barebox
-
-	.barebox_exitcalls : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
-		BAREBOX_EXITCALLS
-		. = ALIGN(4);
-	} > barebox
-
-	.__usymtab : AT ( LOADADDR(.barebox_exitcalls) + SIZEOF (.barebox_exitcalls) ) {
-		BAREBOX_SYMS
-		. = ALIGN(4);
-	} > barebox
-
 	_edata = .;
 	.bss : {
 		__bss_start = .;
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index 70d34f4871..18ddf17802 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -35,6 +35,7 @@ SECTIONS
 
 	.data : {
 		*(.rodata*)
+		RO_DATA_SECTION
 		*(.data)
 		*(.data1)
 		*(.data.*)
@@ -50,14 +51,6 @@ SECTIONS
 		*(COMMON)
 	}
 
-	. = ALIGN(64);
-
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-
 	. = ALIGN(4096);
 	.dynamic : { *(.dynamic) }
 	. = ALIGN(4096);
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index 53de22d75c..40a9425034 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -38,6 +38,7 @@ SECTIONS
 
 	.data : {
 		*(.rodata*)
+		RO_DATA_SECTION
 		*(.got.plt)
 		*(.got)
 		*(.data*)
@@ -52,14 +53,6 @@ SECTIONS
 		*(.rel.local)
 	}
 
-	. = ALIGN(64);
-
-	.barebox_initcalls : { BAREBOX_INITCALLS }
-	.barebox_exitcalls : { BAREBOX_EXITCALLS }
-	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-
 	. = ALIGN(4096);
 	.dynamic : { *(.dynamic) }
 	. = ALIGN(4096);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index a3e367c9ed..491f879c8d 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -104,6 +104,17 @@
 #define BAREBOX_PCI_FIXUP
 #endif
 
+#define RO_DATA_SECTION				\
+	BAREBOX_INITCALLS			\
+	BAREBOX_EXITCALLS			\
+	BAREBOX_CMDS				\
+	BAREBOX_RATP_CMDS			\
+	BAREBOX_SYMS				\
+	BAREBOX_MAGICVARS			\
+	BAREBOX_CLK_TABLE			\
+	BAREBOX_DTB				\
+	BAREBOX_PCI_FIXUP
+
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #define MAX_BARE_INIT_SIZE CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
