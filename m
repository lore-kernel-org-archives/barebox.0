Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVAKY-0003Wx-Id
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:41:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:41:17 +0200
Message-Id: <20180619064117.13904-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] console_simple: add newline conversion for putc_ll case
To: Barebox List <barebox@lists.infradead.org>

When console_putc uses putc_ll for early printing then it must
do a newline conversion as putc_ll doesn't do it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_simple.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/console_simple.c b/common/console_simple.c
index ee87b8c52f..385da2fd86 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -27,6 +27,8 @@ EXPORT_SYMBOL(console_puts);
 void console_putc(unsigned int ch, char c)
 {
 	if (!console) {
+		if (c == '\n')
+			putc_ll('\r');
 		putc_ll(c);
 		return;
 	}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
