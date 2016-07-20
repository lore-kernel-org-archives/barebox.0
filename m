Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPkXv-0005kh-AT
 for barebox@lists.infradead.org; Wed, 20 Jul 2016 05:59:53 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Wed, 20 Jul 2016 07:57:28 +0200
Message-Id: <1468994248-12641-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] mc13xxx: make driver-provided SPI frequency overridable
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The preset SPI frequency for mc13xxx PMIC introduced with patch 6e18b3a48ee4
("mc13xxx: Define maximum SPI clock frequency global to driver") is not
desirable or working on all boards. Provide a possibility to override
the default SPI max_speed_hz from board code.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mfd/mc13xxx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 68d70c5..b2fcd95 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -330,7 +330,8 @@ static int __init mc13xxx_probe(struct device_d *dev)
 		mc_dev->spi = dev->type_data;
 		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
 		mc_dev->spi->bits_per_word = 32;
-		mc_dev->spi->max_speed_hz = 20000000;
+		mc_dev->spi->max_speed_hz = mc_dev->spi->max_speed_hz ?
+			mc_dev->spi->max_speed_hz : 20000000;
 		mc_dev->map = regmap_init(dev, &regmap_mc13xxx_spi_bus,
 			     mc_dev, &mc13xxx_regmap_spi_config);
 	}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
