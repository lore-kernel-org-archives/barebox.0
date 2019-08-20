Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyEB-0006cG-Mp
 for barebox@lists.infradead.org; Tue, 20 Aug 2019 07:06:49 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 20 Aug 2019 09:06:39 +0200
Message-Id: <20190820070640.3526-4-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 3/4] mtd: spi-nor: add support for sst26vf series
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Ported from linux-4.19-at91 linux4sam_6.1 and needed for
SAMA5D27 SOM1 EK.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c506e62a62..1a3faecd52 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -753,6 +753,31 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "sst25wf040b", INFO(0x621613, 0, 64 * 1024,  8, SECT_4K) },
 	{ "sst25wf040",  INFO(0xbf2504, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
 	{ "sst25wf080",  INFO(0xbf2505, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
+	{
+		"sst26vf016b", INFO(0xbf2641, 0, 64 * 1024, 32,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			UNLOCK_GLOBAL_BLOCK)
+	},
+	{
+		"sst26vf032b", INFO(0xbf2642, 0, 64 * 1024, 64,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			UNLOCK_GLOBAL_BLOCK)
+	},
+	{
+		"sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			UNLOCK_GLOBAL_BLOCK)
+	},
+	{
+		"sst26vf040b", INFO(0xbf2654, 0, 64 * 1024, 8,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			UNLOCK_GLOBAL_BLOCK)
+	},
+	{
+		"sst26vf080b", INFO(0xbf2658, 0, 64 * 1024, 16,
+			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			UNLOCK_GLOBAL_BLOCK)
+	},
 
 	/* ST Microelectronics -- newer production may have feature updates */
 	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
