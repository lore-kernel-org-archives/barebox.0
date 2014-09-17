Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUGiV-0005o5-C1
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 15:00:23 +0000
Received: by mail-wg0-f49.google.com with SMTP id m15so1545796wgh.20
 for <barebox@lists.infradead.org>; Wed, 17 Sep 2014 08:00:01 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Wed, 17 Sep 2014 17:00:19 +0200
Message-Id: <1410966019-31054-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1410966019-31054-1-git-send-email-poggi.raph@gmail.com>
References: <1410966019-31054-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] I2C: at91: fix the method for interrupt
To: barebox@lists.infradead.org

From: Bo Shen <voice.shen@atmel.com>

As the i2c-at91 driver won't work in the interrupt mode,
so need to poll the interrupts.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
 drivers/i2c/busses/i2c-at91.c | 38 +++++++++++++++++++++++---------------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 6494401..d9224de 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -174,24 +174,32 @@ static void at91_twi_read_next_byte(struct at91_twi_dev *dev)
 static int at91_twi_wait_completion(struct at91_twi_dev *dev)
 {
 	uint64_t start = get_time_ns();
-	unsigned int status = at91_twi_read(dev, AT91_TWI_SR);
-	unsigned int irqstatus = at91_twi_read(dev, AT91_TWI_IMR);
+	unsigned int status;
+	unsigned int irqstatus;
+
+	do {
+		status = at91_twi_read(dev, AT91_TWI_SR);
+		irqstatus = at91_twi_read(dev, AT91_TWI_IMR);
+
+		if (!(status & irqstatus)) {
+			if (is_timeout(start, AT91_I2C_TIMEOUT)) {
+				dev_warn(&dev->adapter.dev, "timeout waiting for bus ready\n");
+				return -ETIMEDOUT;
+			} else {
+				continue;
+			}
+		}
 
-	if (irqstatus & AT91_TWI_RXRDY)
-		at91_twi_read_next_byte(dev);
-	else if (irqstatus & AT91_TWI_TXRDY)
-		at91_twi_write_next_byte(dev);
-	else
-		dev_warn(&dev->adapter.dev, "neither rx and tx are ready\n");
+		if (irqstatus & AT91_TWI_RXRDY)
+			at91_twi_read_next_byte(dev);
+		else if (irqstatus & AT91_TWI_TXRDY)
+			at91_twi_write_next_byte(dev);
+		else
+			dev_warn(&dev->adapter.dev, "neither rx and tx are ready\n");
 
-	dev->transfer_status |= status;
+		dev->transfer_status |= status;
 
-	while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP)) {
-		if (is_timeout(start, AT91_I2C_TIMEOUT)) {
-			dev_warn(&dev->adapter.dev, "timeout waiting for bus ready\n");
-			return -ETIMEDOUT;
-		}
-	}
+	} while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
 
 	at91_disable_twi_interrupts(dev);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
