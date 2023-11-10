Delivery-date: Fri, 10 Nov 2023 14:02:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9M-005rjx-3C
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9L-0005OX-Kg
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3r9s39SMbFP9MAKHb3G2pQlbxfigkKFrfYecGjLjzWc=; b=rt44jsCz34w/OVZEczV3FWaTRp
	6WYZTwvdIPKwx6jI108gfU3SWNL5hS7cK9K/6Zx+Hxe1rKM3JBtS+XQZkaiVpjbgwLpIwU5ufTJrR
	wFHojwjfFaKuiXKl1d2zRMfZhwwyqZOX3UDRC4kd3NRWNxVv1XTtD1+pb3DlV8EsgThb+bE+99b8h
	GhMQZCa5XTqdWHB+aj94fswjt+1uv4x/hdBHn2gmboz8/7/6pSPBIdjOEHgyVhNDhXn6riBo7AK5s
	xvTpO+dEqn0Q0dQJ9WmFLfbsKL3fCR70piFX/6/3DEhnVc/2qsLsnMsZUkSKylqJ6hPYoxa7WYQJ5
	pJ2wfYuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R82-008m3i-22;
	Fri, 10 Nov 2023 13:00:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwH-1T
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=3r9s39SMbFP9MAKHb3G2pQlbxfigkKFrfYecGjLjzWc=; b=aLsE5hlWy7eX03C6yvhsndcg/i
	gu0VR7cwS84uxvUztL3lYJfJSGzXQBX2EptbrRmN92qwsDmv2XrZEMTqB2AfDnlazTRkw4cS267rg
	bvCUmn7ZNtjjr//UU84MliDDNWhEWjeqXVGACNJO85BMNALBnh/SOTOsbEMJWxzFcpxsdcFJsO8gA
	dEti/F+bUxmgIP+I3QM3xy5xb9i6XJvhd/9HDCD/EHm/d3TOjeyNssRJ7mIBm64JyYsnfWdRpYkel
	t0a3wHssx7KOCQeNdY0OFm2IkHDVNsfQYmVIIEZrzOSVP2qiBzsVmGDLqWF/8qlvMqrjrxHMSjzlR
	F37YVefw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3q-0X
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043C-Gm; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Z1-8J; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096Mj-0e;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:19 +0100
Message-Id: <20231110130028.2123895-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_668989_5F5EE189 
X-CRM114-Status: GOOD (  22.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/13] ddr: imx8m: move PLL init to SoC specific code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PLL initialization will be different on i.MX9, so move the
code to the i.MX8M specific file and a add a function hook to
struct dram_controller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/ddrphy_train.c   |   2 +-
 drivers/ddr/imx/ddrphy_utils.c   | 257 ------------------------------
 drivers/ddr/imx/imx8m_ddr_init.c | 261 ++++++++++++++++++++++++++++++-
 include/soc/imx8m/ddr.h          |   2 +-
 4 files changed, 262 insertions(+), 260 deletions(-)

diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index 36fb6d3c11..b44f5ef9b4 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -116,7 +116,7 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 	for (i = 0; i < dram_timing->fsp_msg_num; i++) {
 		pr_debug("DRAM PHY training for %dMTS\n", fsp_msg->drate);
 		/* set dram PHY input clocks to desired frequency */
-		ddrphy_init_set_dfi_clk(fsp_msg->drate, dram->ddrc_type);
+		dram->set_dfi_clk(dram, fsp_msg->drate);
 
 		/* load the dram training firmware image */
 		dwc_ddrphy_apb_wr(0xd0000, 0x0);
diff --git a/drivers/ddr/imx/ddrphy_utils.c b/drivers/ddr/imx/ddrphy_utils.c
index db94b85b74..4577547113 100644
--- a/drivers/ddr/imx/ddrphy_utils.c
+++ b/drivers/ddr/imx/ddrphy_utils.c
@@ -13,111 +13,6 @@
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/imx8m-ccm-regs.h>
 
-/* DDR Transfer rate, bus clock is transfer rate / 2, and the DDRC runs at bus
- * clock / 2, which is therefor transfer rate / 4.  */
-enum ddr_rate {
-	DDR_4000,
-	DDR_3720,
-	DDR_3200,
-	DDR_3000,
-	DDR_2600, /* Unused */
-	DDR_2400,
-	DDR_2376, /* Unused */
-	DDR_1600,
-	DDR_1000, /* Unused */
-	DDR_1066,
-	DDR_667,
-	DDR_400,
-	DDR_250, /* Unused */
-	DDR_100,
-	DDR_NUM_RATES
-};
-
-/* PLL config for IMX8MM type DRAM PLL.  This PLL type isn't documented, but
- * it looks like it is a basically a fractional PLL:
- * Frequency = Ref (24 MHz) / P * M / 2^S
- * Note: Divider is equal to register value
- */
-#define MDIV(x) ((x) << 12)
-#define PDIV(x) ((x) << 4)
-#define SDIV(x) ((x) << 0)
-
-#define LOCK_STATUS     BIT(31)
-#define LOCK_SEL_MASK   BIT(29)
-#define CLKE_MASK       BIT(11)
-#define RST_MASK        BIT(9)
-#define BYPASS_MASK     BIT(4)
-
-static const struct imx8mm_fracpll_config {
-	uint32_t r1, r2;
-	bool valid;
-} imx8mm_fracpll_table[DDR_NUM_RATES] = {
-	[DDR_4000] = { .valid = true, .r1 = MDIV(250) | PDIV(3) | SDIV(1), .r2 = 0 },
-	[DDR_3720] = { .valid = true, .r1 = MDIV(310) | PDIV(2) | SDIV(2), .r2 = 0 },
-	[DDR_3200] = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(0), .r2 = 0 },
-	[DDR_3000] = { .valid = true, .r1 = MDIV(250) | PDIV(8) | SDIV(0), .r2 = 0 },
-	[DDR_2600] = { .valid = true, .r1 = MDIV(325) | PDIV(3) | SDIV(2), .r2 = 0 },
-	[DDR_2400] = { .valid = true, .r1 = MDIV(300) | PDIV(3) | SDIV(2), .r2 = 0 },
-	[DDR_2376] = { .valid = true, .r1 = MDIV( 99) | PDIV(1) | SDIV(2), .r2 = 0 },
-	[DDR_1600] = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(1), .r2 = 0 },
-	[DDR_1066] = { .valid = true, .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
-	[DDR_667]  = { .valid = true, .r1 = MDIV(334) | PDIV(3) | SDIV(4), .r2 = 0 },
-	[DDR_400]  = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(3), .r2 = 0 },
-};
-
-/* PLL config for IMX8MQ type DRAM PLL.  This is SSCG_PLL:
- * Frequency = Ref (25 MHz) / divr1 * (2*divf1) / divr2 * divf2 / divq
- * Note: IMX8MQ RM, §5.1.5.4.4 Fig. 5-8 shows ÷2 on divf2, but this is not true.
- * Note: divider is register value + 1
- */
-#define SSCG_PLL_LOCK			BIT(31)
-#define SSCG_PLL_DRAM_PLL_CLKE		BIT(9)
-#define SSCG_PLL_PD			BIT(7)
-#define SSCG_PLL_BYPASS1		BIT(5)
-#define SSCG_PLL_BYPASS2		BIT(4)
-
-#define SSCG_PLL_REF_DIVR2_MASK		(0x3f << 19)
-#define SSCG_PLL_REF_DIVR2_VAL(n)	(((n) << 19) & SSCG_PLL_REF_DIVR2_MASK)
-#define SSCG_PLL_FEEDBACK_DIV_F1_MASK	(0x3f << 13)
-#define SSCG_PLL_FEEDBACK_DIV_F1_VAL(n)	(((n) << 13) & SSCG_PLL_FEEDBACK_DIV_F1_MASK)
-#define SSCG_PLL_FEEDBACK_DIV_F2_MASK	(0x3f << 7)
-#define SSCG_PLL_FEEDBACK_DIV_F2_VAL(n)	(((n) << 7) & SSCG_PLL_FEEDBACK_DIV_F2_MASK)
-#define SSCG_PLL_OUTPUT_DIV_VAL_MASK	(0x3f << 1)
-#define SSCG_PLL_OUTPUT_DIV_VAL(n)	(((n) << 1) & SSCG_PLL_OUTPUT_DIV_VAL_MASK)
-
-#define SSCG_PLL_CFG2(divf1, divr2, divf2, divq) \
-	(SSCG_PLL_FEEDBACK_DIV_F1_VAL(divf1) | SSCG_PLL_FEEDBACK_DIV_F2_VAL(divf2) | \
-	SSCG_PLL_REF_DIVR2_VAL(divr2) | SSCG_PLL_OUTPUT_DIV_VAL(divq))
-
-static const struct imx8mq_ssgcpll_config {
-	uint32_t val;
-	bool valid;
-} imx8mq_ssgcpll_table[DDR_NUM_RATES] = {
-	[DDR_3200] = { .valid = true, .val = SSCG_PLL_CFG2(39, 29, 11, 0) },
-	[DDR_2400] = { .valid = true, .val = SSCG_PLL_CFG2(39, 29, 17, 1) },
-	[DDR_1600] = { .valid = true, .val = SSCG_PLL_CFG2(39, 29, 11, 1) },
-	[DDR_667]  = { .valid = true, .val = SSCG_PLL_CFG2(45, 30, 8, 3) }, /* ~166.935 MHz = 667.74 */
-};
-
-/* IMX8M Bypass clock config.  These configure dram_alt1_clk and the dram apb
- * clock.  For the bypass config, clock rate = DRAM tranfer rate, rather than
- * clock = dram / 4
- */
-
-/* prediv is actual divider, register will be set to divider - 1 */
-#define CCM_ROOT_CFG(mux, prediv) (IMX8M_CCM_TARGET_ROOTn_ENABLE | \
-	IMX8M_CCM_TARGET_ROOTn_MUX(mux) | IMX8M_CCM_TARGET_ROOTn_PRE_DIV(prediv-1))
-
-static const struct imx8m_bypass_config {
-	uint32_t alt_clk;
-	uint32_t apb_clk;
-	bool valid;
-} imx8m_bypass_table[DDR_NUM_RATES] = {
-	[DDR_400] = { .valid = true, .alt_clk = CCM_ROOT_CFG(1, 2), .apb_clk = CCM_ROOT_CFG(3, 2) },
-	[DDR_250] = { .valid = true, .alt_clk = CCM_ROOT_CFG(3, 2), .apb_clk = CCM_ROOT_CFG(2, 2) },
-	[DDR_100] = { .valid = true, .alt_clk = CCM_ROOT_CFG(2, 1), .apb_clk = CCM_ROOT_CFG(2, 2) },
-};
-
 void ddrc_phy_load_firmware(void __iomem *phy,
 			    enum ddrc_phy_firmware_offset offset,
 			    const u16 *blob, size_t size)
