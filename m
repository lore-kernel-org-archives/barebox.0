Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRcwm-0008Qa-5G
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 05:59:08 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so1445980lbb.36
 for <barebox@lists.infradead.org>; Thu, 25 Oct 2012 22:59:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 26 Oct 2012 09:58:54 +0400
Message-Id: <1351231135-17324-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/3] readline: add ctrl-w handling (cut-the-last-word)
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/readline.c |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/lib/readline.c b/lib/readline.c
index 086b7f1..37566c3 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -328,6 +328,16 @@ int readline(const char *prompt, char *buf, int len)
 			REFRESH_TO_EOL();
 			continue;
 		}
+		case CTL_CH('w'):
+			while ((num >= 1) && (buf[num - 1] == ' ')) {
+				DO_BACKSPACE();
+			}
+
+			while ((num >= 1) && (buf[num - 1] != ' ')) {
+				DO_BACKSPACE();
+			}
+
+			break;
 		default:
 			if (isascii(ichar) && isprint(ichar))
 				cread_add_char(ichar, insert, &num, &eol_num, buf, len);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
