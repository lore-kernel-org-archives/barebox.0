Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg519.qq.com ([203.205.250.45] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKbx9-00071X-Rb
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 05:34:36 +0000
From: sendpatch@qq.com
Date: Wed, 16 Oct 2019 13:34:15 +0800
Message-Id: <1571204055-5028-1-git-send-email-sendpatch@qq.com>
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
Subject: [PATCH] readline: make ctrl-u to work like linux console
To: barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

From: DU HUANPENG <u74147@gmail.com>

currtly, the ctrl-u discards the whole line, in most linux
boxes, ctrl-u just erase characters before cursor to the
begginning of the line. this patch make ctrl-u to do this.

Signed-off-by: DU HUANPENG <u74147@gmail.com>
---
 lib/readline.c | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/lib/readline.c b/lib/readline.c
index d026af1..c0b194c 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -188,9 +188,10 @@ int readline(const char *prompt, char *buf, int len)
 	unsigned wlen;
 	int ichar;
 	int insert = 1;
+	int i;
 #ifdef CONFIG_AUTO_COMPLETE
 	char tmp;
-	int reprint, i;
+	int reprint;
 	char *completestr;
 
 	complete_reset();
@@ -291,8 +292,35 @@ int readline(const char *prompt, char *buf, int len)
 			break;
 		case BB_KEY_ERASE_LINE:
 		case CTL_CH('u'):
-			BEGINNING_OF_LINE();
-			ERASE_TO_EOL();
+			if(num >= eol_num) {
+				BEGINNING_OF_LINE();
+				ERASE_TO_EOL();
+			} else {
+				for(i=num; i<eol_num; i++) {
+					buf[i-num] = buf[i];
+				}
+				buf[i] = '\0';
+
+				for(i=0; i<num; i++) {
+					getcmd_putch(CTL_BACKSPACE);
+				}
+				for(i=0; i<eol_num; i++) {
+					getcmd_putch(' ');
+				}
+				for(i=0; i<eol_num; i++) {
+					getcmd_putch(CTL_BACKSPACE);
+				}
+
+				eol_num -= num;
+				num = 0;
+
+				for(i=0; i<eol_num; i++) {
+					getcmd_putch(buf[i]);
+				}
+				for(i=0; i<eol_num; i++) {
+					getcmd_putch(CTL_BACKSPACE);
+				}
+			}
 			break;
 		case DEL:
 		case BB_KEY_DEL7:
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
