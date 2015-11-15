Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZxlhU-0006y2-6d
 for barebox@lists.infradead.org; Sun, 15 Nov 2015 01:01:48 +0000
Received: by padhx2 with SMTP id hx2so136955127pad.1
 for <barebox@lists.infradead.org>; Sat, 14 Nov 2015 17:01:26 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sun, 15 Nov 2015 09:01:19 +0800
Message-Id: <1447549279-11694-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] lib: readline support ctrl-l to clear screen
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

maybe it is easier to press ctrl-l to clear the screen than type
'clear' command.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 lib/readline.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/lib/readline.c b/lib/readline.c
index 14dd311..170effb 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -262,6 +262,15 @@ int readline(const char *prompt, char *buf, int len)
 				eol_num--;
 			}
 			break;
+		case CTL_CH('l'):
+			printf(ANSI_CLEAR_SCREEN);
+			buf[eol_num] = 0;
+			printf("%s%s", prompt, buf);
+			wlen = eol_num - num;
+			while (wlen--) {
+				getcmd_putch(CTL_BACKSPACE);
+			}
+			break;
 		case BB_KEY_ERASE_TO_EOL:
 			ERASE_TO_EOL();
 			break;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
