Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNWYQ-0006vo-Gj
 for barebox@lists.infradead.org; Tue, 29 May 2018 04:48:16 +0000
Received: by mail-pf0-x243.google.com with SMTP id c10-v6so6667632pfi.12
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 21:48:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 21:47:26 -0700
Message-Id: <20180529044731.3964-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/7] i.MX: ocotp: Change MAC address layout for VFxxx
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

For reasons unclear VFxxx port of U-Boot chose to store MAC address in
OCOTP using a layout that is incompatible with rest of i.MX
world (both in U-Boot and Barebox). Unfortunately for us, that means
that there are a number of boards out there that have had their MAC
addresses programmed using U-Boot and in order to properly support
those boards we need to change VFxxx port of Barebox to be compatible.

Since the number of Barebox users on VFxx is in single digits, just
chage the layout to that of U-Boot without trying to make this a
configurable option.

Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 64 +++++++++++++++++++++++++++++++++------
 1 file changed, 54 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index d5e6b3d3e..151c10cc3 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -76,9 +76,16 @@
 #define MAX_MAC_OFFSETS			2
 #define MAC_BYTES			8
 
+enum imx_ocotp_format_mac_direction {
+	OCOTP_HW_TO_MAC,
+	OCOTP_MAC_TO_HW,
+};
+
 struct imx_ocotp_data {
 	int num_regs;
 	u32 (*addr_to_offset)(u32 addr);
+	void (*format_mac)(u8 *dst, const u8 *src,
+			   enum imx_ocotp_format_mac_direction dir);
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
 };
@@ -87,6 +94,7 @@ struct ocotp_priv_ethaddr {
 	char value[MAC_BYTES];
 	struct regmap *map;
 	u8 offset;
+	const struct imx_ocotp_data *data;
 };
 
 struct ocotp_priv {
@@ -368,16 +376,46 @@ bool imx_ocotp_sense_enable(bool enable)
 	return old_value;
 }
 
-static void memreverse(void *dest, const void *src, size_t n)
+static void imx_ocotp_format_mac(u8 *dst, const u8 *src,
+				 enum imx_ocotp_format_mac_direction dir)
 {
-	char *destp = dest;
-	const char *srcp = src + n - 1;
+	/*
+	 * This transformation is symmetic, so we don't care about the
+	 * value of 'dir'.
+	 */
+	dst[5] = src[0];
+	dst[4] = src[1];
+	dst[3] = src[2];
+	dst[2] = src[3];
+	dst[1] = src[4];
+	dst[0] = src[5];
+}
 
-	while(n--)
-		*destp++ = *srcp--;
+static void vf610_ocotp_format_mac(u8 *dst, const u8 *src,
+				   enum imx_ocotp_format_mac_direction dir)
+{
+	switch (dir) {
+	case OCOTP_HW_TO_MAC:
+		dst[1] = src[0];
+		dst[0] = src[1];
+		dst[5] = src[4];
+		dst[4] = src[5];
+		dst[3] = src[6];
+		dst[2] = src[7];
+		break;
+	case OCOTP_MAC_TO_HW:
+		dst[0] = src[1];
+		dst[1] = src[0];
+		dst[4] = src[5];
+		dst[5] = src[4];
+		dst[6] = src[3];
+		dst[7] = src[2];
+		break;
+	}
 }
 
-static int imx_ocotp_read_mac(struct regmap *map, unsigned int offset,
+static int imx_ocotp_read_mac(const struct imx_ocotp_data *data,
+			      struct regmap *map, unsigned int offset,
 			      u8 mac[])
 {
 	u8 buf[MAC_BYTES];
@@ -387,7 +425,8 @@ static int imx_ocotp_read_mac(struct regmap *map, unsigned int offset,
 	if (ret < 0)
 		return ret;
 
-	memreverse(mac, buf, 6);
+	data->format_mac(mac, buf, OCOTP_HW_TO_MAC);
+
 	return 0;
 }
 
@@ -395,7 +434,7 @@ static int imx_ocotp_get_mac(struct param_d *param, void *priv)
 {
 	struct ocotp_priv_ethaddr *ethaddr = priv;
 
-	return imx_ocotp_read_mac(ethaddr->map, ethaddr->offset,
+	return imx_ocotp_read_mac(ethaddr->data, ethaddr->map, ethaddr->offset,
 				  ethaddr->value);
 }
 
@@ -404,7 +443,8 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 	char buf[MAC_BYTES];
 	struct ocotp_priv_ethaddr *ethaddr = priv;
 
-	memreverse(buf, ethaddr->value, 6);
+	ethaddr->data->format_mac(buf, ethaddr->value,
+				  OCOTP_MAC_TO_HW);
 
 	return regmap_bulk_write(ethaddr->map, ethaddr->offset,
 				 buf, MAC_BYTES);
@@ -438,7 +478,7 @@ static void imx_ocotp_init_dt(struct ocotp_priv *priv)
 		rnode = of_find_node_by_phandle(phandle);
 		offset = be32_to_cpup(prop++);
 
-		if (imx_ocotp_read_mac(priv->map,
+		if (imx_ocotp_read_mac(priv->data, priv->map,
 				       OCOTP_OFFSET_TO_ADDR(offset),
 				       mac))
 			continue;
@@ -502,6 +542,7 @@ static int imx_ocotp_probe(struct device_d *dev)
 			ethaddr = &priv->ethaddr[i];
 			ethaddr->map = priv->map;
 			ethaddr->offset = priv->data->mac_offsets[i];
+			ethaddr->data = data;
 
 			dev_add_param_mac(&priv->dev, xasprintf("mac_addr%d", i),
 					  imx_ocotp_set_mac, imx_ocotp_get_mac,
@@ -558,6 +599,7 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
 	.addr_to_offset = imx6q_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
+	.format_mac = imx_ocotp_format_mac,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
@@ -565,6 +607,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
+	.format_mac = imx_ocotp_format_mac,
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
@@ -572,6 +615,7 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.addr_to_offset = vf610_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, MAC_OFFSET_1 },
+	.format_mac = vf610_ocotp_format_mac,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
