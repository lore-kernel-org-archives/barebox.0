Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC2n5-0000uT-QE
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 11:11:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0B148A00258
 for <barebox@lists.infradead.org>; Wed, 30 Nov 2016 12:11:30 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 30 Nov 2016 12:10:43 +0100
Message-Id: <1480504245-1822-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/3] arm: imx6: ocotp: Added support for the i.MX6UL
To: barebox@lists.infradead.org

This patch adds support for the i.MX6UL SoC.
Also, the driver was extended to handle two MAC addresses.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/mach-imx/ocotp.c        | 82 +++++++++++++++++++++++++++++++++-------
 dts/Bindings/nvmem/imx-ocotp.txt |  7 ++--
 2 files changed, 73 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index e1d0c25..9efa46a 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -70,11 +70,13 @@
 #define FUSE_REGS_COUNT			(16 * 8)
 #define IMX6_OTP_DATA_ERROR_VAL		0xBADABADA
 #define DEF_RELAX			20
-#define MAC_OFFSET			(0x22 * 4)
+#define MAC0_OFFSET			(0x22 * 4)
+#define MAC1_OFFSET			(0x23 * 4)
 #define MAC_BYTES			8
 
 struct imx_ocotp_data {
 	int num_regs;
+	bool scnd_mac_addr;
 };
 
 struct ocotp_priv {
@@ -84,7 +86,7 @@ struct ocotp_priv {
 	struct device_d dev;
 	int permanent_write_enable;
 	int sense_enable;
-	char ethaddr[6];
+	char ethaddr[2][6];
 	struct regmap_config map_config;
 };
 
@@ -394,38 +396,79 @@ static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 	}
 }
 
-static int imx_ocotp_get_mac(struct param_d *param, void *priv)
+static int imx_ocotp_get_mac(unsigned int mac_no, struct param_d *param,
+			     void *priv)
 {
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
 	int i, ret;
+	int offset;
 
-	ret = regmap_bulk_read(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
+	if (mac_no > 1)
+		return -EINVAL;
+
+	ret = regmap_bulk_read(ocotp_priv->map,
+			       (mac_no == 0) ? MAC0_OFFSET : MAC1_OFFSET, buf,
+			       MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
+	offset = mac_no << 1;
 	for (i = 0; i < 6; i++)
-		ocotp_priv->ethaddr[i] = buf[5 - i];
+		ocotp_priv->ethaddr[mac_no][i] = buf[5 - i + offset];
 
 	return 0;
 }
 
-static int imx_ocotp_set_mac(struct param_d *param, void *priv)
+static inline int imx_ocotp_get_mac0(struct param_d *param, void *priv)
+{
+	return imx_ocotp_get_mac(0, param, priv);
+}
+static inline int imx_ocotp_get_mac1(struct param_d *param, void *priv)
+{
+	return imx_ocotp_get_mac(1, param, priv);
+}
+
+static int imx_ocotp_set_mac(unsigned int mac_no, struct param_d *param,
+			     void *priv)
 {
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
 	int i, ret;
+	int offset;
+
+	if (mac_no > 1)
+		return -EINVAL;
+
+	offset = mac_no << 1;
+	if (mac_no == 0) {
+		buf[6] = ocotp_priv->ethaddr[1][5];
+		buf[7] = ocotp_priv->ethaddr[1][4];
+	} else {
+		buf[0] = ocotp_priv->ethaddr[0][1];
+		buf[1] = ocotp_priv->ethaddr[0][0];
+	}
 
 	for (i = 0; i < 6; i++)
-		buf[5 - i] = ocotp_priv->ethaddr[i];
-	buf[6] = 0; buf[7] = 0;
+		buf[5 - i + offset] = ocotp_priv->ethaddr[mac_no][i];
 
-	ret = regmap_bulk_write(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
+	ret = regmap_bulk_write(ocotp_priv->map,
+				(mac_no == 0) ? MAC0_OFFSET : MAC1_OFFSET, buf,
+				MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
 	return 0;
 }
+static inline int imx_ocotp_set_mac0(struct param_d *param, void *priv)
+{
+	return imx_ocotp_set_mac(0, param, priv);
+}
+
+static inline int imx_ocotp_set_mac1(struct param_d *param, void *priv)
+{
+	return imx_ocotp_set_mac(1, param, priv);
+}
 
 static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_write = imx_ocotp_reg_write,
@@ -482,9 +525,15 @@ static int imx_ocotp_probe(struct device_d *dev)
 				NULL, NULL, &priv->permanent_write_enable, NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_NET))
-		dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
-				imx_ocotp_get_mac, priv->ethaddr, priv);
+	if (IS_ENABLED(CONFIG_NET)) {
+		dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac0,
+				imx_ocotp_get_mac0, priv->ethaddr[0], priv);
+
+		if (data->scnd_mac_addr)
+			dev_add_param_mac(&(priv->dev), "mac_addr1",
+					 imx_ocotp_set_mac1, imx_ocotp_get_mac1,
+					 priv->ethaddr[1], priv);
+	}
 
 	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
 
@@ -493,10 +542,17 @@ static int imx_ocotp_probe(struct device_d *dev)
 
 static struct imx_ocotp_data imx6q_ocotp_data = {
 	.num_regs = 512,
+	.scnd_mac_addr = false,
+};
+
+static struct imx_ocotp_data imx6ul_ocotp_data = {
+	.num_regs = 512,
+	.scnd_mac_addr = true,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.num_regs = 256,
+	.scnd_mac_addr = false,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
@@ -511,7 +567,7 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 		.data = &imx6sl_ocotp_data,
 	}, {
 		.compatible = "fsl,imx6ul-ocotp",
-		.data = &imx6q_ocotp_data,
+		.data = &imx6ul_ocotp_data,
 	}, {
 		/* sentinel */
 	}
diff --git a/dts/Bindings/nvmem/imx-ocotp.txt b/dts/Bindings/nvmem/imx-ocotp.txt
index 383d588..5314b88 100644
--- a/dts/Bindings/nvmem/imx-ocotp.txt
+++ b/dts/Bindings/nvmem/imx-ocotp.txt
@@ -1,13 +1,14 @@
 Freescale i.MX6 On-Chip OTP Controller (OCOTP) device tree bindings
 
 This binding represents the on-chip eFuse OTP controller found on
-i.MX6Q/D, i.MX6DL/S, i.MX6SL, and i.MX6SX SoCs.
+i.MX6Q/D, i.MX6DL/S, i.MX6SL, i.MX6SX and i.MX6UL SoCs.
 
 Required properties:
 - compatible: should be one of
 	"fsl,imx6q-ocotp" (i.MX6Q/D/DL/S),
-	"fsl,imx6sl-ocotp" (i.MX6SL), or
-	"fsl,imx6sx-ocotp" (i.MX6SX), followed by "syscon".
+	"fsl,imx6sl-ocotp" (i.MX6SL),
+	"fls,imx6ul-ocotp" (i.MX6UL) or
+	"fls,imx6sx-ocotp" (i.MX6SX), followed by "syscon".
 - reg: Should contain the register base and length.
 - clocks: Should contain a phandle pointing to the gated peripheral clock.
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
