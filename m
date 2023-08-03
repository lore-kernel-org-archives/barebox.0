Delivery-date: Thu, 03 Aug 2023 12:52:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVw7-004wTd-OM
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:52:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVw2-0002B6-RK
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:52:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=soPwiosKSGG/xn/67KQvLSaIRzs0nAXvoeH6xiCY1jc=; b=oTUKEgCTozCuFy4YEXJcgMM0Lq
	06wuzRwR5SMAKwlYd7E75Y46tcoiWfDcLWz5tHfymK8vZAUiBbCVYZZxzNCoHAu8+ITr/mvo2Eg3C
	8eaYiBCpXiwyvP5rpOdiCc9Nzq0KtBQ9A7r6IJvlNYHafOHcbI+naIRjHdCzumKCdqTO37aF3oVBj
	mMs07B5H8+0zVqeJ2JNythsi+XUIc2Or9+p+Zm6HSpXaL+AxBwQrtB1mEQH3nwDDbbSm9D/31q6Iu
	u+RtozmEM58zYLkidePR7thUTZx27lcUPjcC6VfIw+81so+ZSJmLrJ8I9wZGH8VBWCrH1XCcv9J09
	1EHoac+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVum-007V4D-31;
	Thu, 03 Aug 2023 10:50:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuC-007UXI-1X
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-0000uc-7l; Thu, 03 Aug 2023 12:50:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuA-000ov6-DI; Thu, 03 Aug 2023 12:50:06 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzP-KA; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:51 +0200
Message-Id: <20230803105003.4088205-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035008_824649_8135A498 
X-CRM114-Status: GOOD (  33.50  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/22] clk: Add K3 SCI clock driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for clocks on TI K3 SoCs. The code is based on
Linux-6.5-rc3.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Makefile     |   1 +
 drivers/clk/ti-sci-clk.c | 630 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 631 insertions(+)
 create mode 100644 drivers/clk/ti-sci-clk.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index c865e4c274..3ebafbf7fd 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -29,3 +29,4 @@ obj-$(CONFIG_MACH_RPI_COMMON)	+= clk-rpi.o
 obj-y				+= bcm/
 obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
 obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
