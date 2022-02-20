Delivery-date: Sun, 20 Feb 2022 13:49:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlez-004wwI-6d
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlev-0001TF-6s
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkdbEXhRjW327YHS9JICnZJ/N2LU+igy+S8HJdWr/+Q=; b=VbYIu1YUOToB3/
	UN6NU4dj3S6mMXpuQE8IUF56UsKzyrHBdN4FRibC/vSj3rKXQeVPCxwldBEMIHabW7rBTV3j7IxX+
	x7Eg9g3n6e+BZ8WNumUK+V1b2NyaTlvHDc41SmeZOcbd4flWPHfMT0jr2Kj53jAX5h/VyXgjklQNr
	txy/OxzbO8zT7fE7UPtKB7C6Ap90CK0rXnawukfVrHYos8ZPkCU2c/GW5L/LWwIwje+ghyYb61SuM
	reoaO0tlnECu2NiQFh3BRsicV+wyC1IXiwEBGK6yalIm/mJ/YF/G7RG3D/yvfbt9GnVW4o3bZ/xYI
	Q3qdYEglS1Le9wSomduw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldT-001IGq-F2; Sun, 20 Feb 2022 12:48:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I18-KY
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a7-LW; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoPx-AG; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:26 +0100
Message-Id: <20220220124736.3052502-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044747_048154_E9B02F9F 
X-CRM114-Status: GOOD (  29.34  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/24] clk: add SCMI clock driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import the Linux v5.13 state of the SCMI clock protocol driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/Kconfig                |  11 +
 drivers/clk/Makefile               |   1 +
 drivers/clk/clk-scmi.c             | 192 +++++++++++++++
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/clock.c  | 374 +++++++++++++++++++++++++++++
 drivers/firmware/arm_scmi/common.h |   1 +
 drivers/firmware/arm_scmi/driver.c |   1 +
 7 files changed, 581 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-scmi.c
 create mode 100644 drivers/firmware/arm_scmi/clock.c

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index e01ffe10f249..5b5acf4e0656 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -20,10 +20,21 @@ config CLK_SOCFPGA
 	select COMMON_CLK_OF_PROVIDER
 	default y if ARCH_SOCFPGA && OFDEVICE
 
+
 config COMMON_CLK_STM32F
 	bool "STM32F4 and STM32F7 clock driver" if COMPILE_TEST
 	depends on COMMON_CLK && ARCH_STM32
 	help
 	  Support for stm32f4 and stm32f7 SoC families clocks
 
