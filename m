Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RlgZt-0007Hc-LT
 for barebox@lists.infradead.org; Fri, 13 Jan 2012 12:49:54 +0000
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 13 Jan 2012 13:49:35 +0100
Message-Id: <1326458975-28965-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [RFC] fix gpmc_nand_probe without param support
To: barebox@lists.infradead.org

commit 30de24d79fc6e659d0070f6e863ae0e53567ba0e param: add config to disable it
removes param support for xloader configurations. Set param eccmode calls
omap_gpmc_eccmode and so nand_scan_tail. So nand fails without param support

Call omap_gpmc_eccmode directly if CONFIG_PARAMETER is not enabled
to fix that.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
Because my xloader is still to big (50480 due to nand support), 
only rarely tested.


 drivers/mtd/nand/nand_omap_gpmc.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 3bb6d79..d55dcaa 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -959,6 +959,9 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	dev_add_param(pdev, "eccmode", omap_gpmc_eccmode_set, NULL, 0);
 	dev_set_param(pdev, "eccmode", ecc_mode_strings[pdata->ecc_mode]);
 
+	if (! IS_ENABLED(CONFIG_PARAMETER))
+		omap_gpmc_eccmode(oinfo, pdata->ecc_mode);
+
 	/* We are all set to register with the system now! */
 	err = add_mtd_device(minfo, "nand");
 	if (err) {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
