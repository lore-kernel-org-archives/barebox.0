Delivery-date: Tue, 16 Jan 2024 16:02:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPkxV-002458-2y
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 16:02:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPkxW-0007zs-0Q
	for lore@pengutronix.de; Tue, 16 Jan 2024 16:02:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3/lre4d0LzUic2PUeplnFPNMlShY5pr4deUGQj/zEIY=; b=EZektUqG6nKdsLbgM+i23sSexc
	rCuttJjpOnVOhmUxv+cQuQryJ8LvcQ9YSJUF+ctwUwHL3breCC7wjOE3bd5ryVJo8cG9bxq8GmENB
	9B/CuTtkcF8X6+06bZTJVW0qI6M3lCNJza0jqPmDTGoP0fgtARsrc3obFaZMLmISm2vh2obLbljFB
	aIOF2uxP6M3NI07e8wpXMi8cUls1gArEMdNeqRrY7AF/CYqDedJbuGh0oUza2Ce0kK8p1hPp+bJay
	XmUY9VJZ+nkFSxqM7UJOayldIWrPVqwyCm9lVIoOs2OQGWt0TV3yRCD4lILVnlHwgQSxauqlHV95D
	Rhf3isEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPkwG-00CLWu-0X;
	Tue, 16 Jan 2024 15:01:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPkw8-00CLVC-27
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 15:01:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rPkw5-0007bW-TU; Tue, 16 Jan 2024 16:01:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rPkw5-000GVO-Gk; Tue, 16 Jan 2024 16:01:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rPkw5-007HxY-1V;
	Tue, 16 Jan 2024 16:01:05 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 16 Jan 2024 16:00:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240116-feature-imx8mp-octop-driver-v1-1-5143a215f657@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIACqapmUC/x3MPQqAMAxA4atIZgO2/qBeRRxKGzWDtqRaBPHuF
 sfvDe+BSMIUYSweEEoc2R8ZqizAbuZYCdllg650UynV4ULmvCTn/e73gN6ePqATTiTY1U6TbRs
 zaAf5EIQWvv/7NL/vB4N59r5tAAAA
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_070109_022143_8050E52D 
X-CRM114-Status: GOOD (  17.80  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8MP: enhance support for ocotp driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The OTP memory address space found in the i.MX8MP extends to 0x17F[1]
instead of the usual 0xFF[2]. Hence, the ADDR field in the HW_OCOTP_CTRL
register was extended to hold 9 bits, shifting all subsequent fields up
by one bit. As the access patterns are otherwise identical we inject the
correct bitmaps for the CTRL register access via the newly introduced
`ocotp_ctrl_reg` and keep the driver generic.

One additional bug were missing `set_timing`, `efuse_blow` and
`efuse_read` function pointers - resulting in a null reference exception
when programming the fuses e.g. burning the SRK hashes for HAB boot. As
the peripheral is identical to the other SOCs found in the i.MX family
the standard implementation was simply added.

[1]: see Figure 6-25 OTP Memory Footprint, i.MX8MP RM Rev. 1
[2]: see Figure 6-28 OTP Memory Footprint, i.MX8MM RM Rev. 3

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 143 +++++++++++++++++++++++++++++++++++---------------
 1 file changed, 101 insertions(+), 42 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 6480fd9523..66a88ae480 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -25,6 +25,7 @@
 #include <of.h>
 #include <clock.h>
 #include <linux/regmap.h>
+#include <linux/bits.h>
 #include <linux/clk.h>
 #include <machine_id.h>
 #ifdef CONFIG_ARCH_IMX
@@ -66,25 +67,29 @@
 #define DEF_STROBE_PROG			10000	/* IPG clocks */
 
 /* OCOTP Registers bits and masks */
-#define OCOTP_CTRL_WR_UNLOCK		16
-#define OCOTP_CTRL_WR_UNLOCK_KEY	0x3E77
-#define OCOTP_CTRL_WR_UNLOCK_MASK	0xFFFF0000
-#define OCOTP_CTRL_ADDR			0
-#define OCOTP_CTRL_ADDR_MASK		0x000000FF
-#define OCOTP_CTRL_BUSY			(1 << 8)
-#define OCOTP_CTRL_ERROR		(1 << 9)
-#define OCOTP_CTRL_RELOAD_SHADOWS	(1 << 10)
-
-#define OCOTP_TIMING_STROBE_READ_MASK	0x003F0000
-#define OCOTP_TIMING_RELAX_MASK		0x0000F000
-#define OCOTP_TIMING_STROBE_PROG_MASK	0x00000FFF
-#define OCOTP_TIMING_WAIT_MASK		0x0FC00000
-
-#define OCOTP_READ_CTRL_READ_FUSE	0x00000001
-
-#define BF(value, field)		FIELD_PREP(field##_MASK, value)
-
-#define OCOTP_OFFSET_TO_ADDR(o)		(OCOTP_OFFSET_TO_INDEX(o) * 4)
+#define OCOTP_CTRL_ADDR		  GENMASK(7, 0)
+#define OCOTP_CTRL_BUSY		  BIT(8)
+#define OCOTP_CTRL_ERROR	  BIT(9)
+#define OCOTP_CTRL_RELOAD_SHADOWS BIT(10)
+#define OCOTP_CTRL_WR_UNLOCK	  GENMASK(31, 16)
+#define OCOTP_CTRL_WR_UNLOCK_KEY  0x3E77
+
+/* i.MX8MP OCOTP CTRL has a different layout. See RM Rev.1 06/2021 Section
+	* 6.3.5.1.2.4 */
+#define OCOTP_CTRL_ADDR_8MP	      GENMASK(8, 0)
+#define OCOTP_CTRL_BUSY_8MP	      BIT(9)
+#define OCOTP_CTRL_ERROR_8MP	      BIT(10)
+#define OCOTP_CTRL_RELOAD_SHADOWS_8MP BIT(11)
+#define OCOTP_CTRL_WR_UNLOCK_8MP      GENMASK(31, 16)
+
+#define OCOTP_TIMING_STROBE_READ GENMASK(21, 16)
+#define OCOTP_TIMING_RELAX	 GENMASK(15, 12)
+#define OCOTP_TIMING_STROBE_PROG GENMASK(11, 0)
+#define OCOTP_TIMING_WAIT	 GENMASK(27, 22)
+
+#define OCOTP_READ_CTRL_READ_FUSE BIT(1)
+
+#define OCOTP_OFFSET_TO_ADDR(o) (OCOTP_OFFSET_TO_INDEX(o) * 4)
 
 /* Other definitions */
 #define IMX6_OTP_DATA_ERROR_VAL		0xBADABADA
@@ -99,11 +104,37 @@
 #define MAC_BYTES			8
 #define UNIQUE_ID_NUM			2
 
+#define field_prep(_mask, _val) (((_val) << (ffs(_mask) - 1)) & (_mask))
+
 enum imx_ocotp_format_mac_direction {
 	OCOTP_HW_TO_MAC,
 	OCOTP_MAC_TO_HW,
 };
 
+struct ocotp_ctrl_reg {
+	u32 bm_addr;
+	u32 bm_busy;
+	u32 bm_error;
+	u32 bm_reload_shadows;
+	u32 bm_wr_unlock;
+};
+
+const struct ocotp_ctrl_reg ocotp_ctrl_reg_default = {
+	.bm_addr = OCOTP_CTRL_ADDR,
+	.bm_busy = OCOTP_CTRL_BUSY,
+	.bm_error = OCOTP_CTRL_ERROR,
+	.bm_reload_shadows = OCOTP_CTRL_RELOAD_SHADOWS,
+	.bm_wr_unlock = OCOTP_CTRL_WR_UNLOCK,
+};
+
+const struct ocotp_ctrl_reg ocotp_ctrl_reg_8mp = {
+	.bm_addr = OCOTP_CTRL_ADDR_8MP,
+	.bm_busy = OCOTP_CTRL_BUSY_8MP,
+	.bm_error = OCOTP_CTRL_ERROR_8MP,
+	.bm_reload_shadows = OCOTP_CTRL_RELOAD_SHADOWS_8MP,
+	.bm_wr_unlock = OCOTP_CTRL_WR_UNLOCK_8MP,
+};
+
 struct ocotp_priv;
 
 struct imx_ocotp_data {
@@ -117,6 +148,7 @@ struct imx_ocotp_data {
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
 	struct imx8m_featctrl_data *feat;
+	const struct ocotp_ctrl_reg *ctrl;
 };
 
 struct ocotp_priv_ethaddr {
@@ -181,10 +213,10 @@ static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
 					1000000);
 	strobe_prog += 2 * (relax + 1) - 1;
 
-	timing = readl(priv->base + OCOTP_TIMING) & OCOTP_TIMING_WAIT_MASK;
-	timing |= BF(relax, OCOTP_TIMING_RELAX);
-	timing |= BF(strobe_read, OCOTP_TIMING_STROBE_READ);
-	timing |= BF(strobe_prog, OCOTP_TIMING_STROBE_PROG);
+	timing = readl(priv->base + OCOTP_TIMING) & OCOTP_TIMING_WAIT;
+	timing |= FIELD_PREP(OCOTP_TIMING_RELAX, relax);
+	timing |= FIELD_PREP(OCOTP_TIMING_STROBE_READ, strobe_read);
+	timing |= FIELD_PREP(OCOTP_TIMING_STROBE_PROG, strobe_prog);
 
 	writel(timing, priv->base + OCOTP_TIMING);
 
@@ -215,8 +247,9 @@ static int imx7_ocotp_set_timing(struct ocotp_priv *priv)
 static int imx6_ocotp_wait_busy(struct ocotp_priv *priv, u32 flags)
 {
 	uint64_t start = get_time_ns();
+	u32 bm_ctrl_busy = priv->data->ctrl->bm_busy;
 
-	while (readl(priv->base + OCOTP_CTRL) & (OCOTP_CTRL_BUSY | flags))
+	while (readl(priv->base + OCOTP_CTRL) & (bm_ctrl_busy | flags))
 		if (is_timeout(start, MSECOND))
 			return -ETIMEDOUT;
 
@@ -242,13 +275,16 @@ static int imx6_fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 {
 	u32 ctrl_reg;
 	int ret;
+	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
+	u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
+	u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 
-	writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
+	writel(bm_ctrl_error, priv->base + OCOTP_CTRL_CLR);
 
 	ctrl_reg = readl(priv->base + OCOTP_CTRL);
-	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
-	ctrl_reg &= ~OCOTP_CTRL_WR_UNLOCK_MASK;
-	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
+	ctrl_reg &= ~bm_ctrl_addr;
+	ctrl_reg &= ~bm_ctrl_wr_unlock;
+	ctrl_reg |= field_prep(bm_ctrl_addr, addr);
 	writel(ctrl_reg, priv->base + OCOTP_CTRL);
 
 	writel(OCOTP_READ_CTRL_READ_FUSE, priv->base + OCOTP_READ_CTRL);
@@ -256,7 +292,7 @@ static int imx6_fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 	if (ret)
 		return ret;
 
-	if (readl(priv->base + OCOTP_CTRL) & OCOTP_CTRL_ERROR)
+	if (readl(priv->base + OCOTP_CTRL) & bm_ctrl_error)
 		*pdata = 0xbadabada;
 	else
 		*pdata = readl(priv->base + OCOTP_READ_FUSE_DATA);
@@ -270,16 +306,19 @@ static int imx7_fuse_read_addr(struct ocotp_priv *priv, u32 index, u32 *pdata)
 	u32 bank_addr;
 	u16 word;
 	int ret;
+	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
+	u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
+	u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 
 	word = index & 0x3;
 	bank_addr = index >> 2;
 
-	writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
+	writel(bm_ctrl_error, priv->base + OCOTP_CTRL_CLR);
 
 	ctrl_reg = readl(priv->base + OCOTP_CTRL);
-	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
-	ctrl_reg &= ~OCOTP_CTRL_WR_UNLOCK_MASK;
-	ctrl_reg |= BF(bank_addr, OCOTP_CTRL_ADDR);
+	ctrl_reg &= ~bm_ctrl_addr;
+	ctrl_reg &= ~bm_ctrl_wr_unlock;
+	ctrl_reg |= field_prep(bm_ctrl_addr, bank_addr);
 	writel(ctrl_reg, priv->base + OCOTP_CTRL);
 
 	writel(OCOTP_READ_CTRL_READ_FUSE, priv->base + MX7_OCOTP_READ_CTRL);
@@ -287,7 +326,7 @@ static int imx7_fuse_read_addr(struct ocotp_priv *priv, u32 index, u32 *pdata)
 	if (ret)
 		return ret;
 
-	if (readl(priv->base + OCOTP_CTRL) & OCOTP_CTRL_ERROR)
+	if (readl(priv->base + OCOTP_CTRL) & bm_ctrl_error)
 		*pdata = 0xbadabada;
 	else
 		switch (word) {
@@ -351,24 +390,28 @@ static int imx_ocotp_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 static void imx_ocotp_clear_unlock(struct ocotp_priv *priv, u32 index)
 {
 	u32 ctrl_reg;
+	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
+	u32 bm_ctrl_addr = priv->data->ctrl->bm_addr;
+	u32 bm_ctrl_wr_unlock = priv->data->ctrl->bm_wr_unlock;
 
-	writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
+	writel(bm_ctrl_error, priv->base + OCOTP_CTRL_CLR);
 
 	/* Control register */
 	ctrl_reg = readl(priv->base + OCOTP_CTRL);
-	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
-	ctrl_reg |= BF(index, OCOTP_CTRL_ADDR);
-	ctrl_reg |= BF(OCOTP_CTRL_WR_UNLOCK_KEY, OCOTP_CTRL_WR_UNLOCK);
+	ctrl_reg &= ~bm_ctrl_addr;
+	ctrl_reg |= field_prep(bm_ctrl_addr, index);
+	ctrl_reg |= field_prep(bm_ctrl_wr_unlock, OCOTP_CTRL_WR_UNLOCK_KEY);
 	writel(ctrl_reg, priv->base + OCOTP_CTRL);
 }
 
 static int imx6_fuse_blow_addr(struct ocotp_priv *priv, u32 index, u32 value)
 {
 	int ret;
+	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
 
 	imx_ocotp_clear_unlock(priv, index);
 
-	writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
+	writel(bm_ctrl_error, priv->base + OCOTP_CTRL_CLR);
 
 	writel(value, priv->base + OCOTP_DATA);
 	ret = imx6_ocotp_wait_busy(priv, 0);
@@ -429,17 +472,20 @@ static int imx7_fuse_blow_addr(struct ocotp_priv *priv, u32 index, u32 value)
 
 static int imx6_ocotp_reload_shadow(struct ocotp_priv *priv)
 {
+	u32 bm_ctrl_reload_shadows = priv->data->ctrl->bm_reload_shadows;
+
 	dev_info(&priv->dev, "reloading shadow registers...\n");
-	writel(OCOTP_CTRL_RELOAD_SHADOWS, priv->base + OCOTP_CTRL_SET);
+	writel(bm_ctrl_reload_shadows, priv->base + OCOTP_CTRL_SET);
 	udelay(1);
 
-	return imx6_ocotp_wait_busy(priv, OCOTP_CTRL_RELOAD_SHADOWS);
+	return imx6_ocotp_wait_busy(priv, bm_ctrl_reload_shadows);
 }
 
 static int imx6_ocotp_blow_one_u32(struct ocotp_priv *priv, u32 index, u32 data,
 			    u32 *pfused_value)
 {
 	int ret;
+	u32 bm_ctrl_error = priv->data->ctrl->bm_error;
 
 	ret = imx6_ocotp_prepare(priv);
 	if (ret) {
@@ -453,7 +499,7 @@ static int imx6_ocotp_blow_one_u32(struct ocotp_priv *priv, u32 index, u32 data,
 		return ret;
 	}
 
-	if (readl(priv->base + OCOTP_CTRL) & OCOTP_CTRL_ERROR) {
+	if (readl(priv->base + OCOTP_CTRL) & bm_ctrl_error) {
 		dev_err(&priv->dev, "bad write status\n");
 		return -EFAULT;
 	}
@@ -861,6 +907,7 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
@@ -872,6 +919,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx_ocotp_data imx6ul_ocotp_data = {
@@ -883,6 +931,7 @@ static struct imx_ocotp_data imx6ul_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx_ocotp_data imx6ull_ocotp_data = {
@@ -894,6 +943,7 @@ static struct imx_ocotp_data imx6ull_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
@@ -905,6 +955,7 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx8m_featctrl_data imx8mp_featctrl_data = {
@@ -920,6 +971,10 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
 	.mac_offsets = { 0x90, 0x94 },
 	.format_mac = imx_ocotp_format_mac,
 	.feat = &imx8mp_featctrl_data,
+	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_8mp,
 };
 
 static struct imx_ocotp_data imx8mq_ocotp_data = {
@@ -931,6 +986,7 @@ static struct imx_ocotp_data imx8mq_ocotp_data = {
 	.set_timing = imx6_ocotp_set_timing,
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx8m_featctrl_data imx8mm_featctrl_data = {
@@ -948,6 +1004,7 @@ static struct imx_ocotp_data imx8mm_ocotp_data = {
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
 	.feat = &imx8mm_featctrl_data,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx8m_featctrl_data imx8mn_featctrl_data = {
@@ -965,6 +1022,7 @@ static struct imx_ocotp_data imx8mn_ocotp_data = {
 	.fuse_blow = imx6_fuse_blow_addr,
 	.fuse_read = imx6_fuse_read_addr,
 	.feat = &imx8mn_featctrl_data,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static struct imx_ocotp_data imx7d_ocotp_data = {
@@ -976,6 +1034,7 @@ static struct imx_ocotp_data imx7d_ocotp_data = {
 	.set_timing = imx7_ocotp_set_timing,
 	.fuse_blow = imx7_fuse_blow_addr,
 	.fuse_read = imx7_fuse_read_addr,
+	.ctrl = &ocotp_ctrl_reg_default,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {

---
base-commit: c324e9ea7f8808ae069cd8bd0aa53021c1239bd2
change-id: 20240116-feature-imx8mp-octop-driver-63d2ec54a92d

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



