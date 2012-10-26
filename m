Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRcwj-0008Pz-Lu
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 05:59:06 +0000
Received: by mail-la0-f49.google.com with SMTP id z14so2151185lag.36
 for <barebox@lists.infradead.org>; Thu, 25 Oct 2012 22:59:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 26 Oct 2012 09:58:53 +0400
Message-Id: <1351231135-17324-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
References: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/3] readline: move backspace key handling to the DO_BACKSPACE
 macro
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/readline.c |   23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/lib/readline.c b/lib/readline.c
index 5717a17..086b7f1 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -137,6 +137,18 @@ static char* hist_next(void)
 	}					\
 }
 
+#define DO_BACKSPACE()						\
+		wlen = eol_num - num;				\
+		num--;						\
+		memmove(buf + num, buf + num + 1, wlen);	\
+		getcmd_putch(CTL_BACKSPACE);			\
+		putnstr(buf + num, wlen);			\
+		getcmd_putch(' ');				\
+		do {						\
+			getcmd_putch(CTL_BACKSPACE);		\
+		} while (wlen--);				\
+		eol_num--;
+
 static void cread_add_char(char ichar, int insert, unsigned long *num,
 	       unsigned long *eol_num, char *buf, unsigned long len)
 {
@@ -273,16 +285,7 @@ int readline(const char *prompt, char *buf, int len)
 		case KEY_DEL7:
 		case 8:
 			if (num) {
-				wlen = eol_num - num;
-				num--;
-				memmove(buf + num, buf + num + 1, wlen);
-				getcmd_putch(CTL_BACKSPACE);
-				putnstr(buf + num, wlen);
-				getcmd_putch(' ');
-				do {
-					getcmd_putch(CTL_BACKSPACE);
-				} while (wlen--);
-				eol_num--;
+				DO_BACKSPACE();
 			}
 			break;
 		case KEY_DEL:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
