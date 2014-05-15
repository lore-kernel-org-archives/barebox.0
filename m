Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpbS-0007i1-J4
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:57:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:56:56 +0200
Message-Id: <1400137016-15688-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400137016-15688-1-git-send-email-s.hauer@pengutronix.de>
References: <1400137016-15688-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] net: cpsw: Allow multiple slaves
To: barebox@lists.infradead.org

The driver is ready now for handling both slaved, so add support
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index d31cbb6..d55f62a 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -572,9 +572,6 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 	if (!phydev)
 		return;
 
-	if (slave->slave_num)
-		return;
-
 	if (phydev->link) {
 		*link = 1;
 		mac_control = BIT(5); /* MIIEN */
@@ -1086,9 +1083,6 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 		cpsw_gmii_sel_am335x(slave);
 	}
 
-	/* Only one slave supported by this driver */
-	priv->num_slaves = 1;
-
 	return 0;
 }
 
@@ -1100,7 +1094,7 @@ int cpsw_probe(struct device_d *dev)
 	uint64_t start;
 	uint32_t phy_mask;
 	struct cpsw_data *cpsw_data;
-	int ret;
+	int i, ret;
 
 	dev_dbg(dev, "* %s\n", __func__);
 
@@ -1192,9 +1186,11 @@ int cpsw_probe(struct device_d *dev)
 
 	mdiobus_register(&priv->miibus);
 
-	ret = cpsw_slave_setup(&priv->slaves[0], 0, priv);
-	if (ret)
-		goto out;
+	for (i = 0; i < priv->num_slaves; i++) {
+		ret = cpsw_slave_setup(&priv->slaves[i], i, priv);
+		if (ret)
+			goto out;
+	}
 
 	return 0;
 out:
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
