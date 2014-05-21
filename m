Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5UR-0006xe-20
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:19:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:19:00 +0200
Message-Id: <1400674740-6467-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
References: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] net: fec_imx: Add devicetree support for mdio bus
To: barebox@lists.infradead.org

The fec has a mdio bus. This adds support for a subnode
in which the phys on this bus can be specified.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 72e689d..cc2a331 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -621,6 +621,7 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 #ifdef CONFIG_OFDEVICE
 static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 {
+	struct device_node *mdiobus;
 	int ret;
 
 	ret = of_get_phy_mode(dev->device_node);
@@ -629,6 +630,10 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 	else
 		fec->interface = ret;
 
+	mdiobus = of_get_child_by_name(dev->device_node, "mdio");
+	if (mdiobus)
+		fec->miibus.dev.device_node = mdiobus;
+
 	return 0;
 }
 #else
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
