Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zyyjr-0006ER-HA
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 09:09:16 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6625CA004F2
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 10:09:18 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 18 Nov 2015 10:08:45 +0100
Message-Id: <1447837725-21625-3-git-send-email-s.christ@phytec.de>
In-Reply-To: <1447837725-21625-1-git-send-email-s.christ@phytec.de>
References: <1447837725-21625-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH v2 3/3] net: fec: fix indentation and whitspaces
To: barebox@lists.infradead.org

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 drivers/net/fec_imx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 70087ad..5418034 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -259,7 +259,7 @@ static int fec_set_hwaddr(struct eth_device *dev, const unsigned char *mac)
 	writel((mac[0] << 24) + (mac[1] << 16) + (mac[2] << 8) + mac[3], fec->regs + FEC_PADDR1);
 	writel((mac[4] << 24) + (mac[5] << 16) + 0x8808, fec->regs + FEC_PADDR2);
 
-        return 0;
+	return 0;
 }
 
 static int fec_init(struct eth_device *dev)
@@ -647,8 +647,8 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 #endif
 static int fec_probe(struct device_d *dev)
 {
-        struct fec_platform_data *pdata = (struct fec_platform_data *)dev->platform_data;
-        struct eth_device *edev;
+	struct fec_platform_data *pdata = (struct fec_platform_data *)dev->platform_data;
+	struct eth_device *edev;
 	struct fec_priv *fec;
 	void *base;
 	int ret;
@@ -778,7 +778,7 @@ static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6q-fec",
 		.data = (void *)FEC_TYPE_IMX6,
-	},  {
+	}, {
 		.compatible = "fsl,imx6sx-fec",
 		.data = (void *)FEC_TYPE_IMX6,
 	}, {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
