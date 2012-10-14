Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNPA2-0008Gf-HW
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 14:27:22 +0000
Received: from mail641.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C5E89DC12C8
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 16:33:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 16:25:01 +0200
Message-Id: <1350224701-17223-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350224598-16979-1-git-send-email-plagnioj@jcrosoft.com>
References: <1350224598-16979-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] net:designware: allow to pass the phy interface
To: barebox@lists.infradead.org

If none set use NA (0) as before.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/designware.c |    4 +++-
 include/net/designware.h |    3 +++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 1cbcd5a..bf71d15 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -55,6 +55,7 @@ struct dw_eth_dev {
 	struct eth_mac_regs *mac_regs_p;
 	struct eth_dma_regs *dma_regs_p;
 	int phy_addr;
+	phy_interface_t interface;
 };
 
 /* Speed specific definitions */
@@ -254,7 +255,7 @@ static int dwc_ether_open(struct eth_device *dev)
 	int ret;
 
 	ret = phy_device_connect(dev, &priv->miibus, priv->phy_addr,
-				 dwc_update_linkspeed, 0, PHY_INTERFACE_MODE_NA);
+				 dwc_update_linkspeed, 0, priv->interface);
 	if (ret)
 		return ret;
 
@@ -427,6 +428,7 @@ static int dwc_ether_probe(struct device_d *dev)
 	edev->set_ethaddr = dwc_ether_set_ethaddr;
 
 	priv->phy_addr = pdata->phy_addr;
+	priv->interface = pdata->interface;
 	miibus->read = dwc_ether_mii_read;
 	miibus->write = dwc_ether_mii_write;
 	miibus->priv = priv;
diff --git a/include/net/designware.h b/include/net/designware.h
index 1c8a00e..3f31c97 100644
--- a/include/net/designware.h
+++ b/include/net/designware.h
@@ -1,8 +1,11 @@
 #ifndef __DWC_UNIMAC_H
 #define __DWC_UNIMAC_H
 
+#include <linux/phy.h>
+
 struct dwc_ether_platform_data {
 	int phy_addr;
+	phy_interface_t interface;
 	void (*fix_mac_speed)(int speed);
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
