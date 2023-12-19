Delivery-date: Tue, 19 Dec 2023 14:22:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa3Q-004a7c-1n
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:22:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa3P-00014Z-Tt
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:22:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8pDaCvIycxmq3PoxruTP3EF9xKnxImY6aXjFYLFy8/A=; b=qxOZl0KWBrwCZc2Cb9HGAAUR20
	hktWTTQgwU9jV+XzgZ8Uy2Zn+GVoWmKnNDPmC1dThCrgtq/nQx2R1w9QJmd9oW07gyRTwOOcWrBVw
	oi6U9GEDtI/kT53UWSwxWwRW0vfH8m4flgD8HEQ89XPvHb8RbqPR6RMaf99Mx/5x0LmpMrcXbJyE7
	I4/Jn+2RZqcC0mCI47dRayvvCyWkrRX68dXH7dyGpAJSi5tKe2eWPWsMdZt2ldS84Y99hg/24stsI
	G2vPjZWx8zRs+F3yPn+N+8QSVMiP66SHInhcC0J3cxTFt9E65QWsZj/751BkSqUmDXUcHqmsLurm0
	3dCY5Uyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa2R-00EBCV-1C;
	Tue, 19 Dec 2023 13:21:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa2O-00EBBI-1J
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:21:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2F-0000Wb-9a; Tue, 19 Dec 2023 14:21:23 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2D-0001o8-Qh; Tue, 19 Dec 2023 14:21:22 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2E-000259-2m;
	Tue, 19 Dec 2023 14:21:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:21:22 +0100
Message-Id: <20231219132122.7964-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219132122.7964-1-s.hauer@pengutronix.de>
References: <20231219132122.7964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_052132_542459_9FD23942 
X-CRM114-Status: GOOD (  11.07  )
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
Subject: [PATCH 2/2] clk: layerscape: add support for ls1028a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-qoric.c | 69 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index 49859077f6..6c69b5b3f3 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -143,6 +143,58 @@ static const struct clockgen_muxinfo clockgen2_cmux_cgb = {
 	},
 };
 
+static const struct clockgen_muxinfo ls1028a_hwa1 = {
+	{
+		{ CLKSEL_VALID, PLATFORM_PLL, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV3 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV4 },
+		{},
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV3 },
+	},
+};
+
+static const struct clockgen_muxinfo ls1028a_hwa2 = {
+	{
+		{ CLKSEL_VALID, PLATFORM_PLL, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV3 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV4 },
+		{},
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV3 },
+	},
+};
+
+static const struct clockgen_muxinfo ls1028a_hwa3 = {
+	{
+		{ CLKSEL_VALID, PLATFORM_PLL, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV3 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV4 },
+		{},
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV3 },
+	},
+};
+
+static const struct clockgen_muxinfo ls1028a_hwa4 = {
+	{
+		{ CLKSEL_VALID, PLATFORM_PLL, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV1 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV3 },
+		{ CLKSEL_VALID, CGA_PLL2, PLL_DIV4 },
+		{},
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV2 },
+		{ CLKSEL_VALID, CGA_PLL1, PLL_DIV3 },
+	},
+};
+
 static const struct clockgen_muxinfo ls1043a_hwa1 = {
 	{
 		{},
@@ -217,6 +269,15 @@ static const struct clockgen_chipinfo chipinfo_ls1021a = {
 	.pll_mask = 0x03,
 };
 
+static const struct clockgen_chipinfo chipinfo_ls1028a = {
+	.compat = "fsl,ls1028a-clockgen",
+	.cmux_groups = { &clockgen2_cmux_cga12 },
+	.hwaccel = { &ls1028a_hwa1, &ls1028a_hwa2, &ls1028a_hwa3, &ls1028a_hwa4 },
+	.cmux_to_group = { 0, 0, 0, 0, -1 },
+	.pll_mask = 0x07,
+	.flags = CG_VER3 | CG_LITTLE_ENDIAN,
+};
+
 static const struct clockgen_chipinfo chipinfo_ls1043a = {
 	.compat = "fsl,ls1043a-clockgen",
 	.init_periph = t2080_init_periph,
@@ -622,6 +683,11 @@ static void __maybe_unused clockgen_init_ls1021a(struct device_node *np)
 	clockgen_init(np, &chipinfo_ls1021a);
 }
 
+static void __maybe_unused clockgen_init_ls1028a(struct device_node *np)
+{
+	clockgen_init(np, &chipinfo_ls1028a);
+}
+
 static void __maybe_unused clockgen_init_ls1043a(struct device_node *np)
 {
 	clockgen_init(np, &chipinfo_ls1043a);
@@ -648,6 +714,9 @@ CLK_OF_DECLARE(qoriq_clockgen_ls1012a, "fsl,ls1012a-clockgen", clockgen_init_ls1
 #ifdef CONFIG_ARCH_LS1021
 CLK_OF_DECLARE(qoriq_clockgen_ls1021a, "fsl,ls1021a-clockgen", clockgen_init_ls1021a);
 #endif
+#ifdef CONFIG_ARCH_LS1028
+CLK_OF_DECLARE(qoriq_clockgen_ls1021a, "fsl,ls1028a-clockgen", clockgen_init_ls1028a);
+#endif
 #ifdef CONFIG_ARCH_LS1043
 CLK_OF_DECLARE(qoriq_clockgen_ls1043a, "fsl,ls1043a-clockgen", clockgen_init_ls1043a);
 #endif
-- 
2.39.2



