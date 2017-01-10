Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3j-0001Ct-SK
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:04 +0000
Received: by mail-pf0-x244.google.com with SMTP id 127so29396645pfg.0
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:08:56 -0800
Message-Id: <20170110150913.31416-4-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 03/20] i.MX: ocotp: Add provisions for storing multiple MAC
 addresses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

i.MX SoC variants like Vybrid have more than one built-in Ethernet
interface and as a consequence support storing more than one MAC address
in OCOTP module. Add code to create multiple 'mac_addr<n>' parameters as
well as 'mac_addr' as an "alias" to 'mac_addr0' for backwards
compatibility.

Acked-by: Stefan Lengfeld <s.lengfeld@phytec.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 70 ++++++++++++++++++++++++++++++++++-------------
 1 file changed, 51 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 7f625d8..bd5448d 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -69,12 +69,22 @@
 /* Other definitions */
 #define IMX6_OTP_DATA_ERROR_VAL		0xBADABADA
 #define DEF_RELAX			20
-#define MAC_OFFSET			(0x22 * 4)
+#define MAC_OFFSET_0			(0x22 * 4)
+#define MAC_OFFSET_1			(0x24 * 4)
+#define MAX_MAC_OFFSETS			2
 #define MAC_BYTES			8
 
 struct imx_ocotp_data {
 	int num_regs;
 	u32 (*addr_to_offset)(u32 addr);
+	u8  mac_offsets[MAX_MAC_OFFSETS];
+	u8  mac_offsets_num;
+};
+
+struct ocotp_priv_ethaddr {
+	char value[MAC_BYTES];
+	struct regmap *map;
+	u8 offset;
 };
 
 struct ocotp_priv {
@@ -84,9 +94,10 @@ struct ocotp_priv {
 	struct device_d dev;
 	int permanent_write_enable;
 	int sense_enable;
-	char ethaddr[6];
+	struct ocotp_priv_ethaddr ethaddr[MAX_MAC_OFFSETS];
 	struct regmap_config map_config;
 	const struct imx_ocotp_data *data;
+	int  mac_offset_idx;
 };
 
 static struct ocotp_priv *imx_ocotp;
@@ -408,32 +419,28 @@ static void memreverse(void *dest, const void *src, size_t n)
 
 static int imx_ocotp_get_mac(struct param_d *param, void *priv)
 {
-	struct ocotp_priv *ocotp_priv = priv;
-	char buf[8];
+	char buf[MAC_BYTES];
 	int ret;
+	struct ocotp_priv_ethaddr *ethaddr = priv;
 
-	ret = regmap_bulk_read(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
+	ret = regmap_bulk_read(ethaddr->map, ethaddr->offset,
+			       buf, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
-	memreverse(ocotp_priv->ethaddr, buf, 6);
+	memreverse(ethaddr->value, buf, 6);
 	return 0;
 }
 
 static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 {
-	struct ocotp_priv *ocotp_priv = priv;
-	char buf[8];
-	int ret;
+	char buf[MAC_BYTES];
+	struct ocotp_priv_ethaddr *ethaddr = priv;
 
-	memreverse(buf, ocotp_priv->ethaddr, 6);
-	buf[6] = 0; buf[7] = 0;
-
-	ret = regmap_bulk_write(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
-	if (ret < 0)
-		return ret;
+	memreverse(buf, ethaddr->value, 6);
 
-	return 0;
+	return regmap_bulk_write(ethaddr->map, ethaddr->offset,
+				 buf, MAC_BYTES);
 }
 
 static struct regmap_bus imx_ocotp_regmap_bus = {
@@ -492,9 +499,28 @@ static int imx_ocotp_probe(struct device_d *dev)
 				NULL, NULL, &priv->permanent_write_enable, NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_NET))
-		dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
-				imx_ocotp_get_mac, priv->ethaddr, priv);
+	if (IS_ENABLED(CONFIG_NET)) {
+		int i;
+		struct ocotp_priv_ethaddr *ethaddr;
+
+		for (i = 0; i < priv->data->mac_offsets_num; i++) {
+			ethaddr = &priv->ethaddr[i];
+			ethaddr->map = priv->map;
+			ethaddr->offset = priv->data->mac_offsets[i];
+
+			dev_add_param_mac(&priv->dev, xasprintf("mac_addr%d", i),
+					  imx_ocotp_set_mac, imx_ocotp_get_mac,
+					  ethaddr->value, ethaddr);
+		}
+
+		/*
+		 * Alias to mac_addr0 for backwards compatibility
+		 */
+		ethaddr = &priv->ethaddr[0];
+		dev_add_param_mac(&priv->dev, "mac_addr",
+				  imx_ocotp_set_mac, imx_ocotp_get_mac,
+				  ethaddr->value, ethaddr);
+	}
 
 	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
 
@@ -533,16 +559,22 @@ static u32 vf610_addr_to_offset(u32 addr)
 static struct imx_ocotp_data imx6q_ocotp_data = {
 	.num_regs = 512,
 	.addr_to_offset = imx6q_addr_to_offset,
+	.mac_offsets_num = 1,
+	.mac_offsets = { MAC_OFFSET_0 },
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.num_regs = 256,
 	.addr_to_offset = imx6sl_addr_to_offset,
+	.mac_offsets_num = 1,
+	.mac_offsets = { MAC_OFFSET_0 },
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
 	.num_regs = 512,
 	.addr_to_offset = vf610_addr_to_offset,
+	.mac_offsets_num = 2,
+	.mac_offsets = { MAC_OFFSET_0, MAC_OFFSET_1 },
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
