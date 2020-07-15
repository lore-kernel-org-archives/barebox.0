Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvaP2-0006sq-B1
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 05:56:26 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 15 Jul 2020 07:56:07 +0200
Message-Id: <20200715055608.20993-4-r.czerwinski@pengutronix.de>
In-Reply-To: <20200715055608.20993-1-r.czerwinski@pengutronix.de>
References: <20200715055608.20993-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 4/5] nvmem: ocotp: read/write i.MX7 support
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Implement read and write support for the banked access on i.MX7.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 147 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 141 insertions(+), 6 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 1b842ec0ed..7081eb5479 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -48,6 +48,16 @@
 #define OCOTP_READ_CTRL			0x30
 #define OCOTP_READ_FUSE_DATA		0x40
 
+#define MX7_OCOTP_DATA0 		0x20
+#define MX7_OCOTP_DATA1 		0x30
+#define MX7_OCOTP_DATA2 		0x40
+#define MX7_OCOTP_DATA3 		0x50
+#define MX7_OCOTP_READ_CTRL 		0x60
+#define MX7_OCOTP_READ_FUSE_DATA0 	0x70
+#define MX7_OCOTP_READ_FUSE_DATA1	0x80
+#define MX7_OCOTP_READ_FUSE_DATA2	0x90
+#define MX7_OCOTP_READ_FUSE_DATA3	0xA0
+
 #define DEF_FSOURCE			1001	/* > 1000 ns */
 #define DEF_STROBE_PROG			10000	/* IPG clocks */
 
@@ -97,6 +107,8 @@ struct imx_ocotp_data {
 	void (*format_mac)(u8 *dst, const u8 *src,
 			   enum imx_ocotp_format_mac_direction dir);
 	int (*set_timing)(struct ocotp_priv *priv);
+	int (*fuse_read)(struct ocotp_priv *priv, u32 addr, u32 *pdata);
+	int (*fuse_blow)(struct ocotp_priv *priv, u32 addr, u32 value);
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
 };
@@ -221,7 +233,7 @@ static int imx6_ocotp_prepare(struct ocotp_priv *priv)
 	return 0;
 }
 
-static int fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
+static int imx6_fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 {
 	u32 ctrl_reg;
 	int ret;
@@ -247,6 +259,50 @@ static int fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 	return 0;
 }
 
