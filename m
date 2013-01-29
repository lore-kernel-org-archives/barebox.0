Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xd-Cp
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:45:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:37 +0100
Message-Id: <1359449147-30145-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] mtd m25p80: consistenly switch to dev_* messages
To: barebox@lists.infradead.org

Also, fix variable names in m25p80_write debug message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c |   11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 428d126..55b1020 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -408,7 +408,8 @@ static int m25p80_write(struct mtd_info *mtd, loff_t to, size_t len,
 	struct spi_transfer t[2];
 	struct spi_message m;
 
-	debug("m25p80_write %ld bytes at 0x%08lX\n", (unsigned long)count, offset);
+	dev_dbg(&flash->spi->dev, "m25p80_write %ld bytes at 0x%08llx\n",
+			(unsigned long)len, to);
 
 	spi_message_init(&m);
 	memset(t, 0, (sizeof t));
@@ -484,7 +485,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	size_t actual;
 	int cmd_sz, ret;
 
-	pr_debug("%s: %s to 0x%08x, len %zd\n", dev_name(&flash->spi->dev),
+	dev_dbg(&flash->spi->dev, "%s to 0x%08x, len %zd\n",
 			__func__, (u32)to, len);
 
 	spi_message_init(&m);
@@ -767,7 +768,7 @@ static const struct spi_device_id *jedec_probe(struct spi_device *spi)
 	 */
 	tmp = spi_write_then_read(spi, &code, 1, id, 5);
 	if (tmp < 0) {
-		pr_debug("%s: error %d reading JEDEC ID\n",
+		dev_dbg(&spi->dev, "%s: error %d reading JEDEC ID\n",
 				dev_name(&spi->dev), tmp);
 		return ERR_PTR(tmp);
 	}
@@ -923,7 +924,7 @@ static int m25p_probe(struct device_d *dev)
 	dev_info(dev, "%s (%lld Kbytes)\n", id->name,
 			(long long)flash->mtd.size >> 10);
 
-	pr_debug("mtd .name = %s, .size = 0x%llx (%lldMiB) "
+	dev_dbg(dev, "mtd .name = %s, .size = 0x%llx (%lldMiB) "
 			".erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\n",
 		flash->mtd.name,
 		(long long)flash->mtd.size, (long long)(flash->mtd.size >> 20),
@@ -932,7 +933,7 @@ static int m25p_probe(struct device_d *dev)
 
 	if (flash->mtd.numeraseregions)
 		for (i = 0; i < flash->mtd.numeraseregions; i++)
-			pr_debug("mtd.eraseregions[%d] = { .offset = 0x%llx, "
+			dev_dbg(dev, "mtd.eraseregions[%d] = { .offset = 0x%llx, "
 				".erasesize = 0x%.8x (%uKiB), "
 				".numblocks = %d }\n",
 				i, (long long)flash->mtd.eraseregions[i].offset,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
