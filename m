Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kndaS-00088S-AZ
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 08:15:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 09:15:31 +0100
Message-Id: <20201211081533.7372-3-s.hauer@pengutronix.de>
In-Reply-To: <20201211081533.7372-1-s.hauer@pengutronix.de>
References: <20201211081533.7372-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mtd: nand: omap: print error when ELM config failed
To: Barebox List <barebox@lists.infradead.org>

ELM config can fail when ELM support is disabled. Let the user know
about it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 1d81500bce..8fdfd236bd 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1128,8 +1128,11 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		err = elm_config(BCH16_ECC,
 				 minfo->writesize / nand->ecc.size,
 				 nand->ecc.size, nand->ecc.bytes);
-		if (err < 0)
+		if (err < 0) {
+			dev_err(oinfo->pdev, "ELM config failed: %s\n",
+				strerror(-err));
 			return err;
+		}
 
 		nand->ecc.read_page = gpmc_read_page_hwecc_elm;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
