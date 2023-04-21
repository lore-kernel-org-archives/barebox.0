Delivery-date: Fri, 21 Apr 2023 12:08:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppnh3-00BPUL-AF
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 12:08:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppnh2-0001Vn-Bg
	for lore@pengutronix.de; Fri, 21 Apr 2023 12:08:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CuyP5W6BtkVxTaieI68cMWlq/vk4+B7Q8/A8aJXDXiU=; b=vGODRDFFAXe0DU/J0f1LG31Zlj
	aQ2CZPs0EzDN+gYdNzDKrhv7r4cUGJyOZrGHlbThWam48NfQzkyZps1AbIg3FCCGB+MxjMrWlsKlI
	xxU86ytTBxZJbILfR8EIY1lqHuSg61cXzibS9en75mdmi89mNLuRoa2oklOgAQPxgj5TmX9VYfMMb
	KDHKchxhCAVS2CBu2XRqquoQYpZ6KiYx91C0AW+oASLCYP6fEkduylnBx3yHkou3YvufcIkkjHP1b
	h3sT727kvyzjf1enGYkRjt93kuCZcfds82bZdLbUOuvLOpVJHyZuZT/rrtSLgrDlmSo1ADrbuzuwX
	JzJXKZBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfm-00AQ5F-10;
	Fri, 21 Apr 2023 10:07:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfd-00AQ1c-0w
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:07:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfa-00011D-Og; Fri, 21 Apr 2023 12:07:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfa-00Clhf-4L; Fri, 21 Apr 2023 12:07:10 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfY-00C2ON-HN; Fri, 21 Apr 2023 12:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Apr 2023 12:06:39 +0200
Message-Id: <20230421100642.2867651-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_030713_666506_71D417F4 
X-CRM114-Status: GOOD (  27.34  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/5] phy: stm32-usphyc: sync with Linux v6.3-rc5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DT binding changed in the meantime and the PHY is now clock provider
to the EHCI. Sync the driver to enable use of the EHCI.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/phy-stm32-usbphyc.c | 321 +++++++++++++++++++++++++++++---
 include/linux/units.h           | 111 +++++++++++
 2 files changed, 406 insertions(+), 26 deletions(-)
 create mode 100644 include/linux/units.h

diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
index 3ccbc7b9027a..ac82b019f44c 100644
--- a/drivers/phy/phy-stm32-usbphyc.c
+++ b/drivers/phy/phy-stm32-usbphyc.c
@@ -14,11 +14,14 @@
 #include <linux/phy/phy.h>
 #include <linux/reset.h>
 #include <linux/math64.h>
+#include <asm-generic/atomic.h>
 #include <linux/usb/phy.h>
+#include <linux/units.h>
 
 #define STM32_USBPHYC_PLL	0x0
 #define STM32_USBPHYC_MISC	0x8
 #define STM32_USBPHYC_MONITOR(X) (0x108 + ((X) * 0x100))
+#define STM32_USBPHYC_TUNE(X)	(0x10C + ((X) * 0x100))
 #define STM32_USBPHYC_VERSION	0x3F4
 
 /* STM32_USBPHYC_PLL bit fields */
@@ -40,6 +43,83 @@
 #define STM32_USBPHYC_MON_SEL_LOCKP 0x1F
 #define STM32_USBPHYC_MON_OUT_LOCKP BIT(3)
 
