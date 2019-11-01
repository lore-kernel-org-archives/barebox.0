Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdAq-0005G9-AR
 for barebox@lists.infradead.org; Fri, 01 Nov 2019 20:05:34 +0000
Received: from astat.fritz.box (a89-183-34-18.net-htp.de [89.183.34.18])
 by lynxeye.de (Postfix) with ESMTPA id 44186E7414D
 for <barebox@lists.infradead.org>; Fri,  1 Nov 2019 20:54:33 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  1 Nov 2019 20:54:29 +0100
Message-Id: <20191101195429.7728-1-dev@lynxeye.de>
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
Subject: [PATCH] serial: cadence: fix serial_flush
To: barebox@lists.infradead.org

The TXEMPTY bit gets set as soon as the transmit FIFO gets empty, so
flushing must wait until the bit is set instead of being unset.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/serial/serial_cadence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index 0501c400b129..6454888e3c5b 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -199,7 +199,7 @@ static void cadence_serial_flush(struct console_device *cdev)
 					struct cadence_serial_priv, cdev);
 
 	while ((readl(priv->regs + CADENCE_UART_CHANNEL_STS) &
-		CADENCE_STS_TEMPTY) != 0)
+		CADENCE_STS_TEMPTY) == 0)
 		;
 }
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
