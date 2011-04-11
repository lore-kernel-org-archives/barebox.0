Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HpA-0005wP-A3
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:10:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:10:36 +0200
Message-Id: <1302531036-27906-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] nand omap: handle erased pages correctly in hamming ecc
	mode
To: barebox@lists.infradead.org

do not throw ecc errors on erased pages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d61f7d9..9d375aa 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -377,6 +377,11 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
+		if (read_ecc[0] == 0xff && read_ecc[1] == 0xff &&
+				read_ecc[2] == 0xff && calc_ecc[0] == 0x0 &&
+				calc_ecc[1] == 0x0 && calc_ecc[0] == 0x0)
+			break;
+
 		/* Regenerate the orginal ECC */
 		orig_ecc = gen_true_ecc(read_ecc);
 		new_ecc = gen_true_ecc(calc_ecc);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