+/* STM32_USBPHYC_TUNE bit fields */
+#define INCURREN		BIT(0)
+#define INCURRINT		BIT(1)
+#define LFSCAPEN		BIT(2)
+#define HSDRVSLEW		BIT(3)
+#define HSDRVDCCUR		BIT(4)
+#define HSDRVDCLEV		BIT(5)
+#define HSDRVCURINCR		BIT(6)
+#define FSDRVRFADJ		BIT(7)
+#define HSDRVRFRED		BIT(8)
+#define HSDRVCHKITRM		GENMASK(12, 9)
+#define HSDRVCHKZTRM		GENMASK(14, 13)
+#define OTPCOMP			GENMASK(19, 15)
+#define SQLCHCTL		GENMASK(21, 20)
+#define HDRXGNEQEN		BIT(22)
+#define HSRXOFF			GENMASK(24, 23)
+#define HSFALLPREEM		BIT(25)
+#define SHTCCTCTLPROT		BIT(26)
+#define STAGSEL			BIT(27)
+
+enum boosting_vals {
+	BOOST_1000_UA = 1000,
+	BOOST_2000_UA = 2000,
+};
+
+enum dc_level_vals {
+	DC_NOMINAL,
+	DC_PLUS_5_TO_7_MV,
+	DC_PLUS_10_TO_14_MV,
+	DC_MINUS_5_TO_7_MV,
+	DC_MAX,
+};
+
+enum current_trim {
+	CUR_NOMINAL,
+	CUR_PLUS_1_56_PCT,
+	CUR_PLUS_3_12_PCT,
+	CUR_PLUS_4_68_PCT,
+	CUR_PLUS_6_24_PCT,
+	CUR_PLUS_7_8_PCT,
+	CUR_PLUS_9_36_PCT,
+	CUR_PLUS_10_92_PCT,
+	CUR_PLUS_12_48_PCT,
+	CUR_PLUS_14_04_PCT,
+	CUR_PLUS_15_6_PCT,
+	CUR_PLUS_17_16_PCT,
+	CUR_PLUS_19_01_PCT,
+	CUR_PLUS_20_58_PCT,
+	CUR_PLUS_22_16_PCT,
+	CUR_PLUS_23_73_PCT,
+	CUR_MAX,
+};
+
+enum impedance_trim {
+	IMP_NOMINAL,
+	IMP_MINUS_2_OHMS,
+	IMP_MINUS_4_OMHS,
+	IMP_MINUS_6_OHMS,
+	IMP_MAX,
+};
+
+enum squelch_level {
+	SQLCH_NOMINAL,
+	SQLCH_PLUS_7_MV,
+	SQLCH_MINUS_5_MV,
+	SQLCH_PLUS_14_MV,
+	SQLCH_MAX,
+};
+
+enum rx_offset {
+	NO_RX_OFFSET,
+	RX_OFFSET_PLUS_5_MV,
+	RX_OFFSET_PLUS_10_MV,
+	RX_OFFSET_MINUS_5_MV,
+	RX_OFFSET_MAX,
+};
+
 /* STM32_USBPHYC_VERSION bit fields */
 #define MINREV			GENMASK(3, 0)
 #define MAJREV			GENMASK(7, 4)
@@ -47,7 +127,6 @@
 #define PLL_FVCO_MHZ		2880
 #define PLL_INFF_MIN_RATE_HZ	19200000
 #define PLL_INFF_MAX_RATE_HZ	38400000
