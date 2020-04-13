Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttY-0006yh-2a
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttT-0003aB-Dt
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:35 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttS-0005G3-LN
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:52:02 +0200
Message-Id: <20200413075204.17544-20-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 19/21] clk: at91: add sama5d2 audio PLL support
To: barebox@lists.infradead.org

Commit 7310b976 ("clk: at91: fix compilation errors in sama5d2.c") and
follow-up commit ca3077068c ("clk: at91: delete dead i2s/audio code")
had deleted the i2s/audio clock related parts of the upstream driver.

This was mostly due to unwillingness on my part to understand the code
enough for porting them and because I deemed them unnecessary to support
in barebox. The former has changed and the latter is not totally true as
audio PLL derived clocks may be muxed as inputs for programmable and
generated clocks.

Port them over and mimize the diff to upstream.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig       |   8 +
 drivers/clk/at91/Makefile        |   2 +
 drivers/clk/at91/clk-audio-pll.c | 512 +++++++++++++++++++++++++++++++
 drivers/clk/at91/clk-generated.c |   5 +-
 drivers/clk/at91/clk-i2s-mux.c   |  87 ++++++
 drivers/clk/at91/pmc.c           |   2 +
 drivers/clk/at91/pmc.h           |  17 +
 drivers/clk/at91/sama5d2.c       |  49 ++-
 include/linux/clk/at91_pmc.h     |  25 ++
 9 files changed, 702 insertions(+), 5 deletions(-)
 create mode 100644 drivers/clk/at91/clk-audio-pll.c
 create mode 100644 drivers/clk/at91/clk-i2s-mux.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index eb14cd2c28da..022635381009 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -34,6 +34,12 @@ config HAVE_AT91_GENERATED_CLK
 config HAVE_AT91_BOOTSTRAP
 	bool
 
+config HAVE_AT91_AUDIO_PLL
+	bool
+
+config HAVE_AT91_I2S_MUX_CLK
+	bool
+
 # Select if board uses the common at91sam926x_board_init
 config AT91SAM926X_BOARD_INIT
 	bool
@@ -71,6 +77,8 @@ config SOC_SAMA5D2
 	select HAVE_AT91_USB_CLK
 	select HAVE_AT91_GENERATED_CLK
 	select PINCTRL
+	select HAVE_AT91_AUDIO_PLL
+	select HAVE_AT91_I2S_MUX_CLK
 	select PINCTRL_AT91PIO4
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index d07baedf580c..605f698439d0 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -7,11 +7,13 @@ obj-y += pmc.o sckc.o
 obj-y += clk-slow.o clk-main.o clk-pll.o clk-plldiv.o clk-master.o
 obj-y += clk-system.o clk-peripheral.o clk-programmable.o
 
+obj-$(CONFIG_HAVE_AT91_AUDIO_PLL)	+= clk-audio-pll.o
 obj-$(CONFIG_HAVE_AT91_UTMI)		+= clk-utmi.o
 obj-$(CONFIG_HAVE_AT91_USB_CLK)		+= clk-usb.o
 obj-$(CONFIG_HAVE_AT91_SMD)		+= clk-smd.o
 obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
+obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
 obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o dt-compat.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
 obj-$(CONFIG_SOC_SAMA5D3) += dt-compat.o
