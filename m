Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TodH0-0004Jv-Gx
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 16:59:08 +0000
Received: from mail632.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A9E41FF9A99
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 18:00:48 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 17:46:29 +0100
Message-Id: <1356713191-9614-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121228164327.GB7216@game.jcrosoft.org>
References: <20121228164327.GB7216@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] mtd: atmel_nand: request and configure pio via gpiolib
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/atmel_nand.c |   53 +++++++++++++++++++++++++++++++++++++++--
 1 file changed, 51 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 7e0de51..2a57dbb 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1114,8 +1114,42 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	nand_chip->IO_ADDR_W = host->io_base;
 	nand_chip->cmd_ctrl = atmel_nand_cmd_ctrl;
 
-	if (gpio_is_valid(host->board->rdy_pin))
+	if (gpio_is_valid(host->board->rdy_pin)) {
+		res = gpio_request(host->board->rdy_pin, "nand_rdy");
+		if (res < 0) {
+			dev_err(dev, "can't request rdy gpio %d\n",
+				host->board->rdy_pin);
+			goto err_no_card;
+		}
+
+		res = gpio_direction_input(host->board->rdy_pin);
+		if (res < 0) {
+			dev_err(dev,
+				"can't request input direction rdy gpio %d\n",
+				host->board->rdy_pin);
+			goto err_no_card;
+		}
+
 		nand_chip->dev_ready = atmel_nand_device_ready;
+	}
+
+	if (gpio_is_valid(host->board->enable_pin)) {
+		res = gpio_request(host->board->enable_pin, "nand_enable");
+		if (res < 0) {
+			dev_err(dev,
+				"can't request enable gpio %d\n",
+				host->board->enable_pin);
+			goto err_no_card;
+		}
+
+		res = gpio_direction_output(host->board->enable_pin, 1);
+		if (res < 0) {
+			dev_err(dev,
+				"can't request output direction enable gpio %d\n",
+				host->board->enable_pin);
+			goto err_no_card;
+		}
+	}
 
 	nand_chip->ecc.mode = NAND_ECC_SOFT;
 
@@ -1138,9 +1172,24 @@ static int __init atmel_nand_probe(struct device_d *dev)
 	atmel_nand_enable(host);
 
 	if (gpio_is_valid(host->board->det_pin)) {
+		res = gpio_request(host->board->det_pin, "nand_det");
+		if (res < 0) {
+			dev_err(dev, "can't request det gpio %d\n",
+				host->board->det_pin);
+			goto err_no_card;
+		}
+
+		res = gpio_direction_input(host->board->det_pin);
+		if (res < 0) {
+			dev_err(dev,
+				"can't request input direction det gpio %d\n",
+				host->board->det_pin);
+			goto err_no_card;
+		}
+
 		if (gpio_get_value(host->board->det_pin)) {
 			printk("No SmartMedia card inserted.\n");
-			res = ENXIO;
+			res = -ENXIO;
 			goto err_no_card;
 		}
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
