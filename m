Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1DM4-0004RO-PF
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:28:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:28:05 +0200
Message-Id: <1374488885-25488-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374488885-25488-1-git-send-email-s.hauer@pengutronix.de>
References: <1374488885-25488-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mtd: nand: mxs-nand: Add on flash bbt support
To: barebox@lists.infradead.org

For DT only at the moment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 68eb040..8e5c83c 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1214,6 +1214,17 @@ err1:
 	return -ENOMEM;
 }
 
+static void mxs_nand_probe_dt(struct device_d *dev, struct mxs_nand_info *nand_info)
+{
+	struct nand_chip *nand = &nand_info->nand_chip;
+
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		return;
+
+	if (of_get_nand_on_flash_bbt(dev->device_node))
+		nand->bbt_options |= NAND_BBT_USE_FLASH | NAND_BBT_NO_OOB;
+}
+
 static int mxs_nand_probe(struct device_d *dev)
 {
 	struct mxs_nand_info *nand_info;
@@ -1232,6 +1243,8 @@ static int mxs_nand_probe(struct device_d *dev)
 		return -ENOMEM;
 	}
 
+	mxs_nand_probe_dt(dev, nand_info);
+
 	nand_info->type = type;
 	nand_info->io_base = dev_request_mem_region(dev, 0);
 	nand_info->bch_base = dev_request_mem_region(dev, 1);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
