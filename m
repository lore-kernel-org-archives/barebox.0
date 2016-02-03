Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0HE-0000A5-Oy
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:27:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:27:10 +0100
Message-Id: <1454516830-26387-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454516830-26387-1-git-send-email-s.hauer@pengutronix.de>
References: <1454516830-26387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] nvmem: Test it with fec/ocotp
To: Barebox List <barebox@lists.infradead.org>

This adds a test for the nvmem framework. The ocotp is registered as a
nvmem device which shall provide the MAC address for the i.MX FEC
driver.

While this generally works it reveals a shortcoming of the nvmem
framework: There's no way to specify the layout of the cell. For example
the MAC address stored in the OCOTP has another byte order than
the one stored in the IIM module on older i.MX SoCs. The FEC driver
shouldn't know about these differences, so it shouldn't be implemented
there. The OCOTP and IIM drivers are generic drivers used on different
SoCs aswell, so the differences shouldn't be encoded there either.
This leaves the device tree to put the differences in, but this simple
example already shows how complex such a binding probably becomes when
all kinds of different possibilities of byte orders shall be encoded.
What's missing is some kind of mapping driver that could be plugged
between a nvmem provider and its consumer where all these differences
can be handled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi |  9 +++++++++
 arch/arm/mach-imx/ocotp.c               |  8 ++++++++
 drivers/net/fec_imx.c                   | 30 ++++++++++++++++++++++++++++++
 3 files changed, 47 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index b79ce2c..c5f25f9 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -85,6 +85,8 @@
 
 &fec {
 	phy-handle = <&ethphy>;
+	nvmem-cells = <&fec_mac_address>;
+	nvmem-cell-names = "mac-address";
 
 	mdio {
 		#address-cells = <1>;
@@ -171,7 +173,14 @@
 };
 
 &ocotp {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
 	barebox,provide-mac-address = <&fec 0x620>;
+
+	fec_mac_address: mac_address@88 {
+		reg = <0x88 0x8>;
+	};
 };
 
 &usdhc3 {
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index c6c341d..c8ba932 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -28,6 +28,7 @@
 #include <clock.h>
 #include <regmap.h>
 #include <linux/clk.h>
+#include <linux/nvmem-provider.h>
 
 /*
  * a single MAC address reference has the form
@@ -79,6 +80,7 @@ struct ocotp_priv {
 	int permanent_write_enable;
 	int sense_enable;
 	char ethaddr[6];
+	struct nvmem_config nvmem_config;
 };
 
 static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
@@ -404,6 +406,12 @@ static int imx_ocotp_probe(struct device_d *dev)
         if (ret)
                 return ret;
 
+	priv->nvmem_config.name = "imx-ocotp",
+	priv->nvmem_config.read_only = true,
+	priv->nvmem_config.dev = dev;
+
+	nvmem_register(&priv->nvmem_config, priv->map);
+
 	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
 		dev_add_param_bool(&(priv->dev), "permanent_write_enable",
 				NULL, NULL, &priv->permanent_write_enable, NULL);
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 5418034..0448b51 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -621,6 +621,34 @@ static int fec_alloc_receive_packets(struct fec_priv *fec, int count, int size)
 	return 0;
 }
 
+#include <linux/nvmem-consumer.h>
+
+static void nvmem_test(struct device_d *dev)
+{
+	struct nvmem_cell *cell;
+	uint8_t *buf;
+	int len, i;
+
+	cell = nvmem_cell_get(dev, "mac-address");
+	if (IS_ERR(cell)) {
+		dev_err(dev, "Failed to get cell: %s\n", strerrorp(cell));
+	}
+
+	buf = nvmem_cell_read(cell, &len);
+	if (IS_ERR(buf)) {
+		dev_err(dev, "Failed to read cell: %s\n", strerrorp(buf));
+	}
+
+	printf("buf: 0x%p len %d\n", buf, len);
+
+	for (i = 0; i < len; i++)
+		printf("%02x ", buf[i]);
+
+	printf("\n");
+
+	free(buf);
+}
+
 #ifdef CONFIG_OFDEVICE
 static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 {
@@ -637,6 +665,8 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
 	if (mdiobus)
 		fec->miibus.dev.device_node = mdiobus;
 
+	nvmem_test(dev);
+
 	return 0;
 }
 #else
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