diff --git a/drivers/clk/at91/clk-audio-pll.c b/drivers/clk/at91/clk-audio-pll.c
new file mode 100644
index 000000000000..47bff32fe83b
--- /dev/null
+++ b/drivers/clk/at91/clk-audio-pll.c
@@ -0,0 +1,512 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2016 Atmel Corporation,
+ *		       Songjun Wu <songjun.wu@atmel.com>,
+ *                     Nicolas Ferre <nicolas.ferre@atmel.com>
+ *  Copyright (C) 2017 Free Electrons,
+ *		       Quentin Schulz <quentin.schulz@free-electrons.com>
+ *
+ * The Sama5d2 SoC has two audio PLLs (PMC and PAD) that shares the same parent
+ * (FRAC). FRAC can output between 620 and 700MHz and only multiply the rate of
+ * its own parent. PMC and PAD can then divide the FRAC rate to best match the
+ * asked rate.
+ *
+ * Traits of FRAC clock:
+ * enable - clk_enable writes nd, fracr parameters and enables PLL
+ * rate - rate is adjustable.
+ *        clk->rate = parent->rate * ((nd + 1) + (fracr / 2^22))
+ * parent - fixed parent.  No clk_set_parent support
+ *
+ * Traits of PMC clock:
+ * enable - clk_enable writes qdpmc, and enables PMC output
+ * rate - rate is adjustable.
+ *        clk->rate = parent->rate / (qdpmc + 1)
+ * parent - fixed parent.  No clk_set_parent support
+ *
+ * Traits of PAD clock:
+ * enable - clk_enable writes divisors and enables PAD output
+ * rate - rate is adjustable.
+ *        clk->rate = parent->rate / (qdaudio * div))
+ * parent - fixed parent.  No clk_set_parent support
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include "pmc.h"
+
+#define AUDIO_PLL_DIV_FRAC	BIT(22)
+#define AUDIO_PLL_ND_MAX	(AT91_PMC_AUDIO_PLL_ND_MASK >> \
+					AT91_PMC_AUDIO_PLL_ND_OFFSET)
+
+#define AUDIO_PLL_QDPAD(qd, div)	((AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV(qd) & \
+					  AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_MASK) | \
+					 (AT91_PMC_AUDIO_PLL_QDPAD_DIV(div) & \
+					  AT91_PMC_AUDIO_PLL_QDPAD_DIV_MASK))
+
+#define AUDIO_PLL_QDPMC_MAX		(AT91_PMC_AUDIO_PLL_QDPMC_MASK >> \
+						AT91_PMC_AUDIO_PLL_QDPMC_OFFSET)
+
+#define AUDIO_PLL_FOUT_MIN	620000000UL
+#define AUDIO_PLL_FOUT_MAX	700000000UL
+
+struct clk_audio_frac {
+	struct clk clk;
+	struct regmap *regmap;
+	u32 fracr;
+	u8 nd;
+	const char *parent_name;
+};
+
+struct clk_audio_pad {
+	struct clk clk;
+	struct regmap *regmap;
+	u8 qdaudio;
+	u8 div;
+	const char *parent_name;
+};
+
+struct clk_audio_pmc {
+	struct clk clk;
+	struct regmap *regmap;
+	u8 qdpmc;
+	const char *parent_name;
+};
+
+#define to_clk_audio_frac(clk) container_of(clk, struct clk_audio_frac, clk)
+#define to_clk_audio_pad(clk) container_of(clk, struct clk_audio_pad, clk)
+#define to_clk_audio_pmc(clk) container_of(clk, struct clk_audio_pmc, clk)
+
+static int clk_audio_pll_frac_enable(struct clk *clk)
+{
+	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+
+	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_RESETN, 0);
+	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_RESETN,
+			   AT91_PMC_AUDIO_PLL_RESETN);
+	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL1,
+			   AT91_PMC_AUDIO_PLL_FRACR_MASK, frac->fracr);
+
+	/*
+	 * reset and enable have to be done in 2 separated writes
+	 * for AT91_PMC_AUDIO_PLL0
+	 */
+	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_PLLEN |
+			   AT91_PMC_AUDIO_PLL_ND_MASK,
+			   AT91_PMC_AUDIO_PLL_PLLEN |
+			   AT91_PMC_AUDIO_PLL_ND(frac->nd));
+
+	return 0;
+}
+
+static int clk_audio_pll_pad_enable(struct clk *clk)
+{
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+
+	regmap_update_bits(apad_ck->regmap, AT91_PMC_AUDIO_PLL1,
+			   AT91_PMC_AUDIO_PLL_QDPAD_MASK,
+			   AUDIO_PLL_QDPAD(apad_ck->qdaudio, apad_ck->div));
+	regmap_update_bits(apad_ck->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_PADEN, AT91_PMC_AUDIO_PLL_PADEN);
+
+	return 0;
+}
+
+static int clk_audio_pll_pmc_enable(struct clk *clk)
+{
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+
+	regmap_update_bits(apmc_ck->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_PMCEN |
+			   AT91_PMC_AUDIO_PLL_QDPMC_MASK,
+			   AT91_PMC_AUDIO_PLL_PMCEN |
+			   AT91_PMC_AUDIO_PLL_QDPMC(apmc_ck->qdpmc));
+	return 0;
+}
+
+static void clk_audio_pll_frac_disable(struct clk *clk)
+{
+	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+
+	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_PLLEN, 0);
+	/* do it in 2 separated writes */
+	regmap_update_bits(frac->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_RESETN, 0);
+}
+
+static void clk_audio_pll_pad_disable(struct clk *clk)
+{
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+
+	regmap_update_bits(apad_ck->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_PADEN, 0);
+}
+
+static void clk_audio_pll_pmc_disable(struct clk *clk)
+{
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+
+	regmap_update_bits(apmc_ck->regmap, AT91_PMC_AUDIO_PLL0,
+			   AT91_PMC_AUDIO_PLL_PMCEN, 0);
+}
+
+static unsigned long clk_audio_pll_fout(unsigned long parent_rate,
+					unsigned long nd, unsigned long fracr)
+{
+	unsigned long long fr = (unsigned long long)parent_rate * fracr;
+
+	pr_debug("A PLL: %s, fr = %llu\n", __func__, fr);
+
+	fr = DIV_ROUND_CLOSEST_ULL(fr, AUDIO_PLL_DIV_FRAC);
+
+	pr_debug("A PLL: %s, fr = %llu\n", __func__, fr);
+
+	return parent_rate * (nd + 1) + fr;
+}
+
+static unsigned long clk_audio_pll_frac_recalc_rate(struct clk *clk,
+						    unsigned long parent_rate)
+{
+	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+	unsigned long fout;
+
+	fout = clk_audio_pll_fout(parent_rate, frac->nd, frac->fracr);
+
+	pr_debug("A PLL: %s, fout = %lu (nd = %u, fracr = %lu)\n", __func__,
+		 fout, frac->nd, (unsigned long)frac->fracr);
+
+	return fout;
+}
+
+static unsigned long clk_audio_pll_pad_recalc_rate(struct clk *clk,
+						   unsigned long parent_rate)
+{
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+	unsigned long apad_rate = 0;
+
+	if (apad_ck->qdaudio && apad_ck->div)
+		apad_rate = parent_rate / (apad_ck->qdaudio * apad_ck->div);
+
+	pr_debug("A PLL/PAD: %s, apad_rate = %lu (div = %u, qdaudio = %u)\n",
+		 __func__, apad_rate, apad_ck->div, apad_ck->qdaudio);
+
+	return apad_rate;
+}
+
+static unsigned long clk_audio_pll_pmc_recalc_rate(struct clk *clk,
+						   unsigned long parent_rate)
+{
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+	unsigned long apmc_rate = 0;
+
+	apmc_rate = parent_rate / (apmc_ck->qdpmc + 1);
+
+	pr_debug("A PLL/PMC: %s, apmc_rate = %lu (qdpmc = %u)\n", __func__,
+		 apmc_rate, apmc_ck->qdpmc);
+
+	return apmc_rate;
+}
+
+static int clk_audio_pll_frac_compute_frac(unsigned long rate,
+					   unsigned long parent_rate,
+					   unsigned long *nd,
+					   unsigned long *fracr)
+{
+	unsigned long long tmp, rem;
+
+	if (!rate)
+		return -EINVAL;
+
+	tmp = rate;
+	rem = do_div(tmp, parent_rate);
+	if (!tmp || tmp >= AUDIO_PLL_ND_MAX)
+		return -EINVAL;
+
+	*nd = tmp - 1;
+
+	tmp = rem * AUDIO_PLL_DIV_FRAC;
+	tmp = DIV_ROUND_CLOSEST_ULL(tmp, parent_rate);
+	if (tmp > AT91_PMC_AUDIO_PLL_FRACR_MASK)
+		return -EINVAL;
+
+	/* we can cast here as we verified the bounds just above */
+	*fracr = (unsigned long)tmp;
+
+	return 0;
+}
+
+static long clk_audio_pll_pad_round_rate(struct clk *clk, unsigned long rate,
+					 unsigned long *parent_rate)
+{
+	struct clk *pclk = clk_get_parent(clk);
+	long best_rate = -EINVAL;
+	unsigned long best_parent_rate;
+	unsigned long tmp_qd;
+	u32 div;
+	long tmp_rate;
+	int tmp_diff;
+	int best_diff = -1;
+
+	pr_debug("A PLL/PAD: %s, rate = %lu (parent_rate = %lu)\n", __func__,
+		 rate, *parent_rate);
+
+	/*
+	 * Rate divisor is actually made of two different divisors, multiplied
+	 * between themselves before dividing the rate.
+	 * tmp_qd goes from 1 to 31 and div is either 2 or 3.
+	 * In order to avoid testing twice the rate divisor (e.g. divisor 12 can
+	 * be found with (tmp_qd, div) = (2, 6) or (3, 4)), we remove any loop
+	 * for a rate divisor when div is 2 and tmp_qd is a multiple of 3.
+	 * We cannot inverse it (condition div is 3 and tmp_qd is even) or we
+	 * would miss some rate divisor that aren't reachable with div being 2
+	 * (e.g. rate divisor 90 is made with div = 3 and tmp_qd = 30, thus
+	 * tmp_qd is even so we skip it because we think div 2 could make this
+	 * rate divisor which isn't possible since tmp_qd has to be <= 31).
+	 */
+	for (tmp_qd = 1; tmp_qd < AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_MAX; tmp_qd++)
+		for (div = 2; div <= 3; div++) {
+			if (div == 2 && tmp_qd % 3 == 0)
+				continue;
+
+			best_parent_rate = clk_round_rate(pclk,
+							rate * tmp_qd * div);
+			tmp_rate = best_parent_rate / (div * tmp_qd);
+			tmp_diff = abs(rate - tmp_rate);
+
+			if (best_diff < 0 || best_diff > tmp_diff) {
+				*parent_rate = best_parent_rate;
+				best_rate = tmp_rate;
+				best_diff = tmp_diff;
+			}
+		}
+
+	pr_debug("A PLL/PAD: %s, best_rate = %ld, best_parent_rate = %lu\n",
+		 __func__, best_rate, best_parent_rate);
+
+	return best_rate;
+}
+
+static long clk_audio_pll_pmc_round_rate(struct clk *clk, unsigned long rate,
+					 unsigned long *parent_rate)
+{
+	struct clk *pclk = clk_get_parent(clk);
+	long best_rate = -EINVAL;
+	unsigned long best_parent_rate = 0;
+	u32 tmp_qd = 0, div;
+	long tmp_rate;
+	int tmp_diff;
+	int best_diff = -1;
+
+	pr_debug("A PLL/PMC: %s, rate = %lu (parent_rate = %lu)\n", __func__,
+		 rate, *parent_rate);
+
+	if (!rate)
+		return 0;
+
+	best_parent_rate = clk_round_rate(pclk, 1);
+	div = max(best_parent_rate / rate, 1UL);
+	for (; div <= AUDIO_PLL_QDPMC_MAX; div++) {
+		best_parent_rate = clk_round_rate(pclk, rate * div);
+		tmp_rate = best_parent_rate / div;
+		tmp_diff = abs(rate - tmp_rate);
+
+		if (best_diff < 0 || best_diff > tmp_diff) {
+			*parent_rate = best_parent_rate;
+			best_rate = tmp_rate;
+			best_diff = tmp_diff;
+			tmp_qd = div;
+			if (!best_diff)
+				break;	/* got exact match */
+		}
+	}
+
+	pr_debug("A PLL/PMC: %s, best_rate = %ld, best_parent_rate = %lu (qd = %d)\n",
+		 __func__, best_rate, *parent_rate, tmp_qd - 1);
+
+	return best_rate;
+}
+
+static int clk_audio_pll_frac_set_rate(struct clk *clk, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	struct clk_audio_frac *frac = to_clk_audio_frac(clk);
+	unsigned long fracr, nd;
+	int ret;
+
+	pr_debug("A PLL: %s, rate = %lu (parent_rate = %lu)\n", __func__, rate,
+		 parent_rate);
+
+	if (rate < AUDIO_PLL_FOUT_MIN || rate > AUDIO_PLL_FOUT_MAX)
+		return -EINVAL;
+
+	ret = clk_audio_pll_frac_compute_frac(rate, parent_rate, &nd, &fracr);
+	if (ret)
+		return ret;
+
+	frac->nd = nd;
+	frac->fracr = fracr;
+
+	return 0;
+}
+
+static int clk_audio_pll_pad_set_rate(struct clk *clk, unsigned long rate,
+				      unsigned long parent_rate)
+{
+	struct clk_audio_pad *apad_ck = to_clk_audio_pad(clk);
+	u8 tmp_div;
+
+	pr_debug("A PLL/PAD: %s, rate = %lu (parent_rate = %lu)\n", __func__,
+		 rate, parent_rate);
+
+	if (!rate)
+		return -EINVAL;
+
+	tmp_div = parent_rate / rate;
+	if (tmp_div % 3 == 0) {
+		apad_ck->qdaudio = tmp_div / 3;
+		apad_ck->div = 3;
+	} else {
+		apad_ck->qdaudio = tmp_div / 2;
+		apad_ck->div = 2;
+	}
+
+	return 0;
+}
+
+static int clk_audio_pll_pmc_set_rate(struct clk *clk, unsigned long rate,
+				      unsigned long parent_rate)
+{
+	struct clk_audio_pmc *apmc_ck = to_clk_audio_pmc(clk);
+
+	if (!rate)
+		return -EINVAL;
+
+	pr_debug("A PLL/PMC: %s, rate = %lu (parent_rate = %lu)\n", __func__,
+		 rate, parent_rate);
+
+	apmc_ck->qdpmc = parent_rate / rate - 1;
+
+	return 0;
+}
+
+static const struct clk_ops audio_pll_frac_ops = {
+	.enable = clk_audio_pll_frac_enable,
+	.disable = clk_audio_pll_frac_disable,
+	.recalc_rate = clk_audio_pll_frac_recalc_rate,
+	.set_rate = clk_audio_pll_frac_set_rate,
+};
+
+static const struct clk_ops audio_pll_pad_ops = {
+	.enable = clk_audio_pll_pad_enable,
+	.disable = clk_audio_pll_pad_disable,
+	.recalc_rate = clk_audio_pll_pad_recalc_rate,
+	.round_rate = clk_audio_pll_pad_round_rate,
+	.set_rate = clk_audio_pll_pad_set_rate,
+};
+
+static const struct clk_ops audio_pll_pmc_ops = {
+	.enable = clk_audio_pll_pmc_enable,
+	.disable = clk_audio_pll_pmc_disable,
+	.recalc_rate = clk_audio_pll_pmc_recalc_rate,
+	.round_rate = clk_audio_pll_pmc_round_rate,
+	.set_rate = clk_audio_pll_pmc_set_rate,
+};
+
+struct clk * __init
+at91_clk_register_audio_pll_frac(struct regmap *regmap, const char *name,
+				 const char *parent_name)
+{
+	struct clk_audio_frac *frac_ck;
+	int ret;
+
+	frac_ck = kzalloc(sizeof(*frac_ck), GFP_KERNEL);
+	if (!frac_ck)
+		return ERR_PTR(-ENOMEM);
+
+	frac_ck->clk.name = name;
+	frac_ck->clk.ops = &audio_pll_frac_ops;
+	frac_ck->parent_name = parent_name;
+	frac_ck->clk.parent_names = &frac_ck->parent_name;
+	frac_ck->clk.num_parents = 1;
+	/* frac_ck->clk.flags = CLK_SET_RATE_GATE; */
+
+	frac_ck->regmap = regmap;
+
+	ret = clk_register(&frac_ck->clk);
+	if (ret) {
+		kfree(frac_ck);
+		return ERR_PTR(ret);
+	}
+
+	return &frac_ck->clk;
+}
+
+struct clk * __init
+at91_clk_register_audio_pll_pad(struct regmap *regmap, const char *name,
+				const char *parent_name)
+{
+	struct clk_audio_pad *apad_ck;
+	int ret;
+
+	apad_ck = kzalloc(sizeof(*apad_ck), GFP_KERNEL);
+	if (!apad_ck)
+		return ERR_PTR(-ENOMEM);
+
+	apad_ck->clk.name = name;
+	apad_ck->clk.ops = &audio_pll_pad_ops;
+	apad_ck->parent_name = parent_name;
+	apad_ck->clk.parent_names = &apad_ck->parent_name;
+	apad_ck->clk.num_parents = 1;
+	/* apad_ck->clk.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		CLK_SET_RATE_PARENT; */
+
+	apad_ck->regmap = regmap;
+
+	ret = clk_register(&apad_ck->clk);
+	if (ret) {
+		kfree(apad_ck);
+		return ERR_PTR(ret);
+	}
+
+	return &apad_ck->clk;
+}
+
+struct clk * __init
+at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
+				const char *parent_name)
+{
+	struct clk_audio_pmc *apmc_ck;
+	int ret;
+
+	apmc_ck = kzalloc(sizeof(*apmc_ck), GFP_KERNEL);
+	if (!apmc_ck)
+		return ERR_PTR(-ENOMEM);
+
+	apmc_ck->clk.name = name;
+	apmc_ck->clk.ops = &audio_pll_pmc_ops;
+	apmc_ck->parent_name = parent_name;
+	apmc_ck->clk.parent_names = &apmc_ck->parent_name;
+	apmc_ck->clk.num_parents = 1;
+	/* apmc_ck.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE |
+		CLK_SET_RATE_PARENT; */
+
+	apmc_ck->regmap = regmap;
+
+	ret = clk_register(&apmc_ck->clk);
+	if (ret) {
+		kfree(apmc_ck);
+		return ERR_PTR(ret);
+	}
+
+	return &apmc_ck->clk;
+}
diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 909c4a4530f8..79b83b45ab62 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -19,6 +19,8 @@
 
 #define GENERATED_MAX_DIV	255
 
