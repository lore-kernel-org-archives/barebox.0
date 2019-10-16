Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlfi-0002JI-R2
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 15:57:13 +0000
From: sendpatch@qq.com
Date: Wed, 16 Oct 2019 23:56:44 +0800
Message-Id: <1571241404-25229-1-git-send-email-sendpatch@qq.com>
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
Subject: [PATCH v4] readline: make ctrl-u to work like linux console
To: barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

From: DU HUANPENG <u74147@gmail.com>

currtly, the ctrl-u discards the whole line, in most linux
boxes, ctrl-u just erase characters before cursor to the
begginning of the line. this patch make ctrl-u to do this.

Signed-off-by: DU HUANPENG <u74147@gmail.com>
---
 lib/readline.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/lib/readline.c b/lib/readline.c
index d026af1..3d16c18 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -290,9 +290,17 @@ int readline(const char *prompt, char *buf, int len)
 			insert = !insert;
 			break;
 		case BB_KEY_ERASE_LINE:
+			BEGINNING_OF_LINE();
+			ERASE_TO_EOL();
+			break;
 		case CTL_CH('u'):
+			wlen = eol_num - num;
+			memmove(buf, buf+num, wlen);
 			BEGINNING_OF_LINE();
 			ERASE_TO_EOL();
+			eol_num = wlen;
+			REFRESH_TO_EOL();
+			BEGINNING_OF_LINE();
 			break;
 		case DEL:
 		case BB_KEY_DEL7:
-- 
2.7.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
