Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKPyS-0004MY-DV
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 09:15:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Mar 2013 10:15:16 +0100
Message-Id: <1364289316-1998-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364289316-1998-1-git-send-email-s.hauer@pengutronix.de>
References: <1364289316-1998-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] net: fec: probe phy_mode from devicetree
To: barebox@lists.infradead.org

This allows to parse the phy mode from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 37d88cd..1a85d15 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -26,6 +26,7 @@
 #include <linux/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <of_net.h>
 
 #include <asm/mmu.h>
 
@@ -628,6 +629,25 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 	return 0;
 }
 
+#ifdef CONFIG_OFDEVICE
+static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
+{
+	int ret;
+
+	ret = of_get_phy_mode(dev->device_node);
+	if (ret < 0)
+		fec->interface = PHY_INTERFACE_MODE_MII;
+	else
+		fec->interface = ret;
+
+	return 0;
+}
+#else
+static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
+{
+	return -ENODEV;
+}
+#endif
 static int fec_probe(struct device_d *dev)
 {
         struct fec_platform_data *pdata = (struct fec_platform_data *)dev->platform_data;
@@ -685,7 +705,9 @@ static int fec_probe(struct device_d *dev)
 
 	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 
-	if (pdata) {
+	if (dev->device_node) {
+		ret = fec_probe_dt(dev, fec);
+	} else if (pdata) {
 		fec->interface = pdata->xcv_type;
 		fec->phy_init = pdata->phy_init;
 		fec->phy_addr = pdata->phy_addr;
@@ -694,6 +716,9 @@ static int fec_probe(struct device_d *dev)
 		fec->phy_addr = -1;
 	}
 
+	if (ret)
+		goto err_free;
+
 	fec_init(edev);
 
 	fec->miibus.read = fec_miibus_read;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
