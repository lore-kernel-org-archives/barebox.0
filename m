Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmQ-0006lw-KO
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:10:10 +0000
Received: by mail-pg0-x243.google.com with SMTP id 25so4617710pgy.3
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:07 -0800
Message-Id: <20170308220909.4560-19-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/20] spi: atmel_spi: Configure CS GPIO as output
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On AT91 GPIOs default to being inputs, so we need to explicitly
configure CS gpio to being an output.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/atmel_spi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 3f2c527..67028e6 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -172,6 +172,8 @@ static int atmel_spi_setup(struct spi_device *spi)
 	struct spi_master	*master = spi->master;
 	struct atmel_spi	*as = to_atmel_spi(master);
 
+	int			npcs_pin;
+	unsigned		active = spi->mode & SPI_CS_HIGH;
 	u32			scbr, csr;
 	unsigned int		bits = spi->bits_per_word;
 	unsigned long		bus_hz;
@@ -183,6 +185,8 @@ static int atmel_spi_setup(struct spi_device *spi)
 		return -EINVAL;
 	}
 
+	npcs_pin = as->cs_pins[spi->chip_select];
+
 	if (bits < 8 || bits > 16) {
 		dev_dbg(&spi->dev,
 				"setup: invalid bits_per_word %u (8 to 16)\n",
@@ -235,7 +239,7 @@ static int atmel_spi_setup(struct spi_device *spi)
 	csr |= SPI_BF(DLYBS, 0);
 	csr |= SPI_BF(DLYBCT, 0);
 
-	/* gpio_direction_output(npcs_pin, !(spi->mode & SPI_CS_HIGH)); */
+	gpio_direction_output(npcs_pin, !active);
 	dev_dbg(master->dev,
 		"setup: %lu Hz bpw %u mode 0x%x -> csr%d %08x\n",
 		bus_hz / scbr, bits, spi->mode, spi->chip_select, csr);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
