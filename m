Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJfSP-00022W-T5
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 07:02:54 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 660AAFF8F67
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 09:11:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Oct 2012 09:00:25 +0200
Message-Id: <1349334027-9525-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] net/designware: update version display to print user ID
 and Synosys ID
To: barebox@lists.infradead.org

So we can check it with the kernel one

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/designware.c |   11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index a9a04e3..6a36f14 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -373,6 +373,15 @@ static int dwc_ether_set_ethaddr(struct eth_device *dev, u8 adr[6])
 	return 0;
 }
 
+static void dwc_version(struct device_d *dev, u32 hwid)
+{
+	u32 uid = ((hwid & 0x0000ff00) >> 8);
+	u32 synid = (hwid & 0x000000ff);
+
+	dev_info(dev, "user ID: 0x%x, Synopsys ID: 0x%x\n",
+		uid, synid);
+}
+
 static int dwc_ether_probe(struct device_d *dev)
 {
 	struct dw_eth_dev *priv;
@@ -390,7 +399,7 @@ static int dwc_ether_probe(struct device_d *dev)
 
 	base = dev_request_mem_region(dev, 0);
 	priv->mac_regs_p = base;
-	dev_info(dev, "MAC version %08x\n", readl(&priv->mac_regs_p->version));
+	dwc_version(dev, readl(&priv->mac_regs_p->version));
 	priv->dma_regs_p = base + DW_DMA_BASE_OFFSET;
 	priv->tx_mac_descrtable = dma_alloc_coherent(
 		CONFIG_TX_DESCR_NUM * sizeof(struct dmamacdescr));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
