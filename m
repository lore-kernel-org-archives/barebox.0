Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GTY-0005ex-6L
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:16:49 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Aug 2020 12:16:22 +0200
Message-Id: <20200805101628.4698-8-o.rempel@pengutronix.de>
In-Reply-To: <20200805101628.4698-1-o.rempel@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 07/13] net: fec_imx: use of_get_mac_address() to get mac
 address out of DT
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

A mac address can be provided by the DT over nvmem cell. Start to use
of_get_mac_address() since it will be able to read nvmem cell for us.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/fec_imx.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 0c2d600d12..65dbb1d9c0 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -628,6 +628,7 @@ static void fec_free_receive_packets(struct fec_priv *fec, int count, int size)
 static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 {
 	struct device_node *mdiobus;
+	const char *mac_addr;
 	int ret;
 
 	ret = of_get_phy_mode(dev->device_node);
@@ -640,6 +641,19 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 	if (mdiobus)
 		fec->miibus.dev.device_node = mdiobus;
 
+	mac_addr = of_get_mac_address(dev->device_node);
+	if (IS_ERR(mac_addr)) {
+		if (PTR_ERR(mac_addr) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		else
+			dev_err(fec->dev, "Failed on of_get_mac_address: %li\n",
+				PTR_ERR(mac_addr));
+	} else {
+		of_eth_register_ethaddr(dev->device_node, mac_addr);
+
+		kfree(mac_addr);
+	}
+
 	return 0;
 }
 #else
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
