Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyEB-0006cF-Qu
 for barebox@lists.infradead.org; Tue, 20 Aug 2019 07:06:49 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 20 Aug 2019 09:06:37 +0200
Message-Id: <20190820070640.3526-2-o.rempel@pengutronix.de>
In-Reply-To: <20190820070640.3526-1-o.rempel@pengutronix.de>
References: <20190820070640.3526-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/4] serial: atmel: set linux_console_name
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/serial/atmel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 2f8adc989f..8394273f9f 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -436,6 +436,7 @@ static int atmel_serial_probe(struct device_d *dev)
 	cdev->getc = atmel_serial_getc;
 	cdev->setbrg = atmel_serial_setbaudrate;
 	cdev->set_mode = atmel_serial_set_mode;
+	cdev->linux_console_name = "ttyAT";
 
 	atmel_serial_init_port(cdev);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
