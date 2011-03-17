Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q0DAt-0006hz-7R
	for barebox@lists.infradead.org; Thu, 17 Mar 2011 13:23:36 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Thu, 17 Mar 2011 15:23:17 +0200
Message-Id: <57199e2375b3a93b4979c4387d297d2cbcb8d9b2.1300368089.git.baruch@tkos.co.il>
In-Reply-To: <0781cdb4e6ac0ac31ebb1f45dd57cd2c9192dd02.1300368089.git.baruch@tkos.co.il>
References: <0781cdb4e6ac0ac31ebb1f45dd57cd2c9192dd02.1300368089.git.baruch@tkos.co.il>
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
Subject: [PATCH 2/2] mtd/nand_imx: add support for page size of 4k
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/mtd/nand/nand_imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 48841dc..aff636a 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1013,7 +1013,7 @@ static int __init imxnd_probe(struct device_d *dev)
 
 	imx_nand_set_layout(mtd->writesize, pdata->width == 2 ? 16 : 8);
 
-	if (mtd->writesize == 2048) {
+	if (mtd->writesize >= 2048) {
 		this->ecc.layout = oob_largepage;
 		host->pagesize_2k = 1;
 		if (nfc_is_v21()) {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
