Delivery-date: Mon, 06 Jan 2025 15:05:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjv-00HVz5-2I
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjs-0000sO-AF
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yCCLg3ImuN59iGUpAdtTRMrC00rpAU6nzGN4IkkCQZI=; b=hQ9TTKP75HmS2/m8I6Jp8Zh4mC
	RM2W8c0Ib8VtsUIxAwQ/TLWttAC/8iq/x56lUoFfNVlDQX21Xa6ikj9eVP7wokv7K2ZXLhi60YPS0
	Rs1+CU8sITcLjDaouePevCf04yvGInEyA6/WKnad+09SCImKH06WOabSUzL1OTX6mkMSNLs2x2kyo
	6i6h96FFhEhEzcJprNIq73n5PoV1c31DCRrdUrMaU+LQeCC2bF3p4aRdmo7ijYAWKjU4V9YdgW1e6
	IjCttS4wG8y4Yb88g6L+5cqifG9mzAGf8Eajtt/0wMcKzJ0trg1kvMISUgtDTaB0shV84MQ1U8uyp
	HJSgwE4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnjF-00000001V81-01K8;
	Mon, 06 Jan 2025 14:05:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngb-00000001Ubu-2ZTm
	for barebox@bombadil.infradead.org;
	Mon, 06 Jan 2025 14:02:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=yCCLg3ImuN59iGUpAdtTRMrC00rpAU6nzGN4IkkCQZI=; b=qxpxPznVBz9tiSb4F5RpQ8mvSm
	zFXLQ54F7u2ODi5DJtY1+lr3WJZk5zqmN29h5r7QIMMfox/dtfMevX73YWSa7YtPiorhiYtJ6IYYB
	Scwj83mEzCgnp1E5CYhMKzSjtxPrnCZzvnGNvpdz6Q+7JBEC3FPdjGv2I5Ft4OoTqjA2FpAWlkZZz
	+7ujR2nWXswsIxW91t82Pmsw9JPCahh8GvGEIKoT4ue1dWjnDoVTNPIcIF75wIygMLuTeYEtTg8g0
	QZExQTmas8/9sIKYvD8WGQyMx+4BN2gU1zYiPVYF82pFEki9YAoEqupDliFhR+zukG4ptrSWzMErV
	eFQsVwGg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngW-00000008wG1-2TGc
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngV-0008Bj-Bk; Mon, 06 Jan 2025 15:02:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-007B6r-1E;
	Mon, 06 Jan 2025 15:02:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1q;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-10-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=11040;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UGf5UxnWVwcoqsip9Y0l97tFT/VK4Czufsn1I3I0C2k=;
 b=jSJOZcQsL4jfx74vt4JQaDf9xgFNYxsqjCTzSNvB6oEKVfXr7sk59PADCmn3GQw3iL+JbLde6
 tA8CLXDTiUAC2zG5KgGGIZFUHt+yp9FOF9dHhVoG868vkFp5H8PiHRe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_140225_528959_C1C66004 
X-CRM114-Status: GOOD (  22.00  )
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
Subject: [PATCH v2 10/22] rproc: add K3 arm64 rproc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for starting the A53 cores from the Cortex-R5 core.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/remoteproc/ti_k3_arm64_rproc.c | 226 +++++++++++++++++++++++++++++++++
 drivers/remoteproc/ti_sci_proc.h       | 149 ++++++++++++++++++++++
 2 files changed, 375 insertions(+)

