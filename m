Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpij-0007XX-Ih
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:26:28 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:26:19 +0100
Message-Id: <1288599979-3905-6-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288599979-3905-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 5/5] parser: use debug macros
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 common/parser.c |   51 +++++++++++++++++++++++----------------------------
 1 files changed, 23 insertions(+), 28 deletions(-)

diff --git a/common/parser.c b/common/parser.c
index 97e354b..fd578c7 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -6,9 +6,8 @@ static int parse_line (char *line, char *argv[])
 {
 	int nargs = 0;
 
-#ifdef DEBUG_PARSER
-	printf ("parse_line: \"%s\"\n", line);
-#endif
+	pr_debug("parse_line: \"%s\"\n", line);
+
 	while (nargs < CONFIG_MAXARGS) {
 
 		/* skip any white space */
@@ -18,9 +17,9 @@ static int parse_line (char *line, char *argv[])
 
 		if (*line == '\0') {	/* end of line, no more args	*/
 			argv[nargs] = NULL;
-#ifdef DEBUG_PARSER
-		printf ("parse_line: nargs=%d\n", nargs);
-#endif
+
+		pr_debug("parse_line: nargs=%d\n", nargs);
+
 			return (nargs);
 		}
 
@@ -33,9 +32,9 @@ static int parse_line (char *line, char *argv[])
 
 		if (*line == '\0') {	/* end of line, no more args	*/
 			argv[nargs] = NULL;
-#ifdef DEBUG_PARSER
-		printf ("parse_line: nargs=%d\n", nargs);
-#endif
+
+		pr_debug("parse_line: nargs=%d\n", nargs);
+
 			return (nargs);
 		}
 
@@ -43,10 +42,8 @@ static int parse_line (char *line, char *argv[])
 	}
 
 	printf ("** Too many args (max. %d) **\n", CONFIG_MAXARGS);
+	pr_debug("parse_line: nargs=%d\n", nargs);
 
-#ifdef DEBUG_PARSER
-	printf ("parse_line: nargs=%d\n", nargs);
-#endif
 	return (nargs);
 }
 
@@ -61,12 +58,12 @@ static void process_macros (const char *input, char *output)
 	/* 1 = waiting for '(' or '{' */
 	/* 2 = waiting for ')' or '}' */
 	/* 3 = waiting for '''  */
-#ifdef DEBUG_PARSER
+#ifdef DEBUG
 	char *output_start = output;
+#endif
 
-	printf ("[PROCESS_MACROS] INPUT len %d: \"%s\"\n", strlen (input),
+	pr_debug("[PROCESS_MACROS] INPUT len %d: \"%s\"\n", strlen (input),
 		input);
-#endif
 
 	prev = '\0';		/* previous character   */
 
@@ -153,10 +150,8 @@ static void process_macros (const char *input, char *output)
 	if (outputcnt)
 		*output = 0;
 
-#ifdef DEBUG_PARSER
-	printf ("[PROCESS_MACROS] OUTPUT len %d: \"%s\"\n",
+	pr_debug("[PROCESS_MACROS] OUTPUT len %d: \"%s\"\n",
 		strlen (output_start), output_start);
-#endif
 }
 
 /****************************************************************************
@@ -185,8 +180,8 @@ int run_command (const char *cmd, int flag)
 	int argc, inquotes;
 	int rc = 0;
 
-#ifdef DEBUG_PARSER
-	printf ("[RUN_COMMAND] cmd[%p]=\"", cmd);
+#ifdef DEBUG
+	pr_debug("[RUN_COMMAND] cmd[%p]=\"", cmd);
 	puts (cmd ? cmd : "NULL");	/* use puts - string may be loooong */
 	puts ("\"\n");
 #endif
@@ -202,13 +197,13 @@ int run_command (const char *cmd, int flag)
 
 	strcpy (cmdbuf, cmd);
 
-	/* Process separators and check for invalid
+	/*
+	 * Process separators and check for invalid
 	 * repeatable commands
 	 */
 
-#ifdef DEBUG_PARSER
-	printf ("[PROCESS_SEPARATORS] %s\n", cmd);
-#endif
+	pr_debug("[PROCESS_SEPARATORS] %s\n", cmd);
+
 	while (*str) {
 
 		/*
@@ -235,11 +230,11 @@ int run_command (const char *cmd, int flag)
 			str = sep + 1;	/* start of command for next pass */
 			*sep = '\0';
 		}
-		else
+		else {
 			str = sep;	/* no more commands for next pass */
-#ifdef DEBUG_PARSER
-		printf ("token: \"%s\"\n", token);
-#endif
+		}
+
+		pr_debug("token: \"%s\"\n", token);
 
 		/* find macros in this token and replace them */
 		process_macros (token, finaltoken);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