+#define GCK_INDEX_DT_AUDIO_PLL	5
+
 struct clk_generated {
 	struct clk hw;
 	struct regmap *regmap;
@@ -26,6 +28,7 @@ struct clk_generated {
 	u32 id;
 	u32 gckdiv;
 	u8 parent_id;
+	bool audio_pll_allowed;
 };
 
 #define to_clk_generated(hw) \
@@ -182,7 +185,7 @@ at91_clk_register_generated(struct regmap *regmap,
 	/* gck->hw.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
 	gck->regmap = regmap;
 	gck->range = *range;
-	/* gck->audio_pll_allowed = pll_audio; */
+	gck->audio_pll_allowed = pll_audio;
 
 	hw = &gck->hw;
 	ret = clk_register(&gck->hw);
diff --git a/drivers/clk/at91/clk-i2s-mux.c b/drivers/clk/at91/clk-i2s-mux.c
new file mode 100644
index 000000000000..1418ec8662c9
--- /dev/null
+++ b/drivers/clk/at91/clk-i2s-mux.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *  Copyright (C) 2018 Microchip Technology Inc,
+ *                     Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
+ *
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <of.h>
+#include <linux/list.h>
+#include <linux/clk.h>
+#include <linux/clk/at91_pmc.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+#include <soc/at91/atmel-sfr.h>
+
+#include "pmc.h"
+
+#define I2S_MUX_SOURCE_MAX	2
+
+struct clk_i2s_mux {
+	struct clk clk;
+	struct regmap *regmap;
+	u8 bus_id;
+	const char *parent_names[I2S_MUX_SOURCE_MAX];
+};
+
+#define to_clk_i2s_mux(clk) container_of(clk, struct clk_i2s_mux, clk)
+
+static int clk_i2s_mux_get_parent(struct clk *clk)
+{
+	struct clk_i2s_mux *mux = to_clk_i2s_mux(clk);
+	u32 val;
+
+	regmap_read(mux->regmap, AT91_SFR_I2SCLKSEL, &val);
+
+	return (val & BIT(mux->bus_id)) >> mux->bus_id;
+}
+
+static int clk_i2s_mux_set_parent(struct clk *clk, u8 index)
+{
+	struct clk_i2s_mux *mux = to_clk_i2s_mux(clk);
+
+	return regmap_update_bits(mux->regmap, AT91_SFR_I2SCLKSEL,
+				  BIT(mux->bus_id), index << mux->bus_id);
+}
+
+static const struct clk_ops clk_i2s_mux_ops = {
+	.set_rate = clk_parent_set_rate,
+	.round_rate = clk_parent_round_rate,
+	.get_parent = clk_i2s_mux_get_parent,
+	.set_parent = clk_i2s_mux_set_parent,
+};
+
+struct clk * __init
+at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
+			  const char * const *parent_names,
+			  unsigned int num_parents, u8 bus_id)
+{
+	struct clk_i2s_mux *i2s_ck;
+	int ret;
+
+	i2s_ck = kzalloc(sizeof(*i2s_ck), GFP_KERNEL);
+	if (!i2s_ck)
+		return ERR_PTR(-ENOMEM);
+
+	i2s_ck->clk.name = name;
+	i2s_ck->clk.ops = &clk_i2s_mux_ops;
+	memcpy(i2s_ck->parent_names, parent_names,
+	       num_parents * sizeof(i2s_ck->parent_names[0]));
+	i2s_ck->clk.parent_names = &i2s_ck->parent_names[0];
+	i2s_ck->clk.num_parents = num_parents;
+
+	i2s_ck->bus_id = bus_id;
+	i2s_ck->regmap = regmap;
+
+	ret = clk_register(&i2s_ck->clk);
+	if (ret) {
+		kfree(i2s_ck);
+		return ERR_PTR(ret);
+	}
+
+	return &i2s_ck->clk;
+}
diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index bea3c89e2c3a..3f7aabbb551a 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -135,6 +135,8 @@ static struct
 	u32 imr;
 	u32 pcsr1;
 	u32 pcr[PMC_MAX_IDS];
+	u32 audio_pll0;
+	u32 audio_pll1;
 	u32 pckr[PMC_MAX_PCKS];
 } pmc_cache;
 
