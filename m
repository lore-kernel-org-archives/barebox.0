Delivery-date: Tue, 27 Apr 2021 22:25:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUH7-0006aQ-Sl
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:25:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUH0-0006MG-4X
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:25:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZYbcYrFXWtVuwRbJC1L/LKgD3MQeTcOwopUkNmkAl10=; b=eX1Fl7Yq9fynnkCXKyas6LUqMS
	a5zdd0aL0RlhuIFYYWHs+fuV5+ncB7FVRmH0X3ud1/blh3wWOkTaAbsKJpFmSoou32XNLOo0aYKGv
	8a99ZAWFylroWF833H+nCelFNTZq1GAGdNAkrexLX/JCFb6Ea2SYyct00wrWDoPfTk3SAHsUDleji
	bGxpKk9DZnoRieX1ZjEIyNN0/12rR4lm6q7UJlSmIdS3Xn9dUWv5e+ZtFiQaP+DAU4p1TAsN0KyaQ
	Eva8uJbQQoztweJRlxKwGr2aFG6YiGBU/cOZ8U9lHERTANxGy1FaSEndTG8ZVBkyqJ6TlxRb2kcrE
	enjGUVUg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFd-002C0o-7T; Tue, 27 Apr 2021 20:24:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFC-002Bsy-PA
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=u57hJQgNS0Qd0GeuogLm52/hDA0bYeXQ7+Gto25RA2I=; b=yerZZ30HQhHidUw3TEiV3y87ZF
 WKY6NUchQiUrWbA/7294uSIWFMVKN5hxitTHyM8lHjIEJi3e62/4yQyu3OqsDxHhpv8ivPLKdoxnj
 9PaD9pponNz0Q+NJzuheWZZYnMUdX9NSjUERW6x9zqgbk8hLMvnul06tPwQ3vrJxVP/hl1FkKvx2g
 ecNlAwVu90VuDXR4T/CwrtKkZwkqC//3JMQsi1Drg9GdnpwZ1V5GYWiZcrfNxtYYaYTNGBq0lOj9o
 9fD+taKDyhnMKOEegX0NKXgM5B6quzGQ6+y+4tg2NNYwyaNkppthFyxwUNzGjEZAD8o+6XIZ7lRnU
 j3Y3Ggbg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUF6-00GyJy-4U
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005XT-Pj; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEl-00016N-V6; Tue, 27 Apr 2021 22:23:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:22:58 +0200
Message-Id: <20210427202309.32077-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132336_714942_C3FA464A 
X-CRM114-Status: GOOD (  35.41  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/12] clk: add SiFive PRCI clock controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import U74 and U54 clock controller support from Linux v5.12.

Unlike Linux, dependency wrpll-cln28hpc.c is compiled in unconditionally.
Linker garbage collection will take care to omit it if unreferenced.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/Kconfig                           |   2 +
 drivers/clk/Makefile                          |   2 +
 drivers/clk/analogbits/Makefile               |   3 +
 drivers/clk/analogbits/wrpll-cln28hpc.c       | 367 +++++++++++
 drivers/clk/sifive/Kconfig                    |  18 +
 drivers/clk/sifive/Makefile                   |   2 +
 drivers/clk/sifive/fu540-prci.c               |  87 +++
 drivers/clk/sifive/fu540-prci.h               |  16 +
 drivers/clk/sifive/fu740-prci.c               | 121 ++++
 drivers/clk/sifive/fu740-prci.h               |  21 +
 drivers/clk/sifive/sifive-prci.c              | 581 ++++++++++++++++++
 drivers/clk/sifive/sifive-prci.h              | 298 +++++++++
 include/linux/clk/analogbits-wrpll-cln28hpc.h |  79 +++
 13 files changed, 1597 insertions(+)
 create mode 100644 drivers/clk/analogbits/Makefile
 create mode 100644 drivers/clk/analogbits/wrpll-cln28hpc.c
 create mode 100644 drivers/clk/sifive/Kconfig
 create mode 100644 drivers/clk/sifive/Makefile
 create mode 100644 drivers/clk/sifive/fu540-prci.c
 create mode 100644 drivers/clk/sifive/fu540-prci.h
 create mode 100644 drivers/clk/sifive/fu740-prci.c
 create mode 100644 drivers/clk/sifive/fu740-prci.h
 create mode 100644 drivers/clk/sifive/sifive-prci.c
 create mode 100644 drivers/clk/sifive/sifive-prci.h
 create mode 100644 include/linux/clk/analogbits-wrpll-cln28hpc.h

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index c05e06565192..d8649c3f9bf0 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -19,3 +19,5 @@ config CLK_SOCFPGA
 	bool
 	select COMMON_CLK_OF_PROVIDER
 	default y if ARCH_SOCFPGA && OFDEVICE
+
+source "drivers/clk/sifive/Kconfig"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 04c797e7e0df..b0be8d1bd89a 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -21,3 +21,5 @@ obj-$(CONFIG_ARCH_STM32MP)	+= clk-stm32mp1.o
 obj-$(CONFIG_MACH_VEXPRESS)	+= vexpress/
 obj-$(CONFIG_MACH_MIPS_LOONGSON)+= loongson/
 obj-$(CONFIG_ARCH_LAYERSCAPE)	+= clk-qoric.o
