Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PiRWI-0001Ts-DX
	for barebox@lists.infradead.org; Thu, 27 Jan 2011 13:04:18 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 27 Jan 2011 14:02:22 +0100
Message-Id: <1296133343-7834-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] add command line boot support
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

for now just support static boot command support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/lib/barebox.lds.S                |    4 +
 arch/blackfin/boards/ipe337/barebox.lds.S |    4 +
 arch/ppc/boards/pcm030/barebox.lds.S      |    4 +
 arch/sandbox/board/barebox.lds.S          |    4 +
 arch/sandbox/lib/barebox.lds.S            |    4 +
 arch/x86/lib/barebox.lds.S                |    9 ++-
 common/Kconfig                            |   11 ++
 common/Makefile                           |    1 +
 common/params.c                           |  145 +++++++++++++++++++++++++++++
 common/startup.c                          |   65 +++++++++++++-
 include/asm-generic/barebox.lds.h         |    2 +
 include/init.h                            |   28 ++++++
 12 files changed, 279 insertions(+), 2 deletions(-)
 create mode 100644 common/params.c

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index cc74b2f..72d1306 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -64,6 +64,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__setup_start = .;
+	.initsetup : { INIT_SETUP }
+	__setup_end = .;
+
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 571eeb1..f2787e8 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -75,6 +75,10 @@ SECTIONS
 	.barebox_initcalls : { INITCALLS }
 	___barebox_initcalls_end = .;
 
+	__setup_start = .;
+	.initsetup : { INIT_SETUP }
+	__setup_end = .;
+
 	___usymtab_start = .;
 	__usymtab : { BAREBOX_SYMS }
 	___usymtab_end = .;
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 21bf4a7..4adf9fb 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -107,6 +107,10 @@ SECTIONS
   __barebox_initcalls_end = .;
   __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start) >> 2;
 
+  __setup_start = .;
+  .initsetup : { INIT_SETUP }
+  __setup_end = .;
+
   __usymtab_start = .;
   __usymtab : { BAREBOX_SYMS }
   __usymtab_end = .;
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 53e9f60..7dae3e9 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -75,6 +75,10 @@ SECTIONS
   __barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
   . = ALIGN(64);
+  __setup_start = .;
+  .initsetup : { INIT_SETUP }
+  __setup_end = .;
+  . = ALIGN(64);
   __barebox_cmd_start = .;
   __barebox_cmd : { BAREBOX_CMDS }
   __barebox_cmd_end = .;
diff --git a/arch/sandbox/lib/barebox.lds.S b/arch/sandbox/lib/barebox.lds.S
index 53e9f60..7dae3e9 100644
--- a/arch/sandbox/lib/barebox.lds.S
+++ b/arch/sandbox/lib/barebox.lds.S
@@ -75,6 +75,10 @@ SECTIONS
   __barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
   . = ALIGN(64);
+  __setup_start = .;
+  .initsetup : { INIT_SETUP }
+  __setup_end = .;
+  . = ALIGN(64);
   __barebox_cmd_start = .;
   __barebox_cmd : { BAREBOX_CMDS }
   __barebox_cmd_end = .;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index e0919a6..1b275ad 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -177,7 +177,14 @@ SECTIONS
 		. = ALIGN(4);
 	} > barebox
 
-	.__usymtab : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
+	.initsetup : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
+		__setup_start = .;
+		INIT_SETUP
+		__setup_end = .;
+		. = ALIGN(4);
+	} > barebox
+
+	.__usymtab : AT ( LOADADDR(.initsetup) + SIZEOF (.initsetup) ) {
 		__usymtab_start = .;
 		BAREBOX_SYMS
 		__usymtab_end = .;
diff --git a/common/Kconfig b/common/Kconfig
index 02bc67e..53a4230 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -224,8 +224,19 @@ choice
 		bool "Simple parser"
 		help
 		  simple shell. No if/then, no return values from commands, no loops
+
 endchoice
 
+config BOOT_CMDLINE
+	bool "barebox boot command string"
+	help
+
+config CMDLINE
+	string "Default barebox command string"
+	depends on BOOT_CMDLINE
+	default ""
+	help
+
 config GLOB
 	bool
 	prompt "hush globbing support"
diff --git a/common/Makefile b/common/Makefile
index 98c9d36..94816d5 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_DIGEST) += digest.o
 obj-y += env.o
 obj-$(CONFIG_CMD_BOOTM) += image.o
 obj-y += startup.o
