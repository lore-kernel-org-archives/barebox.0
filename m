Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hslk4-0000Z6-Hn
 for barebox@lists.infradead.org; Wed, 31 Jul 2019 10:21:57 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2019 12:21:41 +0200
Message-Id: <20190731102143.20503-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/3] console: don't count newlines twice in bytes written
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Both the PBL and simple console only return number of input bytes, not
number of bytes actually written out. These differ, because each LF is
converted to CRLF pairs.

The behavior of not counting actual written out characters is more sensible,
because otherwise callers interested in finding out if all bytes have been
written (e.g. to avoid incomplete writes with ratp) would need to keep count
of all line feeds in the string.
Therefore change the normal console to behave like its less featureful
brethren.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Changes in v2:
	New commit.
---
 common/console.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/common/console.c b/common/console.c
index 47ccf2e54de0..52162df23b04 100644
--- a/common/console.c
+++ b/common/console.c
@@ -258,10 +258,9 @@ static int __console_puts(struct console_device *cdev, const char *s)
 	int n = 0;
 
 	while (*s) {
-		if (*s == '\n') {
+		if (*s == '\n')
 			cdev->putc(cdev, '\r');
-			n++;
-		}
+
 		cdev->putc(cdev, *s);
 		n++;
 		s++;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
