Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Fz-53
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:51 +0100
Message-Id: <1385131741-28280-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/17] cpsw: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 88 +++++++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 81 insertions(+), 7 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 25ba3d9..f021f31 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -27,6 +27,8 @@
 #include <linux/phy.h>
 #include <errno.h>
 #include <io.h>
+#include <of.h>
+#include <of_net.h>
 #include <xfuncs.h>
 #include <asm/mmu.h>
 #include <asm/system.h>
@@ -900,17 +902,23 @@ static int cpsw_recv(struct eth_device *dev)
 	return 0;
 }
 
+static void cpsw_slave_init_data(struct cpsw_slave *slave, int slave_num,
+			    struct cpsw_priv *priv)
+{
+	struct cpsw_slave_data	*data = priv->data.slave_data + slave_num;
+
+	slave->phy_id	= data->phy_id;
+	slave->phy_if	= data->phy_if;
+}
+
 static void cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 			    struct cpsw_priv *priv)
 {
 	void			*regs = priv->regs;
-	struct cpsw_slave_data	*data = priv->data.slave_data + slave_num;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
 	slave->slave_num = slave_num;
-	slave->phy_id	= data->phy_id;
-	slave->phy_if	= data->phy_if;
 	slave->regs	= regs + priv->slave_ofs + priv->slave_size * slave_num;
 	slave->sliver	= regs + priv->sliver_ofs + SLIVER_SIZE * slave_num;
 }
@@ -950,6 +958,54 @@ static struct cpsw_data cpsw2_data = {
 	.cppi_ram_ofs		= 0x2000,
 };
 
+static int cpsw_phy_sel_init(struct cpsw_priv *priv, struct device_node *np)
+{
+	dev_info(priv->dev, "%s\n", __func__);
+	return 0;
+}
+
+static int cpsw_probe_dt(struct cpsw_priv *priv)
+{
+	struct device_d *dev = priv->dev;
+	struct device_node *np = dev->device_node, *child;
+	int ret, i = 0;
+
+	ret = of_property_read_u32(np, "slaves", &priv->num_slaves);
+	if (ret)
+		return ret;
+
+	priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
+
+	for_each_child_of_node(np, child) {
+		if (of_device_is_compatible(child, "ti,am3352-cpsw-phy-sel")) {
+			ret = cpsw_phy_sel_init(priv, child);
+			if (ret)
+				return ret;
+		}
+
+		if (!strncmp(child->name, "slave", 5)) {
+			struct cpsw_slave *slave = &priv->slaves[i];
+			uint32_t phy_id[2];
+
+			dev_info(dev, "found slave\n");
+
+			ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
+			if (ret)
+				return ret;
+
+			slave->phy_id = phy_id[1];
+			slave->phy_if = of_get_phy_mode(child);
+
+			i++;
+		}
+	}
+
+	/* Only one slave supported by this driver */
+	priv->num_slaves = 1;
+
+	return 0;
+}
+
 int cpsw_probe(struct device_d *dev)
 {
 	struct cpsw_platform_data *data = (struct cpsw_platform_data *)dev->platform_data;
@@ -959,6 +1015,7 @@ int cpsw_probe(struct device_d *dev)
 	uint64_t start;
 	uint32_t phy_mask;
 	struct cpsw_data *cpsw_data;
+	int ret;
 
 	dev_dbg(dev, "* %s\n", __func__);
 
@@ -966,14 +1023,22 @@ int cpsw_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(*priv));
 	priv->dev = dev;
-	priv->data = *data;
+
+	if (dev->device_node) {
+		ret = cpsw_probe_dt(priv);
+		if (ret)
+			return ret;
+	} else {
+		priv->data = *data;
+		priv->num_slaves = data->num_slaves;
+		priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
+		for_each_slave(priv, cpsw_slave_init_data, idx, priv);
+	}
+
 	priv->channels = 8;
-	priv->num_slaves = data->num_slaves;
 	priv->ale_entries = 1024;
 	edev = &priv->edev;
 
-	priv->slaves = xzalloc(sizeof(struct cpsw_slave) * priv->num_slaves);
-
 	priv->host_port         = 0;
 	priv->regs		= regs;
 
@@ -1059,8 +1124,17 @@ int cpsw_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
+	{
+		.compatible = "ti,cpsw",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d cpsw_driver = {
 	.name   = "cpsw",
 	.probe  = cpsw_probe,
+	.of_compatible = DRV_OF_COMPAT(cpsw_dt_ids),
 };
 device_platform_driver(cpsw_driver);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
