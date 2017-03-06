Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1Wl-0007dM-Pb
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:55:00 +0000
Received: by mail-pf0-x241.google.com with SMTP id o126so4812122pfb.1
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:38 -0800
Message-Id: <20170306225356.31475-28-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 27/45] spi: atmel_spi: Configure CS GPIO as output
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On AT91 GPIOs default to being inputs, so we need to explicitly
configure CS gpio to being an output.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/spi/atmel_spi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 68466ef..b183344 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -173,6 +173,8 @@ static int atmel_spi_setup(struct spi_device *spi)
 	struct spi_master	*master = spi->master;
 	struct atmel_spi	*as = to_atmel_spi(master);
 
+	int			npcs_pin;
+	unsigned		active = spi->mode & SPI_CS_HIGH;
 	u32			scbr, csr;
 	unsigned int		bits = spi->bits_per_word;
 	unsigned long		bus_hz;
@@ -184,6 +186,8 @@ static int atmel_spi_setup(struct spi_device *spi)
 		return -EINVAL;
 	}
 
+	npcs_pin = as->cs_pins[spi->chip_select];
+
 	if (bits < 8 || bits > 16) {
 		dev_dbg(&spi->dev,
 				"setup: invalid bits_per_word %u (8 to 16)\n",
@@ -236,7 +240,7 @@ static int atmel_spi_setup(struct spi_device *spi)
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
