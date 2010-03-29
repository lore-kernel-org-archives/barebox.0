Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP4-00088r-DF
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:23 +0200
Message-Id: <1269855383-22716-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] hush: allow fancy prompts
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig |    9 +++++++++
 common/hush.c  |   12 ++++++++----
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4c4a627..f514759 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -226,6 +226,15 @@ config PROMPT_HUSH_PS2
 	prompt "hush PS2"
 	default "> "
 
+config HUSH_FANCY_PROMPT
+	bool
+	depends on SHELL_HUSH
+	select PROCESS_ESCAPE_SEQUENCE
+	prompt "allow fancy hush prompts"
+	help
+	  Allow to set PS1 from the command line. PS1 can have several escaped commands
+	  like \h for CONFIG_BOARDINFO or \w for the current working directory.
+
 config CMDLINE_EDITING
 	bool
 	prompt "Enable command line editing"
diff --git a/common/hush.c b/common/hush.c
index afa67d1..19e35f5 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -389,15 +389,19 @@ static int static_peek(struct in_str *i)
 	return *i->p;
 }
 
-
 static char *getprompt(void)
 {
-	static char *prompt;
+	static char prompt[PATH_MAX + 32];
 
-	if (!prompt)
-		prompt = xmalloc(PATH_MAX + strlen(CONFIG_PROMPT) + 1);
+#ifdef CONFIG_HUSH_FANCY_PROMPT
+	const char *ps1 = getenv("PS1");
 
+	if (ps1)
+		process_escape_sequence(ps1, prompt, PATH_MAX + 32);
+	else
+#endif
 	sprintf(prompt, "%s%s ", CONFIG_PROMPT, getcwd());
+
 	return prompt;
 }
 
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
