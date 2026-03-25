Delivery-date: Wed, 25 Mar 2026 12:48:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Miv-004uGQ-0y
	for lore@lore.pengutronix.de;
	Wed, 25 Mar 2026 12:48:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Mit-0000Mo-5I
	for lore@pengutronix.de; Wed, 25 Mar 2026 12:48:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gdV6qxSwQhOie1dvLreWlr+KI67QbW19xn4D7hP2+sE=; b=1RTKMUQYqxpcSagO0jJTE8G4hH
	a/90aHfB1uKaEpFAhLUB0EwRXvv9WG98HwXAnixqI0I/dAUBhKMhX6SVHHiCfn1rA/1gm+I9wN2Qi
	1a0p/bo06Aiwnr6i3QgEA2OYorOka/HpyQZvcf3xt+L8iAvkNsDmrJr86uvtUpAGy+lxiaBGaKOO8
	s9d8fdplLc+CYN/k6jwrXpBuF/DBPfvNB4lWAPcd85cFubUgZ1bHen96WotbMC1u7W5ZfGf/WDM7F
	KWzbH9VA+WkhHijVLz/qpiduSvniJYw/Vlt/m8LSYbJmnviEQ1DZlqcZbdWtd8k/Ecc/pyCqbv7Pm
	JDY5gJ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiQ-00000003Iik-0oVu;
	Wed, 25 Mar 2026 11:48:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiK-00000003Ifj-1XsN
	for barebox@lists.infradead.org;
	Wed, 25 Mar 2026 11:47:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00005g-OY; Wed, 25 Mar 2026 12:47:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-0023MI-1q;
	Wed, 25 Mar 2026 12:47:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00000009hXd-1wjY;
	Wed, 25 Mar 2026 12:47:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Mar 2026 12:42:48 +0100
Message-ID: <20260325114753.2249763-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260325114753.2249763-1-a.fatoum@pengutronix.de>
References: <20260325114753.2249763-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_044756_721582_3A6CF218 
X-CRM114-Status: GOOD (  30.49  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] firmware: arm_scmi: clock: sync with Linux v7.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A full upgrade of our SCMI support is a more involved manner, so do a
stepwise update of the clock driver only for now, which is the most
often SCMI protocol used by barebox.

No functional change expected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-scmi.c            | 285 ++++++++++++++++-----
 drivers/firmware/arm_scmi/clock.c | 397 ++++++++++++++++++++++++------
 include/linux/scmi_protocol.h     |  30 ++-
 3 files changed, 558 insertions(+), 154 deletions(-)

diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
index 7f1e6fa5458b..454e6fa68b0c 100644
--- a/drivers/clk/clk-scmi.c
+++ b/drivers/clk/clk-scmi.c
@@ -1,22 +1,39 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/clk-scmi.c?id=112104e2b72c5c7ba1590e3a5614b2ff76474f14
 /*
  * System Control and Power Interface (SCMI) Protocol based clock driver
  *
- * Copyright (C) 2018-2022 ARM Ltd.
+ * Copyright (C) 2018-2024 ARM Ltd.
  */
 
-#include <linux/clk.h>
+#include <linux/bits.h>
+#include <linux/clk-provider.h>
 #include <linux/device.h>
 #include <linux/err.h>
 #include <of.h>
-#include <module.h>
+#include <linux/module.h>
 #include <linux/scmi_protocol.h>
 #include <linux/math64.h>
 
