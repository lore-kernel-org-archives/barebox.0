Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knfBn-0002fA-Tn
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 09:58:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 10:58:03 +0100
Message-Id: <20201211095803.22050-3-s.hauer@pengutronix.de>
In-Reply-To: <20201211095803.22050-1-s.hauer@pengutronix.de>
References: <20201211095803.22050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mtd: nand: Make software ECC support optional
To: Barebox List <barebox@lists.infradead.org>

Most NAND controllers use hardware ECC, so make software ECC support
optional to save some binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig     | 5 +++++
 drivers/mtd/nand/nand_base.c | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 339f7a923d..7c93260892 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -7,8 +7,13 @@ menuconfig NAND
 
 if NAND
 
+config MTD_NAND_ECC_SOFT
+	bool
+	prompt "Support software ecc"
+
 config MTD_NAND_ECC_SW_BCH
 	select BCH
+	depends on MTD_NAND_ECC_SOFT
 	bool
 	prompt "Support software BCH ecc"
 
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 0a980e4499..7c325f1f70 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -5053,6 +5053,9 @@ static int nand_set_ecc_soft_ops(struct nand_chip *chip)
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
+	if (!IS_ENABLED(CONFIG_MTD_NAND_ECC_SOFT))
+		return -ENOSYS;
+
 	if (WARN_ON(ecc->mode != NAND_ECC_SOFT))
 		return -EINVAL;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
