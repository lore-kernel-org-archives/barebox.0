Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJF7F-0008VT-IF
 for barebox@lists.infradead.org; Wed, 24 Apr 2019 10:27:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Apr 2019 12:26:48 +0200
Message-Id: <20190424102650.9257-2-s.hauer@pengutronix.de>
In-Reply-To: <20190424102650.9257-1-s.hauer@pengutronix.de>
References: <20190424102650.9257-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] console: forbid ctrlc during startup
To: Barebox List <barebox@lists.infradead.org>

When global.autoboot_abort_key is set to ctrl-c then the user is
expected to press ctrl-c to get to the prompt. The user might press
ctrl-c before the init script runs the "timeout" command. In this
case the init script is aborted at arbitrary places which leads to
inconsistent results depending on the place it is aborted.

This patch introduces the global.console.ctrlc_allowed variable.
When this variable is set to false ctrl-c is ignored entirely.
The variable is set to false by default and changed to true in
the init script.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c                      | 24 ++++++++++++++++++++++++
 defaultenv/defaultenv-2-base/bin/init |  2 ++
 include/console.h                     |  3 +++
 3 files changed, 29 insertions(+)

diff --git a/common/console.c b/common/console.c
index b6685ecf6a..406722a1da 100644
--- a/common/console.c
+++ b/common/console.c
@@ -575,6 +575,7 @@ void console_flush(void)
 EXPORT_SYMBOL(console_flush);
 
 static int ctrlc_abort;
+static int ctrlc_allowed;
 
 void ctrlc_handled(void)
 {
@@ -586,6 +587,9 @@ int ctrlc(void)
 {
 	int ret = 0;
 
+	if (!ctrlc_allowed)
+		return 0;
+
 	if (ctrlc_abort)
 		return 1;
 
@@ -605,5 +609,25 @@ int ctrlc(void)
 }
 EXPORT_SYMBOL(ctrlc);
 
+static int console_ctrlc_init(void)
+{
+	globalvar_add_simple_bool("console.ctrlc_allowed", &ctrlc_allowed);
+	return 0;
+}
+device_initcall(console_ctrlc_init);
+
+void console_ctrlc_allow(void)
+{
+	ctrlc_allowed = 1;
+}
+
+void console_ctrlc_forbid(void)
+{
+	ctrlc_allowed = 0;
+}
+
+BAREBOX_MAGICVAR_NAMED(global_console_ctrlc_allowed, global.console.ctrlc_allowed,
+		"If true, scripts can be aborted with ctrl-c");
+
 BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_console, global.linux.bootargs.console,
 		"console= argument for Linux from the stdout-path property in /chosen node");
diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 8d02e3d3ab..a5d3a984f7 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -60,6 +60,8 @@ if [ "$autoboot" = 0 ]; then
 	autoboot="$?"
 fi
 
+global.console.ctrlc_allowed=true
+
 if [ "${key}" = "q" ]; then
 	exit
 fi
diff --git a/include/console.h b/include/console.h
index 673921331d..4062e5abf6 100644
--- a/include/console.h
+++ b/include/console.h
@@ -207,4 +207,7 @@ static inline void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx) {}
 
 bool console_allow_color(void);
 
+void console_ctrlc_allow(void);
+void console_ctrlc_forbid(void);
+
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