+obj-$(CONFIG_BOOT_CMDLINE) += params.o
 obj-y += misc.o
 obj-y += memsize.o
 obj-$(CONFIG_MENU) += menu.o
diff --git a/common/params.c b/common/params.c
new file mode 100644
index 0000000..5541470
--- /dev/null
+++ b/common/params.c
@@ -0,0 +1,145 @@
+/* Helpers for initial module or kernel cmdline parsing
+   Copyright (C) 2001 Rusty Russell.
+
+    This program is free software; you can redistribute it and/or modify
+    it under the terms of the GNU General Public License as published by
+    the Free Software Foundation; either version 2 of the License, or
+    (at your option) any later version.
+
+    This program is distributed in the hope that it will be useful,
+    but WITHOUT ANY WARRANTY; without even the implied warranty of
+    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+    GNU General Public License for more details.
+
+    You should have received a copy of the GNU General Public License
+    along with this program; if not, write to the Free Software
+    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+*/
+#include <malloc.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <linux/ctype.h>
+
+static inline char dash2underscore(char c)
+{
+	if (c == '-')
+		return '_';
+	return c;
+}
+
+static inline int parameq(const char *input, const char *paramname)
+{
+	unsigned int i;
+	for (i = 0; dash2underscore(input[i]) == paramname[i]; i++)
+		if (input[i] == '\0')
+			return 1;
+	return 0;
+}
+
+static int parse_one(char *param,
+		     char *val,
+		     int (*handle_unknown)(char *param, char *val))
+{
+	if (handle_unknown) {
+		debug("Unknown argument: calling %p\n", handle_unknown);
+		return handle_unknown(param, val);
+	}
+
+	debug("Unknown argument `%s'\n", param);
+	return -ENOENT;
+}
+
+/* You can use " around spaces, but can't escape ". */
+/* Hyphens and underscores equivalent in parameter names. */
+static char *next_arg(char *args, char **param, char **val)
+{
+	unsigned int i, equals = 0;
+	int in_quote = 0, quoted = 0;
+	char *next;
+
+	if (*args == '"') {
+		args++;
+		in_quote = 1;
+		quoted = 1;
+	}
+
+	for (i = 0; args[i]; i++) {
+		if (isspace(args[i]) && !in_quote)
+			break;
+		if (equals == 0) {
+			if (args[i] == '=')
+				equals = i;
+		}
+		if (args[i] == '"')
+			in_quote = !in_quote;
+	}
+
+	*param = args;
+	if (!equals)
+		*val = NULL;
+	else {
+		args[equals] = '\0';
+		*val = args + equals + 1;
+
+		/* Don't include quotes in value. */
+		if (**val == '"') {
+			(*val)++;
+			if (args[i-1] == '"')
+				args[i-1] = '\0';
+		}
+		if (quoted && args[i-1] == '"')
+			args[i-1] = '\0';
+	}
+
+	if (args[i]) {
+		args[i] = '\0';
+		next = args + i + 1;
+	} else
+		next = args + i;
+
+	/* Chew up trailing spaces. */
+	return skip_spaces(next);
+}
+
+/* Args looks like "foo=bar,bar2 baz=fuz wiz". */
+int parse_args(const char *name,
+	       char *args,
+	       int (*unknown)(char *param, char *val))
+{
+	char *param, *val;
+
+	debug("Parsing ARGS: %s\n", args);
+
+	/* Chew leading spaces */
+	args = skip_spaces(args);
+
+	while (*args) {
+		int ret;
+
+		args = next_arg(args, &param, &val);
+		ret = parse_one(param, val, unknown);
+		switch (ret) {
+		case -ENOENT:
+			printk(KERN_ERR "%s: Unknown parameter `%s'\n",
+			       name, param);
+			return ret;
+		case -ENOSPC:
+			printk(KERN_ERR
+			       "%s: `%s' too large for parameter `%s'\n",
+			       name, val ?: "", param);
+			return ret;
+		case 0:
+			break;
+		default:
+			printk(KERN_ERR
+			       "%s: `%s' invalid for parameter `%s'\n",
+			       name, val ?: "", param);
+			return ret;
+		}
+	}
+
+	/* All parsed OK. */
+	return 0;
+}
diff --git a/common/startup.c b/common/startup.c
index aa76cb7..9667b50 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -41,6 +41,7 @@
 #include <reloc.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