-#define HZ_PER_MHZ		1000000L
 
 struct pll_params {
 	u8 ndiv;
@@ -57,30 +136,34 @@ struct pll_params {
 struct stm32_usbphyc_phy {
 	struct phy *phy;
 	struct stm32_usbphyc *usbphyc;
+	struct regulator *vbus;
 	u32 index;
 	bool active;
+	u32 tune;
 };
 
 struct stm32_usbphyc {
 	struct device *dev;
 	void __iomem *base;
 	struct clk *clk;
+	struct reset_control *rst;
 	struct stm32_usbphyc_phy **phys;
 	int nphys;
 	struct regulator *vdda1v1;
 	struct regulator *vdda1v8;
-	int n_pll_cons;
+	atomic_t n_pll_cons;
+	struct clk_hw clk48_hw;
 	int switch_setup;
 };
 
 static inline void stm32_usbphyc_set_bits(void __iomem *reg, u32 bits)
 {
-	writel(readl(reg) | bits, reg);
+	writel_relaxed(readl_relaxed(reg) | bits, reg);
 }
 
 static inline void stm32_usbphyc_clr_bits(void __iomem *reg, u32 bits)
 {
-	writel(readl(reg) & ~bits, reg);
+	writel_relaxed(readl_relaxed(reg) & ~bits, reg);
 }
 
 static int stm32_usbphyc_regulators_enable(struct stm32_usbphyc *usbphyc)
@@ -168,7 +251,7 @@ static int stm32_usbphyc_pll_init(struct stm32_usbphyc *usbphyc)
 	if (pll_params.frac)
 		usbphyc_pll |= PLLFRACCTL | frac;
 
-	writel(usbphyc_pll, usbphyc->base + STM32_USBPHYC_PLL);
+	writel_relaxed(usbphyc_pll, usbphyc->base + STM32_USBPHYC_PLL);
 
 	dev_dbg(usbphyc->dev, "input clk freq=%dHz, ndiv=%lu, frac=%lu\n",
 		clk_rate, FIELD_GET(PLLNDIV, usbphyc_pll),
@@ -185,7 +268,7 @@ static int __stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
 	stm32_usbphyc_clr_bits(pll_reg, PLLEN);
 
 	/* Wait for minimum width of powerdown pulse (ENABLE = Low) */
-	if (readl_poll_timeout(pll_reg, pllen, !(pllen & PLLEN), 50))
+	if (readl_relaxed_poll_timeout(pll_reg, pllen, !(pllen & PLLEN), 50))
 		dev_err(usbphyc->dev, "PLL not reset\n");
 
 	return stm32_usbphyc_regulators_disable(usbphyc);
@@ -194,7 +277,7 @@ static int __stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
 static int stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
 {
 	/* Check if a phy port is still active or clk48 in use */
-	if (--usbphyc->n_pll_cons > 0)
+	if (atomic_dec_return(&usbphyc->n_pll_cons) > 0)
 		return 0;
 
 	return __stm32_usbphyc_pll_disable(usbphyc);
@@ -203,14 +286,14 @@ static int stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
 static int stm32_usbphyc_pll_enable(struct stm32_usbphyc *usbphyc)
 {
 	void __iomem *pll_reg = usbphyc->base + STM32_USBPHYC_PLL;
-	bool pllen = readl(pll_reg) & PLLEN;
+	bool pllen = readl_relaxed(pll_reg) & PLLEN;
 	int ret;
 
 	/*
 	 * Check if a phy port or clk48 prepare has configured the pll
 	 * and ensure the PLL is enabled
 	 */
-	if (++usbphyc->n_pll_cons > 1 && pllen)
+	if (atomic_inc_return(&usbphyc->n_pll_cons) > 1 && pllen)
 		return 0;
 
 	if (pllen) {
@@ -222,7 +305,7 @@ static int stm32_usbphyc_pll_enable(struct stm32_usbphyc *usbphyc)
 
 		ret = __stm32_usbphyc_pll_disable(usbphyc);
 		if (ret)
-			return ret;
+			goto dec_n_pll_cons;
 	}
 
 	ret = stm32_usbphyc_regulators_enable(usbphyc);
@@ -241,7 +324,7 @@ reg_disable:
 	stm32_usbphyc_regulators_disable(usbphyc);
 
 dec_n_pll_cons:
-	usbphyc->n_pll_cons--;
+	atomic_dec(&usbphyc->n_pll_cons);
 
 	return ret;
 }
@@ -261,10 +344,10 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
 		return ret;
 
 	/* Check that PLL Lock input to PHY is High */
-	writel(monsel, usbphyc->base + reg_mon);
-	ret = readl_poll_timeout(usbphyc->base + reg_mon, monout,
-				 (monout & STM32_USBPHYC_MON_OUT_LOCKP),
-				 1000);
+	writel_relaxed(monsel, usbphyc->base + reg_mon);
+	ret = readl_relaxed_poll_timeout(usbphyc->base + reg_mon, monout,
+					 (monout & STM32_USBPHYC_MON_OUT_LOCKP),
+					 1000);
 	if (ret) {
 		dev_err(usbphyc->dev, "PLL Lock input to PHY is Low (val=%x)\n",
 			(u32)(monout & STM32_USBPHYC_MON_OUT));
@@ -285,7 +368,9 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
 	return 0;
 
 pll_disable:
-	return stm32_usbphyc_pll_disable(usbphyc);
+	stm32_usbphyc_pll_disable(usbphyc);
+
+	return ret;
 }
 
 static int stm32_usbphyc_phy_exit(struct phy *phy)
@@ -298,11 +383,177 @@ static int stm32_usbphyc_phy_exit(struct phy *phy)
 	return stm32_usbphyc_pll_disable(usbphyc);
 }
 
+static int stm32_usbphyc_phy_power_on(struct phy *phy)
+{
+	struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
+
+	if (usbphyc_phy->vbus)
+		return regulator_enable(usbphyc_phy->vbus);
+
+	return 0;
+}
+
+static int stm32_usbphyc_phy_power_off(struct phy *phy)
+{
+	struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
+
+	if (usbphyc_phy->vbus)
+		return regulator_disable(usbphyc_phy->vbus);
+
+	return 0;
+}
+
 static const struct phy_ops stm32_usbphyc_phy_ops = {
 	.init = stm32_usbphyc_phy_init,
 	.exit = stm32_usbphyc_phy_exit,
+	.power_on = stm32_usbphyc_phy_power_on,
+	.power_off = stm32_usbphyc_phy_power_off,
 };
 
+static int stm32_usbphyc_clk48_prepare(struct clk_hw *hw)
+{
+	struct stm32_usbphyc *usbphyc = container_of(hw, struct stm32_usbphyc, clk48_hw);
+
+	return stm32_usbphyc_pll_enable(usbphyc);
+}
+
+static void stm32_usbphyc_clk48_unprepare(struct clk_hw *hw)
+{
+	struct stm32_usbphyc *usbphyc = container_of(hw, struct stm32_usbphyc, clk48_hw);
+
+	stm32_usbphyc_pll_disable(usbphyc);
+}
+
+static unsigned long stm32_usbphyc_clk48_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	return 48000000;
+}
+
+static const struct clk_ops usbphyc_clk48_ops = {
+	.enable = stm32_usbphyc_clk48_prepare,
+	.disable = stm32_usbphyc_clk48_unprepare,
+	.recalc_rate = stm32_usbphyc_clk48_recalc_rate,
+};
+
+static int stm32_usbphyc_clk48_register(struct stm32_usbphyc *usbphyc)
+{
+	struct device_node *node = usbphyc->dev->of_node;
+	struct clk_init_data init = { };
+	int ret = 0;
+
+	init.name = "ck_usbo_48m";
+	init.ops = &usbphyc_clk48_ops;
+
+	usbphyc->clk48_hw.init = &init;
+
+	ret = clk_hw_register(usbphyc->dev, &usbphyc->clk48_hw);
+	if (ret)
+		return ret;
+
+	return of_clk_add_hw_provider(node, of_clk_hw_simple_get, &usbphyc->clk48_hw);
+}
+
+static void stm32_usbphyc_phy_tuning(struct stm32_usbphyc *usbphyc,
+				     struct device_node *np, u32 index)
+{
+	struct stm32_usbphyc_phy *usbphyc_phy = usbphyc->phys[index];
+	u32 reg = STM32_USBPHYC_TUNE(index);
+	u32 otpcomp, val;
+	int ret;
+
+	/* Backup OTP compensation code */
+	otpcomp = FIELD_GET(OTPCOMP, readl_relaxed(usbphyc->base + reg));
+
+	ret = of_property_read_u32(np, "st,current-boost-microamp", &val);
+	if (ret != -EINVAL) {
+		if (!ret && (val == BOOST_1000_UA || val == BOOST_2000_UA)) {
+			val = (val == BOOST_2000_UA) ? 1 : 0;
+			usbphyc_phy->tune |= INCURREN | FIELD_PREP(INCURRINT, val);
+		} else {
+			dev_warn(usbphyc->dev, "phy%d: invalid st,current-boost-microamp\n", index);
+		}
+	}
+
+	if (!of_property_read_bool(np, "st,no-lsfs-fb-cap"))
+		usbphyc_phy->tune |= LFSCAPEN;
+
+	if (of_property_read_bool(np, "st,decrease-hs-slew-rate"))
+		usbphyc_phy->tune |= HSDRVSLEW;
+
+	ret = of_property_read_u32(np, "st,tune-hs-dc-level", &val);
+	if (ret != -EINVAL) {
+		if (!ret && val < DC_MAX) {
+			if (val == DC_MINUS_5_TO_7_MV) {/* Decreases HS driver DC level */
+				usbphyc_phy->tune |= HSDRVDCCUR;
+			} else if (val > 0) {		/* Increases HS driver DC level */
+				val = (val == DC_PLUS_10_TO_14_MV) ? 1 : 0;
+				usbphyc_phy->tune |= HSDRVCURINCR | FIELD_PREP(HSDRVDCLEV, val);
+			}
+		} else {
+			dev_warn(usbphyc->dev, "phy%d: invalid st,tune-hs-dc-level\n", index);
+		}
+	}
+
+	if (of_property_read_bool(np, "st,enable-fs-rftime-tuning"))
+		usbphyc_phy->tune |= FSDRVRFADJ;
+
+	if (of_property_read_bool(np, "st,enable-hs-rftime-reduction"))
+		usbphyc_phy->tune |= HSDRVRFRED;
+
+	ret = of_property_read_u32(np, "st,trim-hs-current", &val);
+	if (ret != -EINVAL) {
+		if (!ret && val < CUR_MAX)
+			usbphyc_phy->tune |= FIELD_PREP(HSDRVCHKITRM, val);
+		else
+			dev_warn(usbphyc->dev, "phy%d: invalid st,trim-hs-current\n", index);
+	}
+
+	ret = of_property_read_u32(np, "st,trim-hs-impedance", &val);
+	if (ret != -EINVAL) {
+		if (!ret && val < IMP_MAX)
+			usbphyc_phy->tune |= FIELD_PREP(HSDRVCHKZTRM, val);
+		else
+			dev_warn(usbphyc->dev, "phy%d: invalid st,trim-hs-impedance\n", index);
+	}
+
+	ret = of_property_read_u32(np, "st,tune-squelch-level", &val);
+	if (ret != -EINVAL) {
+		if (!ret && val < SQLCH_MAX)
+			usbphyc_phy->tune |= FIELD_PREP(SQLCHCTL, val);
+		else
+			dev_warn(usbphyc->dev, "phy%d: invalid st,tune-squelch\n", index);
+	}
+
+	if (of_property_read_bool(np, "st,enable-hs-rx-gain-eq"))
+		usbphyc_phy->tune |= HDRXGNEQEN;
+
+	ret = of_property_read_u32(np, "st,tune-hs-rx-offset", &val);
+	if (ret != -EINVAL) {
+		if (!ret && val < RX_OFFSET_MAX)
+			usbphyc_phy->tune |= FIELD_PREP(HSRXOFF, val);
+		else
+			dev_warn(usbphyc->dev, "phy%d: invalid st,tune-hs-rx-offset\n", index);
+	}
+
+	if (of_property_read_bool(np, "st,no-hs-ftime-ctrl"))
+		usbphyc_phy->tune |= HSFALLPREEM;
+
+	if (!of_property_read_bool(np, "st,no-lsfs-sc"))
+		usbphyc_phy->tune |= SHTCCTCTLPROT;
+
+	if (of_property_read_bool(np, "st,enable-hs-tx-staggering"))
+		usbphyc_phy->tune |= STAGSEL;
+
+	/* Restore OTP compensation code */
+	usbphyc_phy->tune |= FIELD_PREP(OTPCOMP, otpcomp);
+
+	/*
+	 * By default, if no st,xxx tuning property is used, usbphyc_phy->tune is equal to
+	 * STM32_USBPHYC_TUNE reset value (LFSCAPEN | SHTCCTCTLPROT | OTPCOMP).
+	 */
+	writel_relaxed(usbphyc_phy->tune, usbphyc->base + reg);
+}
+
 static void stm32_usbphyc_switch_setup(struct stm32_usbphyc *usbphyc,
 				       u32 utmi_switch)
 {
@@ -399,8 +650,8 @@ static int stm32_usbphyc_probe(struct device *dev)
 	 * Wait for minimum width of powerdown pulse (ENABLE = Low):
 	 * we have to ensure the PLL is disabled before phys initialization.
 	 */
-	if (readl_poll_timeout(usbphyc->base + STM32_USBPHYC_PLL,
-			       pllen, !(pllen & PLLEN), 50)) {
+	if (readl_relaxed_poll_timeout(usbphyc->base + STM32_USBPHYC_PLL,
+				       pllen, !(pllen & PLLEN), 50)) {
 		dev_warn(usbphyc->dev, "PLL not reset\n");
 		ret = -EPROBE_DEFER;
 		goto clk_disable;
@@ -416,17 +667,15 @@ static int stm32_usbphyc_probe(struct device *dev)
 
 	usbphyc->vdda1v1 = regulator_get(dev, "vdda1v1");
 	if (IS_ERR(usbphyc->vdda1v1)) {
-		ret = PTR_ERR(usbphyc->vdda1v1);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get vdda1v1 supply: %d\n", ret);
+		ret = dev_err_probe(dev, PTR_ERR(usbphyc->vdda1v1),
+				    "failed to get vdda1v1 supply\n");
 		goto clk_disable;
 	}
 
 	usbphyc->vdda1v8 = regulator_get(dev, "vdda1v8");
 	if (IS_ERR(usbphyc->vdda1v8)) {
-		ret = PTR_ERR(usbphyc->vdda1v8);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get vdda1v8 supply: %d\n", ret);
+		ret = dev_err_probe(dev, PTR_ERR(usbphyc->vdda1v8),
+				    "failed to get vdda1v8 supply\n");
 		goto clk_disable;
 	}
 
@@ -456,6 +705,8 @@ static int stm32_usbphyc_probe(struct device *dev)
 		ret = of_property_read_u32(child, "reg", &index);
 		if (ret || index > usbphyc->nphys) {
 			dev_err(&phy->dev, "invalid reg property: %d\n", ret);
+			if (!ret)
+				ret = -EINVAL;
 			goto clk_disable;
 		}
 
@@ -468,6 +719,17 @@ static int stm32_usbphyc_probe(struct device *dev)
 		usbphyc->phys[port]->index = index;
 		usbphyc->phys[port]->active = false;
 
+		usbphyc->phys[port]->vbus = regulator_get(&phy->dev, "vbus");
+		if (IS_ERR(usbphyc->phys[port]->vbus)) {
+			ret = PTR_ERR(usbphyc->phys[port]->vbus);
+			if (ret == -EPROBE_DEFER)
+				goto clk_disable;
+			usbphyc->phys[port]->vbus = NULL;
+		}
+
+		/* Configure phy tuning */
+		stm32_usbphyc_phy_tuning(usbphyc, child, index);
+
 		port++;
 	}
 
@@ -478,8 +740,14 @@ static int stm32_usbphyc_probe(struct device *dev)
 		goto clk_disable;
 	}
 
-	version = readl(usbphyc->base + STM32_USBPHYC_VERSION);
-	dev_info(dev, "registered rev: %lu.%lu\n",
+	ret = stm32_usbphyc_clk48_register(usbphyc);
+	if (ret) {
+		dev_err(dev, "failed to register ck_usbo_48m clock: %d\n", ret);
+		goto clk_disable;
+	}
+
+	version = readl_relaxed(usbphyc->base + STM32_USBPHYC_VERSION);
+	dev_info(dev, "registered rev:%lu.%lu\n",
 		 FIELD_GET(MAJREV, version), FIELD_GET(MINREV, version));
 
 	return 0;
@@ -512,6 +780,7 @@ static const struct of_device_id stm32_usbphyc_of_match[] = {
 	{ .compatible = "st,stm32mp1-usbphyc", },
 	{ /* sentinel */ },
 };
+MODULE_DEVICE_TABLE(of, stm32_usbphyc_of_match);
 
 static struct driver stm32_usbphyc_driver = {
 	.name = "stm32-usbphyc",
diff --git a/include/linux/units.h b/include/linux/units.h
new file mode 100644
index 000000000000..120a2fc87b13
--- /dev/null
+++ b/include/linux/units.h
@@ -0,0 +1,111 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_UNITS_H
+#define _LINUX_UNITS_H
+
+#include <linux/kernel.h>
+
+/* Metric prefixes in accordance with Système international (d'unités) */
+#define PETA	1000000000000000ULL
+#define TERA	1000000000000ULL
+#define GIGA	1000000000UL
+#define MEGA	1000000UL
+#define KILO	1000UL
+#define HECTO	100UL
+#define DECA	10UL
+#define DECI	10UL
+#define CENTI	100UL
+#define MILLI	1000UL
+#define MICRO	1000000UL
+#define NANO	1000000000UL
+#define PICO	1000000000000ULL
+#define FEMTO	1000000000000000ULL
+
+#define NANOHZ_PER_HZ		1000000000UL
+#define MICROHZ_PER_HZ		1000000UL
+#define MILLIHZ_PER_HZ		1000UL
+#define HZ_PER_KHZ		1000UL
+#define KHZ_PER_MHZ		1000UL
+#define HZ_PER_MHZ		1000000UL
+
+#define MILLIWATT_PER_WATT	1000UL
+#define MICROWATT_PER_MILLIWATT	1000UL
+#define MICROWATT_PER_WATT	1000000UL
+
+#define ABSOLUTE_ZERO_MILLICELSIUS -273150
+
+static inline long milli_kelvin_to_millicelsius(long t)
+{
+	return t + ABSOLUTE_ZERO_MILLICELSIUS;
+}
+
+static inline long millicelsius_to_milli_kelvin(long t)
+{
+	return t - ABSOLUTE_ZERO_MILLICELSIUS;
+}
+
+#define MILLIDEGREE_PER_DEGREE 1000
+#define MILLIDEGREE_PER_DECIDEGREE 100
+
+static inline long kelvin_to_millicelsius(long t)
+{
+	return milli_kelvin_to_millicelsius(t * MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long millicelsius_to_kelvin(long t)
+{
+	t = millicelsius_to_milli_kelvin(t);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long deci_kelvin_to_celsius(long t)
+{
+	t = milli_kelvin_to_millicelsius(t * MILLIDEGREE_PER_DECIDEGREE);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long celsius_to_deci_kelvin(long t)
+{
+	t = millicelsius_to_milli_kelvin(t * MILLIDEGREE_PER_DEGREE);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DECIDEGREE);
+}
+
+/**
+ * deci_kelvin_to_millicelsius_with_offset - convert Kelvin to Celsius
+ * @t: temperature value in decidegrees Kelvin
+ * @offset: difference between Kelvin and Celsius in millidegrees
+ *
+ * Return: temperature value in millidegrees Celsius
+ */
+static inline long deci_kelvin_to_millicelsius_with_offset(long t, long offset)
+{
+	return t * MILLIDEGREE_PER_DECIDEGREE - offset;
+}
+
+static inline long deci_kelvin_to_millicelsius(long t)
+{
+	return milli_kelvin_to_millicelsius(t * MILLIDEGREE_PER_DECIDEGREE);
+}
+
+static inline long millicelsius_to_deci_kelvin(long t)
+{
+	t = millicelsius_to_milli_kelvin(t);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DECIDEGREE);
+}
+
+static inline long kelvin_to_celsius(long t)
+{
+	return t + DIV_ROUND_CLOSEST(ABSOLUTE_ZERO_MILLICELSIUS,
+				     MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long celsius_to_kelvin(long t)
+{
+	return t - DIV_ROUND_CLOSEST(ABSOLUTE_ZERO_MILLICELSIUS,
+				     MILLIDEGREE_PER_DEGREE);
+}
+
+#endif /* _LINUX_UNITS_H */
-- 
2.39.2



