Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpYDn-0007qf-2v
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 12:47:04 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Fri, 1 Feb 2019 13:46:55 +0100
Message-Id: <1549025215-39413-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] readline: add ctrl-u (unix-line-discard)
To: barebox@lists.infradead.org

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 lib/readline.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/readline.c b/lib/readline.c
index 904a77639..d026af110 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -290,6 +290,7 @@ int readline(const char *prompt, char *buf, int len)
 			insert = !insert;
 			break;
 		case BB_KEY_ERASE_LINE:
+		case CTL_CH('u'):
 			BEGINNING_OF_LINE();
 			ERASE_TO_EOL();
 			break;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
