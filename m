Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbsWC-0007Qt-It
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:47:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:46:44 +0200
Message-Id: <1412779605-25460-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412779605-25460-1-git-send-email-s.hauer@pengutronix.de>
References: <1412779605-25460-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] firmware: altera_serial: gpio_set_value returns void
To: barebox@lists.infradead.org

So do not try to check the return value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/altera_serial.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 23ba3b0..232f1a6 100644
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