+#include <asm/setup.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -112,6 +113,67 @@ static int mount_root(void)
 }
 fs_initcall(mount_root);
 
+#ifdef CONFIG_BOOT_CMDLINE
+extern const struct obs_kernel_param __setup_start[], __setup_end[];
+
+static int __init obsolete_checksetup(char *line)
+{
+	const struct obs_kernel_param *p;
+
+	p = __setup_start;
+	do {
+		int n = strlen(p->str);
+		if (!strncmp(line, p->str, n)) {
+			if (!p->setup_func) {
+				printk(KERN_WARNING "Parameter %s is obsolete,"
+				       " ignored\n", p->str);
+				return 1;
+			} else if (p->setup_func(line + n))
+				return 1;
+		}
+		p++;
+	} while (p < __setup_end);
+
+	return 0;
+}
+
+/*
+ * Unknown boot options get handed to init, unless they look like
+ * unused parameters (modprobe will find them in /proc/cmdline).
+ */
+static int __init unknown_bootoption(char *param, char *val)
+{
+	/* Change NUL term back to "=", to make "param" the whole string. */
+	if (val) {
+		/* param=val or param="val"? */
+		if (val == param+strlen(param)+1)
+			val[-1] = '=';
+		else if (val == param+strlen(param)+2) {
+			val[-2] = '=';
+			memmove(val-1, val, strlen(val)+1);
+			val--;
+		} else
+			BUG();
+	}
+
+	/* Handle obsolete-style parameters */
+	obsolete_checksetup(param);
+	return 0;
+}
+
+void __init parse_param(void)
+{
+	static __initdata char tmp_cmdline[COMMAND_LINE_SIZE];
+
+	strlcpy(tmp_cmdline, CONFIG_CMDLINE, COMMAND_LINE_SIZE);
+	parse_args("Booting Barebox", tmp_cmdline, unknown_bootoption);
+}
+#else
+static void inline parse_param(void)
+{
+}
+#endif
+
 void start_barebox (void)
 {
 	initcall_t *initcall;
@@ -128,6 +190,8 @@ void start_barebox (void)
 	init_data_ptr = &__early_init_data_begin;
 #endif /* CONFIG_HAS_EARLY_INIT */
 
+	parse_param();
+
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
 		PUTHEX_LL(*initcall);
@@ -180,4 +244,3 @@ void shutdown_barebox(void)
 	arch_shutdown();
 #endif
 }
-
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index fc141a4..18eab31 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -7,6 +7,8 @@
 #define PRE_IMAGE
 #endif
 
+#define INIT_SETUP	KEEP(*(.init_setup))
+
 #define INITCALLS			\
 	KEEP(*(.initcall.0))			\
 	KEEP(*(.initcall.1))			\
diff --git a/include/init.h b/include/init.h
index 2f4fac1..53148fa 100644
--- a/include/init.h
+++ b/include/init.h
@@ -44,6 +44,34 @@ typedef int (*initcall_t)(void);
  */
 #define __bare_init          __section(.text_bare_init.text)
 
+#define __initconst	__section(.rodata)
+
+struct obs_kernel_param {
+	const char *str;
+	int (*setup_func)(char *);
+};
+
+/*
+ * Only for really core code.  See moduleparam.h for the normal way.
+ *
+ * Force the alignment so the compiler doesn't space elements of the
+ * obs_kernel_param "array" too far apart in .init.setup.
+ */
+#define __setup_param(str, unique_id, fn)			\
+	static const char __setup_str_##unique_id[] __initconst	\
+		__aligned(1) = str; \
+	static struct obs_kernel_param __setup_##unique_id	\
+		__used __section(.init_setup)			\
+		__attribute__((aligned((sizeof(long)))))	\
+		= { __setup_str_##unique_id, fn}
+
+#define __setup(str, fn)					\
+	__setup_param(str, fn, fn)
+
+/* Called on module insert or kernel boot */
+extern int parse_args(const char *name,
+		      char *args,
+		      int (*unknown)(char *param, char *val));
 #endif
 
 #endif /* _INIT_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
