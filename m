Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVAKY-0003XI-IW
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:41:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:41:13 +0200
Message-Id: <20180619064117.13904-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] console: add missing newline conversion for putc_ll
To: Barebox List <barebox@lists.infradead.org>

putc_ll doesn't do newline conversion (and it shouldn't do, as it's
a static inline function for early debugging, adding more code there
is not nice), so add newline conversion to the console code when
it uses putc_ll for printing early messages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/console.c b/common/console.c
index ab3d4d397c..c40eba6d55 100644
--- a/common/console.c
+++ b/common/console.c
@@ -513,6 +513,8 @@ void console_putc(unsigned int ch, char c)
 
 	case CONSOLE_INITIALIZED_BUFFER:
 		kfifo_putc(console_output_fifo, c);
+		if (c == '\n')
+			putc_ll('\r');
 		putc_ll(c);
 		return;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
