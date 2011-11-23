Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTK7O-0004Yu-2R
 for barebox@lists.infradead.org; Wed, 23 Nov 2011 21:12:35 +0000
Received: by ywa12 with SMTP id 12so2156560ywa.36
 for <barebox@lists.infradead.org>; Wed, 23 Nov 2011 13:12:33 -0800 (PST)
From: franck.jullien@gmail.com
Date: Wed, 23 Nov 2011 22:12:28 +0100
Message-Id: <1322082748-17409-5-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1322082748-17409-1-git-send-email-franck.jullien@gmail.com>
References: <1322082748-17409-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 4/4] spi/altera_spi: Add cs_change support
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

The Linux kernel says (spi.h) :

* All SPI transfers start with the relevant chipselect active.  Normally
* it stays selected until after the last transfer in a message.  Drivers
* can affect the chipselect signal using cs_change.
*
* (i) If the transfer isn't the last one in the message, this flag is
* used to make the chipselect briefly go inactive in the middle of the
* message.  Toggling chipselect in this way may be needed to terminate
* a chip command, letting a single spi_message perform all of group of
* chip transactions together.
*
* (ii) When the transfer is the last one in the message, the chip may
* stay selected until the next transfer.  On multi-device SPI busses
* with nothing blocking messages going to other devices, this is just
* a performance hint; starting a message to another device deselects
* this one.  But in other cases, this can be used to ensure correctness.
* Some devices need protocol transactions to be built from a series of
* spi_message submissions, where the content of one message is
* determined by the results of previous messages and where the whole
* transaction
* ends when the chipselect goes intactive.

In other words, cs_change changes the default chipselect *behavior*.

Support of cs_change is necessary to implement the mci spi driver.

This patch also fix few things:

Passing the bus number to the brand new master device.
Disable chipselect during master->setup.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/include/asm/spi.h |    1 +
 drivers/spi/altera_spi.c     |   27 ++++++++++++++++++++++++++-
 2 files changed, 27 insertions(+), 1 deletions(-)

diff --git a/arch/nios2/include/asm/spi.h b/arch/nios2/include/asm/spi.h
index 4e576b9..6c5740c 100644
--- a/arch/nios2/include/asm/spi.h
+++ b/arch/nios2/include/asm/spi.h
@@ -8,6 +8,7 @@ struct spi_altera_master {
 	int	spi_mode;
 	int	databits;
 	int	speed;
+	int	bus_num;
 };
 
 struct altera_spi {
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 4fd82fb..d63dce3 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -25,6 +25,9 @@
 #include <io.h>
 #include <asm/spi.h>
 #include <asm/nios2-io.h>
+#include <clock.h>
+
+static void altera_spi_cs_inactive(struct spi_device *spi);
 
 static int altera_spi_setup(struct spi_device *spi)
 {
@@ -49,6 +52,8 @@ static int altera_spi_setup(struct spi_device *spi)
 		return -1;
 	}
 
+	altera_spi_cs_inactive(spi);
+
 	dev_dbg(master->dev, " mode 0x%08x, bits_per_word: %d, speed: %d\n",
 		spi->mode, spi->bits_per_word, altera_spi->speed);
 
@@ -167,19 +172,38 @@ static int altera_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	struct altera_spi *altera_spi = container_of(spi->master, struct altera_spi, master);
 	struct nios_spi *nios_spi = altera_spi->regs;
 	struct spi_transfer *t;
+	unsigned int cs_change;
+	const int nsecs = 50;
 
 	altera_spi_cs_active(spi);
 
+	cs_change = 0;
+
 	mesg->actual_length = 0;
 
 	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+
+		if (cs_change) {
+			ndelay(nsecs);
+			altera_spi_cs_inactive(spi);
+			ndelay(nsecs);
+			altera_spi_cs_active(spi);
+		}
+
+		cs_change = t->cs_change;
+
 		mesg->actual_length += altera_spi_do_xfer(spi, t);
+
+		if (cs_change) {
+			altera_spi_cs_active(spi);
+		}
 	}
 
 	/* Wait the end of any pending transfer */
 	while ((readl(&nios_spi->status) & NIOS_SPI_TMT) == 0);
 
-	altera_spi_cs_inactive(spi);
+	if(!cs_change)
+		altera_spi_cs_inactive(spi);
 
 	return 0;
 }
@@ -199,6 +223,7 @@ static int altera_spi_probe(struct device_d *dev)
 	master->setup = altera_spi_setup;
 	master->transfer = altera_spi_transfer;
 	master->num_chipselect = pdata->num_chipselect;
+	master->bus_num = pdata->bus_num;
 
 	altera_spi->regs = dev_request_mem_region(dev, 0);
 	altera_spi->databits = pdata->databits;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
