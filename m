Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC0U-0002iR-Db
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:32:03 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:31:53 +0100
Message-Id: <1363282313-18176-3-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] driver/serial: stm-serial: fix flush
To: barebox@lists.infradead.org

Wait until fifo is empty, not until fifo is not full.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/serial/stm-serial.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 3968892..e1276bd 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -34,6 +34,7 @@
 
 #define UARTDBGDR 0x00
 #define UARTDBGFR 0x18
+# define TXFE (1 << 7)
 # define TXFF (1 << 5)
 # define RXFE (1 << 4)
 #define UARTDBGIBRD 0x24
@@ -92,7 +93,7 @@ static void stm_serial_flush(struct console_device *cdev)
 	struct stm_priv *priv = container_of(cdev, struct stm_priv, cdev);
 
 	/* Wait for TX FIFO empty */
-	while (readl(priv->base + UARTDBGFR) & TXFF)
+	while (!(readl(priv->base + UARTDBGFR) & TXFE))
 		;
 }
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
