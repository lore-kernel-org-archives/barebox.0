Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1.mail.ru ([94.100.176.129])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srsgb-0004q0-ST
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:30:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 19 Jul 2012 19:30:12 +0400
Message-Id: <1342711817-866-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/6] mc13xxx: Define maximum SPI clock frequency global to
 driver
To: barebox@lists.infradead.org

This patch provide setup for SPI clk frequency global to driver.
For MC13783 maximum clock frequency is 20 MHz,
for MC13892 maximum clock frequency is 26 MHz,
so we define 20 MHz as a maximum SPI clk.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c          |    1 -
 arch/arm/boards/freescale-mx51-pdk/board.c |    1 -
 arch/arm/boards/pcm038/pcm038.c            |    1 -
 drivers/mfd/mc13xxx.c                      |    1 +
 4 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index f494174..f309e0c 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -191,7 +191,6 @@ static struct spi_imx_master ecspi_0_data = {
 static const struct spi_board_info ccxmx51_spi_board_info[] = {
 	{
 		.name		= "mc13xxx-spi",
-		.max_speed_hz	= 6000000,
 		.bus_num	= 0,
 		.chip_select	= 0,
 	},
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 3a568d0..7c2c8fe 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -117,7 +117,6 @@ static struct spi_imx_master spi_0_data = {
 static const struct spi_board_info mx51_babbage_spi_board_info[] = {
 	{
 		.name = "mc13xxx-spi",
-		.max_speed_hz = 300000,
 		.bus_num = 0,
 		.chip_select = 0,
 	},
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index badc978..fa82b02 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -59,7 +59,6 @@ static struct spi_imx_master pcm038_spi_0_data = {
 static struct spi_board_info pcm038_spi_board_info[] = {
 	{
 		.name = "mc13xxx-spi",
-		.max_speed_hz = 3000000,
 		.bus_num = 0,
 		.chip_select = 0,
 	}
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 2934e9d..8bb0d00 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -297,6 +297,7 @@ static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
 		mc_dev->spi = dev->type_data;
 		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
 		mc_dev->spi->bits_per_word = 32;
+		mc_dev->spi->max_speed_hz = 20000000;
 	}
 	mc_dev->cdev.size = 256;
 	mc_dev->cdev.dev = dev;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
