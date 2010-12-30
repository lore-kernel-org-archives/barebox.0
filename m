Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PYHwr-0007aj-8M
	for barebox@lists.infradead.org; Thu, 30 Dec 2010 12:49:41 +0000
Received: by wwb17 with SMTP id 17so12158131wwb.18
	for <barebox@lists.infradead.org>; Thu, 30 Dec 2010 04:49:39 -0800 (PST)
From: Franck JULLIEN <franck.jullien@gmail.com>
Date: Thu, 30 Dec 2010 13:49:34 +0100
Message-Id: <1293713374-3476-1-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <20101230034811.GS19266@game.jcrosoft.org>
References: <20101230034811.GS19266@game.jcrosoft.org>
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
Subject: [PATCH] Add an option to set a board specific banner
To: barebox@lists.infradead.org

Allow a board specific fancy banner

---

I removed the default fancy banner and do it like Jean-Christophe suggested it.

 common/Kconfig   |    6 ++++++
 common/console.c |    7 ++++++-
 2 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 617f640..d32c1ce 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT
 	  Allow to set PS1 from the command line. PS1 can have several escaped commands
 	  like \h for CONFIG_BOARDINFO or \w for the current working directory.
 
+config BOARD_BANNER
+	bool
+	prompt "allow a board specific fancy banner"
+	help
+	  Allow to define a custom board banner (you can define CONFIG_BOARD_BANNER_TEXT in your config.h)
+
 config HUSH_GETOPT
 	bool
 	depends on SHELL_HUSH
diff --git a/common/console.c b/common/console.c
index 82786f2..7caef11 100644
--- a/common/console.c
+++ b/common/console.c
@@ -46,7 +46,12 @@ EXPORT_SYMBOL(console_list);
 static void display_banner (void)
 {
 	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
-	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
+
+#ifndef CONFIG_BOARD_BANNER
+#undef  CONFIG_BOARD_BANNER_TEXT
+#define CONFIG_BOARD_BANNER_TEXT "Board: " CONFIG_BOARDINFO "\n"
+#endif
+        printf(RELOC(CONFIG_BOARD_BANNER_TEXT));
 }
 
 static int __early_initdata initialized = 0;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
