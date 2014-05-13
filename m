Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22c.google.com ([2a00:1450:4013:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk816-0001u9-MY
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:54 +0000
Received: by mail-ee0-f44.google.com with SMTP id c41so123487eek.17
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:30 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:53 +0200
Message-Id: <1399969739-10355-14-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 13/19] commands: HUSH_GETOPT -> CMD_GETOPT
To: barebox@lists.infradead.org

* this compile option actually turns on a command, so name it
  accordingly
* also move the Kconfig definition into commands/Kconfig, thus
  placing getopt into the "Shell scripting commands" section
* while at it, improve Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/configs/chumbyone_defconfig            |    2 +-
 arch/arm/configs/mioa701_defconfig              |    2 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig |    2 +-
 arch/arm/configs/phytec-phycard-omap4_defconfig |    2 +-
 arch/arm/configs/solidrun_cubox_defconfig       |    2 +-
 arch/arm/configs/tx51stk5_defconfig             |    2 +-
 arch/mips/configs/dlink-dir-320_defconfig       |    2 +-
 arch/mips/configs/loongson-ls1b_defconfig       |    2 +-
 arch/mips/configs/qemu-malta_defconfig          |    2 +-
 arch/mips/configs/ritmix-rzx50_defconfig        |    2 +-
 arch/ppc/configs/da923rc_defconfig              |    2 +-
 commands/Kconfig                                |   15 +++++++++++++++
 common/Kconfig                                  |   11 ++---------
 common/hush.c                                   |    8 ++++----
 14 files changed, 32 insertions(+), 24 deletions(-)

diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index 228a7b2..f73ff8d 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -9,7 +9,7 @@ CONFIG_PROMPT="chumby:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index 841b9be..2046880 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -15,7 +15,7 @@ CONFIG_KALLSYMS=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index 95383aa..12bfd26 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -44,7 +44,7 @@ CONFIG_SHELL_HUSH=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="> "
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
index 2b7548b..e3e7688 100644
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
@@ -11,7 +11,7 @@ CONFIG_PROMPT="barebox> "
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_TIMESTAMP is not set
diff --git a/arch/arm/configs/solidrun_cubox_defconfig b/arch/arm/configs/solidrun_cubox_defconfig
index eca7d7f..2937949 100644
--- a/arch/arm/configs/solidrun_cubox_defconfig
+++ b/arch/arm/configs/solidrun_cubox_defconfig
@@ -12,7 +12,7 @@ CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
 CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index b05c01d..5c7c489 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -37,7 +37,7 @@ CONFIG_LONGHELP=y
 CONFIG_SHELL_HUSH=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DYNAMIC_CRC_TABLE=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index 3cd16c9..c35ea18 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -4,7 +4,7 @@ CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
diff --git a/arch/mips/configs/loongson-ls1b_defconfig b/arch/mips/configs/loongson-ls1b_defconfig
index bc48aba..8e04170 100644
--- a/arch/mips/configs/loongson-ls1b_defconfig
+++ b/arch/mips/configs/loongson-ls1b_defconfig
@@ -8,7 +8,7 @@ CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 1b9ee9a..3206222 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -6,7 +6,7 @@ CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index 7691bae..62f23b2 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -6,7 +6,7 @@ CONFIG_PBL_IMAGE=y
 CONFIG_BAUDRATE=57600
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
diff --git a/arch/ppc/configs/da923rc_defconfig b/arch/ppc/configs/da923rc_defconfig
index 3b5292a..cdcc10e 100644
--- a/arch/ppc/configs/da923rc_defconfig
+++ b/arch/ppc/configs/da923rc_defconfig
@@ -3,7 +3,7 @@ CONFIG_DA923RC=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_BANNER=y
 CONFIG_CMD_READLINE=y
-CONFIG_HUSH_GETOPT=y
+CONFIG_CMD_GETOPT=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/commands/Kconfig b/commands/Kconfig
index 47ac352..a8f081e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -951,6 +951,21 @@ config CMD_FALSE
 	help
 	  Do nothing, unsuccessfully
 
+config CMD_GETOPT
+	bool
+	depends on SHELL_HUSH
+	prompt "getopt"
+	help
+	  Parse option arguments
+
+	  Usage: getopt OPTSTRING VAR
+
+	  OPTSTRING contains the option letters. Add a colon to an
+	  options if this Option has a required argument or two colons
+	  for an optional argument. The Current option is saved in
+	  VAR, arguments are saved in $OPTARG. Any n-option arguments
+	  can be accessed starting from $1.
+
 config CMD_LET
 	tristate
 	prompt "let"
diff --git a/common/Kconfig b/common/Kconfig
index 20ce60c..7a92a59 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -369,13 +369,6 @@ config HUSH_FANCY_PROMPT
 	  Allow to set PS1 from the command line. PS1 can have several escaped commands
 	  like \h for the 'model' string or \w for the current working directory.
 
-config HUSH_GETOPT
-	bool
-	depends on SHELL_HUSH
-	prompt "enable builtin getopt"
-	help
-	  This enables a getopt function builtin to hush.
-
 config CMDLINE_EDITING
 	depends on !SHELL_NONE
 	bool
@@ -586,7 +579,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	bool
 	depends on DEFAULT_ENVIRONMENT
 	depends on SHELL_HUSH
-	select HUSH_GETOPT
+	select CMD_GETOPT
 	select GLOB
 	select GLOB_SORT
 	select CMD_GLOBAL
@@ -616,7 +609,7 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	depends on !HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on DEFAULT_ENVIRONMENT
 	depends on SHELL_HUSH
-	select HUSH_GETOPT
+	select CMD_GETOPT
 	select CMD_CRC
 	select CMD_CRC_CMP
 	select CMD_AUTOMOUNT if HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/common/hush.c b/common/hush.c
index 92f9576..09239cd 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -533,7 +533,7 @@ static void setup_string_in_str(struct in_str *i, const char *s)
 	i->p = s;
 }
 
