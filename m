Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PiRWI-0001Tw-Dp
	for barebox@lists.infradead.org; Thu, 27 Jan 2011 13:04:16 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 27 Jan 2011 14:02:23 +0100
Message-Id: <1296133343-7834-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1296133343-7834-1-git-send-email-plagnioj@jcrosoft.com>
References: <1296133343-7834-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] cmdline: add section initsetup_calls to be able to
	discard them
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

so no need to use ifdef evenif you use enable modules support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/lib/barebox.lds.S                |    3 +++
 arch/blackfin/boards/ipe337/barebox.lds.S |    3 +++
 arch/ppc/boards/pcm030/barebox.lds.S      |    3 +++
 arch/sandbox/board/barebox.lds.S          |    2 ++
 arch/sandbox/lib/barebox.lds.S            |    2 ++
 arch/x86/lib/barebox.lds.S                |    7 ++++++-
 include/asm-generic/barebox.lds.h         |    6 ++++++
 include/init.h                            |    6 ++++++
 8 files changed, 31 insertions(+), 1 deletions(-)

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 72d1306..1dadf80 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -68,6 +68,9 @@ SECTIONS
 	.initsetup : { INIT_SETUP }
 	__setup_end = .;
 
+	. = ALIGN(4);
+	.initsetup_calls : { INIT_SETUP_CALL }
+
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index f2787e8..2c6b87c 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -79,6 +79,9 @@ SECTIONS
 	.initsetup : { INIT_SETUP }
 	__setup_end = .;
 
+	. = ALIGN(4);
+	.initsetup_calls : { INIT_SETUP_CALL }
+
 	___usymtab_start = .;
 	__usymtab : { BAREBOX_SYMS }
 	___usymtab_end = .;
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 4adf9fb..56bed84 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -107,6 +107,9 @@ SECTIONS
   __barebox_initcalls_end = .;
   __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start) >> 2;
 
+  . = ALIGN(4);
+  .initsetup_calls : { INIT_SETUP_CALL }
+
   __setup_start = .;
   .initsetup : { INIT_SETUP }
   __setup_end = .;
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 7dae3e9..844d34d 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -79,6 +79,8 @@ SECTIONS
   .initsetup : { INIT_SETUP }
   __setup_end = .;
   . = ALIGN(64);
+  .initsetup_calls : { INIT_SETUP_CALL }
+  . = ALIGN(64);
   __barebox_cmd_start = .;
   __barebox_cmd : { BAREBOX_CMDS }
   __barebox_cmd_end = .;
diff --git a/arch/sandbox/lib/barebox.lds.S b/arch/sandbox/lib/barebox.lds.S
index 7dae3e9..844d34d 100644
--- a/arch/sandbox/lib/barebox.lds.S
+++ b/arch/sandbox/lib/barebox.lds.S
@@ -79,6 +79,8 @@ SECTIONS
   .initsetup : { INIT_SETUP }
   __setup_end = .;
   . = ALIGN(64);
+  .initsetup_calls : { INIT_SETUP_CALL }
+  . = ALIGN(64);
   __barebox_cmd_start = .;
   __barebox_cmd : { BAREBOX_CMDS }
   __barebox_cmd_end = .;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index 1b275ad..2a7e39f 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -184,7 +184,12 @@ SECTIONS
 		. = ALIGN(4);
 	} > barebox
 
-	.__usymtab : AT ( LOADADDR(.initsetup) + SIZEOF (.initsetup) ) {
+	.initsetup_calls : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
+		. : { INIT_SETUP_CALL }
+		. = ALIGN(4);
+	} > barebox
+
+	.__usymtab : AT ( LOADADDR(.initsetup_calls) + SIZEOF (.initsetup_calls) ) {
 		__usymtab_start = .;
 		BAREBOX_SYMS
 		__usymtab_end = .;
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 18eab31..d963453 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -7,7 +7,13 @@
 #define PRE_IMAGE
 #endif
 
+#ifdef CONFIG_BOOT_CMDLINE
 #define INIT_SETUP	KEEP(*(.init_setup))
+#define INIT_SETUP_CALL	KEEP(*(.init_setup_call))
+#else
+#define INIT_SETUP
+#define INIT_SETUP_CALL
+#endif
 
 #define INITCALLS			\
 	KEEP(*(.initcall.0))			\
diff --git a/include/init.h b/include/init.h
index 53148fa..f832f24 100644
--- a/include/init.h
+++ b/include/init.h
@@ -46,6 +46,7 @@ typedef int (*initcall_t)(void);
 
 #define __initconst	__section(.rodata)
 
+#ifdef CONFIG_BOOT_CMDLINE
 struct obs_kernel_param {
 	const char *str;
 	int (*setup_func)(char *);
@@ -72,6 +73,11 @@ struct obs_kernel_param {
 extern int parse_args(const char *name,
 		      char *args,
 		      int (*unknown)(char *param, char *val));
+#define __setup_call	__section(.init_setup_call)
+#else
+#define __setup_call	__section(.init_setup_call) __maybe_unused
+#define __setup(str, fn)
+#endif
 #endif
 
 #endif /* _INIT_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
