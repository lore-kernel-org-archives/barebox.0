Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kndaS-00088V-Ae
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 08:15:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 09:15:32 +0100
Message-Id: <20201211081533.7372-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] mtd: nand: omap: Bail out when omap_gpmc_eccmode() fails
To: Barebox List <barebox@lists.infradead.org>

The driver can't work when omap_gpmc_eccmode() fails, so do not ignore
the error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 8fdfd236bd..db1ca88791 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1322,7 +1322,9 @@ static int gpmc_nand_probe(struct device_d *pdev)
 			omap_gpmc_eccmode_set, NULL, (int *)&oinfo->ecc_mode,
 			ecc_mode_strings, ARRAY_SIZE(ecc_mode_strings), oinfo);
 
-	omap_gpmc_eccmode(oinfo, oinfo->ecc_mode);
+	err = omap_gpmc_eccmode(oinfo, oinfo->ecc_mode);
+	if (err)
+		goto out_release_mem;
 
 	/* We are all set to register with the system now! */
 	err = add_mtd_nand_device(minfo, "nand");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
