Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp95.ord1d.emailsrvr.com ([184.106.54.95])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIaDb-000474-TF
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 16:23:41 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Wed, 16 Sep 2020 17:23:17 +0100
Message-Id: <20200916162317.5270-1-abbotti@mev.co.uk>
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
Subject: [PATCH] mtd: spi-nor: cadence: fix csqpi corruption in
 cqspi_set_protocol
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

cqspi_set_protocol() sets `inst_width`, `addr_width` and `data_width`
for the previous chip-select in `cqspi->current_cs`, but that is
initially set to -1, leading to corruption of other `cqspi->` members.
Change it to set `inst_width`, `addr_width` and `data_width` for the
chip-select associated with the `nor` parameter.

Fixes: 5085d2ef3fbf ("mtd: spi-nor: cadence: add cqspi_set_protocol")
Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 11e4d236d..2372482ac 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -896,8 +896,12 @@ static int cqspi_set_protocol(struct spi_nor *nor, const int read)
 {
 	struct cqspi_st *cqspi = nor->priv;
 	struct cqspi_flash_pdata *f_pdata;
+	int cs = cqspi_find_chipselect(nor);
 
-	f_pdata = &cqspi->f_pdata[cqspi->current_cs];
+	if (cs < 0)
+		return -EINVAL;
+
+	f_pdata = &cqspi->f_pdata[cs];
 
 	f_pdata->inst_width = CQSPI_INST_TYPE_SINGLE;
 	f_pdata->addr_width = CQSPI_INST_TYPE_SINGLE;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
