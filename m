Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PWyKq-0002U6-2Q
	for barebox@lists.infradead.org; Sun, 26 Dec 2010 21:41:00 +0000
Received: by wwb17 with SMTP id 17so9259756wwb.18
	for <barebox@lists.infradead.org>; Sun, 26 Dec 2010 13:40:57 -0800 (PST)
From: Franck JULLIEN <franck.jullien@gmail.com>
Date: Sun, 26 Dec 2010 22:40:52 +0100
Message-Id: <1293399652-2615-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] (reformated) Allow board specific fancy banner
To: barebox@lists.infradead.org

This time I used git to send the email. I think I get it right.
However, I didn't find how to put this file in the thread we were later...
I don't think it is possible since those emails didn't have ID's to use with
the In-Reply-To option (right ?).

---
 common/Kconfig   |    6 ++++++
 common/console.c |   10 ++++++++++
 2 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 617f640..d46c8fc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -248,6 +248,12 @@ config HUSH_FANCY_PROMPT
 	  Allow to set PS1 from the command line. PS1 can have several escaped commands
 	  like \h for CONFIG_BOARDINFO or \w for the current working directory.
 
+config BOARD_BANNER
+	bool
+	prompt "allow a board specific fancy banner"
+	help
+	  Allow to define a custom board banner (you must define BOARD_BANNER in your config.h)
+
 config HUSH_GETOPT
 	bool
 	depends on SHELL_HUSH
diff --git a/common/console.c b/common/console.c
index 82786f2..8a830e3 100644
--- a/common/console.c
+++ b/common/console.c
@@ -46,7 +46,17 @@ EXPORT_SYMBOL(console_list);
 static void display_banner (void)
 {
 	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
+#ifdef CONFIG_BOARD_BANNER
+#ifdef BOARD_BANNER
+	printf(RELOC(BOARD_BANNER));
+#else
+#define VT100_YELLOW	"\033[1;33m"
+#define VT100_RESET	"\033[1;0m"
+	printf(RELOC("Board: " VT100_YELLOW CONFIG_BOARDINFO VT100_RESET "\n"));
+#endif
+#else
 	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
+#endif
 }
 
 static int __early_initdata initialized = 0;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
