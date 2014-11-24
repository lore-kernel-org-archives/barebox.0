Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XsrUL-00070a-03
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:31 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTw-0000NZ-No
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:44 +0100
Message-Id: <1416827220-3103-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 04/20] firmware: altera-serial: fix printf message
To: barebox@lists.infradead.org

Fixes:
.../altera_serial.c:118:2: warning: too many arguments for format

Also sz is of type size_t, so use proper format specifier.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/firmware/altera_serial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 232f1a682619..c5ffbb6393bb 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -113,7 +113,7 @@ static int altera_spi_write(struct firmware_handler *fh, const void *buf, size_t
 	u32 dummy;
 	int ret;
 
-	dev_dbg(dev, "Start writing %d bytes.\n", __func__, sz);
+	dev_dbg(dev, "Start writing %zu bytes.\n", sz);
 
 	spi_message_init(&m);
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