+config COMMON_CLK_SCMI
+	tristate "Clock driver controlled via SCMI interface"
+	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
+	help
+	  This driver provides support for clocks that are controlled
+	  by firmware that implements the SCMI interface.
+
+	  This driver uses SCMI Message Protocol to interact with the
+	  firmware providing all the clock controls.
+
 source "drivers/clk/sifive/Kconfig"
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index c60b38ff6002..ee503c1edb5f 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -26,3 +26,4 @@ obj-$(CONFIG_CLK_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
 obj-$(CONFIG_COMMON_CLK_STM32F)		+= clk-stm32f4.o
 obj-$(CONFIG_MACH_RPI_COMMON)	+= clk-rpi.o
+obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
new file mode 100644
index 000000000000..9170dba393c4
--- /dev/null
+++ b/drivers/clk/clk-scmi.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Power Interface (SCMI) Protocol based clock driver
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <driver.h>
+#include <linux/err.h>
+#include <of.h>
+#include <linux/scmi_protocol.h>
+#include <linux/overflow.h>
+#include <linux/math64.h>
+
+static const struct scmi_clk_proto_ops *scmi_proto_clk_ops;
+
+struct scmi_clk {
+	u32 id;
+	struct clk_hw hw;
+	const struct scmi_clock_info *info;
+	const struct scmi_protocol_handle *ph;
+};
+
+#define to_scmi_clk(clk) container_of(clk, struct scmi_clk, hw)
+
+static unsigned long scmi_clk_recalc_rate(struct clk_hw *hw,
+					  unsigned long parent_rate)
+{
+	int ret;
+	u64 rate;
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	ret = scmi_proto_clk_ops->rate_get(clk->ph, clk->id, &rate);
+	if (ret)
+		return 0;
+	return rate;
+}
+
+static long scmi_clk_round_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long *parent_rate)
+{
+	u64 fmin, fmax, ftmp;
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	/*
+	 * We can't figure out what rate it will be, so just return the
+	 * rate back to the caller. scmi_clk_recalc_rate() will be called
+	 * after the rate is set and we'll know what rate the clock is
+	 * running at then.
+	 */
+	if (clk->info->rate_discrete)
+		return rate;
+
+	fmin = clk->info->range.min_rate;
+	fmax = clk->info->range.max_rate;
+	if (rate <= fmin)
+		return fmin;
+	else if (rate >= fmax)
+		return fmax;
+
+	ftmp = rate - fmin;
+	ftmp += clk->info->range.step_size - 1; /* to round up */
+	do_div(ftmp, clk->info->range.step_size);
+
+	return ftmp * clk->info->range.step_size + fmin;
+}
+
+static int scmi_clk_set_rate(struct clk_hw *hw, unsigned long rate,
+			     unsigned long parent_rate)
+{
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	return scmi_proto_clk_ops->rate_set(clk->ph, clk->id, rate);
+}
+
+static int scmi_clk_enable(struct clk_hw *hw)
+{
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	return scmi_proto_clk_ops->enable(clk->ph, clk->id);
+}
+
+static void scmi_clk_disable(struct clk_hw *hw)
+{
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	scmi_proto_clk_ops->disable(clk->ph, clk->id);
+}
+
+static const struct clk_ops scmi_clk_ops = {
+	.recalc_rate = scmi_clk_recalc_rate,
+	.round_rate = scmi_clk_round_rate,
+	.set_rate = scmi_clk_set_rate,
+	/*
+	 * Unlike Linux, we can provide enable/disable callback as everything
+	 * runs in atomic context.
+	 */
+	.enable = scmi_clk_enable,
+	.disable = scmi_clk_disable,
+};
+
+static int scmi_clk_ops_init(struct device_d *dev, struct scmi_clk *sclk)
+{
+	struct clk_init_data init = {
+		.flags = CLK_GET_RATE_NOCACHE,
+		.num_parents = 0,
+		.ops = &scmi_clk_ops,
+		.name = sclk->info->name,
+	};
+
+	sclk->hw.init = &init;
+	return clk_hw_register(dev, &sclk->hw);
+}
+
+static int scmi_clocks_probe(struct scmi_device *sdev)
+{
+	int idx, count, err;
+	struct clk **clks;
+	struct clk_onecell_data *clk_data;
+	struct device_d *dev = &sdev->dev;
+	struct device_node *np = dev->device_node;
+	const struct scmi_handle *handle = sdev->handle;
+	struct scmi_protocol_handle *ph;
+
+	if (!handle)
+		return -ENODEV;
+
+	scmi_proto_clk_ops =
+		handle->protocol_get(sdev, SCMI_PROTOCOL_CLOCK, &ph);
+	if (IS_ERR(scmi_proto_clk_ops))
+		return PTR_ERR(scmi_proto_clk_ops);
+
+	count = scmi_proto_clk_ops->count_get(ph);
+	if (count < 0) {
+		dev_err(dev, "%pOFn: invalid clock output count\n", np);
+		return -EINVAL;
+	}
+
+	clk_data = kzalloc(sizeof (*clk_data), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	clk_data->clk_num = count;
+	clks = clk_data->clks = calloc(clk_data->clk_num, sizeof(struct clk *));
+
+	for (idx = 0; idx < count; idx++) {
+		struct scmi_clk *sclk;
+
+		sclk = kzalloc(sizeof(*sclk), GFP_KERNEL);
+		if (!sclk)
+			return -ENOMEM;
+
+		sclk->info = scmi_proto_clk_ops->info_get(ph, idx);
+		if (!sclk->info) {
+			dev_dbg(dev, "invalid clock info for idx %d\n", idx);
+			continue;
+		}
+
+		sclk->id = idx;
+		sclk->ph = ph;
+
+		err = scmi_clk_ops_init(dev, sclk);
+		if (err) {
+			dev_err(dev, "failed to register clock %d\n", idx);
+			kfree(sclk);
+			clks[idx] = NULL;
+		} else {
+			dev_dbg(dev, "Registered clock:%s\n", sclk->info->name);
+			clks[idx] = &sclk->hw.clk;
+		}
+	}
+
+	return of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, clk_data);
+}
+
+static const struct scmi_device_id scmi_id_table[] = {
+	{ SCMI_PROTOCOL_CLOCK, "clocks" },
+	{ },
+};
+
+static struct scmi_driver scmi_clocks_driver = {
+	.name = "scmi-clocks",
+	.probe = scmi_clocks_probe,
+	.id_table = scmi_id_table,
+};
+core_scmi_driver(scmi_clocks_driver);
+
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI clock driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 510c0372a096..968a7eb7771e 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -3,7 +3,7 @@ scmi-bus-y = bus.o
 scmi-driver-y = driver.o
 scmi-transport-y = shmem.o
 scmi-transport-$(CONFIG_ARM_SMCCC) += smc.o