diff --git a/drivers/remoteproc/ti_k3_arm64_rproc.c b/drivers/remoteproc/ti_k3_arm64_rproc.c
new file mode 100644
index 0000000000..47fe570408
--- /dev/null
+++ b/drivers/remoteproc/ti_k3_arm64_rproc.c
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Texas Instruments' K3 ARM64 Remoteproc driver
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ *
+ */
+
+#include <driver.h>
+#include <linux/remoteproc.h>
+#include <linux/printk.h>
+#include <errno.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <of.h>
+#include <soc/ti/ti_sci_protocol.h>
+#include <pm_domain.h>
+#include <mach/k3/r5.h>
+
+#include "ti_sci_proc.h"
+
+#define INVALID_ID	0xffff
+
+#define GTC_CNTCR_REG	0x0
+#define GTC_CNTFID0_REG	0x20
+#define GTC_CNTR_EN	0x3
+
+/**
+ * struct k3_arm64_privdata - Structure representing Remote processor data.
+ * @rproc_pwrdmn:	rproc power domain data
+ * @rproc_rst:		rproc reset control data
+ * @sci:		Pointer to TISCI handle
+ * @tsp:		TISCI processor control helper structure
+ * @gtc_clk:		GTC clock description
+ * @gtc_base:		Timer base address.
+ */
+struct k3_arm64_privdata {
+	struct device *dev;
+	struct reset_control *rproc_rst;
+	struct ti_sci_proc tsp;
+	struct clk *gtc_clk;
+	void *gtc_base;
+	struct rproc *rproc;
+	struct device *cluster_pwrdmn;
+	struct device *rproc_pwrdmn;
+	struct device *gtc_pwrdmn;
+};
+
+/**
+ * k3_arm64_load() - Load up the Remote processor image
+ * @dev:	rproc device pointer
+ * @addr:	Address at which image is available
+ * @size:	size of the image
+ *
+ * Return: 0 if all goes good, else appropriate error message.
+ */
+static int k3_arm64_load(struct rproc *rproc, const struct firmware *fw)
+{
+	struct k3_arm64_privdata *priv = rproc->priv;
+	ulong gtc_rate;
+	int ret;
+
+	dev_dbg(priv->dev, "%s\n", __func__);
+
+	/* request for the processor */
+	ret = ti_sci_proc_request(&priv->tsp);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get_genpd(priv->gtc_pwrdmn);
+	if (ret)
+		return ret;
+
+	gtc_rate = clk_get_rate(priv->gtc_clk);
+	dev_dbg(priv->dev, "GTC RATE= %lu\n", gtc_rate);
+
+	/* Store the clock frequency down for GTC users to pick  up */
+	writel((u32)gtc_rate, priv->gtc_base + GTC_CNTFID0_REG);
+
+	/* Enable the timer before starting remote core */
+	writel(GTC_CNTR_EN, priv->gtc_base + GTC_CNTCR_REG);
+
+	/*
+	 * Setting the right clock frequency would have taken care by
+	 * assigned-clock-rates during the device probe. So no need to
+	 * set the frequency again here.
+	 */
+	if (priv->cluster_pwrdmn) {
+		ret = pm_runtime_resume_and_get_genpd(priv->cluster_pwrdmn);
+		if (ret)
+			return ret;
+	}
+
+	return ti_sci_proc_set_config(&priv->tsp, (unsigned long)fw->data, 0, 0);
+}
+
+/**
+ * k3_arm64_start() - Start the remote processor
+ * @dev:	rproc device pointer
+ *
+ * Return: 0 if all went ok, else return appropriate error
+ */
+static int k3_arm64_start(struct rproc *rproc)
+{
+	struct k3_arm64_privdata *priv = rproc->priv;
+	int ret;
+
+	dev_dbg(priv->dev, "%s\n", __func__);
+	ret = pm_runtime_resume_and_get_genpd(priv->rproc_pwrdmn);
+	if (ret)
+		return ret;
+
+	return ti_sci_proc_release(&priv->tsp);
+}
+
+static const struct rproc_ops k3_arm64_ops = {
+	.load = k3_arm64_load,
+	.start = k3_arm64_start,
+};
+
+static int ti_sci_proc_of_to_priv(struct k3_arm64_privdata *priv, struct ti_sci_proc *tsp)
+{
+	u32 val;
+	int ret;
+
+	tsp->sci = ti_sci_get_by_phandle(priv->dev, "ti,sci");
+	if (IS_ERR(tsp->sci)) {
+		dev_err(priv->dev, "ti_sci get failed: %ld\n", PTR_ERR(tsp->sci));
+		return PTR_ERR(tsp->sci);
+	}
+
+	ret = of_property_read_u32(priv->dev->of_node, "ti,sci-proc-id", &val);
+	if (ret) {
+		dev_err(priv->dev, "proc id not populated\n");
+		return -ENOENT;
+	}
+	tsp->proc_id = val;
+
+	ret = of_property_read_u32(priv->dev->of_node, "ti,sci-host-id", &val);
+	if (ret)
+		val = INVALID_ID;
+
+	tsp->host_id = val;
+
+	tsp->ops = &tsp->sci->ops.proc_ops;
+
+	return 0;
+}
+
+static struct rproc *ti_k3_am64_rproc;
+
+struct rproc *ti_k3_am64_get_handle(void)
+{
+	struct device_node *np;
+
+	np = of_find_compatible_node(NULL, NULL, "ti,am654-rproc");
+	if (!np)
+		return ERR_PTR(-ENODEV);
+        of_device_ensure_probed(np);
+
+	return ti_k3_am64_rproc;
+}
+
+
+static int ti_k3_rproc_probe(struct device *dev)
+{
+	struct k3_arm64_privdata *priv;
+	struct rproc *rproc;
+	int ret;
+
+	dev_dbg(dev, "%s\n", __func__);
+
+	rproc = rproc_alloc(dev, dev_name(dev), &k3_arm64_ops, sizeof(*priv));
+	if (!rproc)
+		return -ENOMEM;
+
+	priv = rproc->priv;
+	priv->dev = dev;
+
+	priv->cluster_pwrdmn = dev_pm_domain_attach_by_id(dev, 2);
+	if (IS_ERR(priv->cluster_pwrdmn))
+		priv->cluster_pwrdmn = NULL;
+
+	priv->rproc_pwrdmn = dev_pm_domain_attach_by_id(dev, 1);
+	if (IS_ERR(priv->rproc_pwrdmn))
+		return dev_err_probe(dev, PTR_ERR(priv->rproc_pwrdmn), "no rproc pm domain\n");
+
+	priv->gtc_pwrdmn = dev_pm_domain_attach_by_id(dev, 0);
+	if (IS_ERR(priv->gtc_pwrdmn))
+		return dev_err_probe(dev, PTR_ERR(priv->gtc_pwrdmn), "no gtc pm domain\n");
+
+	priv->gtc_clk = clk_get(dev, 0);
+	if (IS_ERR(priv->gtc_clk))
+		return dev_err_probe(dev, PTR_ERR(priv->gtc_clk), "No clock\n");
+
+	ret = ti_sci_proc_of_to_priv(priv, &priv->tsp);
+	if (ret)
+		return ret;
+
+	priv->gtc_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(priv->gtc_base))
+		return dev_err_probe(dev, PTR_ERR(priv->gtc_base), "No iomem\n");
+
+	ret = rproc_add(rproc);
+	if (ret)
+		return dev_err_probe(dev, ret, "rproc_add failed\n");
+
+	ti_k3_am64_rproc = rproc;
+
+	dev_dbg(dev, "Remoteproc successfully probed\n");
+
+	return 0;
+}
+
+static const struct of_device_id k3_arm64_ids[] = {
+	{ .compatible = "ti,am654-rproc"},
+	{}
+};
+
+static struct driver ti_k3_arm64_rproc_driver = {
+        .name = "ti-k3-rproc",
+        .probe = ti_k3_rproc_probe,
+        .of_compatible = DRV_OF_COMPAT(k3_arm64_ids),
+};
+device_platform_driver(ti_k3_arm64_rproc_driver);
diff --git a/drivers/remoteproc/ti_sci_proc.h b/drivers/remoteproc/ti_sci_proc.h
new file mode 100644
index 0000000000..980f5188dd
--- /dev/null
+++ b/drivers/remoteproc/ti_sci_proc.h
@@ -0,0 +1,149 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Texas Instruments TI-SCI Processor Controller Helper Functions
+ *
+ * Copyright (C) 2018-2019 Texas Instruments Incorporated - https://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ *	Suman Anna <s-anna@ti.com>
+ */
+
+#ifndef REMOTEPROC_TI_SCI_PROC_H
+#define REMOTEPROC_TI_SCI_PROC_H
+
+#include <linux/printk.h>
+#define TISCI_INVALID_HOST 0xff
+
+/**
+ * struct ti_sci_proc - structure representing a processor control client
+ * @sci: cached TI-SCI protocol handle
+ * @ops: cached TI-SCI proc ops
+ * @proc_id: processor id for the consumer remoteproc device
+ * @host_id: host id to pass the control over for this consumer remoteproc
+ *	     device
+ * @dev_id: Device ID as identified by system controller.
+ */
+struct ti_sci_proc {
+	const struct ti_sci_handle *sci;
+	const struct ti_sci_proc_ops *ops;
+	u8 proc_id;
+	u8 host_id;
+	u16 dev_id;
+};
+
+static inline int ti_sci_proc_request(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	pr_debug("%s: proc_id = %d\n", __func__, tsp->proc_id);
+
+	ret = tsp->ops->proc_request(tsp->sci, tsp->proc_id);
+	if (ret)
+		pr_err("ti-sci processor request failed: %d\n", ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_release(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	pr_debug("%s: proc_id = %d\n", __func__, tsp->proc_id);
+
+	if (tsp->host_id != TISCI_INVALID_HOST)
+		ret = tsp->ops->proc_handover(tsp->sci, tsp->proc_id,
+					      tsp->host_id);
+	else
+		ret = tsp->ops->proc_release(tsp->sci, tsp->proc_id);
+
+	if (ret)
+		pr_err("ti-sci processor release failed: %d\n", ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_handover(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	pr_debug("%s: proc_id = %d\n", __func__, tsp->proc_id);
+
+	ret = tsp->ops->proc_handover(tsp->sci, tsp->proc_id, tsp->host_id);
+	if (ret)
+		pr_err("ti-sci processor handover of %d to %d failed: %d\n",
+		       tsp->proc_id, tsp->host_id, ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_get_status(struct ti_sci_proc *tsp,
+					 u64 *boot_vector, u32 *cfg_flags,
+					 u32 *ctrl_flags, u32 *status_flags)
+{
+	int ret;
+
+	ret = tsp->ops->get_proc_boot_status(tsp->sci, tsp->proc_id,
+					     boot_vector, cfg_flags, ctrl_flags,
+					     status_flags);
+	if (ret)
+		pr_err("ti-sci processor get_status failed: %d\n", ret);
+
+	pr_debug("%s: proc_id = %d, boot_vector = 0x%llx, cfg_flags = 0x%x, ctrl_flags = 0x%x, sts = 0x%x\n",
+	      __func__, tsp->proc_id, *boot_vector, *cfg_flags, *ctrl_flags,
+	      *status_flags);
+	return ret;
+}
+
+static inline int ti_sci_proc_set_config(struct ti_sci_proc *tsp,
+					 u64 boot_vector,
+					 u32 cfg_set, u32 cfg_clr)
+{
+	int ret;
+
+	pr_debug("%s: proc_id = %d, boot_vector = 0x%llx, cfg_set = 0x%x, cfg_clr = 0x%x\n",
+	      __func__, tsp->proc_id, boot_vector, cfg_set, cfg_clr);
+
+	ret = tsp->ops->set_proc_boot_cfg(tsp->sci, tsp->proc_id, boot_vector,
+					  cfg_set, cfg_clr);
+	if (ret)
+		pr_err("ti-sci processor set_config failed: %d\n", ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_set_control(struct ti_sci_proc *tsp,
+					  u32 ctrl_set, u32 ctrl_clr)
+{
+	int ret;
+
+	pr_debug("%s: proc_id = %d, ctrl_set = 0x%x, ctrl_clr = 0x%x\n", __func__,
+	      tsp->proc_id, ctrl_set, ctrl_clr);
+
+	ret = tsp->ops->set_proc_boot_ctrl(tsp->sci, tsp->proc_id, ctrl_set,
+					   ctrl_clr);
+	if (ret)
+		pr_err("ti-sci processor set_control failed: %d\n", ret);
+	return ret;
+}
+
+static inline int ti_sci_proc_power_domain_on(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	pr_debug("%s: dev_id = %d\n", __func__, tsp->dev_id);
+
+	ret = tsp->sci->ops.dev_ops.get_device_exclusive(tsp->sci, tsp->dev_id);
+	if (ret)
+		pr_err("Power-domain on failed for dev = %d\n", tsp->dev_id);
+
+	return ret;
+}
+
+static inline int ti_sci_proc_power_domain_off(struct ti_sci_proc *tsp)
+{
+	int ret;
+
+	pr_debug("%s: dev_id = %d\n", __func__, tsp->dev_id);
+
+	ret = tsp->sci->ops.dev_ops.put_device(tsp->sci, tsp->dev_id);
+	if (ret)
+		pr_err("Power-domain off failed for dev = %d\n", tsp->dev_id);
+
+	return ret;
+}
+#endif /* REMOTEPROC_TI_SCI_PROC_H */

-- 
2.39.5



