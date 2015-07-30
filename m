Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpCk-0005jg-4E
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 14:53:06 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 7ED25C35AE
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 16:52:20 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 16:52:11 +0200
Message-Id: <1438267931-22374-7-git-send-email-jluebbe@debian.org>
In-Reply-To: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
References: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH v2 6/6] i2c: gpio: add bus recovery support
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/busses/i2c-gpio.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index b4a0ecd..9362ed1 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -10,6 +10,7 @@
 
 #include <common.h>
 #include <driver.h>
+#include <malloc.h>
 #include <i2c/i2c.h>
 #include <i2c/i2c-algo-bit.h>
 #include <i2c/i2c-gpio.h>
@@ -187,6 +188,13 @@ static int i2c_gpio_probe(struct device_d *dev)
 	adap->algo_data = bit_data;
 	adap->dev.parent = dev;
 	adap->dev.device_node = dev->device_node;
+	adap->bus_recovery_info = xzalloc(sizeof(*adap->bus_recovery_info));
+	adap->bus_recovery_info->scl_gpio = pdata->scl_pin;
+	adap->bus_recovery_info->sda_gpio = pdata->sda_pin;
+	adap->bus_recovery_info->get_sda = i2c_get_sda_gpio_value;
+	adap->bus_recovery_info->get_scl = i2c_get_scl_gpio_value;
+	adap->bus_recovery_info->set_scl = i2c_set_scl_gpio_value;
+	adap->bus_recovery_info->recover_bus = i2c_generic_scl_recovery;
 
 	adap->nr = dev->id;
 	ret = i2c_bit_add_numbered_bus(adap);
@@ -201,10 +209,12 @@ static int i2c_gpio_probe(struct device_d *dev)
 	return 0;
 
 err_add_bus:
+	free(adap->bus_recovery_info);
 	gpio_free(pdata->scl_pin);
 err_request_scl:
 	gpio_free(pdata->sda_pin);
 err_request_sda:
+	free(priv);
 	return ret;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
