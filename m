Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVAKY-0003Wv-IY
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:41:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:41:14 +0200
Message-Id: <20180619064117.13904-2-s.hauer@pengutronix.de>
In-Reply-To: <20180619064117.13904-1-s.hauer@pengutronix.de>
References: <20180619064117.13904-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] console: remove duplicate newline conversion
To: Barebox List <barebox@lists.infradead.org>

When the console is not yet fully initialized then console_puts falls
back to print characters using console_putc. console_putc already
does newline conversion, so do not repeat it in console_puts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/common/console.c b/common/console.c
index c40eba6d55..cd37d88cc4 100644
--- a/common/console.c
+++ b/common/console.c
@@ -552,10 +552,9 @@ int console_puts(unsigned int ch, const char *str)
 	}
 
 	while (*s) {
-		if (*s == '\n') {
-			console_putc(ch, '\r');
+		if (*s == '\n')
 			n++;
-		}
+
 		console_putc(ch, *s);
 		n++;
 		s++;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
