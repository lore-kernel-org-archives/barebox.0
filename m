Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdMZj-0000P4-1V
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 00:04:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Nov 2020 01:04:17 +0100
Message-Id: <20201113000417.25478-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master] mtd: nand-imx: fix passing pointer of wrong type on
 NAND_CMD_READOOB
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, ukl@pengutronix.de, sha@pengutronix.de

copy_spare used to take a mtd_info, but since 5f605dc6168c ("mtd: nand:
Pass struct nand_chip around") it now takes a nand_chip.
3588d40c5385 ("mtd: nand-imx: repair reading the oob area") was drafted
in parallel and still passes a mtd_info. Their merge did not adjust
this, triggering a compiler warning and undefined behavior. Fix this.

Fixes: 7b1d8b4b3561 ("Merge branch 'for-next/mtd-nand'")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 3d4082fe1851..0f20e9d394a0 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1022,7 +1022,7 @@ static void imx_nand_command(struct nand_chip *chip, unsigned command,
 		 */
 		if (command == NAND_CMD_READOOB) {
 			host->send_page(host, NFC_OUTPUT);
-			copy_spare(mtd, 1, host->data_buf + mtd->writesize);
+			copy_spare(chip, 1, host->data_buf + mtd->writesize);
 		}
 
 		break;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