diff --git a/drivers/clk/at91/pmc.h b/drivers/clk/at91/pmc.h
index 705486a1f440..0efd70b7fcb3 100644
--- a/drivers/clk/at91/pmc.h
+++ b/drivers/clk/at91/pmc.h
@@ -84,6 +84,18 @@ int of_at91_get_clk_range(struct device_node *np, const char *propname,
 
 struct clk *of_clk_hw_pmc_get(struct of_phandle_args *clkspec, void *data);
 
+struct clk * __init
+at91_clk_register_audio_pll_frac(struct regmap *regmap, const char *name,
+				 const char *parent_name);
+
+struct clk * __init
+at91_clk_register_audio_pll_pad(struct regmap *regmap, const char *name,
+				const char *parent_name);
+
+struct clk * __init
+at91_clk_register_audio_pll_pmc(struct regmap *regmap, const char *name,
+				const char *parent_name);
+
 struct clk * __init
 at91_clk_register_generated(struct regmap *regmap,
 			    const char *name, const char **parent_names,
@@ -94,6 +106,11 @@ struct clk * __init
 at91_clk_register_h32mx(struct regmap *regmap, const char *name,
 			const char *parent_name);
 
+struct clk * __init
+at91_clk_i2s_mux_register(struct regmap *regmap, const char *name,
+			  const char * const *parent_names,
+			  unsigned int num_parents, u8 bus_id);
+
 struct clk * __init
 at91_clk_register_main_rc_osc(struct regmap *regmap, const char *name,
 			      u32 frequency, u32 accuracy);
diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 61fdf256c036..f17a88cd8845 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -84,6 +84,8 @@ static const struct {
 	{ .n = "trng_clk",    .id = 47, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "pdmic_clk",   .id = 48, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "securam_clk", .id = 51, },
+	{ .n = "i2s0_clk",    .id = 54, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "i2s1_clk",    .id = 55, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can0_clk",    .id = 56, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "can1_clk",    .id = 57, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "classd_clk",  .id = 59, .r = { .min = 0, .max = 83000000 }, },
@@ -121,6 +123,8 @@ static const struct {
 	{ .n = "pwm_gclk",    .id = 38, .r = { .min = 0, .max = 83000000 }, },
 	{ .n = "isc_gclk",    .id = 46, },
 	{ .n = "pdmic_gclk",  .id = 48, },
+	{ .n = "i2s0_gclk",   .id = 54, .pll = true },
+	{ .n = "i2s1_gclk",   .id = 55, .pll = true },
 	{ .n = "can0_gclk",   .id = 56, .r = { .min = 0, .max = 80000000 }, },
 	{ .n = "can1_gclk",   .id = 57, .r = { .min = 0, .max = 80000000 }, },
 	{ .n = "classd_gclk", .id = 59, .r = { .min = 0, .max = 100000000 },
@@ -132,7 +136,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	struct clk_range range = CLK_RANGE(0, 0);
 	const char *slck_name, *mainxtal_name;
 	struct pmc_data *sama5d2_pmc;
-	const char *parent_names[5];
+	const char *parent_names[6];
 	struct regmap *regmap, *regmap_sfr;
 	struct clk *hw;
 	int i;
@@ -153,7 +157,7 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(regmap))
 		return;
 
-	sama5d2_pmc = pmc_data_allocate(PMC_MCK2 + 1,
+	sama5d2_pmc = pmc_data_allocate(PMC_I2S1_MUX + 1,
 					nck(sama5d2_systemck),
 					nck(sama5d2_periph32ck),
 					nck(sama5d2_gck));
@@ -189,6 +193,21 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	if (IS_ERR(hw))
 		goto err_free;
 
+	hw = at91_clk_register_audio_pll_frac(regmap, "audiopll_fracck",
+					      "mainck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_audio_pll_pad(regmap, "audiopll_padck",
+					     "audiopll_fracck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_audio_pll_pmc(regmap, "audiopll_pmcck",
+					     "audiopll_fracck");
+	if (IS_ERR(hw))
+		goto err_free;
+
 	regmap_sfr = syscon_regmap_lookup_by_compatible("atmel,sama5d2-sfr");
 	if (IS_ERR(regmap_sfr))
 		regmap_sfr = NULL;
@@ -228,13 +247,14 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
 	parent_names[4] = "masterck";
+	parent_names[5] = "audiopll_pmcck";
 	for (i = 0; i < 3; i++) {
 		char *name;
 
 		name = xasprintf("prog%d", i);
 
 		hw = at91_clk_register_programmable(regmap, name,
-						    parent_names, 5, i,
+						    parent_names, 6, i,
 						    &at91sam9x5_programmable_layout);
 		if (IS_ERR(hw))
 			goto err_free;
@@ -279,10 +299,11 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 	parent_names[2] = "plladivck";
 	parent_names[3] = "utmick";
 	parent_names[4] = "masterck";
+	parent_names[5] = "audiopll_pmcck";
 	for (i = 0; i < ARRAY_SIZE(sama5d2_gck); i++) {
 		hw = at91_clk_register_generated(regmap,
 						 sama5d2_gck[i].n,
-						 parent_names, 5,
+						 parent_names, 6,
 						 sama5d2_gck[i].id,
 						 sama5d2_gck[i].pll,
 						 &sama5d2_gck[i].r);
@@ -292,6 +313,26 @@ static void __init sama5d2_pmc_setup(struct device_node *np)
 		sama5d2_pmc->ghws[sama5d2_gck[i].id] = hw;
 	}
 
+	if (regmap_sfr) {
+		parent_names[0] = "i2s0_clk";
+		parent_names[1] = "i2s0_gclk";
+		hw = at91_clk_i2s_mux_register(regmap_sfr, "i2s0_muxclk",
+					       parent_names, 2, 0);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama5d2_pmc->chws[PMC_I2S0_MUX] = hw;
+
+		parent_names[0] = "i2s1_clk";
+		parent_names[1] = "i2s1_gclk";
+		hw = at91_clk_i2s_mux_register(regmap_sfr, "i2s1_muxclk",
+					       parent_names, 2, 1);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama5d2_pmc->chws[PMC_I2S1_MUX] = hw;
+	}
+
 	of_clk_add_provider(np, of_clk_hw_pmc_get, sama5d2_pmc);
 
 	return;
diff --git a/include/linux/clk/at91_pmc.h b/include/linux/clk/at91_pmc.h
index d02dba1501b7..08a07556568a 100644
--- a/include/linux/clk/at91_pmc.h
+++ b/include/linux/clk/at91_pmc.h
@@ -181,4 +181,29 @@
 #define		AT91_PMC_PCR_EN			(0x1  <<  28)				/* Enable */
 #define		AT91_PMC_PCR_GCKEN		(0x1  <<  29)				/* GCK Enable */
 
+#define AT91_PMC_AUDIO_PLL0	0x14c
+#define		AT91_PMC_AUDIO_PLL_PLLEN	(1  <<  0)
+#define		AT91_PMC_AUDIO_PLL_PADEN	(1  <<  1)
+#define		AT91_PMC_AUDIO_PLL_PMCEN	(1  <<  2)
+#define		AT91_PMC_AUDIO_PLL_RESETN	(1  <<  3)
+#define		AT91_PMC_AUDIO_PLL_ND_OFFSET	8
+#define		AT91_PMC_AUDIO_PLL_ND_MASK	(0x7f << AT91_PMC_AUDIO_PLL_ND_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_ND(n)	((n)  << AT91_PMC_AUDIO_PLL_ND_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_QDPMC_OFFSET	16
+#define		AT91_PMC_AUDIO_PLL_QDPMC_MASK	(0x7f << AT91_PMC_AUDIO_PLL_QDPMC_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_QDPMC(n)	((n)  << AT91_PMC_AUDIO_PLL_QDPMC_OFFSET)
+
+#define AT91_PMC_AUDIO_PLL1	0x150
+#define		AT91_PMC_AUDIO_PLL_FRACR_MASK		0x3fffff
+#define		AT91_PMC_AUDIO_PLL_QDPAD_OFFSET		24
+#define		AT91_PMC_AUDIO_PLL_QDPAD_MASK		(0x7f << AT91_PMC_AUDIO_PLL_QDPAD_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_QDPAD(n)		((n)  << AT91_PMC_AUDIO_PLL_QDPAD_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_QDPAD_DIV_OFFSET	AT91_PMC_AUDIO_PLL_QDPAD_OFFSET
+#define		AT91_PMC_AUDIO_PLL_QDPAD_DIV_MASK	(0x3  << AT91_PMC_AUDIO_PLL_QDPAD_DIV_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_QDPAD_DIV(n)		((n)  << AT91_PMC_AUDIO_PLL_QDPAD_DIV_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_OFFSET	26
+#define		AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_MAX	0x1f
+#define		AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_MASK	(AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_MAX << AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_OFFSET)
+#define		AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV(n)	((n)  << AT91_PMC_AUDIO_PLL_QDPAD_EXTDIV_OFFSET)
+
 #endif
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
