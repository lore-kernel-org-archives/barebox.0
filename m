Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMweA-0000Ez-1v
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 10:09:38 +0000
Received: by mail-wg0-f52.google.com with SMTP id m15so508290wgh.11
 for <barebox@lists.infradead.org>; Thu, 28 Aug 2014 03:09:15 -0700 (PDT)
Date: Thu, 28 Aug 2014 12:08:56 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140828100855.GA26411@omega>
References: <1409212205.4914.6.camel@lws-gamez.phytec.de>
 <20140828092542.GA20889@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140828092542.GA20889@omega>
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
Subject: Re: [BUG] readline history
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi,

another possible solution which less of runtime decisions.



diff --git a/lib/readline.c b/lib/readline.c
index b70bca8..f9cfa4b 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -28,7 +28,9 @@ struct history {
        struct list_head list;
 };
 
-static LIST_HEAD(history_list);
+static struct history history_list = {
+       .list = LIST_HEAD_INIT(history_list.list),
+};
 
 static struct list_head *history_current;
 static int history_num_entries;
@@ -38,8 +40,8 @@ static void cread_add_to_hist(char *line)
        struct history *history;
        char *newline;
 
-       if (!list_empty(&history_list)) {
-               history = list_last_entry(&history_list, struct history, list);
+       if (!list_empty(&history_list.list)) {
+               history = list_last_entry(&history_list.list, struct history, list);
 
                if (!strcmp(line, history->line))
                        return;
@@ -53,21 +55,21 @@ static void cread_add_to_hist(char *line)
                history = xzalloc(sizeof(*history));
                history_num_entries++;
        } else {
-               history = list_first_entry(&history_list, struct history, list);
+               history = list_first_entry(&history_list.list, struct history, list);
                free(history->line);
                list_del(&history->list);
        }
 
        history->line = newline;
 
-       list_add_tail(&history->list, &history_list);
+       list_add_tail(&history->list, &history_list.list);
 }
 
 static const char *hist_prev(void)
 {
        struct history *history;
 
-       if (history_current->prev == &history_list) {
+       if (history_current->prev == &history_list.list) {
                history = list_entry(history_current, struct history, list);
                getcmd_cbeep();
                return history->line;
@@ -84,12 +86,12 @@ static const char *hist_next(void)
 {
        struct history *history;
 
-       if (history_current->next == &history_list) {
-               history_current = &history_list;
+       if (history_current->next == &history_list.list) {
+               history_current = &history_list.list;
                return "";
        }
 
-       if (history_current == &history_list) {
+       if (history_current == &history_list.list) {
                getcmd_cbeep();
                return "";
        }
@@ -188,7 +190,7 @@ int readline(const char *prompt, char *buf, int len)
 
        complete_reset();
 #endif
-       history_current = &history_list;
+       history_current = &history_list.list;
 
        puts (prompt);
 
@@ -296,10 +298,13 @@ int readline(const char *prompt, char *buf, int len)
                {
                        const char *hline;
 
-                       if (ichar == BB_KEY_UP)
+                       if (ichar == BB_KEY_UP) {
                                hline = hist_prev();
-                       else
+                               if (!hline)
+                                       break;
+                       } else {
                                hline = hist_next();
+                       }
 
                        /* nuke the current line */
                        /* first, go home */




Don't know what I actually did there, just experiment that history_list
isn't a struct list. It has now space for the "char *line" pointer and
it's init with null. Also move the null check only for hlist_prev();

now list_entry on history_list works because it has a "char *line" which
should always be NULL.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
