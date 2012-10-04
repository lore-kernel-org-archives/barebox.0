Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJfSP-00022X-T6
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 07:02:54 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 85A32FF8F7E
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 09:11:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Oct 2012 09:00:27 +0200
Message-Id: <1349334027-9525-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1349334027-9525-1-git-send-email-plagnioj@jcrosoft.com>
References: <1349334027-9525-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] net/designware: fix phylib support
To: barebox@lists.infradead.org

/opt/work/barebox/drivers/net/designware.c: In function 'dwc_update_linkspeed':
/opt/work/barebox/drivers/net/designware.c:234:9: error: 'mac_p' undeclared (first use in this function)
/opt/work/barebox/drivers/net/designware.c:234:9: note: each undeclared identifier is reported only once for each function it appears in
/opt/work/barebox/drivers/net/designware.c: In function 'dwc_ether_open':
/opt/work/barebox/drivers/net/designware.c:254:6: error: too few arguments to function 'phy_device_connect'
/opt/work/barebox/include/linux/phy.h:252:5: note: declared here
/opt/work/barebox/drivers/net/designware.c: At top level:
/opt/work/barebox/drivers/net/designware.c:226:13: warning: 'dwc_update_linkspeed' defined but not used

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/designware.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 6a36f14..ec51825 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -226,6 +226,7 @@ static int dwc_ether_init(struct eth_device *dev)
 static void dwc_update_linkspeed(struct eth_device *edev)
 {
 	struct dw_eth_dev *priv = edev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
 	u32 conf;
 
 	if (priv->fix_mac_speed)
@@ -251,7 +252,7 @@ static int dwc_ether_open(struct eth_device *dev)
 	int ret;
 
 	ret = phy_device_connect(dev, &priv->miibus, priv->phy_addr,
-				 0, PHY_INTERFACE_MODE_NA);
+				 dwc_update_linkspeed, 0, PHY_INTERFACE_MODE_NA);
 	if (ret)
 		return ret;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
