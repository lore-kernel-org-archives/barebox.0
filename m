Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNWYP-0006vk-BG
 for barebox@lists.infradead.org; Tue, 29 May 2018 04:48:16 +0000
Received: by mail-pf0-x241.google.com with SMTP id x9-v6so6678821pfm.2
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 21:48:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 21:47:25 -0700
Message-Id: <20180529044731.3964-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180529044731.3964-1-andrew.smirnov@gmail.com>
References: <20180529044731.3964-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/7] i.MX: ocotp: Unify code paths for reading MAC address
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

There is no reason why code handling MAC-address properties of
"ocotp0" and code fetching this information to pass it along to
networking subsystem couldn't share majority of their code. Convert
the driver to do that.

Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/ocotp.h |  15 +++-
 arch/arm/mach-imx/ocotp.c              | 112 +++++++++++--------------
 2 files changed, 65 insertions(+), 62 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
index 5474c27ed..b53000b16 100644
--- a/arch/arm/mach-imx/include/mach/ocotp.h
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -1,9 +1,22 @@
 #ifndef __MACH_IMX_OCOTP_H
 #define __MACH_IMX_OCOTP_H
 
+#define OCOTP_SHADOW_OFFSET		0x400
+#define OCOTP_SHADOW_SPACING		0x10
+
+/*
+ * Trivial shadow register offset -> ocotp register index.
+ *
+ * NOTE: Doesn't handle special mapping quirks. See
+ * imx6q_addr_to_offset and vf610_addr_to_offset for more details. Use
+ * with care
+ */
+#define OCOTP_OFFSET_TO_INDEX(o)		\
+	(((o) - OCOTP_SHADOW_OFFSET) / OCOTP_SHADOW_SPACING)
+
 #define OCOTP_WORD_MASK_WIDTH	8
 #define OCOTP_WORD_MASK_SHIFT	0
-#define OCOTP_WORD(n)		((((n) - 0x400) >> 4) & ((1 << OCOTP_WORD_MASK_WIDTH) - 1))
+#define OCOTP_WORD(n)		(OCOTP_OFFSET_TO_INDEX(n) & ((1 << OCOTP_WORD_MASK_WIDTH) - 1))
 
 #define OCOTP_BIT_MASK_WIDTH	5
 #define OCOTP_BIT_MASK_SHIFT	(OCOTP_WORD_MASK_SHIFT + OCOTP_WORD_MASK_WIDTH)
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 99b365aad..d5e6b3d3e 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -66,6 +66,8 @@
 
 #define BF(value, field)		(((value) << field) & field##_MASK)
 
+#define OCOTP_OFFSET_TO_ADDR(o)		(OCOTP_OFFSET_TO_INDEX(o) * 4)
+
 /* Other definitions */
 #define IMX6_OTP_DATA_ERROR_VAL		0xBADABADA
 #define DEF_RELAX			20
@@ -366,55 +368,6 @@ bool imx_ocotp_sense_enable(bool enable)
 	return old_value;
 }
 
-static uint32_t inc_offset(uint32_t offset)
-{
-	if ((offset & 0x3) == 0x3)
-		return offset + 0xd;
-	else
-		return offset + 1;
-}
-
-static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
-{
-	char mac[6];
-	const __be32 *prop;
-	struct device_node *node = dev->device_node;
-	int len;
-
-	if (!node)
-		return;
-
-	prop = of_get_property(node, "barebox,provide-mac-address", &len);
-	if (!prop)
-		return;
-
-	while (len >= MAC_ADDRESS_PROPLEN) {
-		struct device_node *rnode;
-		uint32_t phandle, offset;
-
-		phandle = be32_to_cpup(prop++);
-
-		rnode = of_find_node_by_phandle(phandle);
-		offset = be32_to_cpup(prop++);
-
-		mac[5] = readb(base + offset);
-		offset = inc_offset(offset);
-		mac[4] = readb(base + offset);
-		offset = inc_offset(offset);
-		mac[3] = readb(base + offset);
-		offset = inc_offset(offset);
-		mac[2] = readb(base + offset);
-		offset = inc_offset(offset);
-		mac[1] = readb(base + offset);
-		offset = inc_offset(offset);
-		mac[0] = readb(base + offset);
-
-		of_eth_register_ethaddr(rnode, mac);
-
-		len -= MAC_ADDRESS_PROPLEN;
-	}
-}
-
 static void memreverse(void *dest, const void *src, size_t n)
 {
 	char *destp = dest;
@@ -424,21 +377,28 @@ static void memreverse(void *dest, const void *src, size_t n)
 		*destp++ = *srcp--;
 }
 