@@ -207,158 +102,6 @@ int wait_ddrphy_training_complete(void)
 	}
 }
 
-static void dram_enable_bypass(enum ddr_rate drate)
-{
-	const struct imx8m_bypass_config *config = &imx8m_bypass_table[drate];
-
-	if (!config->valid) {
-		pr_warn("No matched freq table entry %u\n", drate);
-		return;
-	}
-
-	imx8m_clock_set_target_val(IMX8M_DRAM_ALT_CLK_ROOT, config->alt_clk);
-	imx8m_clock_set_target_val(IMX8M_DRAM_APB_CLK_ROOT, config->apb_clk);
-	imx8m_clock_set_target_val(IMX8M_DRAM_SEL_CFG, IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
-}
-
-static void dram_disable_bypass(void)
-{
-	imx8m_clock_set_target_val(IMX8M_DRAM_SEL_CFG,
-				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(0));
-	imx8m_clock_set_target_val(IMX8M_DRAM_APB_CLK_ROOT,
-				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(4) |
-				   IMX8M_CCM_TARGET_ROOTn_PRE_DIV(5 - 1));
-}
-
-static int dram_frac_pll_init(enum ddr_rate drate)
-{
-	volatile int i;
-	u32 tmp;
-	void *pll_base;
-	const struct imx8mm_fracpll_config *config = &imx8mm_fracpll_table[drate];
-
-	if (!config->valid) {
-		pr_warn("No matched freq table entry %u\n", drate);
-		return -EINVAL;
-	}
-
-	setbits_le32(MX8M_GPC_BASE_ADDR + 0xec, 1 << 7);
-	setbits_le32(MX8M_GPC_BASE_ADDR + 0xf8, 1 << 5);
-	writel(0x8F000000UL, MX8M_SRC_BASE_ADDR + 0x1004);
-
-	pll_base = IOMEM(MX8M_ANATOP_BASE_ADDR) + 0x50;
-
-	/* Bypass clock and set lock to pll output lock */
-	tmp = readl(pll_base);
-	tmp |= BYPASS_MASK;
-	writel(tmp, pll_base);
-
-	/* Enable RST */
-	tmp &= ~RST_MASK;
-	writel(tmp, pll_base);
-
-	writel(config->r1, pll_base + 4);
-	writel(config->r2, pll_base + 8);
-
-	for (i = 0; i < 1000; i++);
-
-	/* Disable RST */
-	tmp |= RST_MASK;
-	writel(tmp, pll_base);
-
-	/* Wait Lock*/
-	while (!(readl(pll_base) & LOCK_STATUS));
-
-	/* Bypass */
-	tmp &= ~BYPASS_MASK;
-	writel(tmp, pll_base);
-
-	return 0;
-}
-
-static int dram_sscg_pll_init(enum ddr_rate drate)
-{
-	u32 val;
-	void __iomem *pll_base = IOMEM(MX8M_ANATOP_BASE_ADDR) + 0x60;
-	const struct imx8mq_ssgcpll_config *config = &imx8mq_ssgcpll_table[drate];
-
-	if (!config->valid) {
-		pr_warn("No matched freq table entry %u\n", drate);
-		return -EINVAL;
-	}
-
-	/* Bypass */
-	setbits_le32(pll_base, SSCG_PLL_BYPASS1 | SSCG_PLL_BYPASS2);
-
-	val = readl(pll_base + 0x8);
-	val &= ~(SSCG_PLL_OUTPUT_DIV_VAL_MASK |
-		 SSCG_PLL_FEEDBACK_DIV_F2_MASK |
-		 SSCG_PLL_FEEDBACK_DIV_F1_MASK |
-		 SSCG_PLL_REF_DIVR2_MASK);
-	val |= config->val;
-	writel(val, pll_base + 0x8);
-
-	/* Clear power down bit */
-	clrbits_le32(pll_base, SSCG_PLL_PD);
-	/* Enable PLL  */
-	setbits_le32(pll_base, SSCG_PLL_DRAM_PLL_CLKE);
-
-	/* Clear bypass */
-	clrbits_le32(pll_base, SSCG_PLL_BYPASS1);
-	udelay(100);
-	clrbits_le32(pll_base, SSCG_PLL_BYPASS2);
-	/* Wait lock */
-	while (!(readl(pll_base) & SSCG_PLL_LOCK))
-		;
-
-	return 0;
-}
-
-static int dram_pll_init(enum ddr_rate drate, enum ddrc_type type)
-{
-	switch (type) {
-	case DDRC_TYPE_MQ:
-		return dram_sscg_pll_init(drate);
-	case DDRC_TYPE_MM:
-	case DDRC_TYPE_MN:
-	case DDRC_TYPE_MP:
-		return dram_frac_pll_init(drate);
-	default:
-		return -ENODEV;
-	}
-}
-
-void ddrphy_init_set_dfi_clk(unsigned int drate_mhz, enum ddrc_type type)
-{
-	enum ddr_rate drate;
-
-	switch (drate_mhz) {
-	case 4000: drate = DDR_4000; break;
-	case 3720: drate = DDR_3720; break;
-	case 3200: drate = DDR_3200; break;
-	case 3000: drate = DDR_3000; break;
-	case 2400: drate = DDR_2400; break;
-	case 1600: drate = DDR_1600; break;
-	case 1066: drate = DDR_1066; break;
-	case 667: drate = DDR_667; break;
-	case 400: drate = DDR_400; break;
-	case 100: drate = DDR_100; break;
-	default:
-		pr_warn("Unsupported frequency %u\n", drate_mhz);
-		return;
-	}
-
-	if (drate_mhz > 400) {
-		dram_pll_init(drate, type);
-		dram_disable_bypass();
-	} else {
-		dram_enable_bypass(drate);
-	}
-}
-
 void ddrphy_init_read_msg_block(enum fw_type type)
 {
 }
diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index 1e704ef8fc..856e7ee4fe 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -212,6 +212,264 @@ static void update_umctl2_rank_space_setting(unsigned int pstat_num,
 	}
 }
 
