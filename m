Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrTVY-0001Rh-MD
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 12:37:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 82E6EBF0E9
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2012 14:37:20 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 18 Jul 2012 14:37:13 +0200
Message-Id: <1342615033-3232-4-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1342615033-3232-1-git-send-email-j.weitzel@phytec.de>
References: <1342615033-3232-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [RFC 3/3] mtd omap nand: reconfigure buswidth
To: barebox@lists.infradead.org

If nand_scan_ident fail try to reconfigure buswidth from 8bit to 16bit or
the other way around.

There are still the ugly debug messages like:
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xb3 (Micron NAND 1GiB 1,8V 16-bit)
NAND bus width 8 instead 16 bit
No NAND device found (-22)!
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xb3 (Micron NAND 1GiB 1,8V 16-bit)

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   30 ++++++++++++++++++++++++++++--
 1 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d55dcaa..b80ac14 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -803,6 +803,27 @@ static int omap_gpmc_eccmode_set(struct device_d *dev, struct param_d *param, co
 	return omap_gpmc_eccmode(oinfo, i);
 }
 
+void gpmc_reconfigure_buswidth(struct gpmc_nand_info *oinfo)
+{
+	struct nand_chip *nand = &oinfo->nand;
+	struct gpmc_config cfg;
+
+	gpmc_get_config(oinfo->gpmc_cs, &cfg);
+
+	if (nand->options & NAND_BUSWIDTH_16) {
+		cfg.cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND;
+		nand->options ^= NAND_BUSWIDTH_16;
+	} else {
+		cfg.cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND |
+				GPMC_CONFIG1_DEVICESIZE_16;
+		nand->options |= NAND_BUSWIDTH_16;
+	}
+	debug("reconfigure buswidth to %d bit\n",
+		(nand->options & NAND_BUSWIDTH_16) ? 16 : 8);
+
+	gpmc_cs_config(oinfo->gpmc_cs, &cfg);
+}
+
 /**
  * @brief nand device probe.
  *
@@ -924,8 +945,13 @@ static int gpmc_nand_probe(struct device_d *pdev)
 
 	/* first scan to find the device and get the page size */
 	if (nand_scan_ident(minfo, 1)) {
-		err = -ENXIO;
-		goto out_release_mem;
+		/* retry with changed buswidth*/
+		gpmc_reconfigure_buswidth(oinfo);
+
+		if (nand_scan_ident(minfo, 1)) {
+			err = -ENXIO;
+			goto out_release_mem;
+		}
 	}
 
 	switch (pdata->device_width) {
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
