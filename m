Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTyA-00054M-Bj
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 21:03:04 +0000
From: sendpatch@qq.com
Date: Wed, 16 Oct 2019 05:02:49 +0800
Message-Id: <1571173369-30230-1-git-send-email-sendpatch@qq.com>
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
boxes, ctrl-u just remove character before cursor.
this patch make ctrl-u to do this.

Signed-off-by: DU HUANPENG <u74147@gmail.com>
---
 lib/readline.c | 31 +++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/lib/readline.c b/lib/readline.c
index d026af1..eba3da4 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -291,8 +291,35 @@ int readline(const char *prompt, char *buf, int len)
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
+					putchar(CTL_BACKSPACE);
+				}
+				for(i=0; i<eol_num; i++) {
+					putchar(' ');
+				}
+				for(i=0; i<eol_num; i++) {
+					putchar(CTL_BACKSPACE);
+				}
+
+				eol_num -= num;
+				num = 0;
+
+				for(i=0; i<eol_num; i++) {
+					putchar(buf[i]);
+				}
+				for(i=0; i<eol_num; i++) {
+					putchar(CTL_BACKSPACE);
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
