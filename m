Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDufz-0005OH-Eu
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:33 +0000
Received: by mail-pf0-x241.google.com with SMTP id y68so17205591pfb.1
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:30 -0800
Message-Id: <1480949684-18520-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/16] i.MX: ocotp: Add provisions for storing multiple MAC
 addresses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

i.MX SoC variants like Vybrid have more than one built-in Ethernet
interface and as a consequence support storing more than one MAC address
in OCOTP module. Add 'mac_idx' variable to allow to select which mac
address is being referred to by 'mac_addr' variable and the code to
handle it appropriately.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 50 +++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 46 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 68ff0ce..9a07922 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -69,12 +69,16 @@
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
 };
 
 struct ocotp_priv {
@@ -87,6 +91,7 @@ struct ocotp_priv {
 	char ethaddr[6];
 	struct regmap_config map_config;
 	const struct imx_ocotp_data *data;
+	int  mac_offset_idx;
 };
 
 static struct ocotp_priv *imx_ocotp;
@@ -402,8 +407,10 @@ static int imx_ocotp_get_mac(struct param_d *param, void *priv)
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
 	int i, ret;
+	u8  mac_offset;
 
-	ret = regmap_bulk_read(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
+	mac_offset = ocotp_priv->data->mac_offsets[ocotp_priv->mac_offset_idx];
+	ret = regmap_bulk_read(ocotp_priv->map, mac_offset, buf, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
@@ -418,18 +425,43 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
 	int i, ret;
+	u8 mac_offset;
+
+	mac_offset = ocotp_priv->data->mac_offsets[ocotp_priv->mac_offset_idx];
 
 	for (i = 0; i < 6; i++)
 		buf[5 - i] = ocotp_priv->ethaddr[i];
 	buf[6] = 0; buf[7] = 0;
 
-	ret = regmap_bulk_write(ocotp_priv->map, MAC_OFFSET, buf, MAC_BYTES);
+	ret = regmap_bulk_write(ocotp_priv->map, mac_offset, buf, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
 	return 0;
 }
 
+static int imx_ocotp_set_mac_idx(struct param_d *param, void *priv)
+{
+	struct ocotp_priv *ocotp_priv = priv;
+	const int min = 0;
+	const int max = ocotp_priv->data->mac_offsets_num - 1;
+	int old, new, ret = 0;
+
+	old = ocotp_priv->mac_offset_idx;
+	new = clamp(old, min, max);
+
+	if (old != new) {
+		dev_err(&ocotp_priv->dev,
+			"%d is out of bounds for '%s', clamping to %d\n",
+			old, param->name, new);
+		ret = -EINVAL;
+	}
+
+	ocotp_priv->mac_offset_idx = new;
+
+	return ret;
+}
+
 static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_write = imx_ocotp_reg_write,
 	.reg_read = imx_ocotp_reg_read,
@@ -486,9 +518,13 @@ static int imx_ocotp_probe(struct device_d *dev)
 				NULL, NULL, &priv->permanent_write_enable, NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_NET))
+	if (IS_ENABLED(CONFIG_NET)) {
+		dev_add_param_int(&priv->dev, "mac_idx",
+				  imx_ocotp_set_mac_idx, NULL,
+				  &priv->mac_offset_idx, "%d", priv);
 		dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
 				imx_ocotp_get_mac, priv->ethaddr, priv);
+	}
 
 	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
 
@@ -527,16 +563,22 @@ static u32 vf610_addr_to_offset(u32 addr)
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
