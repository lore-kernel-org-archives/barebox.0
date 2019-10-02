Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfs9-0004xg-0p
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 14:44:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Oct 2019 16:44:26 +0200
Message-Id: <20191002144430.14946-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] lds: Move start/end address variables into defines
To: Barebox List <barebox@lists.infradead.org>

For the older section defines we specify the start and end addresses
outside the macro which means we have to repeat them in each linker
script. Make the start/end addresses part of the define to simplify
things. While at it, add a BAREBOX_ prefix to the INITCALLS and EXITCALLS
macros for consistency to the other defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S           | 21 ++------------
 arch/arm/lib64/barebox.lds.S           | 21 ++------------
 arch/mips/lib/barebox.lds.S            | 21 ++------------
 arch/nios2/cpu/barebox.lds.S           | 21 ++------------
 arch/openrisc/cpu/barebox.lds.S        | 22 ++------------
 arch/ppc/boards/pcm030/barebox.lds.S   | 21 ++------------
 arch/ppc/mach-mpc85xx/barebox.lds.S    | 18 ++----------
 arch/riscv/lib/barebox.lds.S           | 18 ++----------
 arch/sandbox/board/barebox.lds.S       | 14 ++-------
 arch/x86/lib/barebox.lds.S             | 16 ++---------
 arch/x86/mach-efi/elf_ia32_efi.lds.S   | 15 ++--------
 arch/x86/mach-efi/elf_x86_64_efi.lds.S | 15 ++--------
 include/asm-generic/barebox.lds.h      | 40 ++++++++++++++++++--------
 13 files changed, 52 insertions(+), 211 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 05a50afaad..9ffcffd66d 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -82,29 +82,12 @@ SECTIONS
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = .;
-	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	__barebox_ratp_cmd_start = .;
 	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	__barebox_ratp_cmd_end = .;
-
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	.barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	__usymtab_start = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-	__usymtab_end = .;
 
 #ifdef CONFIG_PCI
 	__start_pci_fixups_early = .;
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 5e9d94bee9..1cc00eca11 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -64,29 +64,12 @@ SECTIONS
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = .;
-	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	__barebox_ratp_cmd_start = .;
 	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	__barebox_ratp_cmd_end = .;
-
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	.barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	__usymtab_start = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-	__usymtab_end = .;
 
 #ifdef CONFIG_PCI
 	__start_pci_fixups_early = .;
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 7109d73372..86a469a042 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -41,29 +41,12 @@ SECTIONS
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = .;
-	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	__barebox_ratp_cmd_start = .;
 	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	__barebox_ratp_cmd_end = .;
-
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	.barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	__usymtab_start = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-	__usymtab_end = .;
 
 #ifdef CONFIG_PCI
 	__start_pci_fixups_early = .;
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index fbcd1cd3f7..efe8e106a1 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -51,29 +51,12 @@ SECTIONS
 	.rodata : { *(.rodata) }
 
 	. = .;
-	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	__barebox_ratp_cmd_start = .;
 	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	__barebox_ratp_cmd_end = .;
-
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	.barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	___usymtab_start = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-	___usymtab_end = .;
 
 	_etext = .; /* End of text and rodata section */
 
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index ed9b90ed70..37242f9c5e 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -53,30 +53,12 @@ SECTIONS
 
 	. = ALIGN(4);
 	. = .;
-	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS } > ram
-	__barebox_cmd_end = .;
-
-	__barebox_ratp_cmd_start = .;
 	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS } > ram
-	__barebox_ratp_cmd_end = .;
-
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS } > ram
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS } > ram
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	.barebox_exitcalls : { EXITCALLS } > ram
-	__barebox_exitcalls_end = .;
-
-	___usymtab_start = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS } > ram
+	.barebox_exitcalls : { BAREBOX_EXITCALLS } > ram
 	__usymtab : { BAREBOX_SYMS } > ram
-	___usymtab_end = .;
-
 	.dtb : { BAREBOX_DTB } > ram
 
 	__etext = .; /* End of text and rodata section */
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 12b551e685..73e4bde434 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -100,29 +100,12 @@ SECTIONS
   PROVIDE (edata = .);
 
   . = .;
-  __barebox_cmd_start = .;
   .barebox_cmd : { BAREBOX_CMDS }
-  __barebox_cmd_end = .;
-
-  __barebox_ratp_cmd_start = .;
   .barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-  __barebox_ratp_cmd_end = .;
