Delivery-date: Wed, 02 Jun 2021 12:08:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNnl-0000s0-Do
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:08:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNng-0003NE-2p
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:08:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhQQICDVqS6zKrHPaLj/Pa2wESwgIJ2k6dov6K7A/o8=; b=hRyisk152WVO2f
	vxkH+lkc9x4Abup2lX87CY2GRr6rgkDoeAr4EpsbaiVWXbE/nm0EA/vsMlxU2mFDAonYjgAPXtwrm
	Fr7qRiyC33tuRKr2Z+RPhiYkc2WCX3BGjUXlf+rXd240Og+EyzXd9F7tM9oswTmlOcGUlAvt/svbo
	3er17OSBDtvH0o5CszcaaeRo4OlaCmJIByeGND1xeM4XaTgxrFmPjQzwAekPIHhWCRVN9FhnT3BcZ
	FIzvyHMewg0IGaw2PyzmrkoKKup9khR6QC6N5FnMH1jZXj6tciZRaB9+cZKdxXVYI7DMEaux/GDPE
	jD4y3vREsSXnfUsc7mNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNlZ-003AZC-8w; Wed, 02 Jun 2021 10:06:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNas-0036KV-6C
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000M6-DZ; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00038z-O4; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:46 +0200
Message-Id: <20210602095507.24609-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025522_806501_6B72725C 
X-CRM114-Status: GOOD (  13.70  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/24] clk: rename clk_register() to bclk_register()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has a clk_register() function with a different semantics than
barebox. Rename this function to bclk_register() so that we later
can introduce a clk_register() function with the same semantics as
Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/clk-audio-pll.c        | 6 +++---
 drivers/clk/at91/clk-generated.c        | 2 +-
 drivers/clk/at91/clk-h32mx.c            | 2 +-
 drivers/clk/at91/clk-i2s-mux.c          | 2 +-
 drivers/clk/at91/clk-main.c             | 8 ++++----
 drivers/clk/at91/clk-master.c           | 2 +-
 drivers/clk/at91/clk-peripheral.c       | 4 ++--
 drivers/clk/at91/clk-pll.c              | 2 +-
 drivers/clk/at91/clk-plldiv.c           | 2 +-
 drivers/clk/at91/clk-programmable.c     | 2 +-
 drivers/clk/at91/clk-sam9x60-pll.c      | 2 +-
 drivers/clk/at91/clk-slow.c             | 2 +-
 drivers/clk/at91/clk-smd.c              | 2 +-
 drivers/clk/at91/clk-system.c           | 2 +-
 drivers/clk/at91/clk-usb.c              | 6 +++---
 drivers/clk/at91/clk-utmi.c             | 2 +-
 drivers/clk/at91/sckc.c                 | 8 ++++----
 drivers/clk/clk-ar933x.c                | 2 +-
 drivers/clk/clk-ar9344.c                | 2 +-
 drivers/clk/clk-composite.c             | 2 +-
 drivers/clk/clk-divider.c               | 4 ++--
 drivers/clk/clk-fixed-factor.c          | 2 +-
 drivers/clk/clk-fixed.c                 | 2 +-
 drivers/clk/clk-fractional-divider.c    | 2 +-
 drivers/clk/clk-gate-shared.c           | 2 +-
 drivers/clk/clk-gate.c                  | 2 +-
 drivers/clk/clk-gpio.c                  | 2 +-
 drivers/clk/clk-mux.c                   | 2 +-
 drivers/clk/clk-qoric.c                 | 2 +-
 drivers/clk/clk-stm32mp1.c              | 6 +++---
 drivers/clk/clk.c                       | 2 +-
 drivers/clk/imx/clk-cpu.c               | 2 +-
 drivers/clk/imx/clk-frac-pll.c          | 2 +-
 drivers/clk/imx/clk-gate-exclusive.c    | 2 +-
 drivers/clk/imx/clk-gate2.c             | 2 +-
 drivers/clk/imx/clk-pfd.c               | 2 +-
 drivers/clk/imx/clk-pll14xx.c           | 2 +-
 drivers/clk/imx/clk-pllv1.c             | 2 +-
 drivers/clk/imx/clk-pllv2.c             | 2 +-
 drivers/clk/imx/clk-pllv3.c             | 2 +-
 drivers/clk/imx/clk-sccg-pll.c          | 2 +-
 drivers/clk/loongson/clk-ls1b200.c      | 2 +-
 drivers/clk/mvebu/corediv.c             | 2 +-
 drivers/clk/mxs/clk-div.c               | 2 +-
 drivers/clk/mxs/clk-frac.c              | 2 +-
 drivers/clk/mxs/clk-lcdif.c             | 2 +-
 drivers/clk/mxs/clk-pll.c               | 2 +-
 drivers/clk/mxs/clk-ref.c               | 2 +-
 drivers/clk/rockchip/clk-cpu.c          | 2 +-
 drivers/clk/rockchip/clk-pll.c          | 4 ++--
 drivers/clk/socfpga/clk-gate-a10.c      | 2 +-
 drivers/clk/socfpga/clk-periph-a10.c    | 2 +-
 drivers/clk/socfpga/clk-pll-a10.c       | 2 +-
 drivers/clk/socfpga/clk.c               | 6 +++---
 drivers/clk/tegra/clk-divider.c         | 2 +-
 drivers/clk/tegra/clk-periph.c          | 2 +-
 drivers/clk/tegra/clk-pll-out.c         | 2 +-
 drivers/clk/tegra/clk-pll.c             | 2 +-
 drivers/clk/vexpress/clk-sp810.c        | 2 +-
 drivers/clk/zynq/clkc.c                 | 8 ++++----
 drivers/clk/zynqmp/clk-divider-zynqmp.c | 2 +-
 drivers/clk/zynqmp/clk-gate-zynqmp.c    | 2 +-
 drivers/clk/zynqmp/clk-mux-zynqmp.c     | 2 +-
 drivers/clk/zynqmp/clk-pll-zynqmp.c     | 2 +-
 drivers/video/imx-ipu-v3/ipu-di.c       | 2 +-
 include/linux/clk.h                     | 2 +-
 66 files changed, 86 insertions(+), 86 deletions(-)

