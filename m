Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta5.messagelabs.com ([195.245.231.140])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC0yC-0002oV-4W
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 07:37:41 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 6 Jul 2015 09:36:43 +0200
Message-ID: <1436168207-6433-2-git-send-email-Herve.CODINA@celad.com>
In-Reply-To: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
References: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 1/4] exitcall: Add exitcall infrastructure
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

exitcall infrastructure is based on initcall infrastructure.
It allows to have and use exit call hooks on barebox shutdown.

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 arch/arm/lib/barebox.lds.S                |    4 ++++
 arch/blackfin/boards/ipe337/barebox.lds.S |    4 ++++
 arch/efi/lib/elf_ia32_efi.lds.S           |    4 ++++
 arch/efi/lib/elf_x86_64_efi.lds.S         |    4 ++++
 arch/mips/lib/barebox.lds.S               |    4 ++++
 arch/nios2/cpu/barebox.lds.S              |    4 ++++
 arch/openrisc/cpu/barebox.lds.S           |    4 ++++
 arch/ppc/boards/pcm030/barebox.lds.S      |    5 +++++
 arch/ppc/mach-mpc85xx/barebox.lds.S       |    5 +++++
 arch/sandbox/board/barebox.lds.S          |    5 +++++
 arch/x86/lib/barebox.lds.S                |    9 ++++++++-
 common/startup.c                          |   11 +++++++++++
 include/asm-generic/barebox.lds.h         |    9 +++++++++
 include/init.h                            |   15 +++++++++++++++
 14 files changed, 86 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index bb0354a..fa5c91e 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -89,6 +89,10 @@ SECTIONS
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
+	
+	__barebox_exitcalls_start = .;
+	.barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
 
 	__usymtab_start = .;
 	__usymtab : { BAREBOX_SYMS }
diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 9bb7cc4..89de339 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -75,6 +75,10 @@ SECTIONS
 	___barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	___barebox_initcalls_end = .;
+	
+	___barebox_exitcalls_start = .;
+	.barebox_exitcalls : { EXITCALLS }
+	___barebox_exitcalls_end = .;
 
 	___usymtab_start = .;
 	__usymtab : { BAREBOX_SYMS }
diff --git a/arch/efi/lib/elf_ia32_efi.lds.S b/arch/efi/lib/elf_ia32_efi.lds.S
index a5f6287..69f43f5 100644
--- a/arch/efi/lib/elf_ia32_efi.lds.S
+++ b/arch/efi/lib/elf_ia32_efi.lds.S
@@ -56,6 +56,10 @@ SECTIONS
 	__barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
 
+	__barebox_exitcalls_start = .;
+	__barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
+
 	. = ALIGN(64);
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
diff --git a/arch/efi/lib/elf_x86_64_efi.lds.S b/arch/efi/lib/elf_x86_64_efi.lds.S
index d48432d..9aa4e8d 100644
--- a/arch/efi/lib/elf_x86_64_efi.lds.S
+++ b/arch/efi/lib/elf_x86_64_efi.lds.S
@@ -58,6 +58,10 @@ SECTIONS
 	__barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
 
+	__barebox_exitcalls_start = .;
+	__barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
+
 	. = ALIGN(64);
 	__barebox_magicvar_start = .;
 	.barebox_magicvar : { BAREBOX_MAGICVARS }
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index c690e71..fdc0f1c 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -66,6 +66,10 @@ SECTIONS
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
+	
+	__barebox_exitcalls_start = .;
+	.barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
 
 	__usymtab_start = .;
 	__usymtab : { BAREBOX_SYMS }
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index 943c507..3d24130 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -62,6 +62,10 @@ SECTIONS
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
+	
+	__barebox_exitcalls_start = .;
+	.barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
 
 	___usymtab_start = .;
 	__usymtab : { BAREBOX_SYMS }
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index 9c353f3..f8dae10 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -64,6 +64,10 @@ SECTIONS
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS } > ram
 	__barebox_initcalls_end = .;
+	
+	__barebox_exitcalls_start = .;
+	.barebox_exitcalls : { EXITCALLS } > ram
+	__barebox_exitcalls_end = .;
 
 	___usymtab_start = .;
 	__usymtab : { BAREBOX_SYMS } > ram
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 1332ad1..dc71464 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -111,6 +111,11 @@ SECTIONS
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
   __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start) >> 2;
+  
+  __barebox_exitcalls_start = .;
+  .barebox_exitcalls : { EXITCALLS }
+  __barebox_exitcalls_end = .;
+  __exitcall_entries = (__barebox_exitcalls_end - __barebox_exitcalls_start) >> 2;
 
   __usymtab_start = .;
   __usymtab : { BAREBOX_SYMS }
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index 87ab7ac..f0894a1 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -108,6 +108,11 @@ SECTIONS
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
   __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start)>>2;