+obj-y				+= analogbits/
+obj-$(CONFIG_CLK_SIFIVE)	+= sifive/
diff --git a/drivers/clk/analogbits/Makefile b/drivers/clk/analogbits/Makefile
new file mode 100644
index 000000000000..c893283ea529
--- /dev/null
+++ b/drivers/clk/analogbits/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-y	+= wrpll-cln28hpc.o
diff --git a/drivers/clk/analogbits/wrpll-cln28hpc.c b/drivers/clk/analogbits/wrpll-cln28hpc.c
new file mode 100644
index 000000000000..640af533d606
--- /dev/null
+++ b/drivers/clk/analogbits/wrpll-cln28hpc.c
@@ -0,0 +1,367 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ * Wesley Terpstra
+ * Paul Walmsley
+ *
+ * This library supports configuration parsing and reprogramming of
+ * the CLN28HPC variant of the Analog Bits Wide Range PLL.  The
+ * intention is for this library to be reusable for any device that
+ * integrates this PLL; thus the register structure and programming
+ * details are expected to be provided by a separate IP block driver.
+ *
+ * The bulk of this code is primarily useful for clock configurations
+ * that must operate at arbitrary rates, as opposed to clock configurations
+ * that are restricted by software or manufacturer guidance to a small,
+ * pre-determined set of performance points.
+ *
+ * References:
+ * - Analog Bits "Wide Range PLL Datasheet", version 2015.10.01
+ * - SiFive FU540-C000 Manual v1p0, Chapter 7 "Clocking and Reset"
+ *   https://static.dev.sifive.com/FU540-C000-v1.0.pdf
+ */
+
+#include <linux/kernel.h>
+#include <stdio.h>
+#include <printk.h>
+#include <linux/bug.h>
+#include <linux/err.h>
+#include <linux/log2.h>
+#include <linux/math64.h>
+#include <linux/clk/analogbits-wrpll-cln28hpc.h>
+
+/* MIN_INPUT_FREQ: minimum input clock frequency, in Hz (Fref_min) */
+#define MIN_INPUT_FREQ			7000000
+
+/* MAX_INPUT_FREQ: maximum input clock frequency, in Hz (Fref_max) */
+#define MAX_INPUT_FREQ			600000000
+
+/* MIN_POST_DIVIDE_REF_FREQ: minimum post-divider reference frequency, in Hz */
+#define MIN_POST_DIVR_FREQ		7000000
+
+/* MAX_POST_DIVIDE_REF_FREQ: maximum post-divider reference frequency, in Hz */
+#define MAX_POST_DIVR_FREQ		200000000
+
+/* MIN_VCO_FREQ: minimum VCO frequency, in Hz (Fvco_min) */
+#define MIN_VCO_FREQ			2400000000UL
+
+/* MAX_VCO_FREQ: maximum VCO frequency, in Hz (Fvco_max) */
+#define MAX_VCO_FREQ			4800000000ULL
+
+/* MAX_DIVQ_DIVISOR: maximum output divisor.  Selected by DIVQ = 6 */
+#define MAX_DIVQ_DIVISOR		64
+
+/* MAX_DIVR_DIVISOR: maximum reference divisor.  Selected by DIVR = 63 */
+#define MAX_DIVR_DIVISOR		64
+
+/* MAX_LOCK_US: maximum PLL lock time, in microseconds (tLOCK_max) */
+#define MAX_LOCK_US			70
+
+/*
+ * ROUND_SHIFT: number of bits to shift to avoid precision loss in the rounding
+ *              algorithm
+ */
+#define ROUND_SHIFT			20
+
+/*
+ * Private functions
+ */
+
+/**
+ * __wrpll_calc_filter_range() - determine PLL loop filter bandwidth
+ * @post_divr_freq: input clock rate after the R divider
+ *
+ * Select the value to be presented to the PLL RANGE input signals, based
+ * on the input clock frequency after the post-R-divider @post_divr_freq.
+ * This code follows the recommendations in the PLL datasheet for filter
+ * range selection.
+ *
+ * Return: The RANGE value to be presented to the PLL configuration inputs,
+ *         or a negative return code upon error.
+ */
+static int __wrpll_calc_filter_range(unsigned long post_divr_freq)
+{
+	if (post_divr_freq < MIN_POST_DIVR_FREQ ||
+	    post_divr_freq > MAX_POST_DIVR_FREQ) {
+		WARN(1, "%s: post-divider reference freq out of range: %lu",
+		     __func__, post_divr_freq);
+		return -ERANGE;
+	}
+
+	switch (post_divr_freq) {
+	case 0 ... 10999999:
+		return 1;
+	case 11000000 ... 17999999:
+		return 2;
+	case 18000000 ... 29999999:
+		return 3;
+	case 30000000 ... 49999999:
+		return 4;
+	case 50000000 ... 79999999:
+		return 5;
+	case 80000000 ... 129999999:
+		return 6;
+	}
+
+	return 7;
+}
+
+/**
+ * __wrpll_calc_fbdiv() - return feedback fixed divide value
+ * @c: ptr to a struct wrpll_cfg record to read from
+ *
+ * The internal feedback path includes a fixed by-two divider; the
+ * external feedback path does not.  Return the appropriate divider
+ * value (2 or 1) depending on whether internal or external feedback
+ * is enabled.  This code doesn't test for invalid configurations
+ * (e.g. both or neither of WRPLL_FLAGS_*_FEEDBACK are set); it relies
+ * on the caller to do so.
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by
+ *          @c from simultaneous modification.
+ *
+ * Return: 2 if internal feedback is enabled or 1 if external feedback
+ *         is enabled.
+ */
+static u8 __wrpll_calc_fbdiv(const struct wrpll_cfg *c)
+{
+	return (c->flags & WRPLL_FLAGS_INT_FEEDBACK_MASK) ? 2 : 1;
+}
+
+/**
+ * __wrpll_calc_divq() - determine DIVQ based on target PLL output clock rate
+ * @target_rate: target PLL output clock rate
+ * @vco_rate: pointer to a u64 to store the computed VCO rate into
+ *
+ * Determine a reasonable value for the PLL Q post-divider, based on the
+ * target output rate @target_rate for the PLL.  Along with returning the
+ * computed Q divider value as the return value, this function stores the
+ * desired target VCO rate into the variable pointed to by @vco_rate.
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by
+ *          @vco_rate from simultaneous access or modification.
+ *
+ * Return: a positive integer DIVQ value to be programmed into the hardware
+ *         upon success, or 0 upon error (since 0 is an invalid DIVQ value)
+ */
+static u8 __wrpll_calc_divq(u32 target_rate, u64 *vco_rate)
+{
+	u64 s;
+	u8 divq = 0;
+
+	if (!vco_rate) {
+		WARN_ON(1);
+		goto wcd_out;
+	}
+
+	s = div_u64(MAX_VCO_FREQ, target_rate);
+	if (s <= 1) {
+		divq = 1;
+		*vco_rate = MAX_VCO_FREQ;
+	} else if (s > MAX_DIVQ_DIVISOR) {
+		divq = ilog2(MAX_DIVQ_DIVISOR);
+		*vco_rate = MIN_VCO_FREQ;
+	} else {
+		divq = ilog2(s);
+		*vco_rate = (u64)target_rate << divq;
+	}
+
+wcd_out:
+	return divq;
+}
+
+/**
+ * __wrpll_update_parent_rate() - update PLL data when parent rate changes
+ * @c: ptr to a struct wrpll_cfg record to write PLL data to
+ * @parent_rate: PLL input refclk rate (pre-R-divider)
+ *
+ * Pre-compute some data used by the PLL configuration algorithm when
+ * the PLL's reference clock rate changes.  The intention is to avoid
+ * computation when the parent rate remains constant - expected to be
+ * the common case.
+ *
+ * Returns: 0 upon success or -ERANGE if the reference clock rate is
+ * out of range.
+ */
+static int __wrpll_update_parent_rate(struct wrpll_cfg *c,
+				      unsigned long parent_rate)
+{
+	u8 max_r_for_parent;
+
+	if (parent_rate > MAX_INPUT_FREQ || parent_rate < MIN_POST_DIVR_FREQ)
+		return -ERANGE;
+
+	c->parent_rate = parent_rate;
+	max_r_for_parent = div_u64(parent_rate, MIN_POST_DIVR_FREQ);
+	c->max_r = min_t(u8, MAX_DIVR_DIVISOR, max_r_for_parent);
+
+	c->init_r = DIV_ROUND_UP_ULL(parent_rate, MAX_POST_DIVR_FREQ);
+
+	return 0;
+}
+
+/**
+ * wrpll_configure() - compute PLL configuration for a target rate
+ * @c: ptr to a struct wrpll_cfg record to write into
+ * @target_rate: target PLL output clock rate (post-Q-divider)
+ * @parent_rate: PLL input refclk rate (pre-R-divider)
+ *
+ * Compute the appropriate PLL signal configuration values and store
+ * in PLL context @c.  PLL reprogramming is not glitchless, so the
+ * caller should switch any downstream logic to a different clock
+ * source or clock-gate it before presenting these values to the PLL
+ * configuration signals.
+ *
+ * The caller must pass this function a pre-initialized struct
+ * wrpll_cfg record: either initialized to zero (with the
+ * exception of the .name and .flags fields) or read from the PLL.
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by @c
+ *          from simultaneous access or modification.
+ *
+ * Return: 0 upon success; anything else upon failure.
+ */
+int wrpll_configure_for_rate(struct wrpll_cfg *c, u32 target_rate,
+			     unsigned long parent_rate)
+{
+	unsigned long ratio;
+	u64 target_vco_rate, delta, best_delta, f_pre_div, vco, vco_pre;
+	u32 best_f, f, post_divr_freq;
+	u8 fbdiv, divq, best_r, r;
+	int range;
+
+	if (c->flags == 0) {
+		WARN(1, "%s called with uninitialized PLL config", __func__);
+		return -EINVAL;
+	}
+
+	/* Initialize rounding data if it hasn't been initialized already */
+	if (parent_rate != c->parent_rate) {
+		if (__wrpll_update_parent_rate(c, parent_rate)) {
+			pr_err("%s: PLL input rate is out of range\n",
+			       __func__);
+			return -ERANGE;
+		}
+	}
+
+	c->flags &= ~WRPLL_FLAGS_RESET_MASK;
+
+	/* Put the PLL into bypass if the user requests the parent clock rate */
+	if (target_rate == parent_rate) {
+		c->flags |= WRPLL_FLAGS_BYPASS_MASK;
+		return 0;
+	}
+
+	c->flags &= ~WRPLL_FLAGS_BYPASS_MASK;
+
+	/* Calculate the Q shift and target VCO rate */
+	divq = __wrpll_calc_divq(target_rate, &target_vco_rate);
+	if (!divq)
+		return -1;
+	c->divq = divq;
+
+	/* Precalculate the pre-Q divider target ratio */
+	ratio = div64_u64((target_vco_rate << ROUND_SHIFT), parent_rate);
+
+	fbdiv = __wrpll_calc_fbdiv(c);
+	best_r = 0;
+	best_f = 0;
+	best_delta = MAX_VCO_FREQ;
+
+	/*
+	 * Consider all values for R which land within
+	 * [MIN_POST_DIVR_FREQ, MAX_POST_DIVR_FREQ]; prefer smaller R
+	 */
+	for (r = c->init_r; r <= c->max_r; ++r) {
+		f_pre_div = ratio * r;
+		f = (f_pre_div + (1 << ROUND_SHIFT)) >> ROUND_SHIFT;
+		f >>= (fbdiv - 1);
+
+		post_divr_freq = div_u64(parent_rate, r);
+		vco_pre = fbdiv * post_divr_freq;
+		vco = vco_pre * f;
+
+		/* Ensure rounding didn't take us out of range */
+		if (vco > target_vco_rate) {
+			--f;
+			vco = vco_pre * f;
+		} else if (vco < MIN_VCO_FREQ) {
+			++f;
+			vco = vco_pre * f;
+		}
+
+		delta = abs(target_rate - vco);
+		if (delta < best_delta) {
+			best_delta = delta;
+			best_r = r;
+			best_f = f;
+		}
+	}
+
+	c->divr = best_r - 1;
+	c->divf = best_f - 1;
+
+	post_divr_freq = div_u64(parent_rate, best_r);
+
+	/* Pick the best PLL jitter filter */
+	range = __wrpll_calc_filter_range(post_divr_freq);
+	if (range < 0)
+		return range;
+	c->range = range;
+
+	return 0;
+}
+
+/**
+ * wrpll_calc_output_rate() - calculate the PLL's target output rate
+ * @c: ptr to a struct wrpll_cfg record to read from
+ * @parent_rate: PLL refclk rate
+ *
+ * Given a pointer to the PLL's current input configuration @c and the
+ * PLL's input reference clock rate @parent_rate (before the R
+ * pre-divider), calculate the PLL's output clock rate (after the Q
+ * post-divider).
+ *
+ * Context: Any context.  Caller must protect the memory pointed to by @c
+ *          from simultaneous modification.
+ *
+ * Return: the PLL's output clock rate, in Hz.  The return value from
+ *         this function is intended to be convenient to pass directly
+ *         to the Linux clock framework; thus there is no explicit
+ *         error return value.
+ */
+unsigned long wrpll_calc_output_rate(const struct wrpll_cfg *c,
+				     unsigned long parent_rate)
+{
+	u8 fbdiv;
+	u64 n;
+
+	if (c->flags & WRPLL_FLAGS_EXT_FEEDBACK_MASK) {
+		WARN(1, "external feedback mode not yet supported");
+		return ULONG_MAX;
+	}
+
+	fbdiv = __wrpll_calc_fbdiv(c);
+	n = parent_rate * fbdiv * (c->divf + 1);
+	n = div_u64(n, c->divr + 1);
+	n >>= c->divq;
+
+	return n;
+}
+
+/**
+ * wrpll_calc_max_lock_us() - return the time for the PLL to lock
+ * @c: ptr to a struct wrpll_cfg record to read from
+ *
+ * Return the minimum amount of time (in microseconds) that the caller
+ * must wait after reprogramming the PLL to ensure that it is locked
+ * to the input frequency and stable.  This is likely to depend on the DIVR
+ * value; this is under discussion with the manufacturer.
+ *
+ * Return: the minimum amount of time the caller must wait for the PLL
+ *         to lock (in microseconds)
+ */
+unsigned int wrpll_calc_max_lock_us(const struct wrpll_cfg *c)
+{
+	return MAX_LOCK_US;
+}
diff --git a/drivers/clk/sifive/Kconfig b/drivers/clk/sifive/Kconfig
new file mode 100644
index 000000000000..6b3f4bc60056
--- /dev/null
+++ b/drivers/clk/sifive/Kconfig
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menuconfig CLK_SIFIVE
+	bool "SiFive SoC driver support"
+	depends on RISCV || COMPILE_TEST
+	help
+	  SoC drivers for SiFive Linux-capable SoCs.
+
+if CLK_SIFIVE
+
+config CLK_SIFIVE_PRCI
+	bool "PRCI driver for SiFive SoCs"
+	help
+	  Supports the Power Reset Clock interface (PRCI) IP block found in
+	  FU540/FU740 SoCs. If this kernel is meant to run on a SiFive FU540/
+	  FU740 SoCs, enable this driver.
+
+endif
diff --git a/drivers/clk/sifive/Makefile b/drivers/clk/sifive/Makefile
new file mode 100644
index 000000000000..7b06fc04e6b3
--- /dev/null
+++ b/drivers/clk/sifive/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_CLK_SIFIVE_PRCI)	+= sifive-prci.o fu540-prci.o fu740-prci.o
diff --git a/drivers/clk/sifive/fu540-prci.c b/drivers/clk/sifive/fu540-prci.c
new file mode 100644
index 000000000000..e6379dfd6ab6
--- /dev/null
+++ b/drivers/clk/sifive/fu540-prci.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ * Copyright (C) 2018-2019 Wesley Terpstra
+ * Copyright (C) 2018-2019 Paul Walmsley
+ * Copyright (C) 2020 Zong Li
+ *
+ * The FU540 PRCI implements clock and reset control for the SiFive
+ * FU540-C000 chip.  This driver assumes that it has sole control
+ * over all PRCI resources.
+ *
+ * This driver is based on the PRCI driver written by Wesley Terpstra:
+ * https://github.com/riscv/riscv-linux/commit/999529edf517ed75b56659d456d221b2ee56bb60
+ *
+ * References:
+ * - SiFive FU540-C000 manual v1p0, Chapter 7 "Clocking and Reset"
+ */
+
+#include <dt-bindings/clock/sifive-fu540-prci.h>
+
+#include "fu540-prci.h"
+#include "sifive-prci.h"
+
+/* PRCI integration data for each WRPLL instance */
+
+static struct __prci_wrpll_data __prci_corepll_data = {
+	.cfg0_offs = PRCI_COREPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_COREPLLCFG1_OFFSET,
+	.enable_bypass = sifive_prci_coreclksel_use_hfclk,
+	.disable_bypass = sifive_prci_coreclksel_use_corepll,
+};
+
+static struct __prci_wrpll_data __prci_ddrpll_data = {
+	.cfg0_offs = PRCI_DDRPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_DDRPLLCFG1_OFFSET,
+};
+
+static struct __prci_wrpll_data __prci_gemgxlpll_data = {
+	.cfg0_offs = PRCI_GEMGXLPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_GEMGXLPLLCFG1_OFFSET,
+};
+
+/* Linux clock framework integration */
+
+static const struct clk_ops sifive_fu540_prci_wrpll_clk_ops = {
+	.set_rate = sifive_prci_wrpll_set_rate,
+	.round_rate = sifive_prci_wrpll_round_rate,
+	.recalc_rate = sifive_prci_wrpll_recalc_rate,
+	.enable = sifive_prci_clock_enable,
+	.disable = sifive_prci_clock_disable,
+	.is_enabled = sifive_clk_is_enabled,
+};
+
+static const struct clk_ops sifive_fu540_prci_wrpll_ro_clk_ops = {
+	.recalc_rate = sifive_prci_wrpll_recalc_rate,
+};
+
+static const struct clk_ops sifive_fu540_prci_tlclksel_clk_ops = {
+	.recalc_rate = sifive_prci_tlclksel_recalc_rate,
+};
+
+/* List of clock controls provided by the PRCI */
+struct __prci_clock __prci_init_clocks_fu540[] = {
+	[PRCI_CLK_COREPLL] = {
+		.name = "corepll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu540_prci_wrpll_clk_ops,
+		.pwd = &__prci_corepll_data,
+	},
+	[PRCI_CLK_DDRPLL] = {
+		.name = "ddrpll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu540_prci_wrpll_ro_clk_ops,
+		.pwd = &__prci_ddrpll_data,
+	},
+	[PRCI_CLK_GEMGXLPLL] = {
+		.name = "gemgxlpll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu540_prci_wrpll_clk_ops,
+		.pwd = &__prci_gemgxlpll_data,
+	},
+	[PRCI_CLK_TLCLK] = {
+		.name = "tlclk",
+		.parent_name = "corepll",
+		.ops = &sifive_fu540_prci_tlclksel_clk_ops,
+	},
+};
diff --git a/drivers/clk/sifive/fu540-prci.h b/drivers/clk/sifive/fu540-prci.h
new file mode 100644
index 000000000000..c220677dc010
--- /dev/null
+++ b/drivers/clk/sifive/fu540-prci.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 SiFive, Inc.
+ * Zong Li
+ */
+
+#ifndef __SIFIVE_CLK_FU540_PRCI_H
+#define __SIFIVE_CLK_FU540_PRCI_H
+
+#include "sifive-prci.h"
+
+#define NUM_CLOCK_FU540	4
+
+extern struct __prci_clock __prci_init_clocks_fu540[NUM_CLOCK_FU540];
+
+#endif /* __SIFIVE_CLK_FU540_PRCI_H */
diff --git a/drivers/clk/sifive/fu740-prci.c b/drivers/clk/sifive/fu740-prci.c
new file mode 100644
index 000000000000..14df75f7f64b
--- /dev/null
+++ b/drivers/clk/sifive/fu740-prci.c
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 SiFive, Inc.
+ * Copyright (C) 2020 Zong Li
+ */
+
+#include <dt-bindings/clock/sifive-fu740-prci.h>
+
+#include "fu540-prci.h"
+#include "sifive-prci.h"
+
+/* PRCI integration data for each WRPLL instance */
+
+static struct __prci_wrpll_data __prci_corepll_data = {
+	.cfg0_offs = PRCI_COREPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_COREPLLCFG1_OFFSET,
+	.enable_bypass = sifive_prci_coreclksel_use_hfclk,
+	.disable_bypass = sifive_prci_coreclksel_use_final_corepll,
+};
+
+static struct __prci_wrpll_data __prci_ddrpll_data = {
+	.cfg0_offs = PRCI_DDRPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_DDRPLLCFG1_OFFSET,
+};
+
+static struct __prci_wrpll_data __prci_gemgxlpll_data = {
+	.cfg0_offs = PRCI_GEMGXLPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_GEMGXLPLLCFG1_OFFSET,
+};
+
+static struct __prci_wrpll_data __prci_dvfscorepll_data = {
+	.cfg0_offs = PRCI_DVFSCOREPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_DVFSCOREPLLCFG1_OFFSET,
+	.enable_bypass = sifive_prci_corepllsel_use_corepll,
+	.disable_bypass = sifive_prci_corepllsel_use_dvfscorepll,
+};
+
+static struct __prci_wrpll_data __prci_hfpclkpll_data = {
+	.cfg0_offs = PRCI_HFPCLKPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_HFPCLKPLLCFG1_OFFSET,
+	.enable_bypass = sifive_prci_hfpclkpllsel_use_hfclk,
+	.disable_bypass = sifive_prci_hfpclkpllsel_use_hfpclkpll,
+};
+
+static struct __prci_wrpll_data __prci_cltxpll_data = {
+	.cfg0_offs = PRCI_CLTXPLLCFG0_OFFSET,
+	.cfg1_offs = PRCI_CLTXPLLCFG1_OFFSET,
+};
+
+/* Linux clock framework integration */
+
+static const struct clk_ops sifive_fu740_prci_wrpll_clk_ops = {
+	.set_rate = sifive_prci_wrpll_set_rate,
+	.round_rate = sifive_prci_wrpll_round_rate,
+	.recalc_rate = sifive_prci_wrpll_recalc_rate,
+	.enable = sifive_prci_clock_enable,
+	.disable = sifive_prci_clock_disable,
+	.is_enabled = sifive_clk_is_enabled,
+};
+
+static const struct clk_ops sifive_fu740_prci_wrpll_ro_clk_ops = {
+	.recalc_rate = sifive_prci_wrpll_recalc_rate,
+};
+
+static const struct clk_ops sifive_fu740_prci_tlclksel_clk_ops = {
+	.recalc_rate = sifive_prci_tlclksel_recalc_rate,
+};
+
+static const struct clk_ops sifive_fu740_prci_hfpclkplldiv_clk_ops = {
+	.recalc_rate = sifive_prci_hfpclkplldiv_recalc_rate,
+};
+
+/* List of clock controls provided by the PRCI */
+struct __prci_clock __prci_init_clocks_fu740[] = {
+	[PRCI_CLK_COREPLL] = {
+		.name = "corepll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu740_prci_wrpll_clk_ops,
+		.pwd = &__prci_corepll_data,
+	},
+	[PRCI_CLK_DDRPLL] = {
+		.name = "ddrpll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu740_prci_wrpll_ro_clk_ops,
+		.pwd = &__prci_ddrpll_data,
+	},
+	[PRCI_CLK_GEMGXLPLL] = {
+		.name = "gemgxlpll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu740_prci_wrpll_clk_ops,
+		.pwd = &__prci_gemgxlpll_data,
+	},
+	[PRCI_CLK_DVFSCOREPLL] = {
+		.name = "dvfscorepll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu740_prci_wrpll_clk_ops,
+		.pwd = &__prci_dvfscorepll_data,
+	},
+	[PRCI_CLK_HFPCLKPLL] = {
+		.name = "hfpclkpll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu740_prci_wrpll_clk_ops,
+		.pwd = &__prci_hfpclkpll_data,
+	},
+	[PRCI_CLK_CLTXPLL] = {
+		.name = "cltxpll",
+		.parent_name = "hfclk",
+		.ops = &sifive_fu740_prci_wrpll_clk_ops,
+		.pwd = &__prci_cltxpll_data,
+	},
+	[PRCI_CLK_TLCLK] = {
+		.name = "tlclk",
+		.parent_name = "corepll",
+		.ops = &sifive_fu740_prci_tlclksel_clk_ops,
+	},
+	[PRCI_CLK_PCLK] = {
+		.name = "pclk",
+		.parent_name = "hfpclkpll",
+		.ops = &sifive_fu740_prci_hfpclkplldiv_clk_ops,
+	},
+};
diff --git a/drivers/clk/sifive/fu740-prci.h b/drivers/clk/sifive/fu740-prci.h
new file mode 100644
index 000000000000..13ef971f7764
--- /dev/null
+++ b/drivers/clk/sifive/fu740-prci.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 SiFive, Inc.
+ * Zong Li
+ */
+
+#ifndef __SIFIVE_CLK_FU740_PRCI_H
+#define __SIFIVE_CLK_FU740_PRCI_H
+
+#include "sifive-prci.h"
+
+#define NUM_CLOCK_FU740	8
+
+extern struct __prci_clock __prci_init_clocks_fu740[NUM_CLOCK_FU740];
+
+static const struct prci_clk_desc prci_clk_fu740 = {
+	.clks = __prci_init_clocks_fu740,
+	.num_clks = ARRAY_SIZE(__prci_init_clocks_fu740),
+};
+
+#endif /* __SIFIVE_CLK_FU740_PRCI_H */
diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
new file mode 100644
index 000000000000..b452bbf8cc18
--- /dev/null
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -0,0 +1,581 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 SiFive, Inc.
+ * Copyright (C) 2020 Zong Li
+ */
+
+#include <common.h>
+#include <linux/list.h>
+#include <linux/clkdev.h>
+#include <linux/overflow.h>
+#include <printk.h>
+#include <clock.h>
+#include <io.h>
+#include <of.h>
+#include <driver.h>
+#include <init.h>
+#include "sifive-prci.h"
+#include "fu540-prci.h"
+#include "fu740-prci.h"
+
+static const struct prci_clk_desc prci_clk_fu540 = {
+	.clks = __prci_init_clocks_fu540,
+	.num_clks = ARRAY_SIZE(__prci_init_clocks_fu540),
+};
+
+/*
+ * Private functions
+ */
+
+/**
+ * __prci_readl() - read from a PRCI register
+ * @pd: PRCI context
+ * @offs: register offset to read from (in bytes, from PRCI base address)
+ *
+ * Read the register located at offset @offs from the base virtual
+ * address of the PRCI register target described by @pd, and return
+ * the value to the caller.
+ *
+ * Context: Any context.
+ *
+ * Return: the contents of the register described by @pd and @offs.
+ */
+static u32 __prci_readl(struct __prci_data *pd, u32 offs)
+{
+	return readl(pd->va + offs);
+}
+
+static void __prci_writel(u32 v, u32 offs, struct __prci_data *pd)
+{
+	writel(v, pd->va + offs);
+}
+
+/* WRPLL-related private functions */
+
+/**
+ * __prci_wrpll_unpack() - unpack WRPLL configuration registers into parameters
+ * @c: ptr to a struct wrpll_cfg record to write config into
+ * @r: value read from the PRCI PLL configuration register
+ *
+ * Given a value @r read from an FU740 PRCI PLL configuration register,
+ * split it into fields and populate it into the WRPLL configuration record
+ * pointed to by @c.
+ *
+ * The COREPLLCFG0 macros are used below, but the other *PLLCFG0 macros
+ * have the same register layout.
+ *
+ * Context: Any context.
+ */
+static void __prci_wrpll_unpack(struct wrpll_cfg *c, u32 r)
+{
+	u32 v;
+
+	v = r & PRCI_COREPLLCFG0_DIVR_MASK;
+	v >>= PRCI_COREPLLCFG0_DIVR_SHIFT;
+	c->divr = v;
+
+	v = r & PRCI_COREPLLCFG0_DIVF_MASK;
+	v >>= PRCI_COREPLLCFG0_DIVF_SHIFT;
+	c->divf = v;
+
+	v = r & PRCI_COREPLLCFG0_DIVQ_MASK;
+	v >>= PRCI_COREPLLCFG0_DIVQ_SHIFT;
+	c->divq = v;
+
+	v = r & PRCI_COREPLLCFG0_RANGE_MASK;
+	v >>= PRCI_COREPLLCFG0_RANGE_SHIFT;
+	c->range = v;
+
+	c->flags &=
+	    (WRPLL_FLAGS_INT_FEEDBACK_MASK | WRPLL_FLAGS_EXT_FEEDBACK_MASK);
+
+	/* external feedback mode not supported */
+	c->flags |= WRPLL_FLAGS_INT_FEEDBACK_MASK;
+}
+
+/**
+ * __prci_wrpll_pack() - pack PLL configuration parameters into a register value
+ * @c: pointer to a struct wrpll_cfg record containing the PLL's cfg
+ *
+ * Using a set of WRPLL configuration values pointed to by @c,
+ * assemble a PRCI PLL configuration register value, and return it to
+ * the caller.
+ *
+ * Context: Any context.  Caller must ensure that the contents of the
+ *          record pointed to by @c do not change during the execution
+ *          of this function.
+ *
+ * Returns: a value suitable for writing into a PRCI PLL configuration
+ *          register
+ */
+static u32 __prci_wrpll_pack(const struct wrpll_cfg *c)
+{
+	u32 r = 0;
+
+	r |= c->divr << PRCI_COREPLLCFG0_DIVR_SHIFT;
+	r |= c->divf << PRCI_COREPLLCFG0_DIVF_SHIFT;
+	r |= c->divq << PRCI_COREPLLCFG0_DIVQ_SHIFT;
+	r |= c->range << PRCI_COREPLLCFG0_RANGE_SHIFT;
+
+	/* external feedback mode not supported */
+	r |= PRCI_COREPLLCFG0_FSE_MASK;
+
+	return r;
+}
+
+/**
+ * __prci_wrpll_read_cfg0() - read the WRPLL configuration from the PRCI
+ * @pd: PRCI context
+ * @pwd: PRCI WRPLL metadata
+ *
+ * Read the current configuration of the PLL identified by @pwd from
+ * the PRCI identified by @pd, and store it into the local configuration
+ * cache in @pwd.
+ *
+ * Context: Any context.  Caller must prevent the records pointed to by
+ *          @pd and @pwd from changing during execution.
+ */
+static void __prci_wrpll_read_cfg0(struct __prci_data *pd,
+				   struct __prci_wrpll_data *pwd)
+{
+	__prci_wrpll_unpack(&pwd->c, __prci_readl(pd, pwd->cfg0_offs));
+}
+
+/**
+ * __prci_wrpll_write_cfg0() - write WRPLL configuration into the PRCI
+ * @pd: PRCI context
+ * @pwd: PRCI WRPLL metadata
+ * @c: WRPLL configuration record to write
+ *
+ * Write the WRPLL configuration described by @c into the WRPLL
+ * configuration register identified by @pwd in the PRCI instance
+ * described by @c.  Make a cached copy of the WRPLL's current
+ * configuration so it can be used by other code.
+ *
+ * Context: Any context.  Caller must prevent the records pointed to by
+ *          @pd and @pwd from changing during execution.
+ */
+static void __prci_wrpll_write_cfg0(struct __prci_data *pd,
+				    struct __prci_wrpll_data *pwd,
+				    struct wrpll_cfg *c)
+{
+	__prci_writel(__prci_wrpll_pack(c), pwd->cfg0_offs, pd);
+
+	memcpy(&pwd->c, c, sizeof(*c));
+}
+
+/**
+ * __prci_wrpll_write_cfg1() - write Clock enable/disable configuration
+ * into the PRCI
+ * @pd: PRCI context
+ * @pwd: PRCI WRPLL metadata
+ * @enable: Clock enable or disable value
+ */
+static void __prci_wrpll_write_cfg1(struct __prci_data *pd,
+				    struct __prci_wrpll_data *pwd,
+				    u32 enable)
+{
+	__prci_writel(enable, pwd->cfg1_offs, pd);
+}
+
+/*
+ * Linux clock framework integration
+ *
+ * See the Linux clock framework documentation for more information on
+ * these functions.
+ */
+
+unsigned long sifive_prci_wrpll_recalc_rate(struct clk *hw,
+					    unsigned long parent_rate)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_wrpll_data *pwd = pc->pwd;
+
+	return wrpll_calc_output_rate(&pwd->c, parent_rate);
+}
+
+long sifive_prci_wrpll_round_rate(struct clk *hw,
+				  unsigned long rate,
+				  unsigned long *parent_rate)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_wrpll_data *pwd = pc->pwd;
+	struct wrpll_cfg c;
+
+	memcpy(&c, &pwd->c, sizeof(c));
+
+	wrpll_configure_for_rate(&c, rate, *parent_rate);
+
+	return wrpll_calc_output_rate(&c, *parent_rate);
+}
+
+int sifive_prci_wrpll_set_rate(struct clk *hw,
+			       unsigned long rate, unsigned long parent_rate)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_wrpll_data *pwd = pc->pwd;
+	struct __prci_data *pd = pc->pd;
+	int r;
+
+	r = wrpll_configure_for_rate(&pwd->c, rate, parent_rate);
+	if (r)
+		return r;
+
+	if (pwd->enable_bypass)
+		pwd->enable_bypass(pd);
+
+	__prci_wrpll_write_cfg0(pd, pwd, &pwd->c);
+
+	udelay(wrpll_calc_max_lock_us(&pwd->c));
+
+	return 0;
+}
+
+int sifive_clk_is_enabled(struct clk *hw)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_wrpll_data *pwd = pc->pwd;
+	struct __prci_data *pd = pc->pd;
+	u32 r;
+
+	r = __prci_readl(pd, pwd->cfg1_offs);
+
+	if (r & PRCI_COREPLLCFG1_CKE_MASK)
+		return 1;
+	else
+		return 0;
+}
+
+int sifive_prci_clock_enable(struct clk *hw)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_wrpll_data *pwd = pc->pwd;
+	struct __prci_data *pd = pc->pd;
+
+	if (sifive_clk_is_enabled(hw))
+		return 0;
+
+	__prci_wrpll_write_cfg1(pd, pwd, PRCI_COREPLLCFG1_CKE_MASK);
+
+	if (pwd->disable_bypass)
+		pwd->disable_bypass(pd);
+
+	return 0;
+}
+
+void sifive_prci_clock_disable(struct clk *hw)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_wrpll_data *pwd = pc->pwd;
+	struct __prci_data *pd = pc->pd;
+	u32 r;
+
+	if (pwd->enable_bypass)
+		pwd->enable_bypass(pd);
+
+	r = __prci_readl(pd, pwd->cfg1_offs);
+	r &= ~PRCI_COREPLLCFG1_CKE_MASK;
+
+	__prci_wrpll_write_cfg1(pd, pwd, r);
+}
+
+/* TLCLKSEL clock integration */
+
+unsigned long sifive_prci_tlclksel_recalc_rate(struct clk *hw,
+					       unsigned long parent_rate)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_data *pd = pc->pd;
+	u32 v;
+	u8 div;
+
+	v = __prci_readl(pd, PRCI_CLKMUXSTATUSREG_OFFSET);
+	v &= PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK;
+	div = v ? 1 : 2;
+
+	return div_u64(parent_rate, div);
+}
+
+/* HFPCLK clock integration */
+
+unsigned long sifive_prci_hfpclkplldiv_recalc_rate(struct clk *hw,
+						   unsigned long parent_rate)
+{
+	struct __prci_clock *pc = clk_hw_to_prci_clock(hw);
+	struct __prci_data *pd = pc->pd;
+	u32 div = __prci_readl(pd, PRCI_HFPCLKPLLDIV_OFFSET);
+
+	return div_u64(parent_rate, div + 2);
+}
+
+/*
+ * Core clock mux control
+ */
+
+/**
+ * sifive_prci_coreclksel_use_hfclk() - switch the CORECLK mux to output HFCLK
+ * @pd: struct __prci_data * for the PRCI containing the CORECLK mux reg
+ *
+ * Switch the CORECLK mux to the HFCLK input source; return once complete.
+ *
+ * Context: Any context.  Caller must prevent concurrent changes to the
+ *          PRCI_CORECLKSEL_OFFSET register.
+ */
+void sifive_prci_coreclksel_use_hfclk(struct __prci_data *pd)
+{
+	u32 r;
+
+	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
+	r |= PRCI_CORECLKSEL_CORECLKSEL_MASK;
+	__prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);
+
+	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);	/* barrier */
+}
+
+/**
+ * sifive_prci_coreclksel_use_corepll() - switch the CORECLK mux to output
+ * COREPLL
+ * @pd: struct __prci_data * for the PRCI containing the CORECLK mux reg
+ *
+ * Switch the CORECLK mux to the COREPLL output clock; return once complete.
+ *
+ * Context: Any context.  Caller must prevent concurrent changes to the
+ *          PRCI_CORECLKSEL_OFFSET register.
+ */
+void sifive_prci_coreclksel_use_corepll(struct __prci_data *pd)
+{
+	u32 r;
+
+	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
+	r &= ~PRCI_CORECLKSEL_CORECLKSEL_MASK;
+	__prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);
+
+	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);	/* barrier */
+}
+
+/**
+ * sifive_prci_coreclksel_use_final_corepll() - switch the CORECLK mux to output
+ * FINAL_COREPLL
+ * @pd: struct __prci_data * for the PRCI containing the CORECLK mux reg
+ *
+ * Switch the CORECLK mux to the final COREPLL output clock; return once
+ * complete.
+ *
+ * Context: Any context.  Caller must prevent concurrent changes to the
+ *          PRCI_CORECLKSEL_OFFSET register.
+ */
+void sifive_prci_coreclksel_use_final_corepll(struct __prci_data *pd)
+{
+	u32 r;
+
+	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);
+	r &= ~PRCI_CORECLKSEL_CORECLKSEL_MASK;
+	__prci_writel(r, PRCI_CORECLKSEL_OFFSET, pd);
+
+	r = __prci_readl(pd, PRCI_CORECLKSEL_OFFSET);	/* barrier */
+}
+
+/**
+ * sifive_prci_corepllsel_use_dvfscorepll() - switch the COREPLL mux to
+ * output DVFS_COREPLL
+ * @pd: struct __prci_data * for the PRCI containing the COREPLL mux reg
+ *
+ * Switch the COREPLL mux to the DVFSCOREPLL output clock; return once complete.
+ *
+ * Context: Any context.  Caller must prevent concurrent changes to the
+ *          PRCI_COREPLLSEL_OFFSET register.
+ */
+void sifive_prci_corepllsel_use_dvfscorepll(struct __prci_data *pd)
+{
+	u32 r;
+
+	r = __prci_readl(pd, PRCI_COREPLLSEL_OFFSET);
+	r |= PRCI_COREPLLSEL_COREPLLSEL_MASK;
+	__prci_writel(r, PRCI_COREPLLSEL_OFFSET, pd);
+
+	r = __prci_readl(pd, PRCI_COREPLLSEL_OFFSET);	/* barrier */
+}
+
+/**
+ * sifive_prci_corepllsel_use_corepll() - switch the COREPLL mux to
+ * output COREPLL
+ * @pd: struct __prci_data * for the PRCI containing the COREPLL mux reg
+ *
+ * Switch the COREPLL mux to the COREPLL output clock; return once complete.
+ *
+ * Context: Any context.  Caller must prevent concurrent changes to the
+ *          PRCI_COREPLLSEL_OFFSET register.
+ */
+void sifive_prci_corepllsel_use_corepll(struct __prci_data *pd)
+{
+	u32 r;
+
+	r = __prci_readl(pd, PRCI_COREPLLSEL_OFFSET);
+	r &= ~PRCI_COREPLLSEL_COREPLLSEL_MASK;
+	__prci_writel(r, PRCI_COREPLLSEL_OFFSET, pd);
+
+	r = __prci_readl(pd, PRCI_COREPLLSEL_OFFSET);	/* barrier */
+}
+
+/**
+ * sifive_prci_hfpclkpllsel_use_hfclk() - switch the HFPCLKPLL mux to
+ * output HFCLK
+ * @pd: struct __prci_data * for the PRCI containing the HFPCLKPLL mux reg
+ *
+ * Switch the HFPCLKPLL mux to the HFCLK input source; return once complete.
+ *
+ * Context: Any context.  Caller must prevent concurrent changes to the
+ *          PRCI_HFPCLKPLLSEL_OFFSET register.
+ */
+void sifive_prci_hfpclkpllsel_use_hfclk(struct __prci_data *pd)
+{
+	u32 r;
+
+	r = __prci_readl(pd, PRCI_HFPCLKPLLSEL_OFFSET);
+	r |= PRCI_HFPCLKPLLSEL_HFPCLKPLLSEL_MASK;
+	__prci_writel(r, PRCI_HFPCLKPLLSEL_OFFSET, pd);
+
+	r = __prci_readl(pd, PRCI_HFPCLKPLLSEL_OFFSET);	/* barrier */
+}
+
+/**
+ * sifive_prci_hfpclkpllsel_use_hfpclkpll() - switch the HFPCLKPLL mux to
+ * output HFPCLKPLL
+ * @pd: struct __prci_data * for the PRCI containing the HFPCLKPLL mux reg
+ *
+ * Switch the HFPCLKPLL mux to the HFPCLKPLL output clock; return once complete.
+ *
+ * Context: Any context.  Caller must prevent concurrent changes to the
+ *          PRCI_HFPCLKPLLSEL_OFFSET register.
+ */
+void sifive_prci_hfpclkpllsel_use_hfpclkpll(struct __prci_data *pd)
+{
+	u32 r;
+
+	r = __prci_readl(pd, PRCI_HFPCLKPLLSEL_OFFSET);
+	r &= ~PRCI_HFPCLKPLLSEL_HFPCLKPLLSEL_MASK;
+	__prci_writel(r, PRCI_HFPCLKPLLSEL_OFFSET, pd);
+
+	r = __prci_readl(pd, PRCI_HFPCLKPLLSEL_OFFSET);	/* barrier */
+}
+
+/**
+ * __prci_register_clocks() - register clock controls in the PRCI
+ * @dev: Linux struct device
+ * @pd: The pointer for PRCI per-device instance data
+ * @desc: The pointer for the information of clocks of each SoCs
+ *
+ * Register the list of clock controls described in __prci_init_clocks[] with
+ * the Linux clock framework.
+ *
+ * Return: 0 upon success or a negative error code upon failure.
+ */
+static int __prci_register_clocks(struct device_d *dev, struct __prci_data *pd,
+				  const struct prci_clk_desc *desc)
+{
+	struct __prci_clock *pic;
+	int parent_count, i, r;
+
+	parent_count = of_clk_get_parent_count(dev->device_node);
+	if (parent_count != EXPECTED_CLK_PARENT_COUNT) {
+		dev_err(dev, "expected only two parent clocks, found %d\n",
+			parent_count);
+		return -EINVAL;
+	}
+
+	/* Register PLLs */
+	for (i = 0; i < desc->num_clks; ++i) {
+		pic = &(desc->clks[i]);
+
+		pic->hw.name = pic->name;
+		pic->hw.parent_names = &pic->parent_name;
+		pic->hw.num_parents = 1;
+		pic->hw.ops = pic->ops;
+
+		pic->pd = pd;
+
+		if (pic->pwd)
+			__prci_wrpll_read_cfg0(pd, pic->pwd);
+
+		r = clk_register(&pic->hw);
+		if (r) {
+			dev_warn(dev, "Failed to register clock %s: %d\n",
+				 pic->hw.name, r);
+			return r;
+		}
+
+		r = clk_register_clkdev(&pic->hw, pic->name, dev_name(dev));
+		if (r) {
+			dev_warn(dev, "Failed to register clkdev for %s: %d\n",
+				 pic->hw.name, r);
+			return r;
+		}
+
+		pd->hw_clks.clks[i] = &pic->hw;
+	}
+
+	pd->hw_clks.clk_num = i;
+
+	r = of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+				&pd->hw_clks);
+	if (r) {
+		dev_err(dev, "could not add hw_provider: %d\n", r);
+		return r;
+	}
+
+	return 0;
+}
+
+/**
+ * sifive_prci_init() - initialize prci data and check parent count
+ * @dev: platform device pointer for the prci
+ *
+ * Return: 0 upon success or a negative error code upon failure.
+ */
+static int sifive_prci_probe(struct device_d *dev)
+{
+	struct resource *res;
+	struct __prci_data *pd;
+	const struct prci_clk_desc *desc;
+	int r;
+
+	desc = device_get_match_data(dev);
+
+	pd = malloc(sizeof(*pd));
+	if (!pd)
+		return -ENOMEM;
+
+	pd->hw_clks.clk_num = desc->num_clks;
+	pd->hw_clks.clks = calloc(pd->hw_clks.clk_num, sizeof(*pd->hw_clks.clks));
+	if (!pd->hw_clks.clks)
+		return -ENOMEM;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	pd->va = IOMEM(res->start);
+
+	r = __prci_register_clocks(dev, pd, desc);
+	if (r) {
+		dev_err(dev, "could not register clocks: %d\n", r);
+		return r;
+	}
+
+	dev_dbg(dev, "SiFive PRCI probed\n");
+
+	return 0;
+}
+
+static const struct of_device_id sifive_prci_of_match[] = {
+	{.compatible = "sifive,fu540-c000-prci", .data = &prci_clk_fu540},
+	{.compatible = "sifive,fu740-c000-prci", .data = &prci_clk_fu740},
+	{}
+};
+
+static struct driver_d sifive_prci_driver = {
+	.name = "sifive-clk-prci",
+	.of_compatible = sifive_prci_of_match,
+	.probe = sifive_prci_probe,
+};
+core_platform_driver(sifive_prci_driver);
diff --git a/drivers/clk/sifive/sifive-prci.h b/drivers/clk/sifive/sifive-prci.h
new file mode 100644
index 000000000000..d8515538185c
--- /dev/null
+++ b/drivers/clk/sifive/sifive-prci.h
@@ -0,0 +1,298 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ * Wesley Terpstra
+ * Paul Walmsley
+ * Zong Li
+ */
+
+#ifndef __SIFIVE_CLK_SIFIVE_PRCI_H
+#define __SIFIVE_CLK_SIFIVE_PRCI_H
+
+#include <linux/clk/analogbits-wrpll-cln28hpc.h>
+#include <linux/clk.h>
+
+/*
+ * EXPECTED_CLK_PARENT_COUNT: how many parent clocks this driver expects:
+ *     hfclk and rtcclk
+ */
+#define EXPECTED_CLK_PARENT_COUNT 2
+
+/*
+ * Register offsets and bitmasks
+ */
+
+/* COREPLLCFG0 */
+#define PRCI_COREPLLCFG0_OFFSET		0x4
+#define PRCI_COREPLLCFG0_DIVR_SHIFT	0
+#define PRCI_COREPLLCFG0_DIVR_MASK	(0x3f << PRCI_COREPLLCFG0_DIVR_SHIFT)
+#define PRCI_COREPLLCFG0_DIVF_SHIFT	6
+#define PRCI_COREPLLCFG0_DIVF_MASK	(0x1ff << PRCI_COREPLLCFG0_DIVF_SHIFT)
+#define PRCI_COREPLLCFG0_DIVQ_SHIFT	15
+#define PRCI_COREPLLCFG0_DIVQ_MASK	(0x7 << PRCI_COREPLLCFG0_DIVQ_SHIFT)
+#define PRCI_COREPLLCFG0_RANGE_SHIFT	18
+#define PRCI_COREPLLCFG0_RANGE_MASK	(0x7 << PRCI_COREPLLCFG0_RANGE_SHIFT)
+#define PRCI_COREPLLCFG0_BYPASS_SHIFT	24
+#define PRCI_COREPLLCFG0_BYPASS_MASK	(0x1 << PRCI_COREPLLCFG0_BYPASS_SHIFT)
+#define PRCI_COREPLLCFG0_FSE_SHIFT	25
+#define PRCI_COREPLLCFG0_FSE_MASK	(0x1 << PRCI_COREPLLCFG0_FSE_SHIFT)
+#define PRCI_COREPLLCFG0_LOCK_SHIFT	31
+#define PRCI_COREPLLCFG0_LOCK_MASK	(0x1 << PRCI_COREPLLCFG0_LOCK_SHIFT)
+
+/* COREPLLCFG1 */
+#define PRCI_COREPLLCFG1_OFFSET		0x8
+#define PRCI_COREPLLCFG1_CKE_SHIFT	31
+#define PRCI_COREPLLCFG1_CKE_MASK	(0x1 << PRCI_COREPLLCFG1_CKE_SHIFT)
+
+/* DDRPLLCFG0 */
+#define PRCI_DDRPLLCFG0_OFFSET		0xc
+#define PRCI_DDRPLLCFG0_DIVR_SHIFT	0
+#define PRCI_DDRPLLCFG0_DIVR_MASK	(0x3f << PRCI_DDRPLLCFG0_DIVR_SHIFT)
+#define PRCI_DDRPLLCFG0_DIVF_SHIFT	6
+#define PRCI_DDRPLLCFG0_DIVF_MASK	(0x1ff << PRCI_DDRPLLCFG0_DIVF_SHIFT)
+#define PRCI_DDRPLLCFG0_DIVQ_SHIFT	15
+#define PRCI_DDRPLLCFG0_DIVQ_MASK	(0x7 << PRCI_DDRPLLCFG0_DIVQ_SHIFT)
+#define PRCI_DDRPLLCFG0_RANGE_SHIFT	18
+#define PRCI_DDRPLLCFG0_RANGE_MASK	(0x7 << PRCI_DDRPLLCFG0_RANGE_SHIFT)
+#define PRCI_DDRPLLCFG0_BYPASS_SHIFT	24
+#define PRCI_DDRPLLCFG0_BYPASS_MASK	(0x1 << PRCI_DDRPLLCFG0_BYPASS_SHIFT)
+#define PRCI_DDRPLLCFG0_FSE_SHIFT	25
+#define PRCI_DDRPLLCFG0_FSE_MASK	(0x1 << PRCI_DDRPLLCFG0_FSE_SHIFT)
+#define PRCI_DDRPLLCFG0_LOCK_SHIFT	31
+#define PRCI_DDRPLLCFG0_LOCK_MASK	(0x1 << PRCI_DDRPLLCFG0_LOCK_SHIFT)
+
+/* DDRPLLCFG1 */
+#define PRCI_DDRPLLCFG1_OFFSET		0x10
+#define PRCI_DDRPLLCFG1_CKE_SHIFT	31
+#define PRCI_DDRPLLCFG1_CKE_MASK	(0x1 << PRCI_DDRPLLCFG1_CKE_SHIFT)
+
+/* GEMGXLPLLCFG0 */
+#define PRCI_GEMGXLPLLCFG0_OFFSET	0x1c
+#define PRCI_GEMGXLPLLCFG0_DIVR_SHIFT	0
+#define PRCI_GEMGXLPLLCFG0_DIVR_MASK	(0x3f << PRCI_GEMGXLPLLCFG0_DIVR_SHIFT)
+#define PRCI_GEMGXLPLLCFG0_DIVF_SHIFT	6
+#define PRCI_GEMGXLPLLCFG0_DIVF_MASK	(0x1ff << PRCI_GEMGXLPLLCFG0_DIVF_SHIFT)
+#define PRCI_GEMGXLPLLCFG0_DIVQ_SHIFT	15
+#define PRCI_GEMGXLPLLCFG0_DIVQ_MASK	(0x7 << PRCI_GEMGXLPLLCFG0_DIVQ_SHIFT)
+#define PRCI_GEMGXLPLLCFG0_RANGE_SHIFT	18
+#define PRCI_GEMGXLPLLCFG0_RANGE_MASK	(0x7 << PRCI_GEMGXLPLLCFG0_RANGE_SHIFT)
+#define PRCI_GEMGXLPLLCFG0_BYPASS_SHIFT	24
+#define PRCI_GEMGXLPLLCFG0_BYPASS_MASK	(0x1 << PRCI_GEMGXLPLLCFG0_BYPASS_SHIFT)
+#define PRCI_GEMGXLPLLCFG0_FSE_SHIFT	25
+#define PRCI_GEMGXLPLLCFG0_FSE_MASK	(0x1 << PRCI_GEMGXLPLLCFG0_FSE_SHIFT)
+#define PRCI_GEMGXLPLLCFG0_LOCK_SHIFT	31
+#define PRCI_GEMGXLPLLCFG0_LOCK_MASK	(0x1 << PRCI_GEMGXLPLLCFG0_LOCK_SHIFT)
+
+/* GEMGXLPLLCFG1 */
+#define PRCI_GEMGXLPLLCFG1_OFFSET	0x20
+#define PRCI_GEMGXLPLLCFG1_CKE_SHIFT	31
+#define PRCI_GEMGXLPLLCFG1_CKE_MASK	(0x1 << PRCI_GEMGXLPLLCFG1_CKE_SHIFT)
+
+/* CORECLKSEL */
+#define PRCI_CORECLKSEL_OFFSET			0x24
+#define PRCI_CORECLKSEL_CORECLKSEL_SHIFT	0
+#define PRCI_CORECLKSEL_CORECLKSEL_MASK					\
+		(0x1 << PRCI_CORECLKSEL_CORECLKSEL_SHIFT)
+
+/* DEVICESRESETREG */
+#define PRCI_DEVICESRESETREG_OFFSET				0x28
+#define PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_SHIFT		0
+#define PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_MASK			\
+		(0x1 << PRCI_DEVICESRESETREG_DDR_CTRL_RST_N_SHIFT)
+#define PRCI_DEVICESRESETREG_DDR_AXI_RST_N_SHIFT		1
+#define PRCI_DEVICESRESETREG_DDR_AXI_RST_N_MASK				\
+		(0x1 << PRCI_DEVICESRESETREG_DDR_AXI_RST_N_SHIFT)
+#define PRCI_DEVICESRESETREG_DDR_AHB_RST_N_SHIFT		2
+#define PRCI_DEVICESRESETREG_DDR_AHB_RST_N_MASK				\
+		(0x1 << PRCI_DEVICESRESETREG_DDR_AHB_RST_N_SHIFT)
+#define PRCI_DEVICESRESETREG_DDR_PHY_RST_N_SHIFT		3
+#define PRCI_DEVICESRESETREG_DDR_PHY_RST_N_MASK				\
+		(0x1 << PRCI_DEVICESRESETREG_DDR_PHY_RST_N_SHIFT)
+#define PRCI_DEVICESRESETREG_GEMGXL_RST_N_SHIFT			5
+#define PRCI_DEVICESRESETREG_GEMGXL_RST_N_MASK				\
+		(0x1 << PRCI_DEVICESRESETREG_GEMGXL_RST_N_SHIFT)
+#define PRCI_DEVICESRESETREG_CHIPLINK_RST_N_SHIFT		6
+#define PRCI_DEVICESRESETREG_CHIPLINK_RST_N_MASK			\
+		(0x1 << PRCI_DEVICESRESETREG_CHIPLINK_RST_N_SHIFT)
+
+/* CLKMUXSTATUSREG */
+#define PRCI_CLKMUXSTATUSREG_OFFSET				0x2c
+#define PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_SHIFT		1
+#define PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK			\
+		(0x1 << PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_SHIFT)
+
+/* CLTXPLLCFG0 */
+#define PRCI_CLTXPLLCFG0_OFFSET		0x30
+#define PRCI_CLTXPLLCFG0_DIVR_SHIFT	0
+#define PRCI_CLTXPLLCFG0_DIVR_MASK	(0x3f << PRCI_CLTXPLLCFG0_DIVR_SHIFT)
+#define PRCI_CLTXPLLCFG0_DIVF_SHIFT	6
+#define PRCI_CLTXPLLCFG0_DIVF_MASK	(0x1ff << PRCI_CLTXPLLCFG0_DIVF_SHIFT)
+#define PRCI_CLTXPLLCFG0_DIVQ_SHIFT	15
+#define PRCI_CLTXPLLCFG0_DIVQ_MASK	(0x7 << PRCI_CLTXPLLCFG0_DIVQ_SHIFT)
+#define PRCI_CLTXPLLCFG0_RANGE_SHIFT	18
+#define PRCI_CLTXPLLCFG0_RANGE_MASK	(0x7 << PRCI_CLTXPLLCFG0_RANGE_SHIFT)
+#define PRCI_CLTXPLLCFG0_BYPASS_SHIFT	24
+#define PRCI_CLTXPLLCFG0_BYPASS_MASK	(0x1 << PRCI_CLTXPLLCFG0_BYPASS_SHIFT)
+#define PRCI_CLTXPLLCFG0_FSE_SHIFT	25
+#define PRCI_CLTXPLLCFG0_FSE_MASK	(0x1 << PRCI_CLTXPLLCFG0_FSE_SHIFT)
+#define PRCI_CLTXPLLCFG0_LOCK_SHIFT	31
+#define PRCI_CLTXPLLCFG0_LOCK_MASK	(0x1 << PRCI_CLTXPLLCFG0_LOCK_SHIFT)
+
+/* CLTXPLLCFG1 */
+#define PRCI_CLTXPLLCFG1_OFFSET		0x34
+#define PRCI_CLTXPLLCFG1_CKE_SHIFT	31
+#define PRCI_CLTXPLLCFG1_CKE_MASK	(0x1 << PRCI_CLTXPLLCFG1_CKE_SHIFT)
+
+/* DVFSCOREPLLCFG0 */
+#define PRCI_DVFSCOREPLLCFG0_OFFSET	0x38
+
+/* DVFSCOREPLLCFG1 */
+#define PRCI_DVFSCOREPLLCFG1_OFFSET	0x3c
+#define PRCI_DVFSCOREPLLCFG1_CKE_SHIFT	31
+#define PRCI_DVFSCOREPLLCFG1_CKE_MASK	(0x1 << PRCI_DVFSCOREPLLCFG1_CKE_SHIFT)
+
+/* COREPLLSEL */
+#define PRCI_COREPLLSEL_OFFSET			0x40
+#define PRCI_COREPLLSEL_COREPLLSEL_SHIFT	0
+#define PRCI_COREPLLSEL_COREPLLSEL_MASK					\
+		(0x1 << PRCI_COREPLLSEL_COREPLLSEL_SHIFT)
+
+/* HFPCLKPLLCFG0 */
+#define PRCI_HFPCLKPLLCFG0_OFFSET		0x50
+#define PRCI_HFPCLKPLL_CFG0_DIVR_SHIFT		0
+#define PRCI_HFPCLKPLL_CFG0_DIVR_MASK					\
+		(0x3f << PRCI_HFPCLKPLLCFG0_DIVR_SHIFT)
+#define PRCI_HFPCLKPLL_CFG0_DIVF_SHIFT		6
+#define PRCI_HFPCLKPLL_CFG0_DIVF_MASK					\
+		(0x1ff << PRCI_HFPCLKPLLCFG0_DIVF_SHIFT)
+#define PRCI_HFPCLKPLL_CFG0_DIVQ_SHIFT		15
+#define PRCI_HFPCLKPLL_CFG0_DIVQ_MASK					\
+		(0x7 << PRCI_HFPCLKPLLCFG0_DIVQ_SHIFT)
+#define PRCI_HFPCLKPLL_CFG0_RANGE_SHIFT		18
+#define PRCI_HFPCLKPLL_CFG0_RANGE_MASK					\
+		(0x7 << PRCI_HFPCLKPLLCFG0_RANGE_SHIFT)
+#define PRCI_HFPCLKPLL_CFG0_BYPASS_SHIFT	24
+#define PRCI_HFPCLKPLL_CFG0_BYPASS_MASK					\
+		(0x1 << PRCI_HFPCLKPLLCFG0_BYPASS_SHIFT)
+#define PRCI_HFPCLKPLL_CFG0_FSE_SHIFT		25
+#define PRCI_HFPCLKPLL_CFG0_FSE_MASK					\
+		(0x1 << PRCI_HFPCLKPLLCFG0_FSE_SHIFT)
+#define PRCI_HFPCLKPLL_CFG0_LOCK_SHIFT		31
+#define PRCI_HFPCLKPLL_CFG0_LOCK_MASK					\
+		(0x1 << PRCI_HFPCLKPLLCFG0_LOCK_SHIFT)
+
+/* HFPCLKPLLCFG1 */
+#define PRCI_HFPCLKPLLCFG1_OFFSET		0x54
+#define PRCI_HFPCLKPLLCFG1_CKE_SHIFT		31
+#define PRCI_HFPCLKPLLCFG1_CKE_MASK					\
+		(0x1 << PRCI_HFPCLKPLLCFG1_CKE_SHIFT)
+
+/* HFPCLKPLLSEL */
+#define PRCI_HFPCLKPLLSEL_OFFSET		0x58
+#define PRCI_HFPCLKPLLSEL_HFPCLKPLLSEL_SHIFT	0
+#define PRCI_HFPCLKPLLSEL_HFPCLKPLLSEL_MASK				\
+		(0x1 << PRCI_HFPCLKPLLSEL_HFPCLKPLLSEL_SHIFT)
+
+/* HFPCLKPLLDIV */
+#define PRCI_HFPCLKPLLDIV_OFFSET		0x5c
+
+/* PRCIPLL */
+#define PRCI_PRCIPLL_OFFSET			0xe0
+
+/* PROCMONCFG */
+#define PRCI_PROCMONCFG_OFFSET			0xf0
+
+/*
+ * Private structures
+ */
+
+/**
+ * struct __prci_data - per-device-instance data
+ * @va: base virtual address of the PRCI IP block
+ * @hw_clks: encapsulates struct clk_hw records
+ *
+ * PRCI per-device instance data
+ */
+struct __prci_data {
+	void __iomem *va;
+	struct clk_onecell_data hw_clks;
+};
+
+/**
+ * struct __prci_wrpll_data - WRPLL configuration and integration data
+ * @c: WRPLL current configuration record
+ * @enable_bypass: fn ptr to code to bypass the WRPLL (if applicable; else NULL)
+ * @disable_bypass: fn ptr to code to not bypass the WRPLL (or NULL)
+ * @cfg0_offs: WRPLL CFG0 register offset (in bytes) from the PRCI base address
+ * @cfg1_offs: WRPLL CFG1 register offset (in bytes) from the PRCI base address
+ *
+ * @enable_bypass and @disable_bypass are used for WRPLL instances
+ * that contain a separate external glitchless clock mux downstream
+ * from the PLL.  The WRPLL internal bypass mux is not glitchless.
+ */
+struct __prci_wrpll_data {
+	struct wrpll_cfg c;
+	void (*enable_bypass)(struct __prci_data *pd);
+	void (*disable_bypass)(struct __prci_data *pd);
+	u8 cfg0_offs;
+	u8 cfg1_offs;
+};
+
+/**
+ * struct __prci_clock - describes a clock device managed by PRCI
+ * @name: user-readable clock name string - should match the manual
+ * @parent_name: parent name for this clock
+ * @ops: struct clk_ops for the Linux clock framework to use for control
+ * @hw: Linux-private clock data
+ * @pwd: WRPLL-specific data, associated with this clock (if not NULL)
+ * @pd: PRCI-specific data associated with this clock (if not NULL)
+ *
+ * PRCI clock data.  Used by the PRCI driver to register PRCI-provided
+ * clocks to the Linux clock infrastructure.
+ */
+struct __prci_clock {
+	const char *name;
+	const char *parent_name;
+	const struct clk_ops *ops;
+	struct clk hw;
+	struct __prci_wrpll_data *pwd;
+	struct __prci_data *pd;
+};
+
+#define clk_hw_to_prci_clock(pwd) container_of(pwd, struct __prci_clock, hw)
+
+/*
+ * struct prci_clk_desc - describes the information of clocks of each SoCs
+ * @clks: point to a array of __prci_clock
+ * @num_clks: the number of element of clks
+ */
+struct prci_clk_desc {
+	struct __prci_clock *clks;
+	size_t num_clks;
+};
+
+/* Core clock mux control */
+void sifive_prci_coreclksel_use_hfclk(struct __prci_data *pd);
+void sifive_prci_coreclksel_use_corepll(struct __prci_data *pd);
+void sifive_prci_coreclksel_use_final_corepll(struct __prci_data *pd);
+void sifive_prci_corepllsel_use_dvfscorepll(struct __prci_data *pd);
+void sifive_prci_corepllsel_use_corepll(struct __prci_data *pd);
+void sifive_prci_hfpclkpllsel_use_hfclk(struct __prci_data *pd);
+void sifive_prci_hfpclkpllsel_use_hfpclkpll(struct __prci_data *pd);
+
+/* Linux clock framework integration */
+long sifive_prci_wrpll_round_rate(struct clk *hw, unsigned long rate,
+				  unsigned long *parent_rate);
+int sifive_prci_wrpll_set_rate(struct clk *hw, unsigned long rate,
+			       unsigned long parent_rate);
+int sifive_clk_is_enabled(struct clk *hw);
+int sifive_prci_clock_enable(struct clk *hw);
+void sifive_prci_clock_disable(struct clk *hw);
+unsigned long sifive_prci_wrpll_recalc_rate(struct clk *hw,
+					    unsigned long parent_rate);
+unsigned long sifive_prci_tlclksel_recalc_rate(struct clk *hw,
+					       unsigned long parent_rate);
+unsigned long sifive_prci_hfpclkplldiv_recalc_rate(struct clk *hw,
+						   unsigned long parent_rate);
+
+#endif /* __SIFIVE_CLK_SIFIVE_PRCI_H */
diff --git a/include/linux/clk/analogbits-wrpll-cln28hpc.h b/include/linux/clk/analogbits-wrpll-cln28hpc.h
new file mode 100644
index 000000000000..03279097e138
--- /dev/null
+++ b/include/linux/clk/analogbits-wrpll-cln28hpc.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018-2019 SiFive, Inc.
+ * Wesley Terpstra
+ * Paul Walmsley
+ */
+
+#ifndef __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H
+#define __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H
+
+#include <linux/types.h>
+
+/* DIVQ_VALUES: number of valid DIVQ values */
+#define DIVQ_VALUES				6
+
+/*
+ * Bit definitions for struct wrpll_cfg.flags
+ *
+ * WRPLL_FLAGS_BYPASS_FLAG: if set, the PLL is either in bypass, or should be
+ *	programmed to enter bypass
+ * WRPLL_FLAGS_RESET_FLAG: if set, the PLL is in reset
+ * WRPLL_FLAGS_INT_FEEDBACK_FLAG: if set, the PLL is configured for internal
+ *	feedback mode
+ * WRPLL_FLAGS_EXT_FEEDBACK_FLAG: if set, the PLL is configured for external
+ *	feedback mode (not yet supported by this driver)
+ */
+#define WRPLL_FLAGS_BYPASS_SHIFT		0
+#define WRPLL_FLAGS_BYPASS_MASK		BIT(WRPLL_FLAGS_BYPASS_SHIFT)
+#define WRPLL_FLAGS_RESET_SHIFT		1
+#define WRPLL_FLAGS_RESET_MASK		BIT(WRPLL_FLAGS_RESET_SHIFT)
+#define WRPLL_FLAGS_INT_FEEDBACK_SHIFT	2
+#define WRPLL_FLAGS_INT_FEEDBACK_MASK	BIT(WRPLL_FLAGS_INT_FEEDBACK_SHIFT)
+#define WRPLL_FLAGS_EXT_FEEDBACK_SHIFT	3
+#define WRPLL_FLAGS_EXT_FEEDBACK_MASK	BIT(WRPLL_FLAGS_EXT_FEEDBACK_SHIFT)
+
+/**
+ * struct wrpll_cfg - WRPLL configuration values
+ * @divr: reference divider value (6 bits), as presented to the PLL signals
+ * @divf: feedback divider value (9 bits), as presented to the PLL signals
+ * @divq: output divider value (3 bits), as presented to the PLL signals
+ * @flags: PLL configuration flags.  See above for more information
+ * @range: PLL loop filter range.  See below for more information
+ * @output_rate_cache: cached output rates, swept across DIVQ
+ * @parent_rate: PLL refclk rate for which values are valid
+ * @max_r: maximum possible R divider value, given @parent_rate
+ * @init_r: initial R divider value to start the search from
+ *
+ * @divr, @divq, @divq, @range represent what the PLL expects to see
+ * on its input signals.  Thus @divr and @divf are the actual divisors
+ * minus one.  @divq is a power-of-two divider; for example, 1 =
+ * divide-by-2 and 6 = divide-by-64.  0 is an invalid @divq value.
+ *
+ * When initially passing a struct wrpll_cfg record, the
+ * record should be zero-initialized with the exception of the @flags
+ * field.  The only flag bits that need to be set are either
+ * WRPLL_FLAGS_INT_FEEDBACK or WRPLL_FLAGS_EXT_FEEDBACK.
+ */
+struct wrpll_cfg {
+	u8 divr;
+	u8 divq;
+	u8 range;
+	u8 flags;
+	u16 divf;
+/* private: */
+	u32 output_rate_cache[DIVQ_VALUES];
+	unsigned long parent_rate;
+	u8 max_r;
+	u8 init_r;
+};
+
+int wrpll_configure_for_rate(struct wrpll_cfg *c, u32 target_rate,
+			     unsigned long parent_rate);
+
+unsigned int wrpll_calc_max_lock_us(const struct wrpll_cfg *c);
+
+unsigned long wrpll_calc_output_rate(const struct wrpll_cfg *c,
+				     unsigned long parent_rate);
+
+#endif /* __LINUX_CLK_ANALOGBITS_WRPLL_CLN28HPC_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