diff --git a/drivers/clk/at91/clk-audio-pll.c b/drivers/clk/at91/clk-audio-pll.c
index 47bff32fe8..25be69ec6f 100644
--- a/drivers/clk/at91/clk-audio-pll.c
+++ b/drivers/clk/at91/clk-audio-pll.c
@@ -442,7 +442,7 @@ at91_clk_register_audio_pll_frac(struct regmap *regmap, const char *name,
 
 	frac_ck->regmap = regmap;
 
-	ret = clk_register(&frac_ck->clk);
+	ret = bclk_register(&frac_ck->clk);
 	if (ret) {
 		kfree(frac_ck);
 		return ERR_PTR(ret);
@@ -472,7 +472,7 @@ at91_clk_register_audio_pll_pad(struct regmap *regmap, const char *name,
 
 	apad_ck->regmap = regmap;
 
-	ret = clk_register(&apad_ck->clk);
+	ret = bclk_register(&apad_ck->clk);
 	if (ret) {
 		kfree(apad_ck);
 		return ERR_PTR(ret);
@@ -502,7 +502,7 @@ at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
 
 	apmc_ck->regmap = regmap;
 
-	ret = clk_register(&apmc_ck->clk);
+	ret = bclk_register(&apmc_ck->clk);
 	if (ret) {
 		kfree(apmc_ck);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 56b800facb..23d193f9dd 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -191,7 +191,7 @@ at91_clk_register_generated(struct regmap *regmap,
 
 	clk_generated_startup(gck);
 	hw = &gck->hw;
-	ret = clk_register(&gck->hw);
+	ret = bclk_register(&gck->hw);
 	if (ret) {
 		kfree(gck);
 		hw = ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
index 6052886cca..1bcd30be75 100644
--- a/drivers/clk/at91/clk-h32mx.c
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -103,7 +103,7 @@ at91_clk_register_h32mx(struct regmap *regmap, const char *name,
 
 	h32mxclk->regmap = regmap;
 
-	ret = clk_register(&h32mxclk->hw);
+	ret = bclk_register(&h32mxclk->hw);
 	if (ret) {
 		kfree(h32mxclk);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-i2s-mux.c b/drivers/clk/at91/clk-i2s-mux.c
index f906007ed5..6e3d1e8f59 100644
--- a/drivers/clk/at91/clk-i2s-mux.c
+++ b/drivers/clk/at91/clk-i2s-mux.c
@@ -76,7 +76,7 @@ at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
 	i2s_ck->bus_id = bus_id;
 	i2s_ck->regmap = regmap;
 
-	ret = clk_register(&i2s_ck->clk);
+	ret = bclk_register(&i2s_ck->clk);
 	if (ret) {
 		kfree(i2s_ck);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index 08abb1673b..74c26a1516 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -154,7 +154,7 @@ at91_clk_register_main_osc(struct regmap *regmap,
 				  AT91_PMC_MOSCEN,
 				  AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
 
-	ret = clk_register(&osc->clk);
+	ret = bclk_register(&osc->clk);
 	if (ret) {
 		free(osc);
 		return ERR_PTR(ret);
@@ -254,7 +254,7 @@ at91_clk_register_main_rc_osc(struct regmap *regmap,
 	osc->regmap = regmap;
 	osc->frequency = frequency;
 
-	ret = clk_register(&osc->clk);
+	ret = bclk_register(&osc->clk);
 	if (ret) {
 		kfree(osc);
 		return ERR_PTR(ret);
@@ -347,7 +347,7 @@ at91_clk_register_rm9200_main(struct regmap *regmap,
 	clkmain->clk.num_parents = 1;
 	clkmain->regmap = regmap;
 
-	ret = clk_register(&clkmain->clk);
+	ret = bclk_register(&clkmain->clk);
 	if (ret) {
 		kfree(clkmain);
 		return ERR_PTR(ret);
@@ -463,7 +463,7 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
 	clkmain->parent = clk_main_parent_select(status);
 
-	ret = clk_register(&clkmain->clk);
+	ret = bclk_register(&clkmain->clk);
 	if (ret) {
 		kfree(clkmain);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index da5e316988..dcdc4fceda 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -131,7 +131,7 @@ at91_clk_register_master(struct regmap *regmap,
 	master->characteristics = characteristics;
 	master->regmap = regmap;
 
-	ret = clk_register(&master->clk);
+	ret = bclk_register(&master->clk);
 	if (ret) {
 		kfree(master);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index 2b9008eb2c..055c8c3b98 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -119,7 +119,7 @@ at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 	periph->id = id;
 	periph->regmap = regmap;
 
-	ret = clk_register(&periph->clk);
+	ret = bclk_register(&periph->clk);
 	if (ret) {
 		kfree(periph);
 		return ERR_PTR(ret);
@@ -338,7 +338,7 @@ at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 	periph->layout = layout;
 	periph->range = *range;
 
-	ret = clk_register(&periph->clk);
+	ret = bclk_register(&periph->clk);
 	if (ret) {
 		kfree(periph);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index 5cb156e784..04d915706a 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -304,7 +304,7 @@ at91_clk_register_pll(struct regmap *regmap, const char *name,
 	pll->div = PLL_DIV(pllr);
 	pll->mul = PLL_MUL(pllr, layout);
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		kfree(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
index 1cbb61bb2c..3a8b0dc9ee 100644
--- a/drivers/clk/at91/clk-plldiv.c
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -95,7 +95,7 @@ at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 
 	plldiv->regmap = regmap;
 
-	ret = clk_register(&plldiv->clk);
+	ret = bclk_register(&plldiv->clk);
 	if (ret) {
 		kfree(plldiv);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index 99a0fa29a3..70a8ca6d93 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -156,7 +156,7 @@ at91_clk_register_programmable(struct regmap *regmap,
 	prog->layout = layout;
 	prog->regmap = regmap;
 
-	ret = clk_register(&prog->clk);
+	ret = bclk_register(&prog->clk);
 	if (ret) {
 		kfree(prog);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
index 9ca77f8722..91c6b62667 100644
--- a/drivers/clk/at91/clk-sam9x60-pll.c
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -311,7 +311,7 @@ sam9x60_clk_register_pll(struct regmap *regmap,
 	regmap_read(regmap, PMC_PLL_CTRL1, &pllr);
 	pll->mul = FIELD_GET(PMC_PLL_CTRL1_MUL_MSK, pllr);
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		kfree(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
index bcce810fa5..1768f0ad5e 100644
--- a/drivers/clk/at91/clk-slow.c
+++ b/drivers/clk/at91/clk-slow.c
@@ -63,7 +63,7 @@ at91_clk_register_sam9260_slow(struct regmap *regmap,
 	slowck->clk.num_parents = num_parents;
 	slowck->regmap = regmap;
 
-	ret = clk_register(&slowck->clk);
+	ret = bclk_register(&slowck->clk);
 	if (ret) {
 		kfree(slowck);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index 366f2eaad5..ad376d03c9 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -127,7 +127,7 @@ at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
 	smd->regmap = regmap;
 
-	ret = clk_register(&smd->clk);
+	ret = bclk_register(&smd->clk);
 	if (ret) {
 		kfree(smd);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
index 77f0dff98b..db9d7b3d61 100644
--- a/drivers/clk/at91/clk-system.c
+++ b/drivers/clk/at91/clk-system.c
@@ -105,7 +105,7 @@ at91_clk_register_system(struct regmap *regmap, const char *name,
 	sys->id = id;
 	sys->regmap = regmap;
 
-	ret = clk_register(&sys->clk);
+	ret = bclk_register(&sys->clk);
 	if (ret) {
 		kfree(sys);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index 4ca076e777..d60232f771 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -165,7 +165,7 @@ _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	usb->usbs_mask = usbs_mask;
 	usb->num_parents = num_parents;
 
-	ret = clk_register(&usb->clk);
+	ret = bclk_register(&usb->clk);
 	if (ret) {
 		kfree(usb);
 		return ERR_PTR(ret);
@@ -206,7 +206,7 @@ at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT; */
 	usb->regmap = regmap;
 
-	ret = clk_register(&usb->clk);
+	ret = bclk_register(&usb->clk);
 	if (ret) {
 		kfree(usb);
 		return ERR_PTR(ret);
@@ -321,7 +321,7 @@ at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 	usb->regmap = regmap;
 	memcpy(usb->divisors, divisors, sizeof(usb->divisors));
 
-	ret = clk_register(&usb->clk);
+	ret = bclk_register(&usb->clk);
 	if (ret) {
 		kfree(usb);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
index 3d71cd615f..df3904e5a0 100644
--- a/drivers/clk/at91/clk-utmi.c
+++ b/drivers/clk/at91/clk-utmi.c
@@ -147,7 +147,7 @@ at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
 	utmi->regmap_pmc = regmap_pmc;
 	utmi->regmap_sfr = regmap_sfr;
 
-	ret = clk_register(&utmi->clk);
+	ret = bclk_register(&utmi->clk);
 	if (ret) {
 		kfree(utmi);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index d9898f718c..bf55589c80 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -152,7 +152,7 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 		writel((readl(sckcr) & ~osc->bits->cr_osc32en) |
 					osc->bits->cr_osc32byp, sckcr);
 
-	ret = clk_register(&osc->clk);
+	ret = bclk_register(&osc->clk);
 	if (ret) {
 		kfree(osc);
 		return ERR_PTR(ret);
@@ -237,7 +237,7 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 	osc->frequency = frequency;
 	osc->startup_usec = startup;
 
-	ret = clk_register(&osc->clk);
+	ret = bclk_register(&osc->clk);
 	if (ret) {
 		kfree(osc);
 		return ERR_PTR(ret);
@@ -318,7 +318,7 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 	slowck->bits = bits;
 	slowck->parent = !!(readl(sckcr) & slowck->bits->cr_oscsel);
 
-	ret = clk_register(&slowck->clk);
+	ret = bclk_register(&slowck->clk);
 	if (ret) {
 		kfree(slowck);
 		return ERR_PTR(ret);
@@ -571,7 +571,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	osc->startup_usec = 1200000;
 	osc->bits = &at91sama5d4_bits;
 
-	ret = clk_register(&osc->clk);
+	ret = bclk_register(&osc->clk);
 	if (ret)
 		goto free_slow_osc_data;
 
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index 0e7f2d6a67..4727127aeb 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -84,7 +84,7 @@ static struct clk *clk_ar933x(const char *name, const char *parent,
 	f->clk.parent_names = &f->parent;
 	f->clk.num_parents = 1;
 
-	clk_register(&f->clk);
+	bclk_register(&f->clk);
 
 	return &f->clk;
 }
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index 829d4b1f91..1a25731fd5 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -89,7 +89,7 @@ static struct clk *clk_ar9344(const char *name, const char *parent,
 	f->clk.parent_names = &f->parent;
 	f->clk.num_parents = 1;
 
-	clk_register(&f->clk);
+	bclk_register(&f->clk);
 
 	return &f->clk;
 }
diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index e0f543bc1c..1eb1eea68e 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -125,7 +125,7 @@ struct clk *clk_register_composite(const char *name,
 	composite->rate_clk = rate_clk;
 	composite->gate_clk = gate_clk;
 
-	ret = clk_register(&composite->clk);
+	ret = bclk_register(&composite->clk);
 	if (ret)
 		goto err;
 
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 7119dd4e59..3acce64042 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -335,7 +335,7 @@ struct clk *clk_divider(const char *name, const char *parent, unsigned clk_flags
 	d = clk_divider_alloc(name , parent, clk_flags, reg, shift, width,
 			      div_flags);
 
-	ret = clk_register(d);
+	ret = bclk_register(d);
 	if (ret) {
 		clk_divider_free(d);
 		return ERR_PTR(ret);
@@ -390,7 +390,7 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 		div->table_size++;
 	}
 
-	ret = clk_register(&div->clk);
+	ret = bclk_register(&div->clk);
 	if (ret) {
 		free(div);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index e7738775f8..ce6fe1cce7 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -73,7 +73,7 @@ struct clk *clk_fixed_factor(const char *name,
 	f->clk.parent_names = &f->parent;
 	f->clk.num_parents = 1;
 
-	ret = clk_register(&f->clk);
+	ret = bclk_register(&f->clk);
 	if (ret) {
 		free(f);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index d7ac59c4d4..e628b4e4e6 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -49,7 +49,7 @@ struct clk *clk_register_fixed_rate(const char *name,
 		fix->clk.num_parents = 1;
 	}
 
-	ret = clk_register(&fix->clk);
+	ret = bclk_register(&fix->clk);
 	if (ret) {
 		free(parent_names);
 		free(fix);
diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 6f0763b05f..6955666127 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -138,7 +138,7 @@ struct clk *clk_fractional_divider(
 	if (IS_ERR(fd))
 		return fd;
 
-	ret = clk_register(fd);
+	ret = bclk_register(fd);
 	if (ret) {
 		clk_fractional_divider_free(fd);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/clk-gate-shared.c b/drivers/clk/clk-gate-shared.c
index 54c002e836..b5a1365568 100644
--- a/drivers/clk/clk-gate-shared.c
+++ b/drivers/clk/clk-gate-shared.c
@@ -103,7 +103,7 @@ struct clk *clk_gate_shared(const char *name, const char *parent, const char *co
 
 	clk = clk_gate_shared_alloc(name , parent, companion, flags);
 
-	ret = clk_register(clk);
+	ret = bclk_register(clk);
 	if (ret) {
 		clk_gate_shared_free(clk);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 59dd643b99..6a6fd66e4e 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -100,7 +100,7 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 
 	g = clk_gate_alloc(name , parent, reg, shift, flags, clk_gate_flags);
 
-	ret = clk_register(g);
+	ret = bclk_register(g);
 	if (ret) {
 		free(to_clk_gate(g));
 		return ERR_PTR(ret);
diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index 1345fbc9ea..e47474a5cc 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -90,7 +90,7 @@ static int of_gpio_clk_setup(struct device_node *node)
 	if (ret)
 		goto no_request;
 
-	ret = clk_register(&clk_gpio->clk);
+	ret = bclk_register(&clk_gpio->clk);
 	if (ret)
 		goto no_register;
 
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 7977a76db9..b5618cefd3 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -84,7 +84,7 @@ struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 	m = clk_mux_alloc(name, clk_flags, reg, shift, width, parents,
 			  num_parents, mux_flags);
 
-	ret = clk_register(m);
+	ret = bclk_register(m);
 	if (ret) {
 		free(to_clk_mux(m));
 		return ERR_PTR(ret);
diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index 5bf677d94e..328570400f 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -339,7 +339,7 @@ static struct clk * __init create_mux_common(struct clockgen *cg,
 	clk->num_parents = hwc->num_parents = i;
 	hwc->cg = cg;
 
-	ret = clk_register(clk);
+	ret = bclk_register(clk);
 	if (ret) {
 		pr_err("%s: Couldn't register %s: %d\n", __func__, clk->name, ret);
 		kfree(hwc);
diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 2380bd0c21..2996877577 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -564,7 +564,7 @@ clk_stm32_register_gate_ops(const char *name,
 	clk->num_parents = 1;
 	clk->flags = flags;
 
-	ret = clk_register(clk);
+	ret = bclk_register(clk);
 	if (ret)
 		clk = ERR_PTR(ret);
 
@@ -810,7 +810,7 @@ static struct clk *clk_register_pll(const char *name,
 
 	element->reg = reg;
 
-	err = clk_register(clk);
+	err = bclk_register(clk);
 
 	if (err) {
 		kfree(element);
@@ -934,7 +934,7 @@ static struct clk *clk_register_cktim(const char *name,
 	tim_ker->apbdiv = apbdiv;
 	tim_ker->timpre = timpre;
 
-	err = clk_register(clk);
+	err = bclk_register(clk);
 	if (err) {
 		kfree(tim_ker);
 		return ERR_PTR(err);
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index fb5bf57e4b..7dab6a5fb9 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -258,7 +258,7 @@ struct clk *clk_get_parent(struct clk *clk)
 	return clk->parents[idx];
 }
 
-int clk_register(struct clk *clk)
+int bclk_register(struct clk *clk)
 {
 	struct clk *c;
 	int ret;
diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
index f8d54ddba3..8ed899cb98 100644
--- a/drivers/clk/imx/clk-cpu.c
+++ b/drivers/clk/imx/clk-cpu.c
@@ -104,7 +104,7 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 	cpu->clk.parent_names = &icpu->parent_name;
 	cpu->clk.num_parents = 1;
 
-	ret = clk_register(&cpu->clk);
+	ret = bclk_register(&cpu->clk);
 	if (ret) {
 		free(cpu);
 		return NULL;
diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
index 48866eadf0..bc62505e57 100644
--- a/drivers/clk/imx/clk-frac-pll.c
+++ b/drivers/clk/imx/clk-frac-pll.c
@@ -210,7 +210,7 @@ struct clk *imx_clk_frac_pll(const char *name, const char *parent,
 	pll->clk.parent_names = &pll->parent;
 	pll->clk.num_parents = 1;
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-gate-exclusive.c b/drivers/clk/imx/clk-gate-exclusive.c
index 4bf4de8bd3..94e7467701 100644
--- a/drivers/clk/imx/clk-gate-exclusive.c
+++ b/drivers/clk/imx/clk-gate-exclusive.c
@@ -90,7 +90,7 @@ struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
 	exgate->shift = shift;
 	exgate->exclusive_mask = exclusive_mask;
 
-	ret = clk_register(&exgate->clk);
+	ret = bclk_register(&exgate->clk);
 	if (ret) {
 		free(exgate);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index 88eaae8db3..3d9b9338d5 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -104,7 +104,7 @@ struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
 
 	g = clk_gate2_alloc(name , parent, reg, shift, cgr_val, flags);
 
-	ret = clk_register(g);
+	ret = bclk_register(g);
 	if (ret) {
 		free(to_clk_gate2(g));
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-pfd.c b/drivers/clk/imx/clk-pfd.c
index a7ca664524..88ede6c3fc 100644
--- a/drivers/clk/imx/clk-pfd.c
+++ b/drivers/clk/imx/clk-pfd.c
@@ -132,7 +132,7 @@ struct clk *imx_clk_pfd(const char *name, const char *parent,
 	pfd->clk.parent_names = &pfd->parent;
 	pfd->clk.num_parents = 1;
 
-	ret = clk_register(&pfd->clk);
+	ret = bclk_register(&pfd->clk);
 	if (ret) {
 		free(pfd);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 3fd5a49ee7..2842c740f9 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -435,7 +435,7 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 	val &= ~BYPASS_MASK;
 	writel(val, pll->base + GNRL_CTL);
 
-	ret = clk_register(clk);
+	ret = bclk_register(clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-pllv1.c b/drivers/clk/imx/clk-pllv1.c
index 36192bb211..5654ed21b3 100644
--- a/drivers/clk/imx/clk-pllv1.c
+++ b/drivers/clk/imx/clk-pllv1.c
@@ -84,7 +84,7 @@ struct clk *imx_clk_pllv1(const char *name, const char *parent,
 	pll->clk.parent_names = &pll->parent;
 	pll->clk.num_parents = 1;
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-pllv2.c b/drivers/clk/imx/clk-pllv2.c
index 6af2d71352..2b95be2495 100644
--- a/drivers/clk/imx/clk-pllv2.c
+++ b/drivers/clk/imx/clk-pllv2.c
@@ -210,7 +210,7 @@ struct clk *imx_clk_pllv2(const char *name, const char *parent,
 	pll->clk.parent_names = &pll->parent;
 	pll->clk.num_parents = 1;
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index 51e620a040..e755f6b7e7 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -409,7 +409,7 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 	val &= ~BM_PLL_BYPASS;
 	writel(val, pll->base);
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
index 755ece0e12..9fe4c6e6b2 100644
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ b/drivers/clk/imx/clk-sccg-pll.c
@@ -224,7 +224,7 @@ struct clk *imx_clk_sccg_pll(const char *name, const char *parent_name,
         pll->clk.parent_names = &pll->parent;
         pll->clk.num_parents = 1;
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/clk-ls1b200.c
index 66f8e261ac..b7f4929423 100644
--- a/drivers/clk/loongson/clk-ls1b200.c
+++ b/drivers/clk/loongson/clk-ls1b200.c
@@ -82,7 +82,7 @@ static struct clk *clk_ls1b200(const char *name, const char *parent,
 	f->clk.parent_names = &f->parent;
 	f->clk.num_parents = 1;
 
-	clk_register(&f->clk);
+	bclk_register(&f->clk);
 
 	return &f->clk;
 }
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index 1577a2149c..79e049d18c 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -242,7 +242,7 @@ static int mvebu_corediv_clk_probe(struct device_d *dev)
 		corediv->desc = &soc_desc->descs[n];
 		corediv->reg = base;
 		clk_data.clks[n] = clk;
-		WARN_ON(IS_ERR_VALUE(clk_register(clk)));
+		WARN_ON(IS_ERR_VALUE(bclk_register(clk)));
 	}
 
 	return of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
diff --git a/drivers/clk/mxs/clk-div.c b/drivers/clk/mxs/clk-div.c
index 104587a8dc..9bf48c2222 100644
--- a/drivers/clk/mxs/clk-div.c
+++ b/drivers/clk/mxs/clk-div.c
@@ -96,7 +96,7 @@ struct clk *mxs_clk_div(const char *name, const char *parent_name,
 	div->divider.flags = CLK_DIVIDER_ONE_BASED;
 	div->ops = &clk_divider_ops;
 
-	ret = clk_register(&div->divider.clk);
+	ret = bclk_register(&div->divider.clk);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/drivers/clk/mxs/clk-frac.c b/drivers/clk/mxs/clk-frac.c
index a9d390121e..6a6ce8c537 100644
--- a/drivers/clk/mxs/clk-frac.c
+++ b/drivers/clk/mxs/clk-frac.c
@@ -122,7 +122,7 @@ struct clk *mxs_clk_frac(const char *name, const char *parent_name,
 	frac->shift = shift;
 	frac->width = width;
 
-	ret = clk_register(&frac->clk);
+	ret = bclk_register(&frac->clk);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/drivers/clk/mxs/clk-lcdif.c b/drivers/clk/mxs/clk-lcdif.c
index 246e68068d..639f6eb6f4 100644
--- a/drivers/clk/mxs/clk-lcdif.c
+++ b/drivers/clk/mxs/clk-lcdif.c
@@ -68,7 +68,7 @@ struct clk *mxs_clk_lcdif(const char *name, struct clk *frac, struct clk *div,
 	lcdif->clk.parent_names = &lcdif->parent;
 	lcdif->clk.num_parents = 1;
 
-	ret = clk_register(&lcdif->clk);
+	ret = bclk_register(&lcdif->clk);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/drivers/clk/mxs/clk-pll.c b/drivers/clk/mxs/clk-pll.c
index 7527a77731..7094012a94 100644
--- a/drivers/clk/mxs/clk-pll.c
+++ b/drivers/clk/mxs/clk-pll.c
@@ -101,7 +101,7 @@ struct clk *mxs_clk_pll(const char *name, const char *parent_name,
 	pll->rate = rate;
 	pll->power = power;
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret)
 		ERR_PTR(ret);
 
diff --git a/drivers/clk/mxs/clk-ref.c b/drivers/clk/mxs/clk-ref.c
index 69361f9ac3..8c12e282ad 100644
--- a/drivers/clk/mxs/clk-ref.c
+++ b/drivers/clk/mxs/clk-ref.c
@@ -148,7 +148,7 @@ struct clk *mxs_clk_ref(const char *name, const char *parent_name,
 	ref->reg = reg;
 	ref->idx = idx;
 
-	ret = clk_register(&ref->clk);
+	ret = bclk_register(&ref->clk);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 71a64f71f6..732ce4207d 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -141,7 +141,7 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
 		}
 	}
 
-	ret = clk_register(&cpuclk->hw);
+	ret = bclk_register(&cpuclk->hw);
 	if (ret) {
 		pr_err("%s: could not register cpuclk %s\n", __func__,	name);
 		goto free_rate_table;
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 6bb8156f8c..ec5b264ac5 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -330,7 +330,7 @@ struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
 	pll->lock_shift = lock_shift;
 	pll->flags = clk_pll_flags;
 
-	ret = clk_register(&pll->hw);
+	ret = bclk_register(&pll->hw);
 	if (ret) {
 		pr_err("%s: failed to register pll clock %s : %d\n",
 			__func__, name, ret);
@@ -351,7 +351,7 @@ struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
 	if (pll_type == pll_rk3066)
 		pll_mux->flags |= CLK_MUX_HIWORD_MASK;
 
-	ret = clk_register(pll_mux);
+	ret = bclk_register(pll_mux);
 	if (ret)
 		goto err_exit;
 
diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index 401eb20d24..57459d0e2b 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -171,7 +171,7 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 	socfpga_clk->clk.num_parents = i;
 	socfpga_clk->clk.parent_names = socfpga_clk->parent_names;
 
-	rc = clk_register(&socfpga_clk->clk);
+	rc = bclk_register(&socfpga_clk->clk);
 	if (rc) {
 		free(socfpga_clk);
 		return ERR_PTR(rc);
diff --git a/drivers/clk/socfpga/clk-periph-a10.c b/drivers/clk/socfpga/clk-periph-a10.c
index 4ef00052e4..3fa636d990 100644
--- a/drivers/clk/socfpga/clk-periph-a10.c
+++ b/drivers/clk/socfpga/clk-periph-a10.c
@@ -104,7 +104,7 @@ static struct clk *__socfpga_periph_init(struct device_node *node,
 	periph_clk->clk.name = xstrdup(clk_name);
 	periph_clk->clk.ops = ops;
 
-	rc = clk_register(&periph_clk->clk);
+	rc = bclk_register(&periph_clk->clk);
 	if (rc) {
 		free(periph_clk);
 		return ERR_PTR(rc);
diff --git a/drivers/clk/socfpga/clk-pll-a10.c b/drivers/clk/socfpga/clk-pll-a10.c
index fcf31e9ea1..e0c34d8486 100644
--- a/drivers/clk/socfpga/clk-pll-a10.c
+++ b/drivers/clk/socfpga/clk-pll-a10.c
@@ -117,7 +117,7 @@ static struct clk *__socfpga_pll_init(struct device_node *node,
 	clk_pll_ops.enable = clk_socfpga_enable;
 	clk_pll_ops.disable = clk_socfpga_disable;
 
-	rc = clk_register(&pll_clk->clk);
+	rc = bclk_register(&pll_clk->clk);
 	if (rc) {
 		free(pll_clk);
 		return NULL;
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index 09e2039bd5..bdc8023820 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -97,7 +97,7 @@ static struct clk *socfpga_pll_clk(struct device_node *node)
 
 	of_property_read_u32(node, "reg", &pll->regofs);
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
@@ -169,7 +169,7 @@ static struct clk *socfpga_periph_clk(struct device_node *node)
 	of_property_read_u32(node, "reg", &periph->regofs);
 	of_property_read_u32(node, "fixed-divider", &periph->fixed_div);
 
-	ret = clk_register(&periph->clk);
+	ret = bclk_register(&periph->clk);
 	if (ret) {
 		free(periph);
 		return ERR_PTR(ret);
@@ -356,7 +356,7 @@ static struct clk *socfpga_gate_clk(struct device_node *node)
 	cs->clk.name = xstrdup(node->name);
 	cs->clk.ops = &clk_socfpga_ops;
 
-	ret = clk_register(&cs->clk);
+	ret = bclk_register(&cs->clk);
 	if (ret) {
 		free(cs);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/tegra/clk-divider.c b/drivers/clk/tegra/clk-divider.c
index cc8b85520c..57868186d3 100644
--- a/drivers/clk/tegra/clk-divider.c
+++ b/drivers/clk/tegra/clk-divider.c
@@ -180,7 +180,7 @@ struct clk *tegra_clk_register_divider(const char *name,
 				  reg, flags, clk_divider_flags, shift, width,
 				  frac_width));
 
-	ret = clk_register(&divider->hw);
+	ret = bclk_register(&divider->hw);
 	if (ret) {
 		kfree(divider);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index 0cd5200e84..6ed54169ad 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -153,7 +153,7 @@ static struct clk *_tegra_clk_register_periph(const char *name,
 	periph->rst_reg = clk_base + rst_offs;
 	periph->rst_shift = id & 0x1f;
 
-	ret = clk_register(&periph->hw);
+	ret = bclk_register(&periph->hw);
 	if (ret)
 		goto out_register;
 
diff --git a/drivers/clk/tegra/clk-pll-out.c b/drivers/clk/tegra/clk-pll-out.c
index e186275563..4b48fa2d64 100644
--- a/drivers/clk/tegra/clk-pll-out.c
+++ b/drivers/clk/tegra/clk-pll-out.c
@@ -117,7 +117,7 @@ struct clk *tegra_clk_register_pll_out(const char *name,
 	pll_out->enb_bit_idx = shift + 1;
 	pll_out->rst_bit_idx = shift;
 
-	ret = clk_register(&pll_out->hw);
+	ret = bclk_register(&pll_out->hw);
 	if (ret) {
 		tegra_clk_divider_free(pll_out->div);
 		kfree(pll_out);
diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
index 832b3c5ea1..4b04876df1 100644
--- a/drivers/clk/tegra/clk-pll.c
+++ b/drivers/clk/tegra/clk-pll.c
@@ -678,7 +678,7 @@ static struct clk *_tegra_clk_register_pll(const char *name,
 	pll->divm_shift = PLL_BASE_DIVM_SHIFT;
 	pll->divm_width = PLL_BASE_DIVM_WIDTH;
 
-	ret = clk_register(&pll->hw);
+	ret = bclk_register(&pll->hw);
 	if (ret) {
 		kfree(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/vexpress/clk-sp810.c b/drivers/clk/vexpress/clk-sp810.c
index 968921203b..8b5c193635 100644
--- a/drivers/clk/vexpress/clk-sp810.c
+++ b/drivers/clk/vexpress/clk-sp810.c
@@ -111,7 +111,7 @@ static void clk_sp810_of_setup(struct device_node *node)
 		 */
 		clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
 
-		clk_register(&sp810->timerclken[i].hw);
+		bclk_register(&sp810->timerclken[i].hw);
 	}
 
 	of_clk_add_provider(node, clk_sp810_timerclken_of_get, sp810);
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 23259a5324..e4b2a855e5 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -128,7 +128,7 @@ static inline struct clk *zynq_pll_clk(enum zynq_pll_type type,
 		break;
 	}
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
@@ -186,7 +186,7 @@ static struct clk *zynq_periph_clk(const char *name, void __iomem *clk_ctrl)
 	periph->clk.parent_names = peripheral_parents;
 	periph->clk.num_parents	= ARRAY_SIZE(peripheral_parents);
 
-	ret = clk_register(&periph->clk);
+	ret = bclk_register(&periph->clk);
 	if (ret) {
 		free(periph);
 		return ERR_PTR(ret);
@@ -248,7 +248,7 @@ static struct clk *zynq_cpu_clk(const char *name, void __iomem *clk_ctrl)
 	cpu->clk.parent_names	= cpu_parents;
 	cpu->clk.num_parents	= ARRAY_SIZE(cpu_parents);
 
-	ret = clk_register(&cpu->clk);
+	ret = bclk_register(&cpu->clk);
 	if (ret) {
 		free(cpu);
 		return ERR_PTR(ret);
@@ -355,7 +355,7 @@ static struct clk *zynq_cpu_subclk(const char *name,
 	subclk->clk.parent_names = &subclk_parent;
 	subclk->clk.num_parents	= 1;
 
-	ret = clk_register(&subclk->clk);
+	ret = bclk_register(&subclk->clk);
 	if (ret) {
 		free(subclk);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/zynqmp/clk-divider-zynqmp.c b/drivers/clk/zynqmp/clk-divider-zynqmp.c
index 2fe65b566a..09f63dd9b5 100644
--- a/drivers/clk/zynqmp/clk-divider-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-divider-zynqmp.c
@@ -101,7 +101,7 @@ struct clk *zynqmp_clk_register_divider(const char *name,
 	div->clk.parent_names = &div->parent;
 	div->clk.num_parents = 1;
 
-	ret = clk_register(&div->clk);
+	ret = bclk_register(&div->clk);
 	if (ret) {
 		kfree(div);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 6f03357768..9fbc15e966 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -83,7 +83,7 @@ struct clk *zynqmp_clk_register_gate(const char *name,
 	gate->clk.parent_names = &gate->parent;
 	gate->clk.num_parents = 1;
 
-	ret = clk_register(&gate->clk);
+	ret = bclk_register(&gate->clk);
 	if (ret) {
 		kfree(gate);
 		return ERR_PTR(ret);
diff --git a/drivers/clk/zynqmp/clk-mux-zynqmp.c b/drivers/clk/zynqmp/clk-mux-zynqmp.c
index 4c15223980..c3fdf11840 100644
--- a/drivers/clk/zynqmp/clk-mux-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-mux-zynqmp.c
@@ -91,7 +91,7 @@ struct clk *zynqmp_clk_register_mux(const char *name,
 	mux->clk.parent_names = parent_names;
 	mux->clk.num_parents = num_parents;
 
-	ret = clk_register(&mux->clk);
+	ret = bclk_register(&mux->clk);
 	if (ret) {
 		kfree(parent_names);
 		kfree(mux);
diff --git a/drivers/clk/zynqmp/clk-pll-zynqmp.c b/drivers/clk/zynqmp/clk-pll-zynqmp.c
index e4b759b73c..6507222568 100644
--- a/drivers/clk/zynqmp/clk-pll-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-pll-zynqmp.c
@@ -203,7 +203,7 @@ struct clk *zynqmp_clk_register_pll(const char *name,
 	pll->clk.parent_names = &pll->parent;
 	pll->clk.num_parents = 1;
 
-	ret = clk_register(&pll->clk);
+	ret = bclk_register(&pll->clk);
 	if (ret) {
 		kfree(pll);
 		return ERR_PTR(ret);
diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index 97613207c9..0f382f8c42 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -740,7 +740,7 @@ int ipu_di_init(struct ipu_soc *ipu, struct device_d *dev, int id,
 	di->clk_di_pixel.ops = &clk_di_ops;
 	di->clk_di_pixel.num_parents = 2;
 	di->clk_di_pixel.name = di->clk_name;
-	ret = clk_register(&di->clk_di_pixel);
+	ret = bclk_register(&di->clk_di_pixel);
 	if (ret)
 		goto failed_clk_register;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 5d05ffd1b3..71c5e23e91 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -494,7 +494,7 @@ long clk_parent_round_rate(struct clk *clk, unsigned long rate,
 int clk_parent_set_rate(struct clk *clk, unsigned long rate,
 				unsigned long parent_rate);
 
-int clk_register(struct clk *clk);
+int bclk_register(struct clk *clk);
 
 struct clk *clk_lookup(const char *name);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

