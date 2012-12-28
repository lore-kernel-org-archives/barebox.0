Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tod6Q-0003pc-B1
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 16:48:10 +0000
Received: from mail632.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D5C66FF9B4E
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 18:00:48 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 17:46:31 +0100
Message-Id: <1356713191-9614-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356713191-9614-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228164327.GB7216@game.jcrosoft.org>
 <1356713191-9614-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] spi: atmel: request cs pin via gpiolib
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 793933e..08cb416 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -371,6 +371,7 @@ err:
 static int atmel_spi_probe(struct device_d *dev)
 {
 	int ret = 0;
+	int i;
 	struct spi_master *master;
 	struct atmel_spi *as;
 	struct at91_spi_platform_data *pdata = dev->platform_data;
@@ -399,6 +400,12 @@ static int atmel_spi_probe(struct device_d *dev)
 	as->cs_pins = pdata->chipselect;
 	as->regs = dev_request_mem_region(dev, 0);
 
+	for (i = 0; i <= master->num_chipselect; i++) {
+		ret = gpio_request(as->cs_pins[i], dev_name(dev));
+		if (ret)
+			goto out_gpio;
+	}
+
 	/* Initialize the hardware */
 	clk_enable(as->clk);
 	spi_writel(as, CR, SPI_BIT(SWRST));
@@ -418,6 +425,7 @@ static int atmel_spi_probe(struct device_d *dev)
 out_reset_hw:
 	spi_writel(as, CR, SPI_BIT(SWRST));
 	spi_writel(as, CR, SPI_BIT(SWRST)); /* AT91SAM9263 Rev B workaround */
+out_gpio:
 	clk_disable(as->clk);
 	clk_put(as->clk);
 out_free:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