+static int imx7_fuse_read_addr(struct ocotp_priv *priv, u32 index, u32 *pdata)
+{
+	u32 ctrl_reg;
+	u32 bank_addr;
+	u16 word;
+	int ret;
+
+	word = index & 0x3;
+	bank_addr = index >> 2;
+
+	writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
+
+	ctrl_reg = readl(priv->base + OCOTP_CTRL);
+	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
+	ctrl_reg &= ~OCOTP_CTRL_WR_UNLOCK_MASK;
+	ctrl_reg |= BF(bank_addr, OCOTP_CTRL_ADDR);
+	writel(ctrl_reg, priv->base + OCOTP_CTRL);
+
+	writel(OCOTP_READ_CTRL_READ_FUSE, priv->base + MX7_OCOTP_READ_CTRL);
+	ret = imx6_ocotp_wait_busy(priv, 0);
+	if (ret)
+		return ret;
+
+	if (readl(priv->base + OCOTP_CTRL) & OCOTP_CTRL_ERROR)
+		*pdata = 0xbadabada;
+	else
+		switch (word) {
+			case 0:
+				*pdata = readl(priv->base + MX7_OCOTP_READ_FUSE_DATA0);
+				break;
+			case 1:
+				*pdata = readl(priv->base + MX7_OCOTP_READ_FUSE_DATA1);
+				break;
+			case 2:
+				*pdata = readl(priv->base + MX7_OCOTP_READ_FUSE_DATA2);
+				break;
+			case 3:
+				*pdata = readl(priv->base + MX7_OCOTP_READ_FUSE_DATA2);
+				break;
+		}
+
+	return 0;
+}
+
 static int imx6_ocotp_read_one_u32(struct ocotp_priv *priv, u32 index, u32 *pdata)
 {
 	int ret;
@@ -258,7 +314,7 @@ static int imx6_ocotp_read_one_u32(struct ocotp_priv *priv, u32 index, u32 *pdat
 		return ret;
 	}
 
-	ret = fuse_read_addr(priv, index, pdata);
+	ret = priv->data->fuse_read(priv, index, pdata);
 	if (ret) {
 		dev_err(&priv->dev, "failed to read fuse 0x%08x\n", index);
 		return ret;
@@ -287,19 +343,27 @@ static int imx_ocotp_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 	return 0;
 }
 
-static int fuse_blow_addr(struct ocotp_priv *priv, u32 addr, u32 value)
+static void imx_ocotp_clear_unlock(struct ocotp_priv *priv, u32 index)
 {
 	u32 ctrl_reg;
-	int ret;
 
 	writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
 
 	/* Control register */
 	ctrl_reg = readl(priv->base + OCOTP_CTRL);
 	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
-	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
+	ctrl_reg |= BF(index, OCOTP_CTRL_ADDR);
 	ctrl_reg |= BF(OCOTP_CTRL_WR_UNLOCK_KEY, OCOTP_CTRL_WR_UNLOCK);
 	writel(ctrl_reg, priv->base + OCOTP_CTRL);
+}
+
+static int imx6_fuse_blow_addr(struct ocotp_priv *priv, u32 index, u32 value)
+{
+	int ret;
+
+	imx_ocotp_clear_unlock(priv, index);
+
+	writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
 
 	writel(value, priv->base + OCOTP_DATA);
 	ret = imx6_ocotp_wait_busy(priv, 0);
@@ -311,6 +375,53 @@ static int fuse_blow_addr(struct ocotp_priv *priv, u32 addr, u32 value)
 	return 0;
 }
 
+static int imx7_fuse_blow_addr(struct ocotp_priv *priv, u32 index, u32 value)
+{
+	int ret;
+	int word;
+	int bank_addr;
+
+	bank_addr = index >> 2;
+	word = index & 0x3;
+
+	imx_ocotp_clear_unlock(priv, bank_addr);
+
+	switch(word) {
+		case 0:
+			writel(0, priv->base + MX7_OCOTP_DATA1);
+			writel(0, priv->base + MX7_OCOTP_DATA2);
+			writel(0, priv->base + MX7_OCOTP_DATA3);
+			writel(value, priv->base + MX7_OCOTP_DATA0);
+			break;
+		case 1:
+			writel(value, priv->base + MX7_OCOTP_DATA1);
+			writel(0, priv->base + MX7_OCOTP_DATA2);
+			writel(0, priv->base + MX7_OCOTP_DATA3);
+			writel(0, priv->base + MX7_OCOTP_DATA0);
+			break;
+		case 2:
+			writel(value, priv->base + MX7_OCOTP_DATA2);
+			writel(0, priv->base + MX7_OCOTP_DATA3);
+			writel(0, priv->base + MX7_OCOTP_DATA1);
+			writel(0, priv->base + MX7_OCOTP_DATA0);
+			break;
+		case 3:
+			writel(value, priv->base + MX7_OCOTP_DATA3);
+			writel(0, priv->base + MX7_OCOTP_DATA1);
+			writel(0, priv->base + MX7_OCOTP_DATA2);
+			writel(0, priv->base + MX7_OCOTP_DATA0);
+			break;
+	}
+
+	ret = imx6_ocotp_wait_busy(priv, 0);
+	if (ret)
+		return ret;
+
+	/* Write postamble */
+	udelay(2000);
+	return 0;
+}
+
 static int imx6_ocotp_reload_shadow(struct ocotp_priv *priv)
 {
 	dev_info(&priv->dev, "reloading shadow registers...\n");
@@ -331,7 +442,7 @@ static int imx6_ocotp_blow_one_u32(struct ocotp_priv *priv, u32 index, u32 data,
 		return ret;
 	}
 
-	ret = fuse_blow_addr(priv, index, data);
+	ret = priv->data->fuse_blow(priv, index, data);
 	if (ret) {
 		dev_err(&priv->dev, "fuse blow failed\n");
 		return ret;
@@ -731,6 +842,8 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.mac_offsets = { MAC_OFFSET_0 },
 	.format_mac = imx_ocotp_format_mac,
 	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
 };
 
 static struct imx_ocotp_data imx6ul_ocotp_data = {
@@ -740,6 +853,8 @@ static struct imx_ocotp_data imx6ul_ocotp_data = {
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
 	.format_mac = imx_ocotp_format_mac,
 	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
 };
 
 static struct imx_ocotp_data imx6ull_ocotp_data = {
@@ -749,6 +864,8 @@ static struct imx_ocotp_data imx6ull_ocotp_data = {
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
 	.format_mac = imx_ocotp_format_mac,
 	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
@@ -758,6 +875,8 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.mac_offsets = { MAC_OFFSET_0, MAC_OFFSET_1 },
 	.format_mac = vf610_ocotp_format_mac,
 	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
 };
 
 static struct imx_ocotp_data imx8mq_ocotp_data = {
@@ -767,6 +886,19 @@ static struct imx_ocotp_data imx8mq_ocotp_data = {
 	.mac_offsets = { 0x90 },
 	.format_mac = imx_ocotp_format_mac,
 	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
+};
+
+static struct imx_ocotp_data imx7d_ocotp_data = {
+	.num_regs = 2048,
+	.addr_to_offset = imx6sl_addr_to_offset,
+	.mac_offsets_num = 1,
+	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
+	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx7_ocotp_set_timing,
+	.fuse_blow = imx7_fuse_blow_addr,
+	.fuse_read = imx7_fuse_read_addr,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
@@ -785,6 +917,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6ull-ocotp",
 		.data = &imx6ull_ocotp_data,
+	}, {
+		.compatible = "fsl,imx7d-ocotp",
+		.data = &imx7d_ocotp_data,
 	}, {
 		.compatible = "fsl,imx8mq-ocotp",
 		.data = &imx8mq_ocotp_data,
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
