Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xj4Mg-0005no-RF
 for barebox@lists.infradead.org; Tue, 28 Oct 2014 10:51:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3789DA00297
 for <barebox@lists.infradead.org>; Tue, 28 Oct 2014 11:50:43 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 28 Oct 2014 11:50:36 +0100
Message-Id: <1414493436-23693-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1414493436-23693-1-git-send-email-w.egorov@phytec.de>
References: <1414493436-23693-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/2] net: cpsw: Set phy device_node pointer in probe
To: barebox@lists.infradead.org

Set the phy device_node pointer to the equivalent cpsw slave node.
We need this, because phy drivers using this pointer for their configuration.

Create and register the phy device in cpsw_probe(), so that this phy device
can be found later by phy_device_connect() in cpsw_open().

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 drivers/net/cpsw.c |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 167b2dd..a0621f5 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1200,6 +1200,19 @@ int cpsw_probe(struct device_d *dev)
 	mdiobus_register(&priv->miibus);
 
 	for (i = 0; i < priv->num_slaves; i++) {
+		struct phy_device *phy;
+
+		phy = mdiobus_scan(&priv->miibus, priv->slaves[i].phy_id);
+		if (IS_ERR(phy)) {
+			ret = PTR_ERR(phy);
+			goto out;
+		}
+
+		phy->dev.device_node = priv->slaves[i].dev.device_node;
+		ret = phy_register_device(phy);
+		if (ret)
+			goto out;
+
 		ret = cpsw_slave_setup(&priv->slaves[i], i, priv);
 		if (ret)
 			goto out;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
