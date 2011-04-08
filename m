Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000193-JY
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:13 +0200
Message-Id: <1302274579-11158-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] make command support optional
To: barebox@lists.infradead.org

In a noninveractive environment we do not need commands. So make
them optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig |   11 ++++++++++-
 common/Kconfig   |    2 ++
 common/Makefile  |    2 +-
 common/startup.c |    5 ++++-
 4 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index a443501..f192d30 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1,7 +1,14 @@
 config REGINFO
 	bool
 
-menu "Commands                      "
+config COMMAND_SUPPORT
+	bool
+	depends on !SHELL_NONE
+	default y
+
+if COMMAND_SUPPORT
+
+menu "commands                      "
 
 menu "scripting                     "
 
@@ -404,3 +411,5 @@ config CMD_USB
 	  The usb command allows to rescan for USB devices.
 
 endmenu
+
+endif
diff --git a/common/Kconfig b/common/Kconfig
index b493a31..83975ee 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -223,6 +223,7 @@ choice
 	config SHELL_HUSH
 		bool "hush parser"
 		select ENVIRONMENT_VARIABLES
+		select COMMAND_SUPPORT
 		help
 		  Enable hush support. This is the most advanced shell available
 		  for barebox.
@@ -230,6 +231,7 @@ choice
 	config SHELL_SIMPLE
 		bool "Simple parser"
 		select ENVIRONMENT_VARIABLES
+		select COMMAND_SUPPORT
 		help
 		  simple shell. No if/then, no return values from commands, no loops
 endchoice
diff --git a/common/Makefile b/common/Makefile
index c8a4332..6a04460 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -11,7 +11,7 @@ obj-$(CONFIG_BLOCK)		+= block.o
 obj-y += dlmalloc.o
 obj-y += clock.o
 obj-y += version.o
-obj-y += command.o
+obj-$(CONFIG_COMMAND_SUPPORT) += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
 obj-$(CONFIG_DIGEST) += digest.o
diff --git a/common/startup.c b/common/startup.c
index b487c5b..3808709 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -118,7 +118,9 @@ void start_barebox (void)
 {
 	initcall_t *initcall;
 	int result;
+#ifdef CONFIG_COMMAND_SUPPORT
 	struct stat s;
+#endif
 
 #ifdef CONFIG_HAS_EARLY_INIT
 	/* We are running from RAM now, copy early initdata from
@@ -150,6 +152,7 @@ void start_barebox (void)
 #endif
 	}
 #endif
+#ifdef CONFIG_COMMAND_SUPPORT
 	printf("running /env/bin/init...\n");
 
 	if (!stat("/env/bin/init", &s)) {
@@ -157,7 +160,7 @@ void start_barebox (void)
 	} else {
 		printf("not found\n");
 	}
-
+#endif
 	/* main_loop() can return to retry autoboot, if so just run it again. */
 	for (;;)
 		run_shell();
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