+
+/* DDR Transfer rate, bus clock is transfer rate / 2, and the DDRC runs at bus
+ * clock / 2, which is therefor transfer rate / 4.  */
+enum ddr_rate {
+	DDR_4000,
+	DDR_3720,
+	DDR_3200,
+	DDR_3000,
+	DDR_2600, /* Unused */
+	DDR_2400,
+	DDR_2376, /* Unused */
+	DDR_1600,
+	DDR_1000, /* Unused */
+	DDR_1066,
+	DDR_667,
+	DDR_400,
+	DDR_250, /* Unused */
+	DDR_100,
+	DDR_NUM_RATES
+};
+
+/* PLL config for IMX8MM type DRAM PLL.  This PLL type isn't documented, but
+ * it looks like it is a basically a fractional PLL:
+ * Frequency = Ref (24 MHz) / P * M / 2^S
+ * Note: Divider is equal to register value
+ */
+#define MDIV(x) ((x) << 12)
+#define PDIV(x) ((x) << 4)
+#define SDIV(x) ((x) << 0)
+
+#define LOCK_STATUS     BIT(31)
+#define LOCK_SEL_MASK   BIT(29)
+#define CLKE_MASK       BIT(11)
+#define RST_MASK        BIT(9)
+#define BYPASS_MASK     BIT(4)
+
+static const struct imx8mm_fracpll_config {
+	uint32_t r1, r2;
+	bool valid;
+} imx8mm_fracpll_table[DDR_NUM_RATES] = {
+	[DDR_4000] = { .valid = true, .r1 = MDIV(250) | PDIV(3) | SDIV(1), .r2 = 0 },
+	[DDR_3720] = { .valid = true, .r1 = MDIV(310) | PDIV(2) | SDIV(2), .r2 = 0 },
+	[DDR_3200] = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(0), .r2 = 0 },
+	[DDR_3000] = { .valid = true, .r1 = MDIV(250) | PDIV(8) | SDIV(0), .r2 = 0 },
+	[DDR_2600] = { .valid = true, .r1 = MDIV(325) | PDIV(3) | SDIV(2), .r2 = 0 },
+	[DDR_2400] = { .valid = true, .r1 = MDIV(300) | PDIV(3) | SDIV(2), .r2 = 0 },
+	[DDR_2376] = { .valid = true, .r1 = MDIV( 99) | PDIV(1) | SDIV(2), .r2 = 0 },
+	[DDR_1600] = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(1), .r2 = 0 },
+	[DDR_1066] = { .valid = true, .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
+	[DDR_667]  = { .valid = true, .r1 = MDIV(334) | PDIV(3) | SDIV(4), .r2 = 0 },
+	[DDR_400]  = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(3), .r2 = 0 },
+};
+
+/* PLL config for IMX8MQ type DRAM PLL.  This is SSCG_PLL:
+ * Frequency = Ref (25 MHz) / divr1 * (2*divf1) / divr2 * divf2 / divq
+ * Note: IMX8MQ RM, §5.1.5.4.4 Fig. 5-8 shows ÷2 on divf2, but this is not true.
+ * Note: divider is register value + 1
+ */
+#define SSCG_PLL_LOCK			BIT(31)
+#define SSCG_PLL_DRAM_PLL_CLKE		BIT(9)
+#define SSCG_PLL_PD			BIT(7)
+#define SSCG_PLL_BYPASS1		BIT(5)
+#define SSCG_PLL_BYPASS2		BIT(4)
+
+#define SSCG_PLL_REF_DIVR2_MASK		(0x3f << 19)
+#define SSCG_PLL_REF_DIVR2_VAL(n)	(((n) << 19) & SSCG_PLL_REF_DIVR2_MASK)
+#define SSCG_PLL_FEEDBACK_DIV_F1_MASK	(0x3f << 13)
+#define SSCG_PLL_FEEDBACK_DIV_F1_VAL(n)	(((n) << 13) & SSCG_PLL_FEEDBACK_DIV_F1_MASK)
+#define SSCG_PLL_FEEDBACK_DIV_F2_MASK	(0x3f << 7)
+#define SSCG_PLL_FEEDBACK_DIV_F2_VAL(n)	(((n) << 7) & SSCG_PLL_FEEDBACK_DIV_F2_MASK)
+#define SSCG_PLL_OUTPUT_DIV_VAL_MASK	(0x3f << 1)
+#define SSCG_PLL_OUTPUT_DIV_VAL(n)	(((n) << 1) & SSCG_PLL_OUTPUT_DIV_VAL_MASK)
+
+#define SSCG_PLL_CFG2(divf1, divr2, divf2, divq) \
+	(SSCG_PLL_FEEDBACK_DIV_F1_VAL(divf1) | SSCG_PLL_FEEDBACK_DIV_F2_VAL(divf2) | \
+	SSCG_PLL_REF_DIVR2_VAL(divr2) | SSCG_PLL_OUTPUT_DIV_VAL(divq))
+
+static const struct imx8mq_ssgcpll_config {
+	uint32_t val;
+	bool valid;
+} imx8mq_ssgcpll_table[DDR_NUM_RATES] = {
+	[DDR_3200] = { .valid = true, .val = SSCG_PLL_CFG2(39, 29, 11, 0) },
+	[DDR_2400] = { .valid = true, .val = SSCG_PLL_CFG2(39, 29, 17, 1) },
+	[DDR_1600] = { .valid = true, .val = SSCG_PLL_CFG2(39, 29, 11, 1) },
+	[DDR_667]  = { .valid = true, .val = SSCG_PLL_CFG2(45, 30, 8, 3) }, /* ~166.935 MHz = 667.74 */
+};
+
+/* IMX8M Bypass clock config.  These configure dram_alt1_clk and the dram apb
+ * clock.  For the bypass config, clock rate = DRAM tranfer rate, rather than
+ * clock = dram / 4
+ */
+
+/* prediv is actual divider, register will be set to divider - 1 */
+#define CCM_ROOT_CFG(mux, prediv) (IMX8M_CCM_TARGET_ROOTn_ENABLE | \
+	IMX8M_CCM_TARGET_ROOTn_MUX(mux) | IMX8M_CCM_TARGET_ROOTn_PRE_DIV(prediv-1))
+
+static const struct imx8m_bypass_config {
+	uint32_t alt_clk;
+	uint32_t apb_clk;
+	bool valid;
+} imx8m_bypass_table[DDR_NUM_RATES] = {
+	[DDR_400] = { .valid = true, .alt_clk = CCM_ROOT_CFG(1, 2), .apb_clk = CCM_ROOT_CFG(3, 2) },
+	[DDR_250] = { .valid = true, .alt_clk = CCM_ROOT_CFG(3, 2), .apb_clk = CCM_ROOT_CFG(2, 2) },
+	[DDR_100] = { .valid = true, .alt_clk = CCM_ROOT_CFG(2, 1), .apb_clk = CCM_ROOT_CFG(2, 2) },
+};
+
+static void dram_enable_bypass(enum ddr_rate drate)
+{
+	const struct imx8m_bypass_config *config = &imx8m_bypass_table[drate];
+
+	if (!config->valid) {
+		pr_warn("No matched freq table entry %u\n", drate);
+		return;
+	}
+
+	imx8m_clock_set_target_val(IMX8M_DRAM_ALT_CLK_ROOT, config->alt_clk);
+	imx8m_clock_set_target_val(IMX8M_DRAM_APB_CLK_ROOT, config->apb_clk);
+	imx8m_clock_set_target_val(IMX8M_DRAM_SEL_CFG, IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
+}
+
+static void dram_disable_bypass(void)
+{
+	imx8m_clock_set_target_val(IMX8M_DRAM_SEL_CFG,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(0));
+	imx8m_clock_set_target_val(IMX8M_DRAM_APB_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(4) |
+				   IMX8M_CCM_TARGET_ROOTn_PRE_DIV(5 - 1));
+}
+
+static int dram_frac_pll_init(enum ddr_rate drate)
+{
+	volatile int i;
+	u32 tmp;
+	void *pll_base;
+	const struct imx8mm_fracpll_config *config = &imx8mm_fracpll_table[drate];
+
+	if (!config->valid) {
+		pr_warn("No matched freq table entry %u\n", drate);
+		return -EINVAL;
+	}
+
+	setbits_le32(MX8M_GPC_BASE_ADDR + 0xec, 1 << 7);
+	setbits_le32(MX8M_GPC_BASE_ADDR + 0xf8, 1 << 5);
+	writel(0x8F000000UL, MX8M_SRC_BASE_ADDR + 0x1004);
+
+	pll_base = IOMEM(MX8M_ANATOP_BASE_ADDR) + 0x50;
+
+	/* Bypass clock and set lock to pll output lock */
+	tmp = readl(pll_base);
+	tmp |= BYPASS_MASK;
+	writel(tmp, pll_base);
+
+	/* Enable RST */
+	tmp &= ~RST_MASK;
+	writel(tmp, pll_base);
+
+	writel(config->r1, pll_base + 4);
+	writel(config->r2, pll_base + 8);
+
+	for (i = 0; i < 1000; i++);
+
+	/* Disable RST */
+	tmp |= RST_MASK;
+	writel(tmp, pll_base);
+
+	/* Wait Lock*/
+	while (!(readl(pll_base) & LOCK_STATUS));
+
+	/* Bypass */
+	tmp &= ~BYPASS_MASK;
+	writel(tmp, pll_base);
+
+	return 0;
+}
+
+static int dram_sscg_pll_init(enum ddr_rate drate)
+{
+	u32 val;
+	void __iomem *pll_base = IOMEM(MX8M_ANATOP_BASE_ADDR) + 0x60;
+	const struct imx8mq_ssgcpll_config *config = &imx8mq_ssgcpll_table[drate];
+
+	if (!config->valid) {
+		pr_warn("No matched freq table entry %u\n", drate);
+		return -EINVAL;
+	}
+
+	/* Bypass */
+	setbits_le32(pll_base, SSCG_PLL_BYPASS1 | SSCG_PLL_BYPASS2);
+
+	val = readl(pll_base + 0x8);
+	val &= ~(SSCG_PLL_OUTPUT_DIV_VAL_MASK |
+		 SSCG_PLL_FEEDBACK_DIV_F2_MASK |
+		 SSCG_PLL_FEEDBACK_DIV_F1_MASK |
+		 SSCG_PLL_REF_DIVR2_MASK);
+	val |= config->val;
+	writel(val, pll_base + 0x8);
+
+	/* Clear power down bit */
+	clrbits_le32(pll_base, SSCG_PLL_PD);
+	/* Enable PLL  */
+	setbits_le32(pll_base, SSCG_PLL_DRAM_PLL_CLKE);
+
+	/* Clear bypass */
+	clrbits_le32(pll_base, SSCG_PLL_BYPASS1);
+	udelay(100);
+	clrbits_le32(pll_base, SSCG_PLL_BYPASS2);
+	/* Wait lock */
+	while (!(readl(pll_base) & SSCG_PLL_LOCK))
+		;
+
+	return 0;
+}
+
+static int dram_pll_init(enum ddr_rate drate, enum ddrc_type type)
+{
+	switch (type) {
+	case DDRC_TYPE_MQ:
+		return dram_sscg_pll_init(drate);
+	case DDRC_TYPE_MM:
+	case DDRC_TYPE_MN:
+	case DDRC_TYPE_MP:
+		return dram_frac_pll_init(drate);
+	default:
+		return -ENODEV;
+	}
+}
+
+static void ddrphy_init_set_dfi_clk(struct dram_controller *dram, unsigned int drate_mhz)
+{
+	enum ddr_rate drate;
+
+	switch (drate_mhz) {
+	case 4000: drate = DDR_4000; break;
+	case 3720: drate = DDR_3720; break;
+	case 3200: drate = DDR_3200; break;
+	case 3000: drate = DDR_3000; break;
+	case 2400: drate = DDR_2400; break;
+	case 1600: drate = DDR_1600; break;
+	case 1066: drate = DDR_1066; break;
+	case 667: drate = DDR_667; break;
+	case 400: drate = DDR_400; break;
+	case 100: drate = DDR_100; break;
+	default:
+		pr_warn("Unsupported frequency %u\n", drate_mhz);
+		return;
+	}
+
+	if (drate_mhz > 400) {
+		dram_pll_init(drate, dram->ddrc_type);
+		dram_disable_bypass();
+	} else {
+		dram_enable_bypass(drate);
+	}
+}
+
 /*
  * We store the timing parameters here. the TF-A will pick these up.
  * Note that the timing used we leave the driver with is a PLL bypass 25MHz
@@ -229,6 +487,7 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 	pr_debug("start DRAM init\n");
 
 	dram->get_trained_CDD = get_trained_CDD;
+	dram->set_dfi_clk = ddrphy_init_set_dfi_clk;
 
 	/* Step1: Follow the power up procedure */
 	switch (dram->ddrc_type) {
@@ -253,7 +512,7 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 
 	initial_drate = dram_timing->fsp_msg[0].drate;
 	/* default to the frequency point 0 clock */
-	ddrphy_init_set_dfi_clk(initial_drate, dram->ddrc_type);
+	dram->set_dfi_clk(dram, initial_drate);
 
 	/* D-aasert the presetn */
 	reg32_write(src_ddrc_rcr, 0x8F000006);
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index c89dfe78cf..ec82f3233a 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -388,6 +388,7 @@ struct dram_controller {
 	enum ddrc_type ddrc_type;
 	enum dram_type dram_type;
 	void (*get_trained_CDD)(struct dram_controller *dram, u32 fsp);
+	void (*set_dfi_clk)(struct dram_controller *dram, unsigned int drate_mhz);
 };
 
 extern struct dram_timing_info dram_timing;
@@ -458,7 +459,6 @@ void dram_config_save(struct dram_timing_info *info, unsigned long base);
 
 /* utils function for ddr phy training */
 int wait_ddrphy_training_complete(void);
-void ddrphy_init_set_dfi_clk(unsigned int drate, enum ddrc_type ddrc_type);
 void ddrphy_init_read_msg_block(enum fw_type fw_type);
 
 #define reg32_write(a, v)	writel(v, a)
-- 
2.39.2



