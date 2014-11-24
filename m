Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XsrUL-00070X-0b
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:28 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTw-0000NZ-Lr
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:43 +0100
Message-Id: <1416827220-3103-4-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 03/20] firmware: altera-serial: don't try to check void return
 value
To: barebox@lists.infradead.org

Fixes:
.../altera_serial.c:84:6: error: void value not ignored as it ought to be

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/firmware/altera_serial.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 23ba3b00a478..232f1a682619 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -81,9 +81,7 @@ static int altera_spi_open(struct firmware_handler *fh)
 	}
 
 	/* arm the FPGA to await its new firmware */
-	ret = gpio_set_value(this->nconfig_gpio, 1);
-	if (ret)
-		return ret;
+	gpio_set_value(this->nconfig_gpio, 1);
 
 	/* once again, we might need padding the data */
 	this->padding_done = false;
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
