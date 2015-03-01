Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSB5N-00011Y-IR
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 21:07:39 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7E534.dip0.t-ipconnect.de [79.215.229.52])
 by lynxeye.de (Postfix) with ESMTPA id A402B26C2001
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 22:06:41 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 22:06:35 +0100
Message-Id: <1425243997-28330-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/3] net: designware: don't depend on CONFIG_OFTREE
To: barebox@lists.infradead.org

This driver is written in a way that is should also work without
DT, but it had a compile time dependency on CONFIG_OFTREE.

Fixes:
drivers/built-in.o: In function `dwc_probe_dt':
drivers/net/designware.c:413: undefined reference to `of_get_phy_mode'

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/designware.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 49ed0b192231..29a6047c7f1a 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -406,6 +406,9 @@ static void dwc_version(struct device_d *dev, u32 hwid)
 
 static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
 {
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		return -ENODEV;
+
 	priv->phy_addr = -1;
 	priv->interface = of_get_phy_mode(dev->device_node);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