-scmi-protocols-y = base.o reset.o
+scmi-protocols-y = base.o reset.o clock.o
 
 scmi-module-objs := $(scmi-bus-y) $(scmi-driver-y) $(scmi-protocols-y) \
 		    $(scmi-transport-y)
diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
new file mode 100644
index 000000000000..8f9017206c1c
--- /dev/null
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -0,0 +1,374 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Clock Protocol
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+
+#include <common.h>
+#include <qsort.h>
+
+#include "common.h"
+
+enum scmi_clock_protocol_cmd {
+	CLOCK_ATTRIBUTES = 0x3,
+	CLOCK_DESCRIBE_RATES = 0x4,
+	CLOCK_RATE_SET = 0x5,
+	CLOCK_RATE_GET = 0x6,
+	CLOCK_CONFIG_SET = 0x7,
+};
+
+struct scmi_msg_resp_clock_protocol_attributes {
+	__le16 num_clocks;
+	u8 max_async_req;
+	u8 reserved;
+};
+
+struct scmi_msg_resp_clock_attributes {
+	__le32 attributes;
+#define	CLOCK_ENABLE	BIT(0)
+	    u8 name[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_clock_set_config {
+	__le32 id;
+	__le32 attributes;
+};
+
+struct scmi_msg_clock_describe_rates {
+	__le32 id;
+	__le32 rate_index;
+};
+
+struct scmi_msg_resp_clock_describe_rates {
+	__le32 num_rates_flags;
+#define NUM_RETURNED(x)		((x) & 0xfff)
+#define RATE_DISCRETE(x)	!((x) & BIT(12))
+#define NUM_REMAINING(x)	((x) >> 16)
+	struct {
+		__le32 value_low;
+		__le32 value_high;
+	} rate[0];
+#define RATE_TO_U64(X)		\
+({				\
+	typeof(X) x = (X);	\
+	le32_to_cpu((x).value_low) | (u64)le32_to_cpu((x).value_high) << 32; \
+})
+};
+
+struct scmi_clock_set_rate {
+	__le32 flags;
+#define CLOCK_SET_ASYNC		BIT(0)
+#define CLOCK_SET_IGNORE_RESP	BIT(1)
+#define CLOCK_SET_ROUND_UP	BIT(2)
+#define CLOCK_SET_ROUND_AUTO	BIT(3)
+	__le32 id;
+	__le32 value_low;
+	__le32 value_high;
+};
+
+struct clock_info {
+	u32 version;
+	int num_clocks;
+	int max_async_req;
+	unsigned cur_async_req;
+	struct scmi_clock_info *clk;
+};
+
+static int
+scmi_clock_protocol_attributes_get(const struct scmi_protocol_handle *ph,
+				   struct clock_info *ci)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_clock_protocol_attributes *attr;
+
+	ret = ph->xops->xfer_get_init(ph, PROTOCOL_ATTRIBUTES,
+				      0, sizeof(*attr), &t);
+	if (ret)
+		return ret;
+
+	attr = t->rx.buf;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		ci->num_clocks = le16_to_cpu(attr->num_clocks);
+		ci->max_async_req = attr->max_async_req;
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
+				     u32 clk_id, struct scmi_clock_info *clk)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_clock_attributes *attr;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_ATTRIBUTES,
+				      sizeof(clk_id), sizeof(*attr), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(clk_id, t->tx.buf);
+	attr = t->rx.buf;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		strlcpy(clk->name, attr->name, SCMI_MAX_STR_SIZE);
+	else
+		clk->name[0] = '\0';
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int rate_cmp_func(const void *_r1, const void *_r2)
+{
+	const u64 *r1 = _r1, *r2 = _r2;
+
+	if (*r1 < *r2)
+		return -1;
+	else if (*r1 == *r2)
+		return 0;
+	else
+		return 1;
+}
+
+static int
+scmi_clock_describe_rates_get(const struct scmi_protocol_handle *ph, u32 clk_id,
+			      struct scmi_clock_info *clk)
+{
+	u64 *rate = NULL;
+	int ret, cnt;
+	bool rate_discrete = false;
+	u32 tot_rate_cnt = 0, rates_flag;
+	u16 num_returned, num_remaining;
+	struct scmi_xfer *t;
+	struct scmi_msg_clock_describe_rates *clk_desc;
+	struct scmi_msg_resp_clock_describe_rates *rlist;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_DESCRIBE_RATES,
+				      sizeof(*clk_desc), 0, &t);
+	if (ret)
+		return ret;
+
+	clk_desc = t->tx.buf;
+	rlist = t->rx.buf;
+
+	do {
+		clk_desc->id = cpu_to_le32(clk_id);
+		/* Set the number of rates to be skipped/already read */
+		clk_desc->rate_index = cpu_to_le32(tot_rate_cnt);
+
+		ret = ph->xops->do_xfer(ph, t);
+		if (ret)
+			goto err;
+
+		rates_flag = le32_to_cpu(rlist->num_rates_flags);
+		num_remaining = NUM_REMAINING(rates_flag);
+		rate_discrete = RATE_DISCRETE(rates_flag);
+		num_returned = NUM_RETURNED(rates_flag);
+
+		if (tot_rate_cnt + num_returned > SCMI_MAX_NUM_RATES) {
+			dev_err(ph->dev, "No. of rates > MAX_NUM_RATES");
+			break;
+		}
+
+		if (!rate_discrete) {
+			clk->range.min_rate = RATE_TO_U64(rlist->rate[0]);
+			clk->range.max_rate = RATE_TO_U64(rlist->rate[1]);
+			clk->range.step_size = RATE_TO_U64(rlist->rate[2]);
+			dev_dbg(ph->dev, "Min %llu Max %llu Step %llu Hz\n",
+				clk->range.min_rate, clk->range.max_rate,
+				clk->range.step_size);
+			break;
+		}
+
+		rate = &clk->list.rates[tot_rate_cnt];
+		for (cnt = 0; cnt < num_returned; cnt++, rate++) {
+			*rate = RATE_TO_U64(rlist->rate[cnt]);
+			dev_dbg(ph->dev, "Rate %llu Hz\n", *rate);
+		}
+
+		tot_rate_cnt += num_returned;
+
+		ph->xops->reset_rx_to_maxsz(ph, t);
+		/*
+		 * check for both returned and remaining to avoid infinite
+		 * loop due to buggy firmware
+		 */
+	} while (num_returned && num_remaining);
+
+	if (rate_discrete && rate) {
+		clk->list.num_rates = tot_rate_cnt;
+		qsort(rate, tot_rate_cnt, sizeof(*rate), rate_cmp_func);
+	}
+
+	clk->rate_discrete = rate_discrete;
+
+err:
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int
+scmi_clock_rate_get(const struct scmi_protocol_handle *ph,
+		    u32 clk_id, u64 *value)
+{
+	int ret;
+	struct scmi_xfer *t;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_RATE_GET,
+				      sizeof(__le32), sizeof(u64), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(clk_id, t->tx.buf);
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		*value = get_unaligned_le64(t->rx.buf);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_clock_rate_set(const struct scmi_protocol_handle *ph,
+			       u32 clk_id, u64 rate)
+{
+	int ret;
+	u32 flags = 0;
+	struct scmi_xfer *t;
+	struct scmi_clock_set_rate *cfg;
+	struct clock_info *ci = ph->get_priv(ph);
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_RATE_SET, sizeof(*cfg), 0, &t);
+	if (ret)
+		return ret;
+
+	if (ci->max_async_req &&
+	    ci->cur_async_req++ < ci->max_async_req)
+		flags |= CLOCK_SET_ASYNC;
+
+	cfg = t->tx.buf;
+	cfg->flags = cpu_to_le32(flags);
+	cfg->id = cpu_to_le32(clk_id);
+	cfg->value_low = cpu_to_le32(rate & 0xffffffff);
+	cfg->value_high = cpu_to_le32(rate >> 32);
+
+	if (flags & CLOCK_SET_ASYNC)
+		ret = ph->xops->do_xfer_with_response(ph, t);
+	else
+		ret = ph->xops->do_xfer(ph, t);
+
+	if (ci->max_async_req)
+		ci->cur_async_req--;
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int
+scmi_clock_config_set(const struct scmi_protocol_handle *ph, u32 clk_id,
+		      u32 config)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_clock_set_config *cfg;
+
+	ret = ph->xops->xfer_get_init(ph, CLOCK_CONFIG_SET,
+				      sizeof(*cfg), 0, &t);
+	if (ret)
+		return ret;
+
+	cfg = t->tx.buf;
+	cfg->id = cpu_to_le32(clk_id);
+	cfg->attributes = cpu_to_le32(config);
+
+	ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_clock_enable(const struct scmi_protocol_handle *ph, u32 clk_id)
+{
+	return scmi_clock_config_set(ph, clk_id, CLOCK_ENABLE);
+}
+
+static int scmi_clock_disable(const struct scmi_protocol_handle *ph, u32 clk_id)
+{
+	return scmi_clock_config_set(ph, clk_id, 0);
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
+	struct clock_info *ci = ph->get_priv(ph);
+	struct scmi_clock_info *clk = ci->clk + clk_id;
+
+	if (!clk->name[0])
+		return NULL;
+
+	return clk;
+}
+
+static const struct scmi_clk_proto_ops clk_proto_ops = {
+	.count_get = scmi_clock_count_get,
+	.info_get = scmi_clock_info_get,
+	.rate_get = scmi_clock_rate_get,
+	.rate_set = scmi_clock_rate_set,
+	.enable = scmi_clock_enable,
+	.disable = scmi_clock_disable,
+};
+
+static int scmi_clock_protocol_init(const struct scmi_protocol_handle *ph)
+{
+	u32 version;
+	int clkid, ret;
+	struct clock_info *cinfo;
+
+	ph->xops->version_get(ph, &version);
+
+	dev_dbg(ph->dev, "Clock Version %d.%d\n",
+		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
+
+	cinfo = kzalloc(sizeof(*cinfo), GFP_KERNEL);
+	if (!cinfo)
+		return -ENOMEM;
+
+	scmi_clock_protocol_attributes_get(ph, cinfo);
+
+	cinfo->clk = kcalloc(cinfo->num_clocks, sizeof(*cinfo->clk), GFP_KERNEL);
+	if (!cinfo->clk)
+		return -ENOMEM;
+
+	for (clkid = 0; clkid < cinfo->num_clocks; clkid++) {
+		struct scmi_clock_info *clk = cinfo->clk + clkid;
+
+		ret = scmi_clock_attributes_get(ph, clkid, clk);
+		if (!ret)
+			scmi_clock_describe_rates_get(ph, clkid, clk);
+	}
+
+	cinfo->version = version;
+	return ph->set_priv(ph, cinfo);
+}
+
+static const struct scmi_protocol scmi_clock = {
+	.id = SCMI_PROTOCOL_CLOCK,
+	.instance_init = &scmi_clock_protocol_init,
+	.ops = &clk_proto_ops,
+};
+
+DEFINE_SCMI_PROTOCOL_REGISTER(clock, scmi_clock)
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index f1f6cdae5af2..7ac9fd1bc961 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -233,6 +233,7 @@ void __exit scmi_bus_exit(void);
 	int __init scmi_##func##_register(void);
 DECLARE_SCMI_REGISTER(base);
 DECLARE_SCMI_REGISTER(reset);
+DECLARE_SCMI_REGISTER(clock);
 
 #define DEFINE_SCMI_PROTOCOL_REGISTER(name, proto)	\
 static const struct scmi_protocol *__this_proto = &(proto);	\
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index d862e4de8afb..ca71e1a279ac 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1260,6 +1260,7 @@ static int __init scmi_bus_driver_init(void)
 	scmi_base_register();
 
 	scmi_reset_register();
+	scmi_clock_register();
 
 	return 0;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