-
-  __barebox_magicvar_start = .;
   .barebox_magicvar : { BAREBOX_MAGICVARS }
-  __barebox_magicvar_end = .;
-
-  __barebox_initcalls_start = .;
-  .barebox_initcalls : { INITCALLS }
-  __barebox_initcalls_end = .;
-
-  __barebox_exitcalls_start = .;
-  .barebox_exitcalls : { EXITCALLS }
-  __barebox_exitcalls_end = .;
-
-  __usymtab_start = .;
+  .barebox_initcalls : { BAREBOX_INITCALLS }
+  .barebox_exitcalls : { BAREBOX_EXITCALLS }
   __usymtab : { BAREBOX_SYMS }
-  __usymtab_end = .;
 
   __start___ex_table = .;
   __ex_table : { *(__ex_table) }
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index 30a1c571d7..1874319e71 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -101,25 +101,11 @@ SECTIONS
   }
 
   . = .;
-  __barebox_cmd_start = .;
   .barebox_cmd : { BAREBOX_CMDS }
-  __barebox_cmd_end = .;
-
-  __barebox_ratp_cmd_start = .;
   .barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-  __barebox_ratp_cmd_end = .;
-
-  __barebox_initcalls_start = .;
-  .barebox_initcalls : { INITCALLS }
-  __barebox_initcalls_end = .;
-
-  __barebox_exitcalls_start = .;
-  .barebox_exitcalls : { EXITCALLS }
-  __barebox_exitcalls_end = .;
-
-  __usymtab_start = .;
+  .barebox_initcalls : { BAREBOX_INITCALLS }
+  .barebox_exitcalls : { BAREBOX_EXITCALLS }
   __usymtab : { BAREBOX_SYMS }
-  __usymtab_end = .;
 
   . = .;
   __start___ex_table = .;
diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 10c19f15de..23e4468e2f 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -44,25 +44,11 @@ SECTIONS
 	.got : { *(.got*) }
 
 	. = .;
-	__barebox_cmd_start = .;
 	.barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
-
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
-
-	__barebox_initcalls_start = .;
-	.barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	.barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
-
-	__usymtab_start = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 	__usymtab : { BAREBOX_SYMS }
-	__usymtab_end = .;
 
 	.rela.dyn : { *(.rela*) }
 
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 80e27fe87d..bdce8ecbd6 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -3,29 +3,19 @@
 SECTIONS
 {
 	. = ALIGN(64);
-	__barebox_initcalls_start = .;
-	__barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
 
 	. = ALIGN(64);
-	__barebox_exitcalls_start = .;
-	__barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 
 	. = ALIGN(64);
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
 
 	. = ALIGN(64);
-	__barebox_cmd_start = .;
 	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
 
 	. = ALIGN(64);
-	__barebox_ratp_cmd_start = .;
 	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	__barebox_ratp_cmd_end = .;
 }
 
 INSERT BEFORE .rodata;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 6ee9342f47..d26f060a3e 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -165,44 +165,32 @@ SECTIONS
 	} > barebox
 
 	.barebox_cmd : AT ( LOADADDR(.got) + SIZEOF (.got) ) {
-		__barebox_cmd_start = .;
 		BAREBOX_CMDS
-		__barebox_cmd_end = .;
 		. = ALIGN(4);
 	} > barebox
 
 	.barebox_ratp_cmd : AT ( LOADADDR(.got) + SIZEOF (.got) ) {
-		__barebox_ratp_cmd_start = .;
 		BAREBOX_RATP_CMDS
-		__barebox_ratp_cmd_end = .;
 		. = ALIGN(4);
 	} > barebox
 
 	.barebox_magicvars : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
-		__barebox_magicvar_start = .;
 		BAREBOX_MAGICVARS
-		__barebox_magicvar_end = .;
 		. = ALIGN(4);
 	} > barebox
 
 	.barebox_initcalls : AT ( LOADADDR(.barebox_magicvars) + SIZEOF (.barebox_magicvars) ) {
-		__barebox_initcalls_start = .;
-		INITCALLS
-		__barebox_initcalls_end = .;
+		BAREBOX_INITCALLS
 		. = ALIGN(4);
 	} > barebox
 
 	.barebox_exitcalls : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
