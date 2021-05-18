Delivery-date: Tue, 18 May 2021 13:53:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyI1-0004GP-NA
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:53:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyHp-0002yS-4d
	for lore@pengutronix.de; Tue, 18 May 2021 13:53:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K7EuCDc33vnH3Tg9V3GrYuCQ88KXNiaXvu6IUqx/YEQ=; b=oV6TDbwupAl0S//XjxhRoVXlB
	ai1z6Pm7QJqkIDmUZkU3U6+8jWziNjWEyy3X2AIwYNVgm0E3kCoArYuxTfD8nLdpvdVZLNWD5LWZp
	WLecDj/yrzCYpQacGoEKJlYIXTsfp4+ADFpBURkXlQTTx3nyfeyISrI20+0ss5+AncAmCmgqgVK9w
	io/9qxGZ6LbckNQD4ExosNyusVMuvqnjU53j9DjPPqB8JnTawqlsN+dsY/pUm3Xcfrgn4GCVoKaSe
	401Rx4fEDoksF55DbDIwEenXunXF1TqN6Lkfb26aATyNtpaMeFvgYCFPKgxmYMMWqEBsF4dSkuM9h
	nWGQzy+Rw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyFR-000eD9-0f; Tue, 18 May 2021 11:50:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEH-000deq-Ck
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=AznCZj3HfYPkcJ0/TzRO+q1b3xDAJ2PaA5l0rt1/o7s=; b=O2DRltcHEVMYmlEiIXf9LAj/wh
 Lag3cSkP8DxxLCJCaNbxbko3XQJxkhy/8uN3879BkZrGylWmYAbS6tiBK12APs8pVD+f52Qy26huv
 0chd3oq8A1WBwDTJsN5OMInSkhmdDlvK6u9hFsTqH/sc4bgmae30zYdrLVKJ7gEndWGvnYHH4koew
 CG7fX1wQgC1fjt6VIwUe6uo8tFV7Ua3Ca8CzYhnoMa5h6JNuO66MTFDttHJpsAl/JrQnCJqfILC1q
 aVrbyZICIILy8cl8P8orA7qnf8py3QWvbyi2wU7YhWNZSeHVRAwwq0kvM+Oi0X0QSd3663yGwAsMm
 bEGLoUHA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHi-MM
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gn-Ex; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00014z-A2; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:18 +0200
Message-Id: <20210518114929.12964-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/14] clk: introduce struct clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In Linux the ops in struct clk_ops take a struct clk_hw * argument
instead of a struct clk * argument as in barebox. With this taking
new clk drivers from Linux requires a lot of mechanical conversions.
Instead of doing this over and over again swallow the pill once and
convert the existing barebox code over to clk_hw.

The implementation is a little different from Linux. In Linux struct clk
is only known to the core clock code. In barebox struct clk is
publically known and it is embedded into struct clk_hw. This allows
us to still use struct clk members in the clock drivers which we
currently still need, because otherwise this patch would be even
bigger.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/at91/clk-audio-pll.c        | 103 +++++++++----------
 drivers/clk/at91/clk-generated.c        |  42 ++++----
 drivers/clk/at91/clk-h32mx.c            |  22 ++---
 drivers/clk/at91/clk-i2s-mux.c          |  24 ++---
 drivers/clk/at91/clk-main.c             | 126 ++++++++++++------------
 drivers/clk/at91/clk-master.c           |  32 +++---
 drivers/clk/at91/clk-peripheral.c       |  72 +++++++-------
 drivers/clk/at91/clk-pll.c              |  40 ++++----
 drivers/clk/at91/clk-plldiv.c           |  26 ++---
 drivers/clk/at91/clk-programmable.c     |  32 +++---
 drivers/clk/at91/clk-sam9x60-pll.c      |  26 ++---
 drivers/clk/at91/clk-slow.c             |  20 ++--
 drivers/clk/at91/clk-smd.c              |  36 +++----
 drivers/clk/at91/clk-system.c           |  28 +++---
 drivers/clk/at91/clk-usb.c              |  92 ++++++++---------
 drivers/clk/at91/clk-utmi.c             |  32 +++---
 drivers/clk/at91/sckc.c                 | 114 ++++++++++-----------
 drivers/clk/clk-ar933x.c                |  18 ++--
 drivers/clk/clk-ar9344.c                |  18 ++--
 drivers/clk/clk-composite.c             |  74 +++++++-------
 drivers/clk/clk-divider.c               |  51 +++++-----
 drivers/clk/clk-fixed-factor.c          |  35 ++++---
 drivers/clk/clk-fixed.c                 |  20 ++--
 drivers/clk/clk-fractional-divider.c    |  24 ++---
 drivers/clk/clk-gate-shared.c           |  31 +++---
 drivers/clk/clk-gate.c                  |  34 ++++---
 drivers/clk/clk-gpio.c                  |  32 +++---
 drivers/clk/clk-mux.c                   |  29 +++---
 drivers/clk/clk-qoric.c                 |  34 +++----
 drivers/clk/clk-stm32mp1.c              |  97 +++++++++---------
 drivers/clk/clk.c                       |  91 ++++++++++++++---
 drivers/clk/imx/clk-composite-8m.c      |  33 +++----
 drivers/clk/imx/clk-cpu.c               |  32 +++---
 drivers/clk/imx/clk-frac-pll.c          |  38 +++----
 drivers/clk/imx/clk-gate-exclusive.c    |  36 +++----
 drivers/clk/imx/clk-gate2.c             |  34 ++++---
 drivers/clk/imx/clk-imx6ul.c            |   4 +-
 drivers/clk/imx/clk-pfd.c               |  34 +++----
 drivers/clk/imx/clk-pll14xx.c           |  45 ++++-----
 drivers/clk/imx/clk-pllv1.c             |  18 ++--
 drivers/clk/imx/clk-pllv2.c             |  24 ++---
 drivers/clk/imx/clk-pllv3.c             |  70 ++++++-------
 drivers/clk/imx/clk-sccg-pll.c          |  51 +++++-----
 drivers/clk/loongson/clk-ls1b200.c      |  18 ++--
 drivers/clk/mvebu/corediv.c             |  28 +++---
 drivers/clk/mxs/clk-div.c               |  36 +++----
 drivers/clk/mxs/clk-frac.c              |  30 +++---
 drivers/clk/mxs/clk-lcdif.c             |  20 ++--
 drivers/clk/mxs/clk-pll.c               |  32 +++---
 drivers/clk/mxs/clk-ref.c               |  38 +++----
 drivers/clk/rockchip/clk-cpu.c          |  20 ++--
 drivers/clk/rockchip/clk-pll.c          |  40 ++++----
 drivers/clk/socfpga/clk-gate-a10.c      |  32 +++---
 drivers/clk/socfpga/clk-periph-a10.c    |  28 +++---
 drivers/clk/socfpga/clk-pll-a10.c       |  30 +++---
 drivers/clk/socfpga/clk.c               |  74 +++++++-------
 drivers/clk/socfpga/clk.h               |   6 +-
 drivers/clk/tegra/clk-divider.c         |  15 +--
 drivers/clk/tegra/clk-periph.c          |  44 ++++-----
 drivers/clk/tegra/clk-pll-out.c         |  30 +++---
 drivers/clk/tegra/clk-pll.c             |  52 +++++-----
 drivers/clk/tegra/clk.h                 |   6 +-
 drivers/clk/vexpress/clk-sp810.c        |  24 ++---
 drivers/clk/zynq/clkc.c                 | 100 +++++++++----------
 drivers/clk/zynqmp/clk-divider-zynqmp.c |  30 +++---
 drivers/clk/zynqmp/clk-gate-zynqmp.c    |  30 +++---
 drivers/clk/zynqmp/clk-mux-zynqmp.c     |  30 +++---
 drivers/clk/zynqmp/clk-pll-zynqmp.c     |  48 ++++-----
 drivers/video/imx-ipu-v3/ipu-di.c       |  15 ++-
 include/linux/clk.h                     |  96 ++++++++++++++----
 70 files changed, 1503 insertions(+), 1323 deletions(-)

