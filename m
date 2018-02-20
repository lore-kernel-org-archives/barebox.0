Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eo2EB-0007yX-J9
 for barebox@lists.infradead.org; Tue, 20 Feb 2018 07:20:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Feb 2018 08:20:20 +0100
Message-Id: <20180220072020.23121-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] console: move global.allow_color handling to C code
To: Barebox List <barebox@lists.infradead.org>

We have global.allow_color, but this is limited to the environment
only. Move creation and handling of this variable to C code so that
we can add support for colored output to commands/console controlled
by the same variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                        |  8 ++++++++
 common/console_common.c               | 17 +++++++++++++++--
 defaultenv/defaultenv-2-base/bin/init |  3 ---
 include/console.h                     |  2 ++
 4 files changed, 25 insertions(+), 5 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 93b1d89274..d44f40cff3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -744,6 +744,14 @@ config CONSOLE_ACTIVATE_NONE
 
 endchoice
 
+config CONSOLE_ALLOW_COLOR
+	prompt "Allow colored console output during boot"
+	bool
+	help
+	  If enabled, colored output is allowed during boot. This is the
+	  compile time default for colored console output. After boot it
+	  can be controlled using global.allow_color.
+
 config PBL_CONSOLE
 	depends on PBL_IMAGE
 	depends on !CONSOLE_NONE
diff --git a/common/console_common.c b/common/console_common.c
index d051458de4..0202345a62 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -145,15 +145,28 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 	return ret;
 }
 
-static int loglevel_init(void)
+#ifdef CONFIG_CONSOLE_ALLOW_COLOR
+static unsigned int __console_allow_color = 1;
+#else
+static unsigned int __console_allow_color = 0;
+#endif
+
+bool console_allow_color(void)
+{
+	return __console_allow_color;
+}
+
+static int console_common_init(void)
 {
 	if (IS_ENABLED(CONFIG_LOGBUF))
 		globalvar_add_simple_int("log_max_messages",
 				&barebox_log_max_messages, "%d");
 
+	globalvar_add_simple_bool("allow_color", &__console_allow_color);
+
 	return globalvar_add_simple_int("loglevel", &barebox_loglevel, "%d");
 }
-device_initcall(loglevel_init);
+device_initcall(console_common_init);
 
 void log_print(unsigned flags)
 {
diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 7af3c7d95c..6f3a34dbac 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -6,7 +6,6 @@ global hostname
 global user
 global autoboot_timeout
 global boot.default
-global allow_color
 global linux.bootargs.base
 global linux.bootargs.console
 #linux.bootargs.dyn.* will be cleared at the beginning of boot
@@ -20,8 +19,6 @@ magicvar -a global.user "username (used in network filenames)"
 [ -z "${global.autoboot_timeout}" ] && global.autoboot_timeout=3
 magicvar -a global.autoboot_timeout "timeout in seconds before automatic booting"
 [ -z "${global.boot.default}" ] && global.boot.default=net
-[ -z "${global.allow_color}" ] && global.allow_color=true
-magicvar -a global.allow_color "Allow color on the console (boolean)"
 [ -z "${global.editcmd}" ] && global.editcmd=sedit
 
 [ -e /env/config-board ] && /env/config-board
diff --git a/include/console.h b/include/console.h
index 724168e07c..a8b2663a4c 100644
--- a/include/console.h
+++ b/include/console.h
@@ -94,4 +94,6 @@ void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx);
 static inline void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx) {}
 #endif
 
+bool console_allow_color(void);
+
 #endif
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