-#ifdef CONFIG_HUSH_GETOPT
+#ifdef CONFIG_CMD_GETOPT
 static int builtin_getopt(struct p_context *ctx, struct child_prog *child,
 		int argc, char *argv[])
 {
@@ -823,7 +823,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	remove_quotes(globbuf.gl_pathc, globbuf.gl_pathv);
 
 	if (!strcmp(globbuf.gl_pathv[0], "getopt") &&
-			IS_ENABLED(CONFIG_HUSH_GETOPT)) {
+			IS_ENABLED(CONFIG_CMD_GETOPT)) {
 		ret = builtin_getopt(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
 	} else if (!strcmp(globbuf.gl_pathv[0], "exit")) {
 		ret = builtin_exit(ctx, child, globbuf.gl_pathc, globbuf.gl_pathv);
@@ -1154,7 +1154,7 @@ static void initialize_context(struct p_context *ctx)
 
 static void release_context(struct p_context *ctx)
 {
-#ifdef CONFIG_HUSH_GETOPT
+#ifdef CONFIG_CMD_GETOPT
 	struct option *opt, *tmp;
 
 	list_for_each_entry_safe(opt, tmp, &ctx->options, list) {
@@ -2000,7 +2000,7 @@ BAREBOX_CMD_START(exit)
 	BAREBOX_CMD_HELP(cmd_exit_help)
 BAREBOX_CMD_END
 
-#ifdef CONFIG_HUSH_GETOPT
+#ifdef CONFIG_CMD_GETOPT
 BAREBOX_CMD_HELP_START(getopt)
 BAREBOX_CMD_HELP_TEXT("OPTSTRING contains the option letters. Add a colon to an options if this")
 BAREBOX_CMD_HELP_TEXT("option has a required argument or two colons for an optional argument. The")
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