diff --git a/drivers/clk/at91/clk-audio-pll.c b/drivers/clk/at91/clk-audio-pll.c
index 25be69ec6f..e9a30b0516 100644
--- a/drivers/clk/at91/clk-audio-pll.c
+++ b/drivers/clk/at91/clk-audio-pll.c
@@ -57,7 +57,7 @@
 #define AUDIO_PLL_FOUT_MAX	700000000UL
 
 struct clk_audio_frac {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u32 fracr;
 	u8 nd;
@@ -65,7 +65,7 @@ struct clk_audio_frac {
 };
 
 struct clk_audio_pad {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 qdaudio;
 	u8 div;
@@ -73,19 +73,19 @@ struct clk_audio_pad {
 };
 
 struct clk_audio_pmc {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 qdpmc;
 	const char *parent_name;
 };
 
-#define to_clk_audio_frac(clk) container_of(clk, struct clk_audio_frac, clk)
-#define to_clk_audio_pad(clk) container_of(clk, struct clk_audio_pad, clk)
-#define to_clk_audio_pmc(clk) container_of(clk, struct clk_audio_pmc, clk)
+#define to_clk_audio_frac(_hw) container_of(_hw, struct clk_audio_frac, hw)
+#define to_clk_audio_pad(_hw) container_of(_hw, struct clk_audio_pad, hw)
+#define to_clk_audio_pmc(_hw) container_of(_hw, struct clk_audio_pmc, hw)
 
-static int clk_audio_pll_frac_enable(struct clk *clk)
+static int clk_audio_pll_frac_enable(struct clk_hw *hw)
 {
-	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+	struct clk_audio_frac *frac = to_clk_audio_frac(hw);
 
 	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
 			   AT91_PMC_AUDIO_PLL_RESETN, 0);
@@ -108,9 +108,9 @@ static int clk_audio_pll_frac_enable(struct clk *clk)
 	return 0;
 }
 
-static int clk_audio_pll_pad_enable(struct clk *clk)
+static int clk_audio_pll_pad_enable(struct clk_hw *hw)
 {
-	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(hw);
 
 	regmap_update_bits(apad_ck->regmap, AT91_PMC_AUDIO_PLL1,
 			   AT91_PMC_AUDIO_PLL_QDPAD_MASK,
@@ -121,9 +121,9 @@ static int clk_audio_pll_pad_enable(struct clk *clk)
 	return 0;
 }
 
-static int clk_audio_pll_pmc_enable(struct clk *clk)
+static int clk_audio_pll_pmc_enable(struct clk_hw *hw)
 {
-	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(hw);
 
 	regmap_update_bits(apmc_ck->regmap, AT91_PMC_AUDIO_PLL0,
 			   AT91_PMC_AUDIO_PLL_PMCEN |
@@ -133,9 +133,9 @@ static int clk_audio_pll_pmc_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_audio_pll_frac_disable(struct clk *clk)
+static void clk_audio_pll_frac_disable(struct clk_hw *hw)
 {
-	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+	struct clk_audio_frac *frac = to_clk_audio_frac(hw);
 
 	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
 			   AT91_PMC_AUDIO_PLL_PLLEN, 0);
@@ -144,17 +144,17 @@ static void clk_audio_pll_frac_disable(struct clk *clk)
 			   AT91_PMC_AUDIO_PLL_RESETN, 0);
 }
 
-static void clk_audio_pll_pad_disable(struct clk *clk)
+static void clk_audio_pll_pad_disable(struct clk_hw *hw)
 {
-	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(hw);
 
 	regmap_update_bits(apad_ck->regmap, AT91_PMC_AUDIO_PLL0,
 			   AT91_PMC_AUDIO_PLL_PADEN, 0);
 }
 
-static void clk_audio_pll_pmc_disable(struct clk *clk)
+static void clk_audio_pll_pmc_disable(struct clk_hw *hw)
 {
-	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(hw);
 
 	regmap_update_bits(apmc_ck->regmap, AT91_PMC_AUDIO_PLL0,
 			   AT91_PMC_AUDIO_PLL_PMCEN, 0);
@@ -174,10 +174,10 @@ static unsigned long clk_audio_pll_fout(unsigned long parent_rate,
 	return parent_rate * (nd + 1) + fr;
 }
 
-static unsigned long clk_audio_pll_frac_recalc_rate(struct clk *clk,
+static unsigned long clk_audio_pll_frac_recalc_rate(struct clk_hw *hw,
 						    unsigned long parent_rate)
 {
-	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+	struct clk_audio_frac *frac = to_clk_audio_frac(hw);
 	unsigned long fout;
 
 	fout = clk_audio_pll_fout(parent_rate, frac->nd, frac->fracr);
@@ -188,10 +188,10 @@ static unsigned long clk_audio_pll_frac_recalc_rate(struct clk *clk,
 	return fout;
 }
 
-static unsigned long clk_audio_pll_pad_recalc_rate(struct clk *clk,
+static unsigned long clk_audio_pll_pad_recalc_rate(struct clk_hw *hw,
 						   unsigned long parent_rate)
 {
-	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(hw);
 	unsigned long apad_rate = 0;
 
 	if (apad_ck->qdaudio && apad_ck->div)
@@ -203,10 +203,10 @@ static unsigned long clk_audio_pll_pad_recalc_rate(struct clk *clk,
 	return apad_rate;
 }
 
-static unsigned long clk_audio_pll_pmc_recalc_rate(struct clk *clk,
+static unsigned long clk_audio_pll_pmc_recalc_rate(struct clk_hw *hw,
 						   unsigned long parent_rate)
 {
-	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(hw);
 	unsigned long apmc_rate = 0;
 
 	apmc_rate = parent_rate / (apmc_ck->qdpmc + 1);
@@ -245,10 +245,10 @@ static int clk_audio_pll_frac_compute_frac(unsigned long rate,
 	return 0;
 }
 
-static long clk_audio_pll_pad_round_rate(struct clk *clk, unsigned long rate,
+static long clk_audio_pll_pad_round_rate(struct clk_hw *hw, unsigned long rate,
 					 unsigned long *parent_rate)
 {
-	struct clk *pclk = clk_get_parent(clk);
+	struct clk *pclk = clk_get_parent(clk_hw_to_clk(hw));
 	long best_rate = -EINVAL;
 	unsigned long best_parent_rate;
 	unsigned long tmp_qd;
@@ -296,9 +296,10 @@ static long clk_audio_pll_pad_round_rate(struct clk *clk, unsigned long rate,
 	return best_rate;
 }
 
-static long clk_audio_pll_pmc_round_rate(struct clk *clk, unsigned long rate,
+static long clk_audio_pll_pmc_round_rate(struct clk_hw *hw, unsigned long rate,
 					 unsigned long *parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct clk *pclk = clk_get_parent(clk);
 	long best_rate = -EINVAL;
 	unsigned long best_parent_rate = 0;
@@ -336,10 +337,10 @@ static long clk_audio_pll_pmc_round_rate(struct clk *clk, unsigned long rate,
 	return best_rate;
 }
 
-static int clk_audio_pll_frac_set_rate(struct clk *clk, unsigned long rate,
+static int clk_audio_pll_frac_set_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long parent_rate)
 {
-	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+	struct clk_audio_frac *frac = to_clk_audio_frac(hw);
 	unsigned long fracr, nd;
 	int ret;
 
@@ -359,10 +360,10 @@ static int clk_audio_pll_frac_set_rate(struct clk *clk, unsigned long rate,
 	return 0;
 }
 
-static int clk_audio_pll_pad_set_rate(struct clk *clk, unsigned long rate,
+static int clk_audio_pll_pad_set_rate(struct clk_hw *hw, unsigned long rate,
 				      unsigned long parent_rate)
 {
-	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(hw);
 	u8 tmp_div;
 
 	pr_debug("A PLL/PAD: %s, rate = %lu (parent_rate = %lu)\n", __func__,
@@ -383,10 +384,10 @@ static int clk_audio_pll_pad_set_rate(struct clk *clk, unsigned long rate,
 	return 0;
 }
 
-static int clk_audio_pll_pmc_set_rate(struct clk *clk, unsigned long rate,
+static int clk_audio_pll_pmc_set_rate(struct clk_hw *hw, unsigned long rate,
 				      unsigned long parent_rate)
 {
-	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(hw);
 
 	if (!rate)
 		return -EINVAL;
@@ -433,22 +434,22 @@ at91_clk_register_audio_pll_frac(struct regmap *regmap, const char *name,
 	if (!frac_ck)
 		return ERR_PTR(-ENOMEM);
 
-	frac_ck->clk.name = name;
-	frac_ck->clk.ops = &audio_pll_frac_ops;
+	frac_ck->hw.clk.name = name;
+	frac_ck->hw.clk.ops = &audio_pll_frac_ops;
 	frac_ck->parent_name = parent_name;
-	frac_ck->clk.parent_names = &frac_ck->parent_name;
-	frac_ck->clk.num_parents = 1;
+	frac_ck->hw.clk.parent_names = &frac_ck->parent_name;
+	frac_ck->hw.clk.num_parents = 1;
 	/* frac_ck->clk.flags = CLK_SET_RATE_GATE; */
 
 	frac_ck->regmap = regmap;
 
-	ret = bclk_register(&frac_ck->clk);
+	ret = bclk_register(&frac_ck->hw.clk);
 	if (ret) {
 		kfree(frac_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &frac_ck->clk;
+	return &frac_ck->hw.clk;
 }
 
 struct clk * __init
@@ -462,23 +463,23 @@ at91_clk_register_audio_pll_pad(struct regmap *regmap, const char *name,
 	if (!apad_ck)
 		return ERR_PTR(-ENOMEM);
 
-	apad_ck->clk.name = name;
-	apad_ck->clk.ops = &audio_pll_pad_ops;
+	apad_ck->hw.clk.name = name;
+	apad_ck->hw.clk.ops = &audio_pll_pad_ops;
 	apad_ck->parent_name = parent_name;
-	apad_ck->clk.parent_names = &apad_ck->parent_name;
-	apad_ck->clk.num_parents = 1;
+	apad_ck->hw.clk.parent_names = &apad_ck->parent_name;
+	apad_ck->hw.clk.num_parents = 1;
 	/* apad_ck->clk.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
 		CLK_SET_RATE_PARENT; */
 
 	apad_ck->regmap = regmap;
 
-	ret = bclk_register(&apad_ck->clk);
+	ret = bclk_register(&apad_ck->hw.clk);
 	if (ret) {
 		kfree(apad_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &apad_ck->clk;
+	return &apad_ck->hw.clk;
 }
 
 struct clk * __init
@@ -492,21 +493,21 @@ at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
 	if (!apmc_ck)
 		return ERR_PTR(-ENOMEM);
 
-	apmc_ck->clk.name = name;
-	apmc_ck->clk.ops = &audio_pll_pmc_ops;
+	apmc_ck->hw.clk.name = name;
+	apmc_ck->hw.clk.ops = &audio_pll_pmc_ops;
 	apmc_ck->parent_name = parent_name;
-	apmc_ck->clk.parent_names = &apmc_ck->parent_name;
-	apmc_ck->clk.num_parents = 1;
+	apmc_ck->hw.clk.parent_names = &apmc_ck->parent_name;
+	apmc_ck->hw.clk.num_parents = 1;
 	/* apmc_ck.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
 		CLK_SET_RATE_PARENT; */
 
 	apmc_ck->regmap = regmap;
 
-	ret = bclk_register(&apmc_ck->clk);
+	ret = bclk_register(&apmc_ck->hw.clk);
 	if (ret) {
 		kfree(apmc_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &apmc_ck->clk;
+	return &apmc_ck->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 23d193f9dd..628ff407d9 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -23,7 +23,7 @@
 #define GCK_INDEX_DT_AUDIO_PLL	5
 
 struct clk_generated {
-	struct clk hw;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	struct clk_range range;
 	u32 id;
@@ -33,10 +33,10 @@ struct clk_generated {
 	bool audio_pll_allowed;
 };
 
-#define to_clk_generated(hw) \
-	container_of(hw, struct clk_generated, hw)
+#define to_clk_generated(_hw) \
+	container_of(_hw, struct clk_generated, hw)
 
-static int clk_generated_enable(struct clk *hw)
+static int clk_generated_enable(struct clk_hw *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
@@ -55,7 +55,7 @@ static int clk_generated_enable(struct clk *hw)
 	return 0;
 }
 
-static void clk_generated_disable(struct clk *hw)
+static void clk_generated_disable(struct clk_hw *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
@@ -66,7 +66,7 @@ static void clk_generated_disable(struct clk *hw)
 			   gck->layout->cmd);
 }
 
-static int clk_generated_is_enabled(struct clk *hw)
+static int clk_generated_is_enabled(struct clk_hw *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 	unsigned int status;
@@ -79,7 +79,7 @@ static int clk_generated_is_enabled(struct clk *hw)
 }
 
 static unsigned long
-clk_generated_recalc_rate(struct clk *hw,
+clk_generated_recalc_rate(struct clk_hw *hw,
 			  unsigned long parent_rate)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
@@ -88,18 +88,18 @@ clk_generated_recalc_rate(struct clk *hw,
 }
 
 /* No modification of hardware as we have the flag CLK_SET_PARENT_GATE set */
-static int clk_generated_set_parent(struct clk *hw, u8 index)
+static int clk_generated_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
-	if (index >= clk_get_num_parents(hw))
+	if (index >= clk_get_num_parents(clk_hw_to_clk(hw)))
 		return -EINVAL;
 
 	gck->parent_id = index;
 	return 0;
 }
 
-static int clk_generated_get_parent(struct clk *hw)
+static int clk_generated_get_parent(struct clk_hw *hw)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
@@ -107,7 +107,7 @@ static int clk_generated_get_parent(struct clk *hw)
 }
 
 /* No modification of hardware as we have the flag CLK_SET_RATE_GATE set */
-static int clk_generated_set_rate(struct clk *hw,
+static int clk_generated_set_rate(struct clk_hw *hw,
 				  unsigned long rate,
 				  unsigned long parent_rate)
 {
@@ -168,7 +168,7 @@ at91_clk_register_generated(struct regmap *regmap,
 {
 	size_t parents_array_size;
 	struct clk_generated *gck;
-	struct clk *hw;
+	struct clk *clk;
 	int ret;
 
 	gck = kzalloc(sizeof(*gck), GFP_KERNEL);
@@ -176,12 +176,12 @@ at91_clk_register_generated(struct regmap *regmap,
 		return ERR_PTR(-ENOMEM);
 
 	gck->id = id;
-	gck->hw.name = name;
-	gck->hw.ops = &generated_ops;
+	gck->hw.clk.name = name;
+	gck->hw.clk.ops = &generated_ops;
 
-	parents_array_size = num_parents * sizeof(gck->hw.parent_names[0]);
-	gck->hw.parent_names = xmemdup(parent_names, parents_array_size);
-	gck->hw.num_parents = num_parents;
+	parents_array_size = num_parents * sizeof(gck->hw.clk.parent_names[0]);
+	gck->hw.clk.parent_names = xmemdup(parent_names, parents_array_size);
+	gck->hw.clk.num_parents = num_parents;
 
 	/* gck->hw.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | CLK_SET_PARENT; */
 	gck->regmap = regmap;
@@ -190,14 +190,14 @@ at91_clk_register_generated(struct regmap *regmap,
 	gck->layout = layout;
 
 	clk_generated_startup(gck);
-	hw = &gck->hw;
-	ret = bclk_register(&gck->hw);
+	clk = &gck->hw.clk;
+	ret = bclk_register(&gck->hw.clk);
 	if (ret) {
 		kfree(gck);
-		hw = ERR_PTR(ret);
+		clk = ERR_PTR(ret);
 	} else {
 		pmc_register_id(id);
 	}
 
-	return hw;
+	return clk;
 }
diff --git a/drivers/clk/at91/clk-h32mx.c b/drivers/clk/at91/clk-h32mx.c
index 1bcd30be75..b2c5007cf7 100644
--- a/drivers/clk/at91/clk-h32mx.c
+++ b/drivers/clk/at91/clk-h32mx.c
@@ -20,14 +20,14 @@
 #define H32MX_MAX_FREQ	90000000
 
 struct clk_sama5d4_h32mx {
-	struct clk hw;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	const char *parent;
 };
 
-#define to_clk_sama5d4_h32mx(hw) container_of(hw, struct clk_sama5d4_h32mx, hw)
+#define to_clk_sama5d4_h32mx(_hw) container_of(_hw, struct clk_sama5d4_h32mx, hw)
 
-static unsigned long clk_sama5d4_h32mx_recalc_rate(struct clk *hw,
+static unsigned long clk_sama5d4_h32mx_recalc_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
 {
 	struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
@@ -42,7 +42,7 @@ static unsigned long clk_sama5d4_h32mx_recalc_rate(struct clk *hw,
 	return parent_rate;
 }
 
-static long clk_sama5d4_h32mx_round_rate(struct clk *hw, unsigned long rate,
+static long clk_sama5d4_h32mx_round_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long *parent_rate)
 {
 	unsigned long div;
@@ -59,7 +59,7 @@ static long clk_sama5d4_h32mx_round_rate(struct clk *hw, unsigned long rate,
 	return *parent_rate;
 }
 
-static int clk_sama5d4_h32mx_set_rate(struct clk *hw, unsigned long rate,
+static int clk_sama5d4_h32mx_set_rate(struct clk_hw *hw, unsigned long rate,
 				    unsigned long parent_rate)
 {
 	struct clk_sama5d4_h32mx *h32mxclk = to_clk_sama5d4_h32mx(hw);
@@ -95,19 +95,19 @@ at91_clk_register_h32mx(struct regmap *regmap, const char *name,
 		return ERR_PTR(-ENOMEM);
 
 	h32mxclk->parent = parent_name;
-	h32mxclk->hw.name = name;
-	h32mxclk->hw.ops = &h32mx_ops;
-	h32mxclk->hw.parent_names = &h32mxclk->parent;
-	h32mxclk->hw.num_parents = 1;
+	h32mxclk->hw.clk.name = name;
+	h32mxclk->hw.clk.ops = &h32mx_ops;
+	h32mxclk->hw.clk.parent_names = &h32mxclk->parent;
+	h32mxclk->hw.clk.num_parents = 1;
 	/* h32mxclk.hw.flags = CLK_SET_RATE_GATE; */
 
 	h32mxclk->regmap = regmap;
 
-	ret = bclk_register(&h32mxclk->hw);
+	ret = bclk_register(&h32mxclk->hw.clk);
 	if (ret) {
 		kfree(h32mxclk);
 		return ERR_PTR(ret);
 	}
 
-	return &h32mxclk->hw;
+	return &h32mxclk->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-i2s-mux.c b/drivers/clk/at91/clk-i2s-mux.c
index 6e3d1e8f59..510ea24bbc 100644
--- a/drivers/clk/at91/clk-i2s-mux.c
+++ b/drivers/clk/at91/clk-i2s-mux.c
@@ -21,17 +21,17 @@
 #include "pmc.h"
 
 struct clk_i2s_mux {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 bus_id;
 	const char *parent_names[];
 };
 
-#define to_clk_i2s_mux(clk) container_of(clk, struct clk_i2s_mux, clk)
+#define to_clk_i2s_mux(_hw) container_of(_hw, struct clk_i2s_mux, hw)
 
-static int clk_i2s_mux_get_parent(struct clk *clk)
+static int clk_i2s_mux_get_parent(struct clk_hw *hw)
 {
-	struct clk_i2s_mux *mux = to_clk_i2s_mux(clk);
+	struct clk_i2s_mux *mux = to_clk_i2s_mux(hw);
 	u32 val;
 
 	regmap_read(mux->regmap, AT91_SFR_I2SCLKSEL, &val);
@@ -39,9 +39,9 @@ static int clk_i2s_mux_get_parent(struct clk *clk)
 	return (val & BIT(mux->bus_id)) >> mux->bus_id;
 }
 
-static int clk_i2s_mux_set_parent(struct clk *clk, u8 index)
+static int clk_i2s_mux_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_i2s_mux *mux = to_clk_i2s_mux(clk);
+	struct clk_i2s_mux *mux = to_clk_i2s_mux(hw);
 
 	return regmap_update_bits(mux->regmap, AT91_SFR_I2SCLKSEL,
 				  BIT(mux->bus_id), index << mux->bus_id);
@@ -66,21 +66,21 @@ at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
 	if (!i2s_ck)
 		return ERR_PTR(-ENOMEM);
 
-	i2s_ck->clk.name = name;
-	i2s_ck->clk.ops = &clk_i2s_mux_ops;
+	i2s_ck->hw.clk.name = name;
+	i2s_ck->hw.clk.ops = &clk_i2s_mux_ops;
 	memcpy(i2s_ck->parent_names, parent_names,
 	       num_parents * sizeof(i2s_ck->parent_names[0]));
-	i2s_ck->clk.parent_names = &i2s_ck->parent_names[0];
-	i2s_ck->clk.num_parents = num_parents;
+	i2s_ck->hw.clk.parent_names = &i2s_ck->parent_names[0];
+	i2s_ck->hw.clk.num_parents = num_parents;
 
 	i2s_ck->bus_id = bus_id;
 	i2s_ck->regmap = regmap;
 
-	ret = bclk_register(&i2s_ck->clk);
+	ret = bclk_register(&i2s_ck->hw.clk);
 	if (ret) {
 		kfree(i2s_ck);
 		return ERR_PTR(ret);
 	}
 
-	return &i2s_ck->clk;
+	return &i2s_ck->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
index 74c26a1516..38e72d6538 100644
--- a/drivers/clk/at91/clk-main.c
+++ b/drivers/clk/at91/clk-main.c
@@ -26,36 +26,36 @@
 					AT91_PMC_OSCBYPASS)) ? 1 : 0)
 
 struct clk_main_osc {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	const char *parent;
 };
 
-#define to_clk_main_osc(clk) container_of(clk, struct clk_main_osc, clk)
+#define to_clk_main_osc(_hw) container_of(_hw, struct clk_main_osc, hw)
 
 struct clk_main_rc_osc {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	unsigned long frequency;
 };
 
-#define to_clk_main_rc_osc(clk) container_of(clk, struct clk_main_rc_osc, clk)
+#define to_clk_main_rc_osc(_hw) container_of(_hw, struct clk_main_rc_osc, hw)
 
 struct clk_rm9200_main {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	const char *parent;
 };
 
-#define to_clk_rm9200_main(clk) container_of(clk, struct clk_rm9200_main, clk)
+#define to_clk_rm9200_main(_hw) container_of(_hw, struct clk_rm9200_main, hw)
 
 struct clk_sam9x5_main {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 parent;
 };
 
-#define to_clk_sam9x5_main(clk) container_of(clk, struct clk_sam9x5_main, clk)
+#define to_clk_sam9x5_main(_hw) container_of(_hw, struct clk_sam9x5_main, hw)
 
 static inline bool clk_main_osc_ready(struct regmap *regmap)
 {
@@ -66,9 +66,9 @@ static inline bool clk_main_osc_ready(struct regmap *regmap)
 	return status & AT91_PMC_MOSCS;
 }
 
-static int clk_main_osc_enable(struct clk *clk)
+static int clk_main_osc_enable(struct clk_hw *hw)
 {
-	struct clk_main_osc *osc = to_clk_main_osc(clk);
+	struct clk_main_osc *osc = to_clk_main_osc(hw);
 	struct regmap *regmap = osc->regmap;
 	u32 tmp;
 
@@ -89,9 +89,9 @@ static int clk_main_osc_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_main_osc_disable(struct clk *clk)
+static void clk_main_osc_disable(struct clk_hw *hw)
 {
-	struct clk_main_osc *osc = to_clk_main_osc(clk);
+	struct clk_main_osc *osc = to_clk_main_osc(hw);
 	struct regmap *regmap = osc->regmap;
 	u32 tmp;
 
@@ -106,9 +106,9 @@ static void clk_main_osc_disable(struct clk *clk)
 	regmap_write(regmap, AT91_CKGR_MOR, tmp | AT91_PMC_KEY);
 }
 
-static int clk_main_osc_is_enabled(struct clk *clk)
+static int clk_main_osc_is_enabled(struct clk_hw *hw)
 {
-	struct clk_main_osc *osc = to_clk_main_osc(clk);
+	struct clk_main_osc *osc = to_clk_main_osc(hw);
 	struct regmap *regmap = osc->regmap;
 	u32 tmp, status;
 
@@ -142,10 +142,10 @@ at91_clk_register_main_osc(struct regmap *regmap,
 	osc = xzalloc(sizeof(*osc));
 
 	osc->parent = parent_name;
-	osc->clk.name = name;
-	osc->clk.ops = &main_osc_ops;
-	osc->clk.parent_names = &osc->parent;
-	osc->clk.num_parents = 1;
+	osc->hw.clk.name = name;
+	osc->hw.clk.ops = &main_osc_ops;
+	osc->hw.clk.parent_names = &osc->parent;
+	osc->hw.clk.num_parents = 1;
 	osc->regmap = regmap;
 
 	if (bypass)
@@ -154,13 +154,13 @@ at91_clk_register_main_osc(struct regmap *regmap,
 				  AT91_PMC_MOSCEN,
 				  AT91_PMC_OSCBYPASS | AT91_PMC_KEY);
 
-	ret = bclk_register(&osc->clk);
+	ret = bclk_register(&osc->hw.clk);
 	if (ret) {
 		free(osc);
 		return ERR_PTR(ret);
 	}
 
-	return &osc->clk;
+	return &osc->hw.clk;
 }
 
 static bool clk_main_rc_osc_ready(struct regmap *regmap)
@@ -172,9 +172,9 @@ static bool clk_main_rc_osc_ready(struct regmap *regmap)
 	return status & AT91_PMC_MOSCRCS;
 }
 
-static int clk_main_rc_osc_enable(struct clk *clk)
+static int clk_main_rc_osc_enable(struct clk_hw *hw)
 {
-	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(hw);
 	struct regmap *regmap = osc->regmap;
 	unsigned int mor;
 
@@ -191,9 +191,9 @@ static int clk_main_rc_osc_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_main_rc_osc_disable(struct clk *clk)
+static void clk_main_rc_osc_disable(struct clk_hw *hw)
 {
-	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(hw);
 	struct regmap *regmap = osc->regmap;
 	unsigned int mor;
 
@@ -206,9 +206,9 @@ static void clk_main_rc_osc_disable(struct clk *clk)
 			  MOR_KEY_MASK | AT91_PMC_MOSCRCEN, AT91_PMC_KEY);
 }
 
-static int clk_main_rc_osc_is_enabled(struct clk *clk)
+static int clk_main_rc_osc_is_enabled(struct clk_hw *hw)
 {
-	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(hw);
 	struct regmap *regmap = osc->regmap;
 	unsigned int mor, status;
 
@@ -218,10 +218,10 @@ static int clk_main_rc_osc_is_enabled(struct clk *clk)
 	return (mor & AT91_PMC_MOSCRCEN) && (status & AT91_PMC_MOSCRCS);
 }
 
-static unsigned long clk_main_rc_osc_recalc_rate(struct clk *clk,
+static unsigned long clk_main_rc_osc_recalc_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
 {
-	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(clk);
+	struct clk_main_rc_osc *osc = to_clk_main_rc_osc(hw);
 
 	return osc->frequency;
 }
@@ -246,21 +246,21 @@ at91_clk_register_main_rc_osc(struct regmap *regmap,
 
 	osc = xzalloc(sizeof(*osc));
 
-	osc->clk.name = name;
-	osc->clk.ops = &main_rc_osc_ops;
-	osc->clk.parent_names = NULL;
-	osc->clk.num_parents = 0;
+	osc->hw.clk.name = name;
+	osc->hw.clk.ops = &main_rc_osc_ops;
+	osc->hw.clk.parent_names = NULL;
+	osc->hw.clk.num_parents = 0;
 
 	osc->regmap = regmap;
 	osc->frequency = frequency;
 
-	ret = bclk_register(&osc->clk);
+	ret = bclk_register(&osc->hw.clk);
 	if (ret) {
 		kfree(osc);
 		return ERR_PTR(ret);
 	}
 
-	return &osc->clk;
+	return &osc->hw.clk;
 }
 
 static int clk_main_probe_frequency(struct regmap *regmap)
@@ -293,16 +293,16 @@ static unsigned long clk_main_recalc_rate(struct regmap *regmap,
 	return ((mcfr & AT91_PMC_MAINF) * SLOW_CLOCK_FREQ) / MAINF_DIV;
 }
 
-static int clk_rm9200_main_enable(struct clk *clk)
+static int clk_rm9200_main_enable(struct clk_hw *hw)
 {
-	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(clk);
+	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(hw);
 
 	return clk_main_probe_frequency(clkmain->regmap);
 }
 
-static int clk_rm9200_main_is_enabled(struct clk *clk)
+static int clk_rm9200_main_is_enabled(struct clk_hw *hw)
 {
-	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(clk);
+	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(hw);
 	unsigned int status;
 
 	regmap_read(clkmain->regmap, AT91_CKGR_MCFR, &status);
@@ -310,10 +310,10 @@ static int clk_rm9200_main_is_enabled(struct clk *clk)
 	return status & AT91_PMC_MAINRDY ? 1 : 0;
 }
 
-static unsigned long clk_rm9200_main_recalc_rate(struct clk *clk,
+static unsigned long clk_rm9200_main_recalc_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
 {
-	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(clk);
+	struct clk_rm9200_main *clkmain = to_clk_rm9200_main(hw);
 
 	return clk_main_recalc_rate(clkmain->regmap, parent_rate);
 }
@@ -341,19 +341,19 @@ at91_clk_register_rm9200_main(struct regmap *regmap,
 	clkmain = xzalloc(sizeof(*clkmain));
 
 	clkmain->parent = parent_name;
-	clkmain->clk.name = name;
-	clkmain->clk.ops = &rm9200_main_ops;
-	clkmain->clk.parent_names = &clkmain->parent;
-	clkmain->clk.num_parents = 1;
+	clkmain->hw.clk.name = name;
+	clkmain->hw.clk.ops = &rm9200_main_ops;
+	clkmain->hw.clk.parent_names = &clkmain->parent;
+	clkmain->hw.clk.num_parents = 1;
 	clkmain->regmap = regmap;
 
-	ret = bclk_register(&clkmain->clk);
+	ret = bclk_register(&clkmain->hw.clk);
 	if (ret) {
 		kfree(clkmain);
 		return ERR_PTR(ret);
 	}
 
-	return &clkmain->clk;
+	return &clkmain->hw.clk;
 }
 
 static inline bool clk_sam9x5_main_ready(struct regmap *regmap)
@@ -365,9 +365,9 @@ static inline bool clk_sam9x5_main_ready(struct regmap *regmap)
 	return status & AT91_PMC_MOSCSELS ? 1 : 0;
 }
 
-static int clk_sam9x5_main_enable(struct clk *clk)
+static int clk_sam9x5_main_enable(struct clk_hw *hw)
 {
-	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(hw);
 	struct regmap *regmap = clkmain->regmap;
 
 	while (!clk_sam9x5_main_ready(regmap))
@@ -376,24 +376,24 @@ static int clk_sam9x5_main_enable(struct clk *clk)
 	return clk_main_probe_frequency(regmap);
 }
 
-static int clk_sam9x5_main_is_enabled(struct clk *clk)
+static int clk_sam9x5_main_is_enabled(struct clk_hw *hw)
 {
-	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(hw);
 
 	return clk_sam9x5_main_ready(clkmain->regmap);
 }
 
-static unsigned long clk_sam9x5_main_recalc_rate(struct clk *clk,
+static unsigned long clk_sam9x5_main_recalc_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
 {
-	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(hw);
 
 	return clk_main_recalc_rate(clkmain->regmap, parent_rate);
 }
 
-static int clk_sam9x5_main_set_parent(struct clk *clk, u8 index)
+static int clk_sam9x5_main_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(hw);
 	struct regmap *regmap = clkmain->regmap;
 	unsigned int tmp;
 
@@ -414,9 +414,9 @@ static int clk_sam9x5_main_set_parent(struct clk *clk, u8 index)
 	return 0;
 }
 
-static int clk_sam9x5_main_get_parent(struct clk *clk)
+static int clk_sam9x5_main_get_parent(struct clk_hw *hw)
 {
-	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(clk);
+	struct clk_sam9x5_main *clkmain = to_clk_sam9x5_main(hw);
 	unsigned int status;
 
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
@@ -451,11 +451,11 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 
 	clkmain = xzalloc(sizeof(*clkmain));
 
-	clkmain->clk.name = name;
-	clkmain->clk.ops = &sam9x5_main_ops;
-	parents_array_size = num_parents * sizeof (clkmain->clk.parent_names[0]);
-	clkmain->clk.parent_names = xmemdup(parent_names, parents_array_size);
-	clkmain->clk.num_parents = num_parents;
+	clkmain->hw.clk.name = name;
+	clkmain->hw.clk.ops = &sam9x5_main_ops;
+	parents_array_size = num_parents * sizeof (clkmain->hw.clk.parent_names[0]);
+	clkmain->hw.clk.parent_names = xmemdup(parent_names, parents_array_size);
+	clkmain->hw.clk.num_parents = num_parents;
 
 	/* init.flags = CLK_SET_PARENT_GATE; */
 
@@ -463,11 +463,11 @@ at91_clk_register_sam9x5_main(struct regmap *regmap,
 	regmap_read(clkmain->regmap, AT91_CKGR_MOR, &status);
 	clkmain->parent = clk_main_parent_select(status);
 
-	ret = bclk_register(&clkmain->clk);
+	ret = bclk_register(&clkmain->hw.clk);
 	if (ret) {
 		kfree(clkmain);
 		return ERR_PTR(ret);
 	}
 
-	return &clkmain->clk;
+	return &clkmain->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-master.c b/drivers/clk/at91/clk-master.c
index dcdc4fceda..3e4836b667 100644
--- a/drivers/clk/at91/clk-master.c
+++ b/drivers/clk/at91/clk-master.c
@@ -18,10 +18,10 @@
 #define MASTER_DIV_SHIFT	8
 #define MASTER_DIV_MASK		0x3
 
-#define to_clk_master(clk) container_of(clk, struct clk_master, clk)
+#define to_clk_master(_hw) container_of(_hw, struct clk_master, hw)
 
 struct clk_master {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	const struct clk_master_layout *layout;
 	const struct clk_master_characteristics *characteristics;
@@ -38,9 +38,9 @@ static inline bool clk_master_ready(struct regmap *regmap)
 	return status & AT91_PMC_MCKRDY ? 1 : 0;
 }
 
-static int clk_master_enable(struct clk *clk)
+static int clk_master_enable(struct clk_hw *hw)
 {
-	struct clk_master *master = to_clk_master(clk);
+	struct clk_master *master = to_clk_master(hw);
 
 	while (!clk_master_ready(master->regmap))
 		barrier();
@@ -48,20 +48,20 @@ static int clk_master_enable(struct clk *clk)
 	return 0;
 }
 
-static int clk_master_is_enabled(struct clk *clk)
+static int clk_master_is_enabled(struct clk_hw *hw)
 {
-	struct clk_master *master = to_clk_master(clk);
+	struct clk_master *master = to_clk_master(hw);
 
 	return clk_master_ready(master->regmap);
 }
 
-static unsigned long clk_master_recalc_rate(struct clk *clk,
+static unsigned long clk_master_recalc_rate(struct clk_hw *hw,
 					    unsigned long parent_rate)
 {
 	u8 pres;
 	u8 div;
 	unsigned long rate = parent_rate;
-	struct clk_master *master = to_clk_master(clk);
+	struct clk_master *master = to_clk_master(hw);
 	const struct clk_master_layout *layout = master->layout;
 	const struct clk_master_characteristics *characteristics =
 						master->characteristics;
@@ -88,9 +88,9 @@ static unsigned long clk_master_recalc_rate(struct clk *clk,
 	return rate;
 }
 
-static int clk_master_get_parent(struct clk *clk)
+static int clk_master_get_parent(struct clk_hw *hw)
 {
-	struct clk_master *master = to_clk_master(clk);
+	struct clk_master *master = to_clk_master(hw);
 	unsigned int mckr;
 
 	regmap_read(master->regmap, master->layout->offset, &mckr);
@@ -121,23 +121,23 @@ at91_clk_register_master(struct regmap *regmap,
 
 	master = xzalloc(struct_size(master, parents, num_parents));
 
-	master->clk.name = name;
-	master->clk.ops = &master_ops;
+	master->hw.clk.name = name;
+	master->hw.clk.ops = &master_ops;
 	memcpy(master->parents, parent_names, parent_names_size);
-	master->clk.parent_names = master->parents;
-	master->clk.num_parents = num_parents;
+	master->hw.clk.parent_names = master->parents;
+	master->hw.clk.num_parents = num_parents;
 
 	master->layout = layout;
 	master->characteristics = characteristics;
 	master->regmap = regmap;
 
-	ret = bclk_register(&master->clk);
+	ret = bclk_register(&master->hw.clk);
 	if (ret) {
 		kfree(master);
 		return ERR_PTR(ret);
 	}
 
-	return &master->clk;
+	return &master->hw.clk;
 }
 
 
diff --git a/drivers/clk/at91/clk-peripheral.c b/drivers/clk/at91/clk-peripheral.c
index 055c8c3b98..c768947647 100644
--- a/drivers/clk/at91/clk-peripheral.c
+++ b/drivers/clk/at91/clk-peripheral.c
@@ -23,16 +23,16 @@
 #define PERIPHERAL_MAX_SHIFT	3
 
 struct clk_peripheral {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u32 id;
 	const char *parent;
 };
 
-#define to_clk_peripheral(clk) container_of(clk, struct clk_peripheral, clk)
+#define to_clk_peripheral(_hw) container_of(_hw, struct clk_peripheral, hw)
 
 struct clk_sam9x5_peripheral {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	struct clk_range range;
 	u32 id;
@@ -42,12 +42,12 @@ struct clk_sam9x5_peripheral {
 	const char *parent;
 };
 
-#define to_clk_sam9x5_peripheral(clk) \
-	container_of(clk, struct clk_sam9x5_peripheral, clk)
+#define to_clk_sam9x5_peripheral(_hw) \
+	container_of(_hw, struct clk_sam9x5_peripheral, hw)
 
-static int clk_peripheral_enable(struct clk *clk)
+static int clk_peripheral_enable(struct clk_hw *hw)
 {
-	struct clk_peripheral *periph = to_clk_peripheral(clk);
+	struct clk_peripheral *periph = to_clk_peripheral(hw);
 	int offset = AT91_PMC_PCER;
 	u32 id = periph->id;
 
@@ -60,9 +60,9 @@ static int clk_peripheral_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_peripheral_disable(struct clk *clk)
+static void clk_peripheral_disable(struct clk_hw *hw)
 {
-	struct clk_peripheral *periph = to_clk_peripheral(clk);
+	struct clk_peripheral *periph = to_clk_peripheral(hw);
 	int offset = AT91_PMC_PCDR;
 	u32 id = periph->id;
 
@@ -73,9 +73,9 @@ static void clk_peripheral_disable(struct clk *clk)
 	regmap_write(periph->regmap, offset, PERIPHERAL_MASK(id));
 }
 
-static int clk_peripheral_is_enabled(struct clk *clk)
+static int clk_peripheral_is_enabled(struct clk_hw *hw)
 {
-	struct clk_peripheral *periph = to_clk_peripheral(clk);
+	struct clk_peripheral *periph = to_clk_peripheral(hw);
 	int offset = AT91_PMC_PCSR;
 	unsigned int status;
 	u32 id = periph->id;
@@ -107,25 +107,25 @@ at91_clk_register_peripheral(struct regmap *regmap, const char *name,
 
 	periph = xzalloc(sizeof(*periph));
 
-	periph->clk.name = name;
-	periph->clk.ops = &peripheral_ops;
+	periph->hw.clk.name = name;
+	periph->hw.clk.ops = &peripheral_ops;
 
 	if (parent_name) {
 		periph->parent = parent_name;
-		periph->clk.parent_names = &periph->parent;
-		periph->clk.num_parents = 1;
+		periph->hw.clk.parent_names = &periph->parent;
+		periph->hw.clk.num_parents = 1;
 	}
 
 	periph->id = id;
 	periph->regmap = regmap;
 
-	ret = bclk_register(&periph->clk);
+	ret = bclk_register(&periph->hw.clk);
 	if (ret) {
 		kfree(periph);
 		return ERR_PTR(ret);
 	}
 
-	return &periph->clk;
+	return &periph->hw.clk;
 }
 
 static void clk_sam9x5_peripheral_autodiv(struct clk_sam9x5_peripheral *periph)
@@ -138,7 +138,7 @@ static void clk_sam9x5_peripheral_autodiv(struct clk_sam9x5_peripheral *periph)
 		return;
 
 	if (periph->range.max) {
-		parent = clk_get_parent(&periph->clk);
+		parent = clk_get_parent(&periph->hw.clk);
 		parent_rate = clk_get_rate(parent);
 		if (!parent_rate)
 			return;
@@ -153,9 +153,9 @@ static void clk_sam9x5_peripheral_autodiv(struct clk_sam9x5_peripheral *periph)
 	periph->div = shift;
 }
 
-static int clk_sam9x5_peripheral_enable(struct clk *clk)
+static int clk_sam9x5_peripheral_enable(struct clk_hw *hw)
 {
-	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
 
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return 0;
@@ -172,9 +172,9 @@ static int clk_sam9x5_peripheral_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_sam9x5_peripheral_disable(struct clk *clk)
+static void clk_sam9x5_peripheral_disable(struct clk_hw *hw)
 {
-	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
 
 	if (periph->id < PERIPHERAL_ID_MIN)
 		return;
@@ -186,9 +186,9 @@ static void clk_sam9x5_peripheral_disable(struct clk *clk)
 			  periph->layout->cmd);
 }
 
-static int clk_sam9x5_peripheral_is_enabled(struct clk *clk)
+static int clk_sam9x5_peripheral_is_enabled(struct clk_hw *hw)
 {
-	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
 	unsigned int status;
 
 	if (periph->id < PERIPHERAL_ID_MIN)
@@ -202,10 +202,10 @@ static int clk_sam9x5_peripheral_is_enabled(struct clk *clk)
 }
 
 static unsigned long
-clk_sam9x5_peripheral_recalc_rate(struct clk *clk,
+clk_sam9x5_peripheral_recalc_rate(struct clk_hw *hw,
 				  unsigned long parent_rate)
 {
-	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
 	unsigned int status;
 
 	if (periph->id < PERIPHERAL_ID_MIN)
@@ -225,7 +225,7 @@ clk_sam9x5_peripheral_recalc_rate(struct clk *clk,
 	return parent_rate >> periph->div;
 }
 
-static long clk_sam9x5_peripheral_round_rate(struct clk *clk,
+static long clk_sam9x5_peripheral_round_rate(struct clk_hw *hw,
 					     unsigned long rate,
 					     unsigned long *parent_rate)
 {
@@ -234,7 +234,7 @@ static long clk_sam9x5_peripheral_round_rate(struct clk *clk,
 	unsigned long best_diff;
 	unsigned long cur_rate = *parent_rate;
 	unsigned long cur_diff;
-	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
 
 	if (periph->id < PERIPHERAL_ID_MIN || !periph->range.max)
 		return *parent_rate;
@@ -271,12 +271,12 @@ static long clk_sam9x5_peripheral_round_rate(struct clk *clk,
 	return best_rate;
 }
 
-static int clk_sam9x5_peripheral_set_rate(struct clk *clk,
+static int clk_sam9x5_peripheral_set_rate(struct clk_hw *hw,
 					  unsigned long rate,
 					  unsigned long parent_rate)
 {
 	int shift;
-	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(clk);
+	struct clk_sam9x5_peripheral *periph = to_clk_sam9x5_peripheral(hw);
 	if (periph->id < PERIPHERAL_ID_MIN || !periph->range.max) {
 		if (parent_rate == rate)
 			return 0;
@@ -321,13 +321,13 @@ at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 
 	periph = xzalloc(sizeof(*periph));
 
-	periph->clk.name = name;
-	periph->clk.ops = &sam9x5_peripheral_ops;
+	periph->hw.clk.name = name;
+	periph->hw.clk.ops = &sam9x5_peripheral_ops;
 
 	if (parent_name) {
 		periph->parent = parent_name;
-		periph->clk.parent_names = &periph->parent;
-		periph->clk.num_parents = 1;
+		periph->hw.clk.parent_names = &periph->parent;
+		periph->hw.clk.num_parents = 1;
 	}
 
 	periph->id = id;
@@ -338,7 +338,7 @@ at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 	periph->layout = layout;
 	periph->range = *range;
 
-	ret = bclk_register(&periph->clk);
+	ret = bclk_register(&periph->hw.clk);
 	if (ret) {
 		kfree(periph);
 		return ERR_PTR(ret);
@@ -347,5 +347,5 @@ at91_clk_register_sam9x5_peripheral(struct regmap *regmap,
 	clk_sam9x5_peripheral_autodiv(periph);
 	pmc_register_id(id);
 
-	return &periph->clk;
+	return &periph->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-pll.c b/drivers/clk/at91/clk-pll.c
index 04d915706a..d8ea566f49 100644
--- a/drivers/clk/at91/clk-pll.c
+++ b/drivers/clk/at91/clk-pll.c
@@ -31,10 +31,10 @@
 #define PLL_OUT_SHIFT		14
 #define PLL_MAX_ID		1
 
-#define to_clk_pll(clk) container_of(clk, struct clk_pll, clk)
+#define to_clk_pll(_hw) container_of(_hw, struct clk_pll, hw)
 
 struct clk_pll {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 id;
 	u8 div;
@@ -54,9 +54,9 @@ static inline bool clk_pll_ready(struct regmap *regmap, int id)
 	return status & PLL_STATUS_MASK(id) ? 1 : 0;
 }
 
-static int clk_pll_enable(struct clk *clk)
+static int clk_pll_enable(struct clk_hw *hw)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 	struct regmap *regmap = pll->regmap;
 	const struct clk_pll_layout *layout = pll->layout;
 	const struct clk_pll_characteristics *characteristics =
@@ -97,25 +97,25 @@ static int clk_pll_enable(struct clk *clk)
 	return 0;
 }
 
-static int clk_pll_is_enabled(struct clk *clk)
+static int clk_pll_is_enabled(struct clk_hw *hw)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 
 	return clk_pll_ready(pll->regmap, pll->id);
 }
 
-static void clk_pll_disable(struct clk *clk)
+static void clk_pll_disable(struct clk_hw *hw)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 	unsigned int mask = pll->layout->pllr_mask;
 
 	regmap_write_bits(pll->regmap, PLL_REG(pll->id), mask, ~mask);
 }
 
-static unsigned long clk_pll_recalc_rate(struct clk *clk,
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 
 	if (!pll->div || !pll->mul)
 		return 0;
@@ -233,19 +233,19 @@ static long clk_pll_get_best_div_mul(struct clk_pll *pll, unsigned long rate,
 	return bestrate;
 }
 
-static long clk_pll_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *parent_rate)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 
 	return clk_pll_get_best_div_mul(pll, rate, *parent_rate,
 					NULL, NULL, NULL);
 }
 
-static int clk_pll_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 	long ret;
 	u32 div;
 	u32 mul;
@@ -289,10 +289,10 @@ at91_clk_register_pll(struct regmap *regmap, const char *name,
 	pll = xzalloc(sizeof(*pll));
 
 	pll->parent = parent_name;
-	pll->clk.name = name;
-	pll->clk.ops = &pll_ops;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
+	pll->hw.clk.name = name;
+	pll->hw.clk.ops = &pll_ops;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
 
 	/* init.flags = CLK_SET_RATE_GATE; */
 
@@ -304,13 +304,13 @@ at91_clk_register_pll(struct regmap *regmap, const char *name,
 	pll->div = PLL_DIV(pllr);
 	pll->mul = PLL_MUL(pllr, layout);
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		kfree(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
 
 
diff --git a/drivers/clk/at91/clk-plldiv.c b/drivers/clk/at91/clk-plldiv.c
index 3a8b0dc9ee..2830b16722 100644
--- a/drivers/clk/at91/clk-plldiv.c
+++ b/drivers/clk/at91/clk-plldiv.c
@@ -14,18 +14,18 @@
 
 #include "pmc.h"
 
-#define to_clk_plldiv(hw) container_of(clk, struct clk_plldiv, clk)
+#define to_clk_plldiv(_hw) container_of(_hw, struct clk_plldiv, hw)
 
 struct clk_plldiv {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	const char *parent;
 };
 
-static unsigned long clk_plldiv_recalc_rate(struct clk *clk,
+static unsigned long clk_plldiv_recalc_rate(struct clk_hw *hw,
 					    unsigned long parent_rate)
 {
-	struct clk_plldiv *plldiv = to_clk_plldiv(clk);
+	struct clk_plldiv *plldiv = to_clk_plldiv(hw);
 	unsigned int mckr;
 
 	regmap_read(plldiv->regmap, AT91_PMC_MCKR, &mckr);
@@ -36,7 +36,7 @@ static unsigned long clk_plldiv_recalc_rate(struct clk *clk,
 	return parent_rate;
 }
 
-static long clk_plldiv_round_rate(struct clk *clk, unsigned long rate,
+static long clk_plldiv_round_rate(struct clk_hw *hw, unsigned long rate,
 				  unsigned long *parent_rate)
 {
 	unsigned long div;
@@ -53,10 +53,10 @@ static long clk_plldiv_round_rate(struct clk *clk, unsigned long rate,
 	return *parent_rate;
 }
 
-static int clk_plldiv_set_rate(struct clk *clk, unsigned long rate,
+static int clk_plldiv_set_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long parent_rate)
 {
-	struct clk_plldiv *plldiv = to_clk_plldiv(clk);
+	struct clk_plldiv *plldiv = to_clk_plldiv(hw);
 
 	if ((parent_rate != rate) && (parent_rate / 2 != rate))
 		return -EINVAL;
@@ -82,24 +82,24 @@ at91_clk_register_plldiv(struct regmap *regmap, const char *name,
 
 	plldiv = xzalloc(sizeof(*plldiv));
 
-	plldiv->clk.name = name;
-	plldiv->clk.ops  = &plldiv_ops;
+	plldiv->hw.clk.name = name;
+	plldiv->hw.clk.ops  = &plldiv_ops;
 
 	if (parent_name) {
 		plldiv->parent = parent_name;
-		plldiv->clk.parent_names = &plldiv->parent;
-		plldiv->clk.num_parents = 1;
+		plldiv->hw.clk.parent_names = &plldiv->parent;
+		plldiv->hw.clk.num_parents = 1;
 	}
 
 	/* init.flags = CLK_SET_RATE_GATE; */
 
 	plldiv->regmap = regmap;
 
-	ret = bclk_register(&plldiv->clk);
+	ret = bclk_register(&plldiv->hw.clk);
 	if (ret) {
 		kfree(plldiv);
 		return ERR_PTR(ret);
 	}
 
-	return &plldiv->clk;
+	return &plldiv->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-programmable.c b/drivers/clk/at91/clk-programmable.c
index 70a8ca6d93..ec53f1addd 100644
--- a/drivers/clk/at91/clk-programmable.c
+++ b/drivers/clk/at91/clk-programmable.c
@@ -22,19 +22,19 @@
 #define PROG_MAX_RM9200_CSS	3
 
 struct clk_programmable {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 id;
 	const struct clk_programmable_layout *layout;
 	const char *parent_names[];
 };
 
-#define to_clk_programmable(clk) container_of(clk, struct clk_programmable, clk)
+#define to_clk_programmable(_hw) container_of(_hw, struct clk_programmable, hw)
 
-static unsigned long clk_programmable_recalc_rate(struct clk *clk,
+static unsigned long clk_programmable_recalc_rate(struct clk_hw *hw,
 						  unsigned long parent_rate)
 {
-	struct clk_programmable *prog = to_clk_programmable(clk);
+	struct clk_programmable *prog = to_clk_programmable(hw);
 	const struct clk_programmable_layout *layout = prog->layout;
 	unsigned int pckr;
 	unsigned long rate;
@@ -49,9 +49,9 @@ static unsigned long clk_programmable_recalc_rate(struct clk *clk,
 	return rate;
 }
 
-static int clk_programmable_set_parent(struct clk *clk, u8 index)
+static int clk_programmable_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_programmable *prog = to_clk_programmable(clk);
+	struct clk_programmable *prog = to_clk_programmable(hw);
 	const struct clk_programmable_layout *layout = prog->layout;
 	unsigned int mask = layout->css_mask;
 	unsigned int pckr = index;
@@ -71,9 +71,9 @@ static int clk_programmable_set_parent(struct clk *clk, u8 index)
 	return 0;
 }
 
-static int clk_programmable_get_parent(struct clk *clk)
+static int clk_programmable_get_parent(struct clk_hw *hw)
 {
-	struct clk_programmable *prog = to_clk_programmable(clk);
+	struct clk_programmable *prog = to_clk_programmable(hw);
 	const struct clk_programmable_layout *layout = prog->layout;
 	unsigned int pckr;
 	u8 ret;
@@ -88,10 +88,10 @@ static int clk_programmable_get_parent(struct clk *clk)
 	return ret;
 }
 
-static int clk_programmable_set_rate(struct clk *clk, unsigned long rate,
+static int clk_programmable_set_rate(struct clk_hw *hw, unsigned long rate,
 				     unsigned long parent_rate)
 {
-	struct clk_programmable *prog = to_clk_programmable(clk);
+	struct clk_programmable *prog = to_clk_programmable(hw);
 	const struct clk_programmable_layout *layout = prog->layout;
 	unsigned long div = parent_rate / rate;
 	int shift = 0;
@@ -144,19 +144,19 @@ at91_clk_register_programmable(struct regmap *regmap,
 	if (!prog)
 		return ERR_PTR(-ENOMEM);
 
-	prog->clk.name = name;
-	prog->clk.ops = &programmable_ops;
+	prog->hw.clk.name = name;
+	prog->hw.clk.ops = &programmable_ops;
 	memcpy(prog->parent_names, parent_names,
 	       num_parents * sizeof(prog->parent_names[0]));
-	prog->clk.parent_names = &prog->parent_names[0];
-	prog->clk.num_parents = num_parents;
+	prog->hw.clk.parent_names = &prog->parent_names[0];
+	prog->hw.clk.num_parents = num_parents;
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
 
 	prog->id = id;
 	prog->layout = layout;
 	prog->regmap = regmap;
 
-	ret = bclk_register(&prog->clk);
+	ret = bclk_register(&prog->hw.clk);
 	if (ret) {
 		kfree(prog);
 		return ERR_PTR(ret);
@@ -164,7 +164,7 @@ at91_clk_register_programmable(struct regmap *regmap,
 
 	pmc_register_pck(id);
 
-	return &prog->clk;
+	return &prog->hw.clk;
 }
 
 const struct clk_programmable_layout at91rm9200_programmable_layout = {
diff --git a/drivers/clk/at91/clk-sam9x60-pll.c b/drivers/clk/at91/clk-sam9x60-pll.c
index 91c6b62667..744c3833bb 100644
--- a/drivers/clk/at91/clk-sam9x60-pll.c
+++ b/drivers/clk/at91/clk-sam9x60-pll.c
@@ -55,7 +55,7 @@ struct sam9x60_pll {
 	const char *parent_name;
 };
 
-#define to_sam9x60_pll(clk) container_of(clk, struct sam9x60_pll, clk)
+#define to_sam9x60_pll(_hw) container_of(_hw->clk, struct sam9x60_pll, clk)
 
 static inline bool sam9x60_pll_ready(struct regmap *regmap, int id)
 {
@@ -66,9 +66,9 @@ static inline bool sam9x60_pll_ready(struct regmap *regmap, int id)
 	return !!(status & BIT(id));
 }
 
-static int sam9x60_pll_enable(struct clk *clk)
+static int sam9x60_pll_enable(struct clk_hw *hw)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
 	struct regmap *regmap = pll->regmap;
 	u8 div;
 	u16 mul;
@@ -127,16 +127,16 @@ static int sam9x60_pll_enable(struct clk *clk)
 	return 0;
 }
 
-static int sam9x60_pll_is_enabled(struct clk *clk)
+static int sam9x60_pll_is_enabled(struct clk_hw *hw)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
 
 	return sam9x60_pll_ready(pll->regmap, pll->id);
 }
 
-static void sam9x60_pll_disable(struct clk *clk)
+static void sam9x60_pll_disable(struct clk_hw *hw)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
 
 	regmap_write(pll->regmap, PMC_PLL_UPDT, pll->id);
 
@@ -156,10 +156,10 @@ static void sam9x60_pll_disable(struct clk *clk)
 			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);
 }
 
-static unsigned long sam9x60_pll_recalc_rate(struct clk *clk,
+static unsigned long sam9x60_pll_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
 
 	return (parent_rate * (pll->mul + 1)) / (pll->div + 1);
 }
@@ -253,18 +253,18 @@ static long sam9x60_pll_get_best_div_mul(struct sam9x60_pll *pll,
 	return bestrate;
 }
 
-static long sam9x60_pll_round_rate(struct clk *clk, unsigned long rate,
+static long sam9x60_pll_round_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long *parent_rate)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
 
 	return sam9x60_pll_get_best_div_mul(pll, rate, *parent_rate, false);
 }
 
-static int sam9x60_pll_set_rate(struct clk *clk, unsigned long rate,
+static int sam9x60_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate)
 {
-	struct sam9x60_pll *pll = to_sam9x60_pll(clk);
+	struct sam9x60_pll *pll = to_sam9x60_pll(hw);
 
 	return sam9x60_pll_get_best_div_mul(pll, rate, parent_rate, true);
 }
diff --git a/drivers/clk/at91/clk-slow.c b/drivers/clk/at91/clk-slow.c
index 1768f0ad5e..bc4285e4bf 100644
--- a/drivers/clk/at91/clk-slow.c
+++ b/drivers/clk/at91/clk-slow.c
@@ -18,16 +18,16 @@
 #include "pmc.h"
 
 struct clk_sam9260_slow {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	const char *parent_names[];
 };
 
-#define to_clk_sam9260_slow(clk) container_of(clk, struct clk_sam9260_slow, clk)
+#define to_clk_sam9260_slow(_hw) container_of(_hw, struct clk_sam9260_slow, hw)
 
-static int clk_sam9260_slow_get_parent(struct clk *clk)
+static int clk_sam9260_slow_get_parent(struct clk_hw *hw)
 {
-	struct clk_sam9260_slow *slowck = to_clk_sam9260_slow(clk);
+	struct clk_sam9260_slow *slowck = to_clk_sam9260_slow(hw);
 	unsigned int status;
 
 	regmap_read(slowck->regmap, AT91_PMC_SR, &status);
@@ -55,19 +55,19 @@ at91_clk_register_sam9260_slow(struct regmap *regmap,
 		return ERR_PTR(-EINVAL);
 
 	slowck = xzalloc(struct_size(slowck, parent_names, num_parents));
-	slowck->clk.name = name;
-	slowck->clk.ops = &sam9260_slow_ops;
+	slowck->hw.clk.name = name;
+	slowck->hw.clk.ops = &sam9260_slow_ops;
 	memcpy(slowck->parent_names, parent_names,
 	       num_parents * sizeof(slowck->parent_names[0]));
-	slowck->clk.parent_names = slowck->parent_names;
-	slowck->clk.num_parents = num_parents;
+	slowck->hw.clk.parent_names = slowck->parent_names;
+	slowck->hw.clk.num_parents = num_parents;
 	slowck->regmap = regmap;
 
-	ret = bclk_register(&slowck->clk);
+	ret = bclk_register(&slowck->hw.clk);
 	if (ret) {
 		kfree(slowck);
 		return ERR_PTR(ret);
 	}
 
-	return &slowck->clk;
+	return &slowck->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-smd.c b/drivers/clk/at91/clk-smd.c
index ad376d03c9..6df698637c 100644
--- a/drivers/clk/at91/clk-smd.c
+++ b/drivers/clk/at91/clk-smd.c
@@ -21,18 +21,18 @@
 #define SMD_MAX_DIV		0xf
 
 struct at91sam9x5_clk_smd {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	const char *parent_names[];
 };
 
-#define to_at91sam9x5_clk_smd(clk) \
-	container_of(clk, struct at91sam9x5_clk_smd, clk)
+#define to_at91sam9x5_clk_smd(_hw) \
+	container_of(_hw, struct at91sam9x5_clk_smd, hw)
 
-static unsigned long at91sam9x5_clk_smd_recalc_rate(struct clk *clk,
+static unsigned long at91sam9x5_clk_smd_recalc_rate(struct clk_hw *hw,
 						    unsigned long parent_rate)
 {
-	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(hw);
 	unsigned int smdr;
 	u8 smddiv;
 
@@ -42,7 +42,7 @@ static unsigned long at91sam9x5_clk_smd_recalc_rate(struct clk *clk,
 	return parent_rate / (smddiv + 1);
 }
 
-static long at91sam9x5_clk_smd_round_rate(struct clk *clk, unsigned long rate,
+static long at91sam9x5_clk_smd_round_rate(struct clk_hw *hw, unsigned long rate,
 					  unsigned long *parent_rate)
 {
 	unsigned long div;
@@ -64,9 +64,9 @@ static long at91sam9x5_clk_smd_round_rate(struct clk *clk, unsigned long rate,
 	return bestrate;
 }
 
-static int at91sam9x5_clk_smd_set_parent(struct clk *clk, u8 index)
+static int at91sam9x5_clk_smd_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(hw);
 
 	if (index > 1)
 		return -EINVAL;
@@ -77,9 +77,9 @@ static int at91sam9x5_clk_smd_set_parent(struct clk *clk, u8 index)
 	return 0;
 }
 
-static int at91sam9x5_clk_smd_get_parent(struct clk *clk)
+static int at91sam9x5_clk_smd_get_parent(struct clk_hw *hw)
 {
-	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(hw);
 	unsigned int smdr;
 
 	regmap_read(smd->regmap, AT91_PMC_SMD, &smdr);
@@ -87,10 +87,10 @@ static int at91sam9x5_clk_smd_get_parent(struct clk *clk)
 	return smdr & AT91_PMC_SMDS;
 }
 
-static int at91sam9x5_clk_smd_set_rate(struct clk *clk, unsigned long rate,
+static int at91sam9x5_clk_smd_set_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long parent_rate)
 {
-	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(clk);
+	struct at91sam9x5_clk_smd *smd = to_at91sam9x5_clk_smd(hw);
 	unsigned long div = parent_rate / rate;
 
 	if (parent_rate % rate || div < 1 || div > (SMD_MAX_DIV + 1))
@@ -118,20 +118,20 @@ at91sam9x5_clk_register_smd(struct regmap *regmap, const char *name,
 	int ret;
 
 	smd = xzalloc(struct_size(smd, parent_names, num_parents));
-	smd->clk.name = name;
-	smd->clk.ops = &at91sam9x5_smd_ops;
+	smd->hw.clk.name = name;
+	smd->hw.clk.ops = &at91sam9x5_smd_ops;
 	memcpy(smd->parent_names, parent_names,
 	       num_parents * sizeof(smd->parent_names[0]));
-	smd->clk.parent_names = smd->parent_names;
-	smd->clk.num_parents = num_parents;
+	smd->hw.clk.parent_names = smd->parent_names;
+	smd->hw.clk.num_parents = num_parents;
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
 	smd->regmap = regmap;
 
-	ret = bclk_register(&smd->clk);
+	ret = bclk_register(&smd->hw.clk);
 	if (ret) {
 		kfree(smd);
 		return ERR_PTR(ret);
 	}
 
-	return &smd->clk;
+	return &smd->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-system.c b/drivers/clk/at91/clk-system.c
index db9d7b3d61..9a15d5b04a 100644
--- a/drivers/clk/at91/clk-system.c
+++ b/drivers/clk/at91/clk-system.c
@@ -17,9 +17,9 @@
 
 #define SYSTEM_MAX_NAME_SZ	32
 
-#define to_clk_system(clk) container_of(clk, struct clk_system, clk)
+#define to_clk_system(_hw) container_of(_hw, struct clk_system, hw)
 struct clk_system {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u8 id;
 	const char *parent_name;
@@ -39,9 +39,9 @@ static inline bool clk_system_ready(struct regmap *regmap, int id)
 	return status & (1 << id) ? 1 : 0;
 }
 
-static int clk_system_enable(struct clk *clk)
+static int clk_system_enable(struct clk_hw *hw)
 {
-	struct clk_system *sys = to_clk_system(clk);
+	struct clk_system *sys = to_clk_system(hw);
 
 	regmap_write(sys->regmap, AT91_PMC_SCER, 1 << sys->id);
 
@@ -54,16 +54,16 @@ static int clk_system_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_system_disable(struct clk *clk)
+static void clk_system_disable(struct clk_hw *hw)
 {
-	struct clk_system *sys = to_clk_system(clk);
+	struct clk_system *sys = to_clk_system(hw);
 
 	regmap_write(sys->regmap, AT91_PMC_SCDR, 1 << sys->id);
 }
 
-static int clk_system_is_enabled(struct clk *clk)
+static int clk_system_is_enabled(struct clk_hw *hw)
 {
-	struct clk_system *sys = to_clk_system(clk);
+	struct clk_system *sys = to_clk_system(hw);
 	unsigned int status;
 
 	regmap_read(sys->regmap, AT91_PMC_SCSR, &status);
@@ -96,20 +96,20 @@ at91_clk_register_system(struct regmap *regmap, const char *name,
 		return ERR_PTR(-EINVAL);
 
 	sys = xzalloc(sizeof(*sys));
-	sys->clk.name = name;
-	sys->clk.ops = &system_ops;
+	sys->hw.clk.name = name;
+	sys->hw.clk.ops = &system_ops;
 	sys->parent_name = parent_name;
-	sys->clk.parent_names = &sys->parent_name;
-	sys->clk.num_parents = 1;
+	sys->hw.clk.parent_names = &sys->parent_name;
+	sys->hw.clk.num_parents = 1;
 	/* init.flags = CLK_SET_RATE_PARENT; */
 	sys->id = id;
 	sys->regmap = regmap;
 
-	ret = bclk_register(&sys->clk);
+	ret = bclk_register(&sys->hw.clk);
 	if (ret) {
 		kfree(sys);
 		return ERR_PTR(ret);
 	}
 
-	return &sys->clk;
+	return &sys->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-usb.c b/drivers/clk/at91/clk-usb.c
index d60232f771..148befc8ac 100644
--- a/drivers/clk/at91/clk-usb.c
+++ b/drivers/clk/at91/clk-usb.c
@@ -27,30 +27,30 @@
 #define SAM9X60_USBS_MASK	GENMASK(1, 0)
 
 struct at91sam9x5_clk_usb {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u32 usbs_mask;
 	u8 num_parents;
 	const char *parent_names[];
 };
 
-#define to_at91sam9x5_clk_usb(clk) \
-	container_of(clk, struct at91sam9x5_clk_usb, clk)
+#define to_at91sam9x5_clk_usb(_hw) \
+	container_of(_hw, struct at91sam9x5_clk_usb, hw)
 
 struct at91rm9200_clk_usb {
-	struct clk clk;
+	struct clk_hw hw;
 	struct regmap *regmap;
 	u32 divisors[4];
 	const char *parent_name;
 };
 
-#define to_at91rm9200_clk_usb(clk) \
-	container_of(clk, struct at91rm9200_clk_usb, clk)
+#define to_at91rm9200_clk_usb(_hw) \
+	container_of(_hw, struct at91rm9200_clk_usb, hw)
 
-static unsigned long at91sam9x5_clk_usb_recalc_rate(struct clk *clk,
+static unsigned long at91sam9x5_clk_usb_recalc_rate(struct clk_hw *hw,
 						    unsigned long parent_rate)
 {
-	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 	unsigned int usbr;
 	u8 usbdiv;
 
@@ -60,9 +60,9 @@ static unsigned long at91sam9x5_clk_usb_recalc_rate(struct clk *clk,
 	return DIV_ROUND_CLOSEST(parent_rate, (usbdiv + 1));
 }
 
-static int at91sam9x5_clk_usb_set_parent(struct clk *clk, u8 index)
+static int at91sam9x5_clk_usb_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 
 	if (index >= usb->num_parents)
 		return -EINVAL;
@@ -72,9 +72,9 @@ static int at91sam9x5_clk_usb_set_parent(struct clk *clk, u8 index)
 	return 0;
 }
 
-static int at91sam9x5_clk_usb_get_parent(struct clk *clk)
+static int at91sam9x5_clk_usb_get_parent(struct clk_hw *hw)
 {
-	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 	unsigned int usbr;
 
 	regmap_read(usb->regmap, AT91_PMC_USB, &usbr);
@@ -82,10 +82,10 @@ static int at91sam9x5_clk_usb_get_parent(struct clk *clk)
 	return usbr & usb->usbs_mask;
 }
 
-static int at91sam9x5_clk_usb_set_rate(struct clk *clk, unsigned long rate,
+static int at91sam9x5_clk_usb_set_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long parent_rate)
 {
-	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 	unsigned long div;
 
 	if (!rate)
@@ -108,9 +108,9 @@ static const struct clk_ops at91sam9x5_usb_ops = {
 	.set_rate = at91sam9x5_clk_usb_set_rate,
 };
 
-static int at91sam9n12_clk_usb_enable(struct clk *clk)
+static int at91sam9n12_clk_usb_enable(struct clk_hw *hw)
 {
-	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 
 	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS,
 			  AT91_PMC_USBS);
@@ -118,16 +118,16 @@ static int at91sam9n12_clk_usb_enable(struct clk *clk)
 	return 0;
 }
 
-static void at91sam9n12_clk_usb_disable(struct clk *clk)
+static void at91sam9n12_clk_usb_disable(struct clk_hw *hw)
 {
-	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 
 	regmap_write_bits(usb->regmap, AT91_PMC_USB, AT91_PMC_USBS, 0);
 }
 
-static int at91sam9n12_clk_usb_is_enabled(struct clk *clk)
+static int at91sam9n12_clk_usb_is_enabled(struct clk_hw *hw)
 {
-	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(clk);
+	struct at91sam9x5_clk_usb *usb = to_at91sam9x5_clk_usb(hw);
 	unsigned int usbr;
 
 	regmap_read(usb->regmap, AT91_PMC_USB, &usbr);
@@ -152,26 +152,26 @@ _at91sam9x5_clk_register_usb(struct regmap *regmap, const char *name,
 	int ret;
 
 	usb = kzalloc(struct_size(usb, parent_names, num_parents), GFP_KERNEL);
-	usb->clk.name = name;
-	usb->clk.ops = &at91sam9x5_usb_ops;
+	usb->hw.clk.name = name;
+	usb->hw.clk.ops = &at91sam9x5_usb_ops;
 	memcpy(usb->parent_names, parent_names,
 	       num_parents * sizeof(usb->parent_names[0]));
-	usb->clk.parent_names = usb->parent_names;
-	usb->clk.num_parents = num_parents;
-	usb->clk.flags = CLK_SET_RATE_PARENT;
+	usb->hw.clk.parent_names = usb->parent_names;
+	usb->hw.clk.num_parents = num_parents;
+	usb->hw.clk.flags = CLK_SET_RATE_PARENT;
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE | */
 	/* 	     CLK_SET_RATE_PARENT; */
 	usb->regmap = regmap;
 	usb->usbs_mask = usbs_mask;
 	usb->num_parents = num_parents;
 
-	ret = bclk_register(&usb->clk);
+	ret = bclk_register(&usb->hw.clk);
 	if (ret) {
 		kfree(usb);
 		return ERR_PTR(ret);
 	}
 
-	return &usb->clk;
+	return &usb->hw.clk;
 }
 
 struct clk * __init
@@ -198,27 +198,27 @@ at91sam9n12_clk_register_usb(struct regmap *regmap, const char *name,
 	int ret;
 
 	usb = xzalloc(sizeof(*usb));
-	usb->clk.name = name;
-	usb->clk.ops = &at91sam9n12_usb_ops;
+	usb->hw.clk.name = name;
+	usb->hw.clk.ops = &at91sam9n12_usb_ops;
 	usb->parent_names[0] = parent_name;
-	usb->clk.parent_names = &usb->parent_names[0];
-	usb->clk.num_parents = 1;
+	usb->hw.clk.parent_names = &usb->parent_names[0];
+	usb->hw.clk.num_parents = 1;
 	/* init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT; */
 	usb->regmap = regmap;
 
-	ret = bclk_register(&usb->clk);
+	ret = bclk_register(&usb->hw.clk);
 	if (ret) {
 		kfree(usb);
 		return ERR_PTR(ret);
 	}
 
-	return &usb->clk;
+	return &usb->hw.clk;
 }
 
-static unsigned long at91rm9200_clk_usb_recalc_rate(struct clk *clk,
+static unsigned long at91rm9200_clk_usb_recalc_rate(struct clk_hw *hw,
 						    unsigned long parent_rate)
 {
-	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(clk);
+	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(hw);
 	unsigned int pllbr;
 	u8 usbdiv;
 
@@ -231,11 +231,11 @@ static unsigned long at91rm9200_clk_usb_recalc_rate(struct clk *clk,
 	return 0;
 }
 
-static long at91rm9200_clk_usb_round_rate(struct clk *clk, unsigned long rate,
+static long at91rm9200_clk_usb_round_rate(struct clk_hw *hw, unsigned long rate,
 					  unsigned long *parent_rate)
 {
-	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(clk);
-	struct clk *parent = clk_get_parent(clk);
+	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(hw);
+	struct clk *parent = clk_get_parent(clk_hw_to_clk(hw));
 	unsigned long bestrate = 0;
 	int bestdiff = -1;
 	unsigned long tmprate;
@@ -272,11 +272,11 @@ static long at91rm9200_clk_usb_round_rate(struct clk *clk, unsigned long rate,
 	return bestrate;
 }
 
-static int at91rm9200_clk_usb_set_rate(struct clk *clk, unsigned long rate,
+static int at91rm9200_clk_usb_set_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long parent_rate)
 {
 	int i;
-	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(clk);
+	struct at91rm9200_clk_usb *usb = to_at91rm9200_clk_usb(hw);
 	unsigned long div;
 
 	if (!rate)
@@ -311,21 +311,21 @@ at91rm9200_clk_register_usb(struct regmap *regmap, const char *name,
 	int ret;
 
 	usb = xzalloc(sizeof(*usb));
-	usb->clk.name = name;
-	usb->clk.ops = &at91rm9200_usb_ops;
+	usb->hw.clk.name = name;
+	usb->hw.clk.ops = &at91rm9200_usb_ops;
 	usb->parent_name = parent_name;
-	usb->clk.parent_names = &usb->parent_name;
-	usb->clk.num_parents = 1;
+	usb->hw.clk.parent_names = &usb->parent_name;
+	usb->hw.clk.num_parents = 1;
 	/* init.flags = CLK_SET_RATE_PARENT; */
 
 	usb->regmap = regmap;
 	memcpy(usb->divisors, divisors, sizeof(usb->divisors));
 
-	ret = bclk_register(&usb->clk);
+	ret = bclk_register(&usb->hw.clk);
 	if (ret) {
 		kfree(usb);
 		return ERR_PTR(ret);
 	}
 
-	return &usb->clk;
+	return &usb->hw.clk;
 }
diff --git a/drivers/clk/at91/clk-utmi.c b/drivers/clk/at91/clk-utmi.c
index df3904e5a0..1389983bde 100644
--- a/drivers/clk/at91/clk-utmi.c
+++ b/drivers/clk/at91/clk-utmi.c
@@ -22,13 +22,13 @@
 #define UTMI_RATE      480000000
 
 struct clk_utmi {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	struct regmap *regmap_pmc;
 	struct regmap *regmap_sfr;
 };
 
-#define to_clk_utmi(clk) container_of(clk, struct clk_utmi, clk)
+#define to_clk_utmi(_hw) container_of(_hw, struct clk_utmi, hw)
 
 static inline bool clk_utmi_ready(struct regmap *regmap)
 {
@@ -39,10 +39,10 @@ static inline bool clk_utmi_ready(struct regmap *regmap)
 	return status & AT91_PMC_LOCKU;
 }
 
-static int clk_utmi_enable(struct clk *clk)
+static int clk_utmi_enable(struct clk_hw *hw)
 {
 	struct clk *hw_parent;
-	struct clk_utmi *utmi = to_clk_utmi(clk);
+	struct clk_utmi *utmi = to_clk_utmi(hw);
 	unsigned int uckr = AT91_PMC_UPLLEN | AT91_PMC_UPLLCOUNT |
 			    AT91_PMC_BIASEN;
 	unsigned int utmi_ref_clk_freq;
@@ -53,7 +53,7 @@ static int clk_utmi_enable(struct clk *clk)
 	 * FREQ field of the SFR_UTMICKTRIM register to generate properly
 	 * the utmi clock.
 	 */
-	hw_parent = clk_get_parent(clk);
+	hw_parent = clk_get_parent(clk_hw_to_clk(hw));
 	parent_rate = clk_get_rate(hw_parent);
 
 	switch (parent_rate) {
@@ -95,22 +95,22 @@ static int clk_utmi_enable(struct clk *clk)
 	return 0;
 }
 
-static int clk_utmi_is_enabled(struct clk *clk)
+static int clk_utmi_is_enabled(struct clk_hw *hw)
 {
-	struct clk_utmi *utmi = to_clk_utmi(clk);
+	struct clk_utmi *utmi = to_clk_utmi(hw);
 
 	return clk_utmi_ready(utmi->regmap_pmc);
 }
 
-static void clk_utmi_disable(struct clk *clk)
+static void clk_utmi_disable(struct clk_hw *hw)
 {
-	struct clk_utmi *utmi = to_clk_utmi(clk);
+	struct clk_utmi *utmi = to_clk_utmi(hw);
 
 	regmap_write_bits(utmi->regmap_pmc, AT91_CKGR_UCKR,
 			  AT91_PMC_UPLLEN, 0);
 }
 
-static unsigned long clk_utmi_recalc_rate(struct clk *clk,
+static unsigned long clk_utmi_recalc_rate(struct clk_hw *hw,
 					  unsigned long parent_rate)
 {
 	/* UTMI clk rate is fixed */
@@ -133,13 +133,13 @@ at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
 
 	utmi = xzalloc(sizeof(*utmi));
 
-	utmi->clk.name = name;
-	utmi->clk.ops = &utmi_ops;
+	utmi->hw.clk.name = name;
+	utmi->hw.clk.ops = &utmi_ops;
 
 	if (parent_name) {
 		utmi->parent = parent_name;
-		utmi->clk.parent_names = &utmi->parent;
-		utmi->clk.num_parents = 1;
+		utmi->hw.clk.parent_names = &utmi->parent;
+		utmi->hw.clk.num_parents = 1;
 	}
 
 	/* utmi->clk.flags = CLK_SET_RATE_GATE; */
@@ -147,11 +147,11 @@ at91_clk_register_utmi(struct regmap *regmap_pmc, struct regmap *regmap_sfr,
 	utmi->regmap_pmc = regmap_pmc;
 	utmi->regmap_sfr = regmap_sfr;
 
-	ret = bclk_register(&utmi->clk);
+	ret = bclk_register(&utmi->hw.clk);
 	if (ret) {
 		kfree(utmi);
 		return ERR_PTR(ret);
 	}
 
-	return &utmi->clk;
+	return &utmi->hw.clk;
 }
diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
index bf55589c80..579fbf2479 100644
--- a/drivers/clk/at91/sckc.c
+++ b/drivers/clk/at91/sckc.c
@@ -34,17 +34,17 @@ struct clk_slow_bits {
 };
 
 struct clk_slow_osc {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
 	const char *parent_name;
 };
 
-#define to_clk_slow_osc(clk) container_of(clk, struct clk_slow_osc, clk)
+#define to_clk_slow_osc(_hw) container_of(_hw, struct clk_slow_osc, hw)
 
 struct clk_sama5d4_slow_osc {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	unsigned long startup_usec;
@@ -52,10 +52,10 @@ struct clk_sama5d4_slow_osc {
 	const char *parent_name;
 };
 
-#define to_clk_sama5d4_slow_osc(clk) container_of(clk, struct clk_sama5d4_slow_osc, clk)
+#define to_clk_sama5d4_slow_osc(_hw) container_of(_hw, struct clk_sama5d4_slow_osc, hw)
 
 struct clk_slow_rc_osc {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	unsigned long frequency;
@@ -63,21 +63,21 @@ struct clk_slow_rc_osc {
 	const char *parent_name;
 };
 
-#define to_clk_slow_rc_osc(clk) container_of(clk, struct clk_slow_rc_osc, clk)
+#define to_clk_slow_rc_osc(_hw) container_of(_hw, struct clk_slow_rc_osc, hw)
 
 struct clk_sam9x5_slow {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *sckcr;
 	const struct clk_slow_bits *bits;
 	u8 parent;
 	const char *parent_names[];
 };
 
-#define to_clk_sam9x5_slow(clk) container_of(clk, struct clk_sam9x5_slow, clk)
+#define to_clk_sam9x5_slow(_hw) container_of(_hw, struct clk_sam9x5_slow, hw)
 
-static int clk_slow_osc_enable(struct clk *clk)
+static int clk_slow_osc_enable(struct clk_hw *hw)
 {
-	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
+	struct clk_slow_osc *osc = to_clk_slow_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
@@ -91,9 +91,9 @@ static int clk_slow_osc_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_slow_osc_disable(struct clk *clk)
+static void clk_slow_osc_disable(struct clk_hw *hw)
 {
-	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
+	struct clk_slow_osc *osc = to_clk_slow_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
@@ -103,9 +103,9 @@ static void clk_slow_osc_disable(struct clk *clk)
 	writel(tmp & ~osc->bits->cr_osc32en, sckcr);
 }
 
-static int clk_slow_osc_is_enabled(struct clk *clk)
+static int clk_slow_osc_is_enabled(struct clk_hw *hw)
 {
-	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
+	struct clk_slow_osc *osc = to_clk_slow_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 	u32 tmp = readl(sckcr);
 
@@ -137,11 +137,11 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 
 	osc = xzalloc(sizeof(*osc));
 
-	osc->clk.name = name;
-	osc->clk.ops = &slow_osc_ops;
+	osc->hw.clk.name = name;
+	osc->hw.clk.ops = &slow_osc_ops;
 	osc->parent_name = parent_name;
-	osc->clk.parent_names = &osc->parent_name;
-	osc->clk.num_parents = 1;
+	osc->hw.clk.parent_names = &osc->parent_name;
+	osc->hw.clk.num_parents = 1;
 	/* osc->clk.flags = CLK_IGNORE_UNUSED; */
 
 	osc->sckcr = sckcr;
@@ -152,34 +152,34 @@ at91_clk_register_slow_osc(void __iomem *sckcr,
 		writel((readl(sckcr) & ~osc->bits->cr_osc32en) |
 					osc->bits->cr_osc32byp, sckcr);
 
-	ret = bclk_register(&osc->clk);
+	ret = bclk_register(&osc->hw.clk);
 	if (ret) {
 		kfree(osc);
 		return ERR_PTR(ret);
 	}
 
-	return &osc->clk;
+	return &osc->hw.clk;
 }
 
 static void at91_clk_unregister_slow_osc(struct clk *clk)
 {
-	struct clk_slow_osc *osc = to_clk_slow_osc(clk);
+	struct clk_slow_osc *osc = to_clk_slow_osc(clk_to_clk_hw(clk));
 
 	clk_unregister(clk);
 	kfree(osc);
 }
 
-static unsigned long clk_slow_rc_osc_recalc_rate(struct clk *clk,
+static unsigned long clk_slow_rc_osc_recalc_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
 {
-	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 
 	return osc->frequency;
 }
 
-static int clk_slow_rc_osc_enable(struct clk *clk)
+static int clk_slow_rc_osc_enable(struct clk_hw *hw)
 {
-	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 
 	writel(readl(sckcr) | osc->bits->cr_rcen, sckcr);
@@ -189,17 +189,17 @@ static int clk_slow_rc_osc_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_slow_rc_osc_disable(struct clk *clk)
+static void clk_slow_rc_osc_disable(struct clk_hw *hw)
 {
-	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 	void __iomem *sckcr = osc->sckcr;
 
 	writel(readl(sckcr) & ~osc->bits->cr_rcen, sckcr);
 }
 
-static int clk_slow_rc_osc_is_enabled(struct clk *clk)
+static int clk_slow_rc_osc_is_enabled(struct clk_hw *hw)
 {
-	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(hw);
 
 	return !!(readl(osc->sckcr) & osc->bits->cr_rcen);
 }
@@ -226,10 +226,10 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 		return ERR_PTR(-EINVAL);
 
 	osc = xzalloc(sizeof(*osc));
-	osc->clk.name = name;
-	osc->clk.ops = &slow_rc_osc_ops;
-	osc->clk.parent_names = NULL;
-	osc->clk.num_parents = 0;
+	osc->hw.clk.name = name;
+	osc->hw.clk.ops = &slow_rc_osc_ops;
+	osc->hw.clk.parent_names = NULL;
+	osc->hw.clk.num_parents = 0;
 	/* init.flags = CLK_IGNORE_UNUSED; */
 
 	osc->sckcr = sckcr;
@@ -237,26 +237,26 @@ at91_clk_register_slow_rc_osc(void __iomem *sckcr,
 	osc->frequency = frequency;
 	osc->startup_usec = startup;
 
-	ret = bclk_register(&osc->clk);
+	ret = bclk_register(&osc->hw.clk);
 	if (ret) {
 		kfree(osc);
 		return ERR_PTR(ret);
 	}
 
-	return &osc->clk;
+	return &osc->hw.clk;
 }
 
 static void at91_clk_unregister_slow_rc_osc(struct clk *clk)
 {
-	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk);
+	struct clk_slow_rc_osc *osc = to_clk_slow_rc_osc(clk_to_clk_hw(clk));
 
 	clk_unregister(clk);
 	kfree(osc);
 }
 
-static int clk_sam9x5_slow_set_parent(struct clk *clk, u8 index)
+static int clk_sam9x5_slow_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk);
+	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(hw);
 	void __iomem *sckcr = slowck->sckcr;
 	u32 tmp;
 
@@ -281,9 +281,9 @@ static int clk_sam9x5_slow_set_parent(struct clk *clk, u8 index)
 	return 0;
 }
 
-static int clk_sam9x5_slow_get_parent(struct clk *clk)
+static int clk_sam9x5_slow_get_parent(struct clk_hw *hw)
 {
-	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk);
+	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(hw);
 
 	return !!(readl(slowck->sckcr) & slowck->bits->cr_oscsel);
 }
@@ -307,29 +307,29 @@ at91_clk_register_sam9x5_slow(void __iomem *sckcr,
 		return ERR_PTR(-EINVAL);
 
 	slowck = xzalloc(struct_size(slowck, parent_names, num_parents));
-	slowck->clk.name = name;
-	slowck->clk.ops = &sam9x5_slow_ops;
+	slowck->hw.clk.name = name;
+	slowck->hw.clk.ops = &sam9x5_slow_ops;
 
 	memcpy(slowck->parent_names, parent_names,
 	       num_parents * sizeof(slowck->parent_names[0]));
-	slowck->clk.parent_names = slowck->parent_names;
-	slowck->clk.num_parents = num_parents;
+	slowck->hw.clk.parent_names = slowck->parent_names;
+	slowck->hw.clk.num_parents = num_parents;
 	slowck->sckcr = sckcr;
 	slowck->bits = bits;
 	slowck->parent = !!(readl(sckcr) & slowck->bits->cr_oscsel);
 
-	ret = bclk_register(&slowck->clk);
+	ret = bclk_register(&slowck->hw.clk);
 	if (ret) {
 		kfree(slowck);
 		return ERR_PTR(ret);
 	}
 
-	return &slowck->clk;
+	return &slowck->hw.clk;
 }
 
 static void at91_clk_unregister_sam9x5_slow(struct clk *clk)
 {
-	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk);
+	struct clk_sam9x5_slow *slowck = to_clk_sam9x5_slow(clk_to_clk_hw(clk));
 
 	clk_unregister(clk);
 	kfree(slowck);
@@ -505,9 +505,9 @@ unregister_slow_rc:
 CLK_OF_DECLARE(sam9x60_clk_sckc, "microchip,sam9x60-sckc",
 	       of_sam9x60_sckc_setup);
 
-static int clk_sama5d4_slow_osc_enable(struct clk *clk)
+static int clk_sama5d4_slow_osc_enable(struct clk_hw *hw)
 {
-	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(clk);
+	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);
 
 	if (osc->prepared)
 		return 0;
@@ -527,9 +527,9 @@ static int clk_sama5d4_slow_osc_enable(struct clk *clk)
 	return 0;
 }
 
-static int clk_sama5d4_slow_osc_is_enabled(struct clk *clk)
+static int clk_sama5d4_slow_osc_is_enabled(struct clk_hw *hw)
 {
-	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(clk);
+	struct clk_sama5d4_slow_osc *osc = to_clk_sama5d4_slow_osc(hw);
 
 	return osc->prepared;
 }
@@ -560,10 +560,10 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 
 	osc = xzalloc(sizeof(*osc));
 	osc->parent_name = of_clk_get_parent_name(np, 0);
-	osc->clk.name = parent_names[1];
-	osc->clk.ops = &sama5d4_slow_osc_ops;
-	osc->clk.parent_names = &osc->parent_name;
-	osc->clk.num_parents = 1;
+	osc->hw.clk.name = parent_names[1];
+	osc->hw.clk.ops = &sama5d4_slow_osc_ops;
+	osc->hw.clk.parent_names = &osc->parent_name;
+	osc->hw.clk.num_parents = 1;
 
 	/* osc->clk.flags = CLK_IGNORE_UNUSED; */
 
@@ -571,7 +571,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 	osc->startup_usec = 1200000;
 	osc->bits = &at91sama5d4_bits;
 
-	ret = bclk_register(&osc->clk);
+	ret = bclk_register(&osc->hw.clk);
 	if (ret)
 		goto free_slow_osc_data;
 
@@ -590,7 +590,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
 unregister_slowck:
 	at91_clk_unregister_sam9x5_slow(slowck);
 unregister_slow_osc:
-	clk_unregister(&osc->clk);
+	clk_unregister(&osc->hw.clk);
 free_slow_osc_data:
 	kfree(osc);
 	clk_unregister(slow_rc);
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index 4727127aeb..c5e57f41ec 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -19,17 +19,17 @@ static struct clk *clks[ATH79_CLK_END];
 static struct clk_onecell_data clk_data;
 
 struct clk_ar933x {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *base;
 	u32 div_shift;
 	u32 div_mask;
 	const char *parent;
 };
 
-static unsigned long clk_ar933x_recalc_rate(struct clk *clk,
+static unsigned long clk_ar933x_recalc_rate(struct clk_hw *hw,
 	unsigned long parent_rate)
 {
-	struct clk_ar933x *f = container_of(clk, struct clk_ar933x, clk);
+	struct clk_ar933x *f = container_of(hw, struct clk_ar933x, hw);
 	unsigned long rate;
 	unsigned long freq;
 	u32 clock_ctrl;
@@ -79,14 +79,14 @@ static struct clk *clk_ar933x(const char *name, const char *parent,
 	f->div_shift = div_shift;
 	f->div_mask = div_mask;
 
-	f->clk.ops = &clk_ar933x_ops;
-	f->clk.name = name;
-	f->clk.parent_names = &f->parent;
-	f->clk.num_parents = 1;
+	f->hw.clk.ops = &clk_ar933x_ops;
+	f->hw.clk.name = name;
+	f->hw.clk.parent_names = &f->parent;
+	f->hw.clk.num_parents = 1;
 
-	bclk_register(&f->clk);
+	bclk_register(&f->hw.clk);
 
-	return &f->clk;
+	return &f->hw.clk;
 }
 
 static void ar933x_pll_init(void __iomem *base)
diff --git a/drivers/clk/clk-ar9344.c b/drivers/clk/clk-ar9344.c
index 1a25731fd5..d2f63f2608 100644
--- a/drivers/clk/clk-ar9344.c
+++ b/drivers/clk/clk-ar9344.c
@@ -35,17 +35,17 @@ static struct clk *clks[ATH79_CLK_END];
 static struct clk_onecell_data clk_data;
 
 struct clk_ar9344 {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *base;
 	u32 div_shift;
 	u32 div_mask;
 	const char *parent;
 };
 
-static unsigned long clk_ar9344_recalc_rate(struct clk *clk,
+static unsigned long clk_ar9344_recalc_rate(struct clk_hw *hw,
 	unsigned long parent_rate)
 {
-	struct clk_ar9344 *f = container_of(clk, struct clk_ar9344, clk);
+	struct clk_ar9344 *f = container_of(hw, struct clk_ar9344, hw);
 	int outdiv, refdiv, nint, nfrac;
 	int cpu_post_div;
 	u32 clock_ctrl;
@@ -84,14 +84,14 @@ static struct clk *clk_ar9344(const char *name, const char *parent,
 	f->div_shift = 0;
 	f->div_mask = 0;
 
-	f->clk.ops = &clk_ar9344_ops;
-	f->clk.name = name;
-	f->clk.parent_names = &f->parent;
-	f->clk.num_parents = 1;
+	f->hw.clk.ops = &clk_ar9344_ops;
+	f->hw.clk.name = name;
+	f->hw.clk.parent_names = &f->parent;
+	f->hw.clk.num_parents = 1;
 
-	bclk_register(&f->clk);
+	bclk_register(&f->hw.clk);
 
-	return &f->clk;
+	return &f->hw.clk;
 }
 
 static void ar9344_pll_init(void __iomem *base)
diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 1eb1eea68e..3ed628c919 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -12,85 +12,93 @@
 #include <linux/err.h>
 
 struct clk_composite {
-	struct clk	clk;
+	struct clk_hw	hw;
 
 	struct clk	*mux_clk;
 	struct clk	*rate_clk;
 	struct clk	*gate_clk;
 };
 
-#define to_clk_composite(_clk) container_of(_clk, struct clk_composite, clk)
+#define to_clk_composite(_hw) container_of(_hw, struct clk_composite, hw)
 
-static int clk_composite_get_parent(struct clk *clk)
+static int clk_composite_get_parent(struct clk_hw *hw)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *mux_clk = composite->mux_clk;
+	struct clk_hw *mux_hw = clk_to_clk_hw(mux_clk);
 
-	return mux_clk ? mux_clk->ops->get_parent(mux_clk) : 0;
+	return mux_clk ? mux_clk->ops->get_parent(mux_hw) : 0;
 }
 
-static int clk_composite_set_parent(struct clk *clk, u8 index)
+static int clk_composite_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *mux_clk = composite->mux_clk;
+	struct clk_hw *mux_hw = clk_to_clk_hw(mux_clk);
 
-	return mux_clk ? mux_clk->ops->set_parent(mux_clk, index) : 0;
+	return mux_clk ? mux_clk->ops->set_parent(mux_hw, index) : 0;
 }
 
-static unsigned long clk_composite_recalc_rate(struct clk *clk,
+static unsigned long clk_composite_recalc_rate(struct clk_hw *hw,
 					    unsigned long parent_rate)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *rate_clk = composite->rate_clk;
+	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
 
 	if (rate_clk)
-		return rate_clk->ops->recalc_rate(rate_clk, parent_rate);
+		return rate_clk->ops->recalc_rate(rate_hw, parent_rate);
 
 	return parent_rate;
 }
 
-static long clk_composite_round_rate(struct clk *clk, unsigned long rate,
+static long clk_composite_round_rate(struct clk_hw *hw, unsigned long rate,
 				  unsigned long *prate)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *rate_clk = composite->rate_clk;
+	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
 
-	return rate_clk ? rate_clk->ops->round_rate(rate_clk, rate, prate) : 0;
+	return rate_clk ? rate_clk->ops->round_rate(rate_hw, rate, prate) : 0;
 }
 
-static int clk_composite_set_rate(struct clk *clk, unsigned long rate,
+static int clk_composite_set_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long parent_rate)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *rate_clk = composite->rate_clk;
+	struct clk_hw *rate_hw = clk_to_clk_hw(rate_clk);
 
 	return rate_clk ?
-		rate_clk->ops->set_rate(rate_clk, rate, parent_rate) : 0;
+		rate_clk->ops->set_rate(rate_hw, rate, parent_rate) : 0;
 }
 
-static int clk_composite_is_enabled(struct clk *clk)
+static int clk_composite_is_enabled(struct clk_hw *hw)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *gate_clk = composite->gate_clk;
+	struct clk_hw *gate_hw = clk_to_clk_hw(gate_clk);
 
-	return gate_clk ? gate_clk->ops->is_enabled(gate_clk) : 0;
+	return gate_clk ? gate_clk->ops->is_enabled(gate_hw) : 0;
 }
 
-static int clk_composite_enable(struct clk *clk)
+static int clk_composite_enable(struct clk_hw *hw)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *gate_clk = composite->gate_clk;
+	struct clk_hw *gate_hw = clk_to_clk_hw(gate_clk);
 
-	return gate_clk ? gate_clk->ops->enable(gate_clk) : 0;
+	return gate_clk ? gate_clk->ops->enable(gate_hw) : 0;
 }
 
-static void clk_composite_disable(struct clk *clk)
+static void clk_composite_disable(struct clk_hw *hw)
 {
-	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk_composite *composite = to_clk_composite(hw);
 	struct clk *gate_clk = composite->gate_clk;
+	struct clk_hw *gate_hw = clk_to_clk_hw(gate_clk);
 
 	if (gate_clk)
-		gate_clk->ops->disable(gate_clk);
+		gate_clk->ops->disable(gate_hw);
 }
 
 static struct clk_ops clk_composite_ops = {
@@ -116,20 +124,20 @@ struct clk *clk_register_composite(const char *name,
 
 	composite = xzalloc(sizeof(*composite));
 
-	composite->clk.name = name;
-	composite->clk.ops = &clk_composite_ops;
-	composite->clk.flags = flags;
-	composite->clk.parent_names = parent_names;
-	composite->clk.num_parents = num_parents;
+	composite->hw.clk.name = name;
+	composite->hw.clk.ops = &clk_composite_ops;
+	composite->hw.clk.flags = flags;
+	composite->hw.clk.parent_names = parent_names;
+	composite->hw.clk.num_parents = num_parents;
 	composite->mux_clk = mux_clk;
 	composite->rate_clk = rate_clk;
 	composite->gate_clk = gate_clk;
 
-	ret = bclk_register(&composite->clk);
+	ret = bclk_register(&composite->hw.clk);
 	if (ret)
 		goto err;
 
-	return &composite->clk;
+	return &composite->hw.clk;
 
 err:
 	kfree(composite);
diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 3acce64042..edbba941b7 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -92,10 +92,11 @@ unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 	return DIV_ROUND_UP_ULL((u64)parent_rate, div);
 }
 
-static unsigned long clk_divider_recalc_rate(struct clk *clk,
+static unsigned long clk_divider_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
-	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct clk_divider *divider = container_of(hw, struct clk_divider, hw);
 	unsigned int val;
 
 	val = readl(divider->reg) >> divider->shift;
@@ -233,13 +234,14 @@ long divider_round_rate(struct clk *clk, unsigned long rate,
 	return DIV_ROUND_UP(*prate, div);
 }
 
-static long clk_divider_round_rate(struct clk *clk, unsigned long rate,
+static long clk_divider_round_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long *prate)
 {
-	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct clk_divider *divider = to_clk_divider(hw);
 
 	if (divider->flags & CLK_DIVIDER_READ_ONLY)
-		return clk_divider_recalc_rate(clk, *prate);
+		return clk_divider_recalc_rate(hw, *prate);
 
 	return divider_round_rate(clk, rate, prate, divider->table,
 				  divider->width, divider->flags);
@@ -261,10 +263,11 @@ int divider_get_val(unsigned long rate, unsigned long parent_rate,
 	return min_t(unsigned int, value, clk_div_mask(width));
 }
 
-static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
+static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long parent_rate)
 {
-	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct clk_divider *divider = to_clk_divider(hw);
 	unsigned int value;
 	u32 val;
 
@@ -310,18 +313,19 @@ struct clk *clk_divider_alloc(const char *name, const char *parent,
 	div->width = width;
 	div->parent = parent;
 	div->flags = div_flags;
-	div->clk.ops = &clk_divider_ops;
-	div->clk.name = name;
-	div->clk.flags = clk_flags;
-	div->clk.parent_names = &div->parent;
-	div->clk.num_parents = 1;
+	div->hw.clk.ops = &clk_divider_ops;
+	div->hw.clk.name = name;
+	div->hw.clk.flags = clk_flags;
+	div->hw.clk.parent_names = &div->parent;
+	div->hw.clk.num_parents = 1;
 
-	return &div->clk;
+	return &div->hw.clk;
 }
 
 void clk_divider_free(struct clk *clk)
 {
-	struct clk_divider *d =  container_of(clk, struct clk_divider, clk);
+	struct clk_hw *hw = clk_to_clk_hw(clk);
+	struct clk_divider *d = to_clk_divider(hw);
 
 	free(d);
 }
@@ -350,12 +354,15 @@ struct clk *clk_divider_one_based(const char *name, const char *parent,
 {
 	struct clk_divider *div;
 	struct clk *clk;
+	struct clk_hw *hw;
 
 	clk = clk_divider(name, parent, clk_flags, reg, shift, width, div_flags);
 	if (IS_ERR(clk))
 		return clk;
 
-	div = container_of(clk, struct clk_divider, clk);
+	hw = clk_to_clk_hw(clk);
+	div = to_clk_divider(hw);
+
 	div->flags |= CLK_DIVIDER_ONE_BASED;
 
 	return clk;
@@ -375,11 +382,11 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 	div->width = width;
 	div->parent = parent;
 	div->flags = div_flags;
-	div->clk.ops = &clk_divider_ops;
-	div->clk.name = name;
-	div->clk.flags = clk_flags;
-	div->clk.parent_names = &div->parent;
-	div->clk.num_parents = 1;
+	div->hw.clk.ops = &clk_divider_ops;
+	div->hw.clk.name = name;
+	div->hw.clk.flags = clk_flags;
+	div->hw.clk.parent_names = &div->parent;
+	div->hw.clk.num_parents = 1;
 	div->table = table;
 
 	for (clkt = div->table; clkt->div; clkt++) {
@@ -390,11 +397,11 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 		div->table_size++;
 	}
 
-	ret = bclk_register(&div->clk);
+	ret = bclk_register(&div->hw.clk);
 	if (ret) {
 		free(div);
 		return ERR_PTR(ret);
 	}
 
-	return &div->clk;
+	return &div->hw.clk;
 }
diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index ce6fe1cce7..506c4aea74 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -11,24 +11,30 @@
 #include <linux/err.h>
 
 struct clk_fixed_factor {
-	struct clk clk;
+	struct clk_hw hw;
 	int mult;
 	int div;
 	const char *parent;
 };
 
-static unsigned long clk_fixed_factor_recalc_rate(struct clk *clk,
+static inline struct clk_fixed_factor *to_clk_fixed_factor(struct clk_hw *hw)
+{
+	return container_of(hw, struct clk_fixed_factor, hw);
+}
+
+static unsigned long clk_fixed_factor_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
-	struct clk_fixed_factor *f = container_of(clk, struct clk_fixed_factor, clk);
+	struct clk_fixed_factor *f = to_clk_fixed_factor(hw);
 
 	return (parent_rate / f->div) * f->mult;
 }
 
-static long clk_factor_round_rate(struct clk *clk, unsigned long rate,
+static long clk_factor_round_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long *prate)
 {
-	struct clk_fixed_factor *fix = container_of(clk, struct clk_fixed_factor, clk);
+	struct clk_fixed_factor *fix = to_clk_fixed_factor(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
 
 	if (clk->flags & CLK_SET_RATE_PARENT) {
 		unsigned long best_parent;
@@ -40,10 +46,11 @@ static long clk_factor_round_rate(struct clk *clk, unsigned long rate,
 	return (*prate / fix->div) * fix->mult;
 }
 
-static int clk_factor_set_rate(struct clk *clk, unsigned long rate,
+static int clk_factor_set_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long parent_rate)
 {
-	struct clk_fixed_factor *fix = container_of(clk, struct clk_fixed_factor, clk);
+	struct clk_fixed_factor *fix = to_clk_fixed_factor(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
 
 	if (clk->flags & CLK_SET_RATE_PARENT) {
 		return clk_set_rate(clk_get_parent(clk), rate * fix->div / fix->mult);
@@ -67,19 +74,19 @@ struct clk *clk_fixed_factor(const char *name,
 	f->mult = mult;
 	f->div = div;
 	f->parent = parent;
-	f->clk.ops = &clk_fixed_factor_ops;
-	f->clk.name = name;
-	f->clk.flags = flags;
-	f->clk.parent_names = &f->parent;
-	f->clk.num_parents = 1;
+	f->hw.clk.ops = &clk_fixed_factor_ops;
+	f->hw.clk.name = name;
+	f->hw.clk.flags = flags;
+	f->hw.clk.parent_names = &f->parent;
+	f->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&f->clk);
+	ret = bclk_register(&f->hw.clk);
 	if (ret) {
 		free(f);
 		return ERR_PTR(ret);
 	}
 
-	return &f->clk;
+	return &f->hw.clk;
 }
 
 /**
diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index e628b4e4e6..b961c382ec 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -10,14 +10,14 @@
 #include <linux/err.h>
 
 struct clk_fixed {
-	struct clk clk;
+	struct clk_hw hw;
 	unsigned long rate;
 };
 
-static unsigned long clk_fixed_recalc_rate(struct clk *clk,
+static unsigned long clk_fixed_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
-	struct clk_fixed *fix = container_of(clk, struct clk_fixed, clk);
+	struct clk_fixed *fix = container_of(hw, struct clk_fixed, hw);
 
 	return fix->rate;
 }
@@ -36,27 +36,27 @@ struct clk *clk_register_fixed_rate(const char *name,
 	int ret;
 
 	fix->rate = rate;
-	fix->clk.ops = &clk_fixed_ops;
-	fix->clk.name = name;
-	fix->clk.flags = flags;
+	fix->hw.clk.ops = &clk_fixed_ops;
+	fix->hw.clk.name = name;
+	fix->hw.clk.flags = flags;
 
 	if (parent_name) {
 		parent_names = kzalloc(sizeof(const char *), GFP_KERNEL);
 		if (!parent_names)
 			return ERR_PTR(-ENOMEM);
 
-		fix->clk.parent_names = parent_names;
-		fix->clk.num_parents = 1;
+		fix->hw.clk.parent_names = parent_names;
+		fix->hw.clk.num_parents = 1;
 	}
 
-	ret = bclk_register(&fix->clk);
+	ret = bclk_register(&fix->hw.clk);
 	if (ret) {
 		free(parent_names);
 		free(fix);
 		return ERR_PTR(ret);
 	}
 
-	return &fix->clk;
+	return &fix->hw.clk;
 }
 
 /**
diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 6955666127..65abf84b40 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -15,10 +15,10 @@
 #include <linux/math64.h>
 #include <linux/barebox-wrapper.h>
 
-#define to_clk_fd(_hw) container_of(_hw, struct clk_fractional_divider, clk)
+#define to_clk_fd(_hw) container_of(_hw, struct clk_fractional_divider, hw)
 
 struct clk_fractional_divider {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*reg;
 	u8		mshift;
 	u32		mmask;
@@ -27,7 +27,7 @@ struct clk_fractional_divider {
 	u8		flags;
 };
 
-static unsigned long clk_fd_recalc_rate(struct clk *hw,
+static unsigned long clk_fd_recalc_rate(struct clk_hw *hw,
 					unsigned long parent_rate)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
@@ -45,7 +45,7 @@ static unsigned long clk_fd_recalc_rate(struct clk *hw,
 	return ret;
 }
 
-static long clk_fd_round_rate(struct clk *hw, unsigned long rate,
+static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
 			      unsigned long *prate)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
@@ -65,7 +65,7 @@ static long clk_fd_round_rate(struct clk *hw, unsigned long rate,
 	return rate;
 }
 
-static int clk_fd_set_rate(struct clk *hw, unsigned long rate,
+static int clk_fd_set_rate(struct clk_hw *hw, unsigned long rate,
 			   unsigned long parent_rate)
 {
 	struct clk_fractional_divider *fd = to_clk_fd(hw);
@@ -107,18 +107,18 @@ struct clk *clk_fractional_divider_alloc(
 	fd->nshift = nshift;
 	fd->nmask = (BIT(nwidth) - 1) << nshift;
 	fd->flags = clk_divider_flags;
-	fd->clk.name = name;
-	fd->clk.ops = &clk_fractional_divider_ops;
-	fd->clk.flags = flags;
-	fd->clk.parent_names = parent_name ? &parent_name : NULL;
-	fd->clk.num_parents = parent_name ? 1 : 0;
+	fd->hw.clk.name = name;
+	fd->hw.clk.ops = &clk_fractional_divider_ops;
+	fd->hw.clk.flags = flags;
+	fd->hw.clk.parent_names = parent_name ? &parent_name : NULL;
+	fd->hw.clk.num_parents = parent_name ? 1 : 0;
 
-	return &fd->clk;
+	return &fd->hw.clk;
 }
 
 void clk_fractional_divider_free(struct clk *clk_fd)
 {
-	struct clk_fractional_divider *fd = to_clk_fd(clk_fd);
+	struct clk_fractional_divider *fd = to_clk_fd(clk_to_clk_hw(clk_fd));
 
 	free(fd);
 }
diff --git a/drivers/clk/clk-gate-shared.c b/drivers/clk/clk-gate-shared.c
index b5a1365568..069f6975b1 100644
--- a/drivers/clk/clk-gate-shared.c
+++ b/drivers/clk/clk-gate-shared.c
@@ -11,13 +11,13 @@
 #include <linux/err.h>
 
 struct clk_gate_shared {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	const char *companion_gate;
 	struct clk *companion_clk;
 };
 
-#define to_clk_gate_shared(_clk) container_of(_clk, struct clk_gate_shared, clk)
+#define to_clk_gate_shared(_hw) container_of(_hw, struct clk_gate_shared, hw)
 
 static struct clk *lookup_companion(struct clk_gate_shared *g)
 {
@@ -30,23 +30,23 @@ static struct clk *lookup_companion(struct clk_gate_shared *g)
 	return g->companion_clk;
 }
 
-static int clk_gate_shared_enable(struct clk *clk)
+static int clk_gate_shared_enable(struct clk_hw *hw)
 {
-	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+	struct clk_gate_shared *g = to_clk_gate_shared(hw);
 
 	return clk_enable(lookup_companion(g));
 }
 
-static void clk_gate_shared_disable(struct clk *clk)
+static void clk_gate_shared_disable(struct clk_hw *hw)
 {
-	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+	struct clk_gate_shared *g = to_clk_gate_shared(hw);
 
 	clk_disable(lookup_companion(g));
 }
 
-static int clk_gate_shared_is_enabled(struct clk *clk)
+static int clk_gate_shared_is_enabled(struct clk_hw *hw)
 {
-	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+	struct clk_gate_shared *g = to_clk_gate_shared(hw);
 
 	return clk_is_enabled(lookup_companion(g));
 }
@@ -67,18 +67,19 @@ static struct clk *clk_gate_shared_alloc(const char *name, const char *parent,
 	g->parent = parent;
 	g->companion_gate = companion;
 	g->companion_clk = ERR_PTR(-EINVAL);
-	g->clk.ops = &clk_gate_shared_ops;
-	g->clk.name = name;
-	g->clk.flags = flags;
-	g->clk.parent_names = &g->parent;
-	g->clk.num_parents = 1;
+	g->hw.clk.ops = &clk_gate_shared_ops;
+	g->hw.clk.name = name;
+	g->hw.clk.flags = flags;
+	g->hw.clk.parent_names = &g->parent;
+	g->hw.clk.num_parents = 1;
 
-	return &g->clk;
+	return &g->hw.clk;
 }
 
 static void clk_gate_shared_free(struct clk *clk)
 {
-	struct clk_gate_shared *g = to_clk_gate_shared(clk);
+	struct clk_hw *hw = clk_to_clk_hw(clk);
+	struct clk_gate_shared *g = to_clk_gate_shared(hw);
 
 	free(g);
 }
diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index 6a6fd66e4e..6e1bf0b316 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -10,9 +10,9 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-static void clk_gate_endisable(struct clk *clk, int enable)
+static void clk_gate_endisable(struct clk_hw *hw, int enable)
 {
-	struct clk_gate *gate = container_of(clk, struct clk_gate, clk);
+	struct clk_gate *gate = container_of(hw, struct clk_gate, hw);
 	int set = gate->flags & CLK_GATE_INVERTED ? 1 : 0;
 	u32 val;
 
@@ -34,21 +34,21 @@ static void clk_gate_endisable(struct clk *clk, int enable)
 	writel(val, gate->reg);
 }
 
-static int clk_gate_enable(struct clk *clk)
+static int clk_gate_enable(struct clk_hw *hw)
 {
-	clk_gate_endisable(clk, 1);
+	clk_gate_endisable(hw, 1);
 
 	return 0;
 }
 
-static void clk_gate_disable(struct clk *clk)
+static void clk_gate_disable(struct clk_hw *hw)
 {
-	clk_gate_endisable(clk, 0);
+	clk_gate_endisable(hw, 0);
 }
 
-int clk_gate_is_enabled(struct clk *clk)
+int clk_gate_is_enabled(struct clk_hw *hw)
 {
-	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
+	struct clk_gate *g = container_of(hw, struct clk_gate, hw);
 	u32 val;
 
 	val = readl(g->reg);
@@ -75,19 +75,20 @@ struct clk *clk_gate_alloc(const char *name, const char *parent,
 	g->parent = parent;
 	g->reg = reg;
 	g->shift = shift;
-	g->clk.ops = &clk_gate_ops;
-	g->clk.name = name;
-	g->clk.flags = flags;
-	g->clk.parent_names = &g->parent;
-	g->clk.num_parents = 1;
+	g->hw.clk.ops = &clk_gate_ops;
+	g->hw.clk.name = name;
+	g->hw.clk.flags = flags;
+	g->hw.clk.parent_names = &g->parent;
+	g->hw.clk.num_parents = 1;
 	g->flags = clk_gate_flags;
 
-	return &g->clk;
+	return &g->hw.clk;
 }
 
 void clk_gate_free(struct clk *clk_gate)
 {
-	struct clk_gate *g = to_clk_gate(clk_gate);
+	struct clk_hw *hw = clk_to_clk_hw(clk_gate);
+	struct clk_gate *g = to_clk_gate(hw);
 
 	free(g);
 }
@@ -102,7 +103,8 @@ struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
 
 	ret = bclk_register(g);
 	if (ret) {
-		free(to_clk_gate(g));
+		struct clk_hw *hw = clk_to_clk_hw(g);
+		free(to_clk_gate(hw));
 		return ERR_PTR(ret);
 	}
 
diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index e47474a5cc..6ac2e820fa 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -14,30 +14,30 @@
 #include <init.h>
 
 struct clk_gpio {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	int gpio;
 };
-#define to_clk_gpio(_clk) container_of(_clk, struct clk_gpio, clk)
+#define to_clk_gpio(_hw) container_of(_hw, struct clk_gpio, hw)
 
-static int clk_gpio_enable(struct clk *clk)
+static int clk_gpio_enable(struct clk_hw *hw)
 {
-	struct clk_gpio *clk_gpio = to_clk_gpio(clk);
+	struct clk_gpio *clk_gpio = to_clk_gpio(hw);
 
 	gpio_set_active(clk_gpio->gpio, true);
 	return 0;
 }
 
-static void clk_gpio_disable(struct clk *clk)
+static void clk_gpio_disable(struct clk_hw *hw)
 {
-	struct clk_gpio *clk_gpio = to_clk_gpio(clk);
+	struct clk_gpio *clk_gpio = to_clk_gpio(hw);
 
 	gpio_set_active(clk_gpio->gpio, false);
 }
 
-static int clk_gpio_is_enabled(struct clk *clk)
+static int clk_gpio_is_enabled(struct clk_hw *hw)
 {
-	struct clk_gpio *clk_gpio = to_clk_gpio(clk);
+	struct clk_gpio *clk_gpio = to_clk_gpio(hw);
 
 	return gpio_is_active(clk_gpio->gpio);
 }
@@ -67,13 +67,13 @@ static int of_gpio_clk_setup(struct device_node *node)
 		goto no_parent;
 	}
 
-	clk_gpio->clk.ops = &clk_gpio_ops;
-	clk_gpio->clk.parent_names = &clk_gpio->parent;
-	clk_gpio->clk.num_parents = 1;
+	clk_gpio->hw.clk.ops = &clk_gpio_ops;
+	clk_gpio->hw.clk.parent_names = &clk_gpio->parent;
+	clk_gpio->hw.clk.num_parents = 1;
 
-	clk_gpio->clk.name = node->name;
+	clk_gpio->hw.clk.name = node->name;
 	of_property_read_string(node, "clock-output-names",
-			&clk_gpio->clk.name);
+			&clk_gpio->hw.clk.name);
 
 	ret = of_get_named_gpio_flags(node, "enable-gpios", 0,
 			&of_flags);
@@ -86,15 +86,15 @@ static int of_gpio_clk_setup(struct device_node *node)
 	flags = GPIOF_OUT_INIT_ACTIVE;
 	if (of_flags & OF_GPIO_ACTIVE_LOW)
 		flags |= GPIOF_ACTIVE_LOW;
-	ret = gpio_request_one(clk_gpio->gpio, flags, clk_gpio->clk.name);
+	ret = gpio_request_one(clk_gpio->gpio, flags, clk_gpio->hw.clk.name);
 	if (ret)
 		goto no_request;
 
-	ret = bclk_register(&clk_gpio->clk);
+	ret = bclk_register(&clk_gpio->hw.clk);
 	if (ret)
 		goto no_register;
 
-	return of_clk_add_provider(node, of_clk_src_simple_get, &clk_gpio->clk);
+	return of_clk_add_provider(node, of_clk_src_simple_get, &clk_gpio->hw.clk);
 
 no_register:
 	gpio_free(clk_gpio->gpio);
diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 8ea5889e60..59bea98578 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -10,21 +10,22 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
-static int clk_mux_get_parent(struct clk *clk)
+static int clk_mux_get_parent(struct clk_hw *hw)
 {
-	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
+	struct clk_mux *m = to_clk_mux(hw);
 	int idx = readl(m->reg) >> m->shift & ((1 << m->width) - 1);
 
 	return idx;
 }
 
-static int clk_mux_set_parent(struct clk *clk, u8 idx)
+static int clk_mux_set_parent(struct clk_hw *hw, u8 idx)
 {
-	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
+	struct clk_mux *m = to_clk_mux(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
 	u32 val;
 
 	if (m->flags & CLK_MUX_READ_ONLY) {
-		if (clk_mux_get_parent(clk) != idx)
+		if (clk_mux_get_parent(hw) != idx)
 			return -EPERM;
 		else
 			return 0;
@@ -58,18 +59,19 @@ struct clk *clk_mux_alloc(const char *name, unsigned clk_flags, void __iomem *re
 	m->shift = shift;
 	m->width = width;
 	m->flags = mux_flags;
-	m->clk.ops = &clk_mux_ops;
-	m->clk.name = name;
-	m->clk.flags = clk_flags;
-	m->clk.parent_names = parents;
-	m->clk.num_parents = num_parents;
+	m->hw.clk.ops = &clk_mux_ops;
+	m->hw.clk.name = name;
+	m->hw.clk.flags = clk_flags;
+	m->hw.clk.parent_names = parents;
+	m->hw.clk.num_parents = num_parents;
 
-	return &m->clk;
+	return &m->hw.clk;
 }
 
 void clk_mux_free(struct clk *clk_mux)
 {
-	struct clk_mux *m = to_clk_mux(clk_mux);
+	struct clk_hw *hw = clk_to_clk_hw(clk_mux);
+	struct clk_mux *m = to_clk_mux(hw);
 
 	free(m);
 }
@@ -86,7 +88,8 @@ struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 
 	ret = bclk_register(m);
 	if (ret) {
-		free(to_clk_mux(m));
+		struct clk_hw *hw = clk_to_clk_hw(m);
+		free(to_clk_mux(hw));
 		return ERR_PTR(ret);
 	}
 
diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index 328570400f..f7dbf7230d 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -29,7 +29,7 @@
 #define CGB_PLL2	5
 
 struct clockgen_pll_div {
-	struct clk *clk;
+	struct clk_hw *hw;
 	char name[32];
 };
 
@@ -254,20 +254,20 @@ static const struct clockgen_chipinfo chipinfo_ls2080a = {
 };
 
 struct mux_hwclock {
-	struct clk clk;
+	struct clk_hw hw;
 	struct clockgen *cg;
 	const struct clockgen_muxinfo *info;
 	u32 __iomem *reg;
 	int num_parents;
 };
 
-#define to_mux_hwclock(p)	container_of(p, struct mux_hwclock, clk)
+#define to_mux_hwclock(p)	container_of(p, struct mux_hwclock, hw)
 #define CLKSEL_MASK		0x78000000
 #define	CLKSEL_SHIFT		27
 
-static int mux_set_parent(struct clk *clk, u8 idx)
+static int mux_set_parent(struct clk_hw *hw, u8 idx)
 {
-	struct mux_hwclock *hwc = to_mux_hwclock(clk);
+	struct mux_hwclock *hwc = to_mux_hwclock(hw);
 
 	if (idx >= hwc->num_parents)
 		return -EINVAL;
@@ -277,9 +277,9 @@ static int mux_set_parent(struct clk *clk, u8 idx)
 	return 0;
 }
 
-static int mux_get_parent(struct clk *clk)
+static int mux_get_parent(struct clk_hw *hw)
 {
-	struct mux_hwclock *hwc = to_mux_hwclock(clk);
+	struct mux_hwclock *hwc = to_mux_hwclock(hw);
 
 	return (cg_in(hwc->cg, hwc->reg) & CLKSEL_MASK) >> CLKSEL_SHIFT;
 }
@@ -318,7 +318,7 @@ static struct clk * __init create_mux_common(struct clockgen *cg,
 					     const struct clk_ops *ops,
 					     const char *fmt, int idx)
 {
-	struct clk *clk = &hwc->clk;
+	struct clk_hw *hw = &hwc->hw;
 	const struct clockgen_pll_div *div;
 	const char **parent_names;
 	int i, ret;
@@ -333,20 +333,20 @@ static struct clk * __init create_mux_common(struct clockgen *cg,
 		parent_names[i] = div->name;
 	}
 
-	clk->name = xasprintf(fmt, idx);;
-	clk->ops = ops;
-	clk->parent_names = parent_names;
-	clk->num_parents = hwc->num_parents = i;
+	hw->clk.name = xasprintf(fmt, idx);;
+	hw->clk.ops = ops;
+	hw->clk.parent_names = parent_names;
+	hw->clk.num_parents = hwc->num_parents = i;
 	hwc->cg = cg;
 
-	ret = bclk_register(clk);
+	ret = bclk_register(&hw->clk);
 	if (ret) {
-		pr_err("%s: Couldn't register %s: %d\n", __func__, clk->name, ret);
+		pr_err("%s: Couldn't register %s: %d\n", __func__, clk_hw_get_name(hw), ret);
 		kfree(hwc);
 		return NULL;
 	}
 
-	return clk;
+	return &hw->clk;
 }
 
 static struct clk * __init create_one_cmux(struct clockgen *cg, int idx)
@@ -499,7 +499,7 @@ static void __init create_one_pll(struct clockgen *cg, int idx)
 			continue;
 		}
 
-		pll->div[i].clk = clk;
+		pll->div[i].hw = clk_to_clk_hw(clk);
 	}
 }
 
@@ -551,7 +551,7 @@ static struct clk *clockgen_clk_get(struct of_phandle_args *clkspec, void *data)
 		pll = &cg->pll[PLATFORM_PLL];
 		if (idx >= ARRAY_SIZE(pll->div))
 			goto bad_args;
-		clk = pll->div[idx].clk;
+		clk = clk_hw_to_clk(pll->div[idx].hw);
 		break;
 	case 5:
 		if (idx != 0)
diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index 2996877577..7ba71b4592 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -285,7 +285,7 @@ static const struct clk_div_table ck_trace_div_table[] = {
 
 struct stm32_mmux {
 	u8 nbr_clk;
-	struct clk *hws[MAX_MUX_CLK];
+	struct clk_hw *hws[MAX_MUX_CLK];
 };
 
 struct stm32_clk_mmux {
@@ -419,19 +419,19 @@ _clk_hw_register_mux(void __iomem *base,
 
 /* MP1 Gate clock with set & clear registers */
 
-static int mp1_gate_clk_enable(struct clk *clk)
+static int mp1_gate_clk_enable(struct clk_hw *hw)
 {
-	if (!clk_gate_ops.is_enabled(clk))
-		clk_gate_ops.enable(clk);
+	if (!clk_gate_ops.is_enabled(hw))
+		clk_gate_ops.enable(hw);
 
 	return 0;
 }
 
-static void mp1_gate_clk_disable(struct clk *clk)
+static void mp1_gate_clk_disable(struct clk_hw *hw)
 {
-	struct clk_gate *gate = to_clk_gate(clk);
+	struct clk_gate *gate = to_clk_gate(hw);
 
-	if (clk_gate_ops.is_enabled(clk)) {
+	if (clk_gate_ops.is_enabled(hw)) {
 		writel(BIT(gate->shift), gate->reg + RCC_CLR);
 	}
 }
@@ -442,12 +442,12 @@ static const struct clk_ops mp1_gate_clk_ops = {
 	.is_enabled	= clk_gate_is_enabled,
 };
 
-static struct clk *_get_stm32_mux(void __iomem *base,
+static struct clk_hw *_get_stm32_mux(void __iomem *base,
 				     const struct stm32_mux_cfg *cfg)
 {
 	struct stm32_clk_mmux *mmux;
 	struct clk_mux *mux;
-	struct clk *mux_hw;
+	struct clk_hw *mux_hw;
 
 	if (cfg->mmux) {
 		mmux = kzalloc(sizeof(*mmux), GFP_KERNEL);
@@ -458,7 +458,7 @@ static struct clk *_get_stm32_mux(void __iomem *base,
 		mmux->mux.shift = cfg->mux->shift;
 		mmux->mux.width = cfg->mux->width;
 		mmux->mmux = cfg->mmux;
-		mux_hw = &mmux->mux.clk;
+		mux_hw = &mmux->mux.hw;
 		cfg->mmux->hws[cfg->mmux->nbr_clk++] = mux_hw;
 		mux = &mmux->mux;
 	} else {
@@ -469,18 +469,18 @@ static struct clk *_get_stm32_mux(void __iomem *base,
 		mux->reg = cfg->mux->reg_off + base;
 		mux->shift = cfg->mux->shift;
 		mux->width = cfg->mux->width;
-		mux_hw = &mux->clk;
+		mux_hw = &mux->hw;
 	}
 
 	if (cfg->ops)
-		mux->clk.ops = cfg->ops;
+		mux->hw.clk.ops = cfg->ops;
 	else
-		mux->clk.ops = &clk_mux_ops;
+		mux->hw.clk.ops = &clk_mux_ops;
 
 	return mux_hw;
 }
 
-static struct clk *_get_stm32_div(void __iomem *base,
+static struct clk_hw *_get_stm32_div(void __iomem *base,
 				     const struct stm32_div_cfg *cfg)
 {
 	struct clk_divider *div;
@@ -496,11 +496,11 @@ static struct clk *_get_stm32_div(void __iomem *base,
 	div->table = cfg->div->table;
 
 	if (cfg->ops)
-		div->clk.ops = cfg->ops;
+		div->hw.clk.ops = cfg->ops;
 	else
-		div->clk.ops = &clk_divider_ops;
+		div->hw.clk.ops = &clk_divider_ops;
 
-	return &div->clk;
+	return &div->hw;
 }
 
 static struct clk_gate *
@@ -535,9 +535,9 @@ _get_stm32_gate(void __iomem *base,
 	}
 	
 	if (cfg->ops)
-		gate->clk.ops = cfg->ops;
+		gate->hw.clk.ops = cfg->ops;
 	else
-		gate->clk.ops = &clk_gate_ops;
+		gate->hw.clk.ops = &clk_gate_ops;
 
 	return gate;
 }
@@ -558,7 +558,7 @@ clk_stm32_register_gate_ops(const char *name,
 		return ERR_PTR(-ENOMEM);
 
 	gate->parent = parent_name;
-	clk = &gate->clk;
+	clk = &gate->hw.clk;
 	clk->name = name;
 	clk->parent_names = &gate->parent;
 	clk->num_parents = 1;
@@ -577,7 +577,7 @@ clk_stm32_register_composite(const char *name, const char * const *parent_names,
 			     const struct stm32_composite_cfg *cfg,
 			     unsigned long flags)
 {
-	struct clk *mux_hw, *div_hw, *gate_hw;
+	struct clk_hw *mux_hw, *div_hw, *gate_hw;
 	struct clk_gate *gate;
 
 	mux_hw = NULL;
@@ -592,36 +592,36 @@ clk_stm32_register_composite(const char *name, const char * const *parent_names,
 
 	if (cfg->gate) {
 		gate = _get_stm32_gate(base, cfg->gate);
-		gate_hw = &gate->clk;
+		gate_hw = &gate->hw;
 	}
 
 	return clk_register_composite(name, parent_names, num_parents,
-				       mux_hw, div_hw, gate_hw, flags);
+				       &mux_hw->clk, &div_hw->clk, &gate_hw->clk, flags);
 }
 
 #define to_clk_mgate(_gate) container_of(_gate, struct stm32_clk_mgate, gate)
 
-static int mp1_mgate_clk_enable(struct clk *clk)
+static int mp1_mgate_clk_enable(struct clk_hw *hw)
 {
-	struct clk_gate *gate = to_clk_gate(clk);
+	struct clk_gate *gate = to_clk_gate(hw);
 	struct stm32_clk_mgate *clk_mgate = to_clk_mgate(gate);
 
 	clk_mgate->mgate->flag |= clk_mgate->mask;
 
-	mp1_gate_clk_enable(clk);
+	mp1_gate_clk_enable(hw);
 
 	return  0;
 }
 
-static void mp1_mgate_clk_disable(struct clk *clk)
+static void mp1_mgate_clk_disable(struct clk_hw *hw)
 {
-	struct clk_gate *gate = to_clk_gate(clk);
+	struct clk_gate *gate = to_clk_gate(hw);
 	struct stm32_clk_mgate *clk_mgate = to_clk_mgate(gate);
 
 	clk_mgate->mgate->flag &= ~clk_mgate->mask;
 
 	if (clk_mgate->mgate->flag == 0)
-		mp1_gate_clk_disable(clk);
+		mp1_gate_clk_disable(hw);
 }
 
 static const struct clk_ops mp1_mgate_clk_ops = {
@@ -633,26 +633,26 @@ static const struct clk_ops mp1_mgate_clk_ops = {
 
 #define to_clk_mmux(_mux) container_of(_mux, struct stm32_clk_mmux, mux)
 
-static int clk_mmux_get_parent(struct clk *clk)
+static int clk_mmux_get_parent(struct clk_hw *hw)
 {
-	return clk_mux_ops.get_parent(clk);
+	return clk_mux_ops.get_parent(hw);
 }
 
-static int clk_mmux_set_parent(struct clk *clk, u8 index)
+static int clk_mmux_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_mux *mux = to_clk_mux(clk);
+	struct clk_mux *mux = to_clk_mux(hw);
 	struct stm32_clk_mmux *clk_mmux = to_clk_mmux(mux);
-	struct clk *parent;
+	struct clk_hw *hwp;
 	int ret, n;
 
-	ret = clk_mux_ops.set_parent(clk, index);
+	ret = clk_mux_ops.set_parent(hw, index);
 	if (ret)
 		return ret;
 
-	parent = clk_get_parent(clk);
+	hwp = clk_hw_get_parent(hw);
 
 	for (n = 0; n < clk_mmux->mmux->nbr_clk; n++)
-		clk_set_parent(clk_mmux->mmux->hws[n], parent);
+		clk_hw_set_parent(clk_mmux->mmux->hws[n], hw);
 
 	return 0;
 }
@@ -691,8 +691,9 @@ static int __pll_is_enabled(struct clk *clk)
 
 #define TIMEOUT 5
 
-static int pll_enable(struct clk *clk)
+static int pll_enable(struct clk_hw *hw)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct stm32_pll_obj *clk_elem = to_pll(clk);
 	u32 reg;
 	unsigned int timeout = TIMEOUT;
@@ -722,8 +723,9 @@ unlock:
 	return bit_status;
 }
 
-static void pll_disable(struct clk *clk)
+static void pll_disable(struct clk_hw *hw)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct stm32_pll_obj *clk_elem = to_pll(clk);
 	u32 reg;
 
@@ -744,9 +746,10 @@ static u32 pll_frac_val(struct clk *clk)
 	return frac;
 }
 
-static unsigned long pll_recalc_rate(struct clk *clk,
+static unsigned long pll_recalc_rate(struct clk_hw *hw,
 				     unsigned long parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct stm32_pll_obj *clk_elem = to_pll(clk);
 	u32 reg;
 	u32 frac, divm, divn;
@@ -769,8 +772,9 @@ static unsigned long pll_recalc_rate(struct clk *clk,
 	return rate + rate_frac;
 }
 
-static int pll_is_enabled(struct clk *clk)
+static int pll_is_enabled(struct clk_hw *hw)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	int ret;
 
 	ret = __pll_is_enabled(clk);
@@ -852,17 +856,19 @@ static unsigned long __bestmult(struct clk *clk, unsigned long rate,
 	return mult;
 }
 
-static long timer_ker_round_rate(struct clk *clk, unsigned long rate,
+static long timer_ker_round_rate(struct clk_hw *hw, unsigned long rate,
 				 unsigned long *parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	unsigned long factor = __bestmult(clk, rate, *parent_rate);
 
 	return *parent_rate * factor;
 }
 
-static int timer_ker_set_rate(struct clk *clk, unsigned long rate,
+static int timer_ker_set_rate(struct clk_hw *hw, unsigned long rate,
 			      unsigned long parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct timer_cker *tim_ker = to_timer_cker(clk);
 	unsigned long factor = __bestmult(clk, rate, parent_rate);
 	int ret = 0;
@@ -883,10 +889,11 @@ static int timer_ker_set_rate(struct clk *clk, unsigned long rate,
 	return ret;
 }
 
-static unsigned long timer_ker_recalc_rate(struct clk *hw,
+static unsigned long timer_ker_recalc_rate(struct clk_hw *hw,
 					   unsigned long parent_rate)
 {
-	struct timer_cker *tim_ker = to_timer_cker(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct timer_cker *tim_ker = to_timer_cker(clk);
 	u32 prescaler, timpre;
 	u32 mul;
 
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 7dab6a5fb9..73682126bf 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -36,6 +36,7 @@ static void clk_parent_disable(struct clk *clk)
 
 int clk_enable(struct clk *clk)
 {
+	struct clk_hw *hw;
 	int ret;
 
 	if (!clk)
@@ -44,13 +45,15 @@ int clk_enable(struct clk *clk)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
+	hw = clk_to_clk_hw(clk);
+
 	if (!clk->enable_count) {
 		ret = clk_parent_enable(clk);
 		if (ret)
 			return ret;
 
 		if (clk->ops->enable) {
-			ret = clk->ops->enable(clk);
+			ret = clk->ops->enable(hw);
 			if (ret) {
 				clk_parent_disable(clk);
 				return ret;
@@ -65,6 +68,8 @@ int clk_enable(struct clk *clk)
 
 void clk_disable(struct clk *clk)
 {
+	struct clk_hw *hw;
+
 	if (!clk)
 		return;
 
@@ -81,9 +86,11 @@ void clk_disable(struct clk *clk)
 
 	clk->enable_count--;
 
+	hw = clk_to_clk_hw(clk);
+
 	if (!clk->enable_count) {
 		if (clk->ops->disable)
-			clk->ops->disable(clk);
+			clk->ops->disable(hw);
 
 		clk_parent_disable(clk);
 	}
@@ -91,6 +98,7 @@ void clk_disable(struct clk *clk)
 
 unsigned long clk_get_rate(struct clk *clk)
 {
+	struct clk_hw *hw;
 	struct clk *parent;
 	unsigned long parent_rate = 0;
 
@@ -106,14 +114,22 @@ unsigned long clk_get_rate(struct clk *clk)
 	if (!IS_ERR_OR_NULL(parent))
 		parent_rate = clk_get_rate(parent);
 
+	hw = clk_to_clk_hw(clk);
+
 	if (clk->ops->recalc_rate)
-		return clk->ops->recalc_rate(clk, parent_rate);
+		return clk->ops->recalc_rate(hw, parent_rate);
 
 	return parent_rate;
 }
 
+unsigned long clk_hw_get_rate(struct clk_hw *hw)
+{
+	return clk_get_rate(clk_hw_to_clk(hw));
+}
+
 long clk_round_rate(struct clk *clk, unsigned long rate)
 {
+	struct clk_hw *hw;
 	unsigned long parent_rate = 0;
 	struct clk *parent;
 
@@ -127,14 +143,22 @@ long clk_round_rate(struct clk *clk, unsigned long rate)
 	if (parent)
 		parent_rate = clk_get_rate(parent);
 
+	hw = clk_to_clk_hw(clk);
+
 	if (clk->ops->round_rate)
-		return clk->ops->round_rate(clk, rate, &parent_rate);
+		return clk->ops->round_rate(hw, rate, &parent_rate);
 
 	return clk_get_rate(clk);
 }
 
+long clk_hw_round_rate(struct clk_hw *hw, unsigned long rate)
+{
+	return clk_round_rate(&hw->clk, rate);
+}
+
 int clk_set_rate(struct clk *clk, unsigned long rate)
 {
+	struct clk_hw *hw;
 	struct clk *parent;
 	unsigned long parent_rate = 0;
 	int ret;
@@ -159,7 +183,9 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 		}
 	}
 
-	ret = clk->ops->set_rate(clk, rate, parent_rate);
+	hw = clk_to_clk_hw(clk);
+
+	ret = clk->ops->set_rate(hw, rate, parent_rate);
 
 	if (parent && clk->flags & CLK_OPS_PARENT_ENABLE)
 		clk_disable(parent);
@@ -167,6 +193,11 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	return ret;
 }
 
+int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate)
+{
+	return clk_set_rate(&hw->clk, rate);
+}
+
 struct clk *clk_lookup(const char *name)
 {
 	struct clk *c;
@@ -184,6 +215,7 @@ struct clk *clk_lookup(const char *name)
 
 int clk_set_parent(struct clk *clk, struct clk *newparent)
 {
+	struct clk_hw *hw;
 	int i, ret;
 	struct clk *curparent = clk_get_parent(clk);
 
@@ -217,7 +249,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 		clk_enable(newparent);
 	}
 
-	ret = clk->ops->set_parent(clk, i);
+	hw = clk_to_clk_hw(clk);
+
+	ret = clk->ops->set_parent(hw, i);
 
 	if (clk->flags & CLK_OPS_PARENT_ENABLE) {
 		clk_disable(curparent);
@@ -230,8 +264,14 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 	return ret;
 }
 
+int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *newparent)
+{
+	return clk_set_parent(&hw->clk, &newparent->clk);
+}
+
 struct clk *clk_get_parent(struct clk *clk)
 {
+	struct clk_hw *hw;
 	int idx;
 
 	if (IS_ERR(clk))
@@ -240,11 +280,13 @@ struct clk *clk_get_parent(struct clk *clk)
 	if (!clk->num_parents)
 		return ERR_PTR(-ENODEV);
 
+	hw = clk_to_clk_hw(clk);
+
 	if (clk->num_parents != 1) {
 		if (!clk->ops->get_parent)
 			return ERR_PTR(-EINVAL);
 
-		idx = clk->ops->get_parent(clk);
+		idx = clk->ops->get_parent(hw);
 
 		if (idx >= clk->num_parents)
 			return ERR_PTR(-ENODEV);
@@ -258,8 +300,19 @@ struct clk *clk_get_parent(struct clk *clk)
 	return clk->parents[idx];
 }
 
+struct clk_hw *clk_hw_get_parent(struct clk_hw *hw)
+{
+	struct clk *clk = clk_get_parent(clk_hw_to_clk(hw));
+
+	if (IS_ERR(clk))
+		return ERR_CAST(clk);
+
+	return clk_to_clk_hw(clk);
+}
+
 int bclk_register(struct clk *clk)
 {
+	struct clk_hw *hw = clk_to_clk_hw(clk);
 	struct clk *c;
 	int ret;
 
@@ -276,7 +329,7 @@ int bclk_register(struct clk *clk)
 	list_add_tail(&clk->list, &clks);
 
 	if (clk->ops->init) {
-		ret = clk->ops->init(clk);
+		ret = clk->ops->init(hw);
 		if (ret)
 			goto out;
 	}
@@ -295,6 +348,7 @@ out:
 int clk_is_enabled(struct clk *clk)
 {
 	int enabled;
+	struct clk_hw *hw = clk_to_clk_hw(clk);
 
 	if (IS_ERR(clk))
 		return 0;
@@ -303,7 +357,7 @@ int clk_is_enabled(struct clk *clk)
 		/*
 		 * If we can ask a clk, do it
 		 */
-		enabled = clk->ops->is_enabled(clk);
+		enabled = clk->ops->is_enabled(hw);
 	} else {
 		if (clk->ops->enable) {
 			/*
@@ -332,26 +386,35 @@ int clk_is_enabled(struct clk *clk)
 	return clk_is_enabled(clk);
 }
 
+int clk_hw_is_enabled(struct clk_hw *hw)
+{
+	return clk_is_enabled(&hw->clk);
+}
+
 /*
  * Generic struct clk_ops callbacks
  */
-int clk_is_enabled_always(struct clk *clk)
+int clk_is_enabled_always(struct clk_hw *hw)
 {
 	return 1;
 }
 
-long clk_parent_round_rate(struct clk *clk, unsigned long rate,
+long clk_parent_round_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long *prate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
+
 	if (!(clk->flags & CLK_SET_RATE_PARENT))
 		return *prate;
 
 	return clk_round_rate(clk_get_parent(clk), rate);
 }
 
-int clk_parent_set_rate(struct clk *clk, unsigned long rate,
+int clk_parent_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
+
 	if (!(clk->flags & CLK_SET_RATE_PARENT))
 		return 0;
 	return clk_set_rate(clk_get_parent(clk), rate);
@@ -675,8 +738,10 @@ int of_clk_init(struct device_node *root, const struct of_device_id *matches)
 
 static const char *clk_hw_stat(struct clk *clk)
 {
+	struct clk_hw *hw = clk_to_clk_hw(clk);
+
 	if (clk->ops->is_enabled) {
-		if (clk->ops->is_enabled(clk))
+		if (clk->ops->is_enabled(hw))
 			return "enabled";
 		else
 			return "disabled";
diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 6c7f10a2c9..96fccc51d8 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -26,10 +26,11 @@
 
 #define clk_div_mask(width)	((1 << (width)) - 1)
 
-static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk *clk,
+static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
 						unsigned long parent_rate)
 {
-	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	struct clk_divider *divider = container_of(hw, struct clk_divider, hw);
+	struct clk *clk = clk_hw_to_clk(hw);
 	unsigned long prediv_rate;
 	unsigned int prediv_value;
 	unsigned int div_value;
@@ -74,7 +75,7 @@ static int imx8m_clk_composite_compute_dividers(unsigned long rate,
 	return ret;
 }
 
-static long imx8m_clk_composite_divider_round_rate(struct clk *clk,
+static long imx8m_clk_composite_divider_round_rate(struct clk_hw *hw,
 						unsigned long rate,
 						unsigned long *prate)
 {
@@ -89,11 +90,11 @@ static long imx8m_clk_composite_divider_round_rate(struct clk *clk,
 
 }
 
-static int imx8m_clk_composite_divider_set_rate(struct clk *clk,
+static int imx8m_clk_composite_divider_set_rate(struct clk_hw *hw,
 					unsigned long rate,
 					unsigned long parent_rate)
 {
-	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	struct clk_divider *divider = container_of(hw, struct clk_divider, hw);
 	int prediv_value;
 	int div_value;
 	int ret;
@@ -114,14 +115,14 @@ static int imx8m_clk_composite_divider_set_rate(struct clk *clk,
 
 	return ret;
 }
-static int imx8m_clk_composite_mux_get_parent(struct clk *clk)
+static int imx8m_clk_composite_mux_get_parent(struct clk_hw *hw)
 {
-	return clk_mux_ops.get_parent(clk);
+	return clk_mux_ops.get_parent(hw);
 }
 
-static int imx8m_clk_composite_mux_set_parent(struct clk *clk, u8 index)
+static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct clk_mux *m = container_of(clk, struct clk_mux, clk);
+	struct clk_mux *m = container_of(hw, struct clk_mux, hw);
 	u32 val;
 
 	val = readl(m->reg);
@@ -161,7 +162,6 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	struct clk_divider *div = NULL;
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
-	const struct clk_ops *divider_ops;
 	const struct clk_ops *mux_ops;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
@@ -171,7 +171,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	mux->reg = reg;
 	mux->shift = PCG_PCS_SHIFT;
 	mux->width = PCG_PCS_WIDTH;
-	mux->clk.ops = &clk_mux_ops;
+	mux->hw.clk.ops = &clk_mux_ops;
 
 	div = kzalloc(sizeof(*div), GFP_KERNEL);
 	if (!div)
@@ -181,20 +181,19 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	if (composite_flags & IMX_COMPOSITE_CORE) {
 		div->shift = PCG_DIV_SHIFT;
 		div->width = PCG_CORE_DIV_WIDTH;
-		divider_ops = &clk_divider_ops;
+		div->hw.clk.ops = &clk_divider_ops;
 		mux_ops = &imx8m_clk_composite_mux_ops;
 	} else if (composite_flags & IMX_COMPOSITE_BUS) {
 		div->shift = PCG_PREDIV_SHIFT;
 		div->width = PCG_PREDIV_WIDTH;
-		divider_ops = &imx8m_clk_composite_divider_ops;
+		div->hw.clk.ops = &imx8m_clk_composite_divider_ops;
 		mux_ops = &imx8m_clk_composite_mux_ops;
 	} else {
 		div->shift = PCG_PREDIV_SHIFT;
 		div->width = PCG_PREDIV_WIDTH;
-		divider_ops = &imx8m_clk_composite_divider_ops;
+		div->hw.clk.ops = &imx8m_clk_composite_divider_ops;
 		mux_ops = &clk_mux_ops;
 	}
-	div->clk.ops = divider_ops;
 
 	gate = kzalloc(sizeof(*gate), GFP_KERNEL);
 	if (!gate)
@@ -202,10 +201,10 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 
 	gate->reg = reg;
 	gate->shift = PCG_CGC_SHIFT;
-	gate->clk.ops = &clk_gate_ops;
+	gate->hw.clk.ops = &clk_gate_ops;
 
 	comp = clk_register_composite(name, parent_names, num_parents,
-				      &mux->clk, &div->clk, &gate->clk, flags);
+				      &mux->hw.clk, &div->hw.clk, &gate->hw.clk, flags);
 	if (IS_ERR(comp))
 		goto fail;
 
diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
index 8ed899cb98..0ca5dd63c5 100644
--- a/drivers/clk/imx/clk-cpu.c
+++ b/drivers/clk/imx/clk-cpu.c
@@ -16,38 +16,38 @@
 #include "clk.h"
 
 struct clk_cpu {
-	struct clk	clk;
+	struct clk_hw	hw;
 	struct clk	*div;
 	struct clk	*mux;
 	struct clk	*pll;
 	struct clk	*step;
 };
 
-static inline struct clk_cpu *to_clk_cpu(struct clk *clk)
+static inline struct clk_cpu *to_clk_cpu(struct clk_hw *hw)
 {
-	return container_of(clk, struct clk_cpu, clk);
+	return container_of(hw, struct clk_cpu, hw);
 }
 
-static unsigned long clk_cpu_recalc_rate(struct clk *clk,
+static unsigned long clk_cpu_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_cpu *cpu = to_clk_cpu(clk);
+	struct clk_cpu *cpu = to_clk_cpu(hw);
 
 	return clk_get_rate(cpu->div);
 }
 
-static long clk_cpu_round_rate(struct clk *clk, unsigned long rate,
+static long clk_cpu_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *prate)
 {
-	struct clk_cpu *cpu = to_clk_cpu(clk);
+	struct clk_cpu *cpu = to_clk_cpu(hw);
 
 	return clk_round_rate(cpu->pll, rate);
 }
 
-static int clk_cpu_set_rate(struct clk *clk, unsigned long rate,
+static int clk_cpu_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	struct clk_cpu *cpu = to_clk_cpu(clk);
+	struct clk_cpu *cpu = to_clk_cpu(hw);
 	int ret;
 
 	/* switch to PLL bypass clock */
@@ -98,17 +98,17 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 	cpu->pll = pll;
 	cpu->step = step;
 
-	cpu->clk.name = name;
-	cpu->clk.ops = &clk_cpu_ops;
-	cpu->clk.flags = CLK_IS_CRITICAL;
-	cpu->clk.parent_names = &icpu->parent_name;
-	cpu->clk.num_parents = 1;
+	cpu->hw.clk.name = name;
+	cpu->hw.clk.ops = &clk_cpu_ops;
+	cpu->hw.clk.flags = CLK_IS_CRITICAL;
+	cpu->hw.clk.parent_names = &icpu->parent_name;
+	cpu->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&cpu->clk);
+	ret = bclk_register(&cpu->hw.clk);
 	if (ret) {
 		free(cpu);
 		return NULL;
 	}
 
-	return &cpu->clk;
+	return &cpu->hw.clk;
 }
diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
index bc62505e57..d3fc760717 100644
--- a/drivers/clk/imx/clk-frac-pll.c
+++ b/drivers/clk/imx/clk-frac-pll.c
@@ -26,12 +26,12 @@
 #define PLL_FRAC_DENOM		0x1000000
 
 struct clk_frac_pll {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*base;
 	const char *parent;
 };
 
-#define to_clk_frac_pll(_clk) container_of(_clk, struct clk_frac_pll, clk)
+#define to_clk_frac_pll(_hw) container_of(_hw, struct clk_frac_pll, hw)
 
 static int clk_wait_lock(struct clk_frac_pll *pll)
 {
@@ -63,9 +63,9 @@ static int clk_wait_ack(struct clk_frac_pll *pll)
 	return readl(pll->base) & PLL_NEWDIV_ACK ? 0 : ETIMEDOUT;
 }
 
-static int clk_pll_enable(struct clk *clk)
+static int clk_pll_enable(struct clk_hw *hw)
 {
-	struct clk_frac_pll *pll = to_clk_frac_pll(clk);
+	struct clk_frac_pll *pll = to_clk_frac_pll(hw);
 	u32 val;
 
 	val = readl(pll->base + PLL_CFG0);
@@ -75,9 +75,9 @@ static int clk_pll_enable(struct clk *clk)
 	return clk_wait_lock(pll);
 }
 
-static void clk_pll_disable(struct clk *clk)
+static void clk_pll_disable(struct clk_hw *hw)
 {
-	struct clk_frac_pll *pll = to_clk_frac_pll(clk);
+	struct clk_frac_pll *pll = to_clk_frac_pll(hw);
 	u32 val;
 
 	val = readl(pll->base + PLL_CFG0);
@@ -85,19 +85,19 @@ static void clk_pll_disable(struct clk *clk)
 	writel(val, pll->base + PLL_CFG0);
 }
 
-static int clk_pll_is_enabled(struct clk *clk)
+static int clk_pll_is_enabled(struct clk_hw *hw)
 {
-	struct clk_frac_pll *pll = to_clk_frac_pll(clk);
+	struct clk_frac_pll *pll = to_clk_frac_pll(hw);
 	u32 val;
 
 	val = readl(pll->base + PLL_CFG0);
 	return (val & (1 << PLL_PD)) ? 0 : 1;
 }
 
-static unsigned long clk_pll_recalc_rate(struct clk *clk,
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_frac_pll *pll = to_clk_frac_pll(clk);
+	struct clk_frac_pll *pll = to_clk_frac_pll(hw);
 	u32 val, divff, divfi, divq;
 	u64 temp64;
 
@@ -115,7 +115,7 @@ static unsigned long clk_pll_recalc_rate(struct clk *clk,
 	return parent_rate * 8 * (divfi + 1) / divq + (unsigned long)temp64;
 }
 
-static long clk_pll_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *prate)
 {
 	u32 divff, divfi;
@@ -144,10 +144,10 @@ static long clk_pll_round_rate(struct clk *clk, unsigned long rate,
  * pllout = parent_rate * 8 / 2 * DIVF_VAL;
  * where DIVF_VAL = 1 + DIVFI + DIVFF / 2^24.
  */
-static int clk_pll_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	struct clk_frac_pll *pll = to_clk_frac_pll(clk);
+	struct clk_frac_pll *pll = to_clk_frac_pll(hw);
 	u32 val, divfi, divff;
 	u64 temp64;
 	int ret;
@@ -205,16 +205,16 @@ struct clk *imx_clk_frac_pll(const char *name, const char *parent,
 
 	pll->base = base;
 	pll->parent = parent;
-	pll->clk.ops = &clk_frac_pll_ops;
-	pll->clk.name = name;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
+	pll->hw.clk.ops = &clk_frac_pll_ops;
+	pll->hw.clk.name = name;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
diff --git a/drivers/clk/imx/clk-gate-exclusive.c b/drivers/clk/imx/clk-gate-exclusive.c
index 94e7467701..473249a356 100644
--- a/drivers/clk/imx/clk-gate-exclusive.c
+++ b/drivers/clk/imx/clk-gate-exclusive.c
@@ -24,17 +24,21 @@
  * register is mutually exclusive to this gate clock.
  */
 struct clk_gate_exclusive {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	int shift;
 	const char *parent;
 	u32 exclusive_mask;
 };
 
-static int clk_gate_exclusive_enable(struct clk *clk)
+static inline struct clk_gate_exclusive *to_clk_gate_exclusive(struct clk_hw *hw)
 {
-	struct clk_gate_exclusive *exgate = container_of(clk,
-					struct clk_gate_exclusive, clk);
+	return container_of(hw, struct clk_gate_exclusive, hw);
+}
+
+static int clk_gate_exclusive_enable(struct clk_hw *hw)
+{
+	struct clk_gate_exclusive *exgate = to_clk_gate_exclusive(hw);
 	u32 val = readl(exgate->reg);
 
 	if (val & exgate->exclusive_mask)
@@ -47,10 +51,9 @@ static int clk_gate_exclusive_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_gate_exclusive_disable(struct clk *clk)
+static void clk_gate_exclusive_disable(struct clk_hw *hw)
 {
-	struct clk_gate_exclusive *exgate = container_of(clk,
-					struct clk_gate_exclusive, clk);
+	struct clk_gate_exclusive *exgate = to_clk_gate_exclusive(hw);
 	u32 val = readl(exgate->reg);
 
 	val &= ~(1 << exgate->shift);
@@ -58,10 +61,9 @@ static void clk_gate_exclusive_disable(struct clk *clk)
 	writel(val, exgate->reg);
 }
 
-static int clk_gate_exclusive_is_enabled(struct clk *clk)
+static int clk_gate_exclusive_is_enabled(struct clk_hw *hw)
 {
-	struct clk_gate_exclusive *exgate = container_of(clk,
-					struct clk_gate_exclusive, clk);
+	struct clk_gate_exclusive *exgate = to_clk_gate_exclusive(hw);
 
 	return readl(exgate->reg) & (1 << exgate->shift);
 }
@@ -80,21 +82,21 @@ struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
 
 	exgate = xzalloc(sizeof(*exgate));
 	exgate->parent = parent;
-	exgate->clk.name = name;
-	exgate->clk.ops = &clk_gate_exclusive_ops;
-	exgate->clk.flags = CLK_SET_RATE_PARENT;
-	exgate->clk.parent_names = &exgate->parent;
-	exgate->clk.num_parents = 1;
+	exgate->hw.clk.name = name;
+	exgate->hw.clk.ops = &clk_gate_exclusive_ops;
+	exgate->hw.clk.flags = CLK_SET_RATE_PARENT;
+	exgate->hw.clk.parent_names = &exgate->parent;
+	exgate->hw.clk.num_parents = 1;
 
 	exgate->reg = reg;
 	exgate->shift = shift;
 	exgate->exclusive_mask = exclusive_mask;
 
-	ret = bclk_register(&exgate->clk);
+	ret = bclk_register(&exgate->hw.clk);
 	if (ret) {
 		free(exgate);
 		return ERR_PTR(ret);
 	}
 
-	return &exgate->clk;
+ 	return &exgate->hw.clk;
 }
diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index 3d9b9338d5..8866a5365b 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -13,7 +13,7 @@
 
 
 struct clk_gate2 {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	int shift;
 	u8 cgr_val;
@@ -22,11 +22,14 @@ struct clk_gate2 {
 	unsigned flags;
 };
 
-#define to_clk_gate2(_clk) container_of(_clk, struct clk_gate2, clk)
+static inline struct clk_gate2 *to_clk_gate2(struct clk_hw *hw)
+{
+	return container_of(hw, struct clk_gate2, hw);
+}
 
-static int clk_gate2_enable(struct clk *clk)
+static int clk_gate2_enable(struct clk_hw *hw)
 {
-	struct clk_gate2 *g = to_clk_gate2(clk);
+	struct clk_gate2 *g = to_clk_gate2(hw);
 	u32 val;
 
 	val = readl(g->reg);
@@ -41,9 +44,9 @@ static int clk_gate2_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_gate2_disable(struct clk *clk)
+static void clk_gate2_disable(struct clk_hw *hw)
 {
-	struct clk_gate2 *g = to_clk_gate2(clk);
+	struct clk_gate2 *g = to_clk_gate2(hw);
 	u32 val;
 
 	val = readl(g->reg);
@@ -56,9 +59,9 @@ static void clk_gate2_disable(struct clk *clk)
 	writel(val, g->reg);
 }
 
-static int clk_gate2_is_enabled(struct clk *clk)
+static int clk_gate2_is_enabled(struct clk_hw *hw)
 {
-	struct clk_gate2 *g = to_clk_gate2(clk);
+	struct clk_gate2 *g = to_clk_gate2(hw);
 	u32 val;
 
 	val = readl(g->reg);
@@ -87,13 +90,13 @@ static struct clk *clk_gate2_alloc(const char *name, const char *parent,
 	g->reg = reg;
 	g->cgr_val = cgr_val;
 	g->shift = shift;
-	g->clk.ops = &clk_gate2_ops;
-	g->clk.name = name;
-	g->clk.parent_names = &g->parent;
-	g->clk.num_parents = 1;
-	g->clk.flags = CLK_SET_RATE_PARENT | flags;
+	g->hw.clk.ops = &clk_gate2_ops;
+	g->hw.clk.name = name;
+	g->hw.clk.parent_names = &g->parent;
+	g->hw.clk.num_parents = 1;
+	g->hw.clk.flags = CLK_SET_RATE_PARENT | flags;
 
-	return &g->clk;
+	return &g->hw.clk;
 }
 
 struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
@@ -106,7 +109,8 @@ struct clk *clk_gate2(const char *name, const char *parent, void __iomem *reg,
 
 	ret = bclk_register(g);
 	if (ret) {
-		free(to_clk_gate2(g));
+		struct clk_hw *hw = clk_to_clk_hw(g);
+		free(to_clk_gate2(hw));
 		return ERR_PTR(ret);
 	}
 
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index 6668146860..af5d582ffc 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -98,6 +98,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	void __iomem *base, *anatop_base, *ccm_base;
 	int i;
 	struct device_node *ccm_node = dev->device_node;
+	struct clk_hw *hw;
 
 	anatop_base = IOMEM(MX6_ANATOP_BASE_ADDR);
 	iores = dev_request_mem_resource(dev, 0);
@@ -445,7 +446,8 @@ static int imx6_ccm_probe(struct device_d *dev)
 				clks[IMX6UL_CLK_PLL3_PFD2]);
 
 	/* Disable GPMI_IO clk before reparenting to avoid glitches */
-	clks[IMX6UL_CLK_GPMI_IO]->ops->disable(clks[IMX6UL_CLK_GPMI_IO]);
+	hw = clk_to_clk_hw(clks[IMX6UL_CLK_GPMI_IO]);
+	clks[IMX6UL_CLK_GPMI_IO]->ops->disable(hw);
 
 	clk_set_parent(clks[IMX6UL_CLK_ENFC_SEL], clks[IMX6UL_CLK_PLL2_PFD2]);
 
diff --git a/drivers/clk/imx/clk-pfd.c b/drivers/clk/imx/clk-pfd.c
index 88ede6c3fc..d16e39f85c 100644
--- a/drivers/clk/imx/clk-pfd.c
+++ b/drivers/clk/imx/clk-pfd.c
@@ -27,37 +27,37 @@
  * register has SET, CLR and TOG registers at offset 0x4 0x8 and 0xc.
  */
 struct clk_pfd {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*reg;
 	u8		idx;
 	const char	*parent;
 };
 
-#define to_clk_pfd(_clk) container_of(_clk, struct clk_pfd, clk)
+#define to_clk_pfd(_hw) container_of(_hw, struct clk_pfd, hw)
 
 #define SET	0x4
 #define CLR	0x8
 #define OTG	0xc
 
-static int clk_pfd_enable(struct clk *clk)
+static int clk_pfd_enable(struct clk_hw *hw)
 {
-	struct clk_pfd *pfd = to_clk_pfd(clk);
+	struct clk_pfd *pfd = to_clk_pfd(hw);
 	writel(1 << ((pfd->idx + 1) * 8 - 1), pfd->reg + CLR);
 
 	return 0;
 }
 
-static void clk_pfd_disable(struct clk *clk)
+static void clk_pfd_disable(struct clk_hw *hw)
 {
-	struct clk_pfd *pfd = to_clk_pfd(clk);
+	struct clk_pfd *pfd = to_clk_pfd(hw);
 
 	writel(1 << ((pfd->idx + 1) * 8 - 1), pfd->reg + SET);
 }
 
-static unsigned long clk_pfd_recalc_rate(struct clk *clk,
+static unsigned long clk_pfd_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_pfd *pfd = to_clk_pfd(clk);
+	struct clk_pfd *pfd = to_clk_pfd(hw);
 	u64 tmp = parent_rate;
 	u8 frac = (readl(pfd->reg) >> (pfd->idx * 8)) & 0x3f;
 
@@ -67,7 +67,7 @@ static unsigned long clk_pfd_recalc_rate(struct clk *clk,
 	return tmp;
 }
 
-static long clk_pfd_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pfd_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *prate)
 {
 	u64 tmp = *prate;
@@ -87,10 +87,10 @@ static long clk_pfd_round_rate(struct clk *clk, unsigned long rate,
 	return tmp;
 }
 
-static int clk_pfd_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pfd_set_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long parent_rate)
 {
-	struct clk_pfd *pfd = to_clk_pfd(clk);
+	struct clk_pfd *pfd = to_clk_pfd(hw);
 	u64 tmp = parent_rate;
 	u8 frac;
 
@@ -127,16 +127,16 @@ struct clk *imx_clk_pfd(const char *name, const char *parent,
 	pfd->reg = reg;
 	pfd->idx = idx;
 	pfd->parent = parent;
-	pfd->clk.name = name;
-	pfd->clk.ops = &clk_pfd_ops;
-	pfd->clk.parent_names = &pfd->parent;
-	pfd->clk.num_parents = 1;
+	pfd->hw.clk.name = name;
+	pfd->hw.clk.ops = &clk_pfd_ops;
+	pfd->hw.clk.parent_names = &pfd->parent;
+	pfd->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&pfd->clk);
+	ret = bclk_register(&pfd->hw.clk);
 	if (ret) {
 		free(pfd);
 		return ERR_PTR(ret);
 	}
 
-	return &pfd->clk;
+	return &pfd->hw.clk;
 }
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 2842c740f9..bc837bd838 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -37,7 +37,7 @@
 #define LOCK_TIMEOUT_US		10000
 
 struct clk_pll14xx {
-	struct clk			clk;
+	struct clk_hw			hw;
 	void __iomem			*base;
 	enum imx_pll14xx_type		type;
 	const struct imx_pll14xx_rate_table *rate_table;
@@ -45,7 +45,7 @@ struct clk_pll14xx {
 	const char *parent;
 };
 
-#define to_clk_pll14xx(clk) container_of(clk, struct clk_pll14xx, clk)
+#define to_clk_pll14xx(_hw) container_of(_hw, struct clk_pll14xx, hw)
 
 static const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
 	PLL_1416X_RATE(1800000000U, 225, 3, 0),
@@ -92,10 +92,10 @@ static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
 	return NULL;
 }
 
-static long clk_pll14xx_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pll14xx_round_rate(struct clk_hw *hw, unsigned long rate,
 			unsigned long *prate)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	const struct imx_pll14xx_rate_table *rate_table = pll->rate_table;
 	int i;
 
@@ -108,10 +108,10 @@ static long clk_pll14xx_round_rate(struct clk *clk, unsigned long rate,
 	return rate_table[i - 1].rate;
 }
 
-static unsigned long clk_pll1416x_recalc_rate(struct clk *clk,
+static unsigned long clk_pll1416x_recalc_rate(struct clk_hw *hw,
 						  unsigned long parent_rate)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	u32 mdiv, pdiv, sdiv, pll_div;
 	u64 fvco = parent_rate;
 
@@ -126,10 +126,10 @@ static unsigned long clk_pll1416x_recalc_rate(struct clk *clk,
 	return fvco;
 }
 
-static unsigned long clk_pll1443x_recalc_rate(struct clk *clk,
+static unsigned long clk_pll1443x_recalc_rate(struct clk_hw *hw,
 						  unsigned long parent_rate)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	u32 mdiv, pdiv, sdiv, pll_div_ctl0, pll_div_ctl1;
 	short int kdiv;
 	u64 fvco = parent_rate;
@@ -169,10 +169,10 @@ static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
 			LOCK_TIMEOUT_US);
 }
 
-static int clk_pll1416x_set_rate(struct clk *clk, unsigned long drate,
+static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 				 unsigned long prate)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	const struct imx_pll14xx_rate_table *rate;
 	u32 tmp, div_val;
 	int ret;
@@ -180,7 +180,7 @@ static int clk_pll1416x_set_rate(struct clk *clk, unsigned long drate,
 	rate = imx_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-		       drate, clk->name);
+		       drate, hw->clk.name);
 		return -EINVAL;
 	}
 
@@ -239,7 +239,7 @@ int clk_pll1416x_early_set_rate(void __iomem *base, unsigned long drate,
 			  unsigned long prate)
 {
 	struct clk_pll14xx pll = {
-		.clk = {
+		.hw.clk = {
 			.name = "pll1416x",
 		},
 		.base = base,
@@ -247,13 +247,14 @@ int clk_pll1416x_early_set_rate(void __iomem *base, unsigned long drate,
 		.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
 	};
 
-	return clk_pll1416x_set_rate(&pll.clk, drate, prate);
+	return clk_pll1416x_set_rate(&pll.hw, drate, prate);
 }
 
-static int clk_pll1443x_set_rate(struct clk *clk, unsigned long drate,
+static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 				 unsigned long prate)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
 	const struct imx_pll14xx_rate_table *rate;
 	u32 tmp, div_val;
 	int ret;
@@ -316,9 +317,9 @@ static int clk_pll1443x_set_rate(struct clk *clk, unsigned long drate,
 	return 0;
 }
 
-static int clk_pll14xx_prepare(struct clk *clk)
+static int clk_pll14xx_prepare(struct clk_hw *hw)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	u32 val;
 	int ret;
 
@@ -344,9 +345,9 @@ static int clk_pll14xx_prepare(struct clk *clk)
 	return 0;
 }
 
-static int clk_pll14xx_is_prepared(struct clk *clk)
+static int clk_pll14xx_is_prepared(struct clk_hw *hw)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	u32 val;
 
 	val = readl(pll->base + GNRL_CTL);
@@ -354,9 +355,9 @@ static int clk_pll14xx_is_prepared(struct clk *clk)
 	return (val & RST_MASK) ? 1 : 0;
 }
 
-static void clk_pll14xx_unprepare(struct clk *clk)
+static void clk_pll14xx_unprepare(struct clk_hw *hw)
 {
-	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
+	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	u32 val;
 
 	/*
@@ -403,7 +404,7 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 	if (!pll)
 		return ERR_PTR(-ENOMEM);
 
-	clk = &pll->clk;
+	clk = &pll->hw.clk;
 
 	pll->parent = parent_name;
 	clk->name = name;
diff --git a/drivers/clk/imx/clk-pllv1.c b/drivers/clk/imx/clk-pllv1.c
index 5654ed21b3..62afa2b6b2 100644
--- a/drivers/clk/imx/clk-pllv1.c
+++ b/drivers/clk/imx/clk-pllv1.c
@@ -17,7 +17,7 @@
 #define MFN_MASK	(MFN_SIGN - 1)
 
 struct clk_pllv1 {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	const char *parent;
 };
@@ -27,10 +27,10 @@ static inline bool mfn_is_negative(unsigned int mfn)
     return mfn & MFN_SIGN;
 }
 
-static unsigned long clk_pllv1_recalc_rate(struct clk *clk,
+static unsigned long clk_pllv1_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
-	struct clk_pllv1 *pll = container_of(clk, struct clk_pllv1, clk);
+	struct clk_pllv1 *pll = container_of(hw, struct clk_pllv1, hw);
 	unsigned long long ll;
 	int mfn_abs;
 	unsigned int mfi, mfn, mfd, pd;
@@ -79,16 +79,16 @@ struct clk *imx_clk_pllv1(const char *name, const char *parent,
 
 	pll->parent = parent;
 	pll->reg = base;
-	pll->clk.ops = &clk_pllv1_ops;
-	pll->clk.name = name;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
+	pll->hw.clk.ops = &clk_pllv1_ops;
+	pll->hw.clk.name = name;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
diff --git a/drivers/clk/imx/clk-pllv2.c b/drivers/clk/imx/clk-pllv2.c
index 2b95be2495..d997e465d5 100644
--- a/drivers/clk/imx/clk-pllv2.c
+++ b/drivers/clk/imx/clk-pllv2.c
@@ -70,7 +70,7 @@
 #define MAX_DPLL_WAIT_TRIES	1000 /* 1000 * udelay(1) = 1ms */
 
 struct clk_pllv2 {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	const char *parent;
 };
@@ -110,12 +110,12 @@ static unsigned long __clk_pllv2_recalc_rate(unsigned long parent_rate,
 	return temp;
 }
 
-static unsigned long clk_pllv2_recalc_rate(struct clk *clk,
+static unsigned long clk_pllv2_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
 	u32 dp_op, dp_mfd, dp_mfn, dp_ctl;
 	void __iomem *pllbase;
-	struct clk_pllv2 *pll = container_of(clk, struct clk_pllv2, clk);
+	struct clk_pllv2 *pll = container_of(hw, struct clk_pllv2, hw);
 
 	pllbase = pll->reg;
 
@@ -156,10 +156,10 @@ static int __clk_pllv2_set_rate(unsigned long rate, unsigned long parent_rate,
 	return 0;
 }
 
-static int clk_pllv2_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pllv2_set_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long parent_rate)
 {
-	struct clk_pllv2 *pll = container_of(clk, struct clk_pllv2, clk);
+	struct clk_pllv2 *pll = container_of(hw, struct clk_pllv2, hw);
 	void __iomem *pllbase;
 	u32 dp_ctl, dp_op, dp_mfd, dp_mfn;
 	int ret;
@@ -181,7 +181,7 @@ static int clk_pllv2_set_rate(struct clk *clk, unsigned long rate,
 	return 0;
 }
 
-static long clk_pllv2_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pllv2_round_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long *prate)
 {
 	u32 dp_op, dp_mfd, dp_mfn;
@@ -205,16 +205,16 @@ struct clk *imx_clk_pllv2(const char *name, const char *parent,
 
 	pll->parent = parent;
 	pll->reg = base;
-	pll->clk.ops = &clk_pllv2_ops;
-	pll->clk.name = name;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
+	pll->hw.clk.ops = &clk_pllv2_ops;
+	pll->hw.clk.name = name;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index e755f6b7e7..cb1d65058f 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -25,7 +25,7 @@
 #define IMX7_ENET_PLL_POWER	(0x1 << 5)
 
 struct clk_pllv3 {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*base;
 	bool		powerup_set;
 	u32		div_mask;
@@ -35,11 +35,11 @@ struct clk_pllv3 {
 	u32		power_bit;
 };
 
-#define to_clk_pllv3(_clk) container_of(_clk, struct clk_pllv3, clk)
+#define to_clk_pllv3(_hw) container_of(_hw, struct clk_pllv3, hw)
 
-static int clk_pllv3_enable(struct clk *clk)
+static int clk_pllv3_enable(struct clk_hw *hw)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 	u32 val;
 	int timeout = 10000;
 
@@ -66,9 +66,9 @@ static int clk_pllv3_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_pllv3_disable(struct clk *clk)
+static void clk_pllv3_disable(struct clk_hw *hw)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 	u32 val;
 
 	val = readl(pll->base);
@@ -82,16 +82,16 @@ static void clk_pllv3_disable(struct clk *clk)
 	writel(val, pll->base);
 }
 
-static unsigned long clk_pllv3_recalc_rate(struct clk *clk,
+static unsigned long clk_pllv3_recalc_rate(struct clk_hw *hw,
 					   unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 	u32 div = (readl(pll->base) >> pll->div_shift) & pll->div_mask;
 
 	return (div == 1) ? parent_rate * 22 : parent_rate * 20;
 }
 
-static long clk_pllv3_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pllv3_round_rate(struct clk_hw *hw, unsigned long rate,
 				 unsigned long *prate)
 {
 	unsigned long parent_rate = *prate;
@@ -100,10 +100,10 @@ static long clk_pllv3_round_rate(struct clk *clk, unsigned long rate,
 					    parent_rate * 20;
 }
 
-static int clk_pllv3_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pllv3_set_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 	u32 val, div;
 
 	if (rate == parent_rate * 22)
@@ -129,16 +129,16 @@ static const struct clk_ops clk_pllv3_ops = {
 	.set_rate	= clk_pllv3_set_rate,
 };
 
-static unsigned long clk_pllv3_sys_recalc_rate(struct clk *clk,
+static unsigned long clk_pllv3_sys_recalc_rate(struct clk_hw *hw,
 					       unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 	u32 div = readl(pll->base) & pll->div_mask;
 
 	return parent_rate * div / 2;
 }
 
-static long clk_pllv3_sys_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pllv3_sys_round_rate(struct clk_hw *hw, unsigned long rate,
 				     unsigned long *prate)
 {
 	unsigned long parent_rate = *prate;
@@ -155,10 +155,10 @@ static long clk_pllv3_sys_round_rate(struct clk *clk, unsigned long rate,
 	return parent_rate * div / 2;
 }
 
-static int clk_pllv3_sys_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pllv3_sys_set_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 	unsigned long min_rate = parent_rate * 54 / 2;
 	unsigned long max_rate = parent_rate * 108 / 2;
 	u32 val, div;
@@ -183,10 +183,11 @@ static const struct clk_ops clk_pllv3_sys_ops = {
 	.set_rate	= clk_pllv3_sys_set_rate,
 };
 
-static unsigned long clk_pllv3_av_recalc_rate(struct clk *clk,
+static unsigned long clk_pllv3_av_recalc_rate(struct clk_hw *hw,
 					      unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
+
 	u32 mfn = readl(pll->base + PLL_NUM_OFFSET);
 	u32 mfd = readl(pll->base + PLL_DENOM_OFFSET);
 	u32 div = readl(pll->base) & pll->div_mask;
@@ -194,7 +195,7 @@ static unsigned long clk_pllv3_av_recalc_rate(struct clk *clk,
 	return (parent_rate * div) + ((parent_rate / mfd) * mfn);
 }
 
-static long clk_pllv3_av_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pllv3_av_round_rate(struct clk_hw *hw, unsigned long rate,
 				    unsigned long *prate)
 {
 	unsigned long parent_rate = *prate;
@@ -218,10 +219,11 @@ static long clk_pllv3_av_round_rate(struct clk *clk, unsigned long rate,
 	return parent_rate * div + parent_rate / mfd * mfn;
 }
 
-static int clk_pllv3_av_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pllv3_av_set_rate(struct clk_hw *hw, unsigned long rate,
 		unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
+
 	unsigned long min_rate = parent_rate * 27;
 	unsigned long max_rate = parent_rate * 54;
 	u32 val, div;
@@ -255,10 +257,10 @@ static const struct clk_ops clk_pllv3_av_ops = {
 	.set_rate	= clk_pllv3_av_set_rate,
 };
 
-static unsigned long clk_pllv3_enet_recalc_rate(struct clk *clk,
+static unsigned long clk_pllv3_enet_recalc_rate(struct clk_hw *hw,
 						unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 
 	return pll->ref_clock;
 }
@@ -274,10 +276,10 @@ static const struct clk_ops clk_pllv3_mlb_ops = {
 	.disable	= clk_pllv3_disable,
 };
 
-static unsigned long clk_pllv3_sys_vf610_recalc_rate(struct clk *clk,
+static unsigned long clk_pllv3_sys_vf610_recalc_rate(struct clk_hw *hw,
 						     unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 
 	u32 mfn = readl(pll->base + SYS_VF610_PLL_OFFSET + PLL_NUM_OFFSET);
 	u32 mfd = readl(pll->base + SYS_VF610_PLL_OFFSET + PLL_DENOM_OFFSET);
@@ -286,7 +288,7 @@ static unsigned long clk_pllv3_sys_vf610_recalc_rate(struct clk *clk,
 	return (parent_rate * div) + ((parent_rate / mfd) * mfn);
 }
 
-static long clk_pllv3_sys_vf610_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pllv3_sys_vf610_round_rate(struct clk_hw *hw, unsigned long rate,
 					   unsigned long *prate)
 {
 	unsigned long parent_rate = *prate;
@@ -308,10 +310,10 @@ static long clk_pllv3_sys_vf610_round_rate(struct clk *clk, unsigned long rate,
 	return parent_rate * 20 + parent_rate / mfd * mfn;
 }
 
-static int clk_pllv3_sys_vf610_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pllv3_sys_vf610_set_rate(struct clk_hw *hw, unsigned long rate,
 					unsigned long parent_rate)
 {
-	struct clk_pllv3 *pll = to_clk_pllv3(clk);
+	struct clk_pllv3 *pll = to_clk_pllv3(hw);
 	unsigned long min_rate = parent_rate * 20;
 	unsigned long max_rate = 528000000;
 	u32 val;
@@ -400,20 +402,20 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 	pll->base = base;
 	pll->div_mask = div_mask;
 	pll->parent = parent;
-	pll->clk.ops = ops;
-	pll->clk.name = name;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
+	pll->hw.clk.ops = ops;
+	pll->hw.clk.name = name;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
 
 	val = readl(pll->base);
 	val &= ~BM_PLL_BYPASS;
 	writel(val, pll->base);
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
index 9fe4c6e6b2..f911bf4aa1 100644
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ b/drivers/clk/imx/clk-sccg-pll.c
@@ -39,26 +39,26 @@
 #define OSC_27M		27000000
 
 struct clk_sccg_pll {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*base;
 	const char	*parent;
 };
 
-#define to_clk_sccg_pll(_clk) container_of(_clk, struct clk_sccg_pll, clk)
+#define to_clk_sccg_pll(_hw) container_of(_hw, struct clk_sccg_pll, hw)
 
-static int clk_pll1_is_prepared(struct clk *clk)
+static int clk_pll1_is_prepared(struct clk_hw *hw)
 {
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
+	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val;
 
 	val = readl(pll->base + PLL_CFG0);
 	return (val & (1 << PLL_PD)) ? 0 : 1;
 }
 
-static unsigned long clk_pll1_recalc_rate(struct clk *clk,
+static unsigned long clk_pll1_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
+	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val, divf;
 
 	val = readl(pll->base + PLL_CFG2);
@@ -67,7 +67,7 @@ static unsigned long clk_pll1_recalc_rate(struct clk *clk,
 	return parent_rate * 2 * (divf + 1);
 }
 
-static long clk_pll1_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pll1_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *prate)
 {
 	unsigned long parent_rate = *prate;
@@ -78,10 +78,10 @@ static long clk_pll1_round_rate(struct clk *clk, unsigned long rate,
 	return parent_rate * div * 2;
 }
 
-static int clk_pll1_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pll1_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
+	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val;
 	u32 divf;
 
@@ -97,9 +97,9 @@ static int clk_pll1_set_rate(struct clk *clk, unsigned long rate,
 	return 0;
 }
 
-static int clk_pll1_prepare(struct clk *clk)
+static int clk_pll1_prepare(struct clk_hw *hw)
 {
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
+	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val;
 
 	val = readl(pll->base);
@@ -111,19 +111,20 @@ static int clk_pll1_prepare(struct clk *clk)
 	return 0;
 }
 
-static void clk_pll1_unprepare(struct clk *clk)
+static void clk_pll1_unprepare(struct clk_hw *hw)
 {
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
+	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val;
+
 	val = readl(pll->base);
 	val |= (1 << PLL_PD);
 	writel(val, pll->base);
 }
 
-static unsigned long clk_pll2_recalc_rate(struct clk *clk,
+static unsigned long clk_pll2_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
+	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val, ref, divr1, divf1, divr2, divf2;
 	u64 temp64;
 
@@ -154,7 +155,7 @@ static unsigned long clk_pll2_recalc_rate(struct clk *clk,
 	return (unsigned long)temp64;
 }
 
-static long clk_pll2_round_rate(struct clk *clk, unsigned long rate,
+static long clk_pll2_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *prate)
 {
 	u32 div;
@@ -165,12 +166,12 @@ static long clk_pll2_round_rate(struct clk *clk, unsigned long rate,
 	return parent_rate * div;
 }
 
-static int clk_pll2_set_rate(struct clk *clk, unsigned long rate,
+static int clk_pll2_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long parent_rate)
 {
+	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val;
 	u32 divf;
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(clk);
 
 	divf = rate / (parent_rate);
 
@@ -210,25 +211,25 @@ struct clk *imx_clk_sccg_pll(const char *name, const char *parent_name,
 		return ERR_PTR(-ENOMEM);
 
 	pll->base = base;
-	pll->clk.name = name;
+	pll->hw.clk.name = name;
 	switch (pll_type) {
 	case SCCG_PLL1:
-		pll->clk.ops = &clk_sccg_pll1_ops;
+		pll->hw.clk.ops = &clk_sccg_pll1_ops;
 		break;
 	case SCCG_PLL2:
-		pll->clk.ops = &clk_sccg_pll2_ops;
+		pll->hw.clk.ops = &clk_sccg_pll2_ops;
 		break;
 	}
 
 	pll->parent = parent_name;
-        pll->clk.parent_names = &pll->parent;
-        pll->clk.num_parents = 1;
+        pll->hw.clk.parent_names = &pll->parent;
+        pll->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
diff --git a/drivers/clk/loongson/clk-ls1b200.c b/drivers/clk/loongson/clk-ls1b200.c
index b7f4929423..6ac545224f 100644
--- a/drivers/clk/loongson/clk-ls1b200.c
+++ b/drivers/clk/loongson/clk-ls1b200.c
@@ -35,21 +35,21 @@ static struct clk *clks[LS1B_CLK_END];
 static struct clk_onecell_data clk_data;
 
 struct clk_ls1b200 {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *base;
 	int div_shift;
 	int div_mask;
 	const char *parent;
 };
 
-static unsigned long clk_ls1b200_recalc_rate(struct clk *clk, unsigned long parent_rate)
+static unsigned long clk_ls1b200_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
 {
 	int n;
 	unsigned long rate;
 	int pll_freq;
 	struct clk_ls1b200 *ls1bclk;
 
-	ls1bclk = container_of(clk, struct clk_ls1b200, clk);
+	ls1bclk = container_of(hw, struct clk_ls1b200, hw);
 	pll_freq = __raw_readl(ls1bclk->base);
 
 	n  = 12 * 1024;
@@ -77,14 +77,14 @@ static struct clk *clk_ls1b200(const char *name, const char *parent,
 	f->div_shift = div_shift;
 	f->div_mask = div_mask;
 
-	f->clk.ops = &clk_ls1b200_ops;
-	f->clk.name = name;
-	f->clk.parent_names = &f->parent;
-	f->clk.num_parents = 1;
+	f->hw.clk.ops = &clk_ls1b200_ops;
+	f->hw.clk.name = name;
+	f->hw.clk.parent_names = &f->parent;
+	f->hw.clk.num_parents = 1;
 
-	bclk_register(&f->clk);
+	bclk_register(&f->hw.clk);
 
-	return &f->clk;
+	return &f->hw.clk;
 }
 
 static const char * const cpu_mux[] = {"cpu_div", "oscillator", };
diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
index 79e049d18c..1b7fa12701 100644
--- a/drivers/clk/mvebu/corediv.c
+++ b/drivers/clk/mvebu/corediv.c
@@ -51,7 +51,7 @@ struct clk_corediv_soc_desc {
  * existing in the current SoC.
  */
 struct clk_corediv {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	const struct clk_corediv_desc *desc;
 	const struct clk_corediv_soc_desc *soc_desc;
@@ -70,11 +70,11 @@ static const struct clk_corediv_desc mvebu_corediv_desc[] = {
 
 #define CORE_CLK_DIV_RATIO_MASK	0xff
 
-#define to_corediv_clk(p) container_of(p, struct clk_corediv, clk)
+#define to_corediv_clk(p) container_of(p, struct clk_corediv, hw)
 
-static int clk_corediv_is_enabled(struct clk *clk)
+static int clk_corediv_is_enabled(struct clk_hw *hw)
 {
-	struct clk_corediv *corediv = to_corediv_clk(clk);
+	struct clk_corediv *corediv = to_corediv_clk(hw);
 	const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 	const struct clk_corediv_desc *desc = corediv->desc;
 	u32 enable_mask = BIT(desc->fieldbit) << soc_desc->enable_bit_offset;
@@ -82,9 +82,9 @@ static int clk_corediv_is_enabled(struct clk *clk)
 	return !!(readl(corediv->reg) & enable_mask);
 }
 
-static int clk_corediv_enable(struct clk *clk)
+static int clk_corediv_enable(struct clk_hw *hw)
 {
-	struct clk_corediv *corediv = to_corediv_clk(clk);
+	struct clk_corediv *corediv = to_corediv_clk(hw);
 	const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 	const struct clk_corediv_desc *desc = corediv->desc;
 	u32 reg;
@@ -96,9 +96,9 @@ static int clk_corediv_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_corediv_disable(struct clk *clk)
+static void clk_corediv_disable(struct clk_hw *hw)
 {
-	struct clk_corediv *corediv = to_corediv_clk(clk);
+	struct clk_corediv *corediv = to_corediv_clk(hw);
 	const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 	const struct clk_corediv_desc *desc = corediv->desc;
 	u32 reg;
@@ -108,10 +108,10 @@ static void clk_corediv_disable(struct clk *clk)
 	writel(reg, corediv->reg);
 }
 
-static unsigned long clk_corediv_recalc_rate(struct clk *clk,
+static unsigned long clk_corediv_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
-	struct clk_corediv *corediv = to_corediv_clk(clk);
+	struct clk_corediv *corediv = to_corediv_clk(hw);
 	const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 	const struct clk_corediv_desc *desc = corediv->desc;
 	u32 reg, div;
@@ -121,7 +121,7 @@ static unsigned long clk_corediv_recalc_rate(struct clk *clk,
 	return parent_rate / div;
 }
 
-static long clk_corediv_round_rate(struct clk *clk, unsigned long rate,
+static long clk_corediv_round_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long *parent_rate)
 {
 	/* Valid ratio are 1:4, 1:5, 1:6 and 1:8 */
@@ -136,10 +136,10 @@ static long clk_corediv_round_rate(struct clk *clk, unsigned long rate,
 	return *parent_rate / div;
 }
 
-static int clk_corediv_set_rate(struct clk *clk, unsigned long rate,
+static int clk_corediv_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate)
 {
-	struct clk_corediv *corediv = to_corediv_clk(clk);
+	struct clk_corediv *corediv = to_corediv_clk(hw);
 	const struct clk_corediv_soc_desc *soc_desc = corediv->soc_desc;
 	const struct clk_corediv_desc *desc = corediv->desc;
 	u32 reg, div;
@@ -225,7 +225,7 @@ static int mvebu_corediv_clk_probe(struct device_d *dev)
 
 	for (n = 0; n < clk_data.clk_num; n++) {
 		const char *clk_name;
-		struct clk *clk = &corediv->clk;
+		struct clk *clk = &corediv->hw.clk;
 
 		if (of_property_read_string_index(np,
 				"clock-output-names", n, &clk_name)) {
diff --git a/drivers/clk/mxs/clk-div.c b/drivers/clk/mxs/clk-div.c
index 9bf48c2222..17083a051a 100644
--- a/drivers/clk/mxs/clk-div.c
+++ b/drivers/clk/mxs/clk-div.c
@@ -28,40 +28,40 @@ struct clk_div {
 	u8 busy;
 };
 
-static inline struct clk_div *to_clk_div(struct clk *clk)
+static inline struct clk_div *to_clk_div(struct clk_hw *hw)
 {
-	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
+	struct clk_divider *divider = to_clk_divider(hw);
 
 	return container_of(divider, struct clk_div, divider);
 }
 
-static unsigned long clk_div_recalc_rate(struct clk *clk,
+static unsigned long clk_div_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_div *div = to_clk_div(clk);
+	struct clk_div *div = to_clk_div(hw);
 
-	return div->ops->recalc_rate(&div->divider.clk, parent_rate);
+	return div->ops->recalc_rate(&div->divider.hw, parent_rate);
 }
 
-static long clk_div_round_rate(struct clk *clk, unsigned long rate,
+static long clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *prate)
 {
-	struct clk_div *div = to_clk_div(clk);
+	struct clk_div *div = to_clk_div(hw);
 
-	return div->ops->round_rate(&div->divider.clk, rate, prate);
+	return div->ops->round_rate(&div->divider.hw, rate, prate);
 }
 
-static int clk_div_set_rate(struct clk *clk, unsigned long rate,
+static int clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	struct clk_div *div = to_clk_div(clk);
+	struct clk_div *div = to_clk_div(hw);
 	int ret;
 
-	ret = div->ops->set_rate(&div->divider.clk, rate, parent_rate);
+	ret = div->ops->set_rate(&div->divider.hw, rate, parent_rate);
 	if (ret)
 		return ret;
 
-	if (clk_is_enabled(clk))
+	if (clk_hw_is_enabled(hw))
 		while (readl(div->reg) & 1 << div->busy);
 
 	return 0;
@@ -82,10 +82,10 @@ struct clk *mxs_clk_div(const char *name, const char *parent_name,
 	div = xzalloc(sizeof(*div));
 
 	div->parent = parent_name;
-	div->divider.clk.name = name;
-	div->divider.clk.ops = &clk_div_ops;
-	div->divider.clk.parent_names = &div->parent;
-	div->divider.clk.num_parents = 1;
+	div->divider.hw.clk.name = name;
+	div->divider.hw.clk.ops = &clk_div_ops;
+	div->divider.hw.clk.parent_names = &div->parent;
+	div->divider.hw.clk.num_parents = 1;
 
 	div->reg = reg;
 	div->busy = busy;
@@ -96,9 +96,9 @@ struct clk *mxs_clk_div(const char *name, const char *parent_name,
 	div->divider.flags = CLK_DIVIDER_ONE_BASED;
 	div->ops = &clk_divider_ops;
 
-	ret = bclk_register(&div->divider.clk);
+	ret = bclk_register(&div->divider.hw.clk);
 	if (ret)
 		return ERR_PTR(ret);
 
-	return &div->divider.clk;
+	return &div->divider.hw.clk;
 }
diff --git a/drivers/clk/mxs/clk-frac.c b/drivers/clk/mxs/clk-frac.c
index 6a6ce8c537..6fb479dfad 100644
--- a/drivers/clk/mxs/clk-frac.c
+++ b/drivers/clk/mxs/clk-frac.c
@@ -23,7 +23,7 @@
  * when the divider is adjusted.
  */
 struct clk_frac {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	void __iomem *reg;
 	u8 shift;
@@ -31,12 +31,12 @@ struct clk_frac {
 	u8 busy;
 };
 
-#define to_clk_frac(_hw) container_of(_hw, struct clk_frac, clk)
+#define to_clk_frac(_hw) container_of(_hw, struct clk_frac, hw)
 
-static unsigned long clk_frac_recalc_rate(struct clk *clk,
+static unsigned long clk_frac_recalc_rate(struct clk_hw *hw,
 					  unsigned long parent_rate)
 {
-	struct clk_frac *frac = to_clk_frac(clk);
+	struct clk_frac *frac = to_clk_frac(hw);
 	u32 div;
 
 	div = readl(frac->reg) >> frac->shift;
@@ -45,10 +45,10 @@ static unsigned long clk_frac_recalc_rate(struct clk *clk,
 	return (parent_rate >> frac->width) * div;
 }
 
-static long clk_frac_round_rate(struct clk *clk, unsigned long rate,
+static long clk_frac_round_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long *prate)
 {
-	struct clk_frac *frac = to_clk_frac(clk);
+	struct clk_frac *frac = to_clk_frac(hw);
 	unsigned long parent_rate = *prate;
 	u32 div;
 	u64 tmp;
@@ -67,10 +67,10 @@ static long clk_frac_round_rate(struct clk *clk, unsigned long rate,
 	return (parent_rate >> frac->width) * div;
 }
 
-static int clk_frac_set_rate(struct clk *clk, unsigned long rate,
+static int clk_frac_set_rate(struct clk_hw *hw, unsigned long rate,
 			     unsigned long parent_rate)
 {
-	struct clk_frac *frac = to_clk_frac(clk);
+	struct clk_frac *frac = to_clk_frac(hw);
 	u32 div, val;
 	u64 tmp;
 
@@ -90,7 +90,7 @@ static int clk_frac_set_rate(struct clk *clk, unsigned long rate,
 	val |= div << frac->shift;
 	writel(val, frac->reg);
 
-	if (clk_is_enabled(clk))
+	if (clk_hw_is_enabled(hw))
 		while (readl(frac->reg) & 1 << frac->busy);
 
 	return 0;
@@ -113,18 +113,18 @@ struct clk *mxs_clk_frac(const char *name, const char *parent_name,
 		return ERR_PTR(-ENOMEM);
 
 	frac->parent = parent_name;
-	frac->clk.name = name;
-	frac->clk.ops = &clk_frac_ops;
-	frac->clk.parent_names = &frac->parent;
-	frac->clk.num_parents = 1;
+	frac->hw.clk.name = name;
+	frac->hw.clk.ops = &clk_frac_ops;
+	frac->hw.clk.parent_names = &frac->parent;
+	frac->hw.clk.num_parents = 1;
 
 	frac->reg = reg;
 	frac->shift = shift;
 	frac->width = width;
 
-	ret = bclk_register(&frac->clk);
+	ret = bclk_register(&frac->hw.clk);
 	if (ret)
 		return ERR_PTR(ret);
 
-	return &frac->clk;
+	return &frac->hw.clk;
 }
diff --git a/drivers/clk/mxs/clk-lcdif.c b/drivers/clk/mxs/clk-lcdif.c
index 639f6eb6f4..a395701262 100644
--- a/drivers/clk/mxs/clk-lcdif.c
+++ b/drivers/clk/mxs/clk-lcdif.c
@@ -7,18 +7,18 @@
 #include "clk.h"
 
 struct clk_lcdif {
-	struct clk clk;
+	struct clk_hw hw;
 
 	struct clk *frac, *div, *gate;
 	const char *parent;
 };
 
-#define to_clk_lcdif(_hw) container_of(_hw, struct clk_lcdif, clk)
+#define to_clk_lcdif(_hw) container_of(_hw, struct clk_lcdif, hw)
 
-static int clk_lcdif_set_rate(struct clk *clk, unsigned long rate,
+static int clk_lcdif_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long unused)
 {
-	struct clk_lcdif *lcdif = to_clk_lcdif(clk);
+	struct clk_lcdif *lcdif = to_clk_lcdif(hw);
 	unsigned long frac, div, best_div = 1;
 	int delta, best_delta = 0x7fffffff;
 	unsigned long frate, rrate, best_frate;
@@ -63,14 +63,14 @@ struct clk *mxs_clk_lcdif(const char *name, struct clk *frac, struct clk *div,
 	lcdif->frac = frac;
 	lcdif->div = div;
 	lcdif->gate = gate;
-	lcdif->clk.name = name;
-	lcdif->clk.ops = &clk_lcdif_ops;
-	lcdif->clk.parent_names = &lcdif->parent;
-	lcdif->clk.num_parents = 1;
+	lcdif->hw.clk.name = name;
+	lcdif->hw.clk.ops = &clk_lcdif_ops;
+	lcdif->hw.clk.parent_names = &lcdif->parent;
+	lcdif->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&lcdif->clk);
+	ret = bclk_register(&lcdif->hw.clk);
 	if (ret)
 		return ERR_PTR(ret);
 
-	return &lcdif->clk;
+	return &lcdif->hw.clk;
 }
diff --git a/drivers/clk/mxs/clk-pll.c b/drivers/clk/mxs/clk-pll.c
index 7094012a94..2c55ab7d8b 100644
--- a/drivers/clk/mxs/clk-pll.c
+++ b/drivers/clk/mxs/clk-pll.c
@@ -24,18 +24,18 @@
  * and the shift of gate bit is always 31.
  */
 struct clk_pll {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	void __iomem *base;
 	u8 power;
 	unsigned long rate;
 };
 
-#define to_clk_pll(_hw) container_of(_hw, struct clk_pll, clk)
+#define to_clk_pll(_hw) container_of(_hw, struct clk_pll, hw)
 
-static int clk_pll_enable(struct clk *clk)
+static int clk_pll_enable(struct clk_hw *hw)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 
 	writel(1 << pll->power, pll->base + SET);
 
@@ -46,18 +46,18 @@ static int clk_pll_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_pll_disable(struct clk *clk)
+static void clk_pll_disable(struct clk_hw *hw)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 
 	writel(1 << 31, pll->base + SET);
 
 	writel(1 << pll->power, pll->base + CLR);
 }
 
-static int clk_pll_is_enabled(struct clk *clk)
+static int clk_pll_is_enabled(struct clk_hw *hw)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 	u32 val;
 
 	val = readl(pll->base);
@@ -68,10 +68,10 @@ static int clk_pll_is_enabled(struct clk *clk)
 		return 1;
 }
 
-static unsigned long clk_pll_recalc_rate(struct clk *clk,
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_pll *pll = to_clk_pll(clk);
+	struct clk_pll *pll = to_clk_pll(hw);
 
 	return pll->rate;
 }
@@ -92,18 +92,18 @@ struct clk *mxs_clk_pll(const char *name, const char *parent_name,
 	pll = xzalloc(sizeof(*pll));
 
 	pll->parent = parent_name;
-	pll->clk.name = name;
-	pll->clk.ops = &clk_pll_ops;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
+	pll->hw.clk.name = name;
+	pll->hw.clk.ops = &clk_pll_ops;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
 
 	pll->base = base;
 	pll->rate = rate;
 	pll->power = power;
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret)
 		ERR_PTR(ret);
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
diff --git a/drivers/clk/mxs/clk-ref.c b/drivers/clk/mxs/clk-ref.c
index 8c12e282ad..d483c9c6b2 100644
--- a/drivers/clk/mxs/clk-ref.c
+++ b/drivers/clk/mxs/clk-ref.c
@@ -23,20 +23,20 @@
  * as pll rate  * (18 / FRAC), where FRAC = 18 ~ 35.
  */
 struct clk_ref {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	void __iomem *reg;
 	u8 idx;
 };
 
-#define to_clk_ref(_hw) container_of(_hw, struct clk_ref, clk)
+#define to_clk_ref(_hw) container_of(_hw, struct clk_ref, hw)
 
 #define SET	0x4
 #define CLR	0x8
 
-static int clk_ref_is_enabled(struct clk *clk)
+static int clk_ref_is_enabled(struct clk_hw *hw)
 {
-	struct clk_ref *ref = to_clk_ref(clk);
+	struct clk_ref *ref = to_clk_ref(hw);
 	u32 reg = readl(ref->reg);
 
 	if (reg & 1 << ((ref->idx + 1) * 8 - 1))
@@ -45,26 +45,26 @@ static int clk_ref_is_enabled(struct clk *clk)
 	return 1;
 }
 
-static int clk_ref_enable(struct clk *clk)
+static int clk_ref_enable(struct clk_hw *hw)
 {
-	struct clk_ref *ref = to_clk_ref(clk);
+	struct clk_ref *ref = to_clk_ref(hw);
 
 	writel(1 << ((ref->idx + 1) * 8 - 1), ref->reg + CLR);
 
 	return 0;
 }
 
-static void clk_ref_disable(struct clk *clk)
+static void clk_ref_disable(struct clk_hw *hw)
 {
-	struct clk_ref *ref = to_clk_ref(clk);
+	struct clk_ref *ref = to_clk_ref(hw);
 
 	writel(1 << ((ref->idx + 1) * 8 - 1), ref->reg + SET);
 }
 
-static unsigned long clk_ref_recalc_rate(struct clk *clk,
+static unsigned long clk_ref_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct clk_ref *ref = to_clk_ref(clk);
+	struct clk_ref *ref = to_clk_ref(hw);
 	u64 tmp = parent_rate;
 	u8 frac = (readl(ref->reg) >> (ref->idx * 8)) & 0x3f;
 
@@ -74,7 +74,7 @@ static unsigned long clk_ref_recalc_rate(struct clk *clk,
 	return tmp;
 }
 
-static long clk_ref_round_rate(struct clk *clk, unsigned long rate,
+static long clk_ref_round_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long *prate)
 {
 	unsigned long parent_rate = *prate;
@@ -97,10 +97,10 @@ static long clk_ref_round_rate(struct clk *clk, unsigned long rate,
 	return tmp;
 }
 
-static int clk_ref_set_rate(struct clk *clk, unsigned long rate,
+static int clk_ref_set_rate(struct clk_hw *hw, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	struct clk_ref *ref = to_clk_ref(clk);
+	struct clk_ref *ref = to_clk_ref(hw);
 	u64 tmp = parent_rate;
 	u32 val;
 	u32 frac, shift = ref->idx * 8;
@@ -140,17 +140,17 @@ struct clk *mxs_clk_ref(const char *name, const char *parent_name,
 	ref = xzalloc(sizeof(*ref));
 
 	ref->parent = parent_name;
-	ref->clk.name = name;
-	ref->clk.ops = &clk_ref_ops;
-	ref->clk.parent_names = &ref->parent;
-	ref->clk.num_parents = 1;
+	ref->hw.clk.name = name;
+	ref->hw.clk.ops = &clk_ref_ops;
+	ref->hw.clk.parent_names = &ref->parent;
+	ref->hw.clk.num_parents = 1;
 
 	ref->reg = reg;
 	ref->idx = idx;
 
-	ret = bclk_register(&ref->clk);
+	ret = bclk_register(&ref->hw.clk);
 	if (ret)
 		return ERR_PTR(ret);
 
-	return &ref->clk;
+	return &ref->hw.clk;
 }
diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 732ce4207d..88564872f5 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -48,7 +48,7 @@
  * @reg_data:	cpu-specific register settings
  */
 struct rockchip_cpuclk {
-	struct clk				hw;
+	struct clk_hw				hw;
 
 	struct clk				*alt_parent;
 	void __iomem				*reg_base;
@@ -57,9 +57,9 @@ struct rockchip_cpuclk {
 	const struct rockchip_cpuclk_reg_data	*reg_data;
 };
 
-#define to_rockchip_cpuclk_hw(hw) container_of(hw, struct rockchip_cpuclk, hw)
+#define to_rockchip_cpuclk_hw(_hw) container_of(_hw, struct rockchip_cpuclk, hw)
 
-static unsigned long rockchip_cpuclk_recalc_rate(struct clk *hw,
+static unsigned long rockchip_cpuclk_recalc_rate(struct clk_hw *hw,
 					unsigned long parent_rate)
 {
 	struct rockchip_cpuclk *cpuclk = to_rockchip_cpuclk_hw(hw);
@@ -94,13 +94,13 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
 	if (!cpuclk)
 		return ERR_PTR(-ENOMEM);
 
-	cpuclk->hw.name = name;
-	cpuclk->hw.parent_names = &parent_names[0];
-	cpuclk->hw.num_parents = 1;
-	cpuclk->hw.ops = &rockchip_cpuclk_ops;
+	cpuclk->hw.clk.name = name;
+	cpuclk->hw.clk.parent_names = &parent_names[0];
+	cpuclk->hw.clk.num_parents = 1;
+	cpuclk->hw.clk.ops = &rockchip_cpuclk_ops;
 
 	/* only allow rate changes when we have a rate table */
-	cpuclk->hw.flags = (nrates > 0) ? CLK_SET_RATE_PARENT : 0;
+	cpuclk->hw.clk.flags = (nrates > 0) ? CLK_SET_RATE_PARENT : 0;
 
 	cpuclk->reg_base = reg_base;
 	cpuclk->reg_data = reg_data;
@@ -141,13 +141,13 @@ struct clk *rockchip_clk_register_cpuclk(const char *name,
 		}
 	}
 
-	ret = bclk_register(&cpuclk->hw);
+	ret = bclk_register(&cpuclk->hw.clk);
 	if (ret) {
 		pr_err("%s: could not register cpuclk %s\n", __func__,	name);
 		goto free_rate_table;
 	}
 
-	return &cpuclk->hw;
+	return &cpuclk->hw.clk;
 
 free_rate_table:
 	kfree(cpuclk->rate_table);
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index ec5b264ac5..9a430f928b 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -21,9 +21,9 @@
 #define PLL_MODE_DEEP		0x2
 
 struct rockchip_clk_pll {
-	struct clk		hw;
+	struct clk_hw		hw;
 
-	struct clk		pll_mux;
+	struct clk_hw		pll_mux;
 	const struct clk_ops	*pll_mux_ops;
 
 	void __iomem		*reg_base;
@@ -52,7 +52,7 @@ static const struct rockchip_pll_rate_table *rockchip_get_pll_settings(
 	return NULL;
 }
 
-static long rockchip_pll_round_rate(struct clk *hw,
+static long rockchip_pll_round_rate(struct clk_hw *hw,
 			    unsigned long drate, unsigned long *prate)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
@@ -112,7 +112,7 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
 #define RK3066_PLLCON3_PWRDOWN		(1 << 1)
 #define RK3066_PLLCON3_BYPASS		(1 << 0)
 
-static unsigned long rockchip_rk3066_pll_recalc_rate(struct clk *hw,
+static unsigned long rockchip_rk3066_pll_recalc_rate(struct clk_hw *hw,
 						     unsigned long prate)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
@@ -122,7 +122,7 @@ static unsigned long rockchip_rk3066_pll_recalc_rate(struct clk *hw,
 	pllcon = readl(pll->reg_base + RK3066_PLLCON(3));
 	if (pllcon & RK3066_PLLCON3_BYPASS) {
 		pr_debug("%s: pll %s is bypassed\n", __func__,
-			__clk_get_name(hw));
+			clk_hw_get_name(hw));
 		return prate;
 	}
 
@@ -138,18 +138,18 @@ static unsigned long rockchip_rk3066_pll_recalc_rate(struct clk *hw,
 	do_div(rate64, no + 1);
 
 	pr_debug("%s: %s rate=%lu\n",
-		 __func__, hw->name, (unsigned long)rate64);
+		 __func__, clk_hw_get_name(hw), (unsigned long)rate64);
 
 	return (unsigned long)rate64;
 }
 
-static int rockchip_rk3066_pll_set_rate(struct clk *hw, unsigned long drate,
+static int rockchip_rk3066_pll_set_rate(struct clk_hw *hw, unsigned long drate,
 					unsigned long prate)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 	const struct rockchip_pll_rate_table *rate;
 	unsigned long old_rate = rockchip_rk3066_pll_recalc_rate(hw, prate);
-	struct clk *pll_mux = &pll->pll_mux;
+	struct clk_hw *pll_mux = &pll->pll_mux;
 	const struct clk_ops *pll_mux_ops = pll->pll_mux_ops;
 	int rate_change_remuxed = 0;
 	int cur_parent;
@@ -159,13 +159,13 @@ static int rockchip_rk3066_pll_set_rate(struct clk *hw, unsigned long drate,
 		return 0;
 
 	pr_debug("%s: changing %s from %lu to %lu with a parent rate of %lu\n",
-		 __func__, __clk_get_name(hw), old_rate, drate, prate);
+		 __func__, clk_hw_get_name(hw), old_rate, drate, prate);
 
 	/* Get required rate settings from table */
 	rate = rockchip_get_pll_settings(pll, drate);
 	if (!rate) {
 		pr_err("%s: Invalid rate : %lu for pll clk %s\n", __func__,
-			drate, __clk_get_name(hw));
+			drate, clk_hw_get_name(hw));
 		return -EINVAL;
 	}
 
@@ -215,7 +215,7 @@ static int rockchip_rk3066_pll_set_rate(struct clk *hw, unsigned long drate,
 	return ret;
 }
 
-static int rockchip_rk3066_pll_enable(struct clk *hw)
+static int rockchip_rk3066_pll_enable(struct clk_hw *hw)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 
@@ -225,7 +225,7 @@ static int rockchip_rk3066_pll_enable(struct clk *hw)
 	return 0;
 }
 
-static void rockchip_rk3066_pll_disable(struct clk *hw)
+static void rockchip_rk3066_pll_disable(struct clk_hw *hw)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 
@@ -234,7 +234,7 @@ static void rockchip_rk3066_pll_disable(struct clk *hw)
 	       pll->reg_base + RK3066_PLLCON(3));
 }
 
-static int rockchip_rk3066_pll_is_enabled(struct clk *hw)
+static int rockchip_rk3066_pll_is_enabled(struct clk_hw *hw)
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 	u32 pllcon = readl(pll->reg_base + RK3066_PLLCON(3));
@@ -290,10 +290,10 @@ struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
 
 	/* name the actual pll */
 	snprintf(pll->pll_name, sizeof(pll->pll_name), "pll_%s", name);
-	pll->hw.name = pll->pll_name;
+	pll->hw.clk.name = pll->pll_name;
 
-	pll->hw.parent_names = &parent_names[0];
-	pll->hw.num_parents = 1;
+	pll->hw.clk.parent_names = &parent_names[0];
+	pll->hw.clk.num_parents = 1;
 
 	if (rate_table) {
 		int len;
@@ -315,9 +315,9 @@ struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
 	switch (pll_type) {
 	case pll_rk3066:
 		if (!pll->rate_table)
-			pll->hw.ops = &rockchip_rk3066_pll_clk_norate_ops;
+			pll->hw.clk.ops = &rockchip_rk3066_pll_clk_norate_ops;
 		else
-			pll->hw.ops = &rockchip_rk3066_pll_clk_ops;
+			pll->hw.clk.ops = &rockchip_rk3066_pll_clk_ops;
 		break;
 	default:
 		pr_warn("%s: Unknown pll type for pll clk %s\n",
@@ -330,11 +330,11 @@ struct clk *rockchip_clk_register_pll(enum rockchip_pll_type pll_type,
 	pll->lock_shift = lock_shift;
 	pll->flags = clk_pll_flags;
 
-	ret = bclk_register(&pll->hw);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		pr_err("%s: failed to register pll clock %s : %d\n",
 			__func__, name, ret);
-		mux_clk = &pll->hw;
+		mux_clk = &pll->hw.clk;
 		goto err_exit;
 	}
 
diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index 57459d0e2b..cbdec98fc6 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -14,15 +14,15 @@
 
 #include "clk.h"
 
-#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, clk)
+#define to_socfpga_gate_clk(p) container_of(p, struct socfpga_gate_clk, hw)
 
 /* SDMMC Group for System Manager defines */
 #define SYSMGR_SDMMCGRP_CTRL_OFFSET	0x28
 
-static unsigned long socfpga_gate_clk_recalc_rate(struct clk *clk,
+static unsigned long socfpga_gate_clk_recalc_rate(struct clk_hw *hw,
 	unsigned long parent_rate)
 {
-	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(clk);
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hw);
 	u32 div = 1, val;
 
 	if (socfpgaclk->fixed_div)
@@ -36,9 +36,9 @@ static unsigned long socfpga_gate_clk_recalc_rate(struct clk *clk,
 	return parent_rate / div;
 }
 
-static int socfpga_clk_prepare(struct clk *clk)
+static int socfpga_clk_prepare(struct clk_hw *hw)
 {
-	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(clk);
+	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hw);
 	int i;
 	u32 hs_timing;
 	u32 clk_phase[2];
@@ -82,12 +82,12 @@ static int socfpga_clk_prepare(struct clk *clk)
 	return 0;
 }
 
-static int clk_socfpga_enable(struct clk *clk)
+static int clk_socfpga_enable(struct clk_hw *hw)
 {
-	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(clk);
+	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(hw);
 	u32 val;
 
-	socfpga_clk_prepare(clk);
+	socfpga_clk_prepare(hw);
 
 	val = readl(socfpga_clk->reg);
 	val |= 1 << socfpga_clk->bit_idx;
@@ -96,9 +96,9 @@ static int clk_socfpga_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_socfpga_disable(struct clk *clk)
+static void clk_socfpga_disable(struct clk_hw *hw)
 {
-	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(clk);
+	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(hw);
 	u32 val;
 
 	val = readl(socfpga_clk->reg);
@@ -159,8 +159,8 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 
 	of_property_read_string(node, "clock-output-names", &clk_name);
 
-	socfpga_clk->clk.name = xstrdup(clk_name);
-	socfpga_clk->clk.ops = ops;
+	socfpga_clk->hw.clk.name = xstrdup(clk_name);
+	socfpga_clk->hw.clk.ops = ops;
 
 	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
 		socfpga_clk->parent_names[i] = of_clk_get_parent_name(node, i);
@@ -168,16 +168,16 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 			break;
 	}
 
-	socfpga_clk->clk.num_parents = i;
-	socfpga_clk->clk.parent_names = socfpga_clk->parent_names;
+	socfpga_clk->hw.clk.num_parents = i;
+	socfpga_clk->hw.clk.parent_names = socfpga_clk->parent_names;
 
-	rc = bclk_register(&socfpga_clk->clk);
+	rc = bclk_register(&socfpga_clk->hw.clk);
 	if (rc) {
 		free(socfpga_clk);
 		return ERR_PTR(rc);
 	}
 
-	return &socfpga_clk->clk;
+	return &socfpga_clk->hw.clk;
 }
 
 struct clk *socfpga_a10_gate_init(struct device_node *node)
diff --git a/drivers/clk/socfpga/clk-periph-a10.c b/drivers/clk/socfpga/clk-periph-a10.c
index 3fa636d990..f9cf40b0aa 100644
--- a/drivers/clk/socfpga/clk-periph-a10.c
+++ b/drivers/clk/socfpga/clk-periph-a10.c
@@ -17,12 +17,12 @@
 #define SOCFPGA_MPU_FREE_CLK		"mpu_free_clk"
 #define SOCFPGA_NOC_FREE_CLK		"noc_free_clk"
 #define SOCFPGA_SDMMC_FREE_CLK		"sdmmc_free_clk"
-#define to_socfpga_periph_clk(p) container_of(p, struct socfpga_periph_clk, clk)
+#define to_socfpga_periph_clk(p) container_of(p, struct socfpga_periph_clk, hw)
 
-static unsigned long clk_periclk_recalc_rate(struct clk *clk,
+static unsigned long clk_periclk_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
-	struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(clk);
+	struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(hw);
 	u32 div;
 
 	if (socfpgaclk->fixed_div) {
@@ -38,15 +38,15 @@ static unsigned long clk_periclk_recalc_rate(struct clk *clk,
 	return parent_rate / div;
 }
 
-static int clk_periclk_get_parent(struct clk *clk)
+static int clk_periclk_get_parent(struct clk_hw *hw)
 {
-	struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(clk);
+	struct socfpga_periph_clk *socfpgaclk = to_socfpga_periph_clk(hw);
 	u32 clk_src;
 
 	clk_src = readl(socfpgaclk->reg);
-	if (streq(clk->name, SOCFPGA_MPU_FREE_CLK) ||
-	    streq(clk->name, SOCFPGA_NOC_FREE_CLK) ||
-	    streq(clk->name, SOCFPGA_SDMMC_FREE_CLK))
+	if (streq(clk_hw_get_name(hw), SOCFPGA_MPU_FREE_CLK) ||
+	    streq(clk_hw_get_name(hw), SOCFPGA_NOC_FREE_CLK) ||
+	    streq(clk_hw_get_name(hw), SOCFPGA_SDMMC_FREE_CLK))
 		return (clk_src >> CLK_MGR_FREE_SHIFT) &
 			CLK_MGR_FREE_MASK;
 	else
@@ -98,19 +98,19 @@ static struct clk *__socfpga_periph_init(struct device_node *node,
 			break;
 	}
 
-	periph_clk->clk.num_parents = i;
-	periph_clk->clk.parent_names = periph_clk->parent_names;
+	periph_clk->hw.clk.num_parents = i;
+	periph_clk->hw.clk.parent_names = periph_clk->parent_names;
 
-	periph_clk->clk.name = xstrdup(clk_name);
-	periph_clk->clk.ops = ops;
+	periph_clk->hw.clk.name = xstrdup(clk_name);
+	periph_clk->hw.clk.ops = ops;
 
-	rc = bclk_register(&periph_clk->clk);
+	rc = bclk_register(&periph_clk->hw.clk);
 	if (rc) {
 		free(periph_clk);
 		return ERR_PTR(rc);
 	}
 
-	return &periph_clk->clk;
+	return &periph_clk->hw.clk;
 }
 
 struct clk *socfpga_a10_periph_init(struct device_node *node)
diff --git a/drivers/clk/socfpga/clk-pll-a10.c b/drivers/clk/socfpga/clk-pll-a10.c
index e0c34d8486..2e58a2eb5d 100644
--- a/drivers/clk/socfpga/clk-pll-a10.c
+++ b/drivers/clk/socfpga/clk-pll-a10.c
@@ -28,12 +28,12 @@
 #define SOCFPGA_MAIN_PLL_CLK		"main_pll"
 #define SOCFPGA_PERIP_PLL_CLK		"periph_pll"
 
-#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, clk)
+#define to_socfpga_clk(p) container_of(p, struct socfpga_pll, hw)
 
-static unsigned long clk_pll_recalc_rate(struct clk *clk,
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
-	struct socfpga_pll *socfpgaclk = to_socfpga_clk(clk);
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hw);
 	unsigned long divf, divq, reg;
 	unsigned long long vco_freq;
 
@@ -46,9 +46,9 @@ static unsigned long clk_pll_recalc_rate(struct clk *clk,
 	return (unsigned long)vco_freq;
 }
 
-static int clk_pll_get_parent(struct clk *clk)
+static int clk_pll_get_parent(struct clk_hw *hw)
 {
-	struct socfpga_pll *socfpgaclk = to_socfpga_clk(clk);
+	struct socfpga_pll *socfpgaclk = to_socfpga_clk(hw);
 	u32 pll_src;
 
 	pll_src = readl(socfpgaclk->reg);
@@ -57,9 +57,9 @@ static int clk_pll_get_parent(struct clk *clk)
 		CLK_MGR_PLL_CLK_SRC_MASK;
 }
 
-static int clk_socfpga_enable(struct clk *clk)
+static int clk_socfpga_enable(struct clk_hw *hw)
 {
-	struct socfpga_pll *socfpga_clk = to_socfpga_clk(clk);
+	struct socfpga_pll *socfpga_clk = to_socfpga_clk(hw);
 	u32 val;
 
 	val = readl(socfpga_clk->reg);
@@ -69,9 +69,9 @@ static int clk_socfpga_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_socfpga_disable(struct clk *clk)
+static void clk_socfpga_disable(struct clk_hw *hw)
 {
-	struct socfpga_pll *socfpga_clk = to_socfpga_clk(clk);
+	struct socfpga_pll *socfpga_clk = to_socfpga_clk(hw);
 	u32 val;
 
 	val = readl(socfpga_clk->reg);
@@ -101,8 +101,8 @@ static struct clk *__socfpga_pll_init(struct device_node *node,
 
 	of_property_read_string(node, "clock-output-names", &clk_name);
 
-	pll_clk->clk.name = xstrdup(clk_name);
-	pll_clk->clk.ops = ops;
+	pll_clk->hw.clk.name = xstrdup(clk_name);
+	pll_clk->hw.clk.ops = ops;
 
 	for (i = 0; i < SOCFPGA_MAX_PARENTS; i++) {
 		pll_clk->parent_names[i] = of_clk_get_parent_name(node, i);
@@ -111,19 +111,19 @@ static struct clk *__socfpga_pll_init(struct device_node *node,
 	}
 
 	pll_clk->bit_idx = SOCFPGA_PLL_EXT_ENA;
-	pll_clk->clk.num_parents = i;
-	pll_clk->clk.parent_names = pll_clk->parent_names;
+	pll_clk->hw.clk.num_parents = i;
+	pll_clk->hw.clk.parent_names = pll_clk->parent_names;
 
 	clk_pll_ops.enable = clk_socfpga_enable;
 	clk_pll_ops.disable = clk_socfpga_disable;
 
-	rc = bclk_register(&pll_clk->clk);
+	rc = bclk_register(&pll_clk->hw.clk);
 	if (rc) {
 		free(pll_clk);
 		return NULL;
 	}
 
-	return &pll_clk->clk;
+	return &pll_clk->hw.clk;
 }
 
 struct clk *socfpga_a10_pll_init(struct device_node *node)
diff --git a/drivers/clk/socfpga/clk.c b/drivers/clk/socfpga/clk.c
index bdc8023820..8ee405c6c6 100644
--- a/drivers/clk/socfpga/clk.c
+++ b/drivers/clk/socfpga/clk.c
@@ -50,15 +50,15 @@
 void __iomem *clk_mgr_base_addr;
 
 struct clk_pll {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	unsigned regofs;
 };
 
-static unsigned long clk_pll_recalc_rate(struct clk *clk,
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
-	struct clk_pll *pll = container_of(clk, struct clk_pll, clk);
+	struct clk_pll *pll = container_of(hw, struct clk_pll, hw);
 	unsigned long divf, divq, vco_freq, reg;
 	unsigned long bypass;
 
@@ -90,24 +90,24 @@ static struct clk *socfpga_pll_clk(struct device_node *node)
 	if (!pll->parent)
 		return ERR_PTR(-EINVAL);
 
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
-	pll->clk.name = xstrdup(node->name);
-	pll->clk.ops = &clk_pll_ops;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
+	pll->hw.clk.name = xstrdup(node->name);
+	pll->hw.clk.ops = &clk_pll_ops;
 
 	of_property_read_u32(node, "reg", &pll->regofs);
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
 
 struct clk_periph {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	unsigned regofs;
 	unsigned int fixed_div;
@@ -116,10 +116,10 @@ struct clk_periph {
 	unsigned int shift;
 };
 
-static unsigned long clk_periph_recalc_rate(struct clk *clk,
+static unsigned long clk_periph_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
-	struct clk_periph *periph = container_of(clk, struct clk_periph, clk);
+	struct clk_periph *periph = container_of(hw, struct clk_periph, hw);
 	u32 div, val;
 
 	if (periph->fixed_div) {
@@ -152,10 +152,10 @@ static struct clk *socfpga_periph_clk(struct device_node *node)
 	if (!periph->parent)
 		return ERR_PTR(-EINVAL);
 
-	periph->clk.parent_names = &periph->parent;
-	periph->clk.num_parents = 1;
-	periph->clk.name = xstrdup(node->name);
-	periph->clk.ops = &clk_periph_ops;
+	periph->hw.clk.parent_names = &periph->parent;
+	periph->hw.clk.num_parents = 1;
+	periph->hw.clk.name = xstrdup(node->name);
+	periph->hw.clk.ops = &clk_periph_ops;
 
 	ret = of_property_read_u32_array(node, "div-reg", div_reg, 3);
 	if (!ret) {
@@ -169,17 +169,17 @@ static struct clk *socfpga_periph_clk(struct device_node *node)
 	of_property_read_u32(node, "reg", &periph->regofs);
 	of_property_read_u32(node, "fixed-divider", &periph->fixed_div);
 
-	ret = bclk_register(&periph->clk);
+	ret = bclk_register(&periph->hw.clk);
 	if (ret) {
 		free(periph);
 		return ERR_PTR(ret);
 	}
 
-	return &periph->clk;
+	return &periph->hw.clk;
 }
 
 struct clk_socfpga {
-	struct clk clk;
+	struct clk_hw hw;
 	const char *parent;
 	void __iomem *reg;
 	void __iomem *div_reg;
@@ -190,9 +190,9 @@ struct clk_socfpga {
 	const char *parent_names[SOCFGPA_MAX_PARENTS];
 };
 
-static int clk_socfpga_enable(struct clk *clk)
+static int clk_socfpga_enable(struct clk_hw *hw)
 {
-	struct clk_socfpga *cs = container_of(clk, struct clk_socfpga, clk);
+	struct clk_socfpga *cs = container_of(hw, struct clk_socfpga, hw);
 	u32 val;
 
 	val = readl(cs->reg);
@@ -202,9 +202,9 @@ static int clk_socfpga_enable(struct clk *clk)
 	return 0;
 }
 
-static void clk_socfpga_disable(struct clk *clk)
+static void clk_socfpga_disable(struct clk_hw *hw)
 {
-	struct clk_socfpga *cs = container_of(clk, struct clk_socfpga, clk);
+	struct clk_socfpga *cs = container_of(hw, struct clk_socfpga, hw);
 	u32 val;
 
 	val = readl(cs->reg);
@@ -212,9 +212,9 @@ static void clk_socfpga_disable(struct clk *clk)
 	writel(val, cs->reg);
 }
 
-static int clk_socfpga_is_enabled(struct clk *clk)
+static int clk_socfpga_is_enabled(struct clk_hw *hw)
 {
-	struct clk_socfpga *cs = container_of(clk, struct clk_socfpga, clk);
+	struct clk_socfpga *cs = container_of(hw, struct clk_socfpga, hw);
 	u32 val;
 
 	val = readl(cs->reg);
@@ -225,10 +225,10 @@ static int clk_socfpga_is_enabled(struct clk *clk)
 		return 0;
 }
 
-static unsigned long clk_socfpga_recalc_rate(struct clk *clk,
+static unsigned long clk_socfpga_recalc_rate(struct clk_hw *hw,
 	unsigned long parent_rate)
 {
-	struct clk_socfpga *cs = container_of(clk, struct clk_socfpga, clk);
+	struct clk_socfpga *cs = container_of(hw, struct clk_socfpga, hw);
 	u32 div = 1, val;
 
 	if (cs->fixed_div) {
@@ -236,7 +236,7 @@ static unsigned long clk_socfpga_recalc_rate(struct clk *clk,
 	} else if (cs->div_reg) {
 		val = readl(cs->div_reg) >> cs->shift;
 		val &= div_mask(cs->width);
-		if (streq(clk->name, SOCFPGA_DB_CLK))
+		if (streq(clk_hw_get_name(hw), SOCFPGA_DB_CLK))
 			div = val + 1;
 		else
 			div = (1 << val);
@@ -245,8 +245,9 @@ static unsigned long clk_socfpga_recalc_rate(struct clk *clk,
 	return parent_rate / div;
 }
 
-static int clk_socfpga_get_parent(struct clk *clk)
+static int clk_socfpga_get_parent(struct clk_hw *hw)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	u32 perpll_src;
 	u32 l4_src;
 
@@ -270,8 +271,9 @@ static int clk_socfpga_get_parent(struct clk *clk)
 	return (perpll_src >> 4) & 3;
 }
 
-static int clk_socfpga_set_parent(struct clk *clk, u8 parent)
+static int clk_socfpga_set_parent(struct clk_hw *hw, u8 parent)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	u32 src_reg;
 
 	if (streq(clk->name, SOCFPGA_L4_MP_CLK)) {
@@ -351,18 +353,18 @@ static struct clk *socfpga_gate_clk(struct device_node *node)
 			break;
 	}
 
-	cs->clk.parent_names = cs->parent_names;
-	cs->clk.num_parents = i;
-	cs->clk.name = xstrdup(node->name);
-	cs->clk.ops = &clk_socfpga_ops;
+	cs->hw.clk.parent_names = cs->parent_names;
+	cs->hw.clk.num_parents = i;
+	cs->hw.clk.name = xstrdup(node->name);
+	cs->hw.clk.ops = &clk_socfpga_ops;
 
-	ret = bclk_register(&cs->clk);
+	ret = bclk_register(&cs->hw.clk);
 	if (ret) {
 		free(cs);
 		return ERR_PTR(ret);
 	}
 
-	return &cs->clk;
+	return &cs->hw.clk;
 }
 
 static void socfpga_register_clocks(struct device_d *dev, struct device_node *node)
diff --git a/drivers/clk/socfpga/clk.h b/drivers/clk/socfpga/clk.h
index 9d291f7243..402f714436 100644
--- a/drivers/clk/socfpga/clk.h
+++ b/drivers/clk/socfpga/clk.h
@@ -47,14 +47,14 @@ static inline struct clk *socfpga_a10_gate_init(struct device_node *node)
 #endif
 
 struct socfpga_pll {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	u32 bit_idx;
 	const char *parent_names[SOCFPGA_MAX_PARENTS];
 };
 
 struct socfpga_gate_clk {
-	struct clk clk;
+	struct clk_hw hw;
 	char *parent_name;
 	u32 fixed_div;
 	void __iomem *div_reg;
@@ -68,7 +68,7 @@ struct socfpga_gate_clk {
 };
 
 struct socfpga_periph_clk {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	char *parent_name;
 	u32 fixed_div;
diff --git a/drivers/clk/tegra/clk-divider.c b/drivers/clk/tegra/clk-divider.c
index 116aa96b24..f1a913d983 100644
--- a/drivers/clk/tegra/clk-divider.c
+++ b/drivers/clk/tegra/clk-divider.c
@@ -57,10 +57,11 @@ static int get_div(struct tegra_clk_frac_div *divider, unsigned long rate,
 	return divider_ux1;
 }
 
-static unsigned long clk_frac_div_recalc_rate(struct clk *hw,
+static unsigned long clk_frac_div_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
-	struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct tegra_clk_frac_div *divider = to_clk_frac_div(clk);
 	u32 reg;
 	int div, mul;
 	u64 rate = parent_rate;
@@ -78,10 +79,11 @@ static unsigned long clk_frac_div_recalc_rate(struct clk *hw,
 	return rate;
 }
 
-static long clk_frac_div_round_rate(struct clk *hw, unsigned long rate,
+static long clk_frac_div_round_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long *prate)
 {
-	struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct tegra_clk_frac_div *divider = to_clk_frac_div(clk);
 	int div, mul;
 	unsigned long output_rate = *prate;
 
@@ -97,10 +99,11 @@ static long clk_frac_div_round_rate(struct clk *hw, unsigned long rate,
 	return DIV_ROUND_UP(output_rate * mul, div + mul);
 }
 
-static int clk_frac_div_set_rate(struct clk *hw, unsigned long rate,
+static int clk_frac_div_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate)
 {
-	struct tegra_clk_frac_div *divider = to_clk_frac_div(hw);
+	struct clk *clk = clk_hw_to_clk(hw);
+	struct tegra_clk_frac_div *divider = to_clk_frac_div(clk);
 	int div;
 	u32 val;
 
diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index 6ed54169ad..7bfb14875d 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -16,65 +16,65 @@
 
 #define to_clk_periph(_hw) container_of(_hw, struct tegra_clk_periph, hw)
 
-static int clk_periph_get_parent(struct clk *hw)
+static int clk_periph_get_parent(struct clk_hw *hw)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	return periph->mux->ops->get_parent(periph->mux);
+	return periph->mux->ops->get_parent(clk_to_clk_hw(periph->mux));
 }
 
-static int clk_periph_set_parent(struct clk *hw, u8 index)
+static int clk_periph_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	return periph->mux->ops->set_parent(periph->mux, index);
+	return periph->mux->ops->set_parent(clk_to_clk_hw(periph->mux), index);
 }
 
-static unsigned long clk_periph_recalc_rate(struct clk *hw,
+static unsigned long clk_periph_recalc_rate(struct clk_hw *hw,
 					    unsigned long parent_rate)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	return periph->div->ops->recalc_rate(periph->div, parent_rate);
+	return periph->div->ops->recalc_rate(clk_to_clk_hw(periph->div), parent_rate);
 }
 
-static long clk_periph_round_rate(struct clk *hw, unsigned long rate,
+static long clk_periph_round_rate(struct clk_hw *hw, unsigned long rate,
 				  unsigned long *prate)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	return periph->div->ops->round_rate(periph->div, rate, prate);
+	return periph->div->ops->round_rate(clk_to_clk_hw(periph->div), rate, prate);
 }
 
-static int clk_periph_set_rate(struct clk *hw, unsigned long rate,
+static int clk_periph_set_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long parent_rate)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	return periph->div->ops->set_rate(periph->div, rate, parent_rate);
+	return periph->div->ops->set_rate(clk_to_clk_hw(periph->div), rate, parent_rate);
 }
 
-static int clk_periph_is_enabled(struct clk *hw)
+static int clk_periph_is_enabled(struct clk_hw *hw)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	return periph->gate->ops->is_enabled(periph->gate);
+	return periph->gate->ops->is_enabled(clk_to_clk_hw(periph->gate));
 }
 
-static int clk_periph_enable(struct clk *hw)
+static int clk_periph_enable(struct clk_hw *hw)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	periph->gate->ops->enable(periph->gate);
+	periph->gate->ops->enable(clk_to_clk_hw(periph->gate));
 
 	return 0;
 }
 
-static void clk_periph_disable(struct clk *hw)
+static void clk_periph_disable(struct clk_hw *hw)
 {
 	struct tegra_clk_periph *periph = to_clk_periph(hw);
 
-	periph->gate->ops->disable(periph->gate);
+	periph->gate->ops->disable(clk_to_clk_hw(periph->gate));
 }
 
 const struct clk_ops tegra_clk_periph_ops = {
@@ -139,11 +139,11 @@ static struct clk *_tegra_clk_register_periph(const char *name,
 			goto out_div;
 	}
 
-	periph->hw.name = name;
-	periph->hw.ops = div ? &tegra_clk_periph_ops :
+	periph->hw.clk.name = name;
+	periph->hw.clk.ops = div ? &tegra_clk_periph_ops :
 				   &tegra_clk_periph_nodiv_ops;
-	periph->hw.parent_names = parent_names;
-	periph->hw.num_parents = num_parents;
+	periph->hw.clk.parent_names = parent_names;
+	periph->hw.clk.num_parents = num_parents;
 	periph->flags = flags;
 
 	if (id >= 96)
@@ -153,11 +153,11 @@ static struct clk *_tegra_clk_register_periph(const char *name,
 	periph->rst_reg = clk_base + rst_offs;
 	periph->rst_shift = id & 0x1f;
 
-	ret = bclk_register(&periph->hw);
+	ret = bclk_register(&periph->hw.clk);
 	if (ret)
 		goto out_register;
 
-	return &periph->hw;
+	return &periph->hw.clk;
 
 out_register:
 	tegra_clk_divider_free(periph->div);
diff --git a/drivers/clk/tegra/clk-pll-out.c b/drivers/clk/tegra/clk-pll-out.c
index 4b48fa2d64..f14b41c04a 100644
--- a/drivers/clk/tegra/clk-pll-out.c
+++ b/drivers/clk/tegra/clk-pll-out.c
@@ -18,7 +18,7 @@
 
 #define to_clk_pll_out(_hw) container_of(_hw, struct tegra_clk_pll_out, hw)
 
-static int clk_pll_out_is_enabled(struct clk *hw)
+static int clk_pll_out_is_enabled(struct clk_hw *hw)
 {
 	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
 	u32 val = readl(pll_out->reg);
@@ -30,7 +30,7 @@ static int clk_pll_out_is_enabled(struct clk *hw)
 	return state;
 }
 
-static int clk_pll_out_enable(struct clk *hw)
+static int clk_pll_out_enable(struct clk_hw *hw)
 {
 	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
 	u32 val;
@@ -45,7 +45,7 @@ static int clk_pll_out_enable(struct clk *hw)
 	return 0;
 }
 
-static void clk_pll_out_disable(struct clk *hw)
+static void clk_pll_out_disable(struct clk_hw *hw)
 {
 	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
 	u32 val;
@@ -58,28 +58,28 @@ static void clk_pll_out_disable(struct clk *hw)
 	udelay(2);
 }
 
-static unsigned long clk_pll_out_recalc_rate(struct clk *hw,
+static unsigned long clk_pll_out_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
 	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
 
-	return pll_out->div->ops->recalc_rate(pll_out->div, parent_rate);
+	return pll_out->div->ops->recalc_rate(clk_to_clk_hw(pll_out->div), parent_rate);
 }
 
-static long clk_pll_out_round_rate(struct clk *hw, unsigned long rate,
+static long clk_pll_out_round_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long *prate)
 {
 	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
 
-	return pll_out->div->ops->round_rate(pll_out->div, rate, prate);
+	return pll_out->div->ops->round_rate(clk_to_clk_hw(pll_out->div), rate, prate);
 }
 
-static int clk_pll_out_set_rate(struct clk *hw, unsigned long rate,
+static int clk_pll_out_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate)
 {
 	struct tegra_clk_pll_out *pll_out = to_clk_pll_out(hw);
 
-	return pll_out->div->ops->set_rate(pll_out->div, rate, parent_rate);
+	return pll_out->div->ops->set_rate(clk_to_clk_hw(pll_out->div), rate, parent_rate);
 }
 
 const struct clk_ops tegra_clk_pll_out_ops = {
@@ -108,21 +108,21 @@ struct clk *tegra_clk_register_pll_out(const char *name,
 	}
 
 	pll_out->parent = parent_name;
-	pll_out->hw.name = name;
-	pll_out->hw.ops = &tegra_clk_pll_out_ops;
-	pll_out->hw.parent_names = (pll_out->parent ? &pll_out->parent : NULL);
-	pll_out->hw.num_parents = (pll_out->parent ? 1 : 0);
+	pll_out->hw.clk.name = name;
+	pll_out->hw.clk.ops = &tegra_clk_pll_out_ops;
+	pll_out->hw.clk.parent_names = (pll_out->parent ? &pll_out->parent : NULL);
+	pll_out->hw.clk.num_parents = (pll_out->parent ? 1 : 0);
 
 	pll_out->reg = reg;
 	pll_out->enb_bit_idx = shift + 1;
 	pll_out->rst_bit_idx = shift;
 
-	ret = bclk_register(&pll_out->hw);
+	ret = bclk_register(&pll_out->hw.clk);
 	if (ret) {
 		tegra_clk_divider_free(pll_out->div);
 		kfree(pll_out);
 		return ERR_PTR(ret);
 	}
 
-	return &pll_out->hw;
+	return &pll_out->hw.clk;
 }
diff --git a/drivers/clk/tegra/clk-pll.c b/drivers/clk/tegra/clk-pll.c
index 4b04876df1..0d364f318d 100644
--- a/drivers/clk/tegra/clk-pll.c
+++ b/drivers/clk/tegra/clk-pll.c
@@ -144,7 +144,7 @@
 
 #define to_clk_pll(_hw) container_of(_hw, struct tegra_clk_pll, hw)
 
-static int clk_pll_is_enabled(struct clk *hw)
+static int clk_pll_is_enabled(struct clk_hw *hw)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
 	u32 val;
@@ -187,12 +187,12 @@ static int clk_pll_wait_for_lock(struct tegra_clk_pll *pll,
 	}
 
 	pr_err("%s: Timed out waiting for pll %s lock\n", __func__,
-	       pll->hw.name);
+	       clk_hw_get_name(&pll->hw));
 
 	return -1;
 }
 
-static int clk_pll_enable(struct clk *hw)
+static int clk_pll_enable(struct clk_hw *hw)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
 	u32 val;
@@ -210,7 +210,7 @@ static int clk_pll_enable(struct clk *hw)
 	return 0;
 }
 
-static void clk_pll_disable(struct clk *hw)
+static void clk_pll_disable(struct clk_hw *hw)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
 	u32 val;
@@ -220,7 +220,7 @@ static void clk_pll_disable(struct clk *hw)
 	pll_writel_base(val, pll);
 }
 
-static int _get_table_rate(struct clk *hw,
+static int _get_table_rate(struct clk_hw *hw,
 			   struct tegra_clk_pll_freq_table *cfg,
 			   unsigned long rate, unsigned long parent_rate)
 {
@@ -245,7 +245,7 @@ static int _get_table_rate(struct clk *hw,
 	return 0;
 }
 
-static unsigned long clk_pll_recalc_rate(struct clk *hw,
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
@@ -260,7 +260,7 @@ static unsigned long clk_pll_recalc_rate(struct clk *hw,
 		struct tegra_clk_pll_freq_table sel;
 		if (_get_table_rate(hw, &sel, pll->fixed_rate, parent_rate)) {
 			pr_err("Clock %s has unknown fixed frequency\n",
-			       hw->name);
+			       clk_hw_get_name(hw));
 			BUG();
 		}
 		return pll->fixed_rate;
@@ -280,7 +280,7 @@ static unsigned long clk_pll_recalc_rate(struct clk *hw,
 	return rate;
 }
 
-static int _calc_rate(struct clk *hw, struct tegra_clk_pll_freq_table *cfg,
+static int _calc_rate(struct clk_hw *hw, struct tegra_clk_pll_freq_table *cfg,
 		      unsigned long rate, unsigned long parent_rate)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
@@ -325,14 +325,14 @@ static int _calc_rate(struct clk *hw, struct tegra_clk_pll_freq_table *cfg,
 	if (cfg->m > divm_max(pll) || cfg->n > divn_max(pll) ||
 	    cfg->p > divp_max(pll) || cfg->output_rate > pll->params->vco_max) {
 		pr_err("%s: Failed to set %s rate %lu\n",
-		       __func__, hw->name, rate);
+		       __func__, clk_hw_get_name(hw), rate);
 		return -EINVAL;
 	}
 
 	return 0;
 }
 
-static long clk_pll_round_rate(struct clk *hw, unsigned long rate,
+static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
 			unsigned long *prate)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
@@ -344,7 +344,7 @@ static long clk_pll_round_rate(struct clk *hw, unsigned long rate,
 
 	/* PLLM is used for memory; we do not change rate */
 	if (pll->flags & TEGRA_PLLM)
-		return clk_get_rate(hw);
+		return clk_get_rate(clk_hw_to_clk(hw));
 
 	if (_get_table_rate(hw, &cfg, rate, *prate) &&
 	    _calc_rate(hw, &cfg, rate, *prate))
@@ -356,7 +356,7 @@ static long clk_pll_round_rate(struct clk *hw, unsigned long rate,
 	return output_rate;
 }
 
-static int _program_pll(struct clk *hw, struct tegra_clk_pll_freq_table *cfg,
+static int _program_pll(struct clk_hw *hw, struct tegra_clk_pll_freq_table *cfg,
 			unsigned long rate)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
@@ -411,7 +411,7 @@ static int _program_pll(struct clk *hw, struct tegra_clk_pll_freq_table *cfg,
 	return 0;
 }
 
-static int clk_pll_set_rate(struct clk *hw, unsigned long rate,
+static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 			unsigned long parent_rate)
 {
 	struct tegra_clk_pll_freq_table cfg;
@@ -432,7 +432,7 @@ const struct clk_ops tegra_clk_pll_ops = {
 	.set_rate = clk_pll_set_rate,
 };
 
-static unsigned long clk_plle_recalc_rate(struct clk *hw,
+static unsigned long clk_plle_recalc_rate(struct clk_hw *hw,
 					 unsigned long parent_rate)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
@@ -474,10 +474,10 @@ static int clk_plle_training(struct tegra_clk_pll *pll)
 			(pll_readl_misc(pll) & PLLE_MISC_READY));
 }
 
-static int clk_plle_enable(struct clk *hw)
+static int clk_plle_enable(struct clk_hw *hw)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
-	unsigned long input_rate = clk_get_rate(clk_get_parent(hw));
+	unsigned long input_rate = clk_get_rate(clk_get_parent(clk_hw_to_clk(hw)));
 	struct tegra_clk_pll_freq_table sel;
 	u32 val;
 	int err;
@@ -534,10 +534,10 @@ const struct clk_ops tegra_clk_plle_ops = {
 	.enable = clk_plle_enable,
 };
 
-static int clk_plle_tegra114_enable(struct clk *hw)
+static int clk_plle_tegra114_enable(struct clk_hw *hw)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
-	unsigned long input_rate = clk_get_rate(clk_get_parent(hw));
+	unsigned long input_rate = clk_get_rate(clk_get_parent(clk_hw_to_clk(hw)));
 	struct tegra_clk_pll_freq_table sel;
 	u32 val;
 	int ret;
@@ -623,7 +623,7 @@ static int clk_plle_tegra114_enable(struct clk *hw)
 	return ret;
 }
 
-static void clk_plle_tegra114_disable(struct clk *hw)
+static void clk_plle_tegra114_disable(struct clk_hw *hw)
 {
 	struct tegra_clk_pll *pll = to_clk_pll(hw);
 	u32 val;
@@ -658,11 +658,11 @@ static struct clk *_tegra_clk_register_pll(const char *name,
 		return NULL;
 
 	pll->parent = parent_name;
-	pll->hw.name = name;
-	pll->hw.ops = ops;
-	pll->hw.flags = flags;
-	pll->hw.parent_names = (pll->parent ? &pll->parent : NULL);
-	pll->hw.num_parents = (pll->parent ? 1 : 0);
+	pll->hw.clk.name = name;
+	pll->hw.clk.ops = ops;
+	pll->hw.clk.flags = flags;
+	pll->hw.clk.parent_names = (pll->parent ? &pll->parent : NULL);
+	pll->hw.clk.num_parents = (pll->parent ? 1 : 0);
 
 	pll->clk_base = clk_base;
 
@@ -678,13 +678,13 @@ static struct clk *_tegra_clk_register_pll(const char *name,
 	pll->divm_shift = PLL_BASE_DIVM_SHIFT;
 	pll->divm_width = PLL_BASE_DIVM_WIDTH;
 
-	ret = bclk_register(&pll->hw);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		kfree(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->hw;
+	return &pll->hw.clk;
 }
 
 struct clk *tegra_clk_register_pll(const char *name, const char *parent_name,
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 5195e6dba4..80a83c7865 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -61,7 +61,7 @@ struct tegra_clk_pll_params {
 
 /* struct tegra_clk_pll - Tegra PLL clock */
 struct tegra_clk_pll {
-	struct clk	hw;
+	struct clk_hw	hw;
 	void __iomem	*clk_base;
 	u8		flags;
 	unsigned long	fixed_rate;
@@ -105,7 +105,7 @@ struct clk *tegra_clk_register_plle_tegra114(const char *name,
 
 /* struct tegra_clk_pll_out - PLL output divider */
 struct tegra_clk_pll_out {
-	struct clk	hw;
+	struct clk_hw	hw;
 	struct clk	*div;
 	void __iomem	*reg;
 	u8		enb_bit_idx;
@@ -119,7 +119,7 @@ struct clk *tegra_clk_register_pll_out(const char *name,
 
 /* struct clk-periph - peripheral clock */
 struct tegra_clk_periph {
-	struct clk	hw;
+	struct clk_hw	hw;
 	struct clk	*gate;
 	struct clk	*mux;
 	struct clk	*div;
diff --git a/drivers/clk/vexpress/clk-sp810.c b/drivers/clk/vexpress/clk-sp810.c
index 8b5c193635..6eba0a2285 100644
--- a/drivers/clk/vexpress/clk-sp810.c
+++ b/drivers/clk/vexpress/clk-sp810.c
@@ -15,15 +15,15 @@
 struct clk_sp810;
 
 struct clk_sp810_timerclken {
-	struct clk hw;
+	struct clk_hw hw;
 	struct clk_sp810 *sp810;
 	int channel;
 };
 
 static inline struct clk_sp810_timerclken *
-to_clk_sp810_timerclken(struct clk *clk)
+to_clk_sp810_timerclken(struct clk_hw *hw)
 {
-	return container_of(clk, struct clk_sp810_timerclken, hw);
+	return container_of(hw, struct clk_sp810_timerclken, hw);
 }
 
 struct clk_sp810 {
@@ -32,12 +32,12 @@ struct clk_sp810 {
 	struct clk_sp810_timerclken timerclken[4];
 };
 
-static int clk_sp810_timerclken_get_parent(struct clk *hw)
+static int clk_sp810_timerclken_get_parent(struct clk_hw *hw)
 {
 	return 1;
 }
 
-static int clk_sp810_timerclken_set_parent(struct clk *hw, u8 index)
+static int clk_sp810_timerclken_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
 	struct clk_sp810 *sp810 = timerclken->sp810;
@@ -71,7 +71,7 @@ static struct clk *clk_sp810_timerclken_of_get(struct of_phandle_args *clkspec,
 		    clkspec->args[0] >=	ARRAY_SIZE(sp810->timerclken)))
 		return NULL;
 
-	return &sp810->timerclken[clkspec->args[0]].hw;
+	return &sp810->timerclken[clkspec->args[0]].hw.clk;
 }
 
 static void clk_sp810_of_setup(struct device_node *node)
@@ -100,18 +100,18 @@ static void clk_sp810_of_setup(struct device_node *node)
 
 		sp810->timerclken[i].sp810 = sp810;
 		sp810->timerclken[i].channel = i;
-		sp810->timerclken[i].hw.name = strdup(name);
-		sp810->timerclken[i].hw.parent_names = parent_names;
-		sp810->timerclken[i].hw.num_parents = num;
-		sp810->timerclken[i].hw.ops = &clk_sp810_timerclken_ops;
+		sp810->timerclken[i].hw.clk.name = strdup(name);
+		sp810->timerclken[i].hw.clk.parent_names = parent_names;
+		sp810->timerclken[i].hw.clk.num_parents = num;
+		sp810->timerclken[i].hw.clk.ops = &clk_sp810_timerclken_ops;
+
+		bclk_register(&sp810->timerclken[i].hw.clk);
 
 		/*
 		 * Always set parent to 1MHz clock to match QEMU emulation
 		 * and satisfy requirements on real HW.
 		 */
 		clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
-
-		bclk_register(&sp810->timerclken[i].hw);
 	}
 
 	of_clk_add_provider(node, clk_sp810_timerclken_of_get, sp810);
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index e4b2a855e5..e4ce102d6e 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -50,25 +50,25 @@ static struct clk *clks[clk_max];
 static struct clk_onecell_data clk_data;
 
 struct zynq_pll_clk {
-	struct clk	clk;
+	struct clk_hw	hw;
 	u32		pll_lock;
 	void __iomem	*pll_ctrl;
 };
 
-#define to_zynq_pll_clk(c)	container_of(c, struct zynq_pll_clk, clk)
+#define to_zynq_pll_clk(c)	container_of(c, struct zynq_pll_clk, hw)
 
 #define PLL_CTRL_FDIV(x)	(((x) >> 12) & 0x7F)
 
-static unsigned long zynq_pll_recalc_rate(struct clk *clk,
+static unsigned long zynq_pll_recalc_rate(struct clk_hw *hw,
 					  unsigned long parent_rate)
 {
-	struct zynq_pll_clk *pll = to_zynq_pll_clk(clk);
+	struct zynq_pll_clk *pll = to_zynq_pll_clk(hw);
 	return parent_rate * PLL_CTRL_FDIV(readl(pll->pll_ctrl));
 }
 
-static int zynq_pll_enable(struct clk *clk)
+static int zynq_pll_enable(struct clk_hw *hw)
 {
-	struct zynq_pll_clk *pll = to_zynq_pll_clk(clk);
+	struct zynq_pll_clk *pll = to_zynq_pll_clk(hw);
 	u32 val;
 	int timeout = 10000;
 
@@ -87,9 +87,9 @@ static int zynq_pll_enable(struct clk *clk)
 	return 0;
 }
 
-static int zynq_pll_is_enabled(struct clk *clk)
+static int zynq_pll_is_enabled(struct clk_hw *hw)
 {
-	struct zynq_pll_clk *pll = to_zynq_pll_clk(clk);
+	struct zynq_pll_clk *pll = to_zynq_pll_clk(hw);
 	u32 val = readl(pll->pll_ctrl);
 
 	return !(val & (PLL_CTRL_PWRDOWN | PLL_CTRL_RESET));
@@ -111,10 +111,10 @@ static inline struct clk *zynq_pll_clk(enum zynq_pll_type type,
 
 	pll = xzalloc(sizeof(*pll));
 	pll->pll_ctrl		= pll_ctrl;
-	pll->clk.ops		= &zynq_pll_clk_ops;
-	pll->clk.name		= name;
-	pll->clk.parent_names	= &pll_parent;
-	pll->clk.num_parents	= 1;
+	pll->hw.clk.ops = &zynq_pll_clk_ops;
+	pll->hw.clk.name = name;
+	pll->hw.clk.parent_names = &pll_parent;
+	pll->hw.clk.num_parents = 1;
 
 	switch(type) {
 	case ZYNQ_PLL_ARM:
@@ -128,17 +128,17 @@ static inline struct clk *zynq_pll_clk(enum zynq_pll_type type,
 		break;
 	}
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		free(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
 
 struct zynq_periph_clk {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*clk_ctrl;
 };
 
@@ -150,16 +150,16 @@ static const u8 periph_clk_parent_map[] = {
 #define PERIPH_CLK_CTRL_SRC(x) (periph_clk_parent_map[((x) & 0x30) >> 4])
 #define PERIPH_CLK_CTRL_DIV(x) (((x) & 0x3F00) >> 8)
 
-static unsigned long zynq_periph_recalc_rate(struct clk *clk,
+static unsigned long zynq_periph_recalc_rate(struct clk_hw *hw,
 					     unsigned long parent_rate)
 {
-	struct zynq_periph_clk *periph = to_zynq_periph_clk(clk);
+	struct zynq_periph_clk *periph = to_zynq_periph_clk(hw);
 	return parent_rate / PERIPH_CLK_CTRL_DIV(readl(periph->clk_ctrl));
 }
 
-static int zynq_periph_get_parent(struct clk *clk)
+static int zynq_periph_get_parent(struct clk_hw *hw)
 {
-	struct zynq_periph_clk *periph = to_zynq_periph_clk(clk);
+	struct zynq_periph_clk *periph = to_zynq_periph_clk(hw);
 	return PERIPH_CLK_CTRL_SRC(readl(periph->clk_ctrl));
 }
 
@@ -181,18 +181,18 @@ static struct clk *zynq_periph_clk(const char *name, void __iomem *clk_ctrl)
 	periph = xzalloc(sizeof(*periph));
 
 	periph->clk_ctrl	= clk_ctrl;
-	periph->clk.name	= name;
-	periph->clk.ops		= &zynq_periph_clk_ops;
-	periph->clk.parent_names = peripheral_parents;
-	periph->clk.num_parents	= ARRAY_SIZE(peripheral_parents);
+	periph->hw.clk.name = name;
+	periph->hw.clk.ops = &zynq_periph_clk_ops;
+	periph->hw.clk.parent_names = peripheral_parents;
+	periph->hw.clk.num_parents = ARRAY_SIZE(peripheral_parents);
 
-	ret = bclk_register(&periph->clk);
+	ret = bclk_register(&periph->hw.clk);
 	if (ret) {
 		free(periph);
 		return ERR_PTR(ret);
 	}
 
-	return &periph->clk;
+	return &periph->hw.clk;
 }
 
 /* CPU Clock domain is modelled as a mux with 4 children subclks, whose
@@ -200,7 +200,7 @@ static struct clk *zynq_periph_clk(const char *name, void __iomem *clk_ctrl)
  */
 
 struct zynq_cpu_clk {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*clk_ctrl;
 };
 
@@ -212,16 +212,16 @@ static const u8 zynq_cpu_clk_parent_map[] = {
 #define CPU_CLK_SRCSEL(x)	(zynq_cpu_clk_parent_map[(((x) & 0x30) >> 4)])
 #define CPU_CLK_CTRL_DIV(x)	(((x) & 0x3F00) >> 8)
 
-static unsigned long zynq_cpu_clk_recalc_rate(struct clk *clk,
+static unsigned long zynq_cpu_clk_recalc_rate(struct clk_hw *hw,
 					      unsigned long parent_rate)
 {
-	struct zynq_cpu_clk *cpuclk = to_zynq_cpu_clk(clk);
+	struct zynq_cpu_clk *cpuclk = to_zynq_cpu_clk(hw);
 	return parent_rate / CPU_CLK_CTRL_DIV(readl(cpuclk->clk_ctrl));
 }
 
-static int zynq_cpu_clk_get_parent(struct clk *clk)
+static int zynq_cpu_clk_get_parent(struct clk_hw *hw)
 {
-	struct zynq_cpu_clk *cpuclk = to_zynq_cpu_clk(clk);
+	struct zynq_cpu_clk *cpuclk = to_zynq_cpu_clk(hw);
 	return CPU_CLK_SRCSEL(readl(cpuclk->clk_ctrl));
 }
 
@@ -243,18 +243,18 @@ static struct clk *zynq_cpu_clk(const char *name, void __iomem *clk_ctrl)
 	cpu = xzalloc(sizeof(*cpu));
 
 	cpu->clk_ctrl		= clk_ctrl;
-	cpu->clk.ops		= &zynq_cpu_clk_ops;
-	cpu->clk.name		= name;
-	cpu->clk.parent_names	= cpu_parents;
-	cpu->clk.num_parents	= ARRAY_SIZE(cpu_parents);
+	cpu->hw.clk.ops = &zynq_cpu_clk_ops;
+	cpu->hw.clk.name = name;
+	cpu->hw.clk.parent_names = cpu_parents;
+	cpu->hw.clk.num_parents = ARRAY_SIZE(cpu_parents);
 
-	ret = bclk_register(&cpu->clk);
+	ret = bclk_register(&cpu->hw.clk);
 	if (ret) {
 		free(cpu);
 		return ERR_PTR(ret);
 	}
 
-	return &cpu->clk;
+	return &cpu->hw.clk;
 }
 
 enum zynq_cpu_subclk_which {
@@ -265,7 +265,7 @@ enum zynq_cpu_subclk_which {
 };
 
 struct zynq_cpu_subclk {
-	struct clk	clk;
+	struct clk_hw	hw;
 	void __iomem	*clk_ctrl;
 	void __iomem	*clk_621;
 	enum zynq_cpu_subclk_which which;
@@ -273,16 +273,16 @@ struct zynq_cpu_subclk {
 
 #define CLK_621_TRUE(x)		((x) & 1)
 
-#define to_zynq_cpu_subclk(c)	container_of(c, struct zynq_cpu_subclk, c);
+#define to_zynq_cpu_subclk(c)	container_of(c, struct zynq_cpu_subclk, hw);
 
-static unsigned long zynq_cpu_subclk_recalc_rate(struct clk *clk,
+static unsigned long zynq_cpu_subclk_recalc_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
 {
 	unsigned long uninitialized_var(rate);
 	struct zynq_cpu_subclk *subclk;
 	bool is_621;
 
-	subclk = to_zynq_cpu_subclk(clk);
+	subclk = to_zynq_cpu_subclk(hw);
 	is_621 = CLK_621_TRUE(readl(subclk->clk_621));
 
 	switch (subclk->which) {
@@ -303,12 +303,12 @@ static unsigned long zynq_cpu_subclk_recalc_rate(struct clk *clk,
 	return rate;
 }
 
-static int zynq_cpu_subclk_enable(struct clk *clk)
+static int zynq_cpu_subclk_enable(struct clk_hw *hw)
 {
 	struct zynq_cpu_subclk *subclk;
 	u32 tmp;
 
-	subclk = to_zynq_cpu_subclk(clk);
+	subclk = to_zynq_cpu_subclk(hw);
 
 	tmp = readl(subclk->clk_ctrl);
 	tmp |= 1 << (24 + subclk->which);
@@ -317,12 +317,12 @@ static int zynq_cpu_subclk_enable(struct clk *clk)
 	return 0;
 }
 
-static void zynq_cpu_subclk_disable(struct clk *clk)
+static void zynq_cpu_subclk_disable(struct clk_hw *hw)
 {
 	struct zynq_cpu_subclk *subclk;
 	u32 tmp;
 
-	subclk = to_zynq_cpu_subclk(clk);
+	subclk = to_zynq_cpu_subclk(hw);
 
 	tmp = readl(subclk->clk_ctrl);
 	tmp &= ~(1 << (24 + subclk->which));
@@ -349,19 +349,19 @@ static struct clk *zynq_cpu_subclk(const char *name,
 	subclk->clk_ctrl	= clk_ctrl;
 	subclk->clk_621		= clk_621;
 	subclk->which		= which;
-	subclk->clk.name	= name;
-	subclk->clk.ops		= &zynq_cpu_subclk_ops;
+	subclk->hw.clk.name = name;
+	subclk->hw.clk.ops = &zynq_cpu_subclk_ops;
 
-	subclk->clk.parent_names = &subclk_parent;
-	subclk->clk.num_parents	= 1;
+	subclk->hw.clk.parent_names = &subclk_parent;
+	subclk->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&subclk->clk);
+	ret = bclk_register(&subclk->hw.clk);
 	if (ret) {
 		free(subclk);
 		return ERR_PTR(ret);
 	}
 
-	return &subclk->clk;
+	return &subclk->hw.clk;
 }
 
 static int zynq_clock_probe(struct device_d *dev)
diff --git a/drivers/clk/zynqmp/clk-divider-zynqmp.c b/drivers/clk/zynqmp/clk-divider-zynqmp.c
index 09f63dd9b5..b96cab615b 100644
--- a/drivers/clk/zynqmp/clk-divider-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-divider-zynqmp.c
@@ -16,14 +16,14 @@
 #include "clk-zynqmp.h"
 
 struct zynqmp_clk_divider {
-	struct clk clk;
+	struct clk_hw hw;
 	unsigned int clk_id;
 	enum topology_type type;
 	const char *parent;
 	const struct zynqmp_eemi_ops *ops;
 };
-#define to_zynqmp_clk_divider(clk) \
-	container_of(clk, struct zynqmp_clk_divider, clk)
+#define to_zynqmp_clk_divider(_hw) \
+	container_of(_hw, struct zynqmp_clk_divider, hw)
 
 static int zynqmp_clk_divider_bestdiv(unsigned long rate,
 				      unsigned long *best_parent_rate)
@@ -31,10 +31,10 @@ static int zynqmp_clk_divider_bestdiv(unsigned long rate,
 	return DIV_ROUND_CLOSEST(*best_parent_rate, rate);
 }
 
-static unsigned long zynqmp_clk_divider_recalc_rate(struct clk *clk,
+static unsigned long zynqmp_clk_divider_recalc_rate(struct clk_hw *hw,
 						    unsigned long parent_rate)
 {
-	struct zynqmp_clk_divider *div = to_zynqmp_clk_divider(clk);
+	struct zynqmp_clk_divider *div = to_zynqmp_clk_divider(hw);
 	u32 value;
 
 	div->ops->clock_getdivider(div->clk_id, &value);
@@ -46,7 +46,7 @@ static unsigned long zynqmp_clk_divider_recalc_rate(struct clk *clk,
 	return DIV_ROUND_UP(parent_rate, value);
 }
 
-static long zynqmp_clk_divider_round_rate(struct clk *clk, unsigned long rate,
+static long zynqmp_clk_divider_round_rate(struct clk_hw *hw, unsigned long rate,
 					  unsigned long *parent_rate)
 {
 	int bestdiv;
@@ -56,10 +56,10 @@ static long zynqmp_clk_divider_round_rate(struct clk *clk, unsigned long rate,
 	return *parent_rate / bestdiv;
 }
 
-static int zynqmp_clk_divider_set_rate(struct clk *clk, unsigned long rate,
+static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long parent_rate)
 {
-	struct zynqmp_clk_divider *div = to_zynqmp_clk_divider(clk);
+	struct zynqmp_clk_divider *div = to_zynqmp_clk_divider(hw);
 	u32 bestdiv;
 
 	bestdiv = zynqmp_clk_divider_bestdiv(rate, &parent_rate);
@@ -95,17 +95,17 @@ struct clk *zynqmp_clk_register_divider(const char *name,
 	div->ops = zynqmp_pm_get_eemi_ops();
 	div->parent = strdup(parents[0]);
 
-	div->clk.name = strdup(name);
-	div->clk.ops = &zynqmp_clk_divider_ops;
-	div->clk.flags = nodes->flag;
-	div->clk.parent_names = &div->parent;
-	div->clk.num_parents = 1;
+	div->hw.clk.name = strdup(name);
+	div->hw.clk.ops = &zynqmp_clk_divider_ops;
+	div->hw.clk.flags = nodes->flag;
+	div->hw.clk.parent_names = &div->parent;
+	div->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&div->clk);
+	ret = bclk_register(&div->hw.clk);
 	if (ret) {
 		kfree(div);
 		return ERR_PTR(ret);
 	}
 
-	return &div->clk;
+	return &div->hw.clk;
 }
diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 9fbc15e966..a3b9ee21e5 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -16,31 +16,31 @@
 #include "clk-zynqmp.h"
 
 struct zynqmp_clk_gate {
-	struct clk clk;
+	struct clk_hw hw;
 	unsigned int clk_id;
 	const char *parent;
 	const struct zynqmp_eemi_ops *ops;
 };
 
-#define to_zynqmp_clk_gate(_hw) container_of(_hw, struct zynqmp_clk_gate, clk)
+#define to_zynqmp_clk_gate(_hw) container_of(_hw, struct zynqmp_clk_gate, hw)
 
-static int zynqmp_clk_gate_enable(struct clk *clk)
+static int zynqmp_clk_gate_enable(struct clk_hw *hw)
 {
-	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(clk);
+	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(hw);
 
 	return gate->ops->clock_enable(gate->clk_id);
 }
 
-static void zynqmp_clk_gate_disable(struct clk *clk)
+static void zynqmp_clk_gate_disable(struct clk_hw *hw)
 {
-	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(clk);
+	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(hw);
 
 	gate->ops->clock_disable(gate->clk_id);
 }
 
-static int zynqmp_clk_gate_is_enabled(struct clk *clk)
+static int zynqmp_clk_gate_is_enabled(struct clk_hw *hw)
 {
-	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(clk);
+	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(hw);
 	u32 state;
 	int ret;
 	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
@@ -77,17 +77,17 @@ struct clk *zynqmp_clk_register_gate(const char *name,
 	gate->ops = zynqmp_pm_get_eemi_ops();
 	gate->parent = strdup(parents[0]);
 
-	gate->clk.name = strdup(name);
-	gate->clk.ops = &zynqmp_clk_gate_ops;
-	gate->clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
-	gate->clk.parent_names = &gate->parent;
-	gate->clk.num_parents = 1;
+	gate->hw.clk.name = strdup(name);
+	gate->hw.clk.ops = &zynqmp_clk_gate_ops;
+	gate->hw.clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
+	gate->hw.clk.parent_names = &gate->parent;
+	gate->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&gate->clk);
+	ret = bclk_register(&gate->hw.clk);
 	if (ret) {
 		kfree(gate);
 		return ERR_PTR(ret);
 	}
 
-	return &gate->clk;
+	return &gate->hw.clk;
 }
diff --git a/drivers/clk/zynqmp/clk-mux-zynqmp.c b/drivers/clk/zynqmp/clk-mux-zynqmp.c
index c3fdf11840..e7264375f5 100644
--- a/drivers/clk/zynqmp/clk-mux-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-mux-zynqmp.c
@@ -18,17 +18,17 @@
 #define ZYNQMP_CLK_MUX_READ_ONLY		BIT(3)
 
 struct zynqmp_clk_mux {
-	struct clk clk;
+	struct clk_hw hw;
 	u32 clk_id;
 	const struct zynqmp_eemi_ops *ops;
 };
 
-#define to_zynqmp_clk_mux(clk) \
-	container_of(clk, struct zynqmp_clk_mux, clk)
+#define to_zynqmp_clk_mux(_hw) \
+	container_of(_hw, struct zynqmp_clk_mux, hw)
 
-static int zynqmp_clk_mux_get_parent(struct clk *clk)
+static int zynqmp_clk_mux_get_parent(struct clk_hw *hw)
 {
-	struct zynqmp_clk_mux *mux = to_zynqmp_clk_mux(clk);
+	struct zynqmp_clk_mux *mux = to_zynqmp_clk_mux(hw);
 	u32 value;
 
 	mux->ops->clock_getparent(mux->clk_id, &value);
@@ -36,9 +36,9 @@ static int zynqmp_clk_mux_get_parent(struct clk *clk)
 	return value;
 }
 
-static int zynqmp_clk_mux_set_parent(struct clk *clk, u8 index)
+static int zynqmp_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 {
-	struct zynqmp_clk_mux *mux = to_zynqmp_clk_mux(clk);
+	struct zynqmp_clk_mux *mux = to_zynqmp_clk_mux(hw);
 
 	return mux->ops->clock_setparent(mux->clk_id, index);
 }
@@ -82,21 +82,21 @@ struct clk *zynqmp_clk_register_mux(const char *name,
 	mux->clk_id = clk_id;
 	mux->ops = zynqmp_pm_get_eemi_ops();
 
-	mux->clk.name = strdup(name);
+	mux->hw.clk.name = strdup(name);
 	if (nodes->type_flag & ZYNQMP_CLK_MUX_READ_ONLY)
-		mux->clk.ops = &zynqmp_clk_mux_ro_ops;
+		mux->hw.clk.ops = &zynqmp_clk_mux_ro_ops;
 	else
-		mux->clk.ops = &zynqmp_clk_mux_ops;
-	mux->clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
-	mux->clk.parent_names = parent_names;
-	mux->clk.num_parents = num_parents;
+		mux->hw.clk.ops = &zynqmp_clk_mux_ops;
+	mux->hw.clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
+	mux->hw.clk.parent_names = parent_names;
+	mux->hw.clk.num_parents = num_parents;
 
-	ret = bclk_register(&mux->clk);
+	ret = bclk_register(&mux->hw.clk);
 	if (ret) {
 		kfree(parent_names);
 		kfree(mux);
 		return ERR_PTR(ret);
 	}
 
-	return &mux->clk;
+	return &mux->hw.clk;
 }
diff --git a/drivers/clk/zynqmp/clk-pll-zynqmp.c b/drivers/clk/zynqmp/clk-pll-zynqmp.c
index 6507222568..2e24d9d01c 100644
--- a/drivers/clk/zynqmp/clk-pll-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-pll-zynqmp.c
@@ -16,14 +16,14 @@
 #include "clk-zynqmp.h"
 
 struct zynqmp_pll {
-	struct clk clk;
+	struct clk_hw hw;
 	unsigned int clk_id;
 	const char *parent;
 	const struct zynqmp_eemi_ops *ops;
 };
 
-#define to_zynqmp_pll(clk) \
-	container_of(clk, struct zynqmp_pll, clk)
+#define to_zynqmp_pll(_hw) \
+	container_of(_hw, struct zynqmp_pll, hw)
 
 #define PLL_FBDIV_MIN		25
 #define PLL_FBDIV_MAX		125
@@ -53,10 +53,10 @@ static inline void zynqmp_pll_set_mode(struct zynqmp_pll *pll, enum pll_mode mod
 	pll->ops->ioctl(0, IOCTL_SET_PLL_FRAC_MODE, pll->clk_id, mode, NULL);
 }
 
-static long zynqmp_pll_round_rate(struct clk *clk, unsigned long rate,
+static long zynqmp_pll_round_rate(struct clk_hw *hw, unsigned long rate,
 				  unsigned long *prate)
 {
-	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	struct zynqmp_pll *pll = to_zynqmp_pll(hw);
 	u32 fbdiv;
 	long rate_div;
 
@@ -84,10 +84,10 @@ static long zynqmp_pll_round_rate(struct clk *clk, unsigned long rate,
 	return rate;
 }
 
-static unsigned long zynqmp_pll_recalc_rate(struct clk *clk,
+static unsigned long zynqmp_pll_recalc_rate(struct clk_hw *hw,
 					    unsigned long parent_rate)
 {
-	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	struct zynqmp_pll *pll = to_zynqmp_pll(hw);
 	u32 clk_id = pll->clk_id;
 	u32 fbdiv, data;
 	unsigned long rate, frac;
@@ -109,10 +109,10 @@ static unsigned long zynqmp_pll_recalc_rate(struct clk *clk,
 	return rate;
 }
 
-static int zynqmp_pll_set_rate(struct clk *clk, unsigned long rate,
+static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 			       unsigned long parent_rate)
 {
-	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	struct zynqmp_pll *pll = to_zynqmp_pll(hw);
 	u32 clk_id = pll->clk_id;
 	u32 fbdiv;
 	long rate_div, frac, m, f;
@@ -138,9 +138,9 @@ static int zynqmp_pll_set_rate(struct clk *clk, unsigned long rate,
 	}
 }
 
-static int zynqmp_pll_is_enabled(struct clk *clk)
+static int zynqmp_pll_is_enabled(struct clk_hw *hw)
 {
-	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	struct zynqmp_pll *pll = to_zynqmp_pll(hw);
 	u32 is_enabled;
 	int ret;
 
@@ -151,21 +151,21 @@ static int zynqmp_pll_is_enabled(struct clk *clk)
 	return !!(is_enabled);
 }
 
-static int zynqmp_pll_enable(struct clk *clk)
+static int zynqmp_pll_enable(struct clk_hw *hw)
 {
-	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	struct zynqmp_pll *pll = to_zynqmp_pll(hw);
 
-	if (zynqmp_pll_is_enabled(clk))
+	if (zynqmp_pll_is_enabled(hw))
 		return 0;
 
 	return pll->ops->clock_enable(pll->clk_id);
 }
 
-static void zynqmp_pll_disable(struct clk *clk)
+static void zynqmp_pll_disable(struct clk_hw *hw)
 {
-	struct zynqmp_pll *pll = to_zynqmp_pll(clk);
+	struct zynqmp_pll *pll = to_zynqmp_pll(hw);
 
-	if (!zynqmp_pll_is_enabled(clk))
+	if (!zynqmp_pll_is_enabled(hw))
 		return;
 
 	pll->ops->clock_disable(pll->clk_id);
@@ -197,17 +197,17 @@ struct clk *zynqmp_clk_register_pll(const char *name,
 	pll->ops = zynqmp_pm_get_eemi_ops();
 	pll->parent = strdup(parents[0]);
 
-	pll->clk.name = strdup(name);
-	pll->clk.ops = &zynqmp_pll_ops;
-	pll->clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
-	pll->clk.parent_names = &pll->parent;
-	pll->clk.num_parents = 1;
+	pll->hw.clk.name = strdup(name);
+	pll->hw.clk.ops = &zynqmp_pll_ops;
+	pll->hw.clk.flags = nodes->flag | CLK_SET_RATE_PARENT;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
 
-	ret = bclk_register(&pll->clk);
+	ret = bclk_register(&pll->hw.clk);
 	if (ret) {
 		kfree(pll);
 		return ERR_PTR(ret);
 	}
 
-	return &pll->clk;
+	return &pll->hw.clk;
 }
diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index 0f382f8c42..85dde1882e 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -167,9 +167,10 @@ static int ipu_di_clk_calc_div(unsigned long inrate, unsigned long outrate)
 	return div;
 }
 
-static unsigned long clk_di_recalc_rate(struct clk *clk,
+static unsigned long clk_di_recalc_rate(struct clk_hw *hw,
 		unsigned long parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct ipu_di *di = container_of(clk, struct ipu_di, clk_di_pixel);
 	unsigned long outrate;
 	u32 div = ipu_di_read(di, DI_BS_CLKGEN0);
@@ -182,9 +183,10 @@ static unsigned long clk_di_recalc_rate(struct clk *clk,
 	return outrate;
 }
 
-static long clk_di_round_rate(struct clk *clk, unsigned long rate,
+static long clk_di_round_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long *prate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct ipu_di *di = container_of(clk, struct ipu_di, clk_di_pixel);
 	unsigned long outrate;
 	int div;
@@ -206,9 +208,10 @@ static long clk_di_round_rate(struct clk *clk, unsigned long rate,
 	return outrate;
 }
 
-static int clk_di_set_rate(struct clk *clk, unsigned long rate,
+static int clk_di_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct ipu_di *di = container_of(clk, struct ipu_di, clk_di_pixel);
 	int div;
 	u32 clkgen0;
@@ -224,8 +227,9 @@ static int clk_di_set_rate(struct clk *clk, unsigned long rate,
 	return 0;
 }
 
-static int clk_di_get_parent(struct clk *clk)
+static int clk_di_get_parent(struct clk_hw *hw)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct ipu_di *di = container_of(clk, struct ipu_di, clk_di_pixel);
 	u32 val;
 
@@ -234,8 +238,9 @@ static int clk_di_get_parent(struct clk *clk)
 	return val & DI_GEN_DI_CLK_EXT ? 1 : 0;
 }
 
-static int clk_di_set_parent(struct clk *clk, u8 index)
+static int clk_di_set_parent(struct clk_hw *hw, u8 index)
 {
+	struct clk *clk = clk_hw_to_clk(hw);
 	struct ipu_di *di = container_of(clk, struct ipu_di, clk_di_pixel);
 	u32 val;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 71c5e23e91..66ac6a9f14 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -23,6 +23,7 @@ struct device_d;
  * struct clk - an machine class defined object / cookie.
  */
 struct clk;
+struct clk_hw;
 
 /**
  * struct clk_bulk_data - Data used for bulk clk operations.
@@ -163,6 +164,7 @@ void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
  * @clk: clock source
  */
 unsigned long clk_get_rate(struct clk *clk);
+unsigned long clk_hw_get_rate(struct clk_hw *hw);
 
 /**
  * clk_bulk_put	- "free" the clock source
@@ -203,7 +205,7 @@ void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks);
  * Returns rounded clock rate in Hz, or negative errno.
  */
 long clk_round_rate(struct clk *clk, unsigned long rate);
-
+long clk_hw_round_rate(struct clk_hw *hw, unsigned long rate);
 /**
  * clk_set_rate - set the clock rate for a clock source
  * @clk: clock source
@@ -212,6 +214,7 @@ long clk_round_rate(struct clk *clk, unsigned long rate);
  * Returns success (0) or negative errno.
  */
 int clk_set_rate(struct clk *clk, unsigned long rate);
+int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate);
 
 /**
  * clk_set_parent - set the parent clock source for this clock
@@ -221,6 +224,7 @@ int clk_set_rate(struct clk *clk, unsigned long rate);
  * Returns success (0) or negative errno.
  */
 int clk_set_parent(struct clk *clk, struct clk *parent);
+int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *hwp);
 
 /**
  * clk_get_parent - get the parent clock source for this clock
@@ -230,6 +234,7 @@ int clk_set_parent(struct clk *clk, struct clk *parent);
  * valid IS_ERR() condition containing errno.
  */
 struct clk *clk_get_parent(struct clk *clk);
+struct clk_hw *clk_hw_get_parent(struct clk_hw *hw);
 
 /**
  * clk_get_sys - get a clock based upon the device name
@@ -336,20 +341,38 @@ static inline void clk_put(struct clk *clk)
 #define CLK_GATE_HIWORD_MASK	(1 << 1)
 
 struct clk_ops {
-	int 		(*init)(struct clk *clk);
-	int		(*enable)(struct clk *clk);
-	void		(*disable)(struct clk *clk);
-	int		(*is_enabled)(struct clk *clk);
-	unsigned long	(*recalc_rate)(struct clk *clk,
+	int 		(*init)(struct clk_hw *hw);
+	int		(*enable)(struct clk_hw *hw);
+	void		(*disable)(struct clk_hw *hw);
+	int		(*is_enabled)(struct clk_hw *hw);
+	unsigned long	(*recalc_rate)(struct clk_hw *hw,
 					unsigned long parent_rate);
-	long		(*round_rate)(struct clk *clk, unsigned long,
+	long		(*round_rate)(struct clk_hw *hw, unsigned long,
 					unsigned long *);
-	int		(*set_parent)(struct clk *clk, u8 index);
-	int		(*get_parent)(struct clk *clk);
-	int		(*set_rate)(struct clk *clk, unsigned long,
+	int		(*set_parent)(struct clk_hw *hw, u8 index);
+	int		(*get_parent)(struct clk_hw *hw);
+	int		(*set_rate)(struct clk_hw *hw, unsigned long,
 				    unsigned long);
 };
 
+/**
+ * struct clk_init_data - holds init data that's common to all clocks and is
+ * shared between the clock provider and the common clock framework.
+ *
+ * @name: clock name
+ * @ops: operations this clock supports
+ * @parent_names: array of string names for all possible parents
+ * @num_parents: number of possible parents
+ * @flags: framework-level hints and quirks
+ */
+struct clk_init_data {
+	const char		*name;
+	const struct clk_ops	*ops;
+	const char		* const *parent_names;
+	unsigned int		num_parents;
+	unsigned long		flags;
+};
+
 struct clk {
 	const struct clk_ops *ops;
 	int enable_count;
@@ -362,6 +385,32 @@ struct clk {
 	unsigned long flags;
 };
 
+/**
+ * struct clk_hw - handle for traversing from a struct clk to its corresponding
+ * hardware-specific structure.  struct clk_hw should be declared within struct
+ * clk_foo and then referenced by the struct clk instance that uses struct
+ * clk_foo's clk_ops
+ *
+ * @clk: pointer to the per-user struct clk instance that can be used to call
+ * into the clk API
+ *
+ * @init: pointer to struct clk_init_data that contains the init data shared
+ * with the common clock framework.
+ */
+struct clk_hw {
+	struct clk clk;
+};
+
+static inline struct clk *clk_hw_to_clk(struct clk_hw *hw)
+{
+	return &hw->clk;
+}
+
+static inline struct clk_hw *clk_to_clk_hw(struct clk *clk)
+{
+	return container_of(clk, struct clk_hw, clk);
+}
+
 struct clk_div_table {
 	unsigned int	val;
 	unsigned int	div;
@@ -377,7 +426,7 @@ static inline struct clk *clk_fixed(const char *name, int rate)
 }
 
 struct clk_divider {
-	struct clk clk;
+	struct clk_hw hw;
 	u8 shift;
 	u8 width;
 	void __iomem *reg;
@@ -389,6 +438,8 @@ struct clk_divider {
 	int table_size;
 };
 
+#define to_clk_divider(_hw) container_of(_hw, struct clk_divider, hw)
+
 #define clk_div_mask(width)	((1 << (width)) - 1)
 
 #define CLK_DIVIDER_POWER_OF_TWO	(1 << 1)
@@ -441,14 +492,14 @@ struct clk *clk_fractional_divider(
 void clk_fractional_divider_free(struct clk *clk_fd);
 
 struct clk_mux {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	int shift;
 	int width;
 	unsigned flags;
 };
 
-#define to_clk_mux(_clk) container_of(_clk, struct clk_mux, clk)
+#define to_clk_mux(_hw) container_of(_hw, struct clk_mux, hw)
 
 extern struct clk_ops clk_mux_ops;
 
@@ -462,16 +513,16 @@ struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 		    u8 num_parents, unsigned mux_flags);
 
 struct clk_gate {
-	struct clk clk;
+	struct clk_hw hw;
 	void __iomem *reg;
 	int shift;
 	const char *parent;
 	unsigned flags;
 };
 
-int clk_gate_is_enabled(struct clk *clk);
+int clk_gate_is_enabled(struct clk_hw *hw);
 
-#define to_clk_gate(_clk) container_of(_clk, struct clk_gate, clk)
+#define to_clk_gate(_hw) container_of(_hw, struct clk_gate, hw)
 
 extern struct clk_ops clk_gate_ops;
 
@@ -487,11 +538,12 @@ struct clk *clk_gate_shared(const char *name, const char *parent, const char *sh
 			    unsigned flags);
 
 int clk_is_enabled(struct clk *clk);
+int clk_hw_is_enabled(struct clk_hw *hw);
 
-int clk_is_enabled_always(struct clk *clk);
-long clk_parent_round_rate(struct clk *clk, unsigned long rate,
+int clk_is_enabled_always(struct clk_hw *hw);
+long clk_parent_round_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long *prate);
-int clk_parent_set_rate(struct clk *clk, unsigned long rate,
+int clk_parent_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate);
 
 int bclk_register(struct clk *clk);
@@ -507,6 +559,12 @@ struct clk *clk_register_composite(const char *name,
 			struct clk *rate_clk,
 			struct clk *gate_clk,
 			unsigned long flags);
+
+static inline const char *clk_hw_get_name(struct clk_hw *hw)
+{
+	return hw->clk.name;
+}
+
 #endif
 
 struct device_node;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