+obj-$(CONFIG_ARCH_K3)		+= ti-sci-clk.o
diff --git a/drivers/clk/ti-sci-clk.c b/drivers/clk/ti-sci-clk.c
new file mode 100644
index 0000000000..57e0406553
--- /dev/null
+++ b/drivers/clk/ti-sci-clk.c
@@ -0,0 +1,630 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SCI Clock driver for keystone based devices
+ *
+ * Copyright (C) 2015-2016 Texas Instruments Incorporated - https://www.ti.com/
+ *	Tero Kristo <t-kristo@ti.com>
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <of.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+#include <linux/bsearch.h>
+#include <soc/ti/ti_sci_protocol.h>
+#include <linux/list_sort.h>
+
+#define SCI_CLK_SSC_ENABLE		BIT(0)
+#define SCI_CLK_ALLOW_FREQ_CHANGE	BIT(1)
+#define SCI_CLK_INPUT_TERMINATION	BIT(2)
+
+/**
+ * struct sci_clk_provider - TI SCI clock provider representation
+ * @sci: Handle to the System Control Interface protocol handler
+ * @ops: Pointer to the SCI ops to be used by the clocks
+ * @dev: Device pointer for the clock provider
+ * @clocks: Clocks array for this device
+ * @num_clocks: Total number of clocks for this provider
+ */
+struct sci_clk_provider {
+	const struct ti_sci_handle *sci;
+	const struct ti_sci_clk_ops *ops;
+	struct device *dev;
+	struct sci_clk **clocks;
+	int num_clocks;
+};
+
+/**
+ * struct sci_clk - TI SCI clock representation
+ * @hw:		 Hardware clock cookie for common clock framework
+ * @dev_id:	 Device index
+ * @clk_id:	 Clock index
+ * @num_parents: Number of parents for this clock
+ * @provider:	 Master clock provider
+ * @flags:	 Flags for the clock
+ * @node:	 Link for handling clocks probed via DT
+ * @cached_req:	 Cached requested freq for determine rate calls
+ * @cached_res:	 Cached result freq for determine rate calls
+ */
+struct sci_clk {
+	struct clk_hw hw;
+	u16 dev_id;
+	u32 clk_id;
+	u32 num_parents;
+	struct sci_clk_provider *provider;
+	u8 flags;
+	struct list_head node;
+	unsigned long cached_req;
+	unsigned long cached_res;
+};
+
+#define to_sci_clk(_hw) container_of(_hw, struct sci_clk, hw)
+
+/**
+ * sci_clk_enable - enable a TI SCI clock
+ * @hw: clock to enable
+ *
+ * Enables a clock to be actively used. Returns the SCI protocol status.
+ */
+static int sci_clk_enable(struct clk_hw *hw)
+{
+	struct sci_clk *clk = to_sci_clk(hw);
+	bool enable_ssc = clk->flags & SCI_CLK_SSC_ENABLE;
+	bool allow_freq_change = clk->flags & SCI_CLK_ALLOW_FREQ_CHANGE;
+	bool input_termination = clk->flags & SCI_CLK_INPUT_TERMINATION;
+
+	return clk->provider->ops->get_clock(clk->provider->sci, clk->dev_id,
+					     clk->clk_id, enable_ssc,
+					     allow_freq_change,
+					     input_termination);
+}
+
+/**
+ * sci_clk_disable - disables a TI SCI clock
+ * @hw: clock to disable
+ *
+ * Disables a clock from active state.
+ */
+static void sci_clk_disable(struct clk_hw *hw)
+{
+	struct sci_clk *clk = to_sci_clk(hw);
+	int ret;
+
+	ret = clk->provider->ops->put_clock(clk->provider->sci, clk->dev_id,
+					    clk->clk_id);
+	if (ret)
+		dev_err(clk->provider->dev,
+			"unprepare failed for dev=%d, clk=%d, ret=%d\n",
+			clk->dev_id, clk->clk_id, ret);
+}
+
+/**
+ * sci_clk_is_enabled - Check if a TI SCI clock is enabled or not
+ * @hw: clock to check status for
+ *
+ * Checks if a clock is enabled in hardware. Returns non-zero
+ * value if clock is enabled, zero otherwise.
+ */
+static int sci_clk_is_enabled(struct clk_hw *hw)
+{
+	struct sci_clk *clk = to_sci_clk(hw);
+	bool req_state, current_state;
+	int ret;
+
+	ret = clk->provider->ops->is_on(clk->provider->sci, clk->dev_id,
+					clk->clk_id, &req_state,
+					&current_state);
+	if (ret) {
+		dev_err(clk->provider->dev,
+			"is_prepared failed for dev=%d, clk=%d, ret=%d\n",
+			clk->dev_id, clk->clk_id, ret);
+		return 0;
+	}
+
+	return req_state;
+}
+
+/**
+ * sci_clk_recalc_rate - Get clock rate for a TI SCI clock
+ * @hw: clock to get rate for
+ * @parent_rate: parent rate provided by common clock framework, not used
+ *
+ * Gets the current clock rate of a TI SCI clock. Returns the current
+ * clock rate, or zero in failure.
+ */
+static unsigned long sci_clk_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct sci_clk *clk = to_sci_clk(hw);
+	u64 freq;
+	int ret;
+
+	ret = clk->provider->ops->get_freq(clk->provider->sci, clk->dev_id,
+					   clk->clk_id, &freq);
+	if (ret) {
+		dev_err(clk->provider->dev,
+			"recalc-rate failed for dev=%d, clk=%d, ret=%d\n",
+			clk->dev_id, clk->clk_id, ret);
+		return 0;
+	}
+
+	return freq;
+}
+
+/**
+ * sci_clk_set_rate - Set rate for a TI SCI clock
+ * @hw: clock to change rate for
+ * @rate: target rate for the clock
+ * @parent_rate: rate of the clock parent, not used for TI SCI clocks
+ *
+ * Sets a clock frequency for a TI SCI clock. Returns the TI SCI
+ * protocol status.
+ */
+static int sci_clk_set_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct sci_clk *clk = to_sci_clk(hw);
+
+	return clk->provider->ops->set_freq(clk->provider->sci, clk->dev_id,
+					    clk->clk_id, rate / 10 * 9, rate,
+					    rate / 10 * 11);
+}
+
+/**
+ * sci_clk_get_parent - Get the current parent of a TI SCI clock
+ * @hw: clock to get parent for
+ *
+ * Returns the index of the currently selected parent for a TI SCI clock.
+ */
+static int sci_clk_get_parent(struct clk_hw *hw)
+{
+	struct sci_clk *clk = to_sci_clk(hw);
+	u32 parent_id = 0;
+	int ret;
+
+	ret = clk->provider->ops->get_parent(clk->provider->sci, clk->dev_id,
+					     clk->clk_id, (void *)&parent_id);
+	if (ret) {
+		dev_err(clk->provider->dev,
+			"get-parent failed for dev=%d, clk=%d, ret=%d\n",
+			clk->dev_id, clk->clk_id, ret);
+		return 0;
+	}
+
+	parent_id = parent_id - clk->clk_id - 1;
+
+	return parent_id;
+}
+
+/**
+ * sci_clk_set_parent - Set the parent of a TI SCI clock
+ * @hw: clock to set parent for
+ * @index: new parent index for the clock
+ *
+ * Sets the parent of a TI SCI clock. Return TI SCI protocol status.
+ */
+static int sci_clk_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct sci_clk *clk = to_sci_clk(hw);
+
+	clk->cached_req = 0;
+
+	return clk->provider->ops->set_parent(clk->provider->sci, clk->dev_id,
+					      clk->clk_id,
+					      index + 1 + clk->clk_id);
+}
+
+static const struct clk_ops sci_clk_ops = {
+	.enable = sci_clk_enable,
+	.disable = sci_clk_disable,
+	.is_enabled = sci_clk_is_enabled,
+	.recalc_rate = sci_clk_recalc_rate,
+	.set_rate = sci_clk_set_rate,
+	.get_parent = sci_clk_get_parent,
+	.set_parent = sci_clk_set_parent,
+};
+
+/**
+ * _sci_clk_get - Gets a handle for an SCI clock
+ * @provider: Handle to SCI clock provider
+ * @sci_clk: Handle to the SCI clock to populate
+ *
+ * Gets a handle to an existing TI SCI hw clock, or builds a new clock
+ * entry and registers it with the common clock framework. Called from
+ * the common clock framework, when a corresponding of_clk_get call is
+ * executed, or recursively from itself when parsing parent clocks.
+ * Returns 0 on success, negative error code on failure.
+ */
+static int _sci_clk_build(struct sci_clk_provider *provider,
+			  struct sci_clk *sci_clk)
+{
+	struct clk_init_data init = { NULL };
+	char *name = NULL;
+	char **parent_names = NULL;
+	int i;
+	int ret = 0;
+
+	name = basprintf("clk:%d:%d", sci_clk->dev_id, sci_clk->clk_id);
+	if (!name)
+		return -ENOMEM;
+
+	init.name = name;
+
+	/*
+	 * From kernel point of view, we only care about a clocks parents,
+	 * if it has more than 1 possible parent. In this case, it is going
+	 * to have mux functionality. Otherwise it is going to act as a root
+	 * clock.
+	 */
+	if (sci_clk->num_parents < 2)
+		sci_clk->num_parents = 0;
+
+	if (sci_clk->num_parents) {
+		parent_names = kcalloc(sci_clk->num_parents, sizeof(char *),
+				       GFP_KERNEL);
+
+		if (!parent_names) {
+			ret = -ENOMEM;
+			goto err;
+		}
+
+		for (i = 0; i < sci_clk->num_parents; i++) {
+			char *parent_name;
+
+			parent_name = basprintf("clk:%d:%d",
+						sci_clk->dev_id,
+						sci_clk->clk_id + 1 + i);
+			if (!parent_name) {
+				ret = -ENOMEM;
+				goto err;
+			}
+			parent_names[i] = parent_name;
+		}
+		init.parent_names = (void *)parent_names;
+	}
+
+	init.ops = &sci_clk_ops;
+	init.num_parents = sci_clk->num_parents;
+	sci_clk->hw.init = &init;
+
+	ret = clk_hw_register(provider->dev, &sci_clk->hw);
+	if (ret)
+		dev_err(provider->dev, "failed clk register with %d\n", ret);
+
+err:
+	if (parent_names) {
+		for (i = 0; i < sci_clk->num_parents; i++)
+			kfree(parent_names[i]);
+
+		kfree(parent_names);
+	}
+
+	kfree(name);
+
+	return ret;
+}
+
+static int _cmp_sci_clk(const void *a, const void *b)
+{
+	const struct sci_clk *ca = a;
+	const struct sci_clk *cb = *(struct sci_clk **)b;
+
+	if (ca->dev_id == cb->dev_id && ca->clk_id == cb->clk_id)
+		return 0;
+	if (ca->dev_id > cb->dev_id ||
+	    (ca->dev_id == cb->dev_id && ca->clk_id > cb->clk_id))
+		return 1;
+	return -1;
+}
+
+/**
+ * sci_clk_get - Xlate function for getting clock handles
+ * @clkspec: device tree clock specifier
+ * @data: pointer to the clock provider
+ *
+ * Xlate function for retrieving clock TI SCI hw clock handles based on
+ * device tree clock specifier. Called from the common clock framework,
+ * when a corresponding of_clk_get call is executed. Returns a pointer
+ * to the TI SCI hw clock struct, or ERR_PTR value in failure.
+ */
+static struct clk_hw *sci_clk_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct sci_clk_provider *provider = data;
+	struct sci_clk **clk;
+	struct sci_clk key;
+
+	if (clkspec->args_count != 2)
+		return ERR_PTR(-EINVAL);
+
+	key.dev_id = clkspec->args[0];
+	key.clk_id = clkspec->args[1];
+
+	clk = bsearch(&key, provider->clocks, provider->num_clocks,
+		      sizeof(clk), _cmp_sci_clk);
+
+	if (!clk)
+		return ERR_PTR(-ENODEV);
+
+	return &(*clk)->hw;
+}
+
+static int ti_sci_init_clocks(struct sci_clk_provider *p)
+{
+	int i;
+	int ret;
+
+	for (i = 0; i < p->num_clocks; i++) {
+		ret = _sci_clk_build(p, p->clocks[i]);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id ti_sci_clk_of_match[] = {
+	{ .compatible = "ti,k2g-sci-clk" },
+	{ /* Sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, ti_sci_clk_of_match);
+
+#ifdef CONFIG_TI_SCI_CLK_PROBE_FROM_FW
+static int ti_sci_scan_clocks_from_fw(struct sci_clk_provider *provider)
+{
+	int ret;
+	int num_clks = 0;
+	struct sci_clk **clks = NULL;
+	struct sci_clk **tmp_clks;
+	struct sci_clk *sci_clk;
+	int max_clks = 0;
+	int clk_id = 0;
+	int dev_id = 0;
+	u32 num_parents = 0;
+	int gap_size = 0;
+	struct device *dev = provider->dev;
+
+	while (1) {
+		ret = provider->ops->get_num_parents(provider->sci, dev_id,
+						     clk_id,
+						     (void *)&num_parents);
+		if (ret) {
+			gap_size++;
+			if (!clk_id) {
+				if (gap_size >= 5)
+					break;
+				dev_id++;
+			} else {
+				if (gap_size >= 2) {
+					dev_id++;
+					clk_id = 0;
+					gap_size = 0;
+				} else {
+					clk_id++;
+				}
+			}
+			continue;
+		}
+
+		gap_size = 0;
+
+		if (num_clks == max_clks) {
+			tmp_clks = devm_kmalloc_array(dev, max_clks + 64,
+						      sizeof(sci_clk),
+						      GFP_KERNEL);
+			memcpy(tmp_clks, clks, max_clks * sizeof(sci_clk));
+			if (max_clks)
+				devm_kfree(dev, clks);
+			max_clks += 64;
+			clks = tmp_clks;
+		}
+
+		sci_clk = devm_kzalloc(dev, sizeof(*sci_clk), GFP_KERNEL);
+		if (!sci_clk)
+			return -ENOMEM;
+		sci_clk->dev_id = dev_id;
+		sci_clk->clk_id = clk_id;
+		sci_clk->provider = provider;
+		sci_clk->num_parents = num_parents;
+
+		clks[num_clks] = sci_clk;
+
+		clk_id++;
+		num_clks++;
+	}
+
+	provider->clocks = devm_kmalloc_array(dev, num_clks, sizeof(sci_clk),
+					      GFP_KERNEL);
+	if (!provider->clocks)
+		return -ENOMEM;
+
+	memcpy(provider->clocks, clks, num_clks * sizeof(sci_clk));
+
+	provider->num_clocks = num_clks;
+
+	devm_kfree(dev, clks);
+
+	return 0;
+}
+
+#else
+
+static int _cmp_sci_clk_list(void *priv, struct list_head *a,
+			     struct list_head *b)
+{
+	struct sci_clk *ca = container_of(a, struct sci_clk, node);
+	struct sci_clk *cb = container_of(b, struct sci_clk, node);
+
+	return _cmp_sci_clk(ca, &cb);
+}
+
+static int ti_sci_scan_clocks_from_dt(struct sci_clk_provider *provider)
+{
+	struct device *dev = provider->dev;
+	struct device_node *np = NULL;
+	int ret;
+	int index;
+	struct of_phandle_args args;
+	struct list_head clks;
+	struct sci_clk *sci_clk, *prev;
+	int num_clks = 0;
+	int num_parents;
+	int clk_id;
+	const char * const clk_names[] = {
+		"clocks", "assigned-clocks", "assigned-clock-parents", NULL
+	};
+	const char * const *clk_name;
+
+	INIT_LIST_HEAD(&clks);
+
+	clk_name = clk_names;
+
+	while (*clk_name) {
+		np = of_find_node_with_property(np, *clk_name);
+		if (!np) {
+			clk_name++;
+			continue;
+		}
+
+		if (!of_device_is_available(np))
+			continue;
+
+		index = 0;
+
+		do {
+			ret = of_parse_phandle_with_args(np, *clk_name,
+							 "#clock-cells", index,
+							 &args);
+			if (ret)
+				break;
+
+			if (args.args_count == 2 && args.np == dev->of_node) {
+				sci_clk = xzalloc(sizeof(*sci_clk));
+
+				sci_clk->dev_id = args.args[0];
+				sci_clk->clk_id = args.args[1];
+				sci_clk->provider = provider;
+				provider->ops->get_num_parents(provider->sci,
+							       sci_clk->dev_id,
+							       sci_clk->clk_id,
+							       (void *)&sci_clk->num_parents);
+				list_add_tail(&sci_clk->node, &clks);
+
+				num_clks++;
+
+				num_parents = sci_clk->num_parents;
+				if (num_parents == 1)
+					num_parents = 0;
+
+				/*
+				 * Linux kernel has inherent limitation
+				 * of 255 clock parents at the moment.
+				 * Right now, it is not expected that
+				 * any mux clock from sci-clk driver
+				 * would exceed that limit either, but
+				 * the ABI basically provides that
+				 * possibility. Print out a warning if
+				 * this happens for any clock.
+				 */
+				if (num_parents >= 255) {
+					dev_warn(dev, "too many parents for dev=%d, clk=%d (%d), cropping to 255.\n",
+						 sci_clk->dev_id,
+						 sci_clk->clk_id, num_parents);
+					num_parents = 255;
+				}
+
+				clk_id = args.args[1] + 1;
+
+				while (num_parents--) {
+					sci_clk = xzalloc(sizeof(*sci_clk));
+					sci_clk->dev_id = args.args[0];
+					sci_clk->clk_id = clk_id++;
+					sci_clk->provider = provider;
+					list_add_tail(&sci_clk->node, &clks);
+
+					num_clks++;
+				}
+			}
+
+			index++;
+		} while (args.np);
+	}
+
+	list_sort(NULL, &clks, _cmp_sci_clk_list);
+
+	provider->clocks = xzalloc(num_clks * sizeof(sci_clk));
+
+	num_clks = 0;
+	prev = NULL;
+
+	list_for_each_entry(sci_clk, &clks, node) {
+		if (prev && prev->dev_id == sci_clk->dev_id &&
+		    prev->clk_id == sci_clk->clk_id)
+			continue;
+
+		provider->clocks[num_clks++] = sci_clk;
+		prev = sci_clk;
+	}
+
+	provider->num_clocks = num_clks;
+
+	return 0;
+}
+#endif
+
+/**
+ * ti_sci_clk_probe - Probe function for the TI SCI clock driver
+ * @pdev: platform device pointer to be probed
+ *
+ * Probes the TI SCI clock device. Allocates a new clock provider
+ * and registers this to the common clock framework. Also applies
+ * any required flags to the identified clocks via clock lists
+ * supplied from DT. Returns 0 for success, negative error value
+ * for failure.
+ */
+static int ti_sci_clk_probe(struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct sci_clk_provider *provider;
+	const struct ti_sci_handle *handle;
+	int ret;
+
+	handle = ti_sci_get_handle(dev);
+	if (IS_ERR(handle))
+		return PTR_ERR(handle);
+
+	provider = xzalloc(sizeof(*provider));
+
+	provider->sci = handle;
+	provider->ops = &handle->ops.clk_ops;
+	provider->dev = dev;
+
+	ret = ti_sci_scan_clocks_from_dt(provider);
+	if (ret) {
+		dev_err(dev, "scan clocks from DT failed: %d\n", ret);
+		return ret;
+	}
+
+	ret = ti_sci_init_clocks(provider);
+	if (ret) {
+		pr_err("ti-sci-init-clocks failed.\n");
+		return ret;
+	}
+
+	return of_clk_add_hw_provider(np, sci_clk_get, provider);
+}
+
+static struct driver ti_sci_clk_driver = {
+	.probe = ti_sci_clk_probe,
+	.name = "ti-sci-clk",
+	.of_compatible = DRV_OF_COMPAT(ti_sci_clk_of_match),
+};
+
+core_platform_driver(ti_sci_clk_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("TI System Control Interface(SCI) Clock driver");
+MODULE_AUTHOR("Tero Kristo");
+MODULE_ALIAS("platform:ti-sci-clk");
-- 
2.39.2



