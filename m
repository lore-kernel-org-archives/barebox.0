Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsljx-0000Wm-7f
 for barebox@lists.infradead.org; Wed, 31 Jul 2019 10:21:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2019 12:21:42 +0200
Message-Id: <20190731102143.20503-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190731102143.20503-1-a.fatoum@pengutronix.de>
References: <20190731102143.20503-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/3] ratp: return 0 bytes written from puts if busy
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Prior behavior was to wrongly report all bytes written if enqueueing wasn't
possible at the time. Instead we should either return 0 or an error code if
users need to retry. write(2) returns 0 in such cases. Follow suit.

As no current users run puts in a loop, this has no effect for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Changes in v2:
	New commit.
---
 common/ratp/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 9aea1786d684..8ac7dc98b6f8 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -267,7 +267,7 @@ static int ratp_console_puts(struct console_device *cdev, const char *s)
 	len = strlen(s);
 
 	if (ratp_busy(&ctx->ratp))
-		return len;
+		return 0;
 
 	kfifo_put(ctx->console_transmit_fifo, s, len);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
