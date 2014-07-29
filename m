Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XC5wK-0007uw-D4
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 11:51:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jul 2014 13:51:07 +0200
Message-Id: <1406634667-9491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] readline: reimplement history functions
To: barebox@lists.infradead.org

This reimplements the history functions in readline.

- Use regular lists instead of homegrown list implementation
- Allocate history strings dynamically instead of copying strings
  to fixed buffers without checking the size
- saves us an initcall
- slightly smaller
- no longer add duplicates to the history
- when moving past the last history entry print an empty line

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readline.c | 122 +++++++++++++++++++++++++--------------------------------
 1 file changed, 54 insertions(+), 68 deletions(-)

diff --git a/lib/readline.c b/lib/readline.c
index 240a131..b70bca8 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -14,8 +14,6 @@
 		printf ("%.*s", n, str);	\
 	} while (0)
 
-#define MAX_CMDBUF_SIZE		256
-
 #define CTL_BACKSPACE		('\b')
 #define DEL			255
 #define DEL7			127
@@ -25,90 +23,82 @@
 #define getcmd_getch()		getc()
 #define getcmd_cbeep()		getcmd_putch('\a')
 
-#define HIST_MAX		20
-#define HIST_SIZE		MAX_CMDBUF_SIZE
-
-static int hist_max = 0;
-static int hist_add_idx = 0;
-static int hist_cur = -1;
-static unsigned hist_num = 0;
+struct history {
+	char *line;
+	struct list_head list;
+};
 
-static char* hist_list[HIST_MAX];
-static char hist_lines[HIST_MAX][HIST_SIZE];
+static LIST_HEAD(history_list);
 
-#define add_idx_minus_one() ((hist_add_idx == 0) ? hist_max : hist_add_idx-1)
+static struct list_head *history_current;
+static int history_num_entries;
 
-static int hist_init(void)
+static void cread_add_to_hist(char *line)
 {
-	int i;
+	struct history *history;
+	char *newline;
 
-	hist_max = 0;
-	hist_add_idx = 0;
-	hist_cur = -1;
-	hist_num = 0;
+	if (!list_empty(&history_list)) {
+		history = list_last_entry(&history_list, struct history, list);
 
-	for (i = 0; i < HIST_MAX; i++) {
-		hist_list[i] = hist_lines[i];
-		hist_list[i][0] = '\0';
+		if (!strcmp(line, history->line))
+			return;
 	}
-	return 0;
-}
-
-postcore_initcall(hist_init);
 
-static void cread_add_to_hist(char *line)
-{
-	strcpy(hist_list[hist_add_idx], line);
+	newline = strdup(line);
+	if (!newline)
+		return;
 
-	if (++hist_add_idx >= HIST_MAX)
-		hist_add_idx = 0;
+	if (history_num_entries < 32) {
+		history = xzalloc(sizeof(*history));
+		history_num_entries++;
+	} else {
+		history = list_first_entry(&history_list, struct history, list);
+		free(history->line);
+		list_del(&history->list);
+	}
 
-	if (hist_add_idx > hist_max)
-		hist_max = hist_add_idx;
+	history->line = newline;
 
-	hist_num++;
+	list_add_tail(&history->list, &history_list);
 }
 
-static char* hist_prev(void)
+static const char *hist_prev(void)
 {
-	char *ret;
-	int old_cur;
+	struct history *history;
 
-	if (hist_cur < 0)
-		return NULL;
+	if (history_current->prev == &history_list) {
+		history = list_entry(history_current, struct history, list);
+		getcmd_cbeep();
+		return history->line;
+	}
 
-	old_cur = hist_cur;
-	if (--hist_cur < 0)
-		hist_cur = hist_max;
+	history = list_entry(history_current->prev, struct history, list);
 
-	if (hist_cur == hist_add_idx) {
-		hist_cur = old_cur;
-		ret = NULL;
-	} else
-		ret = hist_list[hist_cur];
+	history_current = &history->list;
 
-	return (ret);
+	return history->line;
 }
 
-static char* hist_next(void)
+static const char *hist_next(void)
 {
-	char *ret;
+	struct history *history;
 
-	if (hist_cur < 0)
-		return NULL;
+	if (history_current->next == &history_list) {
+		history_current = &history_list;
+		return "";
+	}
 
-	if (hist_cur == hist_add_idx)
-		return NULL;
+	if (history_current == &history_list) {
+		getcmd_cbeep();
+		return "";
+	}
 
-	if (++hist_cur > hist_max)
-		hist_cur = 0;
+	history = list_entry(history_current->next, struct history, list);
 
-	if (hist_cur == hist_add_idx) {
-		ret = "";
-	} else
-		ret = hist_list[hist_cur];
+	history_current = &history->list;
 
-	return (ret);
+	return history->line;
 }
 
 #define BEGINNING_OF_LINE() {			\
@@ -198,6 +188,8 @@ int readline(const char *prompt, char *buf, int len)
 
 	complete_reset();
 #endif
+	history_current = &history_list;
+
 	puts (prompt);
 
 	while (1) {
@@ -302,18 +294,13 @@ int readline(const char *prompt, char *buf, int len)
 		case BB_KEY_UP:
 		case BB_KEY_DOWN:
 		{
-			char * hline;
+			const char *hline;
 
 			if (ichar == BB_KEY_UP)
 				hline = hist_prev();
 			else
 				hline = hist_next();
 
-			if (!hline) {
-				getcmd_cbeep();
-				continue;
-			}
-
 			/* nuke the current line */
 			/* first, go home */
 			BEGINNING_OF_LINE();
@@ -346,9 +333,8 @@ int readline(const char *prompt, char *buf, int len)
 	len = eol_num;
 	buf[eol_num] = '\0';	/* lose the newline */
 
-	if (buf[0] && buf[0] != CREAD_HIST_CHAR)
+	if (buf[0])
 		cread_add_to_hist(buf);
-	hist_cur = hist_add_idx;
 
 	return len;
 }
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