-		__barebox_exitcalls_start = .;
-		EXITCALLS
-		__barebox_exitcalls_end = .;
+		BAREBOX_EXITCALLS
 		. = ALIGN(4);
 	} > barebox
 
 	.__usymtab : AT ( LOADADDR(.barebox_exitcalls) + SIZEOF (.barebox_exitcalls) ) {
-		__usymtab_start = .;
 		BAREBOX_SYMS
-		__usymtab_end = .;
 		. = ALIGN(4);
 	} > barebox
 
diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
index 9477aa7d73..a5874c448b 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -52,28 +52,17 @@ SECTIONS
 
 	. = ALIGN(64);
 
-	__barebox_initcalls_start = .;
-	__barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	__barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 
 	. = ALIGN(64);
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
 
 	. = ALIGN(64);
-	__barebox_cmd_start = .;
 	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
 
 	. = ALIGN(64);
-	__barebox_ratp_cmd_start = .;
 	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	__barebox_ratp_cmd_end = .;
 
 	. = ALIGN(4096);
 	.dynamic : { *(.dynamic) }
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
index 90b6b9f3f1..b00cb98c97 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -54,28 +54,17 @@ SECTIONS
 
 	. = ALIGN(64);
 
-	__barebox_initcalls_start = .;
-	__barebox_initcalls : { INITCALLS }
-	__barebox_initcalls_end = .;
-
-	__barebox_exitcalls_start = .;
-	__barebox_exitcalls : { EXITCALLS }
-	__barebox_exitcalls_end = .;
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
 
 	. = ALIGN(64);
-	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
-	__barebox_magicvar_end = .;
 
 	. = ALIGN(64);
-	__barebox_cmd_start = .;
 	__barebox_cmd : { BAREBOX_CMDS }
-	__barebox_cmd_end = .;
 
 	. = ALIGN(64);
-	__barebox_ratp_cmd_start = .;
 	__barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
-	__barebox_ratp_cmd_end = .;
 
 	. = ALIGN(4096);
 	.dynamic : { *(.dynamic) }
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index c9fb8f47ae..0784048eb6 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -16,7 +16,8 @@
 #define PRE_IMAGE
 #endif
 
-#define INITCALLS			\
+#define BAREBOX_INITCALLS			\
+	__barebox_initcalls_start = .;		\
 	KEEP(*(.initcall.0))			\
 	KEEP(*(.initcall.1))			\
 	KEEP(*(.initcall.2))			\
@@ -31,24 +32,39 @@
 	KEEP(*(.initcall.11))			\
 	KEEP(*(.initcall.12))			\
 	KEEP(*(.initcall.13))			\
-	KEEP(*(.initcall.14))
+	KEEP(*(.initcall.14))			\
+	__barebox_initcalls_end = .;
 
-#define EXITCALLS			\
+#define BAREBOX_EXITCALLS			\
+	__barebox_exitcalls_start = .;		\
 	KEEP(*(.exitcall.0))			\
 	KEEP(*(.exitcall.1))			\
 	KEEP(*(.exitcall.2))			\
 	KEEP(*(.exitcall.3))			\
 	KEEP(*(.exitcall.4))			\
 	KEEP(*(.exitcall.5))			\
-	KEEP(*(.exitcall.6))
-
-#define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
-
-#define BAREBOX_RATP_CMDS	KEEP(*(SORT_BY_NAME(.barebox_ratp_cmd*)))
-
-#define BAREBOX_SYMS	KEEP(*(__usymtab))
-
-#define BAREBOX_MAGICVARS	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))
+	KEEP(*(.exitcall.6))			\
+	__barebox_exitcalls_end = .;
+
+#define BAREBOX_CMDS				\
+	__barebox_cmd_start = .;		\
+	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))	\
+	__barebox_cmd_end = .;
+
+#define BAREBOX_RATP_CMDS			\
+	__barebox_ratp_cmd_start = .;		\
+	KEEP(*(SORT_BY_NAME(.barebox_ratp_cmd*)))	\
+	__barebox_ratp_cmd_end = .;
+
+#define BAREBOX_SYMS				\
+	__usymtab_start = .;			\
+	KEEP(*(__usymtab))			\
+	__usymtab_end = .;
+
+#define BAREBOX_MAGICVARS			\
+	__barebox_magicvar_start = .;		\
+	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))	\
+	__barebox_magicvar_end = .;
 
 #define BAREBOX_CLK_TABLE			\
 	. = ALIGN(8);				\
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
