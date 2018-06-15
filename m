Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6E-0005a7-AX
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:36 +0000
Received: by mail-pl0-x242.google.com with SMTP id g20-v6so4676444plq.1
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:33 -0700
Message-Id: <20180615041136.23492-28-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 24/27] console: Simplify dputs()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Knowing that puts() is just a wrapper around a call to
console_puts(CONSOLE_STDOUT, str) we can simplify the code of
dputs(). While at it, make use of *_FILENO constants to get rid of
magic numbers.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_common.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index ce7e50dbc..6e098b27d 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -355,11 +355,19 @@ EXPORT_SYMBOL(dprintf);
 
 int dputs(int fd, const char *s)
 {
-	if (fd == 1)
-		return puts(s);
-	else if (fd == 2)
-		return console_puts(CONSOLE_STDERR, s);
-	else
+	unsigned int ch;
+
+	switch (fd) {
+	case STDOUT_FILENO:
+		ch = CONSOLE_STDOUT;
+		break;
+	case STDERR_FILENO:
+		ch = CONSOLE_STDERR;
+		break;
+	default:
 		return write(fd, s, strlen(s));
+	}
+
+	return console_puts(ch, s);
 }
 EXPORT_SYMBOL(dputs);
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