-static int imx_ocotp_get_mac(struct param_d *param, void *priv)
+static int imx_ocotp_read_mac(struct regmap *map, unsigned int offset,
+			      u8 mac[])
 {
-	char buf[MAC_BYTES];
+	u8 buf[MAC_BYTES];
 	int ret;
-	struct ocotp_priv_ethaddr *ethaddr = priv;
 
-	ret = regmap_bulk_read(ethaddr->map, ethaddr->offset,
-			       buf, MAC_BYTES);
+	ret = regmap_bulk_read(map, offset, buf, MAC_BYTES);
 	if (ret < 0)
 		return ret;
 
-	memreverse(ethaddr->value, buf, 6);
+	memreverse(mac, buf, 6);
 	return 0;
 }
 
+static int imx_ocotp_get_mac(struct param_d *param, void *priv)
+{
+	struct ocotp_priv_ethaddr *ethaddr = priv;
+
+	return imx_ocotp_read_mac(ethaddr->map, ethaddr->offset,
+				  ethaddr->value);
+}
+
 static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 {
 	char buf[MAC_BYTES];
@@ -455,10 +415,41 @@ static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_read = imx_ocotp_reg_read,
 };
 
+static void imx_ocotp_init_dt(struct ocotp_priv *priv)
+{
+	char mac[MAC_BYTES];
+	const __be32 *prop;
+	struct device_node *node = priv->dev.parent->device_node;
+	int len;
+
+	if (!node)
+		return;
+
+	prop = of_get_property(node, "barebox,provide-mac-address", &len);
+	if (!prop)
+		return;
+
+	for (; len >= MAC_ADDRESS_PROPLEN; len -= MAC_ADDRESS_PROPLEN) {
+		struct device_node *rnode;
+		uint32_t phandle, offset;
+
+		phandle = be32_to_cpup(prop++);
+
+		rnode = of_find_node_by_phandle(phandle);
+		offset = be32_to_cpup(prop++);
+
+		if (imx_ocotp_read_mac(priv->map,
+				       OCOTP_OFFSET_TO_ADDR(offset),
+				       mac))
+			continue;
+
+		of_eth_register_ethaddr(rnode, mac);
+	}
+}
+
 static int imx_ocotp_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	void __iomem *base;
 	struct ocotp_priv *priv;
 	int ret = 0;
 	const struct imx_ocotp_data *data;
@@ -470,14 +461,11 @@ static int imx_ocotp_probe(struct device_d *dev)
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
-
-	imx_ocotp_init_dt(dev, base);
 
 	priv = xzalloc(sizeof(*priv));
 
 	priv->data      = data;
-	priv->base	= base;
+	priv->base	= IOMEM(iores->start);
 	priv->clk	= clk_get(dev, NULL);
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
@@ -529,6 +517,8 @@ static int imx_ocotp_probe(struct device_d *dev)
 				  ethaddr->value, ethaddr);
 	}
 
+	imx_ocotp_init_dt(priv);
+
 	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
 
 	return 0;
@@ -536,7 +526,7 @@ static int imx_ocotp_probe(struct device_d *dev)
 
 static u32 imx6sl_addr_to_offset(u32 addr)
 {
-	return 0x400 + addr * 0x10;
+	return OCOTP_SHADOW_OFFSET + addr * OCOTP_SHADOW_SPACING;
 }
 
 static u32 imx6q_addr_to_offset(u32 addr)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
