Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC0U-0002iQ-DZ
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:32:03 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:31:52 +0100
Message-Id: <1363282313-18176-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282313-18176-1-git-send-email-mkl@pengutronix.de>
References: <1363282313-18176-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] driver/serial: auart: fix flush
To: barebox@lists.infradead.org

Actually wait until fifo is empty.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/serial/serial_auart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index fa2e04f..1aebb07 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -129,7 +129,7 @@ static void auart_serial_flush(struct console_device *cdev)
 	struct auart_priv *priv = container_of(cdev, struct auart_priv, cdev);
 
 	/* Wait for TX FIFO empty */
-	while (readl(priv->base + HW_UARTAPP_STAT) & BM_UARTAPP_STAT_TXFE)
+	while (!(readl(priv->base + HW_UARTAPP_STAT) & BM_UARTAPP_STAT_TXFE))
 		;
 }
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
