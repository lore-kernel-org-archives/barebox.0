Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpbS-0007i0-J3
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:57:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:56:55 +0200
Message-Id: <1400137016-15688-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] net: cpsw: Always write mac_control register
To: barebox@lists.infradead.org

Instead of keeping track of the mac_control register value and
only writing to it when it changed just always write it. This is
more safe anyway since the mac_control register content is altered
in the soft_reset functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 46fa53d..d31cbb6 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -178,7 +178,6 @@ struct cpsw_slave {
 	struct cpsw_slave_regs		*regs;
 	struct cpsw_sliver_regs		*sliver;
 	int				slave_num;
-	u32				mac_control;
 	int				phy_id;
 	phy_interface_t			phy_if;
 	struct eth_device		edev;
@@ -590,9 +589,6 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 			mac_control |= BIT(0);	/* FULLDUPLEXEN	*/
 	}
 
-	if (mac_control == slave->mac_control)
-		return;
-
 	if (mac_control) {
 		dev_dbg(priv->dev, "link up on port %d, speed %d, %s duplex\n",
 				slave->slave_num, phydev->speed,
@@ -602,7 +598,6 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 	}
 
 	writel(mac_control, &slave->sliver->mac_control);
-	slave->mac_control = mac_control;
 }
 
 static int cpsw_update_link(struct cpsw_slave *slave, struct cpsw_priv *priv)
@@ -649,8 +644,6 @@ static void cpsw_slave_init(struct cpsw_slave *slave, struct cpsw_priv *priv)
 	/* setup max packet size, and mac address */
 	writel(PKT_MAX, &slave->sliver->rx_maxlen);
 
-	slave->mac_control = 0;	/* no link yet */
-
 	/* enable forwarding */
 	slave_port = cpsw_get_slave_port(priv, slave->slave_num);
 	cpsw_ale_port_state(priv, slave_port, ALE_PORT_STATE_FORWARD);
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
