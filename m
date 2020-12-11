Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knfBh-0002e7-Cc
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 09:58:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 10:58:02 +0100
Message-Id: <20201211095803.22050-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] mtd: nand: Make support for syndrome hardware ecc optional
To: Barebox List <barebox@lists.infradead.org>

NAND_ECC_HW_SYNDROME is currently not needed by the drivers in barebox,
so make support for it optional again. This has been optional before the
last NAND layer update, just re-add the option. This time drop the
"default y", as this option shouldn't be needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig     | 4 ++++
 drivers/mtd/nand/nand_base.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 97819e5c0b..339f7a923d 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -12,6 +12,10 @@ config MTD_NAND_ECC_SW_BCH
 	bool
 	prompt "Support software BCH ecc"
 
+config NAND_ECC_HW_SYNDROME
+	bool
+	prompt "Support syndrome hardware ecc controllers"
+
 config NAND_ALLOW_ERASE_BAD
 	bool
 	depends on MTD_WRITE
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 2c3c0b360f..0a980e4499 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -5574,6 +5574,10 @@ int nand_scan_tail(struct nand_chip *chip)
 		if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
 			ecc->write_subpage = nand_write_subpage_hwecc;
 	case NAND_ECC_HW_SYNDROME:
+		if (!IS_ENABLED(CONFIG_NAND_ECC_HW_SYNDROME)) {
+			ret = -ENOSYS;
+			goto err_nand_manuf_cleanup;
+		}
 		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
 		    (!ecc->read_page ||
 		     ecc->read_page == nand_read_page_hwecc ||
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