+  
+  __barebox_exitcalls_start = .;
+  .barebox_exitcalls : { EXITCALLS }
+  __barebox_exitcalls_end = .;
+  __exitcall_entries = (__barebox_exitcalls_end - __barebox_exitcalls_start)>>2;
 
   __usymtab_start = .;
   __usymtab : { BAREBOX_SYMS }
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index db5b7de..6eab4b7 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -6,6 +6,11 @@ SECTIONS
 	__barebox_initcalls_start = .;
 	__barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
+	
+	. = ALIGN(64);
+	__barebox_exitcalls_start = .;
+	__barebox_exitcalls : { EXITCALLS }
+	__barebox_exitcalls_end = .;
 
 	. = ALIGN(64);
 	__barebox_magicvar_start = .;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 6cf6b10..bf9ea78 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -184,8 +184,15 @@ SECTIONS
 		__barebox_initcalls_end = .;
 		. = ALIGN(4);
 	} > barebox
+	
+	.barebox_exitcalls : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
+		__barebox_exitcalls_start = .;
+		EXITCALLS
+		__barebox_exitcalls_end = .;
+		. = ALIGN(4);
+	} > barebox
 
-	.__usymtab : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
+	.__usymtab : AT ( LOADADDR(.barebox_exitcalls) + SIZEOF (.barebox_exitcalls) ) {
 		__usymtab_start = .;
 		BAREBOX_SYMS
 		__usymtab_end = .;
diff --git a/common/startup.c b/common/startup.c
index 6178fc5..676e435 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -44,6 +44,9 @@
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
+		  
+extern exitcall_t __barebox_exitcalls_start[], __barebox_exitcalls_end[];
+
 
 #if defined CONFIG_FS_RAMFS && defined CONFIG_FS_DEVFS
 static int mount_root(void)
@@ -140,6 +143,14 @@ void (*board_shutdown)(void);
  */
 void shutdown_barebox(void)
 {
+	exitcall_t *exitcall;
+	
+	for (exitcall = __barebox_exitcalls_start;
+			exitcall < __barebox_exitcalls_end; exitcall++) {
+		pr_debug("exitcall-> %pS\n", *exitcall);
+		(*exitcall)();
+	}
+	
 	devices_shutdown();
 #ifdef ARCH_SHUTDOWN
 	arch_shutdown();
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 00d6eca..6b9833b 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -38,6 +38,15 @@
 	KEEP(*(.initcall.13))			\
 	KEEP(*(.initcall.14))
 
+#define EXITCALLS			\
+	KEEP(*(.exitcall.0))			\
+	KEEP(*(.exitcall.1))			\
+	KEEP(*(.exitcall.2))			\
+	KEEP(*(.exitcall.3))			\
+	KEEP(*(.exitcall.4))			\
+	KEEP(*(.exitcall.5))			\
+	KEEP(*(.exitcall.6))
+	
 #define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
 
 #define BAREBOX_SYMS	KEEP(*(__usymtab))
diff --git a/include/init.h b/include/init.h
index f619c95..527d49a 100644
--- a/include/init.h
+++ b/include/init.h
@@ -7,17 +7,24 @@
 #define __init
 #define __initdata
 #define __initconst
+#define __exit
+#define __exitdata
 
 /* For assembly routines */
 #define __BARE_INIT	.section ".text_bare_init.text","ax"
 
 #ifndef __ASSEMBLY__
 typedef int (*initcall_t)(void);
+typedef void (*exitcall_t)(void);
 
 #define __define_initcall(level,fn,id) \
 	static initcall_t __initcall_##fn##id __attribute__((__used__)) \
 	__attribute__((__section__(".initcall." level))) = fn
 
+#define __define_exitcall(level,fn,id) \
+	static exitcall_t __exitcall_##fn##id __attribute__((__used__)) \
+	__attribute__((__section__(".exitcall." level))) = fn
+
 
 /*
  * A "pure" initcall has no dependencies on anything else, and purely
@@ -42,6 +49,14 @@ typedef int (*initcall_t)(void);
 #define environment_initcall(fn)	__define_initcall("13",fn,13)
 #define postenvironment_initcall(fn)	__define_initcall("14",fn,14)
 
+#define early_exitcall(fn)		__define_exitcall("0",fn,0)
+#define predevshutdown_exitcall(fn)	__define_exitcall("1",fn,1)
+#define devshutdown_exitcall(fn)	__define_exitcall("2",fn,2)
+#define postdevshutdown_exitcall(fn)	__define_exitcall("3",fn,3)
+#define prearchshutdown_exitcall(fn)	__define_exitcall("4",fn,4)
+#define archshutdown_exitcall(fn)	__define_exitcall("5",fn,5)
+#define postarchshutdown_exitcall(fn)	__define_exitcall("6",fn,6)
+
 /* section for code used very early when
  * - we're not running from where we linked at
  * - bss not cleared
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
