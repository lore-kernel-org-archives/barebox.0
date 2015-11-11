Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwXsA-00008C-QI
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 16:03:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Nov 2015 17:03:23 +0100
Message-Id: <1447257803-1564-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] pbl: console: Use console_putc to output the carriage return
To: Barebox List <barebox@lists.infradead.org>

console_puts uses console_putc() to output characters, so the carriage
return should be output with the same function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/console.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/console.c b/pbl/console.c
index 3574753..4cefe748 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -32,7 +32,7 @@ int console_puts(unsigned int ch, const char *str)
 
 	while (*str) {
 		if (*str == '\n')
-			putc_ll('\r');
+			console_putc(CONSOLE_STDOUT, '\r');
 
 		console_putc(CONSOLE_STDOUT, *str);
 		str++;
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
