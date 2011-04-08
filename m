Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000192-IR
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:12 +0200
Message-Id: <1302274579-11158-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] env: Make environment variable support optional
To: barebox@lists.infradead.org

Environment variables are only useful in interactive environments.
Make it optional on our way to support a noninteractive barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig      |    2 ++
 common/Kconfig        |    5 +++++
 common/Makefile       |    2 +-
 include/environment.h |   12 ++++++++++++
 4 files changed, 20 insertions(+), 1 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 9d0c72d..a443501 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -29,11 +29,13 @@ config CMD_LOADENV
 	prompt "loadenv"
 
 config CMD_EXPORT
+	depends on ENVIRONMENT_VARIABLES
 	tristate
 	prompt "export"
 
 config CMD_PRINTENV
 	tristate
+	depends on ENVIRONMENT_VARIABLES
 	prompt "printenv"
 
 config CMD_READLINE
diff --git a/common/Kconfig b/common/Kconfig
index ac83231..b493a31 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -62,6 +62,9 @@ config LOCALVERSION_AUTO
 config BOARDINFO
 	string
 
+config ENVIRONMENT_VARIABLES
+	bool "environment variables support"
+
 menu "memory layout                 "
 
 config HAVE_MMU
@@ -219,12 +222,14 @@ choice
 
 	config SHELL_HUSH
 		bool "hush parser"
+		select ENVIRONMENT_VARIABLES
 		help
 		  Enable hush support. This is the most advanced shell available
 		  for barebox.
 
 	config SHELL_SIMPLE
 		bool "Simple parser"
+		select ENVIRONMENT_VARIABLES
 		help
 		  simple shell. No if/then, no return values from commands, no loops
 endchoice
diff --git a/common/Makefile b/common/Makefile
index 3fc66f4..c8a4332 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -15,7 +15,7 @@ obj-y += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
 obj-$(CONFIG_DIGEST) += digest.o
-obj-y += env.o
+obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
 obj-$(CONFIG_CMD_BOOTM) += image.o
 obj-y += startup.o
 obj-y += misc.o
diff --git a/include/environment.h b/include/environment.h
index 21a7ffa..1f22fcb 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -44,8 +44,20 @@ struct env_context *get_current_context(void);
 char *var_val(struct variable_d *);
 char *var_name(struct variable_d *);
 
+#ifdef CONFIG_ENVIRONMENT_VARIABLES
 const char *getenv(const char *);
 int setenv(const char *, const char *);
+#else
+static inline char *getenv(const char *var)
+{
+	return NULL;
+}
+
+static inline int setenv(const char *var, const char *val)
+{
+	return 0;
+}
+#endif
 
 int env_pop_context(void);
 int env_push_context(void);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
