Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMvyB-00076f-0G
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 09:26:15 +0000
Received: by mail-wi0-f176.google.com with SMTP id bs8so7121515wib.3
 for <barebox@lists.infradead.org>; Thu, 28 Aug 2014 02:25:51 -0700 (PDT)
Date: Thu, 28 Aug 2014 11:25:44 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140828092542.GA20889@omega>
References: <1409212205.4914.6.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409212205.4914.6.camel@lws-gamez.phytec.de>
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

the issues is that hist_prev or hist_next runs:
"list_entry(history_current->next, struct history, list);"

on an empty list with no entries and history->line is a dangling pointer.

because the list head don't include a char *line and on an empty list
the attributes are prev == next.

I hacked a solution which check on an empty list at first and returning
NULL.

diff --git a/lib/readline.c b/lib/readline.c
index b70bca8..0892cf5 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -67,6 +67,9 @@ static const char *hist_prev(void)
 {
        struct history *history;
 
+       if (list_empty(&history_list))
+               return NULL;
+
        if (history_current->prev == &history_list) {
                history = list_entry(history_current, struct history, list);
                getcmd_cbeep();
@@ -84,6 +87,9 @@ static const char *hist_next(void)
 {
        struct history *history;
 
+       if (list_empty(&history_list))
+               return NULL;
+
        if (history_current->next == &history_list) {
                history_current = &history_list;
                return "";
@@ -301,6 +307,9 @@ int readline(const char *prompt, char *buf, int len)
                        else
                                hline = hist_next();
 
+                       if (!hline)
+                               break;
+
                        /* nuke the current line */
                        /* first, go home */
                        BEGINNING_OF_LINE();

Don't know if it should make a beep or not, just hacked not complete tested.
Maybe there are similar issues in other functions.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
