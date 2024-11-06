Delivery-date: Wed, 06 Nov 2024 19:34:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8krm-005cyG-26
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 19:34:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8krn-0007m6-80
	for lore@pengutronix.de; Wed, 06 Nov 2024 19:34:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MQloHrfqLlalSBhY2mCF38CzRHTeTQW9tcFqim8bv6c=; b=l5SH70Zr24aDR3QiQRqCsAuvoH
	SZjIddmdGFAnB8cnK+x75h2fPg1zF+hPexX0eIcEcMAKKJ7tHdzRN3eiRJs8Sa0fHWbrP45FIMZYU
	OssaPbbJ7BRJ2Nf9ll+MnMw/LilcjsIekD6BB2Cp9g/kClvzmQrDDOj0sR7xgUpCgoLcImMIpG5zz
	6gmzbzaHyufngfF/sGw5OCI0RRlXpsl2YTqGxgbsC1yBCXtrz6bQEOULpXfBc7wxAuxrQsNOjWQXq
	7tvPGydwkJkCqqNnOJlTVjuaCCNbg/upVDRLWIczYWTPTbSCEXgc51eU+nk7BScb5huibNm/5m9EW
	TDXRsm7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8krC-00000004M8B-3wfP;
	Wed, 06 Nov 2024 18:34:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8kp3-00000004LkA-3V8H
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:32:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8kp1-0007Z6-8z; Wed, 06 Nov 2024 19:32:03 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8kp1-002LGy-0I;
	Wed, 06 Nov 2024 19:32:03 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8kp1-00HXvG-01;
	Wed, 06 Nov 2024 19:32:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 19:32:01 +0100
Message-Id: <20241106183201.4181962-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_103205_894338_69ED2A1D 
X-CRM114-Status: GOOD (  13.40  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: rockchip: make it compile again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3399 support is incomplete and we don't select CONFIG_ARCH_RK3399
from any configs and the code experienced bitrot in return.

Fix the compile error to make the driver compile again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I know I dropped the ball here, but I got a proper setup now and intend
to rework my patches for upstreaming again soon-ish.
---
 drivers/clk/rockchip/clk-rk3399.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index d6c2a04711d4..5954e9bebbda 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -597,7 +597,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s0_div", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(28), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3399_CLKGATE_CON(8), 3, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", 0,
+	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", CLK_SET_RATE_PARENT,
 			RK3399_CLKSEL_CON(96), 0,
 			RK3399_CLKGATE_CON(8), 4, GFLAGS,
 			&rk3399_i2s0_fracmux),
@@ -607,7 +607,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s1_div", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(29), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3399_CLKGATE_CON(8), 6, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", 0,
+	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", CLK_SET_RATE_PARENT,
 			RK3399_CLKSEL_CON(97), 0,
 			RK3399_CLKGATE_CON(8), 7, GFLAGS,
 			&rk3399_i2s1_fracmux),
@@ -617,7 +617,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE(0, "clk_i2s2_div", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(30), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3399_CLKGATE_CON(8), 9, GFLAGS),
-	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", 0,
+	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", CLK_SET_RATE_PARENT,
 			RK3399_CLKSEL_CON(98), 0,
 			RK3399_CLKGATE_CON(8), 10, GFLAGS,
 			&rk3399_i2s2_fracmux),
@@ -1263,7 +1263,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 			RK3399_CLKSEL_CON(56), 6, 2, MFLAGS,
 			RK3399_CLKGATE_CON(10), 7, GFLAGS),
 
-	COMPOSITE_NOGATE(SCLK_CIF_OUT, "clk_cifout", mux_clk_cif_p, 0,
+	COMPOSITE_NOGATE(SCLK_CIF_OUT, "clk_cifout", mux_clk_cif_p, CLK_SET_RATE_PARENT,
 			 RK3399_CLKSEL_CON(56), 5, 1, MFLAGS, 0, 5, DFLAGS),
 
 	/* gic */
@@ -1531,6 +1531,7 @@ static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
 static void __init rk3399_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;
 
 	reg_base = of_iomap(np, 0);
@@ -1539,7 +1540,9 @@ static void __init rk3399_clk_init(struct device_node *np)
 		return;
 	}
 
-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3399_clk_branches,
+						   ARRAY_SIZE(rk3399_clk_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		return;
@@ -1575,6 +1578,7 @@ static void __init rk3399_clk_init(struct device_node *np)
 static void __init rk3399_pmu_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clkpmu_nr_clks;
 	void __iomem *reg_base;
 
 	reg_base = of_iomap(np, 0);
@@ -1583,7 +1587,9 @@ static void __init rk3399_pmu_clk_init(struct device_node *np)
 		return;
 	}
 
-	ctx = rockchip_clk_init(np, reg_base, CLKPMU_NR_CLKS);
+	clkpmu_nr_clks = rockchip_clk_find_max_clk_id(rk3399_clk_pmu_branches,
+						      ARRAY_SIZE(rk3399_clk_pmu_branches)) + 1;
+	ctx = rockchip_clk_init(np, reg_base, clkpmu_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip pmu clk init failed\n", __func__);
 		return;
-- 
2.39.5