+#define NOT_ATOMIC	false
+#define ATOMIC		true
+
+enum scmi_clk_feats {
+	SCMI_CLK_ATOMIC_SUPPORTED,
+	SCMI_CLK_STATE_CTRL_SUPPORTED,
+	SCMI_CLK_RATE_CTRL_SUPPORTED,
+	SCMI_CLK_PARENT_CTRL_SUPPORTED,
+	SCMI_CLK_DUTY_CYCLE_SUPPORTED,
+	SCMI_CLK_FEATS_COUNT
+};
+
+#define SCMI_MAX_CLK_OPS	BIT(SCMI_CLK_FEATS_COUNT)
+
 static const struct scmi_clk_proto_ops *scmi_proto_clk_ops;
 
 struct scmi_clk {
 	u32 id;
+	struct device *dev;
 	struct clk_hw hw;
 	const struct scmi_clock_info *info;
 	const struct scmi_protocol_handle *ph;
@@ -107,99 +124,231 @@ static int scmi_clk_enable(struct clk_hw *hw)
 {
 	struct scmi_clk *clk = to_scmi_clk(hw);
 
-	return scmi_proto_clk_ops->enable(clk->ph, clk->id);
+	return scmi_proto_clk_ops->enable(clk->ph, clk->id, NOT_ATOMIC);
 }
 
 static void scmi_clk_disable(struct clk_hw *hw)
 {
 	struct scmi_clk *clk = to_scmi_clk(hw);
 
-	scmi_proto_clk_ops->disable(clk->ph, clk->id);
+	scmi_proto_clk_ops->disable(clk->ph, clk->id, NOT_ATOMIC);
 }
 
 static int scmi_clk_atomic_enable(struct clk_hw *hw)
 {
 	struct scmi_clk *clk = to_scmi_clk(hw);
 
-	return scmi_proto_clk_ops->enable_atomic(clk->ph, clk->id);
+	return scmi_proto_clk_ops->enable(clk->ph, clk->id, ATOMIC);
 }
 
 static void scmi_clk_atomic_disable(struct clk_hw *hw)
 {
 	struct scmi_clk *clk = to_scmi_clk(hw);
 
-	scmi_proto_clk_ops->disable_atomic(clk->ph, clk->id);
+	scmi_proto_clk_ops->disable(clk->ph, clk->id, ATOMIC);
 }
 
-/*
- * We can provide enable/disable atomic callbacks only if the underlying SCMI
- * transport for an SCMI instance is configured to handle SCMI commands in an
- * atomic manner.
- *
- * When no SCMI atomic transport support is available we instead provide only
- * the prepare/unprepare API, as allowed by the clock framework when atomic
- * calls are not available.
- *
- * Two distinct sets of clk_ops are provided since we could have multiple SCMI
- * instances with different underlying transport quality, so they cannot be
- * shared.
- */
-static const struct clk_ops scmi_clk_ops = {
-	.recalc_rate = scmi_clk_recalc_rate,
-	.round_rate = scmi_clk_round_rate,
-	.set_rate = scmi_clk_set_rate,
-	.enable = scmi_clk_enable,
-	.disable = scmi_clk_disable,
-	.set_parent = scmi_clk_set_parent,
-	.get_parent = scmi_clk_get_parent,
-};
+static int __scmi_clk_is_enabled(struct clk_hw *hw, bool atomic)
+{
+	int ret;
+	bool enabled = false;
+	struct scmi_clk *clk = to_scmi_clk(hw);
 
-static const struct clk_ops scmi_atomic_clk_ops = {
-	.recalc_rate = scmi_clk_recalc_rate,
-	.round_rate = scmi_clk_round_rate,
-	.set_rate = scmi_clk_set_rate,
-	.enable = scmi_clk_atomic_enable,
-	.disable = scmi_clk_atomic_disable,
-	.set_parent = scmi_clk_set_parent,
-	.get_parent = scmi_clk_get_parent,
-};
+	ret = scmi_proto_clk_ops->state_get(clk->ph, clk->id, &enabled, atomic);
+	if (ret)
+		dev_warn(clk->dev,
+			 "Failed to get state for clock ID %d\n", clk->id);
+
+	return !!enabled;
+}
+
+static int scmi_clk_atomic_is_enabled(struct clk_hw *hw)
+{
+	return __scmi_clk_is_enabled(hw, ATOMIC);
+}
+
+static int scmi_clk_is_enabled(struct clk_hw *hw)
+{
+	return __scmi_clk_is_enabled(hw, NOT_ATOMIC);
+}
 
 static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk,
 			     const struct clk_ops *scmi_ops)
 {
+	int ret;
+
 	struct clk_init_data init = {
 		.flags = CLK_GET_RATE_NOCACHE,
 		.num_parents = sclk->info->num_parents,
 		.ops = scmi_ops,
 		.name = sclk->info->name,
+		.parent_data = sclk->parent_data,
 	};
 
-	if (sclk->info->num_parents > 0) {
-		init.parent_hws = devm_kcalloc(dev, sclk->info->num_parents,
-					       sizeof(void *), GFP_KERNEL);
-		if (!init.parent_hws)
-			return -ENOMEM;
+	sclk->hw.init = &init;
+	ret = clk_hw_register(dev, &sclk->hw);
+	if (ret)
+		return ret;
 
-		for (int i = 0; i < sclk->info->num_parents; i++) {
-			init.parent_hws[i] = sclk->parent_data[i].hw;
+	if (sclk->info->rate_discrete) {
+		int num_rates = sclk->info->list.num_rates;
+
+		if (num_rates <= 0)
+			return -EINVAL;
+	}
+
+	return ret;
+}
+
+/**
+ * scmi_clk_ops_alloc() - Alloc and configure clock operations
+ * @dev: A device reference for devres
+ * @feats_key: A bitmap representing the desired clk_ops capabilities
+ *
+ * Allocate and configure a proper set of clock operations depending on the
+ * specifically required SCMI clock features.
+ *
+ * Return: A pointer to the allocated and configured clk_ops on success,
+ *	   or NULL on allocation failure.
+ */
+static const struct clk_ops *
+scmi_clk_ops_alloc(struct device *dev, unsigned long feats_key)
+{
+	struct clk_ops *ops;
+
+	ops = devm_kzalloc(dev, sizeof(*ops), GFP_KERNEL);
+	if (!ops)
+		return NULL;
+	/*
+	 * We can provide enable/disable/is_enabled atomic callbacks only if the
+	 * underlying SCMI transport for an SCMI instance is configured to
+	 * handle SCMI commands in an atomic manner.
+	 *
+	 * When no SCMI atomic transport support is available we instead provide
+	 * only the prepare/unprepare API, as allowed by the clock framework
+	 * when atomic calls are not available.
+	 */
+	if (feats_key & BIT(SCMI_CLK_STATE_CTRL_SUPPORTED)) {
+		if (feats_key & BIT(SCMI_CLK_ATOMIC_SUPPORTED)) {
+			ops->enable = scmi_clk_atomic_enable;
+			ops->disable = scmi_clk_atomic_disable;
+		} else {
+			ops->prepare = scmi_clk_enable;
+			ops->unprepare = scmi_clk_disable;
 		}
 	}
 
-	sclk->hw.init = &init;
-	return clk_hw_register(dev, &sclk->hw);
+	if (feats_key & BIT(SCMI_CLK_ATOMIC_SUPPORTED))
+		ops->is_enabled = scmi_clk_atomic_is_enabled;
+	else
+		ops->is_prepared = scmi_clk_is_enabled;
+
+	/* Rate ops */
+	ops->recalc_rate = scmi_clk_recalc_rate;
+	ops->round_rate = scmi_clk_round_rate;
+	if (feats_key & BIT(SCMI_CLK_RATE_CTRL_SUPPORTED))
+		ops->set_rate = scmi_clk_set_rate;
+
+	/* Parent ops */
+	ops->get_parent = scmi_clk_get_parent;
+	if (feats_key & BIT(SCMI_CLK_PARENT_CTRL_SUPPORTED))
+		ops->set_parent = scmi_clk_set_parent;
+
+	return ops;
+}
+
+/**
+ * scmi_clk_ops_select() - Select a proper set of clock operations
+ * @sclk: A reference to an SCMI clock descriptor
+ * @atomic_capable: A flag to indicate if atomic mode is supported by the
+ *		    transport
+ * @atomic_threshold_us: Platform atomic threshold value in microseconds:
+ *			 clk_ops are atomic when clock enable latency is less
+ *			 than this threshold
+ * @clk_ops_db: A reference to the array used as a database to store all the
+ *		created clock operations combinations.
+ * @db_size: Maximum number of entries held by @clk_ops_db
+ *
+ * After having built a bitmap descriptor to represent the set of features
+ * needed by this SCMI clock, at first use it to lookup into the set of
+ * previously allocated clk_ops to check if a suitable combination of clock
+ * operations was already created; when no match is found allocate a brand new
+ * set of clk_ops satisfying the required combination of features and save it
+ * for future references.
+ *
+ * In this way only one set of clk_ops is ever created for each different
+ * combination that is effectively needed by a driver instance.
+ *
+ * Return: A pointer to the allocated and configured clk_ops on success, or
+ *	   NULL otherwise.
+ */
+static const struct clk_ops *
+scmi_clk_ops_select(struct scmi_clk *sclk, bool atomic_capable,
+		    unsigned int atomic_threshold_us,
+		    const struct clk_ops **clk_ops_db, size_t db_size)
+{
+	int ret;
+	u32 val;
+	const struct scmi_clock_info *ci = sclk->info;
+	unsigned int feats_key = 0;
+	const struct clk_ops *ops;
+
+	/*
+	 * Note that when transport is atomic but SCMI protocol did not
+	 * specify (or support) an enable_latency associated with a
+	 * clock, we default to use atomic operations mode.
+	 */
+	if (atomic_capable && ci->enable_latency <= atomic_threshold_us)
+		feats_key |= BIT(SCMI_CLK_ATOMIC_SUPPORTED);
+
+	if (!ci->state_ctrl_forbidden)
+		feats_key |= BIT(SCMI_CLK_STATE_CTRL_SUPPORTED);
+
+	if (!ci->rate_ctrl_forbidden)
+		feats_key |= BIT(SCMI_CLK_RATE_CTRL_SUPPORTED);
+
+	if (!ci->parent_ctrl_forbidden)
+		feats_key |= BIT(SCMI_CLK_PARENT_CTRL_SUPPORTED);
+
+	if (ci->extended_config) {
+		ret = scmi_proto_clk_ops->config_oem_get(sclk->ph, sclk->id,
+						 SCMI_CLOCK_CFG_DUTY_CYCLE,
+						 &val, NULL, false);
+		if (!ret)
+			feats_key |= BIT(SCMI_CLK_DUTY_CYCLE_SUPPORTED);
+	}
+
+	if (WARN_ON(feats_key >= db_size))
+		return NULL;
+
+	/* Lookup previously allocated ops */
+	ops = clk_ops_db[feats_key];
+	if (ops)
+		return ops;
+
+	/* Did not find a pre-allocated clock_ops */
+	ops = scmi_clk_ops_alloc(sclk->dev, feats_key);
+	if (!ops)
+		return NULL;
+
+	/* Store new ops combinations */
+	clk_ops_db[feats_key] = ops;
+
+	return ops;
 }
 
 static int scmi_clocks_probe(struct scmi_device *sdev)
 {
 	int idx, count, err;
-	unsigned int atomic_threshold;
-	bool is_atomic;
+	unsigned int atomic_threshold_us;
+	bool transport_is_atomic;
 	struct clk_hw **hws;
 	struct clk_hw_onecell_data *clk_data;
 	struct device *dev = &sdev->dev;
 	struct device_node *np = dev->of_node;
 	const struct scmi_handle *handle = sdev->handle;
 	struct scmi_protocol_handle *ph;
+	const struct clk_ops *scmi_clk_ops_db[SCMI_MAX_CLK_OPS] = {};
 	struct scmi_clk *sclks;
 
 	if (!handle)
@@ -224,15 +373,15 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 	clk_data->num = count;
 	hws = clk_data->hws;
 
-	is_atomic = handle->is_transport_atomic(handle, &atomic_threshold);
+	transport_is_atomic = handle->is_transport_atomic(handle,
+							  &atomic_threshold_us);
 
-	sclks = devm_kzalloc(dev, sizeof(*sclks) * count, GFP_KERNEL);
+	sclks = devm_kcalloc(dev, count, sizeof(*sclks), GFP_KERNEL);
+	if (!sclks)
+		return -ENOMEM;
 
-	for (idx = 0; idx < count; idx++) {
-		struct scmi_clk *sclk = &sclks[idx];
-
-		hws[idx] = &sclk->hw;
-	}
+	for (idx = 0; idx < count; idx++)
+		hws[idx] = &sclks[idx].hw;
 
 	for (idx = 0; idx < count; idx++) {
 		struct scmi_clk *sclk = &sclks[idx];
@@ -241,22 +390,26 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 		sclk->info = scmi_proto_clk_ops->info_get(ph, idx);
 		if (!sclk->info) {
 			dev_dbg(dev, "invalid clock info for idx %d\n", idx);
+			hws[idx] = NULL;
 			continue;
 		}
 
 		sclk->id = idx;
 		sclk->ph = ph;
+		sclk->dev = dev;
 
 		/*
-		 * Note that when transport is atomic but SCMI protocol did not
-		 * specify (or support) an enable_latency associated with a
-		 * clock, we default to use atomic operations mode.
+		 * Note that the scmi_clk_ops_db is on the stack, not global,
+		 * because it cannot be shared between multiple probe-sequences
+		 * to avoid sharing the devm_ allocated clk_ops between multiple
+		 * SCMI clk driver instances.
 		 */
-		if (is_atomic &&
-		    sclk->info->enable_latency <= atomic_threshold)
-			scmi_ops = &scmi_atomic_clk_ops;
-		else
-			scmi_ops = &scmi_clk_ops;
+		scmi_ops = scmi_clk_ops_select(sclk, transport_is_atomic,
+					       atomic_threshold_us,
+					       scmi_clk_ops_db,
+					       ARRAY_SIZE(scmi_clk_ops_db));
+		if (!scmi_ops)
+			return -ENOMEM;
 
 		/* Initialize clock parent data. */
 		if (sclk->info->num_parents > 0) {
@@ -275,13 +428,11 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 		if (err) {
 			dev_err(dev, "failed to register clock %d\n", idx);
 			devm_kfree(dev, sclk->parent_data);
-			devm_kfree(dev, sclk);
 			hws[idx] = NULL;
 		} else {
 			dev_dbg(dev, "Registered clock:%s%s\n",
 				sclk->info->name,
-				scmi_ops == &scmi_atomic_clk_ops ?
-				" (atomic ops)" : "");
+				scmi_ops->enable ? " (atomic ops)" : "");
 		}
 	}
 
diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 2e4a15ffdb95..8622a8b6c9ea 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firmware/arm_scmi/clock.c?id=24a0ffefe3f097aa8fe6997a731a71487dd0721f
 /*
  * System Control and Management Interface (SCMI) Clock Protocol
  *
@@ -17,9 +18,22 @@ enum scmi_clock_protocol_cmd {
 	CLOCK_RATE_GET = 0x6,
 	CLOCK_CONFIG_SET = 0x7,
 	CLOCK_NAME_GET = 0x8,
+	CLOCK_CONFIG_GET = 0xB,
 	CLOCK_POSSIBLE_PARENTS_GET = 0xC,
 	CLOCK_PARENT_SET = 0xD,
 	CLOCK_PARENT_GET = 0xE,
+	CLOCK_GET_PERMISSIONS = 0xF,
+};
+
+#define CLOCK_STATE_CONTROL_ALLOWED	BIT(31)
+#define CLOCK_PARENT_CONTROL_ALLOWED	BIT(30)
+#define CLOCK_RATE_CONTROL_ALLOWED	BIT(29)
+
+enum clk_state {
+	CLK_STATE_DISABLE,
+	CLK_STATE_ENABLE,
+	CLK_STATE_RESERVED,
+	CLK_STATE_UNCHANGED,
 };
 
 struct scmi_msg_resp_clock_protocol_attributes {
@@ -30,9 +44,10 @@ struct scmi_msg_resp_clock_protocol_attributes {
 
 struct scmi_msg_resp_clock_attributes {
 	__le32 attributes;
-#define	CLOCK_ENABLE	BIT(0)
 #define SUPPORTS_EXTENDED_NAMES(x)		((x) & BIT(29))
 #define SUPPORTS_PARENT_CLOCK(x)		((x) & BIT(28))
+#define SUPPORTS_EXTENDED_CONFIG(x)		((x) & BIT(27))
+#define SUPPORTS_GET_PERMISSIONS(x)		((x) & BIT(1))
 	u8 name[SCMI_SHORT_NAME_MAX_SIZE];
 	__le32 clock_enable_latency;
 };
@@ -54,16 +69,32 @@ struct scmi_msg_clock_set_parent {
 	__le32 parent_id;
 };
 
+struct scmi_msg_clock_config_set {
+	__le32 id;
+	__le32 attributes;
+};
+
 /* Valid only from SCMI clock v2.1 */
 struct scmi_msg_clock_config_set_v2 {
 	__le32 id;
 	__le32 attributes;
+#define NULL_OEM_TYPE			0
+#define REGMASK_OEM_TYPE_SET		GENMASK(23, 16)
+#define REGMASK_CLK_STATE		GENMASK(1, 0)
 	__le32 oem_config_val;
 };
 
-struct scmi_clock_set_config {
+struct scmi_msg_clock_config_get {
 	__le32 id;
+	__le32 flags;
+#define REGMASK_OEM_TYPE_GET		GENMASK(7, 0)
+};
+
+struct scmi_msg_resp_clock_config_get {
 	__le32 attributes;
+	__le32 config;
+#define IS_CLK_ENABLED(x)		le32_get_bits((x), BIT(0))
+	__le32 oem_config_val;
 };
 
 struct scmi_msg_clock_describe_rates {
@@ -89,7 +120,6 @@ struct scmi_msg_resp_clock_describe_rates {
 
 struct scmi_clock_set_rate {
 	__le32 flags;
-#define CLOCK_SET_ASYNC		BIT(0)
 #define CLOCK_SET_IGNORE_RESP	BIT(1)
 #define CLOCK_SET_ROUND_UP	BIT(2)
 #define CLOCK_SET_ROUND_AUTO	BIT(3)
@@ -109,9 +139,24 @@ struct clock_info {
 	int num_clocks;
 	struct scmi_clock_info *clk;
 	int (*clock_config_set)(const struct scmi_protocol_handle *ph,
-				u32 clk_id, u32 config, bool atomic);
+				u32 clk_id, enum clk_state state,
+				enum scmi_clock_oem_config oem_type,
+				u32 oem_val, bool atomic);
+	int (*clock_config_get)(const struct scmi_protocol_handle *ph,
+				u32 clk_id, enum scmi_clock_oem_config oem_type,
+				u32 *attributes, bool *enabled, u32 *oem_val,
+				bool atomic);
 };
 
+static inline struct scmi_clock_info *
+scmi_clock_domain_lookup(struct clock_info *ci, u32 clk_id)
+{
+	if (clk_id >= ci->num_clocks)
+		return ERR_PTR(-EINVAL);
+
+	return ci->clk + clk_id;
+}
+
 static int
 scmi_clock_protocol_attributes_get(const struct scmi_protocol_handle *ph,
 				   struct clock_info *ci)
@@ -132,6 +177,7 @@ scmi_clock_protocol_attributes_get(const struct scmi_protocol_handle *ph,
 		ci->num_clocks = le16_to_cpu(attr->num_clocks);
 
 	ph->xops->xfer_put(ph, t);
+
 	return ret;
 }
 
@@ -227,14 +273,44 @@ static int scmi_clock_possible_parents(const struct scmi_protocol_handle *ph, u3
 	return ret;
 }
 
+static int
+scmi_clock_get_permissions(const struct scmi_protocol_handle *ph, u32 clk_id,
+			   struct scmi_clock_info *clk)
+{
+	struct scmi_xfer *t;
+	u32 perm;
+	int ret;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_GET_PERMISSIONS,
+				      sizeof(clk_id), sizeof(perm), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(clk_id, t->tx.buf);
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		perm = get_unaligned_le32(t->rx.buf);
+
+		clk->state_ctrl_forbidden = !(perm & CLOCK_STATE_CONTROL_ALLOWED);
+		clk->rate_ctrl_forbidden = !(perm & CLOCK_RATE_CONTROL_ALLOWED);
+		clk->parent_ctrl_forbidden = !(perm & CLOCK_PARENT_CONTROL_ALLOWED);
+	}
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
 static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
-				     u32 clk_id, struct scmi_clock_info *clk,
-				     u32 version)
+				     u32 clk_id, struct clock_info *cinfo)
 {
 	int ret;
 	u32 attributes;
+	u32 version = cinfo->version;
 	struct scmi_xfer *t;
 	struct scmi_msg_resp_clock_attributes *attr;
+	struct scmi_clock_info *clk = cinfo->clk + clk_id;
 
 	ret = ph->xops->xfer_get_init(ph, CLOCK_ATTRIBUTES,
 				      sizeof(clk_id), sizeof(*attr), &t);
@@ -247,6 +323,7 @@ static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
 	ret = ph->xops->do_xfer(ph, t);
 	if (!ret) {
 		u32 latency = 0;
+
 		attributes = le32_to_cpu(attr->attributes);
 		strscpy(clk->name, attr->name, SCMI_SHORT_NAME_MAX_SIZE);
 		/* clock_enable_latency field is present only since SCMI v3.1 */
@@ -267,8 +344,14 @@ static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
 						    clk->name,
 						    SCMI_MAX_STR_SIZE);
 
-		if (SUPPORTS_PARENT_CLOCK(attributes))
-			scmi_clock_possible_parents(ph, clk_id, clk);
+		if (PROTOCOL_REV_MAJOR(version) >= 0x3) {
+			if (SUPPORTS_PARENT_CLOCK(attributes))
+				scmi_clock_possible_parents(ph, clk_id, clk);
+			if (SUPPORTS_GET_PERMISSIONS(attributes))
+				scmi_clock_get_permissions(ph, clk_id, clk);
+			if (SUPPORTS_EXTENDED_CONFIG(attributes))
+				clk->extended_config = true;
+		}
 	}
 
 	return ret;
@@ -315,8 +398,8 @@ iter_clk_describe_update_state(struct scmi_iterator_state *st,
 	if (!p->clk->rate_discrete &&
 	    (st->num_returned != 3 || st->num_remaining != 0)) {
 		dev_warn(p->dev,
-			 "Out-of-spec CLOCK_DESCRIBE_RATES reply for %pC - returned:%d remaining:%d rx_len:%zd\n",
-			 p->clk, st->num_returned, st->num_remaining,
+			 "Out-of-spec CLOCK_DESCRIBE_RATES reply for %s - returned:%d remaining:%d rx_len:%zd\n",
+			 p->clk->name, st->num_returned, st->num_remaining,
 			 st->rx_len);
 
 		/*
@@ -437,15 +520,25 @@ static int scmi_clock_rate_set(const struct scmi_protocol_handle *ph,
 			       u32 clk_id, u64 rate)
 {
 	int ret;
+	u32 flags = 0;
 	struct scmi_xfer *t;
 	struct scmi_clock_set_rate *cfg;
+	struct clock_info *ci = ph->get_priv(ph);
+	struct scmi_clock_info *clk;
+
+	clk = scmi_clock_domain_lookup(ci, clk_id);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	if (clk->rate_ctrl_forbidden)
+		return -EACCES;
 
 	ret = ph->xops->xfer_get_init(ph, CLOCK_RATE_SET, sizeof(*cfg), 0, &t);
 	if (ret)
 		return ret;
 
 	cfg = t->tx.buf;
-	cfg->flags = cpu_to_le32(0);
+	cfg->flags = cpu_to_le32(flags);
 	cfg->id = cpu_to_le32(clk_id);
 	cfg->value_low = cpu_to_le32(rate & 0xffffffff);
 	cfg->value_high = cpu_to_le32(rate >> 32);
@@ -458,11 +551,16 @@ static int scmi_clock_rate_set(const struct scmi_protocol_handle *ph,
 
 static int
 scmi_clock_config_set(const struct scmi_protocol_handle *ph, u32 clk_id,
-		      u32 config, bool atomic)
+		      enum clk_state state,
+		      enum scmi_clock_oem_config __unused0, u32 __unused1,
+		      bool atomic)
 {
 	int ret;
 	struct scmi_xfer *t;
-	struct scmi_clock_set_config *cfg;
+	struct scmi_msg_clock_config_set *cfg;
+
+	if (state >= CLK_STATE_RESERVED)
+		return -EINVAL;
 
 	ret = ph->xops->xfer_get_init(ph, CLOCK_CONFIG_SET,
 				      sizeof(*cfg), 0, &t);
@@ -471,7 +569,7 @@ scmi_clock_config_set(const struct scmi_protocol_handle *ph, u32 clk_id,
 
 	cfg = t->tx.buf;
 	cfg->id = cpu_to_le32(clk_id);
-	cfg->attributes = cpu_to_le32(config);
+	cfg->attributes = cpu_to_le32(state);
 
 	ret = ph->xops->do_xfer(ph, t);
 
@@ -479,59 +577,6 @@ scmi_clock_config_set(const struct scmi_protocol_handle *ph, u32 clk_id,
 	return ret;
 }
 
-static int scmi_clock_enable(const struct scmi_protocol_handle *ph, u32 clk_id)
-{
-	struct clock_info *ci = ph->get_priv(ph);
-
-	return ci->clock_config_set(ph, clk_id, CLOCK_ENABLE, false);
-}
-
-static int scmi_clock_disable(const struct scmi_protocol_handle *ph, u32 clk_id)
-{
-	struct clock_info *ci = ph->get_priv(ph);
-
-	return ci->clock_config_set(ph, clk_id, 0, false);
-}
-
-static int scmi_clock_enable_atomic(const struct scmi_protocol_handle *ph,
-				    u32 clk_id)
-{
-	struct clock_info *ci = ph->get_priv(ph);
-
-	return ci->clock_config_set(ph, clk_id, CLOCK_ENABLE, true);
-}
-
-static int scmi_clock_disable_atomic(const struct scmi_protocol_handle *ph,
-				     u32 clk_id)
-{
-	struct clock_info *ci = ph->get_priv(ph);
-
-	return ci->clock_config_set(ph, clk_id, 0, true);
-}
-
-static int scmi_clock_count_get(const struct scmi_protocol_handle *ph)
-{
-	struct clock_info *ci = ph->get_priv(ph);
-
-	return ci->num_clocks;
-}
-
-static const struct scmi_clock_info *
-scmi_clock_info_get(const struct scmi_protocol_handle *ph, u32 clk_id)
-{
-	struct scmi_clock_info *clk;
-	struct clock_info *ci = ph->get_priv(ph);
-
-	if (clk_id >= ci->num_clocks)
-		return NULL;
-
-	clk = ci->clk + clk_id;
-	if (!clk->name[0])
-		return NULL;
-
-	return clk;
-}
-
 static int
 scmi_clock_set_parent(const struct scmi_protocol_handle *ph, u32 clk_id,
 		      u32 parent_id)
@@ -542,14 +587,16 @@ scmi_clock_set_parent(const struct scmi_protocol_handle *ph, u32 clk_id,
 	struct clock_info *ci = ph->get_priv(ph);
 	struct scmi_clock_info *clk;
 
-	if (clk_id >= ci->num_clocks)
-		return -EINVAL;
-
-	clk = ci->clk + clk_id;
+	clk = scmi_clock_domain_lookup(ci, clk_id);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
 
 	if (parent_id >= clk->num_parents)
 		return -EINVAL;
 
+	if (clk->parent_ctrl_forbidden)
+		return -EACCES;
+
 	ret = ph->xops->xfer_get_init(ph, CLOCK_PARENT_SET,
 				      sizeof(*cfg), 0, &t);
 	if (ret)
@@ -591,22 +638,34 @@ scmi_clock_get_parent(const struct scmi_protocol_handle *ph, u32 clk_id,
 /* For SCMI clock v3.0 and onwards */
 static int
 scmi_clock_config_set_v2(const struct scmi_protocol_handle *ph, u32 clk_id,
-			 u32 config, bool atomic)
+			 enum clk_state state,
+			 enum scmi_clock_oem_config oem_type, u32 oem_val,
+			 bool atomic)
 {
 	int ret;
+	u32 attrs;
 	struct scmi_xfer *t;
 	struct scmi_msg_clock_config_set_v2 *cfg;
 
+	if (state == CLK_STATE_RESERVED ||
+	    (!oem_type && state == CLK_STATE_UNCHANGED))
+		return -EINVAL;
+
 	ret = ph->xops->xfer_get_init(ph, CLOCK_CONFIG_SET,
 				      sizeof(*cfg), 0, &t);
 	if (ret)
 		return ret;
 
+	attrs = FIELD_PREP(REGMASK_OEM_TYPE_SET, oem_type) |
+		 FIELD_PREP(REGMASK_CLK_STATE, state);
+
 	cfg = t->tx.buf;
 	cfg->id = cpu_to_le32(clk_id);
-	cfg->attributes = cpu_to_le32(config);
+	cfg->attributes = cpu_to_le32(attrs);
 	/* Clear in any case */
 	cfg->oem_config_val = cpu_to_le32(0);
+	if (oem_type)
+		cfg->oem_config_val = cpu_to_le32(oem_val);
 
 	ret = ph->xops->do_xfer(ph, t);
 
@@ -614,6 +673,180 @@ scmi_clock_config_set_v2(const struct scmi_protocol_handle *ph, u32 clk_id,
 	return ret;
 }
 
+static int scmi_clock_enable(const struct scmi_protocol_handle *ph, u32 clk_id,
+			     bool atomic)
+{
+	struct clock_info *ci = ph->get_priv(ph);
+	struct scmi_clock_info *clk;
+
+	clk = scmi_clock_domain_lookup(ci, clk_id);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	if (clk->state_ctrl_forbidden)
+		return -EACCES;
+
+	return ci->clock_config_set(ph, clk_id, CLK_STATE_ENABLE,
+				    NULL_OEM_TYPE, 0, atomic);
+}
+
+static int scmi_clock_disable(const struct scmi_protocol_handle *ph, u32 clk_id,
+			      bool atomic)
+{
+	struct clock_info *ci = ph->get_priv(ph);
+	struct scmi_clock_info *clk;
+
+	clk = scmi_clock_domain_lookup(ci, clk_id);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	if (clk->state_ctrl_forbidden)
+		return -EACCES;
+
+	return ci->clock_config_set(ph, clk_id, CLK_STATE_DISABLE,
+				    NULL_OEM_TYPE, 0, atomic);
+}
+
+/* For SCMI clock v3.0 and onwards */
+static int
+scmi_clock_config_get_v2(const struct scmi_protocol_handle *ph, u32 clk_id,
+			 enum scmi_clock_oem_config oem_type, u32 *attributes,
+			 bool *enabled, u32 *oem_val, bool atomic)
+{
+	int ret;
+	u32 flags;
+	struct scmi_xfer *t;
+	struct scmi_msg_clock_config_get *cfg;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_CONFIG_GET,
+				      sizeof(*cfg), 0, &t);
+	if (ret)
+		return ret;
+
+	flags = FIELD_PREP(REGMASK_OEM_TYPE_GET, oem_type);
+
+	cfg = t->tx.buf;
+	cfg->id = cpu_to_le32(clk_id);
+	cfg->flags = cpu_to_le32(flags);
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		struct scmi_msg_resp_clock_config_get *resp = t->rx.buf;
+
+		if (attributes)
+			*attributes = le32_to_cpu(resp->attributes);
+
+		if (enabled)
+			*enabled = IS_CLK_ENABLED(resp->config);
+
+		if (oem_val && oem_type)
+			*oem_val = le32_to_cpu(resp->oem_config_val);
+	}
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+static int
+scmi_clock_config_get(const struct scmi_protocol_handle *ph, u32 clk_id,
+		      enum scmi_clock_oem_config oem_type, u32 *attributes,
+		      bool *enabled, u32 *oem_val, bool atomic)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_clock_attributes *resp;
+
+	if (!enabled)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_ATTRIBUTES,
+				      sizeof(clk_id), sizeof(*resp), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(clk_id, t->tx.buf);
+	resp = t->rx.buf;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		*enabled = IS_CLK_ENABLED(resp->attributes);
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+static int scmi_clock_state_get(const struct scmi_protocol_handle *ph,
+				u32 clk_id, bool *enabled, bool atomic)
+{
+	struct clock_info *ci = ph->get_priv(ph);
+
+	return ci->clock_config_get(ph, clk_id, NULL_OEM_TYPE, NULL,
+				    enabled, NULL, atomic);
+}
+
+static int scmi_clock_config_oem_set(const struct scmi_protocol_handle *ph,
+				     u32 clk_id,
+				     enum scmi_clock_oem_config oem_type,
+				     u32 oem_val, bool atomic)
+{
+	struct clock_info *ci = ph->get_priv(ph);
+	struct scmi_clock_info *clk;
+
+	clk = scmi_clock_domain_lookup(ci, clk_id);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	if (!clk->extended_config)
+		return -EOPNOTSUPP;
+
+	return ci->clock_config_set(ph, clk_id, CLK_STATE_UNCHANGED,
+				    oem_type, oem_val, atomic);
+}
+
+static int scmi_clock_config_oem_get(const struct scmi_protocol_handle *ph,
+				     u32 clk_id,
+				     enum scmi_clock_oem_config oem_type,
+				     u32 *oem_val, u32 *attributes, bool atomic)
+{
+	struct clock_info *ci = ph->get_priv(ph);
+	struct scmi_clock_info *clk;
+
+	clk = scmi_clock_domain_lookup(ci, clk_id);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	if (!clk->extended_config)
+		return -EOPNOTSUPP;
+
+	return ci->clock_config_get(ph, clk_id, oem_type, attributes,
+				    NULL, oem_val, atomic);
+}
+
+static int scmi_clock_count_get(const struct scmi_protocol_handle *ph)
+{
+	struct clock_info *ci = ph->get_priv(ph);
+
+	return ci->num_clocks;
+}
+
+static const struct scmi_clock_info *
+scmi_clock_info_get(const struct scmi_protocol_handle *ph, u32 clk_id)
+{
+	struct scmi_clock_info *clk;
+	struct clock_info *ci = ph->get_priv(ph);
+
+	clk = scmi_clock_domain_lookup(ci, clk_id);
+	if (IS_ERR(clk))
+		return NULL;
+
+	if (!clk->name[0])
+		return NULL;
+
+	return clk;
+}
+
 static const struct scmi_clk_proto_ops clk_proto_ops = {
 	.count_get = scmi_clock_count_get,
 	.info_get = scmi_clock_info_get,
@@ -621,8 +854,9 @@ static const struct scmi_clk_proto_ops clk_proto_ops = {
 	.rate_set = scmi_clock_rate_set,
 	.enable = scmi_clock_enable,
 	.disable = scmi_clock_disable,
-	.enable_atomic = scmi_clock_enable_atomic,
-	.disable_atomic = scmi_clock_disable_atomic,
+	.state_get = scmi_clock_state_get,
+	.config_oem_get = scmi_clock_config_oem_get,
+	.config_oem_set = scmi_clock_config_oem_set,
 	.parent_set = scmi_clock_set_parent,
 	.parent_get = scmi_clock_get_parent,
 };
@@ -653,20 +887,23 @@ static int scmi_clock_protocol_init(const struct scmi_protocol_handle *ph)
 	if (!cinfo->clk)
 		return -ENOMEM;
 
+	cinfo->version = version;
+
 	for (clkid = 0; clkid < cinfo->num_clocks; clkid++) {
 		struct scmi_clock_info *clk = cinfo->clk + clkid;
 
-		ret = scmi_clock_attributes_get(ph, clkid, clk, version);
+		ret = scmi_clock_attributes_get(ph, clkid, cinfo);
 		if (!ret)
 			scmi_clock_describe_rates_get(ph, clkid, clk);
 	}
 
-	cinfo->version = version;
-
-	if (PROTOCOL_REV_MAJOR(version) >= 0x3)
+	if (PROTOCOL_REV_MAJOR(version) >= 0x3) {
 		cinfo->clock_config_set = scmi_clock_config_set_v2;
-	else
+		cinfo->clock_config_get = scmi_clock_config_get_v2;
+	} else {
 		cinfo->clock_config_set = scmi_clock_config_set;
+		cinfo->clock_config_get = scmi_clock_config_get;
+	}
 
 	return ph->set_priv(ph, cinfo);
 }
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index b73b88cea94b..4d19384e934e 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -46,8 +46,10 @@ struct scmi_clock_info {
 	char name[SCMI_MAX_STR_SIZE];
 	unsigned int enable_latency;
 	bool rate_discrete;
-	bool rate_changed_notifications;
-	bool rate_change_requested_notifications;
+	bool state_ctrl_forbidden;
+	bool rate_ctrl_forbidden;
+	bool parent_ctrl_forbidden;
+	bool extended_config;
 	union {
 		struct {
 			int num_rates;
@@ -73,6 +75,13 @@ struct scmi_handle;
 struct scmi_device;
 struct scmi_protocol_handle;
 
+enum scmi_clock_oem_config {
+	SCMI_CLOCK_CFG_DUTY_CYCLE = 0x1,
+	SCMI_CLOCK_CFG_PHASE,
+	SCMI_CLOCK_CFG_OEM_START = 0x80,
+	SCMI_CLOCK_CFG_OEM_END = 0xFF,
+};
+
 /**
  * struct scmi_clk_proto_ops - represents the various operations provided
  *	by SCMI Clock Protocol
@@ -95,11 +104,18 @@ struct scmi_clk_proto_ops {
 			u64 *rate);
 	int (*rate_set)(const struct scmi_protocol_handle *ph, u32 clk_id,
 			u64 rate);
-	int (*enable)(const struct scmi_protocol_handle *ph, u32 clk_id);
-	int (*disable)(const struct scmi_protocol_handle *ph, u32 clk_id);
-	int (*enable_atomic)(const struct scmi_protocol_handle *ph, u32 clk_id);
-	int (*disable_atomic)(const struct scmi_protocol_handle *ph,
-			      u32 clk_id);
+	int (*enable)(const struct scmi_protocol_handle *ph, u32 clk_id,
+		      bool atomic);
+	int (*disable)(const struct scmi_protocol_handle *ph, u32 clk_id,
+		       bool atomic);
+	int (*state_get)(const struct scmi_protocol_handle *ph, u32 clk_id,
+			 bool *enabled, bool atomic);
+	int (*config_oem_get)(const struct scmi_protocol_handle *ph, u32 clk_id,
+			      enum scmi_clock_oem_config oem_type,
+			      u32 *oem_val, u32 *attributes, bool atomic);
+	int (*config_oem_set)(const struct scmi_protocol_handle *ph, u32 clk_id,
+			      enum scmi_clock_oem_config oem_type,
+			      u32 oem_val, bool atomic);
 	int (*parent_get)(const struct scmi_protocol_handle *ph, u32 clk_id, u32 *parent_id);
 	int (*parent_set)(const struct scmi_protocol_handle *ph, u32 clk_id, u32 parent_id);
 };
-- 
2.47.3



