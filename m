Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVAKY-0003Wy-IX
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:41:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:41:16 +0200
Message-Id: <20180619064117.13904-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] console_simple: Fix newline conversion
To: Barebox List <barebox@lists.infradead.org>

Newline should be "\r\n" rather than "\n\r"

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_simple.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 0825ec07ec..ee87b8c52f 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -31,9 +31,10 @@ void console_putc(unsigned int ch, char c)
 		return;
 	}
 
-	console->putc(console, c);
 	if (c == '\n')
 		console->putc(console, '\r');
+
+	console->putc(console, c);
 }
 EXPORT_SYMBOL(console_putc);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
