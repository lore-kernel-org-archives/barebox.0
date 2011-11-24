Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTaM6-0007xl-Sd
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 14:32:51 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RTaLv-00041a-6i
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 15:32:39 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <mgr@pengutronix.de>) id 1RTaLv-0000kJ-5Y
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 15:32:39 +0100
Date: Thu, 24 Nov 2011 15:32:39 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111124143239.GA32286@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] atmel_spi: add mesg->actual_length, so devices can use it
 for read/write
To: barebox@lists.infradead.org

Without this i.e. the m25p driver is not working properly.

Its used to calculate the return value of the read/write function of
some devices. If the value is missing, barebox would always
miscalculate the next transfer sizes.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/spi/atmel_spi.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index faa03b1..47e6756 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -190,6 +190,7 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	struct spi_transfer *t		= NULL;
 	unsigned int bits		= spi->bits_per_word;
 
+	mesg->actual_length = 0;
 	ret = master->setup(spi);
 	if (ret < 0) {
 		dev_dbg(master->dev, "transfer: master setup failed\n");
@@ -210,6 +211,7 @@ static int atmel_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 		u32 tx_val;
 		int i = 0, rx_val;
 
+		mesg->actual_length += t->len;
 		if (bits <= 8) {
 			const u8 *txbuf = t->tx_buf;
 			u8 *rxbuf = t->rx_buf;
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
