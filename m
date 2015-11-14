Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZxZ1q-0001Z9-Bt
 for barebox@lists.infradead.org; Sat, 14 Nov 2015 11:29:59 +0000
Received: by pabfh17 with SMTP id fh17so126689090pab.0
 for <barebox@lists.infradead.org>; Sat, 14 Nov 2015 03:29:37 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sat, 14 Nov 2015 19:29:20 +0800
Message-Id: <1447500560-26566-1-git-send-email-u74147@gmail.com>
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
 lib/readline.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/readline.c b/lib/readline.c
index 14dd311..679d78f 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -262,6 +262,10 @@ int readline(const char *prompt, char *buf, int len)
 				eol_num--;
 			}
 			break;
+		case CTL_CH('l'):
+			printf(ANSI_CLEAR_SCREEN);
+			printf("%s%s", prompt, buf);
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
