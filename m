Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUdYN-0008H6-KU
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 12:09:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Nov 2011 13:09:36 +0100
Message-Id: <1322395780-21916-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
References: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] add magicvar command
To: barebox@lists.infradead.org

The magicvar command gives an overview about all environment variables
with a special meaning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/barebox.lds.S                |    4 +++
 arch/blackfin/boards/ipe337/barebox.lds.S |    4 +++
 arch/mips/lib/barebox.lds.S               |    4 +++
 arch/nios2/cpu/barebox.lds.S              |    4 +++
 arch/ppc/boards/pcm030/barebox.lds.S      |    4 +++
 arch/sandbox/board/barebox.lds.S          |    5 ++++
 arch/x86/lib/barebox.lds.S                |    9 +++++++-
 commands/Kconfig                          |   14 ++++++++++++
 commands/Makefile                         |    1 +
 commands/magicvar.c                       |   20 ++++++++++++++++++
 include/asm-generic/barebox.lds.h         |    2 +
 include/magicvar.h                        |   32 +++++++++++++++++++++++++++++
 12 files changed, 102 insertions(+), 1 deletions(-)
 create mode 100644 commands/magicvar.c
 create mode 100644 include/magicvar.h

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 81a9123..f05f345 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -80,6 +80,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 571eeb1..25ca988 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -71,6 +71,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	___barebox_cmd_end = .;
 
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
 	___barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	___barebox_initcalls_end = .;
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index ba4c0af..7746ea0 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -56,6 +56,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index 2b626fb..934eaf7 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -56,6 +56,10 @@ SECTIONS
 	.barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
 
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
 	__barebox_initcalls_start = .;
 	.barebox_initcalls : { INITCALLS }
 	__barebox_initcalls_end = .;
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 4aacfc5..7dda039 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -102,6 +102,10 @@ SECTIONS
   .barebox_cmd : { BAREBOX_CMDS }
   __barebox_cmd_end = .;
 
+  __barebox_magicvar_start = .;
+  .barebox_magicvar : { BAREBOX_MAGICVARS }
+  __barebox_magicvar_end = .;
+
   __barebox_initcalls_start = .;
   .barebox_initcalls : { INITCALLS }
   __barebox_initcalls_end = .;
diff --git a/arch/sandbox/board/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
index 76975ee..db5b7de 100644
--- a/arch/sandbox/board/barebox.lds.S
+++ b/arch/sandbox/board/barebox.lds.S
@@ -8,6 +8,11 @@ SECTIONS
 	__barebox_initcalls_end = .;
 
 	. = ALIGN(64);
+	__barebox_magicvar_start = .;
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	__barebox_magicvar_end = .;
+
+	. = ALIGN(64);
 	__barebox_cmd_start = .;
 	__barebox_cmd : { BAREBOX_CMDS }
 	__barebox_cmd_end = .;
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index fffc3a5..716cea6 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -170,7 +170,14 @@ SECTIONS
 		. = ALIGN(4);
 	} > barebox
 
-	.barebox_initcalls : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
+	.barebox_magicvars : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
+		__barebox_magicvar_start = .;
+		.barebox_magicvar : { BAREBOX_MAGICVARS }
+		__barebox_magicvar_end = .;
+		. = ALIGN(4);
+	} > barebox
+
+	.barebox_initcalls : AT ( LOADADDR(.barebox_magicvars) + SIZEOF (.barebox_magicvars) ) {
 		__barebox_initcalls_start = .;
 		INITCALLS
 		__barebox_initcalls_end = .;
diff --git a/commands/Kconfig b/commands/Kconfig
index 18ab840..78b9d2a 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -383,6 +383,20 @@ config CMD_HELP
 	default y
 	prompt "help"
 
+config CMD_MAGICVAR
+	tristate
+	prompt "magicvar"
+	help
+	  barebox has some shell variables with special meanings. This
+	  command shows the available magic variables.
+
+config CMD_MAGICVAR_HELP
+	bool
+	prompt "display description"
+	depends on CMD_MAGICVAR
+	help
+	  Also display a description to the magic variables
+
 config CMD_DEVINFO
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index 5c51916..9b3a349 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -58,3 +58,4 @@ obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
+obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
diff --git a/commands/magicvar.c b/commands/magicvar.c
new file mode 100644
index 0000000..31606d2
--- /dev/null
+++ b/commands/magicvar.c
@@ -0,0 +1,20 @@
+#include <common.h>
+#include <command.h>
+#include <magicvar.h>
+
+static int do_magicvar(struct command *cmdtp, int argc, char *argv[])
+{
+	struct magicvar *m;
+
+	for (m = &__barebox_magicvar_start;
+			m != &__barebox_magicvar_end;
+			m++)
+		printf("%-32s %s\n", m->name, m->description);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(magicvar)
+	.cmd		= do_magicvar,
+	.usage		= "List information about magic variables",
+BAREBOX_CMD_END
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 8aee5d2..5467d3a 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -24,3 +24,5 @@
 #define BAREBOX_CMDS	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))
 
 #define BAREBOX_SYMS	KEEP(*(__usymtab))
+
+#define BAREBOX_MAGICVARS	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))
diff --git a/include/magicvar.h b/include/magicvar.h
new file mode 100644
index 0000000..b119a75
--- /dev/null
+++ b/include/magicvar.h
@@ -0,0 +1,32 @@
+#ifndef __MAGIC_VARS_H
+#define __MAGIC_VARS_H
+
+#include <linux/stringify.h>
+
+struct magicvar {
+	const char *name;
+	const char *description;
+};
+
+extern struct magicvar __barebox_magicvar_start;
+extern struct magicvar __barebox_magicvar_end;
+
+#ifdef CONFIG_CMD_MAGICVAR_HELP
+#define MAGICVAR_DESCRIPTION(d)		(d)
+#else
+#define MAGICVAR_DESCRIPTION(d)		NULL
+#endif
+
+#ifdef CONFIG_CMD_MAGICVAR
+#define BAREBOX_MAGIC_VAR(_name, _description)			\
+extern const struct magicvar __barebox_magicvar_##_name;	\
+const struct magicvar __barebox_magicvar_##_name		\
+        __attribute__ ((unused,section (".barebox_magicvar_" __stringify(_name)))) = {	\
+        .name	= #_name,					\
+	.description = MAGICVAR_DESCRIPTION(_description),	\
+};
+#else
+#define BAREBOX_MAGICVAR(_name, _description)
+#endif
+
+#endif /* __MAGIC_VARS_H */
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
