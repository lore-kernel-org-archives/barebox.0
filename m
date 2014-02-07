Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBgse-0007KH-8n
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:33:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Feb 2014 09:33:20 +0100
Message-Id: <1391762000-19451-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391762000-19451-1-git-send-email-s.hauer@pengutronix.de>
References: <1391762000-19451-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: m25p80: set driver id_table
To: barebox@lists.infradead.org

This sets the id_table in the driver correctly so that the driver
can match to the various types of flashes, not only "m25p80".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 9594011..c36d240 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -73,11 +73,6 @@
 
 #define SPI_NAME_SIZE   32
 
-struct spi_device_id {
-	char name[SPI_NAME_SIZE];
-	unsigned long driver_data;
-};
-
 struct m25p {
 	struct spi_device	*spi;
 	struct mtd_info		mtd;
@@ -618,7 +613,7 @@ struct flash_info {
  * more flash chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
  */
-static const struct spi_device_id m25p_ids[] = {
+static const struct platform_device_id m25p_ids[] = {
 	/* Atmel -- some are (confusingly) marketed as "DataFlash" */
 	{ "at25fs010",  INFO(0x1f6601, 0, 32 * 1024,   4, SECT_4K) },
 	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, SECT_4K) },
@@ -755,7 +750,7 @@ static const struct spi_device_id m25p_ids[] = {
 	{ },
 };
 
-static const struct spi_device_id *jedec_probe(struct spi_device *spi)
+static const struct platform_device_id *jedec_probe(struct spi_device *spi)
 {
 	int			tmp;
 	u8			code = OPCODE_RDID;
@@ -803,7 +798,7 @@ static const struct spi_device_id *jedec_probe(struct spi_device *spi)
 static int m25p_probe(struct device_d *dev)
 {
 	struct spi_device *spi = (struct spi_device *)dev->type_data;
-	const struct spi_device_id	*id = NULL;
+	const struct platform_device_id	*id = NULL;
 	struct flash_platform_data	*data;
 	struct m25p			*flash;
 	struct flash_info		*info = NULL;
@@ -819,7 +814,7 @@ static int m25p_probe(struct device_d *dev)
 	 */
 	data = dev->platform_data;
 	if (data && data->type) {
-		const struct spi_device_id *plat_id;
+		const struct platform_device_id *plat_id;
 
 		for (i = 0; i < ARRAY_SIZE(m25p_ids) - 1; i++) {
 			plat_id = &m25p_ids[i];
@@ -840,7 +835,7 @@ static int m25p_probe(struct device_d *dev)
 	}
 
 	if (do_jdec_probe) {
-		const struct spi_device_id *jid;
+		const struct platform_device_id *jid;
 
 		jid = jedec_probe(spi);
 		if (IS_ERR(jid)) {
@@ -969,6 +964,7 @@ static struct driver_d m25p80_driver = {
 	.name	= "m25p80",
 	.probe	= m25p_probe,
 	.of_compatible = DRV_OF_COMPAT(m25p80_dt_ids),
+	.id_table = (struct platform_device_id *)m25p_ids,
 };
 device_spi_driver(m25p80_driver);
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
