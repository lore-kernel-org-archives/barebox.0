Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZyeAQ-0007Pb-G2
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 11:11:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Nov 2015 12:10:51 +0100
Message-Id: <1447758651-26575-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
References: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] loads: Use putchar rather than console_putc
To: Barebox List <barebox@lists.infradead.org>

'putchar' is a standard function to output a character. Use this one
instead of the lower level console_putc.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loads.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/loads.c b/commands/loads.c
index 24093e1..aa3095e 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -127,7 +127,7 @@ static ulong load_serial(ulong offset)
 		}
 		if (!do_echo) {	/* print a '.' every 100 lines */
 			if ((++line_count % 100) == 0)
-				console_putc(CONSOLE_STDOUT, '.');
+				putchar('.');
 		}
 	}
 
@@ -144,7 +144,7 @@ static int read_record(char *buf, ulong len)
 	for (p=buf; p < buf+len; ++p) {
 		c = getc();		/* read character		*/
 		if (do_echo)
-			console_putc(CONSOLE_STDOUT, c);
+			putchar(c);
 
 		switch (c) {
 		case '\r':
@@ -259,7 +259,7 @@ static int write_record(char *buf)
 	char c;
 
 	while ((c = *buf++))
-		console_putc(CONSOLE_STDOUT, c);
+		putchar(c);
 
 	/* Check for the console hangup (if any different from serial) */
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
