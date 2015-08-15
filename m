Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x22f.google.com ([2607:f8b0:400d:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQfsV-0003Da-47
 for barebox@lists.infradead.org; Sat, 15 Aug 2015 18:08:23 +0000
Received: by qged69 with SMTP id d69so70392606qge.0
 for <barebox@lists.infradead.org>; Sat, 15 Aug 2015 11:07:59 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 15 Aug 2015 15:07:33 -0300
Message-Id: <1439662053-22341-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] spi-nor: Align spi_nor_ids[] with kernel 4.1
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@freescale.com>

Sync the spi_nor_ids[] struct with the one from kernel 4.1.

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index c85ed34..9435424 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -523,6 +523,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "en25q64",    INFO(0x1c3017, 0, 64 * 1024,  128, SECT_4K) },
 	{ "en25qh128",  INFO(0x1c7018, 0, 64 * 1024,  256, 0) },
 	{ "en25qh256",  INFO(0x1c7019, 0, 64 * 1024,  512, 0) },
+	{ "en25s64",	INFO(0x1c3817, 0, 64 * 1024,  128, 0) },
 
 	/* ESMT */
 	{ "f25l32pa", INFO(0x8c2016, 0, 64 * 1024, 64, SECT_4K) },
@@ -537,6 +538,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	/* GigaDevice */
 	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "gd25q64", INFO(0xc84017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "gd25q128", INFO(0xc84018, 0, 64 * 1024, 256, SECT_4K) },
 
 	/* Intel/Numonyx -- xxxs33b */
 	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
@@ -551,6 +553,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
 	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
 	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
+	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
 	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
 	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
 	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
@@ -559,14 +562,14 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048, SPI_NOR_QUAD_READ) },
 
 	/* Micron */
-	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, 0) },
-	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, 0) },
-	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, 0) },
-	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, 0) },
+	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
+	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, SPI_NOR_QUAD_READ) },
+	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
+	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K) },
-	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, USE_FSR) },
-	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 
 	/* PMC */
 	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
@@ -646,6 +649,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "m25px80",    INFO(0x207114,  0, 64 * 1024, 16, 0) },
 
 	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
+	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
 	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
 	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  SECT_4K) },
 	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  SECT_4K) },
@@ -656,6 +660,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
