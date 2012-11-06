Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVow6-0007zF-7D
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 19:35:48 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5EE71FFBD81
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 20:46:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  6 Nov 2012 20:33:31 +0100
Message-Id: <1352230416-9396-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121106193010.GE25679@game.jcrosoft.org>
 <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] atmel_spi: after setup the cs need to be disable
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/atmel_spi.c |   29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index afbca9f..dbf6af8 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -66,6 +66,18 @@ static inline bool atmel_spi_is_v2(void)
 	return !cpu_is_at91rm9200();
 }
 
+static void atmel_spi_chipselect(struct spi_device *spi, struct atmel_spi *as, int on)
+{
+	struct spi_master *master = &as->master;
+	int cs_pin;
+	int val = ((spi->mode & SPI_CS_HIGH) != 0) == on;
+
+	BUG_ON(spi->chip_select >= master->num_chipselect);
+	cs_pin = as->cs_pins[spi->chip_select];
+
+	gpio_direction_output(cs_pin, val);
+}
+
 static int atmel_spi_setup(struct spi_device *spi)
 {
 	struct spi_master	*master = spi->master;
@@ -78,7 +90,7 @@ static int atmel_spi_setup(struct spi_device *spi)
 	if (spi->controller_data) {
 		csr = (u32)spi->controller_data;
 		spi_writel(as, CSR0, csr);
-		return 0;
+		goto out;
 	}
 
 	dev_dbg(master->dev, "%s mode 0x%08x bits_per_word: %d speed: %d\n",
@@ -140,19 +152,10 @@ static int atmel_spi_setup(struct spi_device *spi)
 	if (bits > 0)
 		spi->controller_data = (void *)csr;
 
-	return 0;
-}
-
-static void atmel_spi_chipselect(struct spi_device *spi, struct atmel_spi *as, int on)
-{
-	struct spi_master *master = &as->master;
-	int cs_pin;
-	int val = ((spi->mode & SPI_CS_HIGH) != 0) == on;
-
-	BUG_ON(spi->chip_select >= master->num_chipselect);
-	cs_pin = as->cs_pins[spi->chip_select];
+out:
+	atmel_spi_chipselect(spi, as, 0);
 
-	gpio_direction_output(cs_pin, val);
+	return 0;
 }
 
 static int atmel_spi_xchg(struct atmel_spi *as, u32 tx_val)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
