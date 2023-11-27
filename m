Delivery-date: Mon, 27 Nov 2023 07:43:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VL1-00AeMl-17
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:43:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VKs-00008F-PR
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:43:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xLYZGsakDaLnof9C8nrjlLaci4+YztJuaMazJnk0W7E=; b=qwmi1vUvK+G3N7TisRgj5Ya0lx
	LUobjDs0Cy6yuq4a67K8ExGTddwzQACNh5LQBriOQbLmBcgQOBJWEvTa8HLH2fGrePve9C6gZUoYj
	BbfWqkfsxaZtepzPjF0jZoM9G9ZvEfHS0fL2D6Zw+wmIZhBMOymnBeOmQ5qtS+Y3WIyJopb6e4kOh
	myTLkBSmxuRye8xZ0R4ChBh24wIsxxYduus2zHxCPKKKA/420imE9/DZl2os6o5Sn9W6cJcFY91TC
	YlWLNPTnwyN0ll7tMc2BiiKxAB1bd7Qt5EJp+LssAYQDuXwhBhZk/pTH6Rz9oL/dlnHVyl9MllKj9
	BRcmfLRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIU-001aCa-2B;
	Mon, 27 Nov 2023 06:40:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIL-001a7e-0I
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:40:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-0007xh-VH; Mon, 27 Nov 2023 07:40:35 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-00Bsha-Ia; Mon, 27 Nov 2023 07:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-009G6Z-1Q;
	Mon, 27 Nov 2023 07:40:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:40:29 +0100
Message-Id: <20231127064034.2206788-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
References: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 1/6] firmware: arm_scmi: sync with Linux v6.6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since our initial import of the ARM SCMI infrastructure in Linux, the
upstream driver has been extended to support SCMI via OP-TEE and arm_ffa
as well and also gained support for more function, including sensors
and power domains, which may be useful in barebox going forward.

Let's sync with Linux again and add the OP-TEE transport alongside the
existing SMC-based transport.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-scmi.c                     |  100 +-
 drivers/firmware/Kconfig                   |   12 +-
 drivers/firmware/arm_scmi/Kconfig          |   86 +
 drivers/firmware/arm_scmi/Makefile         |   18 +-
 drivers/firmware/arm_scmi/base.c           |   85 +-
 drivers/firmware/arm_scmi/bus.c            |  356 ++++-
 drivers/firmware/arm_scmi/clock.c          |  292 ++--
 drivers/firmware/arm_scmi/common.h         |  315 ++--
 drivers/firmware/arm_scmi/driver.c         | 1668 +++++++++++++-------
 drivers/firmware/arm_scmi/msg.c            |   93 ++
 drivers/firmware/arm_scmi/optee.c          |  614 +++++++
 drivers/firmware/arm_scmi/power.c          |  229 +++
 drivers/firmware/arm_scmi/protocols.h      |  325 ++++
 drivers/firmware/arm_scmi/reset.c          |   67 +-
 drivers/firmware/arm_scmi/scmi_pm_domain.c |  135 ++
 drivers/firmware/arm_scmi/sensors.c        |  936 +++++++++++
 drivers/firmware/arm_scmi/shmem.c          |   53 +-
 drivers/firmware/arm_scmi/smc.c            |   86 +-
 drivers/firmware/arm_scmi/voltage.c        |  204 ++-
 drivers/regulator/scmi-regulator.c         |   13 +-
 drivers/reset/reset-scmi.c                 |    2 +-
 include/linux/scmi_protocol.h              |   94 +-
 22 files changed, 4570 insertions(+), 1213 deletions(-)
 create mode 100644 drivers/firmware/arm_scmi/Kconfig
 create mode 100644 drivers/firmware/arm_scmi/msg.c
 create mode 100644 drivers/firmware/arm_scmi/optee.c
 create mode 100644 drivers/firmware/arm_scmi/power.c
 create mode 100644 drivers/firmware/arm_scmi/protocols.h
 create mode 100644 drivers/firmware/arm_scmi/scmi_pm_domain.c
 create mode 100644 drivers/firmware/arm_scmi/sensors.c

diff --git a/drivers/clk/clk-scmi.c b/drivers/clk/clk-scmi.c
index 55141a7b54eb..5c9f61ae0b6f 100644
--- a/drivers/clk/clk-scmi.c
+++ b/drivers/clk/clk-scmi.c
@@ -2,16 +2,15 @@
 /*
  * System Control and Power Interface (SCMI) Protocol based clock driver
  *
- * Copyright (C) 2018-2021 ARM Ltd.
+ * Copyright (C) 2018-2022 ARM Ltd.
  */
 
-#include <common.h>
 #include <linux/clk.h>
-#include <driver.h>
+#include <linux/device.h>
 #include <linux/err.h>
 #include <of.h>
+#include <module.h>
 #include <linux/scmi_protocol.h>
-#include <linux/overflow.h>
 #include <linux/math64.h>
 
 static const struct scmi_clk_proto_ops *scmi_proto_clk_ops;
@@ -89,24 +88,57 @@ static void scmi_clk_disable(struct clk_hw *hw)
 	scmi_proto_clk_ops->disable(clk->ph, clk->id);
 }
 
+static int scmi_clk_atomic_enable(struct clk_hw *hw)
+{
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	return scmi_proto_clk_ops->enable_atomic(clk->ph, clk->id);
+}
+
+static void scmi_clk_atomic_disable(struct clk_hw *hw)
+{
+	struct scmi_clk *clk = to_scmi_clk(hw);
+
+	scmi_proto_clk_ops->disable_atomic(clk->ph, clk->id);
+}
+
+/*
+ * We can provide enable/disable atomic callbacks only if the underlying SCMI
+ * transport for an SCMI instance is configured to handle SCMI commands in an
+ * atomic manner.
+ *
+ * When no SCMI atomic transport support is available we instead provide only
+ * the prepare/unprepare API, as allowed by the clock framework when atomic
+ * calls are not available.
+ *
+ * Two distinct sets of clk_ops are provided since we could have multiple SCMI
+ * instances with different underlying transport quality, so they cannot be
+ * shared.
+ */
 static const struct clk_ops scmi_clk_ops = {
 	.recalc_rate = scmi_clk_recalc_rate,
 	.round_rate = scmi_clk_round_rate,
 	.set_rate = scmi_clk_set_rate,
-	/*
-	 * Unlike Linux, we can provide enable/disable callback as everything
-	 * runs in atomic context.
-	 */
 	.enable = scmi_clk_enable,
 	.disable = scmi_clk_disable,
 };
 
-static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk)
+static const struct clk_ops scmi_atomic_clk_ops = {
+	.recalc_rate = scmi_clk_recalc_rate,
+	.round_rate = scmi_clk_round_rate,
+	.set_rate = scmi_clk_set_rate,
+	.enable = scmi_clk_atomic_enable,
+	.disable = scmi_clk_atomic_disable,
+};
+
+static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk,
+			     const struct clk_ops *scmi_ops)
 {
 	struct clk_init_data init = {
 		.flags = CLK_GET_RATE_NOCACHE,
+	
 		.num_parents = 0,
-		.ops = &scmi_clk_ops,
+		.ops = scmi_ops,
 		.name = sclk->info->name,
 	};
 
@@ -117,8 +149,10 @@ static int scmi_clk_ops_init(struct device *dev, struct scmi_clk *sclk)
 static int scmi_clocks_probe(struct scmi_device *sdev)
 {
 	int idx, count, err;
-	struct clk **clks;
-	struct clk_onecell_data *clk_data;
+	unsigned int atomic_threshold;
+	bool is_atomic;
+	struct clk_hw **hws;
+	struct clk_hw_onecell_data *clk_data;
 	struct device *dev = &sdev->dev;
 	struct device_node *np = dev->of_node;
 	const struct scmi_handle *handle = sdev->handle;
@@ -128,7 +162,7 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 		return -ENODEV;
 
 	scmi_proto_clk_ops =
-		handle->protocol_get(sdev, SCMI_PROTOCOL_CLOCK, &ph);
+		handle->dev_protocol_get(sdev, SCMI_PROTOCOL_CLOCK, &ph);
 	if (IS_ERR(scmi_proto_clk_ops))
 		return PTR_ERR(scmi_proto_clk_ops);
 
@@ -138,17 +172,21 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 		return -EINVAL;
 	}
 
-	clk_data = kzalloc(sizeof (*clk_data), GFP_KERNEL);
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, count),
+				GFP_KERNEL);
 	if (!clk_data)
 		return -ENOMEM;
 
-	clk_data->clk_num = count;
-	clks = clk_data->clks = calloc(clk_data->clk_num, sizeof(struct clk *));
+	clk_data->num = count;
+	hws = clk_data->hws;
+
+	is_atomic = handle->is_transport_atomic(handle, &atomic_threshold);
 
 	for (idx = 0; idx < count; idx++) {
 		struct scmi_clk *sclk;
+		const struct clk_ops *scmi_ops;
 
-		sclk = kzalloc(sizeof(*sclk), GFP_KERNEL);
+		sclk = devm_kzalloc(dev, sizeof(*sclk), GFP_KERNEL);
 		if (!sclk)
 			return -ENOMEM;
 
@@ -161,25 +199,39 @@ static int scmi_clocks_probe(struct scmi_device *sdev)
 		sclk->id = idx;
 		sclk->ph = ph;
 
-		err = scmi_clk_ops_init(dev, sclk);
+		/*
+		 * Note that when transport is atomic but SCMI protocol did not
+		 * specify (or support) an enable_latency associated with a
+		 * clock, we default to use atomic operations mode.
+		 */
+		if (is_atomic &&
+		    sclk->info->enable_latency <= atomic_threshold)
+			scmi_ops = &scmi_atomic_clk_ops;
+		else
+			scmi_ops = &scmi_clk_ops;
+
+		err = scmi_clk_ops_init(dev, sclk, scmi_ops);
 		if (err) {
 			dev_err(dev, "failed to register clock %d\n", idx);
-			kfree(sclk);
-			clks[idx] = NULL;
+			devm_kfree(dev, sclk);
+			hws[idx] = NULL;
 		} else {
-			dev_dbg(dev, "Registered clock:%s\n", sclk->info->name);
-			clks[idx] = &sclk->hw.clk;
+			dev_dbg(dev, "Registered clock:%s%s\n",
+				sclk->info->name,
+				scmi_ops == &scmi_atomic_clk_ops ?
+				" (atomic ops)" : "");
+			hws[idx] = &sclk->hw;
 		}
 	}
 
-	return of_clk_add_provider(dev->of_node, of_clk_src_onecell_get,
-				   clk_data);
+	return of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 }
 
 static const struct scmi_device_id scmi_id_table[] = {
 	{ SCMI_PROTOCOL_CLOCK, "clocks" },
 	{ },
 };
+MODULE_DEVICE_TABLE(scmi, scmi_id_table);
 
 static struct scmi_driver scmi_clocks_driver = {
 	.name = "scmi-clocks",
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index ee91b2b7fa6d..02eeea221cbb 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -23,16 +23,6 @@ config FIRMWARE_ZYNQMP_FPGA
 	help
 	  Load a bitstream to the PL of Zynq Ultrascale+
 
-config ARM_SCMI_PROTOCOL
-	tristate "ARM System Control and Management Interface (SCMI) Message Protocol"
-	depends on ARM || COMPILE_TEST
-	depends on ARM_SMCCC
-	select IDR
-	help
-	  ARM System Control and Management Interface (SCMI) protocol is a
-	  set of operating system-independent software interfaces that are
-	  used in system management.
-
 config QEMU_FW_CFG
 	bool "QEMU FW CFG interface"
 	help
@@ -58,4 +48,6 @@ config TI_SCI_PROTOCOL
 	  This protocol library is used by client drivers to use the features
 	  provided by the system controller.
 
+source "drivers/firmware/arm_scmi/Kconfig"
+
 endmenu
diff --git a/drivers/firmware/arm_scmi/Kconfig b/drivers/firmware/arm_scmi/Kconfig
new file mode 100644
index 000000000000..e14c1ede3619
--- /dev/null
+++ b/drivers/firmware/arm_scmi/Kconfig
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: GPL-2.0-only
+menu "ARM System Control and Management Interface Protocol"
+
+config ARM_SCMI_PROTOCOL
+	tristate "ARM System Control and Management Interface (SCMI) Message Protocol"
+	depends on ARM || ARM64 || COMPILE_TEST
+	select IDR
+	help
+	  ARM System Control and Management Interface (SCMI) protocol is a
+	  set of operating system-independent software interfaces that are
+	  used in system management. SCMI is extensible and currently provides
+	  interfaces for: Discovery and self-description of the interfaces
+	  it supports, Power domain management which is the ability to place
+	  a given device or domain into the various power-saving states that
+	  it supports, Performance management which is the ability to control
+	  the performance of a domain that is composed of compute engines
+	  such as application processors and other accelerators, Clock
+	  management which is the ability to set and inquire rates on platform
+	  managed clocks and Sensor management which is the ability to read
+	  sensor data.
+
+	  This protocol library provides interface for all the client drivers
+	  making use of the features offered by the SCMI.
+
+if ARM_SCMI_PROTOCOL
+
+config ARM_SCMI_HAVE_TRANSPORT
+	bool
+	help
+	  This declares whether at least one SCMI transport has been configured.
+	  Used to trigger a build bug when trying to build SCMI without any
+	  configured transport.
+
+config ARM_SCMI_HAVE_SHMEM
+	bool
+	help
+	  This declares whether a shared memory based transport for SCMI is
+	  available.
+
+config ARM_SCMI_HAVE_MSG
+	bool
+	help
+	  This declares whether a message passing based transport for SCMI is
+	  available.
+
+config ARM_SCMI_TRANSPORT_OPTEE
+	bool "SCMI transport based on OP-TEE service"
+	depends on OPTEE=y || OPTEE=ARM_SCMI_PROTOCOL
+	select ARM_SCMI_HAVE_TRANSPORT
+	select ARM_SCMI_HAVE_SHMEM
+	select ARM_SCMI_HAVE_MSG
+	default y
+	help
+	  This enables the OP-TEE service based transport for SCMI.
+
+	  If you want the ARM SCMI PROTOCOL stack to include support for a
+	  transport based on OP-TEE SCMI service, answer Y.
+
+config ARM_SCMI_TRANSPORT_SMC
+	bool "SCMI transport based on SMC"
+	select ARM_SMCCC
+	select ARM_SCMI_HAVE_TRANSPORT
+	select ARM_SCMI_HAVE_SHMEM
+	default y
+	help
+	  Enable SMC based transport for SCMI.
+
+	  If you want the ARM SCMI PROTOCOL stack to include support for a
+	  transport based on SMC, answer Y.
+
+endif #ARM_SCMI_PROTOCOL
+
+config ARM_SCMI_POWER_DOMAIN
+	tristate "SCMI power domain driver"
+	depends on ARM_SCMI_PROTOCOL || (COMPILE_TEST && OF)
+	default y
+	select PM_GENERIC_DOMAINS
+	help
+	  This enables support for the SCMI power domains which can be
+	  enabled or disabled via the SCP firmware
+
+	  This driver can also be built as a module.  If so, the module
+	  will be called scmi_pm_domain. Note this may needed early in boot
+	  before rootfs may be available.
+
+endmenu
diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 4b21e6609a1e..0054164e58b2 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -1,10 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0-only
 scmi-bus-y = bus.o
-scmi-driver-y = driver.o
-scmi-transport-y = shmem.o
-scmi-transport-$(CONFIG_ARM_SMCCC) += smc.o
-scmi-protocols-y = base.o reset.o clock.o voltage.o
+scmi-core-objs := $(scmi-bus-y)
 
-scmi-module-objs := $(scmi-bus-y) $(scmi-driver-y) $(scmi-protocols-y) \
-		    $(scmi-transport-y)
+scmi-driver-y = driver.o
+scmi-transport-$(CONFIG_ARM_SCMI_HAVE_SHMEM) = shmem.o
+scmi-transport-$(CONFIG_ARM_SCMI_TRANSPORT_SMC) += smc.o
+scmi-transport-$(CONFIG_ARM_SCMI_HAVE_MSG) += msg.o
+scmi-transport-$(CONFIG_ARM_SCMI_TRANSPORT_OPTEE) += optee.o
+scmi-protocols-y = base.o clock.o power.o reset.o sensors.o voltage.o
+scmi-module-objs := $(scmi-driver-y) $(scmi-protocols-y) $(scmi-transport-y)
+
+obj-$(CONFIG_ARM_SCMI_PROTOCOL) += scmi-core.o
 obj-$(CONFIG_ARM_SCMI_PROTOCOL) += scmi-module.o
+
+obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
index 06dd3ec135c8..439d8eb7b60a 100644
--- a/drivers/firmware/arm_scmi/base.c
+++ b/drivers/firmware/arm_scmi/base.c
@@ -5,7 +5,7 @@
  * Copyright (C) 2018-2021 ARM Ltd.
  */
 
-#define pr_fmt(fmt) "SCMI BASE - " fmt
+#define pr_fmt(fmt) "SCMI Notifications BASE - " fmt
 
 #include <common.h>
 #include <linux/scmi_protocol.h>
@@ -15,12 +15,6 @@
 #define SCMI_BASE_NUM_SOURCES		1
 #define SCMI_BASE_MAX_CMD_ERR_COUNT	1024
 
-struct scmi_msg_resp_base_attributes {
-	u8 num_protocols;
-	u8 num_agents;
-	__le16 reserved;
-};
-
 enum scmi_base_protocol_cmd {
 	BASE_DISCOVER_VENDOR = 0x3,
 	BASE_DISCOVER_SUB_VENDOR = 0x4,
@@ -33,6 +27,18 @@ enum scmi_base_protocol_cmd {
 	BASE_RESET_AGENT_CONFIGURATION = 0xb,
 };
 
+struct scmi_msg_resp_base_attributes {
+	u8 num_protocols;
+	u8 num_agents;
+	__le16 reserved;
+};
+
+struct scmi_msg_resp_base_discover_agent {
+	__le32 agent_id;
+	u8 name[SCMI_SHORT_NAME_MAX_SIZE];
+};
+
+
 /**
  * scmi_base_attributes_get() - gets the implementation details
  *	that are associated with the base protocol.
@@ -99,7 +105,7 @@ scmi_base_vendor_id_get(const struct scmi_protocol_handle *ph, bool sub_vendor)
 
 	ret = ph->xops->do_xfer(ph, t);
 	if (!ret)
-		memcpy(vendor_id, t->rx.buf, size);
+		strscpy(vendor_id, t->rx.buf, size);
 
 	ph->xops->xfer_put(ph, t);
 
@@ -158,6 +164,7 @@ scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
 	__le32 *num_skip, *num_ret;
 	u32 tot_num_ret = 0, loop_num_ret;
 	struct device *dev = ph->dev;
+	struct scmi_revision_info *rev = ph->get_priv(ph);
 
 	ret = ph->xops->xfer_get_init(ph, BASE_DISCOVER_LIST_PROTOCOLS,
 				      sizeof(*num_skip), 0, &t);
@@ -169,6 +176,9 @@ scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
 	list = t->rx.buf + sizeof(*num_ret);
 
 	do {
+		size_t real_list_sz;
+		u32 calc_list_sz;
+
 		/* Set the number of protocols to be skipped/already read */
 		*num_skip = cpu_to_le32(tot_num_ret);
 
@@ -177,9 +187,37 @@ scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
 			break;
 
 		loop_num_ret = le32_to_cpu(*num_ret);
-		if (tot_num_ret + loop_num_ret > MAX_PROTOCOLS_IMP) {
-			dev_err(dev, "No. of Protocol > MAX_PROTOCOLS_IMP");
+		if (!loop_num_ret)
 			break;
+
+		if (loop_num_ret > rev->num_protocols - tot_num_ret) {
+			dev_err(dev,
+				"No. Returned protocols > Total protocols.\n");
+			break;
+		}
+
+		if (t->rx.len < (sizeof(u32) * 2)) {
+			dev_err(dev, "Truncated reply - rx.len:%zd\n",
+				t->rx.len);
+			ret = -EPROTO;
+			break;
+		}
+
+		real_list_sz = t->rx.len - sizeof(u32);
+		calc_list_sz = (1 + (loop_num_ret - 1) / sizeof(u32)) *
+				sizeof(u32);
+		if (calc_list_sz != real_list_sz) {
+			dev_warn(dev,
+				 "Malformed reply - real_sz:%zd  calc_sz:%u  (loop_num_ret:%d)\n",
+				 real_list_sz, calc_list_sz, loop_num_ret);
+			/*
+			 * Bail out if the expected list size is bigger than the
+			 * total payload size of the received reply.
+			 */
+			if (calc_list_sz > real_list_sz) {
+				ret = -EPROTO;
+				break;
+			}
 		}
 
 		for (loop = 0; loop < loop_num_ret; loop++)
@@ -188,7 +226,7 @@ scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
 		tot_num_ret += loop_num_ret;
 
 		ph->xops->reset_rx_to_maxsz(ph, t);
-	} while (loop_num_ret);
+	} while (tot_num_ret < rev->num_protocols);
 
 	ph->xops->xfer_put(ph, t);
 
@@ -211,18 +249,21 @@ static int scmi_base_discover_agent_get(const struct scmi_protocol_handle *ph,
 					int id, char *name)
 {
 	int ret;
+	struct scmi_msg_resp_base_discover_agent *agent_info;
 	struct scmi_xfer *t;
 
 	ret = ph->xops->xfer_get_init(ph, BASE_DISCOVER_AGENT,
-				      sizeof(__le32), SCMI_MAX_STR_SIZE, &t);
+				      sizeof(__le32), sizeof(*agent_info), &t);
 	if (ret)
 		return ret;
 
 	put_unaligned_le32(id, t->tx.buf);
 
 	ret = ph->xops->do_xfer(ph, t);
-	if (!ret)
-		strlcpy(name, t->rx.buf, SCMI_MAX_STR_SIZE);
+	if (!ret) {
+		agent_info = t->rx.buf;
+		strscpy(name, agent_info->name, SCMI_SHORT_NAME_MAX_SIZE);
+	}
 
 	ph->xops->xfer_put(ph, t);
 
@@ -234,7 +275,7 @@ static int scmi_base_protocol_init(const struct scmi_protocol_handle *ph)
 	int id, ret;
 	u8 *prot_imp;
 	u32 version;
-	char name[SCMI_MAX_STR_SIZE];
+	char name[SCMI_SHORT_NAME_MAX_SIZE];
 	struct device *dev = ph->dev;
 	struct scmi_revision_info *rev = scmi_revision_area_get(ph);
 
@@ -242,15 +283,19 @@ static int scmi_base_protocol_init(const struct scmi_protocol_handle *ph)
 	if (ret)
 		return ret;
 
-	prot_imp = kcalloc(MAX_PROTOCOLS_IMP, sizeof(u8), GFP_KERNEL);
-	if (!prot_imp)
-		return -ENOMEM;
-
 	rev->major_ver = PROTOCOL_REV_MAJOR(version),
 	rev->minor_ver = PROTOCOL_REV_MINOR(version);
 	ph->set_priv(ph, rev);
 
-	scmi_base_attributes_get(ph);
+	ret = scmi_base_attributes_get(ph);
+	if (ret)
+		return ret;
+
+	prot_imp = devm_kcalloc(dev, rev->num_protocols, sizeof(u8),
+				GFP_KERNEL);
+	if (!prot_imp)
+		return -ENOMEM;
+
 	scmi_base_vendor_id_get(ph, false);
 	scmi_base_vendor_id_get(ph, true);
 	scmi_base_implementation_version_get(ph);
diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
index b86c414ac96f..5a80911119e0 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -10,12 +10,133 @@
 #include <common.h>
 #include <linux/types.h>
 #include <linux/slab.h>
+#include <linux/mutex.h>
+#include <linux/notifier.h>
 #include <linux/idr.h>
 #include <driver.h>
 
 #include "common.h"
 
-static DEFINE_IDR(scmi_protocols);
+BLOCKING_NOTIFIER_HEAD(scmi_requested_devices_nh);
+EXPORT_SYMBOL_GPL(scmi_requested_devices_nh);
+
+static DEFINE_IDR(scmi_requested_devices);
+/* Protect access to scmi_requested_devices */
+static DEFINE_MUTEX(scmi_requested_devices_mtx);
+
+struct scmi_requested_dev {
+	const struct scmi_device_id *id_table;
+	struct list_head node;
+};
+
+/* Track globally the creation of SCMI SystemPower related devices */
+static atomic_t scmi_syspower_registered = ATOMIC_INIT(0);
+
+/**
+ * scmi_protocol_device_request  - Helper to request a device
+ *
+ * @id_table: A protocol/name pair descriptor for the device to be created.
+ *
+ * This helper let an SCMI driver request specific devices identified by the
+ * @id_table to be created for each active SCMI instance.
+ *
+ * The requested device name MUST NOT be already existent for any protocol;
+ * at first the freshly requested @id_table is annotated in the IDR table
+ * @scmi_requested_devices and then the requested device is advertised to any
+ * registered party via the @scmi_requested_devices_nh notification chain.
+ *
+ * Return: 0 on Success
+ */
+static int scmi_protocol_device_request(const struct scmi_device_id *id_table)
+{
+	int ret = 0;
+	unsigned int id = 0;
+	struct list_head *head, *phead = NULL;
+	struct scmi_requested_dev *rdev;
+
+	pr_debug("Requesting SCMI device (%s) for protocol %x\n",
+		 id_table->name, id_table->protocol_id);
+
+	if (IS_ENABLED(CONFIG_ARM_SCMI_RAW_MODE_SUPPORT) &&
+	    !IS_ENABLED(CONFIG_ARM_SCMI_RAW_MODE_SUPPORT_COEX)) {
+		pr_warn("SCMI Raw mode active. Rejecting '%s'/0x%02X\n",
+			id_table->name, id_table->protocol_id);
+		return -EINVAL;
+	}
+
+	/*
+	 * Search for the matching protocol rdev list and then search
+	 * of any existent equally named device...fails if any duplicate found.
+	 */
+	mutex_lock(&scmi_requested_devices_mtx);
+	idr_for_each_entry(&scmi_requested_devices, head, id) {
+		if (!phead) {
+			/* A list found registered in the IDR is never empty */
+			rdev = list_first_entry(head, struct scmi_requested_dev,
+						node);
+			if (rdev->id_table->protocol_id ==
+			    id_table->protocol_id)
+				phead = head;
+		}
+		list_for_each_entry(rdev, head, node) {
+			if (!strcmp(rdev->id_table->name, id_table->name)) {
+				pr_err("Ignoring duplicate request [%d] %s\n",
+				       rdev->id_table->protocol_id,
+				       rdev->id_table->name);
+				ret = -EINVAL;
+				goto out;
+			}
+		}
+	}
+
+	/*
+	 * No duplicate found for requested id_table, so let's create a new
+	 * requested device entry for this new valid request.
+	 */
+	rdev = kzalloc(sizeof(*rdev), GFP_KERNEL);
+	if (!rdev) {
+		ret = -ENOMEM;
+		goto out;
+	}
+	rdev->id_table = id_table;
+
+	/*
+	 * Append the new requested device table descriptor to the head of the
+	 * related protocol list, eventually creating such head if not already
+	 * there.
+	 */
+	if (!phead) {
+		phead = kzalloc(sizeof(*phead), GFP_KERNEL);
+		if (!phead) {
+			kfree(rdev);
+			ret = -ENOMEM;
+			goto out;
+		}
+		INIT_LIST_HEAD(phead);
+
+		ret = idr_alloc_one(&scmi_requested_devices, (void *)phead,
+				id_table->protocol_id);
+		if (ret != id_table->protocol_id) {
+			pr_err("Failed to save SCMI device - ret:%d\n", ret);
+			kfree(rdev);
+			kfree(phead);
+			ret = -EINVAL;
+			goto out;
+		}
+		ret = 0;
+	}
+	list_add(&rdev->node, phead);
+
+out:
+	mutex_unlock(&scmi_requested_devices_mtx);
+
+	if (!ret)
+		blocking_notifier_call_chain(&scmi_requested_devices_nh,
+					     SCMI_BUS_NOTIFY_DEVICE_REQUEST,
+					     (void *)rdev->id_table);
+
+	return ret;
+}
 
 static const struct scmi_device_id *
 scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
@@ -55,11 +176,11 @@ static int scmi_match_by_id_table(struct device *dev, void *data)
 	struct scmi_device_id *id_table = data;
 
 	return sdev->protocol_id == id_table->protocol_id &&
-		!strcmp(sdev->name, id_table->name);
+		(id_table->name && !strcmp(sdev->name, id_table->name));
 }
 
-struct scmi_device *scmi_child_dev_find(struct device *parent,
-					int prot_id, const char *name)
+static struct scmi_device *scmi_child_dev_find(struct device *parent,
+					       int prot_id, const char *name)
 {
 	struct scmi_device_id id_table;
 	struct device *dev;
@@ -74,30 +195,10 @@ struct scmi_device *scmi_child_dev_find(struct device *parent,
 	return to_scmi_dev(dev);
 }
 
-const struct scmi_protocol *scmi_protocol_get(int protocol_id)
-{
-	const struct scmi_protocol *proto;
-
-	proto = idr_find(&scmi_protocols, protocol_id);
-	if (!proto) {
-		pr_warn("SCMI Protocol 0x%x not found!\n", protocol_id);
-		return NULL;
-	}
-
-	pr_debug("Found SCMI Protocol 0x%x\n", protocol_id);
-
-	return proto;
-}
-
 static int scmi_dev_probe(struct device *dev)
 {
 	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
 	struct scmi_device *scmi_dev = to_scmi_dev(dev);
-	const struct scmi_device_id *id;
-
-	id = scmi_dev_match_id(scmi_dev, scmi_drv);
-	if (!id)
-		return -ENODEV;
 
 	if (!scmi_dev->handle)
 		return -EPROBE_DEFER;
@@ -107,24 +208,23 @@ static int scmi_dev_probe(struct device *dev)
 
 static void scmi_dev_remove(struct device *dev)
 {
-	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
-	struct scmi_device *scmi_dev = to_scmi_dev(dev);
-
-	if (scmi_drv->remove)
-		scmi_drv->remove(scmi_dev);
 }
 
-static struct bus_type scmi_bus_type = {
+struct bus_type scmi_bus_type = {
 	.name =	"scmi_protocol",
 	.match = scmi_dev_match,
 	.probe = scmi_dev_probe,
 	.remove = scmi_dev_remove,
 };
+EXPORT_SYMBOL_GPL(scmi_bus_type);
 
 int scmi_driver_register(struct scmi_driver *driver)
 {
 	int retval;
 
+	if (!driver->probe)
+		return -EINVAL;
+
 	retval = scmi_protocol_device_request(driver->id_table);
 	if (retval)
 		return retval;
@@ -132,20 +232,60 @@ int scmi_driver_register(struct scmi_driver *driver)
 	driver->driver.bus = &scmi_bus_type;
 	driver->driver.name = driver->name;
 
-	retval = register_driver(&driver->driver);
+	retval = driver_register(&driver->driver);
 	if (!retval)
-		pr_debug("registered new scmi driver %s\n", driver->name);
+		pr_debug("Registered new scmi driver %s\n", driver->name);
 
 	return retval;
 }
 EXPORT_SYMBOL_GPL(scmi_driver_register);
 
-struct scmi_device *
-scmi_device_alloc(struct device_node *np, struct device *parent, int protocol,
-		   const char *name)
+static void __scmi_device_destroy(struct scmi_device *scmi_dev)
 {
+	pr_debug("(%s) Destroying SCMI device '%s' for protocol 0x%x (%s)\n",
+		 of_node_full_name(scmi_dev->dev.parent->of_node),
+		 dev_name(&scmi_dev->dev), scmi_dev->protocol_id,
+		 scmi_dev->name);
+
+	if (scmi_dev->protocol_id == SCMI_PROTOCOL_SYSTEM)
+		atomic_set(&scmi_syspower_registered, 0);
+
+	kfree_const(scmi_dev->name);
+	device_unregister(&scmi_dev->dev);
+}
+
+static struct scmi_device *
+__scmi_device_create(struct device_node *np, struct device *parent,
+		     int protocol, const char *name)
+{
+	int retval;
 	struct scmi_device *scmi_dev;
 
+	/*
+	 * If the same protocol/name device already exist under the same parent
+	 * (i.e. SCMI instance) just return the existent device.
+	 * This avoids any race between the SCMI driver, creating devices for
+	 * each DT defined protocol at probe time, and the concurrent
+	 * registration of SCMI drivers.
+	 */
+	scmi_dev = scmi_child_dev_find(parent, protocol, name);
+	if (scmi_dev)
+		return scmi_dev;
+
+	/*
+	 * Ignore any possible subsequent failures while creating the device
+	 * since we are doomed anyway at that point; not using a mutex which
+	 * spans across this whole function to keep things simple and to avoid
+	 * to serialize all the __scmi_device_create calls across possibly
+	 * different SCMI server instances (parent)
+	 */
+	if (protocol == SCMI_PROTOCOL_SYSTEM &&
+	    atomic_cmpxchg(&scmi_syspower_registered, 0, 1)) {
+		dev_warn(parent,
+			 "SCMI SystemPower protocol device must be unique !\n");
+		return NULL;
+	}
+
 	scmi_dev = kzalloc(sizeof(*scmi_dev), GFP_KERNEL);
 	if (!scmi_dev)
 		return NULL;
@@ -163,64 +303,106 @@ scmi_device_alloc(struct device_node *np, struct device *parent, int protocol,
 	scmi_dev->dev.bus = &scmi_bus_type;
 	dev_set_name(&scmi_dev->dev, "scmi_dev");
 
+	scmi_dev->handle = scmi_handle_get(&scmi_dev->dev);
+
+	retval = device_register(&scmi_dev->dev);
+	if (retval)
+		goto put_dev;
+
+	if (!np->dev)
+		np->dev = &scmi_dev->dev;
+
+	pr_debug("(%s) Created SCMI device '%s' for protocol 0x%x (%s)\n",
+		 of_node_full_name(parent->of_node),
+		 dev_name(&scmi_dev->dev), protocol, name);
+
+	return scmi_dev;
+put_dev:
+	kfree_const(scmi_dev->name);
+	put_device(&scmi_dev->dev);
+	return NULL;
+}
+
+/**
+ * scmi_device_create  - A method to create one or more SCMI devices
+ *
+ * @np: A reference to the device node to use for the new device(s)
+ * @parent: The parent device to use identifying a specific SCMI instance
+ * @protocol: The SCMI protocol to be associated with this device
+ * @name: The requested-name of the device to be created; this is optional
+ *	  and if no @name is provided, all the devices currently known to
+ *	  be requested on the SCMI bus for @protocol will be created.
+ *
+ * This method can be invoked to create a single well-defined device (like
+ * a transport device or a device requested by an SCMI driver loaded after
+ * the core SCMI stack has been probed), or to create all the devices currently
+ * known to have been requested by the loaded SCMI drivers for a specific
+ * protocol (typically during SCMI core protocol enumeration at probe time).
+ *
+ * Return: The created device (or one of them if @name was NOT provided and
+ *	   multiple devices were created) or NULL if no device was created;
+ *	   note that NULL indicates an error ONLY in case a specific @name
+ *	   was provided: when @name param was not provided, a number of devices
+ *	   could have been potentially created for a whole protocol, unless no
+ *	   device was found to have been requested for that specific protocol.
+ */
+struct scmi_device *scmi_device_create(struct device_node *np,
+				       struct device *parent, int protocol,
+				       const char *name)
+{
+	struct list_head *phead;
+	struct scmi_requested_dev *rdev;
+	struct scmi_device *scmi_dev = NULL;
+
+	if (name)
+		return __scmi_device_create(np, parent, protocol, name);
+
+	mutex_lock(&scmi_requested_devices_mtx);
+	phead = idr_find(&scmi_requested_devices, protocol);
+	/* Nothing to do. */
+	if (!phead) {
+		mutex_unlock(&scmi_requested_devices_mtx);
+		return NULL;
+	}
+
+	/* Walk the list of requested devices for protocol and create them */
+	list_for_each_entry(rdev, phead, node) {
+		struct scmi_device *sdev;
+
+		sdev = __scmi_device_create(np, parent,
+					    rdev->id_table->protocol_id,
+					    rdev->id_table->name);
+		/* Report errors and carry on... */
+		if (sdev)
+			scmi_dev = sdev;
+		else
+			pr_err("(%s) Failed to create device for protocol 0x%x (%s)\n",
+			       of_node_full_name(parent->of_node),
+			       rdev->id_table->protocol_id,
+			       rdev->id_table->name);
+	}
+	mutex_unlock(&scmi_requested_devices_mtx);
+
 	return scmi_dev;
 }
+EXPORT_SYMBOL_GPL(scmi_device_create);
 
-void scmi_device_destroy(struct scmi_device *scmi_dev)
+void scmi_device_destroy(struct device *parent, int protocol, const char *name)
 {
-	kfree_const(scmi_dev->name);
-	unregister_device(&scmi_dev->dev);
+	struct scmi_device *scmi_dev;
+
+	scmi_dev = scmi_child_dev_find(parent, protocol, name);
+	if (scmi_dev)
+		__scmi_device_destroy(scmi_dev);
 }
-
-void scmi_set_handle(struct scmi_device *scmi_dev)
-{
-	scmi_dev->handle = scmi_handle_get(&scmi_dev->dev);
-}
-
-int scmi_protocol_register(const struct scmi_protocol *proto)
-{
-	int ret;
-
-	if (!proto) {
-		pr_err("invalid protocol\n");
-		return -EINVAL;
-	}
-
-	if (!proto->instance_init) {
-		pr_err("missing init for protocol 0x%x\n", proto->id);
-		return -EINVAL;
-	}
-
-	ret = idr_alloc_one(&scmi_protocols, (void *)proto, proto->id);
-	if (ret != proto->id) {
-		pr_err("unable to allocate SCMI idr slot for 0x%x - err %d\n",
-		       proto->id, ret);
-		return ret;
-	}
-
-	pr_debug("Registered SCMI Protocol 0x%x\n", proto->id);
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(scmi_protocol_register);
-
-void scmi_protocol_unregister(const struct scmi_protocol *proto)
-{
-	idr_remove(&scmi_protocols, proto->id);
-
-	pr_debug("Unregistered SCMI Protocol 0x%x\n", proto->id);
-
-	return;
-}
-EXPORT_SYMBOL_GPL(scmi_protocol_unregister);
+EXPORT_SYMBOL_GPL(scmi_device_destroy);
 
 int __init scmi_bus_init(void)
 {
-	int retval;
-
-	retval = bus_register(&scmi_bus_type);
-	if (retval)
-		pr_err("scmi protocol bus register failed (%d)\n", retval);
-
-	return retval;
+	return bus_register(&scmi_bus_type);
 }
+
+MODULE_ALIAS("scmi-core");
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI protocol bus");
+MODULE_LICENSE("GPL");
diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 4fd642dad3da..2c902835a0ec 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -2,13 +2,13 @@
 /*
  * System Control and Management Interface (SCMI) Clock Protocol
  *
- * Copyright (C) 2018-2021 ARM Ltd.
+ * Copyright (C) 2018-2022 ARM Ltd.
  */
 
 #include <common.h>
 #include <qsort.h>
 
-#include "common.h"
+#include "protocols.h"
 
 enum scmi_clock_protocol_cmd {
 	CLOCK_ATTRIBUTES = 0x3,
@@ -16,6 +16,7 @@ enum scmi_clock_protocol_cmd {
 	CLOCK_RATE_SET = 0x5,
 	CLOCK_RATE_GET = 0x6,
 	CLOCK_CONFIG_SET = 0x7,
+	CLOCK_NAME_GET = 0x8,
 };
 
 struct scmi_msg_resp_clock_protocol_attributes {
@@ -27,7 +28,9 @@ struct scmi_msg_resp_clock_protocol_attributes {
 struct scmi_msg_resp_clock_attributes {
 	__le32 attributes;
 #define	CLOCK_ENABLE	BIT(0)
-	    u8 name[SCMI_MAX_STR_SIZE];
+#define SUPPORTS_EXTENDED_NAMES(x)		((x) & BIT(29))
+	u8 name[SCMI_SHORT_NAME_MAX_SIZE];
+	__le32 clock_enable_latency;
 };
 
 struct scmi_clock_set_config {
@@ -48,7 +51,7 @@ struct scmi_msg_resp_clock_describe_rates {
 	struct {
 		__le32 value_low;
 		__le32 value_high;
-	} rate[0];
+	} rate[];
 #define RATE_TO_U64(X)		\
 ({				\
 	typeof(X) x = (X);	\
@@ -67,11 +70,15 @@ struct scmi_clock_set_rate {
 	__le32 value_high;
 };
 
+struct scmi_msg_resp_set_rate_complete {
+	__le32 id;
+	__le32 rate_low;
+	__le32 rate_high;
+};
+
 struct clock_info {
 	u32 version;
 	int num_clocks;
-	int max_async_req;
-	unsigned cur_async_req;
 	struct scmi_clock_info *clk;
 };
 
@@ -91,19 +98,19 @@ scmi_clock_protocol_attributes_get(const struct scmi_protocol_handle *ph,
 	attr = t->rx.buf;
 
 	ret = ph->xops->do_xfer(ph, t);
-	if (!ret) {
+	if (!ret)
 		ci->num_clocks = le16_to_cpu(attr->num_clocks);
-		ci->max_async_req = attr->max_async_req;
-	}
 
 	ph->xops->xfer_put(ph, t);
 	return ret;
 }
 
 static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
-				     u32 clk_id, struct scmi_clock_info *clk)
+				     u32 clk_id, struct scmi_clock_info *clk,
+				     u32 version)
 {
 	int ret;
+	u32 attributes;
 	struct scmi_xfer *t;
 	struct scmi_msg_resp_clock_attributes *attr;
 
@@ -116,12 +123,30 @@ static int scmi_clock_attributes_get(const struct scmi_protocol_handle *ph,
 	attr = t->rx.buf;
 
 	ret = ph->xops->do_xfer(ph, t);
-	if (!ret)
-		strlcpy(clk->name, attr->name, SCMI_MAX_STR_SIZE);
-	else
-		clk->name[0] = '\0';
+	if (!ret) {
+		u32 latency = 0;
+		attributes = le32_to_cpu(attr->attributes);
+		strscpy(clk->name, attr->name, SCMI_SHORT_NAME_MAX_SIZE);
+		/* clock_enable_latency field is present only since SCMI v3.1 */
+		if (PROTOCOL_REV_MAJOR(version) >= 0x2)
+			latency = le32_to_cpu(attr->clock_enable_latency);
+		clk->enable_latency = latency ? : U32_MAX;
+	}
 
 	ph->xops->xfer_put(ph, t);
+
+	/*
+	 * If supported overwrite short name with the extended one;
+	 * on error just carry on and use already provided short name.
+	 */
+	if (!ret && PROTOCOL_REV_MAJOR(version) >= 0x2) {
+		if (SUPPORTS_EXTENDED_NAMES(attributes))
+			ph->hops->extended_name_get(ph, CLOCK_NAME_GET, clk_id,
+						    clk->name,
+						    SCMI_MAX_STR_SIZE);
+
+	}
+
 	return ret;
 }
 
@@ -137,80 +162,134 @@ static int rate_cmp_func(const void *_r1, const void *_r2)
 		return 1;
 }
 
+struct scmi_clk_ipriv {
+	struct device *dev;
+	u32 clk_id;
+	struct scmi_clock_info *clk;
+};
+
+static void iter_clk_describe_prepare_message(void *message,
+					      const unsigned int desc_index,
+					      const void *priv)
+{
+	struct scmi_msg_clock_describe_rates *msg = message;
+	const struct scmi_clk_ipriv *p = priv;
+
+	msg->id = cpu_to_le32(p->clk_id);
+	/* Set the number of rates to be skipped/already read */
+	msg->rate_index = cpu_to_le32(desc_index);
+}
+
+static int
+iter_clk_describe_update_state(struct scmi_iterator_state *st,
+			       const void *response, void *priv)
+{
+	u32 flags;
+	struct scmi_clk_ipriv *p = priv;
+	const struct scmi_msg_resp_clock_describe_rates *r = response;
+
+	flags = le32_to_cpu(r->num_rates_flags);
+	st->num_remaining = NUM_REMAINING(flags);
+	st->num_returned = NUM_RETURNED(flags);
+	p->clk->rate_discrete = RATE_DISCRETE(flags);
+
+	/* Warn about out of spec replies ... */
+	if (!p->clk->rate_discrete &&
+	    (st->num_returned != 3 || st->num_remaining != 0)) {
+		dev_warn(p->dev,
+			 "Out-of-spec CLOCK_DESCRIBE_RATES reply for %s - returned:%d remaining:%d rx_len:%zd\n",
+			 p->clk->name, st->num_returned, st->num_remaining,
+			 st->rx_len);
+
+		/*
+		 * A known quirk: a triplet is returned but num_returned != 3
+		 * Check for a safe payload size and fix.
+		 */
+		if (st->num_returned != 3 && st->num_remaining == 0 &&
+		    st->rx_len == sizeof(*r) + sizeof(__le32) * 2 * 3) {
+			st->num_returned = 3;
+			st->num_remaining = 0;
+		} else {
+			dev_err(p->dev,
+				"Cannot fix out-of-spec reply !\n");
+			return -EPROTO;
+		}
+	}
+
+	return 0;
+}
+
+static int
+iter_clk_describe_process_response(const struct scmi_protocol_handle *ph,
+				   const void *response,
+				   struct scmi_iterator_state *st, void *priv)
+{
+	int ret = 0;
+	struct scmi_clk_ipriv *p = priv;
+	const struct scmi_msg_resp_clock_describe_rates *r = response;
+
+	if (!p->clk->rate_discrete) {
+		switch (st->desc_index + st->loop_idx) {
+		case 0:
+			p->clk->range.min_rate = RATE_TO_U64(r->rate[0]);
+			break;
+		case 1:
+			p->clk->range.max_rate = RATE_TO_U64(r->rate[1]);
+			break;
+		case 2:
+			p->clk->range.step_size = RATE_TO_U64(r->rate[2]);
+			break;
+		default:
+			ret = -EINVAL;
+			break;
+		}
+	} else {
+		u64 *rate = &p->clk->list.rates[st->desc_index + st->loop_idx];
+
+		*rate = RATE_TO_U64(r->rate[st->loop_idx]);
+		p->clk->list.num_rates++;
+	}
+
+	return ret;
+}
+
 static int
 scmi_clock_describe_rates_get(const struct scmi_protocol_handle *ph, u32 clk_id,
 			      struct scmi_clock_info *clk)
 {
-	u64 *rate = NULL;
-	int ret, cnt;
-	bool rate_discrete = false;
-	u32 tot_rate_cnt = 0, rates_flag;
-	u16 num_returned, num_remaining;
-	struct scmi_xfer *t;
-	struct scmi_msg_clock_describe_rates *clk_desc;
-	struct scmi_msg_resp_clock_describe_rates *rlist;
+	int ret;
+	void *iter;
+	struct scmi_iterator_ops ops = {
+		.prepare_message = iter_clk_describe_prepare_message,
+		.update_state = iter_clk_describe_update_state,
+		.process_response = iter_clk_describe_process_response,
+	};
+	struct scmi_clk_ipriv cpriv = {
+		.clk_id = clk_id,
+		.clk = clk,
+		.dev = ph->dev,
+	};
 
-	ret = ph->xops->xfer_get_init(ph, CLOCK_DESCRIBE_RATES,
-				      sizeof(*clk_desc), 0, &t);
+	iter = ph->hops->iter_response_init(ph, &ops, SCMI_MAX_NUM_RATES,
+					    CLOCK_DESCRIBE_RATES,
+					    sizeof(struct scmi_msg_clock_describe_rates),
+					    &cpriv);
+	if (IS_ERR(iter))
+		return PTR_ERR(iter);
+
+	ret = ph->hops->iter_response_run(iter);
 	if (ret)
 		return ret;
 
-	clk_desc = t->tx.buf;
-	rlist = t->rx.buf;
-
-	do {
-		clk_desc->id = cpu_to_le32(clk_id);
-		/* Set the number of rates to be skipped/already read */
-		clk_desc->rate_index = cpu_to_le32(tot_rate_cnt);
-
-		ret = ph->xops->do_xfer(ph, t);
-		if (ret)
-			goto err;
-
-		rates_flag = le32_to_cpu(rlist->num_rates_flags);
-		num_remaining = NUM_REMAINING(rates_flag);
-		rate_discrete = RATE_DISCRETE(rates_flag);
-		num_returned = NUM_RETURNED(rates_flag);
-
-		if (tot_rate_cnt + num_returned > SCMI_MAX_NUM_RATES) {
-			dev_err(ph->dev, "No. of rates > MAX_NUM_RATES");
-			break;
-		}
-
-		if (!rate_discrete) {
-			clk->range.min_rate = RATE_TO_U64(rlist->rate[0]);
-			clk->range.max_rate = RATE_TO_U64(rlist->rate[1]);
-			clk->range.step_size = RATE_TO_U64(rlist->rate[2]);
-			dev_dbg(ph->dev, "Min %llu Max %llu Step %llu Hz\n",
-				clk->range.min_rate, clk->range.max_rate,
-				clk->range.step_size);
-			break;
-		}
-
-		rate = &clk->list.rates[tot_rate_cnt];
-		for (cnt = 0; cnt < num_returned; cnt++, rate++) {
-			*rate = RATE_TO_U64(rlist->rate[cnt]);
-			dev_dbg(ph->dev, "Rate %llu Hz\n", *rate);
-		}
-
-		tot_rate_cnt += num_returned;
-
-		ph->xops->reset_rx_to_maxsz(ph, t);
-		/*
-		 * check for both returned and remaining to avoid infinite
-		 * loop due to buggy firmware
-		 */
-	} while (num_returned && num_remaining);
-
-	if (rate_discrete && rate) {
-		clk->list.num_rates = tot_rate_cnt;
-		qsort(rate, tot_rate_cnt, sizeof(*rate), rate_cmp_func);
+	if (!clk->rate_discrete) {
+		dev_dbg(ph->dev, "Min %llu Max %llu Step %llu Hz\n",
+			clk->range.min_rate, clk->range.max_rate,
+			clk->range.step_size);
+	} else if (clk->list.num_rates) {
+		qsort(clk->list.rates, clk->list.num_rates,
+		     sizeof(clk->list.rates[0]), rate_cmp_func);
 	}
 
-	clk->rate_discrete = rate_discrete;
-
-err:
-	ph->xops->xfer_put(ph, t);
 	return ret;
 }
 
@@ -240,32 +319,20 @@ static int scmi_clock_rate_set(const struct scmi_protocol_handle *ph,
 			       u32 clk_id, u64 rate)
 {
 	int ret;
-	u32 flags = 0;
 	struct scmi_xfer *t;
 	struct scmi_clock_set_rate *cfg;
-	struct clock_info *ci = ph->get_priv(ph);
 
 	ret = ph->xops->xfer_get_init(ph, CLOCK_RATE_SET, sizeof(*cfg), 0, &t);
 	if (ret)
 		return ret;
 
-	if (ci->max_async_req &&
-	    ++ci->cur_async_req < ci->max_async_req)
-		flags |= CLOCK_SET_ASYNC;
-
 	cfg = t->tx.buf;
-	cfg->flags = cpu_to_le32(flags);
+	cfg->flags = cpu_to_le32(0);
 	cfg->id = cpu_to_le32(clk_id);
 	cfg->value_low = cpu_to_le32(rate & 0xffffffff);
 	cfg->value_high = cpu_to_le32(rate >> 32);
 
-	if (flags & CLOCK_SET_ASYNC)
-		ret = ph->xops->do_xfer_with_response(ph, t);
-	else
-		ret = ph->xops->do_xfer(ph, t);
-
-	if (ci->max_async_req)
-		ci->cur_async_req--;
+	ret = ph->xops->do_xfer(ph, t);
 
 	ph->xops->xfer_put(ph, t);
 	return ret;
@@ -273,7 +340,7 @@ static int scmi_clock_rate_set(const struct scmi_protocol_handle *ph,
 
 static int
 scmi_clock_config_set(const struct scmi_protocol_handle *ph, u32 clk_id,
-		      u32 config)
+		      u32 config, bool atomic)
 {
 	int ret;
 	struct scmi_xfer *t;
@@ -296,12 +363,24 @@ scmi_clock_config_set(const struct scmi_protocol_handle *ph, u32 clk_id,
 
 static int scmi_clock_enable(const struct scmi_protocol_handle *ph, u32 clk_id)
 {
-	return scmi_clock_config_set(ph, clk_id, CLOCK_ENABLE);
+	return scmi_clock_config_set(ph, clk_id, CLOCK_ENABLE, false);
 }
 
 static int scmi_clock_disable(const struct scmi_protocol_handle *ph, u32 clk_id)
 {
-	return scmi_clock_config_set(ph, clk_id, 0);
+	return scmi_clock_config_set(ph, clk_id, 0, false);
+}
+
+static int scmi_clock_enable_atomic(const struct scmi_protocol_handle *ph,
+				    u32 clk_id)
+{
+	return scmi_clock_config_set(ph, clk_id, CLOCK_ENABLE, true);
+}
+
+static int scmi_clock_disable_atomic(const struct scmi_protocol_handle *ph,
+				     u32 clk_id)
+{
+	return scmi_clock_config_set(ph, clk_id, 0, true);
 }
 
 static int scmi_clock_count_get(const struct scmi_protocol_handle *ph)
@@ -314,9 +393,13 @@ static int scmi_clock_count_get(const struct scmi_protocol_handle *ph)
 static const struct scmi_clock_info *
 scmi_clock_info_get(const struct scmi_protocol_handle *ph, u32 clk_id)
 {
+	struct scmi_clock_info *clk;
 	struct clock_info *ci = ph->get_priv(ph);
-	struct scmi_clock_info *clk = ci->clk + clk_id;
 
+	if (clk_id >= ci->num_clocks)
+		return NULL;
+
+	clk = ci->clk + clk_id;
 	if (!clk->name[0])
 		return NULL;
 
@@ -330,6 +413,8 @@ static const struct scmi_clk_proto_ops clk_proto_ops = {
 	.rate_set = scmi_clock_rate_set,
 	.enable = scmi_clock_enable,
 	.disable = scmi_clock_disable,
+	.enable_atomic = scmi_clock_enable_atomic,
+	.disable_atomic = scmi_clock_disable_atomic,
 };
 
 static int scmi_clock_protocol_init(const struct scmi_protocol_handle *ph)
@@ -338,25 +423,30 @@ static int scmi_clock_protocol_init(const struct scmi_protocol_handle *ph)
 	int clkid, ret;
 	struct clock_info *cinfo;
 
-	ph->xops->version_get(ph, &version);
+	ret = ph->xops->version_get(ph, &version);
+	if (ret)
+		return ret;
 
 	dev_dbg(ph->dev, "Clock Version %d.%d\n",
 		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
 
-	cinfo = kzalloc(sizeof(*cinfo), GFP_KERNEL);
+	cinfo = devm_kzalloc(ph->dev, sizeof(*cinfo), GFP_KERNEL);
 	if (!cinfo)
 		return -ENOMEM;
 
-	scmi_clock_protocol_attributes_get(ph, cinfo);
+	ret = scmi_clock_protocol_attributes_get(ph, cinfo);
+	if (ret)
+		return ret;
 
-	cinfo->clk = kcalloc(cinfo->num_clocks, sizeof(*cinfo->clk), GFP_KERNEL);
+	cinfo->clk = devm_kcalloc(ph->dev, cinfo->num_clocks,
+				  sizeof(*cinfo->clk), GFP_KERNEL);
 	if (!cinfo->clk)
 		return -ENOMEM;
 
 	for (clkid = 0; clkid < cinfo->num_clocks; clkid++) {
 		struct scmi_clock_info *clk = cinfo->clk + clkid;
 
-		ret = scmi_clock_attributes_get(ph, clkid, clk);
+		ret = scmi_clock_attributes_get(ph, clkid, clk, version);
 		if (!ret)
 			scmi_clock_describe_rates_get(ph, clkid, clk);
 	}
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index b10ebaf4acb0..f0231a17fe87 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -4,7 +4,7 @@
  * driver common header file containing some definitions, structures
  * and function prototypes used in all the different SCMI protocols.
  *
- * Copyright (C) 2018-2021 ARM Ltd.
+ * Copyright (C) 2018-2022 ARM Ltd.
  */
 #ifndef _SCMI_COMMON_H
 #define _SCMI_COMMON_H
@@ -19,36 +19,50 @@
 
 #include <asm/unaligned.h>
 
-#define PROTOCOL_REV_MINOR_MASK	GENMASK(15, 0)
-#define PROTOCOL_REV_MAJOR_MASK	GENMASK(31, 16)
-#define PROTOCOL_REV_MAJOR(x)	(u16)(FIELD_GET(PROTOCOL_REV_MAJOR_MASK, (x)))
-#define PROTOCOL_REV_MINOR(x)	(u16)(FIELD_GET(PROTOCOL_REV_MINOR_MASK, (x)))
-#define MAX_PROTOCOLS_IMP	16
-#define MAX_OPPS		16
+#include "protocols.h"
 
-enum scmi_common_cmd {
-	PROTOCOL_VERSION = 0x0,
-	PROTOCOL_ATTRIBUTES = 0x1,
-	PROTOCOL_MESSAGE_ATTRIBUTES = 0x2,
+#define SCMI_MAX_CHANNELS		256
+
+#define SCMI_MAX_RESPONSE_TIMEOUT	(2 * MSEC_PER_SEC)
+
+enum scmi_error_codes {
+	SCMI_SUCCESS = 0,	/* Success */
+	SCMI_ERR_SUPPORT = -1,	/* Not supported */
+	SCMI_ERR_PARAMS = -2,	/* Invalid Parameters */
+	SCMI_ERR_ACCESS = -3,	/* Invalid access/permission denied */
+	SCMI_ERR_ENTRY = -4,	/* Not found */
+	SCMI_ERR_RANGE = -5,	/* Value out of range */
+	SCMI_ERR_BUSY = -6,	/* Device busy */
+	SCMI_ERR_COMMS = -7,	/* Communication Error */
+	SCMI_ERR_GENERIC = -8,	/* Generic Error */
+	SCMI_ERR_HARDWARE = -9,	/* Hardware Error */
+	SCMI_ERR_PROTOCOL = -10,/* Protocol Error */
 };
 
-/**
- * struct scmi_msg_resp_prot_version - Response for a message
- *
- * @minor_version: Minor version of the ABI that firmware supports
- * @major_version: Major version of the ABI that firmware supports
- *
- * In general, ABI version changes follow the rule that minor version increments
- * are backward compatible. Major revision changes in ABI may not be
- * backward compatible.
- *
- * Response to a generic message with message type SCMI_MSG_VERSION
- */
-struct scmi_msg_resp_prot_version {
-	__le16 minor_version;
-	__le16 major_version;
+static const int scmi_linux_errmap[] = {
+	/* better than switch case as long as return value is continuous */
+	0,			/* SCMI_SUCCESS */
+	-EOPNOTSUPP,		/* SCMI_ERR_SUPPORT */
+	-EINVAL,		/* SCMI_ERR_PARAM */
+	-EACCES,		/* SCMI_ERR_ACCESS */
+	-ENOENT,		/* SCMI_ERR_ENTRY */
+	-ERANGE,		/* SCMI_ERR_RANGE */
+	-EBUSY,			/* SCMI_ERR_BUSY */
+	-ECOMM,			/* SCMI_ERR_COMMS */
+	-EIO,			/* SCMI_ERR_GENERIC */
+	-EREMOTEIO,		/* SCMI_ERR_HARDWARE */
+	-EPROTO,		/* SCMI_ERR_PROTOCOL */
 };
 
+static inline int scmi_to_linux_errno(int errno)
+{
+	int err_idx = -errno;
+
+	if (err_idx >= SCMI_SUCCESS && err_idx < ARRAY_SIZE(scmi_linux_errmap))
+		return scmi_linux_errmap[err_idx];
+	return -EIO;
+}
+
 #define MSG_ID_MASK		GENMASK(7, 0)
 #define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
 #define MSG_TYPE_MASK		GENMASK(9, 8)
@@ -62,37 +76,18 @@ struct scmi_msg_resp_prot_version {
 #define MSG_XTRACT_TOKEN(hdr)	FIELD_GET(MSG_TOKEN_ID_MASK, (hdr))
 #define MSG_TOKEN_MAX		(MSG_XTRACT_TOKEN(MSG_TOKEN_ID_MASK) + 1)
 
-/**
- * struct scmi_msg_hdr - Message(Tx/Rx) header
- *
- * @id: The identifier of the message being sent
- * @protocol_id: The identifier of the protocol used to send @id message
- * @seq: The token to identify the message. When a message returns, the
- *	platform returns the whole message header unmodified including the
- *	token
- * @status: Status of the transfer once it's complete
- * @poll_completion: Indicate if the transfer needs to be polled for
- *	completion or interrupt mode is used
- */
-struct scmi_msg_hdr {
-	u8 id;
-	u8 protocol_id;
-	u16 seq;
-	u32 status;
-	bool poll_completion;
-};
-
 /**
  * pack_scmi_header() - packs and returns 32-bit header
  *
  * @hdr: pointer to header containing all the information on message id,
- *	protocol id and sequence id.
+ *	protocol id, sequence id and type.
  *
  * Return: 32-bit packed message header to be sent to the platform.
  */
 static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
 {
 	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
+		FIELD_PREP(MSG_TYPE_MASK, hdr->type) |
 		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
 		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
 }
@@ -107,144 +102,28 @@ static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
 {
 	hdr->id = MSG_XTRACT_ID(msg_hdr);
 	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
+	hdr->type = MSG_XTRACT_TYPE(msg_hdr);
 }
 
-/**
- * struct scmi_msg - Message(Tx/Rx) structure
- *
- * @buf: Buffer pointer
- * @len: Length of data in the Buffer
- */
-struct scmi_msg {
-	void *buf;
-	size_t len;
-};
-
-/**
- * struct scmi_xfer - Structure representing a message flow
- *
- * @transfer_id: Unique ID for debug & profiling purpose
- * @hdr: Transmit message header
- * @tx: Transmit message
- * @rx: Receive message, the buffer should be pre-allocated to store
- *	message. If request-ACK protocol is used, we can reuse the same
- *	buffer for the rx path as we use for the tx path.
- * @done: command message transmit completion event
- * @async_done: pointer to delayed response message received event completion
- */
-struct scmi_xfer {
-	int transfer_id;
-	struct scmi_msg_hdr hdr;
-	struct scmi_msg tx;
-	struct scmi_msg rx;
-	bool done;
-	bool *async_done;
-};
-
-struct scmi_xfer_ops;
-
-/**
- * struct scmi_protocol_handle  - Reference to an initialized protocol instance
- *
- * @dev: A reference to the associated SCMI instance device (handle->dev).
- * @xops: A reference to a struct holding refs to the core xfer operations that
- *	  can be used by the protocol implementation to generate SCMI messages.
- * @set_priv: A method to set protocol private data for this instance.
- * @get_priv: A method to get protocol private data previously set.
- *
- * This structure represents a protocol initialized against specific SCMI
- * instance and it will be used as follows:
- * - as a parameter fed from the core to the protocol initialization code so
- *   that it can access the core xfer operations to build and generate SCMI
- *   messages exclusively for the specific underlying protocol instance.
- * - as an opaque handle fed by an SCMI driver user when it tries to access
- *   this protocol through its own protocol operations.
- *   In this case this handle will be returned as an opaque object together
- *   with the related protocol operations when the SCMI driver tries to access
- *   the protocol.
- */
-struct scmi_protocol_handle {
-	struct device *dev;
-	const struct scmi_xfer_ops *xops;
-	int (*set_priv)(const struct scmi_protocol_handle *ph, void *priv);
-	void *(*get_priv)(const struct scmi_protocol_handle *ph);
-};
-
-/**
- * struct scmi_xfer_ops  - References to the core SCMI xfer operations.
- * @version_get: Get this version protocol.
- * @xfer_get_init: Initialize one struct xfer if any xfer slot is free.
- * @reset_rx_to_maxsz: Reset rx size to max transport size.
- * @do_xfer: Do the SCMI transfer.
- * @do_xfer_with_response: Do the SCMI transfer waiting for a response.
- * @xfer_put: Free the xfer slot.
- *
- * Note that all this operations expect a protocol handle as first parameter;
- * they then internally use it to infer the underlying protocol number: this
- * way is not possible for a protocol implementation to forge messages for
- * another protocol.
- */
-struct scmi_xfer_ops {
-	int (*version_get)(const struct scmi_protocol_handle *ph, u32 *version);
-	int (*xfer_get_init)(const struct scmi_protocol_handle *ph, u8 msg_id,
-			     size_t tx_size, size_t rx_size,
-			     struct scmi_xfer **p);
-	void (*reset_rx_to_maxsz)(const struct scmi_protocol_handle *ph,
-				  struct scmi_xfer *xfer);
-	int (*do_xfer)(const struct scmi_protocol_handle *ph,
-		       struct scmi_xfer *xfer);
-	int (*do_xfer_with_response)(const struct scmi_protocol_handle *ph,
-				     struct scmi_xfer *xfer);
-	void (*xfer_put)(const struct scmi_protocol_handle *ph,
-			 struct scmi_xfer *xfer);
-};
-
 struct scmi_revision_info *
 scmi_revision_area_get(const struct scmi_protocol_handle *ph);
-int scmi_handle_put(const struct scmi_handle *handle);
-struct scmi_handle *scmi_handle_get(struct device *dev);
-void scmi_set_handle(struct scmi_device *scmi_dev);
 void scmi_setup_protocol_implemented(const struct scmi_protocol_handle *ph,
 				     u8 *prot_imp);
 
-typedef int (*scmi_prot_init_ph_fn_t)(const struct scmi_protocol_handle *);
-
-/**
- * struct scmi_protocol  - Protocol descriptor
- * @id: Protocol ID.
- * @instance_init: Mandatory protocol initialization function.
- * @instance_deinit: Optional protocol de-initialization function.
- * @ops: Optional reference to the operations provided by the protocol and
- *	 exposed in scmi_protocol.h.
- * @events: An optional reference to the events supported by this protocol.
- */
-struct scmi_protocol {
-	const u8				id;
-	const scmi_prot_init_ph_fn_t		instance_init;
-	const scmi_prot_init_ph_fn_t		instance_deinit;
-	const void				*ops;
-	const struct scmi_protocol_events	*events;
-};
+extern struct bus_type scmi_bus_type;
 
 int __init scmi_bus_init(void);
-void __exit scmi_bus_exit(void);
 
-#define DECLARE_SCMI_REGISTER(func)		\
-	int __init scmi_##func##_register(void);
-DECLARE_SCMI_REGISTER(base);
-DECLARE_SCMI_REGISTER(reset);
-DECLARE_SCMI_REGISTER(clock);
-DECLARE_SCMI_REGISTER(voltage);
+struct scmi_handle *scmi_handle_get(struct device *dev);
 
-#define DEFINE_SCMI_PROTOCOL_REGISTER(name, proto)	\
-static const struct scmi_protocol *__this_proto = &(proto);	\
-								\
-int __init scmi_##name##_register(void)				\
-{								\
-	return scmi_protocol_register(__this_proto);		\
-}
+#define SCMI_BUS_NOTIFY_DEVICE_REQUEST		0
+#define SCMI_BUS_NOTIFY_DEVICE_UNREQUEST	1
+extern struct blocking_notifier_head scmi_requested_devices_nh;
 
-const struct scmi_protocol *scmi_protocol_get(int protocol_id);
+struct scmi_device *scmi_device_create(struct device_node *np,
+				       struct device *parent, int protocol,
+				       const char *name);
+void scmi_device_destroy(struct device *parent, int protocol, const char *name);
 
 int scmi_protocol_acquire(const struct scmi_handle *handle, u8 protocol_id);
 void scmi_protocol_release(const struct scmi_handle *handle, u8 protocol_id);
@@ -253,13 +132,18 @@ void scmi_protocol_release(const struct scmi_handle *handle, u8 protocol_id);
 /**
  * struct scmi_chan_info - Structure representing a SCMI channel information
  *
+ * @id: An identifier for this channel: this matches the protocol number
+ *      used to initialize this channel
  * @dev: Reference to device in the SCMI hierarchy corresponding to this
  *	 channel
+ * @rx_timeout_ms: The configured RX timeout in milliseconds.
  * @handle: Pointer to SCMI entity handle
  * @transport_info: Transport layer related information
  */
 struct scmi_chan_info {
+	int id;
 	struct device *dev;
+	unsigned int rx_timeout_ms;
 	struct scmi_handle *handle;
 	void *transport_info;
 };
@@ -267,67 +151,118 @@ struct scmi_chan_info {
 /**
  * struct scmi_transport_ops - Structure representing a SCMI transport ops
  *
+ * @link_supplier: Optional callback to add link to a supplier device
  * @chan_available: Callback to check if channel is available or not
  * @chan_setup: Callback to allocate and setup a channel
  * @chan_free: Callback to free a channel
+ * @get_max_msg: Optional callback to provide max_msg dynamically
+ *		 Returns the maximum number of messages for the channel type
+ *		 (tx or rx) that can be pending simultaneously in the system
  * @send_message: Callback to send a message
  * @mark_txdone: Callback to mark tx as done
  * @fetch_response: Callback to fetch response
  * @clear_channel: Callback to clear a channel
- * @poll_done: Callback to poll transfer status
  */
 struct scmi_transport_ops {
-	bool (*chan_available)(struct device *dev, int idx);
+	int (*link_supplier)(struct device *dev);
+	bool (*chan_available)(struct device_node *of_node, int idx);
 	int (*chan_setup)(struct scmi_chan_info *cinfo, struct device *dev,
 			  bool tx);
 	int (*chan_free)(int id, void *p, void *data);
+	unsigned int (*get_max_msg)(struct scmi_chan_info *base_cinfo);
 	int (*send_message)(struct scmi_chan_info *cinfo,
 			    struct scmi_xfer *xfer);
-	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret);
+	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret,
+			    struct scmi_xfer *xfer);
 	void (*fetch_response)(struct scmi_chan_info *cinfo,
 			       struct scmi_xfer *xfer);
 	void (*clear_channel)(struct scmi_chan_info *cinfo);
-	bool (*poll_done)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
 };
 
-int scmi_protocol_device_request(const struct scmi_device_id *id_table);
-void scmi_protocol_device_unrequest(const struct scmi_device_id *id_table);
-struct scmi_device *scmi_child_dev_find(struct device *parent,
-					int prot_id, const char *name);
-
 /**
  * struct scmi_desc - Description of SoC integration
  *
  * @ops: Pointer to the transport specific ops structure
  * @max_rx_timeout_ms: Timeout for communication with SoC (in Milliseconds)
- * @max_msg: Maximum number of messages that can be pending
- *	simultaneously in the system
+ * @max_msg: Maximum number of messages for a channel type (tx or rx) that can
+ *	be pending simultaneously in the system. May be overridden by the
+ *	get_max_msg op.
  * @max_msg_size: Maximum size of data per message that can be handled.
+ * @sync_cmds_completed_on_ret: Flag to indicate that the transport assures
+ *				synchronous-command messages are atomically
+ *				completed on .send_message: no need to poll
+ *				actively waiting for a response.
+ *				Used by core internally only when polling is
+ *				selected as a waiting for reply method: i.e.
+ *				if a completion irq was found use that anyway.
  */
 struct scmi_desc {
 	const struct scmi_transport_ops *ops;
 	int max_rx_timeout_ms;
 	int max_msg;
 	int max_msg_size;
+	const bool sync_cmds_completed_on_ret;
 };
 
-#ifdef CONFIG_ARM_SMCCC
+static inline bool is_polling_required(struct scmi_chan_info *cinfo,
+				       const struct scmi_desc *desc)
+{
+	return true;
+}
+
+static inline bool is_transport_polling_capable(const struct scmi_desc *desc)
+{
+	return desc->sync_cmds_completed_on_ret;
+}
+
+static inline bool is_polling_enabled(struct scmi_chan_info *cinfo,
+				      const struct scmi_desc *desc)
+{
+	return is_polling_required(cinfo, desc) &&
+		is_transport_polling_capable(desc);
+}
+
+void scmi_xfer_raw_put(const struct scmi_handle *handle,
+		       struct scmi_xfer *xfer);
+struct scmi_xfer *scmi_xfer_raw_get(const struct scmi_handle *handle);
+struct scmi_chan_info *
+scmi_xfer_raw_channel_get(const struct scmi_handle *handle, u8 protocol_id);
+
+int scmi_xfer_raw_inflight_register(const struct scmi_handle *handle,
+				    struct scmi_xfer *xfer);
+
+int scmi_xfer_raw_wait_for_message_response(struct scmi_chan_info *cinfo,
+					    struct scmi_xfer *xfer,
+					    unsigned int timeout_ms);
+#ifdef CONFIG_ARM_SCMI_TRANSPORT_SMC
 extern const struct scmi_desc scmi_smc_desc;
 #endif
+#ifdef CONFIG_ARM_SCMI_TRANSPORT_OPTEE
+extern const struct scmi_desc scmi_optee_desc;
+#endif
 
-void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
-void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
+void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr, void *priv);
 
 /* shmem related declarations */
 struct scmi_shared_mem;
 
 void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
-		      struct scmi_xfer *xfer);
+		      struct scmi_xfer *xfer, struct scmi_chan_info *cinfo);
 u32 shmem_read_header(struct scmi_shared_mem __iomem *shmem);
 void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
 			  struct scmi_xfer *xfer);
 void shmem_clear_channel(struct scmi_shared_mem __iomem *shmem);
-bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
-		     struct scmi_xfer *xfer);
 
+/* declarations for message passing transports */
+struct scmi_msg_payld;
+
+/* Maximum overhead of message w.r.t. struct scmi_desc.max_msg_size */
+#define SCMI_MSG_MAX_PROT_OVERHEAD (2 * sizeof(__le32))
+
+size_t msg_response_size(struct scmi_xfer *xfer);
+size_t msg_command_size(struct scmi_xfer *xfer);
+void msg_tx_prepare(struct scmi_msg_payld *msg, struct scmi_xfer *xfer);
+u32 msg_read_header(struct scmi_msg_payld *msg);
+void msg_fetch_response(struct scmi_msg_payld *msg, size_t len,
+			struct scmi_xfer *xfer);
 #endif /* _SCMI_COMMON_H */
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 98f672746527..e602f7a4404a 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -14,62 +14,53 @@
  * Copyright (C) 2018-2021 ARM Ltd.
  */
 
-#define pr_fmt(fmt) "SCMI DRIVER - " fmt
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <common.h>
 #include <linux/bitmap.h>
 #include <driver.h>
 #include <linux/export.h>
-#include <io.h>
+#include <linux/notifier.h>
+#include <linux/io.h>
+#include <io-64-nonatomic-hi-lo.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
 #include <of_address.h>
 #include <of_device.h>
 #include <linux/slab.h>
 #include <linux/idr.h>
+#include <linux/mutex.h>
 #include <linux/processor.h>
 
 #include "common.h"
 
-enum scmi_error_codes {
-	SCMI_SUCCESS = 0,	/* Success */
-	SCMI_ERR_SUPPORT = -1,	/* Not supported */
-	SCMI_ERR_PARAMS = -2,	/* Invalid Parameters */
-	SCMI_ERR_ACCESS = -3,	/* Invalid access/permission denied */
-	SCMI_ERR_ENTRY = -4,	/* Not found */
-	SCMI_ERR_RANGE = -5,	/* Value out of range */
-	SCMI_ERR_BUSY = -6,	/* Device busy */
-	SCMI_ERR_COMMS = -7,	/* Communication Error */
-	SCMI_ERR_GENERIC = -8,	/* Generic Error */
-	SCMI_ERR_HARDWARE = -9,	/* Hardware Error */
-	SCMI_ERR_PROTOCOL = -10,/* Protocol Error */
-	SCMI_ERR_MAX
-};
+static DEFINE_IDR(scmi_protocols);
+static DEFINE_SPINLOCK(protocol_lock);
 
 /* List of all SCMI devices active in system */
 static LIST_HEAD(scmi_list);
 /* Protection for the entire list */
+static DEFINE_MUTEX(scmi_list_mutex);
 /* Track the unique id for the transfers for debug & profiling purpose */
-static unsigned transfer_last_id;
-
-static DEFINE_IDR(scmi_requested_devices);
-
-struct scmi_requested_dev {
-	const struct scmi_device_id *id_table;
-	struct list_head node;
-};
+static atomic_t transfer_last_id;
 
 /**
  * struct scmi_xfers_info - Structure to manage transfer information
  *
- * @xfer_block: Preallocated Message array
  * @xfer_alloc_table: Bitmap table for allocated messages.
  *	Index of this bitmap table is also used for message
  *	sequence identifier.
+ * @xfer_lock: Protection for message allocation
+ * @max_msg: Maximum number of messages that can be pending
+ * @free_xfers: A free list for available to use xfers. It is initialized with
+ *		a number of xfers equal to the maximum allowed in-flight
+ *		messages.
  */
 struct scmi_xfers_info {
-	struct scmi_xfer *xfer_block;
 	unsigned long *xfer_alloc_table;
+	spinlock_t xfer_lock;
+	int max_msg;
+	struct hlist_head free_xfers;
 };
 
 /**
@@ -87,7 +78,7 @@ struct scmi_xfers_info {
 struct scmi_protocol_instance {
 	const struct scmi_handle	*handle;
 	const struct scmi_protocol	*proto;
-	int				users;
+	refcount_t			users;
 	void				*priv;
 	struct scmi_protocol_handle	ph;
 };
@@ -97,6 +88,7 @@ struct scmi_protocol_instance {
 /**
  * struct scmi_info - Structure representing a SCMI instance
  *
+ * @id: A sequence number starting from zero identifying this instance
  * @dev: Device pointer
  * @desc: SoC description for this instance
  * @version: SCMI revision information containing protocol version,
@@ -109,12 +101,23 @@ struct scmi_protocol_instance {
  * @protocols: IDR for protocols' instance descriptors initialized for
  *	       this SCMI instance: populated on protocol's first attempted
  *	       usage.
+ * @protocols_mtx: A mutex to protect protocols instances initialization.
  * @protocols_imp: List of protocols implemented, currently maximum of
- *	MAX_PROTOCOLS_IMP elements allocated by the base protocol
+ *		   scmi_revision_info.num_protocols elements allocated by the
+ *		   base protocol
  * @active_protocols: IDR storing device_nodes for protocols actually defined
  *		      in the DT and confirmed as implemented by fw.
+ * @atomic_threshold: Optional system wide DT-configured threshold, expressed
+ *		      in microseconds, for atomic operations.
+ *		      Only SCMI synchronous commands reported by the platform
+ *		      to have an execution latency lesser-equal to the threshold
+ *		      should be considered for atomic mode operation: such
+ *		      decision is finally left up to the SCMI drivers.
  * @node: List head
  * @users: Number of users of this instance
+ * @dev_req_nb: A notifier to listen for device request/unrequest on the scmi
+ *		bus
+ * @devreq_mtx: A mutex to serialize device creation for this SCMI instance
  */
 struct scmi_info {
 	struct device *dev;
@@ -127,47 +130,256 @@ struct scmi_info {
 	struct idr rx_idr;
 	struct idr protocols;
 	/* Ensure mutual exclusive access to protocols instance array */
+	struct mutex protocols_mtx;
 	u8 *protocols_imp;
 	struct idr active_protocols;
+	unsigned int atomic_threshold;
 	struct list_head node;
-	int users;
+	struct notifier_block dev_req_nb;
+	/* Serialize device creation process for this instance */
+	struct mutex devreq_mtx;
 };
 
 #define handle_to_scmi_info(h)	container_of(h, struct scmi_info, handle)
+#define req_nb_to_scmi_info(nb)	container_of(nb, struct scmi_info, dev_req_nb)
 
-static const int scmi_linux_errmap[] = {
-	/* better than switch case as long as return value is continuous */
-	0,			/* SCMI_SUCCESS */
-	-EOPNOTSUPP,		/* SCMI_ERR_SUPPORT */
-	-EINVAL,		/* SCMI_ERR_PARAM */
-	-EACCES,		/* SCMI_ERR_ACCESS */
-	-ENOENT,		/* SCMI_ERR_ENTRY */
-	-ERANGE,		/* SCMI_ERR_RANGE */
-	-EBUSY,			/* SCMI_ERR_BUSY */
-	-ECOMM,			/* SCMI_ERR_COMMS */
-	-EIO,			/* SCMI_ERR_GENERIC */
-	-EREMOTEIO,		/* SCMI_ERR_HARDWARE */
-	-EPROTO,		/* SCMI_ERR_PROTOCOL */
-};
-
-static inline int scmi_to_linux_errno(int errno)
+static const struct scmi_protocol *scmi_protocol_get(int protocol_id)
 {
-	if (errno < SCMI_SUCCESS && errno > SCMI_ERR_MAX)
-		return scmi_linux_errmap[-errno];
-	return -EIO;
+	const struct scmi_protocol *proto;
+
+	proto = idr_find(&scmi_protocols, protocol_id);
+	if (!proto) {
+		pr_warn("SCMI Protocol 0x%x not found!\n", protocol_id);
+		return NULL;
+	}
+
+	pr_debug("Found SCMI Protocol 0x%x\n", protocol_id);
+
+	return proto;
+}
+
+int scmi_protocol_register(const struct scmi_protocol *proto)
+{
+	int ret;
+
+	if (!proto) {
+		pr_err("invalid protocol\n");
+		return -EINVAL;
+	}
+
+	if (!proto->instance_init) {
+		pr_err("missing init for protocol 0x%x\n", proto->id);
+		return -EINVAL;
+	}
+
+	spin_lock(&protocol_lock);
+	ret = idr_alloc_one(&scmi_protocols, (void *)proto, proto->id);
+	spin_unlock(&protocol_lock);
+	if (ret != proto->id) {
+		pr_err("unable to allocate SCMI idr slot for 0x%x - err %d\n",
+		       proto->id, ret);
+		return ret;
+	}
+
+	pr_debug("Registered SCMI Protocol 0x%x\n", proto->id);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(scmi_protocol_register);
+
+/**
+ * scmi_create_protocol_devices  - Create devices for all pending requests for
+ * this SCMI instance.
+ *
+ * @np: The device node describing the protocol
+ * @info: The SCMI instance descriptor
+ * @prot_id: The protocol ID
+ * @name: The optional name of the device to be created: if not provided this
+ *	  call will lead to the creation of all the devices currently requested
+ *	  for the specified protocol.
+ */
+static void scmi_create_protocol_devices(struct device_node *np,
+					 struct scmi_info *info,
+					 int prot_id, const char *name)
+{
+	struct scmi_device *sdev;
+
+	mutex_lock(&info->devreq_mtx);
+	sdev = scmi_device_create(np, info->dev, prot_id, name);
+	if (name && !sdev)
+		dev_err(info->dev,
+			"failed to create device for protocol 0x%X (%s)\n",
+			prot_id, name);
+	mutex_unlock(&info->devreq_mtx);
+}
+
+static void scmi_destroy_protocol_devices(struct scmi_info *info,
+					  int prot_id, const char *name)
+{
+	mutex_lock(&info->devreq_mtx);
+	scmi_device_destroy(info->dev, prot_id, name);
+	mutex_unlock(&info->devreq_mtx);
 }
 
 /**
- * scmi_dump_header_dbg() - Helper to dump a message header.
+ * scmi_xfer_token_set  - Reserve and set new token for the xfer at hand
  *
- * @dev: Device pointer corresponding to the SCMI entity
- * @hdr: pointer to header.
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
+ * @xfer: The xfer to act upon
+ *
+ * Pick the next unused monotonically increasing token and set it into
+ * xfer->hdr.seq: picking a monotonically increasing value avoids immediate
+ * reuse of freshly completed or timed-out xfers, thus mitigating the risk
+ * of incorrect association of a late and expired xfer with a live in-flight
+ * transaction, both happening to re-use the same token identifier.
+ *
+ * Since platform is NOT required to answer our request in-order we should
+ * account for a few rare but possible scenarios:
+ *
+ *  - exactly 'next_token' may be NOT available so pick xfer_id >= next_token
+ *    using find_next_zero_bit() starting from candidate next_token bit
+ *
+ *  - all tokens ahead upto (MSG_TOKEN_ID_MASK - 1) are used in-flight but we
+ *    are plenty of free tokens at start, so try a second pass using
+ *    find_next_zero_bit() and starting from 0.
+ *
+ *  X = used in-flight
+ *
+ * Normal
+ * ------
+ *
+ *		|- xfer_id picked
+ *   -----------+----------------------------------------------------------
+ *   | | |X|X|X| | | | | | ... ... ... ... ... ... ... ... ... ... ...|X|X|
+ *   ----------------------------------------------------------------------
+ *		^
+ *		|- next_token
+ *
+ * Out-of-order pending at start
+ * -----------------------------
+ *
+ *	  |- xfer_id picked, last_token fixed
+ *   -----+----------------------------------------------------------------
+ *   |X|X| | | | |X|X| ... ... ... ... ... ... ... ... ... ... ... ...|X| |
+ *   ----------------------------------------------------------------------
+ *    ^
+ *    |- next_token
+ *
+ *
+ * Out-of-order pending at end
+ * ---------------------------
+ *
+ *	  |- xfer_id picked, last_token fixed
+ *   -----+----------------------------------------------------------------
+ *   |X|X| | | | |X|X| ... ... ... ... ... ... ... ... ... ... |X|X|X||X|X|
+ *   ----------------------------------------------------------------------
+ *								^
+ *								|- next_token
+ *
+ * Context: Assumes to be called with @xfer_lock already acquired.
+ *
+ * Return: 0 on Success or error
  */
-static inline void scmi_dump_header_dbg(struct device *dev,
-					struct scmi_msg_hdr *hdr)
+static int scmi_xfer_token_set(struct scmi_xfers_info *minfo,
+			       struct scmi_xfer *xfer)
 {
-	dev_dbg(dev, "Message ID: %x Sequence ID: %x Protocol: %x\n",
-		hdr->id, hdr->seq, hdr->protocol_id);
+	unsigned long xfer_id, next_token;
+
+	/*
+	 * Pick a candidate monotonic token in range [0, MSG_TOKEN_MAX - 1]
+	 * using the pre-allocated transfer_id as a base.
+	 * Note that the global transfer_id is shared across all message types
+	 * so there could be holes in the allocated set of monotonic sequence
+	 * numbers, but that is going to limit the effectiveness of the
+	 * mitigation only in very rare limit conditions.
+	 */
+	next_token = (xfer->transfer_id & (MSG_TOKEN_MAX - 1));
+
+	/* Pick the next available xfer_id >= next_token */
+	xfer_id = find_next_zero_bit(minfo->xfer_alloc_table,
+				     MSG_TOKEN_MAX, next_token);
+	if (xfer_id == MSG_TOKEN_MAX) {
+		/*
+		 * After heavily out-of-order responses, there are no free
+		 * tokens ahead, but only at start of xfer_alloc_table so
+		 * try again from the beginning.
+		 */
+		xfer_id = find_next_zero_bit(minfo->xfer_alloc_table,
+					     MSG_TOKEN_MAX, 0);
+		/*
+		 * Something is wrong if we got here since there can be a
+		 * maximum number of (MSG_TOKEN_MAX - 1) in-flight messages
+		 * but we have not found any free token [0, MSG_TOKEN_MAX - 1].
+		 */
+		if (WARN_ON_ONCE(xfer_id == MSG_TOKEN_MAX))
+			return -ENOMEM;
+	}
+
+	/* Update +/- last_token accordingly if we skipped some hole */
+	if (xfer_id != next_token)
+		atomic_add((int)(xfer_id - next_token), &transfer_last_id);
+
+	xfer->hdr.seq = (u16)xfer_id;
+
+	return 0;
+}
+
+/**
+ * scmi_xfer_token_clear  - Release the token
+ *
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
+ * @xfer: The xfer to act upon
+ */
+static inline void scmi_xfer_token_clear(struct scmi_xfers_info *minfo,
+					 struct scmi_xfer *xfer)
+{
+	clear_bit(xfer->hdr.seq, minfo->xfer_alloc_table);
+}
+
+/**
+ * scmi_xfer_inflight_register_unlocked  - Register the xfer as in-flight
+ *
+ * @xfer: The xfer to register
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
+ *
+ * Note that this helper assumes that the xfer to be registered as in-flight
+ * had been built using an xfer sequence number which still corresponds to a
+ * free slot in the xfer_alloc_table.
+ *
+ * Context: Assumes to be called with @xfer_lock already acquired.
+ */
+static inline void
+scmi_xfer_inflight_register_unlocked(struct scmi_xfer *xfer,
+				     struct scmi_xfers_info *minfo)
+{
+	/* Set in-flight */
+	set_bit(xfer->hdr.seq, minfo->xfer_alloc_table);
+	xfer->pending = true;
+}
+
+/**
+ * scmi_xfer_pending_set  - Pick a proper sequence number and mark the xfer
+ * as pending in-flight
+ *
+ * @xfer: The xfer to act upon
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
+ *
+ * Return: 0 on Success or error otherwise
+ */
+static inline int scmi_xfer_pending_set(struct scmi_xfer *xfer,
+					struct scmi_xfers_info *minfo)
+{
+	int ret;
+	unsigned long flags;
+
+	spin_lock_irqsave(&minfo->xfer_lock, flags);
+	/* Set a new monotonic token as the xfer sequence number */
+	ret = scmi_xfer_token_set(minfo, xfer);
+	if (!ret)
+		scmi_xfer_inflight_register_unlocked(xfer, minfo);
+	spin_unlock_irqrestore(&minfo->xfer_lock, flags);
+
+	return ret;
 }
 
 /**
@@ -179,31 +391,43 @@ static inline void scmi_dump_header_dbg(struct device *dev,
  * Helper function which is used by various message functions that are
  * exposed to clients of this driver for allocating a message traffic event.
  *
- * This function can sleep depending on pending requests already in the system
- * for the SCMI entity.
+ * Picks an xfer from the free list @free_xfers (if any available) and perform
+ * a basic initialization.
  *
- * Return: 0 if all went fine, else corresponding error.
+ * Note that, at this point, still no sequence number is assigned to the
+ * allocated xfer, nor it is registered as a pending transaction.
+ *
+ * The successfully initialized xfer is refcounted.
+ *
+ * Context: Holds @xfer_lock while manipulating @free_xfers.
+ *
+ * Return: An initialized xfer if all went fine, else pointer error.
  */
 static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle,
 				       struct scmi_xfers_info *minfo)
 {
-	u16 xfer_id;
+	unsigned long flags;
 	struct scmi_xfer *xfer;
-	unsigned long bit_pos;
-	struct scmi_info *info = handle_to_scmi_info(handle);
 
-	bit_pos = find_first_zero_bit(minfo->xfer_alloc_table,
-				      info->desc->max_msg);
-	if (bit_pos == info->desc->max_msg)
+	spin_lock_irqsave(&minfo->xfer_lock, flags);
+	if (hlist_empty(&minfo->free_xfers)) {
+		spin_unlock_irqrestore(&minfo->xfer_lock, flags);
 		return ERR_PTR(-ENOMEM);
-	set_bit(bit_pos, minfo->xfer_alloc_table);
+	}
 
-	xfer_id = bit_pos;
+	/* grab an xfer from the free_list */
+	xfer = hlist_entry(minfo->free_xfers.first, struct scmi_xfer, node);
+	hlist_del_init(&xfer->node);
 
-	xfer = &minfo->xfer_block[xfer_id];
-	xfer->hdr.seq = xfer_id;
-	xfer->done = false;
-	xfer->transfer_id = ++transfer_last_id;
+	/*
+	 * Allocate transfer_id early so that can be used also as base for
+	 * monotonic sequence number generation if needed.
+	 */
+	xfer->transfer_id = atomic_inc_return(&transfer_last_id);
+
+	refcount_set(&xfer->users, 1);
+	atomic_set(&xfer->busy, SCMI_XFER_FREE);
+	spin_unlock_irqrestore(&minfo->xfer_lock, flags);
 
 	return xfer;
 }
@@ -213,90 +437,33 @@ static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle,
  *
  * @minfo: Pointer to Tx/Rx Message management info based on channel type
  * @xfer: message that was reserved by scmi_xfer_get
+ *
+ * After refcount check, possibly release an xfer, clearing the token slot,
+ * removing xfer from @pending_xfers and putting it back into free_xfers.
+ *
+ * This holds a spinlock to maintain integrity of internal data structures.
  */
 static void
 __scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
 {
-	clear_bit(xfer->hdr.seq, minfo->xfer_alloc_table);
-}
+	unsigned long flags;
 
-static void scmi_handle_response(struct scmi_chan_info *cinfo,
-				 u16 xfer_id, u8 msg_type)
-{
-	struct scmi_xfer *xfer;
-	struct device *dev = cinfo->dev;
-	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
-	struct scmi_xfers_info *minfo = &info->tx_minfo;
-
-	/* Are we even expecting this? */
-	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
-		dev_err(dev, "message for %d is not expected!\n", xfer_id);
-		info->desc->ops->clear_channel(cinfo);
-		return;
-	}
-
-	xfer = &minfo->xfer_block[xfer_id];
-	/*
-	 * Even if a response was indeed expected on this slot at this point,
-	 * a buggy platform could wrongly reply feeding us an unexpected
-	 * delayed response we're not prepared to handle: bail-out safely
-	 * blaming firmware.
-	 */
-	if (unlikely(msg_type == MSG_TYPE_DELAYED_RESP && !xfer->async_done)) {
-		dev_err(dev,
-			"Delayed Response for %d not expected! Buggy F/W ?\n",
-			xfer_id);
-		info->desc->ops->clear_channel(cinfo);
-		/* It was unexpected, so nobody will clear the xfer if not us */
-		__scmi_xfer_put(minfo, xfer);
-		return;
-	}
-
-	scmi_dump_header_dbg(dev, &xfer->hdr);
-
-	info->desc->ops->fetch_response(cinfo, xfer);
-
-	if (msg_type == MSG_TYPE_DELAYED_RESP) {
-		info->desc->ops->clear_channel(cinfo);
-		*xfer->async_done = true;
-	} else {
-		xfer->done = true;
-	}
-}
-
-/**
- * scmi_rx_callback() - callback for receiving messages
- *
- * @cinfo: SCMI channel info
- * @msg_hdr: Message header
- *
- * Processes one received message to appropriate transfer information and
- * signals completion of the transfer.
- *
- * NOTE: This function will be invoked in IRQ context, hence should be
- * as optimal as possible.
- */
-void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr)
-{
-	u16 xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
-	u8 msg_type = MSG_XTRACT_TYPE(msg_hdr);
-
-	switch (msg_type) {
-	case MSG_TYPE_COMMAND:
-	case MSG_TYPE_DELAYED_RESP:
-		scmi_handle_response(cinfo, xfer_id, msg_type);
-		break;
-	default:
-		WARN_ONCE(1, "received unknown msg_type:%d\n", msg_type);
-		break;
+	spin_lock_irqsave(&minfo->xfer_lock, flags);
+	if (refcount_dec_and_test(&xfer->users)) {
+		if (xfer->pending) {
+			scmi_xfer_token_clear(minfo, xfer);
+			xfer->pending = false;
+		}
+		hlist_add_head(&xfer->node, &minfo->free_xfers);
 	}
+	spin_unlock_irqrestore(&minfo->xfer_lock, flags);
 }
 
 /**
  * xfer_put() - Release a transmit message
  *
  * @ph: Pointer to SCMI protocol handle
- * @xfer: message that was reserved by scmi_xfer_get
+ * @xfer: message that was reserved by xfer_get_init
  */
 static void xfer_put(const struct scmi_protocol_handle *ph,
 		     struct scmi_xfer *xfer)
@@ -307,6 +474,46 @@ static void xfer_put(const struct scmi_protocol_handle *ph,
 	__scmi_xfer_put(&info->tx_minfo, xfer);
 }
 
+static int scmi_wait_for_reply(struct device *dev, const struct scmi_desc *desc,
+			       struct scmi_chan_info *cinfo,
+			       struct scmi_xfer *xfer, unsigned int timeout_ms)
+{
+	int ret = 0;
+	unsigned long flags;
+
+	/*
+	 * Do not fetch_response if an out-of-order delayed
+	 * response is being processed.
+	 */
+	spin_lock_irqsave(&xfer->lock, flags);
+	if (xfer->state == SCMI_XFER_SENT_OK) {
+		desc->ops->fetch_response(cinfo, xfer);
+		xfer->state = SCMI_XFER_RESP_OK;
+	}
+	spin_unlock_irqrestore(&xfer->lock, flags);
+
+	return ret;
+}
+
+/**
+ * scmi_wait_for_message_response  - An helper to group all the possible ways of
+ * waiting for a synchronous message response.
+ *
+ * @cinfo: SCMI channel info
+ * @xfer: Reference to the transfer being waited for.
+ *
+ * Return: 0 on Success, error otherwise.
+ */
+static int scmi_wait_for_message_response(struct scmi_chan_info *cinfo,
+					  struct scmi_xfer *xfer)
+{
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+	struct device *dev = info->dev;
+
+	return scmi_wait_for_reply(dev, info->desc, cinfo, xfer,
+				   info->desc->max_rx_timeout_ms);
+}
+
 /**
  * do_xfer() - Do one transfer
  *
@@ -325,18 +532,28 @@ static int do_xfer(const struct scmi_protocol_handle *ph,
 	struct scmi_info *info = handle_to_scmi_info(pi->handle);
 	struct device *dev = info->dev;
 	struct scmi_chan_info *cinfo;
-	u64 start;
+
+	/* Check for polling request on custom command xfers at first */
+	if (!is_transport_polling_capable(info->desc)) {
+		dev_warn_once(dev,
+			      "Polling mode is not supported by transport.\n");
+		return -EINVAL;
+	}
+
+	cinfo = idr_find(&info->tx_idr, pi->proto->id);
+	if (unlikely(!cinfo))
+		return -EINVAL;
 
 	/*
-	 * Re-instate protocol id here from protocol handle so that cannot be
+	 * Initialise protocol id now from protocol handle to avoid it being
 	 * overridden by mistake (or malice) by the protocol code mangling with
-	 * the scmi_xfer structure.
+	 * the scmi_xfer structure prior to this.
 	 */
 	xfer->hdr.protocol_id = pi->proto->id;
 
-	cinfo = idr_find(&info->tx_idr, xfer->hdr.protocol_id);
-	if (unlikely(!cinfo))
-		return -EINVAL;
+	/* Clear any stale status */
+	xfer->hdr.status = SCMI_SUCCESS;
+	xfer->state = SCMI_XFER_SENT_OK;
 
 	ret = info->desc->ops->send_message(cinfo, xfer);
 	if (ret < 0) {
@@ -344,21 +561,12 @@ static int do_xfer(const struct scmi_protocol_handle *ph,
 		return ret;
 	}
 
-	/* And we wait for the response. */
-	start = get_time_ns();
-	while (!xfer->done) {
-		if (is_timeout(start, info->desc->max_rx_timeout_ms * (u64)NSEC_PER_MSEC)) {
-			dev_err(dev, "timed out in resp(caller: %pS)\n", (void *)_RET_IP_);
-			ret = -ETIMEDOUT;
-			break;
-		}
-	}
-
+	ret = scmi_wait_for_message_response(cinfo, xfer);
 	if (!ret && xfer->hdr.status)
 		ret = scmi_to_linux_errno(xfer->hdr.status);
 
 	if (info->desc->ops->mark_txdone)
-		info->desc->ops->mark_txdone(cinfo, ret);
+		info->desc->ops->mark_txdone(cinfo, ret, xfer);
 
 	return ret;
 }
@@ -372,47 +580,6 @@ static void reset_rx_to_maxsz(const struct scmi_protocol_handle *ph,
 	xfer->rx.len = info->desc->max_msg_size;
 }
 
-#define SCMI_MAX_RESPONSE_TIMEOUT_NS	(2 * NSEC_PER_SEC)
-
-/**
- * do_xfer_with_response() - Do one transfer and wait until the delayed
- *	response is received
- *
- * @ph: Pointer to SCMI protocol handle
- * @xfer: Transfer to initiate and wait for response
- *
- * Return: -ETIMEDOUT in case of no delayed response, if transmit error,
- *	return corresponding error, else if all goes well, return 0.
- */
-static int do_xfer_with_response(const struct scmi_protocol_handle *ph,
-				 struct scmi_xfer *xfer)
-{
-	int ret;
-	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
-	bool async_response = false;
-	u64 start;
-
-	xfer->hdr.protocol_id = pi->proto->id;
-
-	xfer->async_done = &async_response;
-
-	ret = do_xfer(ph, xfer);
-	if (ret)
-		goto out;
-
-	start = get_time_ns();
-	while (!*xfer->async_done) {
-		if (is_timeout(start, SCMI_MAX_RESPONSE_TIMEOUT_NS)) {
-			ret = -ETIMEDOUT;
-			break;
-		}
-	}
-
-out:
-	xfer->async_done = NULL;
-	return ret;
-}
-
 /**
  * xfer_get_init() - Allocate and initialise one message for transmit
  *
@@ -451,11 +618,19 @@ static int xfer_get_init(const struct scmi_protocol_handle *ph,
 		return ret;
 	}
 
+	/* Pick a sequence number and register this xfer as in-flight */
+	ret = scmi_xfer_pending_set(xfer, minfo);
+	if (ret) {
+		dev_err(pi->handle->dev,
+			"Failed to get monotonic token %d\n", ret);
+		__scmi_xfer_put(minfo, xfer);
+		return ret;
+	}
+
 	xfer->tx.len = tx_size;
 	xfer->rx.len = rx_size ? : info->desc->max_msg_size;
+	xfer->hdr.type = MSG_TYPE_COMMAND;
 	xfer->hdr.id = msg_id;
-	xfer->hdr.protocol_id = pi->proto->id;
-	xfer->hdr.poll_completion = false;
 
 	*p = xfer;
 
@@ -529,10 +704,335 @@ static const struct scmi_xfer_ops xfer_ops = {
 	.xfer_get_init = xfer_get_init,
 	.reset_rx_to_maxsz = reset_rx_to_maxsz,
 	.do_xfer = do_xfer,
-	.do_xfer_with_response = do_xfer_with_response,
 	.xfer_put = xfer_put,
 };
 
+struct scmi_msg_resp_domain_name_get {
+	__le32 flags;
+	u8 name[SCMI_MAX_STR_SIZE];
+};
+
+/**
+ * scmi_common_extended_name_get  - Common helper to get extended resources name
+ * @ph: A protocol handle reference.
+ * @cmd_id: The specific command ID to use.
+ * @res_id: The specific resource ID to use.
+ * @name: A pointer to the preallocated area where the retrieved name will be
+ *	  stored as a NULL terminated string.
+ * @len: The len in bytes of the @name char array.
+ *
+ * Return: 0 on Succcess
+ */
+static int scmi_common_extended_name_get(const struct scmi_protocol_handle *ph,
+					 u8 cmd_id, u32 res_id, char *name,
+					 size_t len)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_domain_name_get *resp;
+
+	ret = ph->xops->xfer_get_init(ph, cmd_id, sizeof(res_id),
+				      sizeof(*resp), &t);
+	if (ret)
+		goto out;
+
+	put_unaligned_le32(res_id, t->tx.buf);
+	resp = t->rx.buf;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		strscpy(name, resp->name, len);
+
+	ph->xops->xfer_put(ph, t);
+out:
+	if (ret)
+		dev_warn(ph->dev,
+			 "Failed to get extended name - id:%u (ret:%d). Using %s\n",
+			 res_id, ret, name);
+	return ret;
+}
+
+/**
+ * struct scmi_iterator  - Iterator descriptor
+ * @msg: A reference to the message TX buffer; filled by @prepare_message with
+ *	 a proper custom command payload for each multi-part command request.
+ * @resp: A reference to the response RX buffer; used by @update_state and
+ *	  @process_response to parse the multi-part replies.
+ * @t: A reference to the underlying xfer initialized and used transparently by
+ *     the iterator internal routines.
+ * @ph: A reference to the associated protocol handle to be used.
+ * @ops: A reference to the custom provided iterator operations.
+ * @state: The current iterator state; used and updated in turn by the iterators
+ *	   internal routines and by the caller-provided @scmi_iterator_ops.
+ * @priv: A reference to optional private data as provided by the caller and
+ *	  passed back to the @@scmi_iterator_ops.
+ */
+struct scmi_iterator {
+	void *msg;
+	void *resp;
+	struct scmi_xfer *t;
+	const struct scmi_protocol_handle *ph;
+	struct scmi_iterator_ops *ops;
+	struct scmi_iterator_state state;
+	void *priv;
+};
+
+static void *scmi_iterator_init(const struct scmi_protocol_handle *ph,
+				struct scmi_iterator_ops *ops,
+				unsigned int max_resources, u8 msg_id,
+				size_t tx_size, void *priv)
+{
+	int ret;
+	struct scmi_iterator *i;
+
+	i = devm_kzalloc(ph->dev, sizeof(*i), GFP_KERNEL);
+	if (!i)
+		return ERR_PTR(-ENOMEM);
+
+	i->ph = ph;
+	i->ops = ops;
+	i->priv = priv;
+
+	ret = ph->xops->xfer_get_init(ph, msg_id, tx_size, 0, &i->t);
+	if (ret) {
+		devm_kfree(ph->dev, i);
+		return ERR_PTR(ret);
+	}
+
+	i->state.max_resources = max_resources;
+	i->msg = i->t->tx.buf;
+	i->resp = i->t->rx.buf;
+
+	return i;
+}
+
+static int scmi_iterator_run(void *iter)
+{
+	int ret = -EINVAL;
+	struct scmi_iterator_ops *iops;
+	const struct scmi_protocol_handle *ph;
+	struct scmi_iterator_state *st;
+	struct scmi_iterator *i = iter;
+
+	if (!i || !i->ops || !i->ph)
+		return ret;
+
+	iops = i->ops;
+	ph = i->ph;
+	st = &i->state;
+
+	do {
+		iops->prepare_message(i->msg, st->desc_index, i->priv);
+		ret = ph->xops->do_xfer(ph, i->t);
+		if (ret)
+			break;
+
+		st->rx_len = i->t->rx.len;
+		ret = iops->update_state(st, i->resp, i->priv);
+		if (ret)
+			break;
+
+		if (st->num_returned > st->max_resources - st->desc_index) {
+			dev_err(ph->dev,
+				"No. of resources can't exceed %d\n",
+				st->max_resources);
+			ret = -EINVAL;
+			break;
+		}
+
+		for (st->loop_idx = 0; st->loop_idx < st->num_returned;
+		     st->loop_idx++) {
+			ret = iops->process_response(ph, i->resp, st, i->priv);
+			if (ret)
+				goto out;
+		}
+
+		st->desc_index += st->num_returned;
+		ph->xops->reset_rx_to_maxsz(ph, i->t);
+		/*
+		 * check for both returned and remaining to avoid infinite
+		 * loop due to buggy firmware
+		 */
+	} while (st->num_returned && st->num_remaining);
+
+out:
+	/* Finalize and destroy iterator */
+	ph->xops->xfer_put(ph, i->t);
+	devm_kfree(ph->dev, i);
+
+	return ret;
+}
+
+struct scmi_msg_get_fc_info {
+	__le32 domain;
+	__le32 message_id;
+};
+
+struct scmi_msg_resp_desc_fc {
+	__le32 attr;
+#define SUPPORTS_DOORBELL(x)		((x) & BIT(0))
+#define DOORBELL_REG_WIDTH(x)		FIELD_GET(GENMASK(2, 1), (x))
+	__le32 rate_limit;
+	__le32 chan_addr_low;
+	__le32 chan_addr_high;
+	__le32 chan_size;
+	__le32 db_addr_low;
+	__le32 db_addr_high;
+	__le32 db_set_lmask;
+	__le32 db_set_hmask;
+	__le32 db_preserve_lmask;
+	__le32 db_preserve_hmask;
+};
+
+static void
+scmi_common_fastchannel_init(const struct scmi_protocol_handle *ph,
+			     u8 describe_id, u32 message_id, u32 valid_size,
+			     u32 domain, void __iomem **p_addr,
+			     struct scmi_fc_db_info **p_db)
+{
+	int ret;
+	u32 flags;
+	u64 phys_addr;
+	u8 size;
+	void __iomem *addr;
+	struct scmi_xfer *t;
+	struct scmi_fc_db_info *db = NULL;
+	struct scmi_msg_get_fc_info *info;
+	struct scmi_msg_resp_desc_fc *resp;
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+
+	if (!p_addr) {
+		ret = -EINVAL;
+		goto err_out;
+	}
+
+	ret = ph->xops->xfer_get_init(ph, describe_id,
+				      sizeof(*info), sizeof(*resp), &t);
+	if (ret)
+		goto err_out;
+
+	info = t->tx.buf;
+	info->domain = cpu_to_le32(domain);
+	info->message_id = cpu_to_le32(message_id);
+
+	/*
+	 * Bail out on error leaving fc_info addresses zeroed; this includes
+	 * the case in which the requested domain/message_id does NOT support
+	 * fastchannels at all.
+	 */
+	ret = ph->xops->do_xfer(ph, t);
+	if (ret)
+		goto err_xfer;
+
+	resp = t->rx.buf;
+	flags = le32_to_cpu(resp->attr);
+	size = le32_to_cpu(resp->chan_size);
+	if (size != valid_size) {
+		ret = -EINVAL;
+		goto err_xfer;
+	}
+
+	phys_addr = le32_to_cpu(resp->chan_addr_low);
+	phys_addr |= (u64)le32_to_cpu(resp->chan_addr_high) << 32;
+	addr = devm_ioremap(ph->dev, phys_addr, size);
+	if (!addr) {
+		ret = -EADDRNOTAVAIL;
+		goto err_xfer;
+	}
+
+	*p_addr = addr;
+
+	if (p_db && SUPPORTS_DOORBELL(flags)) {
+		db = devm_kzalloc(ph->dev, sizeof(*db), GFP_KERNEL);
+		if (!db) {
+			ret = -ENOMEM;
+			goto err_db;
+		}
+
+		size = 1 << DOORBELL_REG_WIDTH(flags);
+		phys_addr = le32_to_cpu(resp->db_addr_low);
+		phys_addr |= (u64)le32_to_cpu(resp->db_addr_high) << 32;
+		addr = devm_ioremap(ph->dev, phys_addr, size);
+		if (!addr) {
+			ret = -EADDRNOTAVAIL;
+			goto err_db_mem;
+		}
+
+		db->addr = addr;
+		db->width = size;
+		db->set = le32_to_cpu(resp->db_set_lmask);
+		db->set |= (u64)le32_to_cpu(resp->db_set_hmask) << 32;
+		db->mask = le32_to_cpu(resp->db_preserve_lmask);
+		db->mask |= (u64)le32_to_cpu(resp->db_preserve_hmask) << 32;
+
+		*p_db = db;
+	}
+
+	ph->xops->xfer_put(ph, t);
+
+	dev_dbg(ph->dev,
+		"Using valid FC for protocol %X [MSG_ID:%u / RES_ID:%u]\n",
+		pi->proto->id, message_id, domain);
+
+	return;
+
+err_db_mem:
+	devm_kfree(ph->dev, db);
+
+err_db:
+	*p_addr = NULL;
+
+err_xfer:
+	ph->xops->xfer_put(ph, t);
+
+err_out:
+	dev_warn(ph->dev,
+		 "Failed to get FC for protocol %X [MSG_ID:%u / RES_ID:%u] - ret:%d. Using regular messaging.\n",
+		 pi->proto->id, message_id, domain, ret);
+}
+
+#define SCMI_PROTO_FC_RING_DB(w)			\
+do {							\
+	u##w val = 0;					\
+							\
+	if (db->mask)					\
+		val = ioread##w(db->addr) & db->mask;	\
+	iowrite##w((u##w)db->set | val, db->addr);	\
+} while (0)
+
+static void scmi_common_fastchannel_db_ring(struct scmi_fc_db_info *db)
+{
+	if (!db || !db->addr)
+		return;
+
+	if (db->width == 1)
+		SCMI_PROTO_FC_RING_DB(8);
+	else if (db->width == 2)
+		SCMI_PROTO_FC_RING_DB(16);
+	else if (db->width == 4)
+		SCMI_PROTO_FC_RING_DB(32);
+	else /* db->width == 8 */
+#ifdef CONFIG_64BIT
+		SCMI_PROTO_FC_RING_DB(64);
+#else
+	{
+		u64 val = 0;
+
+		if (db->mask)
+			val = ioread64_hi_lo(db->addr) & db->mask;
+		iowrite64_hi_lo(db->set | val, db->addr);
+	}
+#endif
+}
+
+static const struct scmi_proto_helpers_ops helpers_ops = {
+	.extended_name_get = scmi_common_extended_name_get,
+	.iter_response_init = scmi_iterator_init,
+	.iter_response_run = scmi_iterator_run,
+	.fastchannel_init = scmi_common_fastchannel_init,
+	.fastchannel_db_ring = scmi_common_fastchannel_db_ring,
+};
+
 /**
  * scmi_revision_area_get  - Retrieve version memory area.
  *
@@ -559,10 +1059,11 @@ scmi_revision_area_get(const struct scmi_protocol_handle *ph)
  * @proto: The protocol descriptor.
  *
  * Allocate a new protocol instance descriptor, using the provided @proto
- * description, against the specified SCMI instance @info, and initialize it;
+ * description, against the specified SCMI instance @info, and initialize it.
  *
+ * Context: Assumes to be called with @protocols_mtx already acquired.
  * Return: A reference to a freshly allocated and initialized protocol instance
- *	   or ERR_PTR on failure. On failure the @proto reference is at first
+ *	   or ERR_PTR on failure.
  */
 static struct scmi_protocol_instance *
 scmi_alloc_init_protocol_instance(struct scmi_info *info,
@@ -572,7 +1073,7 @@ scmi_alloc_init_protocol_instance(struct scmi_info *info,
 	struct scmi_protocol_instance *pi;
 	const struct scmi_handle *handle = &info->handle;
 
-	pi = kzalloc(sizeof(*pi), GFP_KERNEL);
+	pi = devm_kzalloc(handle->dev, sizeof(*pi), GFP_KERNEL);
 	if (!pi)
 		goto clean;
 
@@ -580,9 +1081,10 @@ scmi_alloc_init_protocol_instance(struct scmi_info *info,
 	pi->handle = handle;
 	pi->ph.dev = handle->dev;
 	pi->ph.xops = &xfer_ops;
+	pi->ph.hops = &helpers_ops;
 	pi->ph.set_priv = scmi_set_protocol_priv;
 	pi->ph.get_priv = scmi_get_protocol_priv;
-	pi->users++;
+	refcount_set(&pi->users, 1);
 	/* proto->init is assured NON NULL by scmi_protocol_register */
 	ret = pi->proto->instance_init(&pi->ph);
 	if (ret)
@@ -618,10 +1120,11 @@ scmi_get_protocol_instance(const struct scmi_handle *handle, u8 protocol_id)
 	struct scmi_protocol_instance *pi;
 	struct scmi_info *info = handle_to_scmi_info(handle);
 
+	mutex_lock(&info->protocols_mtx);
 	pi = idr_find(&info->protocols, protocol_id);
 
 	if (pi) {
-		pi->users++;
+		refcount_inc(&pi->users);
 	} else {
 		const struct scmi_protocol *proto;
 
@@ -632,6 +1135,7 @@ scmi_get_protocol_instance(const struct scmi_handle *handle, u8 protocol_id)
 		else
 			pi = ERR_PTR(-EPROBE_DEFER);
 	}
+	mutex_unlock(&info->protocols_mtx);
 
 	return pi;
 }
@@ -651,6 +1155,38 @@ int scmi_protocol_acquire(const struct scmi_handle *handle, u8 protocol_id)
 	return PTR_ERR_OR_ZERO(scmi_get_protocol_instance(handle, protocol_id));
 }
 
+/**
+ * scmi_protocol_release  - Protocol de-initialization helper.
+ * @handle: A reference to the SCMI platform instance.
+ * @protocol_id: The protocol being requested.
+ *
+ * Remove one user for the specified protocol and triggers de-initialization
+ * and resources de-allocation once the last user has gone.
+ */
+void scmi_protocol_release(const struct scmi_handle *handle, u8 protocol_id)
+{
+	struct scmi_info *info = handle_to_scmi_info(handle);
+	struct scmi_protocol_instance *pi;
+
+	mutex_lock(&info->protocols_mtx);
+	pi = idr_find(&info->protocols, protocol_id);
+	if (WARN_ON(!pi))
+		goto out;
+
+	if (refcount_dec_and_test(&pi->users)) {
+		if (pi->proto->instance_deinit)
+			pi->proto->instance_deinit(&pi->ph);
+
+		idr_remove(&info->protocols, protocol_id);
+
+		dev_dbg(handle->dev, "De-Initialized protocol: 0x%X\n",
+			protocol_id);
+	}
+
+out:
+	mutex_unlock(&info->protocols_mtx);
+}
+
 void scmi_setup_protocol_implemented(const struct scmi_protocol_handle *ph,
 				     u8 *prot_imp)
 {
@@ -665,56 +1201,157 @@ scmi_is_protocol_implemented(const struct scmi_handle *handle, u8 prot_id)
 {
 	int i;
 	struct scmi_info *info = handle_to_scmi_info(handle);
+	struct scmi_revision_info *rev = handle->version;
 
 	if (!info->protocols_imp)
 		return false;
 
-	for (i = 0; i < MAX_PROTOCOLS_IMP; i++)
+	for (i = 0; i < rev->num_protocols; i++)
 		if (info->protocols_imp[i] == prot_id)
 			return true;
 	return false;
 }
 
-/**
- * scmi_dev_protocol_get  - get protocol operations and handle
- * @protocol_id: The protocol being requested.
- * @ph: A pointer reference used to pass back the associated protocol handle.
- *
- * Get hold of a protocol accounting for its usage, eventually triggering its
- * initialization, and returning the protocol specific operations and related
- * protocol handle which will be used as first argument in most of the
- * protocols operations methods.
- * Being a devres based managed method, protocol hold will be automatically
- * released, and possibly de-initialized on last user, once the SCMI driver
- * owning the scmi_device is unbound from it.
- *
- * Return: A reference to the requested protocol operations or error.
- *	   Must be checked for errors by caller.
- */
 static const void __must_check *
 scmi_dev_protocol_get(struct scmi_device *sdev, u8 protocol_id,
 		       struct scmi_protocol_handle **ph)
 {
 	struct scmi_protocol_instance *pi;
-	struct scmi_handle *handle = sdev->handle;
 
 	if (!ph)
 		return ERR_PTR(-EINVAL);
 
-	pi = scmi_get_protocol_instance(handle, protocol_id);
+	pi = scmi_get_protocol_instance(sdev->handle, protocol_id);
 	if (IS_ERR(pi))
-		return pi;
+		return ERR_CAST(pi);
 
 	*ph = &pi->ph;
 
 	return pi->proto->ops;
 }
 
-static inline
-struct scmi_handle *scmi_handle_get_from_info_unlocked(struct scmi_info *info)
+static int __must_check scmi_dev_protocol_acquire(struct scmi_device *sdev,
+						   u8 protocol_id)
 {
-	info->users++;
-	return &info->handle;
+	return PTR_ERR_OR_ZERO(scmi_get_protocol_instance(sdev->handle, protocol_id));
+}
+
+static void scmi_dev_protocol_put(struct scmi_device *sdev, u8 protocol_id)
+{
+	scmi_protocol_release(sdev->handle, protocol_id);
+}
+
+/**
+ * scmi_is_transport_atomic  - Method to check if underlying transport for an
+ * SCMI instance is configured as atomic.
+ *
+ * @handle: A reference to the SCMI platform instance.
+ * @atomic_threshold: An optional return value for the system wide currently
+ *		      configured threshold for atomic operations.
+ *
+ * Return: True if transport is configured as atomic
+ */
+static bool scmi_is_transport_atomic(const struct scmi_handle *handle,
+				     unsigned int *atomic_threshold)
+{
+	bool ret;
+	struct scmi_info *info = handle_to_scmi_info(handle);
+
+	ret = is_transport_polling_capable(info->desc);
+	if (ret && atomic_threshold)
+		*atomic_threshold = info->atomic_threshold;
+
+	return ret;
+}
+
+static int __scmi_xfer_info_init(struct scmi_info *sinfo,
+				 struct scmi_xfers_info *info)
+{
+	int i;
+	struct scmi_xfer *xfer;
+	struct device *dev = sinfo->dev;
+	const struct scmi_desc *desc = sinfo->desc;
+
+	/* Pre-allocated messages, no more than what hdr.seq can support */
+	if (WARN_ON(!info->max_msg || info->max_msg > MSG_TOKEN_MAX)) {
+		dev_err(dev,
+			"Invalid maximum messages %d, not in range [1 - %lu]\n",
+			info->max_msg, MSG_TOKEN_MAX);
+		return -EINVAL;
+	}
+
+	/* Allocate a bitmask sized to hold MSG_TOKEN_MAX tokens */
+	info->xfer_alloc_table = devm_bitmap_zalloc(dev, MSG_TOKEN_MAX,
+						    GFP_KERNEL);
+	if (!info->xfer_alloc_table)
+		return -ENOMEM;
+
+	/*
+	 * Preallocate a number of xfers equal to max inflight messages,
+	 * pre-initialize the buffer pointer to pre-allocated buffers and
+	 * attach all of them to the free list
+	 */
+	INIT_HLIST_HEAD(&info->free_xfers);
+	for (i = 0; i < info->max_msg; i++) {
+		xfer = devm_kzalloc(dev, sizeof(*xfer), GFP_KERNEL);
+		if (!xfer)
+			return -ENOMEM;
+
+		xfer->rx.buf = devm_kcalloc(dev, sizeof(u8), desc->max_msg_size,
+					    GFP_KERNEL);
+		if (!xfer->rx.buf)
+			return -ENOMEM;
+
+		xfer->tx.buf = xfer->rx.buf;
+		spin_lock_init(&xfer->lock);
+
+		/* Add initialized xfer to the free list */
+		hlist_add_head(&xfer->node, &info->free_xfers);
+	}
+
+	spin_lock_init(&info->xfer_lock);
+
+	return 0;
+}
+
+static int scmi_channels_max_msg_configure(struct scmi_info *sinfo)
+{
+	const struct scmi_desc *desc = sinfo->desc;
+
+	if (!desc->ops->get_max_msg) {
+		sinfo->tx_minfo.max_msg = desc->max_msg;
+		sinfo->rx_minfo.max_msg = desc->max_msg;
+	} else {
+		struct scmi_chan_info *base_cinfo;
+
+		base_cinfo = idr_find(&sinfo->tx_idr, SCMI_PROTOCOL_BASE);
+		if (!base_cinfo)
+			return -EINVAL;
+		sinfo->tx_minfo.max_msg = desc->ops->get_max_msg(base_cinfo);
+
+		/* RX channel is optional so can be skipped */
+		base_cinfo = idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE);
+		if (base_cinfo)
+			sinfo->rx_minfo.max_msg =
+				desc->ops->get_max_msg(base_cinfo);
+	}
+
+	return 0;
+}
+
+static int scmi_xfer_info_init(struct scmi_info *sinfo)
+{
+	int ret;
+
+	ret = scmi_channels_max_msg_configure(sinfo);
+	if (ret)
+		return ret;
+
+	ret = __scmi_xfer_info_init(sinfo, &sinfo->tx_minfo);
+	if (!ret && !idr_is_empty(&sinfo->rx_idr))
+		ret = __scmi_xfer_info_init(sinfo, &sinfo->rx_minfo);
+
+	return ret;
 }
 
 /**
@@ -734,128 +1371,89 @@ struct scmi_handle *scmi_handle_get(struct device *dev)
 	struct scmi_info *info;
 	struct scmi_handle *handle = NULL;
 
+	mutex_lock(&scmi_list_mutex);
 	list_for_each(p, &scmi_list) {
 		info = list_entry(p, struct scmi_info, node);
 		if (dev->parent == info->dev) {
-			handle = scmi_handle_get_from_info_unlocked(info);
+			handle = &info->handle;
 			break;
 		}
 	}
+	mutex_unlock(&scmi_list_mutex);
 
 	return handle;
 }
 
-/**
- * scmi_handle_put() - Release the handle acquired by scmi_handle_get
- *
- * @handle: handle acquired by scmi_handle_get
- *
- * NOTE: The function does not track individual clients of the framework
- * and is expected to be maintained by caller of SCMI protocol library.
- * scmi_handle_put must be balanced with successful scmi_handle_get
- *
- * Return: 0 is successfully released
- *	if null was passed, it returns -EINVAL;
- */
-int scmi_handle_put(const struct scmi_handle *handle)
-{
-	struct scmi_info *info;
-
-	if (!handle)
-		return -EINVAL;
-
-	info = handle_to_scmi_info(handle);
-	if (!WARN_ON(!info->users))
-		info->users--;
-
-	return 0;
-}
-
-static int __scmi_xfer_info_init(struct scmi_info *sinfo,
-				 struct scmi_xfers_info *info)
-{
-	int i;
-	struct scmi_xfer *xfer;
-	struct device *dev = sinfo->dev;
-	const struct scmi_desc *desc = sinfo->desc;
-
-	/* Pre-allocated messages, no more than what hdr.seq can support */
-	if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
-		dev_err(dev, "Maximum message of %d exceeds supported %ld\n",
-			desc->max_msg, MSG_TOKEN_MAX);
-		return -EINVAL;
-	}
-
-	info->xfer_block = kcalloc(desc->max_msg, sizeof(*info->xfer_block), GFP_KERNEL);
-	if (!info->xfer_block)
-		return -ENOMEM;
-
-	info->xfer_alloc_table = kcalloc(BITS_TO_LONGS(desc->max_msg),
-					      sizeof(long), GFP_KERNEL);
-	if (!info->xfer_alloc_table)
-		return -ENOMEM;
-
-	/* Pre-initialize the buffer pointer to pre-allocated buffers */
-	for (i = 0, xfer = info->xfer_block; i < desc->max_msg; i++, xfer++) {
-		xfer->rx.buf = kcalloc(sizeof(u8), desc->max_msg_size,
-					    GFP_KERNEL);
-		if (!xfer->rx.buf)
-			return -ENOMEM;
-
-		xfer->tx.buf = xfer->rx.buf;
-		xfer->done = false;
-	}
-
-	return 0;
-}
-
-static int scmi_xfer_info_init(struct scmi_info *sinfo)
-{
-	int ret = __scmi_xfer_info_init(sinfo, &sinfo->tx_minfo);
-
-	if (!ret && idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE))
-		ret = __scmi_xfer_info_init(sinfo, &sinfo->rx_minfo);
-
-	return ret;
-}
-
-static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
+static int scmi_chan_setup(struct scmi_info *info, struct device_node *of_node,
 			   int prot_id, bool tx)
 {
 	int ret, idx;
+	char name[32];
 	struct scmi_chan_info *cinfo;
 	struct idr *idr;
+	struct scmi_device *tdev = NULL;
 
 	/* Transmit channel is first entry i.e. index 0 */
 	idx = tx ? 0 : 1;
 	idr = tx ? &info->tx_idr : &info->rx_idr;
 
-	/* check if already allocated, used for multiple device per protocol */
-	cinfo = idr_find(idr, prot_id);
-	if (cinfo)
-		return 0;
-
-	if (!info->desc->ops->chan_available(dev, idx)) {
+	if (!info->desc->ops->chan_available(of_node, idx)) {
 		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
 		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
 			return -EINVAL;
 		goto idr_alloc;
 	}
 
-	cinfo = kzalloc(sizeof(*cinfo), GFP_KERNEL);
+	cinfo = devm_kzalloc(info->dev, sizeof(*cinfo), GFP_KERNEL);
 	if (!cinfo)
 		return -ENOMEM;
 
-	cinfo->dev = dev;
+	cinfo->rx_timeout_ms = info->desc->max_rx_timeout_ms;
 
+	/* Create a unique name for this transport device */
+	snprintf(name, 32, "__scmi_transport_device_%s_%02X",
+		 idx ? "rx" : "tx", prot_id);
+	/* Create a uniquely named, dedicated transport device for this chan */
+	tdev = scmi_device_create(of_node, info->dev, prot_id, name);
+	if (!tdev) {
+		dev_err(info->dev,
+			"failed to create transport device (%s)\n", name);
+		devm_kfree(info->dev, cinfo);
+		return -EINVAL;
+	}
+	of_node_get(of_node);
+
+	cinfo->id = prot_id;
+	cinfo->dev = &tdev->dev;
 	ret = info->desc->ops->chan_setup(cinfo, info->dev, tx);
-	if (ret)
+	if (ret) {
+		of_node_put(of_node);
+		scmi_device_destroy(info->dev, prot_id, name);
+		devm_kfree(info->dev, cinfo);
 		return ret;
+	}
+
+	if (tx && is_polling_required(cinfo, info->desc)) {
+		if (is_transport_polling_capable(info->desc))
+			dev_dbg(&tdev->dev,
+				"Enabled polling mode TX channel - prot_id:%d\n",
+				prot_id);
+		else
+			dev_warn(&tdev->dev,
+				 "Polling mode NOT supported by transport.\n");
+	}
 
 idr_alloc:
 	ret = idr_alloc_one(idr, cinfo, prot_id);
 	if (ret != prot_id) {
-		dev_err(dev, "unable to allocate SCMI idr slot err %d\n", ret);
+		dev_err(info->dev,
+			"unable to allocate SCMI idr slot err %d\n", ret);
+		/* Destroy channel and device only if created by this call. */
+		if (tdev) {
+			of_node_put(of_node);
+			scmi_device_destroy(info->dev, prot_id, name);
+			devm_kfree(info->dev, cinfo);
+		}
 		return ret;
 	}
 
@@ -864,288 +1462,134 @@ static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
 }
 
 static inline int
-scmi_txrx_setup(struct scmi_info *info, struct device *dev, int prot_id)
+scmi_txrx_setup(struct scmi_info *info, struct device_node *of_node,
+		int prot_id)
 {
-	int ret = scmi_chan_setup(info, dev, prot_id, true);
+	int ret = scmi_chan_setup(info, of_node, prot_id, true);
 
-	if (!ret) /* Rx is optional, hence no error check */
-		scmi_chan_setup(info, dev, prot_id, false);
+	if (!ret) {
+		/* Rx is optional, report only memory errors */
+		ret = scmi_chan_setup(info, of_node, prot_id, false);
+		if (ret && ret != -ENOMEM)
+			ret = 0;
+	}
 
 	return ret;
 }
 
 /**
- * scmi_get_protocol_device  - Helper to get/create an SCMI device.
+ * scmi_channels_setup  - Helper to initialize all required channels
  *
- * @np: A device node representing a valid active protocols for the referred
- * SCMI instance.
- * @info: The referred SCMI instance for which we are getting/creating this
- * device.
- * @prot_id: The protocol ID.
- * @name: The device name.
+ * @info: The SCMI instance descriptor.
  *
- * Referring to the specific SCMI instance identified by @info, this helper
- * takes care to return a properly initialized device matching the requested
- * @proto_id and @name: if device was still not existent it is created as a
- * child of the specified SCMI instance @info and its transport properly
- * initialized as usual.
- */
-static inline struct scmi_device *
-scmi_get_protocol_device(struct device_node *np, struct scmi_info *info,
-			 int prot_id, const char *name)
-{
-	struct scmi_device *sdev;
-
-	/* Already created for this parent SCMI instance ? */
-	sdev = scmi_child_dev_find(info->dev, prot_id, name);
-	if (sdev)
-		return sdev;
-
-	pr_debug("Creating SCMI device (%s) for protocol %x\n", name, prot_id);
-
-	sdev = scmi_device_alloc(np, info->dev, prot_id, name);
-	if (!sdev) {
-		dev_err(info->dev, "failed to create %d protocol device\n",
-			prot_id);
-		return NULL;
-	}
-
-	if (scmi_txrx_setup(info, &sdev->dev, prot_id)) {
-		dev_err(&sdev->dev, "failed to setup transport\n");
-		scmi_device_destroy(sdev);
-		return NULL;
-	}
-
-	return sdev;
-}
-
-static inline void
-scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
-			    int prot_id, const char *name)
-{
-	struct scmi_device *sdev;
-
-	sdev = scmi_get_protocol_device(np, info, prot_id, name);
-	if (!sdev)
-		return;
-
-	/* setup handle now as the transport is ready */
-	scmi_set_handle(sdev);
-
-	/* Register if not done yet */
-	if (sdev->dev.id == DEVICE_ID_DYNAMIC)
-		register_device(&sdev->dev);
-}
-
-/**
- * scmi_create_protocol_devices  - Create devices for all pending requests for
- * this SCMI instance.
+ * Initialize all the channels found described in the DT against the underlying
+ * configured transport using custom defined dedicated devices instead of
+ * borrowing devices from the SCMI drivers; this way channels are initialized
+ * upfront during core SCMI stack probing and are no more coupled with SCMI
+ * devices used by SCMI drivers.
  *
- * @np: The device node describing the protocol
- * @info: The SCMI instance descriptor
- * @prot_id: The protocol ID
- *
- * All devices previously requested for this instance (if any) are found and
- * created by scanning the proper @&scmi_requested_devices entry.
- */
-static void scmi_create_protocol_devices(struct device_node *np,
-					 struct scmi_info *info, int prot_id)
-{
-	struct list_head *phead;
-
-	phead = idr_find(&scmi_requested_devices, prot_id);
-	if (phead) {
-		struct scmi_requested_dev *rdev;
-
-		list_for_each_entry(rdev, phead, node)
-			scmi_create_protocol_device(np, info, prot_id,
-						    rdev->id_table->name);
-	}
-}
-
-/**
- * scmi_protocol_device_request  - Helper to request a device
- *
- * @id_table: A protocol/name pair descriptor for the device to be created.
- *
- * This helper let an SCMI driver request specific devices identified by the
- * @id_table to be created for each active SCMI instance.
- *
- * The requested device name MUST NOT be already existent for any protocol;
- * at first the freshly requested @id_table is annotated in the IDR table
- * @scmi_requested_devices, then a matching device is created for each already
- * active SCMI instance. (if any)
- *
- * This way the requested device is created straight-away for all the already
- * initialized(probed) SCMI instances (handles) and it remains also annotated
- * as pending creation if the requesting SCMI driver was loaded before some
- * SCMI instance and related transports were available: when such late instance
- * is probed, its probe will take care to scan the list of pending requested
- * devices and create those on its own (see @scmi_create_protocol_devices and
- * its enclosing loop)
+ * Note that, even though a pair of TX/RX channels is associated to each
+ * protocol defined in the DT, a distinct freshly initialized channel is
+ * created only if the DT node for the protocol at hand describes a dedicated
+ * channel: in all the other cases the common BASE protocol channel is reused.
  *
  * Return: 0 on Success
  */
-int scmi_protocol_device_request(const struct scmi_device_id *id_table)
+static int scmi_channels_setup(struct scmi_info *info)
 {
-	int id, ret = 0;
-	struct list_head *phead = NULL;
-	struct scmi_requested_dev *rdev;
-	struct scmi_info *info;
-	struct idr *idr;
+	int ret;
+	struct device_node *child, *top_np = info->dev->of_node;
 
-	pr_debug("Requesting SCMI device (%s) for protocol 0x%x\n",
-		 id_table->name, id_table->protocol_id);
+	/* Initialize a common generic channel at first */
+	ret = scmi_txrx_setup(info, top_np, SCMI_PROTOCOL_BASE);
+	if (ret)
+		return ret;
 
-	/*
-	 * Search for the matching protocol rdev list and then search
-	 * of any existent equally named device...fails if any duplicate found.
-	 */
-	idr_for_each_entry(&scmi_requested_devices, idr, id) {
-		struct list_head *head = idr->ptr;
-		if (!phead) {
-			/* A list found registered in the IDR is never empty */
-			rdev = list_first_entry(head, struct scmi_requested_dev,
-						node);
-			if (rdev->id_table->protocol_id ==
-			    id_table->protocol_id)
-				phead = head;
-		}
-		list_for_each_entry(rdev, head, node) {
-			if (!strcmp(rdev->id_table->name, id_table->name)) {
-				pr_err("Ignoring duplicate request [%d] %s\n",
-				       rdev->id_table->protocol_id,
-				       rdev->id_table->name);
-				ret = -EINVAL;
-				goto out;
-			}
-		}
-	}
+	for_each_available_child_of_node(top_np, child) {
+		u32 prot_id;
 
-	/*
-	 * No duplicate found for requested id_table, so let's create a new
-	 * requested device entry for this new valid request.
-	 */
-	rdev = kzalloc(sizeof(*rdev), GFP_KERNEL);
-	if (!rdev) {
-		ret = -ENOMEM;
-		goto out;
-	}
-	rdev->id_table = id_table;
+		if (of_property_read_u32(child, "reg", &prot_id))
+			continue;
 
-	/*
-	 * Append the new requested device table descriptor to the head of the
-	 * related protocol list, eventually creating such head if not already
-	 * there.
-	 */
-	if (!phead) {
-		phead = kzalloc(sizeof(*phead), GFP_KERNEL);
-		if (!phead) {
-			kfree(rdev);
-			ret = -ENOMEM;
-			goto out;
-		}
-		INIT_LIST_HEAD(phead);
-
-		ret = idr_alloc_one(&scmi_requested_devices, (void *)phead,
-				id_table->protocol_id);
-		if (ret != id_table->protocol_id) {
-			pr_err("Failed to save SCMI device - ret:%d\n", ret);
-			kfree(rdev);
-			kfree(phead);
-			ret = -EINVAL;
-			goto out;
-		}
-		ret = 0;
-	}
-	list_add(&rdev->node, phead);
-
-	/*
-	 * Now effectively create and initialize the requested device for every
-	 * already initialized SCMI instance which has registered the requested
-	 * protocol as a valid active one: i.e. defined in DT and supported by
-	 * current platform FW.
-	 */
-	list_for_each_entry(info, &scmi_list, node) {
-		struct device_node *child;
-
-		child = idr_find(&info->active_protocols,
-				 id_table->protocol_id);
-		if (child) {
-			struct scmi_device *sdev;
-
-			sdev = scmi_get_protocol_device(child, info,
-							id_table->protocol_id,
-							id_table->name);
-			/* Set handle if not already set: device existed */
-			if (sdev && !sdev->handle)
-				sdev->handle =
-					scmi_handle_get_from_info_unlocked(info);
-		} else {
+		if (!FIELD_FIT(MSG_PROTOCOL_ID_MASK, prot_id))
 			dev_err(info->dev,
-				"Failed. SCMI protocol %d not active.\n",
-				id_table->protocol_id);
+				"Out of range protocol %d\n", prot_id);
+
+		ret = scmi_txrx_setup(info, child, prot_id);
+		if (ret) {
+			of_node_put(child);
+			return ret;
 		}
 	}
 
-out:
-	return ret;
+	return 0;
 }
 
-/**
- * scmi_protocol_device_unrequest  - Helper to unrequest a device
- *
- * @id_table: A protocol/name pair descriptor for the device to be unrequested.
- *
- * An helper to let an SCMI driver release its request about devices; note that
- * devices are created and initialized once the first SCMI driver request them
- * but they destroyed only on SCMI core unloading/unbinding.
- *
- * The current SCMI transport layer uses such devices as internal references and
- * as such they could be shared as same transport between multiple drivers so
- * that cannot be safely destroyed till the whole SCMI stack is removed.
- * (unless adding further burden of refcounting.)
- */
-void scmi_protocol_device_unrequest(const struct scmi_device_id *id_table)
+static int scmi_chan_destroy(int id, void *p, void *idr)
 {
-	struct list_head *phead;
+	struct scmi_chan_info *cinfo = p;
 
-	pr_debug("Unrequesting SCMI device (%s) for protocol %x\n",
-		 id_table->name, id_table->protocol_id);
+	if (cinfo->dev) {
+		struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+		struct scmi_device *sdev = to_scmi_dev(cinfo->dev);
 
-	phead = idr_find(&scmi_requested_devices, id_table->protocol_id);
-	if (phead) {
-		struct scmi_requested_dev *victim, *tmp;
-
-		list_for_each_entry_safe(victim, tmp, phead, node) {
-			if (!strcmp(victim->id_table->name, id_table->name)) {
-				list_del(&victim->node);
-				kfree(victim);
-				break;
-			}
-		}
-
-		if (list_empty(phead)) {
-			idr_remove(&scmi_requested_devices,
-				   id_table->protocol_id);
-			kfree(phead);
-		}
+		of_node_put(cinfo->dev->of_node);
+		scmi_device_destroy(info->dev, id, sdev->name);
+		cinfo->dev = NULL;
 	}
+
+	idr_remove(idr, id);
+
+	return 0;
 }
 
-static void version_info(struct device *dev)
+static void scmi_cleanup_channels(struct scmi_info *info, struct idr *idr)
 {
-	struct scmi_info *info = dev->priv;
+	/* At first free all channels at the transport layer ... */
+	idr_for_each(idr, info->desc->ops->chan_free, idr);
 
-	printf("SCMI information:\n"
-	       "  version: %u.%u\n"
-	       "  firmware version: 0x%x\n"
-	       "  vendor: %s (sub: %s)\n",
-	       info->version.minor_ver,
-	       info->version.major_ver,
-	       info->version.impl_ver,
-	       info->version.vendor_id,
-	       info->version.sub_vendor_id);
+	/* ...then destroy all underlying devices */
+	idr_for_each(idr, scmi_chan_destroy, idr);
+
+	idr_destroy(idr);
+}
+
+static void scmi_cleanup_txrx_channels(struct scmi_info *info)
+{
+	scmi_cleanup_channels(info, &info->tx_idr);
+
+	scmi_cleanup_channels(info, &info->rx_idr);
+}
+
+static int scmi_device_request_notifier(struct notifier_block *nb,
+					unsigned long action, void *data)
+{
+	struct device_node *np;
+	struct scmi_device_id *id_table = data;
+	struct scmi_info *info = req_nb_to_scmi_info(nb);
+
+	np = idr_find(&info->active_protocols, id_table->protocol_id);
+	if (!np)
+		return NOTIFY_DONE;
+
+	dev_dbg(info->dev, "%sRequested device (%s) for protocol 0x%x\n",
+		action == SCMI_BUS_NOTIFY_DEVICE_REQUEST ? "" : "UN-",
+		id_table->name, id_table->protocol_id);
+
+	switch (action) {
+	case SCMI_BUS_NOTIFY_DEVICE_REQUEST:
+		scmi_create_protocol_devices(np, info, id_table->protocol_id,
+					     id_table->name);
+		break;
+	case SCMI_BUS_NOTIFY_DEVICE_UNREQUEST:
+		scmi_destroy_protocol_devices(info, id_table->protocol_id,
+					      id_table->name);
+		break;
+	default:
+		return NOTIFY_DONE;
+	}
+
+	return NOTIFY_OK;
 }
 
 static int scmi_probe(struct device *dev)
@@ -1160,15 +1604,18 @@ static int scmi_probe(struct device *dev)
 	if (!desc)
 		return -EINVAL;
 
-	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
 
 	info->dev = dev;
 	info->desc = desc;
+	info->dev_req_nb.notifier_call = scmi_device_request_notifier;
 	INIT_LIST_HEAD(&info->node);
 	idr_init(&info->protocols);
+	mutex_init(&info->protocols_mtx);
 	idr_init(&info->active_protocols);
+	mutex_init(&info->devreq_mtx);
 
 	dev->priv = info;
 	idr_init(&info->tx_idr);
@@ -1177,28 +1624,55 @@ static int scmi_probe(struct device *dev)
 	handle = &info->handle;
 	handle->dev = info->dev;
 	handle->version = &info->version;
-	handle->protocol_get = scmi_dev_protocol_get;
+	handle->dev_protocol_acquire = scmi_dev_protocol_acquire;
+	handle->dev_protocol_get = scmi_dev_protocol_get;
+	handle->dev_protocol_put = scmi_dev_protocol_put;
 
-	ret = scmi_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
+	/* System wide atomic threshold for atomic ops .. if any */
+	if (!of_property_read_u32(np, "atomic-threshold-us",
+				  &info->atomic_threshold))
+		dev_info(dev,
+			 "SCMI System wide atomic threshold set to %d us\n",
+			 info->atomic_threshold);
+	handle->is_transport_atomic = scmi_is_transport_atomic;
+
+	if (desc->ops->link_supplier) {
+		ret = desc->ops->link_supplier(dev);
+		if (ret)
+			goto clear_ida;
+	}
+
+	/* Setup all channels described in the DT at first */
+	ret = scmi_channels_setup(info);
 	if (ret)
-		return ret;
+		goto clear_ida;
+
+	ret = blocking_notifier_chain_register(&scmi_requested_devices_nh,
+					       &info->dev_req_nb);
+	if (ret)
+		goto clear_txrx_setup;
 
 	ret = scmi_xfer_info_init(info);
 	if (ret)
-		return ret;
+		goto clear_dev_req_notifier;
+
+	if (!is_transport_polling_capable(info->desc))
+		dev_err(dev,
+			"Transport is not polling capable. Atomic mode not supported.\n");
 
 	/*
 	 * Trigger SCMI Base protocol initialization.
-	 * It's mandatory and won't be ever released/deinit until the
-	 * SCMI stack is shutdown/unloaded as a whole.
+	 * It's mandatory and won't be ever released/deinit.
 	 */
 	ret = scmi_protocol_acquire(handle, SCMI_PROTOCOL_BASE);
 	if (ret) {
 		dev_err(dev, "unable to communicate with SCMI\n");
-		return ret;
+		goto notification_exit;
 	}
 
+	mutex_lock(&scmi_list_mutex);
 	list_add_tail(&info->node, &scmi_list);
+	mutex_unlock(&scmi_list_mutex);
 
 	for_each_available_child_of_node(np, child) {
 		u32 prot_id;
@@ -1226,50 +1700,68 @@ static int scmi_probe(struct device *dev)
 			continue;
 		}
 
-		scmi_create_protocol_devices(child, info, prot_id);
+		of_node_get(child);
+		scmi_create_protocol_devices(child, info, prot_id, NULL);
 	}
 
-	dev->info = version_info;
-
 	return 0;
-}
 
-void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id)
-{
-	idr_remove(idr, id);
+notification_exit:
+clear_dev_req_notifier:
+	blocking_notifier_chain_unregister(&scmi_requested_devices_nh,
+					   &info->dev_req_nb);
+clear_txrx_setup:
+	scmi_cleanup_txrx_channels(info);
+clear_ida:
+	return ret;
 }
 
 /* Each compatible listed below must have descriptor associated with it */
 static const struct of_device_id scmi_of_match[] = {
-#ifdef CONFIG_ARM_SMCCC
+#ifdef CONFIG_ARM_SCMI_TRANSPORT_OPTEE
+	{ .compatible = "linaro,scmi-optee", .data = &scmi_optee_desc },
+#endif
+#ifdef CONFIG_ARM_SCMI_TRANSPORT_SMC
 	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc},
+	{ .compatible = "arm,scmi-smc-param", .data = &scmi_smc_desc},
 #endif
 	{ /* Sentinel */ },
 };
+
 MODULE_DEVICE_TABLE(of, scmi_of_match);
 
 static struct driver arm_scmi_driver = {
 	.name = "arm-scmi",
-	.of_compatible = scmi_of_match,
+	.of_match_table = scmi_of_match,
 	.probe = scmi_probe,
 };
 core_platform_driver(arm_scmi_driver);
 
 static int __init scmi_bus_driver_init(void)
 {
-	scmi_bus_init();
+	int ret;
+
+	ret = scmi_bus_init();
+	if (ret)
+		return ret;
+
+	/* Bail out if no SCMI transport was configured */
+	if (WARN_ON(!IS_ENABLED(CONFIG_ARM_SCMI_HAVE_TRANSPORT)))
+		return -EINVAL;
 
 	scmi_base_register();
 
-	scmi_reset_register();
 	scmi_clock_register();
+	scmi_power_register();
+	scmi_reset_register();
+	scmi_sensors_register();
 	scmi_voltage_register();
 
 	return 0;
 }
 pure_initcall(scmi_bus_driver_init);
 
-MODULE_ALIAS("platform: arm-scmi");
+MODULE_ALIAS("platform:arm-scmi");
 MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
 MODULE_DESCRIPTION("ARM SCMI protocol driver");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/firmware/arm_scmi/msg.c b/drivers/firmware/arm_scmi/msg.c
new file mode 100644
index 000000000000..6e621223af47
--- /dev/null
+++ b/drivers/firmware/arm_scmi/msg.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * For transports using message passing.
+ *
+ * Derived from shm.c.
+ *
+ * Copyright (C) 2019-2021 ARM Ltd.
+ * Copyright (C) 2020-2021 OpenSynergy GmbH
+ */
+
+#include <linux/types.h>
+
+#include "common.h"
+
+/*
+ * struct scmi_msg_payld - Transport SDU layout
+ *
+ * The SCMI specification requires all parameters, message headers, return
+ * arguments or any protocol data to be expressed in little endian format only.
+ */
+struct scmi_msg_payld {
+	__le32 msg_header;
+	__le32 msg_payload[];
+};
+
+/**
+ * msg_command_size() - Actual size of transport SDU for command.
+ *
+ * @xfer: message which core has prepared for sending
+ *
+ * Return: transport SDU size.
+ */
+size_t msg_command_size(struct scmi_xfer *xfer)
+{
+	return sizeof(struct scmi_msg_payld) + xfer->tx.len;
+}
+
+/**
+ * msg_response_size() - Maximum size of transport SDU for response.
+ *
+ * @xfer: message which core has prepared for sending
+ *
+ * Return: transport SDU size.
+ */
+size_t msg_response_size(struct scmi_xfer *xfer)
+{
+	return sizeof(struct scmi_msg_payld) + sizeof(__le32) + xfer->rx.len;
+}
+
+/**
+ * msg_tx_prepare() - Set up transport SDU for command.
+ *
+ * @msg: transport SDU for command
+ * @xfer: message which is being sent
+ */
+void msg_tx_prepare(struct scmi_msg_payld *msg, struct scmi_xfer *xfer)
+{
+	msg->msg_header = cpu_to_le32(pack_scmi_header(&xfer->hdr));
+	if (xfer->tx.buf)
+		memcpy(msg->msg_payload, xfer->tx.buf, xfer->tx.len);
+}
+
+/**
+ * msg_read_header() - Read SCMI header from transport SDU.
+ *
+ * @msg: transport SDU
+ *
+ * Return: SCMI header
+ */
+u32 msg_read_header(struct scmi_msg_payld *msg)
+{
+	return le32_to_cpu(msg->msg_header);
+}
+
+/**
+ * msg_fetch_response() - Fetch response SCMI payload from transport SDU.
+ *
+ * @msg: transport SDU with response
+ * @len: transport SDU size
+ * @xfer: message being responded to
+ */
+void msg_fetch_response(struct scmi_msg_payld *msg, size_t len,
+			struct scmi_xfer *xfer)
+{
+	size_t prefix_len = sizeof(*msg) + sizeof(msg->msg_payload[0]);
+
+	xfer->hdr.status = le32_to_cpu(msg->msg_payload[0]);
+	xfer->rx.len = min_t(size_t, xfer->rx.len,
+			     len >= prefix_len ? len - prefix_len : 0);
+
+	/* Take a copy to the rx buffer.. */
+	memcpy(xfer->rx.buf, &msg->msg_payload[1], xfer->rx.len);
+}
diff --git a/drivers/firmware/arm_scmi/optee.c b/drivers/firmware/arm_scmi/optee.c
new file mode 100644
index 000000000000..1eff819af59c
--- /dev/null
+++ b/drivers/firmware/arm_scmi/optee.c
@@ -0,0 +1,614 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019-2021 Linaro Ltd.
+ */
+
+#include <linux/io.h>
+#include <of.h>
+#include <of_address.h>
+#include <linux/kernel.h>
+#include <module.h>
+#include <linux/slab.h>
+#include <linux/tee_drv.h>
+#include <linux/uuid.h>
+#include <uapi/linux/tee.h>
+
+#include "common.h"
+
+#define SCMI_OPTEE_MAX_MSG_SIZE		128
+
+enum scmi_optee_pta_cmd {
+	/*
+	 * PTA_SCMI_CMD_CAPABILITIES - Get channel capabilities
+	 *
+	 * [out]    value[0].a: Capability bit mask (enum pta_scmi_caps)
+	 * [out]    value[0].b: Extended capabilities or 0
+	 */
+	PTA_SCMI_CMD_CAPABILITIES = 0,
+
+	/*
+	 * PTA_SCMI_CMD_PROCESS_SMT_CHANNEL - Process SCMI message in SMT buffer
+	 *
+	 * [in]     value[0].a: Channel handle
+	 *
+	 * Shared memory used for SCMI message/response exhange is expected
+	 * already identified and bound to channel handle in both SCMI agent
+	 * and SCMI server (OP-TEE) parts.
+	 * The memory uses SMT header to carry SCMI meta-data (protocol ID and
+	 * protocol message ID).
+	 */
+	PTA_SCMI_CMD_PROCESS_SMT_CHANNEL = 1,
+
+	/*
+	 * PTA_SCMI_CMD_PROCESS_SMT_CHANNEL_MESSAGE - Process SMT/SCMI message
+	 *
+	 * [in]     value[0].a: Channel handle
+	 * [in/out] memref[1]: Message/response buffer (SMT and SCMI payload)
+	 *
+	 * Shared memory used for SCMI message/response is a SMT buffer
+	 * referenced by param[1]. It shall be 128 bytes large to fit response
+	 * payload whatever message playload size.
+	 * The memory uses SMT header to carry SCMI meta-data (protocol ID and
+	 * protocol message ID).
+	 */
+	PTA_SCMI_CMD_PROCESS_SMT_CHANNEL_MESSAGE = 2,
+
+	/*
+	 * PTA_SCMI_CMD_GET_CHANNEL - Get channel handle
+	 *
+	 * SCMI shm information are 0 if agent expects to use OP-TEE regular SHM
+	 *
+	 * [in]     value[0].a: Channel identifier
+	 * [out]    value[0].a: Returned channel handle
+	 * [in]     value[0].b: Requested capabilities mask (enum pta_scmi_caps)
+	 */
+	PTA_SCMI_CMD_GET_CHANNEL = 3,
+
+	/*
+	 * PTA_SCMI_CMD_PROCESS_MSG_CHANNEL - Process SCMI message in a MSG
+	 * buffer pointed by memref parameters
+	 *
+	 * [in]     value[0].a: Channel handle
+	 * [in]     memref[1]: Message buffer (MSG and SCMI payload)
+	 * [out]    memref[2]: Response buffer (MSG and SCMI payload)
+	 *
+	 * Shared memories used for SCMI message/response are MSG buffers
+	 * referenced by param[1] and param[2]. MSG transport protocol
+	 * uses a 32bit header to carry SCMI meta-data (protocol ID and
+	 * protocol message ID) followed by the effective SCMI message
+	 * payload.
+	 */
+	PTA_SCMI_CMD_PROCESS_MSG_CHANNEL = 4,
+};
+
+/*
+ * OP-TEE SCMI service capabilities bit flags (32bit)
+ *
+ * PTA_SCMI_CAPS_SMT_HEADER
+ * When set, OP-TEE supports command using SMT header protocol (SCMI shmem) in
+ * shared memory buffers to carry SCMI protocol synchronisation information.
+ *
+ * PTA_SCMI_CAPS_MSG_HEADER
+ * When set, OP-TEE supports command using MSG header protocol in an OP-TEE
+ * shared memory to carry SCMI protocol synchronisation information and SCMI
+ * message payload.
+ */
+#define PTA_SCMI_CAPS_NONE		0
+#define PTA_SCMI_CAPS_SMT_HEADER	BIT(0)
+#define PTA_SCMI_CAPS_MSG_HEADER	BIT(1)
+#define PTA_SCMI_CAPS_MASK		(PTA_SCMI_CAPS_SMT_HEADER | \
+					 PTA_SCMI_CAPS_MSG_HEADER)
+
+/**
+ * struct scmi_optee_channel - Description of an OP-TEE SCMI channel
+ *
+ * @channel_id: OP-TEE channel ID used for this transport
+ * @tee_session: TEE session identifier
+ * @caps: OP-TEE SCMI channel capabilities
+ * @rx_len: Response size
+ * @cinfo: SCMI channel information
+ * @shmem: Virtual base address of the shared memory
+ * @req: Shared memory protocol handle for SCMI request and synchronous response
+ * @tee_shm: TEE shared memory handle @req or NULL if using IOMEM shmem
+ * @link: Reference in agent's channel list
+ */
+struct scmi_optee_channel {
+	u32 channel_id;
+	u32 tee_session;
+	u32 caps;
+	u32 rx_len;
+	struct scmi_chan_info *cinfo;
+	union {
+		struct scmi_shared_mem __iomem *shmem;
+		struct scmi_msg_payld *msg;
+	} req;
+	struct tee_shm *tee_shm;
+	struct list_head link;
+};
+
+/**
+ * struct scmi_optee_agent - OP-TEE transport private data
+ *
+ * @dev: Device used for communication with TEE
+ * @tee_ctx: TEE context used for communication
+ * @caps: Supported channel capabilities
+ * @channel_list: List of all created channels for the agent
+ */
+struct scmi_optee_agent {
+	struct device *dev;
+	struct tee_context *tee_ctx;
+	u32 caps;
+	struct list_head channel_list;
+};
+
+/* There can be only 1 SCMI service in OP-TEE we connect to */
+static struct scmi_optee_agent *scmi_optee_private;
+
+/* Forward reference to scmi_optee transport initialization */
+static int scmi_optee_init(void);
+
+/* Open a session toward SCMI OP-TEE service with REE_KERNEL identity */
+static int open_session(struct scmi_optee_agent *agent, u32 *tee_session)
+{
+	struct device *dev = agent->dev;
+	struct tee_client_device *scmi_pta = to_tee_client_device(dev);
+	struct tee_ioctl_open_session_arg arg = { };
+	int ret;
+
+	memcpy(arg.uuid, scmi_pta->id.uuid.b, TEE_IOCTL_UUID_LEN);
+	arg.clnt_login = TEE_IOCTL_LOGIN_REE_KERNEL;
+
+	ret = tee_client_open_session(agent->tee_ctx, &arg, NULL);
+	if (ret < 0 || arg.ret) {
+		dev_err(dev, "Can't open tee session: %d / %#x\n", ret, arg.ret);
+		return -EOPNOTSUPP;
+	}
+
+	*tee_session = arg.session;
+
+	return 0;
+}
+
+static void close_session(struct scmi_optee_agent *agent, u32 tee_session)
+{
+	tee_client_close_session(agent->tee_ctx, tee_session);
+}
+
+static int get_capabilities(struct scmi_optee_agent *agent)
+{
+	struct tee_ioctl_invoke_arg arg = { };
+	struct tee_param param[1] = { };
+	u32 caps;
+	u32 tee_session;
+	int ret;
+
+	ret = open_session(agent, &tee_session);
+	if (ret)
+		return ret;
+
+	arg.func = PTA_SCMI_CMD_CAPABILITIES;
+	arg.session = tee_session;
+	arg.num_params = 1;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
+
+	ret = tee_client_invoke_func(agent->tee_ctx, &arg, param);
+
+	close_session(agent, tee_session);
+
+	if (ret < 0 || arg.ret) {
+		dev_err(agent->dev, "Can't get capabilities: %d / %#x\n", ret, arg.ret);
+		return -EOPNOTSUPP;
+	}
+
+	caps = param[0].u.value.a;
+
+	if (!(caps & (PTA_SCMI_CAPS_SMT_HEADER | PTA_SCMI_CAPS_MSG_HEADER))) {
+		dev_err(agent->dev, "OP-TEE SCMI PTA doesn't support SMT and MSG\n");
+		return -EOPNOTSUPP;
+	}
+
+	agent->caps = caps;
+
+	return 0;
+}
+
+static int get_channel(struct scmi_optee_channel *channel)
+{
+	struct device *dev = scmi_optee_private->dev;
+	struct tee_ioctl_invoke_arg arg = { };
+	struct tee_param param[1] = { };
+	unsigned int caps = 0;
+	int ret;
+
+	if (channel->tee_shm)
+		caps = PTA_SCMI_CAPS_MSG_HEADER;
+	else
+		caps = PTA_SCMI_CAPS_SMT_HEADER;
+
+	arg.func = PTA_SCMI_CMD_GET_CHANNEL;
+	arg.session = channel->tee_session;
+	arg.num_params = 1;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT;
+	param[0].u.value.a = channel->channel_id;
+	param[0].u.value.b = caps;
+
+	ret = tee_client_invoke_func(scmi_optee_private->tee_ctx, &arg, param);
+
+	if (ret || arg.ret) {
+		dev_err(dev, "Can't get channel with caps %#x: %d / %#x\n", caps, ret, arg.ret);
+		return -EOPNOTSUPP;
+	}
+
+	/* From now on use channel identifer provided by OP-TEE SCMI service */
+	channel->channel_id = param[0].u.value.a;
+	channel->caps = caps;
+
+	return 0;
+}
+
+static int invoke_process_smt_channel(struct scmi_optee_channel *channel)
+{
+	struct tee_ioctl_invoke_arg arg = {
+		.func = PTA_SCMI_CMD_PROCESS_SMT_CHANNEL,
+		.session = channel->tee_session,
+		.num_params = 1,
+	};
+	struct tee_param param[1] = { };
+	int ret;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
+	param[0].u.value.a = channel->channel_id;
+
+	ret = tee_client_invoke_func(scmi_optee_private->tee_ctx, &arg, param);
+	if (ret < 0 || arg.ret) {
+		dev_err(scmi_optee_private->dev, "Can't invoke channel %u: %d / %#x\n",
+			channel->channel_id, ret, arg.ret);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int invoke_process_msg_channel(struct scmi_optee_channel *channel, size_t msg_size)
+{
+	struct tee_ioctl_invoke_arg arg = {
+		.func = PTA_SCMI_CMD_PROCESS_MSG_CHANNEL,
+		.session = channel->tee_session,
+		.num_params = 3,
+	};
+	struct tee_param param[3] = { };
+	int ret;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
+	param[0].u.value.a = channel->channel_id;
+
+	param[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[1].u.memref.shm = channel->tee_shm;
+	param[1].u.memref.size = msg_size;
+
+	param[2].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT;
+	param[2].u.memref.shm = channel->tee_shm;
+	param[2].u.memref.size = SCMI_OPTEE_MAX_MSG_SIZE;
+
+	ret = tee_client_invoke_func(scmi_optee_private->tee_ctx, &arg, param);
+	if (ret < 0 || arg.ret) {
+		dev_err(scmi_optee_private->dev, "Can't invoke channel %u: %d / %#x\n",
+			channel->channel_id, ret, arg.ret);
+		return -EIO;
+	}
+
+	/* Save response size */
+	channel->rx_len = param[2].u.memref.size;
+
+	return 0;
+}
+
+static int scmi_optee_link_supplier(struct device *dev)
+{
+	if (!scmi_optee_private) {
+		scmi_optee_init();
+		of_devices_ensure_probed_by_compatible("linaro,optee-tz");
+	}
+
+	return scmi_optee_private ? 0 : -EPROBE_DEFER;
+}
+
+static bool scmi_optee_chan_available(struct device_node *of_node, int idx)
+{
+	u32 channel_id;
+
+	return !of_property_read_u32_index(of_node, "linaro,optee-channel-id",
+					   idx, &channel_id);
+}
+
+static void scmi_optee_clear_channel(struct scmi_chan_info *cinfo)
+{
+	struct scmi_optee_channel *channel = cinfo->transport_info;
+
+	if (!channel->tee_shm)
+		shmem_clear_channel(channel->req.shmem);
+}
+
+static int setup_dynamic_shmem(struct device *dev, struct scmi_optee_channel *channel)
+{
+	const size_t msg_size = SCMI_OPTEE_MAX_MSG_SIZE;
+	void *shbuf;
+
+	channel->tee_shm = tee_shm_alloc_kernel_buf(scmi_optee_private->tee_ctx, msg_size);
+	if (IS_ERR(channel->tee_shm)) {
+		dev_err(channel->cinfo->dev, "shmem allocation failed\n");
+		return -ENOMEM;
+	}
+
+	shbuf = tee_shm_get_va(channel->tee_shm, 0);
+	memset(shbuf, 0, msg_size);
+	channel->req.msg = shbuf;
+	channel->rx_len = msg_size;
+
+	return 0;
+}
+
+static int setup_static_shmem(struct device *dev, struct scmi_chan_info *cinfo,
+			      struct scmi_optee_channel *channel)
+{
+	struct device_node *np;
+	resource_size_t size;
+	struct resource res;
+	int ret;
+
+	np = of_parse_phandle(cinfo->dev->of_node, "shmem", 0);
+	if (!of_device_is_compatible(np, "arm,scmi-shmem")) {
+		ret = -ENXIO;
+		goto out;
+	}
+
+	ret = of_address_to_resource(np, 0, &res);
+	if (ret) {
+		dev_err(dev, "Failed to get SCMI Tx shared memory\n");
+		goto out;
+	}
+
+	size = resource_size(&res);
+
+	channel->req.shmem = devm_ioremap(dev, res.start, size);
+	if (!channel->req.shmem) {
+		dev_err(dev, "Failed to ioremap SCMI Tx shared memory\n");
+		ret = -EADDRNOTAVAIL;
+		goto out;
+	}
+
+	ret = 0;
+
+out:
+	of_node_put(np);
+
+	return ret;
+}
+
+static int setup_shmem(struct device *dev, struct scmi_chan_info *cinfo,
+		       struct scmi_optee_channel *channel)
+{
+	if (of_property_present(cinfo->dev->of_node, "shmem"))
+		return setup_static_shmem(dev, cinfo, channel);
+	else
+		return setup_dynamic_shmem(dev, channel);
+}
+
+static int scmi_optee_chan_setup(struct scmi_chan_info *cinfo, struct device *dev, bool tx)
+{
+	struct scmi_optee_channel *channel;
+	uint32_t channel_id;
+	int ret;
+
+	if (!tx)
+		return -ENODEV;
+
+	channel = devm_kzalloc(dev, sizeof(*channel), GFP_KERNEL);
+	if (!channel)
+		return -ENOMEM;
+
+	ret = of_property_read_u32_index(cinfo->dev->of_node, "linaro,optee-channel-id",
+					 0, &channel_id);
+	if (ret)
+		return ret;
+
+	cinfo->transport_info = channel;
+	channel->cinfo = cinfo;
+	channel->channel_id = channel_id;
+
+	ret = setup_shmem(dev, cinfo, channel);
+	if (ret)
+		return ret;
+
+	ret = open_session(scmi_optee_private, &channel->tee_session);
+	if (ret)
+		goto err_free_shm;
+
+	ret = get_channel(channel);
+	if (ret)
+		goto err_close_sess;
+
+	list_add(&channel->link, &scmi_optee_private->channel_list);
+
+	return 0;
+
+err_close_sess:
+	close_session(scmi_optee_private, channel->tee_session);
+err_free_shm:
+	if (channel->tee_shm)
+		tee_shm_free(channel->tee_shm);
+
+	return ret;
+}
+
+static int scmi_optee_chan_free(int id, void *p, void *data)
+{
+	struct scmi_chan_info *cinfo = p;
+	struct scmi_optee_channel *channel = cinfo->transport_info;
+
+	/*
+	 * chan_setup and chan_free can be unbalanced if a single OP-TEE
+	 * channel is used. Catch this and early exit
+	 */
+	if (!channel)
+		return 0;
+
+	list_del(&channel->link);
+
+	close_session(scmi_optee_private, channel->tee_session);
+
+	if (channel->tee_shm) {
+		tee_shm_free(channel->tee_shm);
+		channel->tee_shm = NULL;
+	}
+
+	cinfo->transport_info = NULL;
+	channel->cinfo = NULL;
+
+	return 0;
+}
+
+static int scmi_optee_send_message(struct scmi_chan_info *cinfo,
+				   struct scmi_xfer *xfer)
+{
+	struct scmi_optee_channel *channel = cinfo->transport_info;
+	int ret;
+
+	if (channel->tee_shm) {
+		msg_tx_prepare(channel->req.msg, xfer);
+		ret = invoke_process_msg_channel(channel, msg_command_size(xfer));
+	} else {
+		shmem_tx_prepare(channel->req.shmem, xfer, cinfo);
+		ret = invoke_process_smt_channel(channel);
+	}
+
+	return ret;
+}
+
+static void scmi_optee_fetch_response(struct scmi_chan_info *cinfo,
+				      struct scmi_xfer *xfer)
+{
+	struct scmi_optee_channel *channel = cinfo->transport_info;
+
+	if (channel->tee_shm)
+		msg_fetch_response(channel->req.msg, channel->rx_len, xfer);
+	else
+		shmem_fetch_response(channel->req.shmem, xfer);
+}
+
+static struct scmi_transport_ops scmi_optee_ops = {
+	.link_supplier = scmi_optee_link_supplier,
+	.chan_available = scmi_optee_chan_available,
+	.chan_setup = scmi_optee_chan_setup,
+	.chan_free = scmi_optee_chan_free,
+	.send_message = scmi_optee_send_message,
+	.fetch_response = scmi_optee_fetch_response,
+	.clear_channel = scmi_optee_clear_channel,
+};
+
+static int scmi_optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	return ver->impl_id == TEE_IMPL_ID_OPTEE;
+}
+
+static int scmi_optee_service_probe(struct device *dev)
+{
+	struct scmi_optee_agent *agent;
+	struct tee_context *tee_ctx;
+	int ret;
+
+	/* Only one SCMI OP-TEE device allowed */
+	if (scmi_optee_private) {
+		dev_err(dev, "An SCMI OP-TEE device was already initialized: only one allowed\n");
+		return -EBUSY;
+	}
+
+	tee_ctx = tee_client_open_context(NULL, scmi_optee_ctx_match, NULL, NULL);
+	if (IS_ERR(tee_ctx))
+		return -ENODEV;
+
+	agent = devm_kzalloc(dev, sizeof(*agent), GFP_KERNEL);
+	if (!agent) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	agent->dev = dev;
+	agent->tee_ctx = tee_ctx;
+	INIT_LIST_HEAD(&agent->channel_list);
+
+	ret = get_capabilities(agent);
+	if (ret)
+		goto err;
+
+	scmi_optee_private = agent;
+
+	return 0;
+
+err:
+	tee_client_close_context(tee_ctx);
+
+	return ret;
+}
+
+/*
+ * Deep probe puts us in an unfortunate position here:
+ * Currently, devices are removed in the inverse order their probe was
+ * entered. If SCMI driver core probes first and then probes OP-TEE,
+ * the OP-TEE dependency will be removed before SCMI.
+ *
+ * If we change the ordering to sort by probe exit, we trade one
+ * breakage for another: OP-TEE will be freed after SCMI, but OP-TEE
+ * probe registers devices for the OP-TEE TAs, which will probe
+ * immediately and thus be removed _after_ their OP-TEE parent.
+ *
+ * TODO: One way to workaround this is to disallow recursive probe, except
+ * for deep probe. For this particular driver, we are in luck as nearly
+ * all components just free memory and we can ignore that as Linux will
+ * reclaim all memory anyway. The only component that needs actual shutdown
+ * is the OP-TEE context used to do SCMI communication, so we just move
+ * that into a later exitcall.
+ */
+static void scmi_optee_service_remove(void)
+{
+	if (!scmi_optee_private)
+		return;
+
+	/* This will also iterate over all sessions and close them */
+	tee_client_close_context(scmi_optee_private->tee_ctx);
+}
+postdevshutdown_exitcall(scmi_optee_service_remove);
+
+static const struct tee_client_device_id scmi_optee_service_id[] = {
+	{
+		UUID_INIT(0xa8cfe406, 0xd4f5, 0x4a2e,
+			  0x9f, 0x8d, 0xa2, 0x5d, 0xc7, 0x54, 0xc0, 0x99)
+	},
+	{ }
+};
+
+MODULE_DEVICE_TABLE(tee, scmi_optee_service_id);
+
+static struct tee_client_driver scmi_optee_driver = {
+	.id_table	= scmi_optee_service_id,
+	.driver		= {
+		.name = "scmi-optee",
+		.bus = &tee_bus_type,
+		.probe = scmi_optee_service_probe,
+	},
+};
+
+static int scmi_optee_init(void)
+{
+	return driver_register(&scmi_optee_driver.driver);
+}
+
+const struct scmi_desc scmi_optee_desc = {
+	.ops = &scmi_optee_ops,
+	.max_rx_timeout_ms = 30,
+	.max_msg = 20,
+	.max_msg_size = SCMI_OPTEE_MAX_MSG_SIZE,
+	.sync_cmds_completed_on_ret = true,
+};
diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
new file mode 100644
index 000000000000..5c4fc733359c
--- /dev/null
+++ b/drivers/firmware/arm_scmi/power.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Power Protocol
+ *
+ * Copyright (C) 2018-2022 ARM Ltd.
+ */
+
+#define pr_fmt(fmt) "SCMI Notifications POWER - " fmt
+
+#include <module.h>
+#include <linux/scmi_protocol.h>
+
+#include "protocols.h"
+
+enum scmi_power_protocol_cmd {
+	POWER_DOMAIN_ATTRIBUTES = 0x3,
+	POWER_STATE_SET = 0x4,
+	POWER_STATE_GET = 0x5,
+	POWER_DOMAIN_NAME_GET = 0x8,
+};
+
+struct scmi_msg_resp_power_attributes {
+	__le16 num_domains;
+	__le16 reserved;
+	__le32 stats_addr_low;
+	__le32 stats_addr_high;
+	__le32 stats_size;
+};
+
+struct scmi_msg_resp_power_domain_attributes {
+	__le32 flags;
+#define SUPPORTS_EXTENDED_NAMES(x)	((x) & BIT(27))
+	    u8 name[SCMI_SHORT_NAME_MAX_SIZE];
+};
+
+struct scmi_power_set_state {
+	__le32 flags;
+	__le32 domain;
+	__le32 state;
+};
+
+struct power_dom_info {
+	char name[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_power_info {
+	u32 version;
+	int num_domains;
+	u64 stats_addr;
+	u32 stats_size;
+	struct power_dom_info *dom_info;
+};
+
+static int scmi_power_attributes_get(const struct scmi_protocol_handle *ph,
+				     struct scmi_power_info *pi)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_power_attributes *attr;
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
+		pi->num_domains = le16_to_cpu(attr->num_domains);
+		pi->stats_addr = le32_to_cpu(attr->stats_addr_low) |
+				(u64)le32_to_cpu(attr->stats_addr_high) << 32;
+		pi->stats_size = le32_to_cpu(attr->stats_size);
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int
+scmi_power_domain_attributes_get(const struct scmi_protocol_handle *ph,
+				 u32 domain, struct power_dom_info *dom_info,
+				 u32 version)
+{
+	int ret;
+	u32 flags;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_power_domain_attributes *attr;
+
+	ret = ph->xops->xfer_get_init(ph, POWER_DOMAIN_ATTRIBUTES,
+				      sizeof(domain), sizeof(*attr), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(domain, t->tx.buf);
+	attr = t->rx.buf;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		flags = le32_to_cpu(attr->flags);
+
+		strscpy(dom_info->name, attr->name, SCMI_SHORT_NAME_MAX_SIZE);
+	}
+	ph->xops->xfer_put(ph, t);
+
+	/*
+	 * If supported overwrite short name with the extended one;
+	 * on error just carry on and use already provided short name.
+	 */
+	if (!ret && PROTOCOL_REV_MAJOR(version) >= 0x3 &&
+	    SUPPORTS_EXTENDED_NAMES(flags)) {
+		ph->hops->extended_name_get(ph, POWER_DOMAIN_NAME_GET,
+					    domain, dom_info->name,
+					    SCMI_MAX_STR_SIZE);
+	}
+
+	return ret;
+}
+
+static int scmi_power_state_set(const struct scmi_protocol_handle *ph,
+				u32 domain, u32 state)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_power_set_state *st;
+
+	ret = ph->xops->xfer_get_init(ph, POWER_STATE_SET, sizeof(*st), 0, &t);
+	if (ret)
+		return ret;
+
+	st = t->tx.buf;
+	st->flags = cpu_to_le32(0);
+	st->domain = cpu_to_le32(domain);
+	st->state = cpu_to_le32(state);
+
+	ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_power_state_get(const struct scmi_protocol_handle *ph,
+				u32 domain, u32 *state)
+{
+	int ret;
+	struct scmi_xfer *t;
+
+	ret = ph->xops->xfer_get_init(ph, POWER_STATE_GET, sizeof(u32), sizeof(u32), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(domain, t->tx.buf);
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		*state = get_unaligned_le32(t->rx.buf);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_power_num_domains_get(const struct scmi_protocol_handle *ph)
+{
+	struct scmi_power_info *pi = ph->get_priv(ph);
+
+	return pi->num_domains;
+}
+
+static const char *
+scmi_power_name_get(const struct scmi_protocol_handle *ph,
+		    u32 domain)
+{
+	struct scmi_power_info *pi = ph->get_priv(ph);
+	struct power_dom_info *dom = pi->dom_info + domain;
+
+	return dom->name;
+}
+
+static const struct scmi_power_proto_ops power_proto_ops = {
+	.num_domains_get = scmi_power_num_domains_get,
+	.name_get = scmi_power_name_get,
+	.state_set = scmi_power_state_set,
+	.state_get = scmi_power_state_get,
+};
+
+static int scmi_power_protocol_init(const struct scmi_protocol_handle *ph)
+{
+	int domain, ret;
+	u32 version;
+	struct scmi_power_info *pinfo;
+
+	ret = ph->xops->version_get(ph, &version);
+	if (ret)
+		return ret;
+
+	dev_dbg(ph->dev, "Power Version %d.%d\n",
+		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
+
+	pinfo = devm_kzalloc(ph->dev, sizeof(*pinfo), GFP_KERNEL);
+	if (!pinfo)
+		return -ENOMEM;
+
+	ret = scmi_power_attributes_get(ph, pinfo);
+	if (ret)
+		return ret;
+
+	pinfo->dom_info = devm_kcalloc(ph->dev, pinfo->num_domains,
+				       sizeof(*pinfo->dom_info), GFP_KERNEL);
+	if (!pinfo->dom_info)
+		return -ENOMEM;
+
+	for (domain = 0; domain < pinfo->num_domains; domain++) {
+		struct power_dom_info *dom = pinfo->dom_info + domain;
+
+		scmi_power_domain_attributes_get(ph, domain, dom, version);
+	}
+
+	pinfo->version = version;
+
+	return ph->set_priv(ph, pinfo);
+}
+
+static const struct scmi_protocol scmi_power = {
+	.id = SCMI_PROTOCOL_POWER,
+	.instance_init = &scmi_power_protocol_init,
+	.ops = &power_proto_ops,
+};
+
+DEFINE_SCMI_PROTOCOL_REGISTER(power, scmi_power)
diff --git a/drivers/firmware/arm_scmi/protocols.h b/drivers/firmware/arm_scmi/protocols.h
new file mode 100644
index 000000000000..cb0c2eb841b3
--- /dev/null
+++ b/drivers/firmware/arm_scmi/protocols.h
@@ -0,0 +1,325 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * System Control and Management Interface (SCMI) Message Protocol
+ * protocols common header file containing some definitions, structures
+ * and function prototypes used in all the different SCMI protocols.
+ *
+ * Copyright (C) 2022 ARM Ltd.
+ */
+#ifndef _SCMI_PROTOCOLS_H
+#define _SCMI_PROTOCOLS_H
+
+#include <linux/bitfield.h>
+#include <linux/completion.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <module.h>
+#include <linux/refcount.h>
+#include <linux/scmi_protocol.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
+
+#include <asm/unaligned.h>
+
+#define PROTOCOL_REV_MINOR_MASK	GENMASK(15, 0)
+#define PROTOCOL_REV_MAJOR_MASK	GENMASK(31, 16)
+#define PROTOCOL_REV_MAJOR(x)	((u16)(FIELD_GET(PROTOCOL_REV_MAJOR_MASK, (x))))
+#define PROTOCOL_REV_MINOR(x)	((u16)(FIELD_GET(PROTOCOL_REV_MINOR_MASK, (x))))
+
+enum scmi_common_cmd {
+	PROTOCOL_VERSION = 0x0,
+	PROTOCOL_ATTRIBUTES = 0x1,
+	PROTOCOL_MESSAGE_ATTRIBUTES = 0x2,
+};
+
+/**
+ * struct scmi_msg_resp_prot_version - Response for a message
+ *
+ * @minor_version: Minor version of the ABI that firmware supports
+ * @major_version: Major version of the ABI that firmware supports
+ *
+ * In general, ABI version changes follow the rule that minor version increments
+ * are backward compatible. Major revision changes in ABI may not be
+ * backward compatible.
+ *
+ * Response to a generic message with message type SCMI_MSG_VERSION
+ */
+struct scmi_msg_resp_prot_version {
+	__le16 minor_version;
+	__le16 major_version;
+};
+
+/**
+ * struct scmi_msg - Message(Tx/Rx) structure
+ *
+ * @buf: Buffer pointer
+ * @len: Length of data in the Buffer
+ */
+struct scmi_msg {
+	void *buf;
+	size_t len;
+};
+
+/**
+ * struct scmi_msg_hdr - Message(Tx/Rx) header
+ *
+ * @id: The identifier of the message being sent
+ * @protocol_id: The identifier of the protocol used to send @id message
+ * @type: The SCMI type for this message
+ * @seq: The token to identify the message. When a message returns, the
+ *	platform returns the whole message header unmodified including the
+ *	token
+ * @status: Status of the transfer once it's complete
+ */
+struct scmi_msg_hdr {
+	u8 id;
+	u8 protocol_id;
+	u8 type;
+	u16 seq;
+	u32 status;
+};
+
+/**
+ * struct scmi_xfer - Structure representing a message flow
+ *
+ * @transfer_id: Unique ID for debug & profiling purpose
+ * @hdr: Transmit message header
+ * @tx: Transmit message
+ * @rx: Receive message, the buffer should be pre-allocated to store
+ *	message. If request-ACK protocol is used, we can reuse the same
+ *	buffer for the rx path as we use for the tx path.
+ * @pending: True for xfers removed from the free list @free_xfers
+ * @node: An hlist_node reference used to store this xfer on
+ *	  the free list @free_xfers
+ * @users: A refcount to track the active users for this xfer.
+ *	   This is meant to protect against the possibility that, when a command
+ *	   transaction times out concurrently with the reception of a valid
+ *	   response message, the xfer could be finally put on the TX path, and
+ *	   so vanish, while on the RX path scmi_rx_callback() is still
+ *	   processing it: in such a case this refcounting will ensure that, even
+ *	   though the timed-out transaction will anyway cause the command
+ *	   request to be reported as failed by time-out, the underlying xfer
+ *	   cannot be discarded and possibly reused until the last one user on
+ *	   the RX path has released it.
+ * @busy: An atomic flag to ensure exclusive write access to this xfer
+ * @state: The current state of this transfer, with states transitions deemed
+ *	   valid being:
+ *	    - SCMI_XFER_SENT_OK -> SCMI_XFER_RESP_OK [ -> SCMI_XFER_DRESP_OK ]
+ *	    - SCMI_XFER_SENT_OK -> SCMI_XFER_DRESP_OK
+ *	      (Missing synchronous response is assumed OK and ignored)
+ * @flags: Optional flags associated to this xfer.
+ * @lock: A spinlock to protect state and busy fields.
+ * @priv: A pointer for transport private usage.
+ */
+struct scmi_xfer {
+	int transfer_id;
+	struct scmi_msg_hdr hdr;
+	struct scmi_msg tx;
+	struct scmi_msg rx;
+	bool pending;
+	struct hlist_node node;
+	refcount_t users;
+#define SCMI_XFER_FREE		0
+#define SCMI_XFER_BUSY		1
+	atomic_t busy;
+#define SCMI_XFER_SENT_OK	0
+#define SCMI_XFER_RESP_OK	1
+#define SCMI_XFER_DRESP_OK	2
+	int state;
+#define SCMI_XFER_FLAG_IS_RAW	BIT(0)
+#define SCMI_XFER_IS_RAW(x)	((x)->flags & SCMI_XFER_FLAG_IS_RAW)
+#define SCMI_XFER_FLAG_CHAN_SET	BIT(1)
+#define SCMI_XFER_IS_CHAN_SET(x)	\
+	((x)->flags & SCMI_XFER_FLAG_CHAN_SET)
+	int flags;
+	/* A lock to protect state and busy fields */
+	spinlock_t lock;
+	void *priv;
+};
+
+struct scmi_xfer_ops;
+struct scmi_proto_helpers_ops;
+
+/**
+ * struct scmi_protocol_handle  - Reference to an initialized protocol instance
+ *
+ * @dev: A reference to the associated SCMI instance device (handle->dev).
+ * @xops: A reference to a struct holding refs to the core xfer operations that
+ *	  can be used by the protocol implementation to generate SCMI messages.
+ * @set_priv: A method to set protocol private data for this instance.
+ * @get_priv: A method to get protocol private data previously set.
+ *
+ * This structure represents a protocol initialized against specific SCMI
+ * instance and it will be used as follows:
+ * - as a parameter fed from the core to the protocol initialization code so
+ *   that it can access the core xfer operations to build and generate SCMI
+ *   messages exclusively for the specific underlying protocol instance.
+ * - as an opaque handle fed by an SCMI driver user when it tries to access
+ *   this protocol through its own protocol operations.
+ *   In this case this handle will be returned as an opaque object together
+ *   with the related protocol operations when the SCMI driver tries to access
+ *   the protocol.
+ */
+struct scmi_protocol_handle {
+	struct device *dev;
+	const struct scmi_xfer_ops *xops;
+	const struct scmi_proto_helpers_ops *hops;
+	int (*set_priv)(const struct scmi_protocol_handle *ph, void *priv);
+	void *(*get_priv)(const struct scmi_protocol_handle *ph);
+};
+
+/**
+ * struct scmi_iterator_state  - Iterator current state descriptor
+ * @desc_index: Starting index for the current mulit-part request.
+ * @num_returned: Number of returned items in the last multi-part reply.
+ * @num_remaining: Number of remaining items in the multi-part message.
+ * @max_resources: Maximum acceptable number of items, configured by the caller
+ *		   depending on the underlying resources that it is querying.
+ * @loop_idx: The iterator loop index in the current multi-part reply.
+ * @rx_len: Size in bytes of the currenly processed message; it can be used by
+ *	    the user of the iterator to verify a reply size.
+ * @priv: Optional pointer to some additional state-related private data setup
+ *	  by the caller during the iterations.
+ */
+struct scmi_iterator_state {
+	unsigned int desc_index;
+	unsigned int num_returned;
+	unsigned int num_remaining;
+	unsigned int max_resources;
+	unsigned int loop_idx;
+	size_t rx_len;
+	void *priv;
+};
+
+/**
+ * struct scmi_iterator_ops  - Custom iterator operations
+ * @prepare_message: An operation to provide the custom logic to fill in the
+ *		     SCMI command request pointed by @message. @desc_index is
+ *		     a reference to the next index to use in the multi-part
+ *		     request.
+ * @update_state: An operation to provide the custom logic to update the
+ *		  iterator state from the actual message response.
+ * @process_response: An operation to provide the custom logic needed to process
+ *		      each chunk of the multi-part message.
+ */
+struct scmi_iterator_ops {
+	void (*prepare_message)(void *message, unsigned int desc_index,
+				const void *priv);
+	int (*update_state)(struct scmi_iterator_state *st,
+			    const void *response, void *priv);
+	int (*process_response)(const struct scmi_protocol_handle *ph,
+				const void *response,
+				struct scmi_iterator_state *st, void *priv);
+};
+
+struct scmi_fc_db_info {
+	int width;
+	u64 set;
+	u64 mask;
+	void __iomem *addr;
+};
+
+struct scmi_fc_info {
+	void __iomem *set_addr;
+	void __iomem *get_addr;
+	struct scmi_fc_db_info *set_db;
+};
+
+/**
+ * struct scmi_proto_helpers_ops  - References to common protocol helpers
+ * @extended_name_get: A common helper function to retrieve extended naming
+ *		       for the specified resource using the specified command.
+ *		       Result is returned as a NULL terminated string in the
+ *		       pre-allocated area pointed to by @name with maximum
+ *		       capacity of @len bytes.
+ * @iter_response_init: A common helper to initialize a generic iterator to
+ *			parse multi-message responses: when run the iterator
+ *			will take care to send the initial command request as
+ *			specified by @msg_id and @tx_size and then to parse the
+ *			multi-part responses using the custom operations
+ *			provided in @ops.
+ * @iter_response_run: A common helper to trigger the run of a previously
+ *		       initialized iterator.
+ * @fastchannel_init: A common helper used to initialize FC descriptors by
+ *		      gathering FC descriptions from the SCMI platform server.
+ * @fastchannel_db_ring: A common helper to ring a FC doorbell.
+ */
+struct scmi_proto_helpers_ops {
+	int (*extended_name_get)(const struct scmi_protocol_handle *ph,
+				 u8 cmd_id, u32 res_id, char *name, size_t len);
+	void *(*iter_response_init)(const struct scmi_protocol_handle *ph,
+				    struct scmi_iterator_ops *ops,
+				    unsigned int max_resources, u8 msg_id,
+				    size_t tx_size, void *priv);
+	int (*iter_response_run)(void *iter);
+	void (*fastchannel_init)(const struct scmi_protocol_handle *ph,
+				 u8 describe_id, u32 message_id,
+				 u32 valid_size, u32 domain,
+				 void __iomem **p_addr,
+				 struct scmi_fc_db_info **p_db);
+	void (*fastchannel_db_ring)(struct scmi_fc_db_info *db);
+};
+
+/**
+ * struct scmi_xfer_ops  - References to the core SCMI xfer operations.
+ * @version_get: Get this version protocol.
+ * @xfer_get_init: Initialize one struct xfer if any xfer slot is free.
+ * @reset_rx_to_maxsz: Reset rx size to max transport size.
+ * @do_xfer: Do the SCMI transfer.
+ * @xfer_put: Free the xfer slot.
+ *
+ * Note that all this operations expect a protocol handle as first parameter;
+ * they then internally use it to infer the underlying protocol number: this
+ * way is not possible for a protocol implementation to forge messages for
+ * another protocol.
+ */
+struct scmi_xfer_ops {
+	int (*version_get)(const struct scmi_protocol_handle *ph, u32 *version);
+	int (*xfer_get_init)(const struct scmi_protocol_handle *ph, u8 msg_id,
+			     size_t tx_size, size_t rx_size,
+			     struct scmi_xfer **p);
+	void (*reset_rx_to_maxsz)(const struct scmi_protocol_handle *ph,
+				  struct scmi_xfer *xfer);
+	int (*do_xfer)(const struct scmi_protocol_handle *ph,
+		       struct scmi_xfer *xfer);
+	void (*xfer_put)(const struct scmi_protocol_handle *ph,
+			 struct scmi_xfer *xfer);
+};
+
+typedef int (*scmi_prot_init_ph_fn_t)(const struct scmi_protocol_handle *);
+
+/**
+ * struct scmi_protocol  - Protocol descriptor
+ * @id: Protocol ID.
+ * @instance_init: Mandatory protocol initialization function.
+ * @instance_deinit: Optional protocol de-initialization function.
+ * @ops: Optional reference to the operations provided by the protocol and
+ *	 exposed in scmi_protocol.h.
+ */
+struct scmi_protocol {
+	const u8				id;
+	const scmi_prot_init_ph_fn_t		instance_init;
+	const scmi_prot_init_ph_fn_t		instance_deinit;
+	const void				*ops;
+};
+
+#define DEFINE_SCMI_PROTOCOL_REGISTER(name, proto)	\
+static const struct scmi_protocol *__this_proto = &(proto);	\
+								\
+int __init scmi_##name##_register(void)				\
+{								\
+	return scmi_protocol_register(__this_proto);		\
+}								\
+
+#define DECLARE_SCMI_REGISTER(func)			\
+	int __init scmi_##func##_register(void);
+DECLARE_SCMI_REGISTER(base);
+DECLARE_SCMI_REGISTER(clock);
+DECLARE_SCMI_REGISTER(power);
+DECLARE_SCMI_REGISTER(reset);
+DECLARE_SCMI_REGISTER(sensors);
+DECLARE_SCMI_REGISTER(voltage);
+
+#endif /* _SCMI_PROTOCOLS_H */
diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index 94baab99e1e4..98a7dd0afa8e 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -2,30 +2,29 @@
 /*
  * System Control and Management Interface (SCMI) Reset Protocol
  *
- * Copyright (C) 2019-2021 ARM Ltd.
+ * Copyright (C) 2019-2022 ARM Ltd.
  */
 
-#define pr_fmt(fmt) "SCMI RESET - " fmt
+#define pr_fmt(fmt) "SCMI Notifications RESET - " fmt
 
 #include <common.h>
 #include <linux/scmi_protocol.h>
 
-#include "common.h"
+#include "protocols.h"
 
 enum scmi_reset_protocol_cmd {
 	RESET_DOMAIN_ATTRIBUTES = 0x3,
 	RESET = 0x4,
-	RESET_NOTIFY = 0x5,
+	RESET_DOMAIN_NAME_GET = 0x6,
 };
 
 #define NUM_RESET_DOMAIN_MASK	0xffff
 
 struct scmi_msg_resp_reset_domain_attributes {
 	__le32 attributes;
-#define SUPPORTS_ASYNC_RESET(x)		((x) & BIT(31))
-#define SUPPORTS_NOTIFY_RESET(x)	((x) & BIT(30))
+#define SUPPORTS_EXTENDED_NAMES(x)	((x) & BIT(29))
 	__le32 latency;
-	    u8 name[SCMI_MAX_STR_SIZE];
+	u8 name[SCMI_SHORT_NAME_MAX_SIZE];
 };
 
 struct scmi_msg_reset_domain_reset {
@@ -33,13 +32,11 @@ struct scmi_msg_reset_domain_reset {
 	__le32 flags;
 #define AUTONOMOUS_RESET	BIT(0)
 #define EXPLICIT_RESET_ASSERT	BIT(1)
-#define ASYNCHRONOUS_RESET	BIT(2)
 	__le32 reset_state;
 #define ARCH_COLD_RESET		0
 };
 
 struct reset_dom_info {
-	bool async_reset;
 	u32 latency_us;
 	char name[SCMI_MAX_STR_SIZE];
 };
@@ -74,9 +71,11 @@ static int scmi_reset_attributes_get(const struct scmi_protocol_handle *ph,
 
 static int
 scmi_reset_domain_attributes_get(const struct scmi_protocol_handle *ph,
-				 u32 domain, struct reset_dom_info *dom_info)
+				 u32 domain, struct reset_dom_info *dom_info,
+				 u32 version)
 {
 	int ret;
+	u32 attributes;
 	struct scmi_xfer *t;
 	struct scmi_msg_resp_reset_domain_attributes *attr;
 
@@ -90,16 +89,25 @@ scmi_reset_domain_attributes_get(const struct scmi_protocol_handle *ph,
 
 	ret = ph->xops->do_xfer(ph, t);
 	if (!ret) {
-		u32 attributes = le32_to_cpu(attr->attributes);
+		attributes = le32_to_cpu(attr->attributes);
 
-		dom_info->async_reset = SUPPORTS_ASYNC_RESET(attributes);
 		dom_info->latency_us = le32_to_cpu(attr->latency);
 		if (dom_info->latency_us == U32_MAX)
 			dom_info->latency_us = 0;
-		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
+		strscpy(dom_info->name, attr->name, SCMI_SHORT_NAME_MAX_SIZE);
 	}
 
 	ph->xops->xfer_put(ph, t);
+
+	/*
+	 * If supported overwrite short name with the extended one;
+	 * on error just carry on and use already provided short name.
+	 */
+	if (!ret && PROTOCOL_REV_MAJOR(version) >= 0x3 &&
+	    SUPPORTS_EXTENDED_NAMES(attributes))
+		ph->hops->extended_name_get(ph, RESET_DOMAIN_NAME_GET, domain,
+					    dom_info->name, SCMI_MAX_STR_SIZE);
+
 	return ret;
 }
 
@@ -110,8 +118,8 @@ static int scmi_reset_num_domains_get(const struct scmi_protocol_handle *ph)
 	return pi->num_domains;
 }
 
-static char *scmi_reset_name_get(const struct scmi_protocol_handle *ph,
-				 u32 domain)
+static const char *
+scmi_reset_name_get(const struct scmi_protocol_handle *ph, u32 domain)
 {
 	struct scmi_reset_info *pi = ph->get_priv(ph);
 
@@ -136,10 +144,12 @@ static int scmi_domain_reset(const struct scmi_protocol_handle *ph, u32 domain,
 	struct scmi_xfer *t;
 	struct scmi_msg_reset_domain_reset *dom;
 	struct scmi_reset_info *pi = ph->get_priv(ph);
-	struct reset_dom_info *rdom = pi->dom_info + domain;
+	struct reset_dom_info *rdom;
 
-	if (rdom->async_reset)
-		flags |= ASYNCHRONOUS_RESET;
+	if (domain >= pi->num_domains)
+		return -EINVAL;
+
+	rdom = pi->dom_info + domain;
 
 	ret = ph->xops->xfer_get_init(ph, RESET, sizeof(*dom), 0, &t);
 	if (ret)
@@ -150,10 +160,7 @@ static int scmi_domain_reset(const struct scmi_protocol_handle *ph, u32 domain,
 	dom->flags = cpu_to_le32(flags);
 	dom->reset_state = cpu_to_le32(state);
 
-	if (rdom->async_reset)
-		ret = ph->xops->do_xfer_with_response(ph, t);
-	else
-		ret = ph->xops->do_xfer(ph, t);
+	ret = ph->xops->do_xfer(ph, t);
 
 	ph->xops->xfer_put(ph, t);
 	return ret;
@@ -190,22 +197,26 @@ static const struct scmi_reset_proto_ops reset_proto_ops = {
 
 static int scmi_reset_protocol_init(const struct scmi_protocol_handle *ph)
 {
-	int domain;
+	int domain, ret;
 	u32 version;
 	struct scmi_reset_info *pinfo;
 
-	ph->xops->version_get(ph, &version);
+	ret = ph->xops->version_get(ph, &version);
+	if (ret)
+		return ret;
 
 	dev_dbg(ph->dev, "Reset Version %d.%d\n",
 		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
 
-	pinfo = kzalloc(sizeof(*pinfo), GFP_KERNEL);
+	pinfo = devm_kzalloc(ph->dev, sizeof(*pinfo), GFP_KERNEL);
 	if (!pinfo)
 		return -ENOMEM;
 
-	scmi_reset_attributes_get(ph, pinfo);
+	ret = scmi_reset_attributes_get(ph, pinfo);
+	if (ret)
+		return ret;
 
-	pinfo->dom_info = kcalloc(pinfo->num_domains,
+	pinfo->dom_info = devm_kcalloc(ph->dev, pinfo->num_domains,
 				       sizeof(*pinfo->dom_info), GFP_KERNEL);
 	if (!pinfo->dom_info)
 		return -ENOMEM;
@@ -213,7 +224,7 @@ static int scmi_reset_protocol_init(const struct scmi_protocol_handle *ph)
 	for (domain = 0; domain < pinfo->num_domains; domain++) {
 		struct reset_dom_info *dom = pinfo->dom_info + domain;
 
-		scmi_reset_domain_attributes_get(ph, domain, dom);
+		scmi_reset_domain_attributes_get(ph, domain, dom, version);
 	}
 
 	pinfo->version = version;
diff --git a/drivers/firmware/arm_scmi/scmi_pm_domain.c b/drivers/firmware/arm_scmi/scmi_pm_domain.c
new file mode 100644
index 000000000000..4448598fd3eb
--- /dev/null
+++ b/drivers/firmware/arm_scmi/scmi_pm_domain.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SCMI Generic power domain support.
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+
+#include <linux/err.h>
+#include <linux/io.h>
+#include <module.h>
+#include <pm_domain.h>
+#include <linux/scmi_protocol.h>
+
+static const struct scmi_power_proto_ops *power_ops;
+
+struct scmi_pm_domain {
+	struct generic_pm_domain genpd;
+	const struct scmi_protocol_handle *ph;
+	const char *name;
+	u32 domain;
+};
+
+#define to_scmi_pd(gpd) container_of(gpd, struct scmi_pm_domain, genpd)
+
+static int scmi_pd_power(struct generic_pm_domain *domain, bool power_on)
+{
+	int ret;
+	u32 state, ret_state;
+	struct scmi_pm_domain *pd = to_scmi_pd(domain);
+
+	if (power_on)
+		state = SCMI_POWER_STATE_GENERIC_ON;
+	else
+		state = SCMI_POWER_STATE_GENERIC_OFF;
+
+	ret = power_ops->state_set(pd->ph, pd->domain, state);
+	if (!ret)
+		ret = power_ops->state_get(pd->ph, pd->domain, &ret_state);
+	if (!ret && state != ret_state)
+		return -EIO;
+
+	return ret;
+}
+
+static int scmi_pd_power_on(struct generic_pm_domain *domain)
+{
+	return scmi_pd_power(domain, true);
+}
+
+static int scmi_pd_power_off(struct generic_pm_domain *domain)
+{
+	return scmi_pd_power(domain, false);
+}
+
+static int scmi_pm_domain_probe(struct scmi_device *sdev)
+{
+	int num_domains, i;
+	struct device *dev = &sdev->dev;
+	struct device_node *np = dev->of_node;
+	struct scmi_pm_domain *scmi_pd;
+	struct genpd_onecell_data *scmi_pd_data;
+	struct generic_pm_domain **domains;
+	const struct scmi_handle *handle = sdev->handle;
+	struct scmi_protocol_handle *ph;
+
+	if (!handle)
+		return -ENODEV;
+
+	power_ops = handle->dev_protocol_get(sdev, SCMI_PROTOCOL_POWER, &ph);
+	if (IS_ERR(power_ops))
+		return PTR_ERR(power_ops);
+
+	num_domains = power_ops->num_domains_get(ph);
+	if (num_domains < 0) {
+		dev_err(dev, "number of domains not found\n");
+		return num_domains;
+	}
+
+	scmi_pd = devm_kcalloc(dev, num_domains, sizeof(*scmi_pd), GFP_KERNEL);
+	if (!scmi_pd)
+		return -ENOMEM;
+
+	scmi_pd_data = devm_kzalloc(dev, sizeof(*scmi_pd_data), GFP_KERNEL);
+	if (!scmi_pd_data)
+		return -ENOMEM;
+
+	domains = devm_kcalloc(dev, num_domains, sizeof(*domains), GFP_KERNEL);
+	if (!domains)
+		return -ENOMEM;
+
+	for (i = 0; i < num_domains; i++, scmi_pd++) {
+		u32 state;
+
+		if (power_ops->state_get(ph, i, &state)) {
+			dev_warn(dev, "failed to get state for domain %d\n", i);
+			continue;
+		}
+
+		scmi_pd->domain = i;
+		scmi_pd->ph = ph;
+		scmi_pd->name = power_ops->name_get(ph, i);
+		scmi_pd->genpd.name = scmi_pd->name;
+		scmi_pd->genpd.power_off = scmi_pd_power_off;
+		scmi_pd->genpd.power_on = scmi_pd_power_on;
+
+		pm_genpd_init(&scmi_pd->genpd, NULL,
+			      state == SCMI_POWER_STATE_GENERIC_OFF);
+
+		domains[i] = &scmi_pd->genpd;
+	}
+
+	scmi_pd_data->domains = domains;
+	scmi_pd_data->num_domains = num_domains;
+
+	dev->priv = scmi_pd_data;
+
+	return of_genpd_add_provider_onecell(np, scmi_pd_data);
+}
+
+static const struct scmi_device_id scmi_id_table[] = {
+	{ SCMI_PROTOCOL_POWER, "genpd" },
+	{ },
+};
+MODULE_DEVICE_TABLE(scmi, scmi_id_table);
+
+static struct scmi_driver scmi_power_domain_driver = {
+	.name = "scmi-power-domain",
+	.probe = scmi_pm_domain_probe,
+	.id_table = scmi_id_table,
+};
+core_scmi_driver(scmi_power_domain_driver);
+
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI power domain driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
new file mode 100644
index 000000000000..6e94ef2e6b59
--- /dev/null
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -0,0 +1,936 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Sensor Protocol
+ *
+ * Copyright (C) 2018-2022 ARM Ltd.
+ */
+
+#define pr_fmt(fmt) "SCMI Notifications SENSOR - " fmt
+
+#include <linux/bitfield.h>
+#include <module.h>
+#include <linux/scmi_protocol.h>
+
+#include "protocols.h"
+
+#define SCMI_MAX_NUM_SENSOR_AXIS	63
+#define	SCMIv2_SENSOR_PROTOCOL		0x10000
+
+enum scmi_sensor_protocol_cmd {
+	SENSOR_DESCRIPTION_GET = 0x3,
+	SENSOR_TRIP_POINT_NOTIFY = 0x4,
+	SENSOR_TRIP_POINT_CONFIG = 0x5,
+	SENSOR_READING_GET = 0x6,
+	SENSOR_AXIS_DESCRIPTION_GET = 0x7,
+	SENSOR_LIST_UPDATE_INTERVALS = 0x8,
+	SENSOR_CONFIG_GET = 0x9,
+	SENSOR_CONFIG_SET = 0xA,
+	SENSOR_CONTINUOUS_UPDATE_NOTIFY = 0xB,
+	SENSOR_NAME_GET = 0xC,
+	SENSOR_AXIS_NAME_GET = 0xD,
+};
+
+struct scmi_msg_resp_sensor_attributes {
+	__le16 num_sensors;
+	u8 max_requests;
+	u8 reserved;
+	__le32 reg_addr_low;
+	__le32 reg_addr_high;
+	__le32 reg_size;
+};
+
+/* v3 attributes_low macros */
+#define SUPPORTS_UPDATE_NOTIFY(x)	FIELD_GET(BIT(30), (x))
+#define SENSOR_TSTAMP_EXP(x)		FIELD_GET(GENMASK(14, 10), (x))
+#define SUPPORTS_TIMESTAMP(x)		FIELD_GET(BIT(9), (x))
+#define SUPPORTS_EXTEND_ATTRS(x)	FIELD_GET(BIT(8), (x))
+
+/* v2 attributes_high macros */
+#define SENSOR_UPDATE_BASE(x)		FIELD_GET(GENMASK(31, 27), (x))
+#define SENSOR_UPDATE_SCALE(x)		FIELD_GET(GENMASK(26, 22), (x))
+
+/* v3 attributes_high macros */
+#define SENSOR_AXIS_NUMBER(x)		FIELD_GET(GENMASK(21, 16), (x))
+#define SUPPORTS_AXIS(x)		FIELD_GET(BIT(8), (x))
+
+/* v3 resolution macros */
+#define SENSOR_RES(x)			FIELD_GET(GENMASK(26, 0), (x))
+#define SENSOR_RES_EXP(x)		FIELD_GET(GENMASK(31, 27), (x))
+
+struct scmi_msg_resp_attrs {
+	__le32 min_range_low;
+	__le32 min_range_high;
+	__le32 max_range_low;
+	__le32 max_range_high;
+};
+
+struct scmi_msg_sensor_description {
+	__le32 desc_index;
+};
+
+struct scmi_msg_resp_sensor_description {
+	__le16 num_returned;
+	__le16 num_remaining;
+	struct scmi_sensor_descriptor {
+		__le32 id;
+		__le32 attributes_low;
+/* Common attributes_low macros */
+#define SUPPORTS_ASYNC_READ(x)		FIELD_GET(BIT(31), (x))
+#define SUPPORTS_EXTENDED_NAMES(x)	FIELD_GET(BIT(29), (x))
+#define NUM_TRIP_POINTS(x)		FIELD_GET(GENMASK(7, 0), (x))
+		__le32 attributes_high;
+/* Common attributes_high macros */
+#define SENSOR_SCALE(x)			FIELD_GET(GENMASK(15, 11), (x))
+#define SENSOR_SCALE_SIGN		BIT(4)
+#define SENSOR_SCALE_EXTEND		GENMASK(31, 5)
+#define SENSOR_TYPE(x)			FIELD_GET(GENMASK(7, 0), (x))
+		u8 name[SCMI_SHORT_NAME_MAX_SIZE];
+		/* only for version > 2.0 */
+		__le32 power;
+		__le32 resolution;
+		struct scmi_msg_resp_attrs scalar_attrs;
+	} desc[];
+};
+
+/* Base scmi_sensor_descriptor size excluding extended attrs after name */
+#define SCMI_MSG_RESP_SENS_DESCR_BASE_SZ	28
+
+/* Sign extend to a full s32 */
+#define	S32_EXT(v)							\
+	({								\
+		int __v = (v);						\
+									\
+		if (__v & SENSOR_SCALE_SIGN)				\
+			__v |= SENSOR_SCALE_EXTEND;			\
+		__v;							\
+	})
+
+struct scmi_msg_sensor_axis_description_get {
+	__le32 id;
+	__le32 axis_desc_index;
+};
+
+struct scmi_msg_resp_sensor_axis_description {
+	__le32 num_axis_flags;
+#define NUM_AXIS_RETURNED(x)		FIELD_GET(GENMASK(5, 0), (x))
+#define NUM_AXIS_REMAINING(x)		FIELD_GET(GENMASK(31, 26), (x))
+	struct scmi_axis_descriptor {
+		__le32 id;
+		__le32 attributes_low;
+#define SUPPORTS_EXTENDED_AXIS_NAMES(x)	FIELD_GET(BIT(9), (x))
+		__le32 attributes_high;
+		u8 name[SCMI_SHORT_NAME_MAX_SIZE];
+		__le32 resolution;
+		struct scmi_msg_resp_attrs attrs;
+	} desc[];
+};
+
+struct scmi_msg_resp_sensor_axis_names_description {
+	__le32 num_axis_flags;
+	struct scmi_sensor_axis_name_descriptor {
+		__le32 axis_id;
+		u8 name[SCMI_MAX_STR_SIZE];
+	} desc[];
+};
+
+/* Base scmi_axis_descriptor size excluding extended attrs after name */
+#define SCMI_MSG_RESP_AXIS_DESCR_BASE_SZ	28
+
+struct scmi_msg_sensor_list_update_intervals {
+	__le32 id;
+	__le32 index;
+};
+
+struct scmi_msg_resp_sensor_list_update_intervals {
+	__le32 num_intervals_flags;
+#define NUM_INTERVALS_RETURNED(x)	FIELD_GET(GENMASK(11, 0), (x))
+#define SEGMENTED_INTVL_FORMAT(x)	FIELD_GET(BIT(12), (x))
+#define NUM_INTERVALS_REMAINING(x)	FIELD_GET(GENMASK(31, 16), (x))
+	__le32 intervals[];
+};
+
+struct scmi_msg_set_sensor_trip_point {
+	__le32 id;
+	__le32 event_control;
+#define SENSOR_TP_EVENT_MASK	(0x3)
+#define SENSOR_TP_DISABLED	0x0
+#define SENSOR_TP_POSITIVE	0x1
+#define SENSOR_TP_NEGATIVE	0x2
+#define SENSOR_TP_BOTH		0x3
+#define SENSOR_TP_ID(x)		(((x) & 0xff) << 4)
+	__le32 value_low;
+	__le32 value_high;
+};
+
+struct scmi_msg_sensor_config_set {
+	__le32 id;
+	__le32 sensor_config;
+};
+
+struct scmi_msg_sensor_reading_get {
+	__le32 id;
+	__le32 flags;
+#define SENSOR_READ_ASYNC	BIT(0)
+};
+
+struct scmi_resp_sensor_reading_complete {
+	__le32 id;
+	__le32 readings_low;
+	__le32 readings_high;
+};
+
+struct scmi_sensor_reading_resp {
+	__le32 sensor_value_low;
+	__le32 sensor_value_high;
+	__le32 timestamp_low;
+	__le32 timestamp_high;
+};
+
+struct scmi_resp_sensor_reading_complete_v3 {
+	__le32 id;
+	struct scmi_sensor_reading_resp readings[];
+};
+
+struct sensors_info {
+	u32 version;
+	int num_sensors;
+	int max_requests;
+	u64 reg_addr;
+	u32 reg_size;
+	struct scmi_sensor_info *sensors;
+};
+
+static int scmi_sensor_attributes_get(const struct scmi_protocol_handle *ph,
+				      struct sensors_info *si)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_sensor_attributes *attr;
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
+		si->num_sensors = le16_to_cpu(attr->num_sensors);
+		si->max_requests = attr->max_requests;
+		si->reg_addr = le32_to_cpu(attr->reg_addr_low) |
+				(u64)le32_to_cpu(attr->reg_addr_high) << 32;
+		si->reg_size = le32_to_cpu(attr->reg_size);
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static inline void scmi_parse_range_attrs(struct scmi_range_attrs *out,
+					  const struct scmi_msg_resp_attrs *in)
+{
+	out->min_range = get_unaligned_le64((void *)&in->min_range_low);
+	out->max_range = get_unaligned_le64((void *)&in->max_range_low);
+}
+
+struct scmi_sens_ipriv {
+	void *priv;
+	struct device *dev;
+};
+
+static void iter_intervals_prepare_message(void *message,
+					   unsigned int desc_index,
+					   const void *p)
+{
+	struct scmi_msg_sensor_list_update_intervals *msg = message;
+	const struct scmi_sensor_info *s;
+
+	s = ((const struct scmi_sens_ipriv *)p)->priv;
+	/* Set the number of sensors to be skipped/already read */
+	msg->id = cpu_to_le32(s->id);
+	msg->index = cpu_to_le32(desc_index);
+}
+
+static int iter_intervals_update_state(struct scmi_iterator_state *st,
+				       const void *response, void *p)
+{
+	u32 flags;
+	struct scmi_sensor_info *s = ((struct scmi_sens_ipriv *)p)->priv;
+	struct device *dev = ((struct scmi_sens_ipriv *)p)->dev;
+	const struct scmi_msg_resp_sensor_list_update_intervals *r = response;
+
+	flags = le32_to_cpu(r->num_intervals_flags);
+	st->num_returned = NUM_INTERVALS_RETURNED(flags);
+	st->num_remaining = NUM_INTERVALS_REMAINING(flags);
+
+	/*
+	 * Max intervals is not declared previously anywhere so we
+	 * assume it's returned+remaining on first call.
+	 */
+	if (!st->max_resources) {
+		s->intervals.segmented = SEGMENTED_INTVL_FORMAT(flags);
+		s->intervals.count = st->num_returned + st->num_remaining;
+		/* segmented intervals are reported in one triplet */
+		if (s->intervals.segmented &&
+		    (st->num_remaining || st->num_returned != 3)) {
+			dev_err(dev,
+				"Sensor ID:%d advertises an invalid segmented interval (%d)\n",
+				s->id, s->intervals.count);
+			s->intervals.segmented = false;
+			s->intervals.count = 0;
+			return -EINVAL;
+		}
+		/* Direct allocation when exceeding pre-allocated */
+		if (s->intervals.count >= SCMI_MAX_PREALLOC_POOL) {
+			s->intervals.desc =
+				devm_kcalloc(dev,
+					     s->intervals.count,
+					     sizeof(*s->intervals.desc),
+					     GFP_KERNEL);
+			if (!s->intervals.desc) {
+				s->intervals.segmented = false;
+				s->intervals.count = 0;
+				return -ENOMEM;
+			}
+		}
+
+		st->max_resources = s->intervals.count;
+	}
+
+	return 0;
+}
+
+static int
+iter_intervals_process_response(const struct scmi_protocol_handle *ph,
+				const void *response,
+				struct scmi_iterator_state *st, void *p)
+{
+	const struct scmi_msg_resp_sensor_list_update_intervals *r = response;
+	struct scmi_sensor_info *s = ((struct scmi_sens_ipriv *)p)->priv;
+
+	s->intervals.desc[st->desc_index + st->loop_idx] =
+		le32_to_cpu(r->intervals[st->loop_idx]);
+
+	return 0;
+}
+
+static int scmi_sensor_update_intervals(const struct scmi_protocol_handle *ph,
+					struct scmi_sensor_info *s)
+{
+	void *iter;
+	struct scmi_iterator_ops ops = {
+		.prepare_message = iter_intervals_prepare_message,
+		.update_state = iter_intervals_update_state,
+		.process_response = iter_intervals_process_response,
+	};
+	struct scmi_sens_ipriv upriv = {
+		.priv = s,
+		.dev = ph->dev,
+	};
+
+	iter = ph->hops->iter_response_init(ph, &ops, s->intervals.count,
+					    SENSOR_LIST_UPDATE_INTERVALS,
+					    sizeof(struct scmi_msg_sensor_list_update_intervals),
+					    &upriv);
+	if (IS_ERR(iter))
+		return PTR_ERR(iter);
+
+	return ph->hops->iter_response_run(iter);
+}
+
+struct scmi_apriv {
+	bool any_axes_support_extended_names;
+	struct scmi_sensor_info *s;
+};
+
+static void iter_axes_desc_prepare_message(void *message,
+					   const unsigned int desc_index,
+					   const void *priv)
+{
+	struct scmi_msg_sensor_axis_description_get *msg = message;
+	const struct scmi_apriv *apriv = priv;
+
+	/* Set the number of sensors to be skipped/already read */
+	msg->id = cpu_to_le32(apriv->s->id);
+	msg->axis_desc_index = cpu_to_le32(desc_index);
+}
+
+static int
+iter_axes_desc_update_state(struct scmi_iterator_state *st,
+			    const void *response, void *priv)
+{
+	u32 flags;
+	const struct scmi_msg_resp_sensor_axis_description *r = response;
+
+	flags = le32_to_cpu(r->num_axis_flags);
+	st->num_returned = NUM_AXIS_RETURNED(flags);
+	st->num_remaining = NUM_AXIS_REMAINING(flags);
+	st->priv = (void *)&r->desc[0];
+
+	return 0;
+}
+
+static int
+iter_axes_desc_process_response(const struct scmi_protocol_handle *ph,
+				const void *response,
+				struct scmi_iterator_state *st, void *priv)
+{
+	u32 attrh, attrl;
+	struct scmi_sensor_axis_info *a;
+	size_t dsize = SCMI_MSG_RESP_AXIS_DESCR_BASE_SZ;
+	struct scmi_apriv *apriv = priv;
+	const struct scmi_axis_descriptor *adesc = st->priv;
+
+	attrl = le32_to_cpu(adesc->attributes_low);
+	if (SUPPORTS_EXTENDED_AXIS_NAMES(attrl))
+		apriv->any_axes_support_extended_names = true;
+
+	a = &apriv->s->axis[st->desc_index + st->loop_idx];
+	a->id = le32_to_cpu(adesc->id);
+	a->extended_attrs = SUPPORTS_EXTEND_ATTRS(attrl);
+
+	attrh = le32_to_cpu(adesc->attributes_high);
+	a->scale = S32_EXT(SENSOR_SCALE(attrh));
+	a->type = SENSOR_TYPE(attrh);
+	strscpy(a->name, adesc->name, SCMI_SHORT_NAME_MAX_SIZE);
+
+	if (a->extended_attrs) {
+		unsigned int ares = le32_to_cpu(adesc->resolution);
+
+		a->resolution = SENSOR_RES(ares);
+		a->exponent = S32_EXT(SENSOR_RES_EXP(ares));
+		dsize += sizeof(adesc->resolution);
+
+		scmi_parse_range_attrs(&a->attrs, &adesc->attrs);
+		dsize += sizeof(adesc->attrs);
+	}
+	st->priv = ((u8 *)adesc + dsize);
+
+	return 0;
+}
+
+static int
+iter_axes_extended_name_update_state(struct scmi_iterator_state *st,
+				     const void *response, void *priv)
+{
+	u32 flags;
+	const struct scmi_msg_resp_sensor_axis_names_description *r = response;
+
+	flags = le32_to_cpu(r->num_axis_flags);
+	st->num_returned = NUM_AXIS_RETURNED(flags);
+	st->num_remaining = NUM_AXIS_REMAINING(flags);
+	st->priv = (void *)&r->desc[0];
+
+	return 0;
+}
+
+static int
+iter_axes_extended_name_process_response(const struct scmi_protocol_handle *ph,
+					 const void *response,
+					 struct scmi_iterator_state *st,
+					 void *priv)
+{
+	struct scmi_sensor_axis_info *a;
+	const struct scmi_apriv *apriv = priv;
+	struct scmi_sensor_axis_name_descriptor *adesc = st->priv;
+	u32 axis_id = le32_to_cpu(adesc->axis_id);
+
+	if (axis_id >= st->max_resources)
+		return -EPROTO;
+
+	/*
+	 * Pick the corresponding descriptor based on the axis_id embedded
+	 * in the reply since the list of axes supporting extended names
+	 * can be a subset of all the axes.
+	 */
+	a = &apriv->s->axis[axis_id];
+	strscpy(a->name, adesc->name, SCMI_MAX_STR_SIZE);
+	st->priv = ++adesc;
+
+	return 0;
+}
+
+static int
+scmi_sensor_axis_extended_names_get(const struct scmi_protocol_handle *ph,
+				    struct scmi_sensor_info *s)
+{
+	int ret;
+	void *iter;
+	struct scmi_iterator_ops ops = {
+		.prepare_message = iter_axes_desc_prepare_message,
+		.update_state = iter_axes_extended_name_update_state,
+		.process_response = iter_axes_extended_name_process_response,
+	};
+	struct scmi_apriv apriv = {
+		.any_axes_support_extended_names = false,
+		.s = s,
+	};
+
+	iter = ph->hops->iter_response_init(ph, &ops, s->num_axis,
+					    SENSOR_AXIS_NAME_GET,
+					    sizeof(struct scmi_msg_sensor_axis_description_get),
+					    &apriv);
+	if (IS_ERR(iter))
+		return PTR_ERR(iter);
+
+	/*
+	 * Do not cause whole protocol initialization failure when failing to
+	 * get extended names for axes.
+	 */
+	ret = ph->hops->iter_response_run(iter);
+	if (ret)
+		dev_warn(ph->dev,
+			 "Failed to get axes extended names for %s (ret:%d).\n",
+			 s->name, ret);
+
+	return 0;
+}
+
+static int scmi_sensor_axis_description(const struct scmi_protocol_handle *ph,
+					struct scmi_sensor_info *s,
+					u32 version)
+{
+	int ret;
+	void *iter;
+	struct scmi_iterator_ops ops = {
+		.prepare_message = iter_axes_desc_prepare_message,
+		.update_state = iter_axes_desc_update_state,
+		.process_response = iter_axes_desc_process_response,
+	};
+	struct scmi_apriv apriv = {
+		.any_axes_support_extended_names = false,
+		.s = s,
+	};
+
+	s->axis = devm_kcalloc(ph->dev, s->num_axis,
+			       sizeof(*s->axis), GFP_KERNEL);
+	if (!s->axis)
+		return -ENOMEM;
+
+	iter = ph->hops->iter_response_init(ph, &ops, s->num_axis,
+					    SENSOR_AXIS_DESCRIPTION_GET,
+					    sizeof(struct scmi_msg_sensor_axis_description_get),
+					    &apriv);
+	if (IS_ERR(iter))
+		return PTR_ERR(iter);
+
+	ret = ph->hops->iter_response_run(iter);
+	if (ret)
+		return ret;
+
+	if (PROTOCOL_REV_MAJOR(version) >= 0x3 &&
+	    apriv.any_axes_support_extended_names)
+		ret = scmi_sensor_axis_extended_names_get(ph, s);
+
+	return ret;
+}
+
+static void iter_sens_descr_prepare_message(void *message,
+					    unsigned int desc_index,
+					    const void *priv)
+{
+	struct scmi_msg_sensor_description *msg = message;
+
+	msg->desc_index = cpu_to_le32(desc_index);
+}
+
+static int iter_sens_descr_update_state(struct scmi_iterator_state *st,
+					const void *response, void *priv)
+{
+	const struct scmi_msg_resp_sensor_description *r = response;
+
+	st->num_returned = le16_to_cpu(r->num_returned);
+	st->num_remaining = le16_to_cpu(r->num_remaining);
+	st->priv = (void *)&r->desc[0];
+
+	return 0;
+}
+
+static int
+iter_sens_descr_process_response(const struct scmi_protocol_handle *ph,
+				 const void *response,
+				 struct scmi_iterator_state *st, void *priv)
+
+{
+	int ret = 0;
+	u32 attrh, attrl;
+	size_t dsize = SCMI_MSG_RESP_SENS_DESCR_BASE_SZ;
+	struct scmi_sensor_info *s;
+	struct sensors_info *si = priv;
+	const struct scmi_sensor_descriptor *sdesc = st->priv;
+
+	s = &si->sensors[st->desc_index + st->loop_idx];
+	s->id = le32_to_cpu(sdesc->id);
+
+	attrl = le32_to_cpu(sdesc->attributes_low);
+	/* common bitfields parsing */
+	s->num_trip_points = NUM_TRIP_POINTS(attrl);
+	/**
+	 * only SCMIv3.0 specific bitfield below.
+	 * Such bitfields are assumed to be zeroed on non
+	 * relevant fw versions...assuming fw not buggy !
+	 */
+	s->update = SUPPORTS_UPDATE_NOTIFY(attrl);
+	s->timestamped = SUPPORTS_TIMESTAMP(attrl);
+	if (s->timestamped)
+		s->tstamp_scale = S32_EXT(SENSOR_TSTAMP_EXP(attrl));
+	s->extended_scalar_attrs = SUPPORTS_EXTEND_ATTRS(attrl);
+
+	attrh = le32_to_cpu(sdesc->attributes_high);
+	/* common bitfields parsing */
+	s->scale = S32_EXT(SENSOR_SCALE(attrh));
+	s->type = SENSOR_TYPE(attrh);
+	/* Use pre-allocated pool wherever possible */
+	s->intervals.desc = s->intervals.prealloc_pool;
+	if (si->version == SCMIv2_SENSOR_PROTOCOL) {
+		s->intervals.segmented = false;
+		s->intervals.count = 1;
+		/*
+		 * Convert SCMIv2.0 update interval format to
+		 * SCMIv3.0 to be used as the common exposed
+		 * descriptor, accessible via common macros.
+		 */
+		s->intervals.desc[0] = (SENSOR_UPDATE_BASE(attrh) << 5) |
+					SENSOR_UPDATE_SCALE(attrh);
+	} else {
+		/*
+		 * From SCMIv3.0 update intervals are retrieved
+		 * via a dedicated (optional) command.
+		 * Since the command is optional, on error carry
+		 * on without any update interval.
+		 */
+		if (scmi_sensor_update_intervals(ph, s))
+			dev_dbg(ph->dev,
+				"Update Intervals not available for sensor ID:%d\n",
+				s->id);
+	}
+	/**
+	 * only > SCMIv2.0 specific bitfield below.
+	 * Such bitfields are assumed to be zeroed on non
+	 * relevant fw versions...assuming fw not buggy !
+	 */
+	s->num_axis = min_t(unsigned int,
+			    SUPPORTS_AXIS(attrh) ?
+			    SENSOR_AXIS_NUMBER(attrh) : 0,
+			    SCMI_MAX_NUM_SENSOR_AXIS);
+	strscpy(s->name, sdesc->name, SCMI_SHORT_NAME_MAX_SIZE);
+
+	/*
+	 * If supported overwrite short name with the extended
+	 * one; on error just carry on and use already provided
+	 * short name.
+	 */
+	if (PROTOCOL_REV_MAJOR(si->version) >= 0x3 &&
+	    SUPPORTS_EXTENDED_NAMES(attrl))
+		ph->hops->extended_name_get(ph, SENSOR_NAME_GET, s->id,
+					    s->name, SCMI_MAX_STR_SIZE);
+
+	if (s->extended_scalar_attrs) {
+		s->sensor_power = le32_to_cpu(sdesc->power);
+		dsize += sizeof(sdesc->power);
+
+		/* Only for sensors reporting scalar values */
+		if (s->num_axis == 0) {
+			unsigned int sres = le32_to_cpu(sdesc->resolution);
+
+			s->resolution = SENSOR_RES(sres);
+			s->exponent = S32_EXT(SENSOR_RES_EXP(sres));
+			dsize += sizeof(sdesc->resolution);
+
+			scmi_parse_range_attrs(&s->scalar_attrs,
+					       &sdesc->scalar_attrs);
+			dsize += sizeof(sdesc->scalar_attrs);
+		}
+	}
+
+	if (s->num_axis > 0)
+		ret = scmi_sensor_axis_description(ph, s, si->version);
+
+	st->priv = ((u8 *)sdesc + dsize);
+
+	return ret;
+}
+
+static int scmi_sensor_description_get(const struct scmi_protocol_handle *ph,
+				       struct sensors_info *si)
+{
+	void *iter;
+	struct scmi_iterator_ops ops = {
+		.prepare_message = iter_sens_descr_prepare_message,
+		.update_state = iter_sens_descr_update_state,
+		.process_response = iter_sens_descr_process_response,
+	};
+
+	iter = ph->hops->iter_response_init(ph, &ops, si->num_sensors,
+					    SENSOR_DESCRIPTION_GET,
+					    sizeof(__le32), si);
+	if (IS_ERR(iter))
+		return PTR_ERR(iter);
+
+	return ph->hops->iter_response_run(iter);
+}
+
+static int
+scmi_sensor_trip_point_config(const struct scmi_protocol_handle *ph,
+			      u32 sensor_id, u8 trip_id, u64 trip_value)
+{
+	int ret;
+	u32 evt_cntl = SENSOR_TP_BOTH;
+	struct scmi_xfer *t;
+	struct scmi_msg_set_sensor_trip_point *trip;
+
+	ret = ph->xops->xfer_get_init(ph, SENSOR_TRIP_POINT_CONFIG,
+				      sizeof(*trip), 0, &t);
+	if (ret)
+		return ret;
+
+	trip = t->tx.buf;
+	trip->id = cpu_to_le32(sensor_id);
+	trip->event_control = cpu_to_le32(evt_cntl | SENSOR_TP_ID(trip_id));
+	trip->value_low = cpu_to_le32(trip_value & 0xffffffff);
+	trip->value_high = cpu_to_le32(trip_value >> 32);
+
+	ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_sensor_config_get(const struct scmi_protocol_handle *ph,
+				  u32 sensor_id, u32 *sensor_config)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct sensors_info *si = ph->get_priv(ph);
+
+	if (sensor_id >= si->num_sensors)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, SENSOR_CONFIG_GET,
+				      sizeof(__le32), sizeof(__le32), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(sensor_id, t->tx.buf);
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		struct scmi_sensor_info *s = si->sensors + sensor_id;
+
+		*sensor_config = get_unaligned_le64(t->rx.buf);
+		s->sensor_config = *sensor_config;
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_sensor_config_set(const struct scmi_protocol_handle *ph,
+				  u32 sensor_id, u32 sensor_config)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_sensor_config_set *msg;
+	struct sensors_info *si = ph->get_priv(ph);
+
+	if (sensor_id >= si->num_sensors)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, SENSOR_CONFIG_SET,
+				      sizeof(*msg), 0, &t);
+	if (ret)
+		return ret;
+
+	msg = t->tx.buf;
+	msg->id = cpu_to_le32(sensor_id);
+	msg->sensor_config = cpu_to_le32(sensor_config);
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		struct scmi_sensor_info *s = si->sensors + sensor_id;
+
+		s->sensor_config = sensor_config;
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+/**
+ * scmi_sensor_reading_get  - Read scalar sensor value
+ * @ph: Protocol handle
+ * @sensor_id: Sensor ID
+ * @value: The 64bit value sensor reading
+ *
+ * This function returns a single 64 bit reading value representing the sensor
+ * value; if the platform SCMI Protocol implementation and the sensor support
+ * multiple axis and timestamped-reads, this just returns the first axis while
+ * dropping the timestamp value.
+ * Use instead the @scmi_sensor_reading_get_timestamped to retrieve the array of
+ * timestamped multi-axis values.
+ *
+ * Return: 0 on Success
+ */
+static int scmi_sensor_reading_get(const struct scmi_protocol_handle *ph,
+				   u32 sensor_id, u64 *value)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_sensor_reading_get *sensor;
+	struct scmi_sensor_info *s;
+	struct sensors_info *si = ph->get_priv(ph);
+
+	if (sensor_id >= si->num_sensors)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, SENSOR_READING_GET,
+				      sizeof(*sensor), 0, &t);
+	if (ret)
+		return ret;
+
+	sensor = t->tx.buf;
+	sensor->id = cpu_to_le32(sensor_id);
+	s = si->sensors + sensor_id;
+
+	sensor->flags = cpu_to_le32(0);
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		*value = get_unaligned_le64(t->rx.buf);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static inline void
+scmi_parse_sensor_readings(struct scmi_sensor_reading *out,
+			   const struct scmi_sensor_reading_resp *in)
+{
+	out->value = get_unaligned_le64((void *)&in->sensor_value_low);
+	out->timestamp = get_unaligned_le64((void *)&in->timestamp_low);
+}
+
+/**
+ * scmi_sensor_reading_get_timestamped  - Read multiple-axis timestamped values
+ * @ph: Protocol handle
+ * @sensor_id: Sensor ID
+ * @count: The length of the provided @readings array
+ * @readings: An array of elements each representing a timestamped per-axis
+ *	      reading of type @struct scmi_sensor_reading.
+ *	      Returned readings are ordered as the @axis descriptors array
+ *	      included in @struct scmi_sensor_info and the max number of
+ *	      returned elements is min(@count, @num_axis); ideally the provided
+ *	      array should be of length @count equal to @num_axis.
+ *
+ * Return: 0 on Success
+ */
+static int
+scmi_sensor_reading_get_timestamped(const struct scmi_protocol_handle *ph,
+				    u32 sensor_id, u8 count,
+				    struct scmi_sensor_reading *readings)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_sensor_reading_get *sensor;
+	struct scmi_sensor_info *s;
+	struct sensors_info *si = ph->get_priv(ph);
+
+	if (sensor_id >= si->num_sensors)
+		return -EINVAL;
+
+	s = si->sensors + sensor_id;
+	if (!count || !readings ||
+	    (!s->num_axis && count > 1) || (s->num_axis && count > s->num_axis))
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, SENSOR_READING_GET,
+				      sizeof(*sensor), 0, &t);
+	if (ret)
+		return ret;
+
+	sensor = t->tx.buf;
+	sensor->id = cpu_to_le32(sensor_id);
+
+	sensor->flags = cpu_to_le32(0);
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		int i;
+		struct scmi_sensor_reading_resp *resp_readings;
+
+		resp_readings = t->rx.buf;
+		for (i = 0; i < count; i++)
+			scmi_parse_sensor_readings(&readings[i],
+						   &resp_readings[i]);
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static const struct scmi_sensor_info *
+scmi_sensor_info_get(const struct scmi_protocol_handle *ph, u32 sensor_id)
+{
+	struct sensors_info *si = ph->get_priv(ph);
+
+	if (sensor_id >= si->num_sensors)
+		return NULL;
+
+	return si->sensors + sensor_id;
+}
+
+static int scmi_sensor_count_get(const struct scmi_protocol_handle *ph)
+{
+	struct sensors_info *si = ph->get_priv(ph);
+
+	return si->num_sensors;
+}
+
+static const struct scmi_sensor_proto_ops sensor_proto_ops = {
+	.count_get = scmi_sensor_count_get,
+	.info_get = scmi_sensor_info_get,
+	.trip_point_config = scmi_sensor_trip_point_config,
+	.reading_get = scmi_sensor_reading_get,
+	.reading_get_timestamped = scmi_sensor_reading_get_timestamped,
+	.config_get = scmi_sensor_config_get,
+	.config_set = scmi_sensor_config_set,
+};
+
+static int scmi_sensors_protocol_init(const struct scmi_protocol_handle *ph)
+{
+	u32 version;
+	int ret;
+	struct sensors_info *sinfo;
+
+	ret = ph->xops->version_get(ph, &version);
+	if (ret)
+		return ret;
+
+	dev_dbg(ph->dev, "Sensor Version %d.%d\n",
+		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
+
+	sinfo = devm_kzalloc(ph->dev, sizeof(*sinfo), GFP_KERNEL);
+	if (!sinfo)
+		return -ENOMEM;
+	sinfo->version = version;
+
+	ret = scmi_sensor_attributes_get(ph, sinfo);
+	if (ret)
+		return ret;
+	sinfo->sensors = devm_kcalloc(ph->dev, sinfo->num_sensors,
+				      sizeof(*sinfo->sensors), GFP_KERNEL);
+	if (!sinfo->sensors)
+		return -ENOMEM;
+
+	ret = scmi_sensor_description_get(ph, sinfo);
+	if (ret)
+		return ret;
+
+	return ph->set_priv(ph, sinfo);
+}
+
+static const struct scmi_protocol scmi_sensors = {
+	.id = SCMI_PROTOCOL_SENSOR,
+	.instance_init = &scmi_sensors_protocol_init,
+	.ops = &sensor_proto_ops,
+};
+
+DEFINE_SCMI_PROTOCOL_REGISTER(sensors, scmi_sensors)
diff --git a/drivers/firmware/arm_scmi/shmem.c b/drivers/firmware/arm_scmi/shmem.c
index 2dde2b6e09eb..38ac92031bad 100644
--- a/drivers/firmware/arm_scmi/shmem.c
+++ b/drivers/firmware/arm_scmi/shmem.c
@@ -6,7 +6,7 @@
  */
 
 #include <common.h>
-#include <io.h>
+#include <linux/io.h>
 #include <linux/types.h>
 #include <linux/processor.h>
 
@@ -31,20 +31,39 @@ struct scmi_shared_mem {
 };
 
 void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
-		      struct scmi_xfer *xfer)
+		      struct scmi_xfer *xfer, struct scmi_chan_info *cinfo)
 {
+	ktime_t stop;
+
 	/*
 	 * Ideally channel must be free by now unless OS timeout last
 	 * request and platform continued to process the same, wait
 	 * until it releases the shared memory, otherwise we may endup
-	 * overwriting its response with new message payload or vice-versa
+	 * overwriting its response with new message payload or vice-versa.
+	 * Giving up anyway after twice the expected channel timeout so as
+	 * not to bail-out on intermittent issues where the platform is
+	 * occasionally a bit slower to answer.
+	 *
+	 * Note that after a timeout is detected we bail-out and carry on but
+	 * the transport functionality is probably permanently compromised:
+	 * this is just to ease debugging and avoid complete hangs on boot
+	 * due to a misbehaving SCMI firmware.
 	 */
-	spin_until_cond(ioread32(&shmem->channel_status) &
-			SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
+	stop = ktime_add_ms(ktime_get(), 2 * cinfo->rx_timeout_ms);
+	spin_until_cond((ioread32(&shmem->channel_status) &
+			 SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE) ||
+			 ktime_after(ktime_get(), stop));
+	if (!(ioread32(&shmem->channel_status) &
+	      SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE)) {
+		WARN_ON_ONCE(1);
+		dev_err(cinfo->dev,
+			"Timeout waiting for a free TX channel !\n");
+		return;
+	}
+
 	/* Mark channel busy + clear error */
 	iowrite32(0x0, &shmem->channel_status);
-	iowrite32(xfer->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
-		  &shmem->flags);
+	iowrite32(0, &shmem->flags); /* No SCMI_SHMEM_FLAG_INTR_ENABLED */
 	iowrite32(sizeof(shmem->msg_header) + xfer->tx.len, &shmem->length);
 	iowrite32(pack_scmi_header(&xfer->hdr), &shmem->msg_header);
 	if (xfer->tx.buf)
@@ -59,10 +78,11 @@ u32 shmem_read_header(struct scmi_shared_mem __iomem *shmem)
 void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
 			  struct scmi_xfer *xfer)
 {
+	size_t len = ioread32(&shmem->length);
+
 	xfer->hdr.status = ioread32(shmem->msg_payload);
 	/* Skip the length of header and status in shmem area i.e 8 bytes */
-	xfer->rx.len = min_t(size_t, xfer->rx.len,
-			     ioread32(&shmem->length) - 8);
+	xfer->rx.len = min_t(size_t, xfer->rx.len, len > 8 ? len - 8 : 0);
 
 	/* Take a copy to the rx buffer.. */
 	memcpy_fromio(xfer->rx.buf, shmem->msg_payload + 4, xfer->rx.len);
@@ -72,18 +92,3 @@ void shmem_clear_channel(struct scmi_shared_mem __iomem *shmem)
 {
 	iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE, &shmem->channel_status);
 }
-
-bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
-		     struct scmi_xfer *xfer)
-{
-	u16 xfer_id;
-
-	xfer_id = MSG_XTRACT_TOKEN(ioread32(&shmem->msg_header));
-
-	if (xfer->hdr.seq != xfer_id)
-		return false;
-
-	return ioread32(&shmem->channel_status) &
-		(SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR |
-		 SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
-}
diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 98f9277ddce0..d128820b0200 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -8,30 +8,61 @@
 
 #include <common.h>
 #include <linux/arm-smccc.h>
-#include <driver.h>
+#include <linux/mutex.h>
+#include <linux/processor.h>
+#include <linux/sizes.h>
+#include <linux/device.h>
 #include <linux/err.h>
 #include <of.h>
 #include <of_address.h>
 
 #include "common.h"
 
+/*
+ * The shmem address is split into 4K page and offset.
+ * This is to make sure the parameters fit in 32bit arguments of the
+ * smc/hvc call to keep it uniform across smc32/smc64 conventions.
+ * This however limits the shmem address to 44 bit.
+ *
+ * These optional parameters can be used to distinguish among multiple
+ * scmi instances that are using the same smc-id.
+ * The page parameter is passed in r1/x1/w1 register and the offset parameter
+ * is passed in r2/x2/w2 register.
+ */
+
+#define SHMEM_SIZE (SZ_4K)
+#define SHMEM_SHIFT 12
+#define SHMEM_PAGE(x) (_UL((x) >> SHMEM_SHIFT))
+#define SHMEM_OFFSET(x) ((x) & (SHMEM_SIZE - 1))
+
 /**
  * struct scmi_smc - Structure representing a SCMI smc transport
  *
  * @cinfo: SCMI channel info
  * @shmem: Transmit/Receive shared memory area
  * @func_id: smc/hvc call function id
+ * @param_page: 4K page number of the shmem channel
+ * @param_offset: Offset within the 4K page of the shmem channel
  */
 
 struct scmi_smc {
 	struct scmi_chan_info *cinfo;
 	struct scmi_shared_mem __iomem *shmem;
+	/* Protect access to shmem area */
+	struct mutex shmem_lock;
 	u32 func_id;
+	u32 param_page;
+	u32 param_offset;
 };
 
-static bool smc_chan_available(struct device *dev, int idx)
+static bool smc_chan_available(struct device_node *of_node, int idx)
 {
-	return of_parse_phandle(dev->of_node, "shmem", 0) != NULL;
+	struct device_node *np = of_parse_phandle(of_node, "shmem", 0);
+	if (!np)
+		return false;
+
+	of_node_put(np);
+	return true;
 }
 
 static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
@@ -48,24 +79,39 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
 	if (!tx)
 		return -ENODEV;
 
-	scmi_info = kzalloc(sizeof(*scmi_info), GFP_KERNEL);
+	scmi_info = devm_kzalloc(dev, sizeof(*scmi_info), GFP_KERNEL);
 	if (!scmi_info)
 		return -ENOMEM;
 
 	np = of_parse_phandle(cdev->of_node, "shmem", 0);
+	if (!of_device_is_compatible(np, "arm,scmi-shmem")) {
+		of_node_put(np);
+		return -ENXIO;
+	}
+
 	ret = of_address_to_resource(np, 0, &res);
+	of_node_put(np);
 	if (ret) {
 		dev_err(cdev, "failed to get SCMI Tx shared memory\n");
 		return ret;
 	}
 
 	size = resource_size(&res);
-	scmi_info->shmem = IOMEM(res.start);
+	scmi_info->shmem = devm_ioremap(dev, res.start, size);
+	if (!scmi_info->shmem) {
+		dev_err(dev, "failed to ioremap SCMI Tx shared memory\n");
+		return -EADDRNOTAVAIL;
+	}
 
 	ret = of_property_read_u32(dev->of_node, "arm,smc-id", &func_id);
 	if (ret < 0)
 		return ret;
 
+	if (of_device_is_compatible(dev->of_node, "arm,scmi-smc-param")) {
+		scmi_info->param_page = SHMEM_PAGE(res.start);
+		scmi_info->param_offset = SHMEM_OFFSET(res.start);
+	}
+
 	scmi_info->func_id = func_id;
 	scmi_info->cinfo = cinfo;
 	cinfo->transport_info = scmi_info;
@@ -81,8 +127,6 @@ static int smc_chan_free(int id, void *p, void *data)
 	cinfo->transport_info = NULL;
 	scmi_info->cinfo = NULL;
 
-	scmi_free_channel(cinfo, data, id);
-
 	return 0;
 }
 
@@ -91,16 +135,18 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
 {
 	struct scmi_smc *scmi_info = cinfo->transport_info;
 	struct arm_smccc_res res;
+	unsigned long page = scmi_info->param_page;
+	unsigned long offset = scmi_info->param_offset;
 
-	shmem_tx_prepare(scmi_info->shmem, xfer);
+	shmem_tx_prepare(scmi_info->shmem, xfer, cinfo);
 
-	arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
-
-	scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
+	arm_smccc_1_1_invoke(scmi_info->func_id, page, offset, 0, 0, 0, 0, 0,
+			     &res);
 
 	/* Only SMCCC_RET_NOT_SUPPORTED is valid error code */
 	if (res.a0)
 		return -EOPNOTSUPP;
+
 	return 0;
 }
 
@@ -112,21 +158,12 @@ static void smc_fetch_response(struct scmi_chan_info *cinfo,
 	shmem_fetch_response(scmi_info->shmem, xfer);
 }
 
-static bool
-smc_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
-{
-	struct scmi_smc *scmi_info = cinfo->transport_info;
-
-	return shmem_poll_done(scmi_info->shmem, xfer);
-}
-
 static const struct scmi_transport_ops scmi_smc_ops = {
 	.chan_available = smc_chan_available,
 	.chan_setup = smc_chan_setup,
 	.chan_free = smc_chan_free,
 	.send_message = smc_send_message,
 	.fetch_response = smc_fetch_response,
-	.poll_done = smc_poll_done,
 };
 
 const struct scmi_desc scmi_smc_desc = {
@@ -134,4 +171,13 @@ const struct scmi_desc scmi_smc_desc = {
 	.max_rx_timeout_ms = 30,
 	.max_msg = 20,
 	.max_msg_size = 128,
+	/*
+	 * Setting .sync_cmds_atomic_replies to true for SMC assumes that,
+	 * once the SMC instruction has completed successfully, the issued
+	 * SCMI command would have been already fully processed by the SCMI
+	 * platform firmware and so any possible response value expected
+	 * for the issued command will be immmediately ready to be fetched
+	 * from the shared memory area.
+	 */
+	.sync_cmds_completed_on_ret = true,
 };
diff --git a/drivers/firmware/arm_scmi/voltage.c b/drivers/firmware/arm_scmi/voltage.c
index 63583c78853d..a9352fcb766a 100644
--- a/drivers/firmware/arm_scmi/voltage.c
+++ b/drivers/firmware/arm_scmi/voltage.c
@@ -2,7 +2,7 @@
 /*
  * System Control and Management Interface (SCMI) Voltage Protocol
  *
- * Copyright (C) 2020-2021 ARM Ltd.
+ * Copyright (C) 2020-2022 ARM Ltd.
  */
 
 #include <common.h>
@@ -21,13 +21,16 @@ enum scmi_voltage_protocol_cmd {
 	VOLTAGE_CONFIG_GET = 0x6,
 	VOLTAGE_LEVEL_SET = 0x7,
 	VOLTAGE_LEVEL_GET = 0x8,
+	VOLTAGE_DOMAIN_NAME_GET = 0x09,
 };
 
 #define NUM_VOLTAGE_DOMAINS(x)	((u16)(FIELD_GET(VOLTAGE_DOMS_NUM_MASK, (x))))
 
 struct scmi_msg_resp_domain_attributes {
 	__le32 attr;
-	u8 name[SCMI_MAX_STR_SIZE];
+#define SUPPORTS_ASYNC_LEVEL_SET(x)	((x) & BIT(31))
+#define SUPPORTS_EXTENDED_NAMES(x)	((x) & BIT(30))
+	u8 name[SCMI_SHORT_NAME_MAX_SIZE];
 };
 
 struct scmi_msg_cmd_describe_levels {
@@ -54,6 +57,11 @@ struct scmi_msg_cmd_level_set {
 	__le32 voltage_level;
 };
 
+struct scmi_resp_voltage_level_set_complete {
+	__le32 domain_id;
+	__le32 voltage_level;
+};
+
 struct voltage_info {
 	unsigned int version;
 	unsigned int num_domains;
@@ -100,7 +108,7 @@ static int scmi_init_voltage_levels(struct device *dev,
 		return -EINVAL;
 	}
 
-	v->levels_uv = kcalloc(num_levels, sizeof(u32), GFP_KERNEL);
+	v->levels_uv = devm_kcalloc(dev, num_levels, sizeof(u32), GFP_KERNEL);
 	if (!v->levels_uv)
 		return -ENOMEM;
 
@@ -110,14 +118,100 @@ static int scmi_init_voltage_levels(struct device *dev,
 	return 0;
 }
 
+struct scmi_volt_ipriv {
+	struct device *dev;
+	struct scmi_voltage_info *v;
+};
+
+static void iter_volt_levels_prepare_message(void *message,
+					     unsigned int desc_index,
+					     const void *priv)
+{
+	struct scmi_msg_cmd_describe_levels *msg = message;
+	const struct scmi_volt_ipriv *p = priv;
+
+	msg->domain_id = cpu_to_le32(p->v->id);
+	msg->level_index = cpu_to_le32(desc_index);
+}
+
+static int iter_volt_levels_update_state(struct scmi_iterator_state *st,
+					 const void *response, void *priv)
+{
+	int ret = 0;
+	u32 flags;
+	const struct scmi_msg_resp_describe_levels *r = response;
+	struct scmi_volt_ipriv *p = priv;
+
+	flags = le32_to_cpu(r->flags);
+	st->num_returned = NUM_RETURNED_LEVELS(flags);
+	st->num_remaining = NUM_REMAINING_LEVELS(flags);
+
+	/* Allocate space for num_levels if not already done */
+	if (!p->v->num_levels) {
+		ret = scmi_init_voltage_levels(p->dev, p->v, st->num_returned,
+					       st->num_remaining,
+					      SUPPORTS_SEGMENTED_LEVELS(flags));
+		if (!ret)
+			st->max_resources = p->v->num_levels;
+	}
+
+	return ret;
+}
+
+static int
+iter_volt_levels_process_response(const struct scmi_protocol_handle *ph,
+				  const void *response,
+				  struct scmi_iterator_state *st, void *priv)
+{
+	s32 val;
+	const struct scmi_msg_resp_describe_levels *r = response;
+	struct scmi_volt_ipriv *p = priv;
+
+	val = (s32)le32_to_cpu(r->voltage[st->loop_idx]);
+	p->v->levels_uv[st->desc_index + st->loop_idx] = val;
+	if (val < 0)
+		p->v->negative_volts_allowed = true;
+
+	return 0;
+}
+
+static int scmi_voltage_levels_get(const struct scmi_protocol_handle *ph,
+				   struct scmi_voltage_info *v)
+{
+	int ret;
+	void *iter;
+	struct scmi_iterator_ops ops = {
+		.prepare_message = iter_volt_levels_prepare_message,
+		.update_state = iter_volt_levels_update_state,
+		.process_response = iter_volt_levels_process_response,
+	};
+	struct scmi_volt_ipriv vpriv = {
+		.dev = ph->dev,
+		.v = v,
+	};
+
+	iter = ph->hops->iter_response_init(ph, &ops, v->num_levels,
+					    VOLTAGE_DESCRIBE_LEVELS,
+					    sizeof(struct scmi_msg_cmd_describe_levels),
+					    &vpriv);
+	if (IS_ERR(iter))
+		return PTR_ERR(iter);
+
+	ret = ph->hops->iter_response_run(iter);
+	if (ret) {
+		v->num_levels = 0;
+		devm_kfree(ph->dev, v->levels_uv);
+	}
+
+	return ret;
+}
+
 static int scmi_voltage_descriptors_get(const struct scmi_protocol_handle *ph,
 					struct voltage_info *vinfo)
 {
 	int ret, dom;
-	struct scmi_xfer *td, *tl;
-	struct device *dev = ph->dev;
+	struct scmi_xfer *td;
 	struct scmi_msg_resp_domain_attributes *resp_dom;
-	struct scmi_msg_resp_describe_levels *resp_levels;
 
 	ret = ph->xops->xfer_get_init(ph, VOLTAGE_DOMAIN_ATTRIBUTES,
 				      sizeof(__le32), sizeof(*resp_dom), &td);
@@ -125,90 +219,37 @@ static int scmi_voltage_descriptors_get(const struct scmi_protocol_handle *ph,
 		return ret;
 	resp_dom = td->rx.buf;
 
-	ret = ph->xops->xfer_get_init(ph, VOLTAGE_DESCRIBE_LEVELS,
-				      sizeof(__le64), 0, &tl);
-	if (ret)
-		goto outd;
-	resp_levels = tl->rx.buf;
-
 	for (dom = 0; dom < vinfo->num_domains; dom++) {
-		u32 desc_index = 0;
-		u16 num_returned = 0, num_remaining = 0;
-		struct scmi_msg_cmd_describe_levels *cmd;
+		u32 attributes;
 		struct scmi_voltage_info *v;
 
 		/* Retrieve domain attributes at first ... */
 		put_unaligned_le32(dom, td->tx.buf);
-		ret = ph->xops->do_xfer(ph, td);
 		/* Skip domain on comms error */
-		if (ret)
+		if (ph->xops->do_xfer(ph, td))
 			continue;
 
 		v = vinfo->domains + dom;
 		v->id = dom;
-		v->attributes = le32_to_cpu(resp_dom->attr);
-		strlcpy(v->name, resp_dom->name, SCMI_MAX_STR_SIZE);
+		attributes = le32_to_cpu(resp_dom->attr);
+		strscpy(v->name, resp_dom->name, SCMI_SHORT_NAME_MAX_SIZE);
 
-		cmd = tl->tx.buf;
-		/* ...then retrieve domain levels descriptions */
-		do {
-			u32 flags;
-			int cnt;
-
-			cmd->domain_id = cpu_to_le32(v->id);
-			cmd->level_index = desc_index;
-			ret = ph->xops->do_xfer(ph, tl);
-			if (ret)
-				break;
-
-			flags = le32_to_cpu(resp_levels->flags);
-			num_returned = NUM_RETURNED_LEVELS(flags);
-			num_remaining = NUM_REMAINING_LEVELS(flags);
-
-			/* Allocate space for num_levels if not already done */
-			if (!v->num_levels) {
-				ret = scmi_init_voltage_levels(dev, v,
-							       num_returned,
-							       num_remaining,
-					      SUPPORTS_SEGMENTED_LEVELS(flags));
-				if (ret)
-					break;
-			}
-
-			if (desc_index + num_returned > v->num_levels) {
-				dev_err(ph->dev,
-					"No. of voltage levels can't exceed %d\n",
-					v->num_levels);
-				ret = -EINVAL;
-				break;
-			}
-
-			for (cnt = 0; cnt < num_returned; cnt++) {
-				s32 val;
-
-				val =
-				    (s32)le32_to_cpu(resp_levels->voltage[cnt]);
-				v->levels_uv[desc_index + cnt] = val;
-				if (val < 0)
-					v->negative_volts_allowed = true;
-			}
-
-			desc_index += num_returned;
-
-			ph->xops->reset_rx_to_maxsz(ph, tl);
-			/* check both to avoid infinite loop due to buggy fw */
-		} while (num_returned && num_remaining);
-
-		if (ret) {
-			v->num_levels = 0;
-			kfree(v->levels_uv);
+		/*
+		 * If supported overwrite short name with the extended one;
+		 * on error just carry on and use already provided short name.
+		 */
+		if (PROTOCOL_REV_MAJOR(vinfo->version) >= 0x2) {
+			if (SUPPORTS_EXTENDED_NAMES(attributes))
+				ph->hops->extended_name_get(ph,
+							VOLTAGE_DOMAIN_NAME_GET,
+							v->id, v->name,
+							SCMI_MAX_STR_SIZE);
 		}
 
-		ph->xops->reset_rx_to_maxsz(ph, td);
+		/* Skip invalid voltage descriptors */
+		scmi_voltage_levels_get(ph, v);
 	}
 
-	ph->xops->xfer_put(ph, tl);
-outd:
 	ph->xops->xfer_put(ph, td);
 
 	return ret;
@@ -271,12 +312,15 @@ static int scmi_voltage_config_get(const struct scmi_protocol_handle *ph,
 }
 
 static int scmi_voltage_level_set(const struct scmi_protocol_handle *ph,
-				  u32 domain_id, u32 flags, s32 volt_uV)
+				  u32 domain_id,
+				  enum scmi_voltage_level_mode mode,
+				  s32 volt_uV)
 {
 	int ret;
 	struct scmi_xfer *t;
 	struct voltage_info *vinfo = ph->get_priv(ph);
 	struct scmi_msg_cmd_level_set *cmd;
+	struct scmi_voltage_info *v;
 
 	if (domain_id >= vinfo->num_domains)
 		return -EINVAL;
@@ -286,11 +330,13 @@ static int scmi_voltage_level_set(const struct scmi_protocol_handle *ph,
 	if (ret)
 		return ret;
 
+	v = vinfo->domains + domain_id;
+
 	cmd = t->tx.buf;
 	cmd->domain_id = cpu_to_le32(domain_id);
-	cmd->flags = cpu_to_le32(flags);
 	cmd->voltage_level = cpu_to_le32(volt_uV);
 
+	cmd->flags = cpu_to_le32(0x0);
 	ret = ph->xops->do_xfer(ph, t);
 
 	ph->xops->xfer_put(ph, t);
@@ -345,7 +391,7 @@ static int scmi_voltage_protocol_init(const struct scmi_protocol_handle *ph)
 	dev_dbg(ph->dev, "Voltage Version %d.%d\n",
 		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
 
-	vinfo = kzalloc(sizeof(*vinfo), GFP_KERNEL);
+	vinfo = devm_kzalloc(ph->dev, sizeof(*vinfo), GFP_KERNEL);
 	if (!vinfo)
 		return -ENOMEM;
 	vinfo->version = version;
@@ -355,7 +401,7 @@ static int scmi_voltage_protocol_init(const struct scmi_protocol_handle *ph)
 		return ret;
 
 	if (vinfo->num_domains) {
-		vinfo->domains = kcalloc(vinfo->num_domains,
+		vinfo->domains = devm_kcalloc(ph->dev, vinfo->num_domains,
 					      sizeof(*vinfo->domains),
 					      GFP_KERNEL);
 		if (!vinfo->domains)
diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
index 39736d3cab8b..6f22fa642039 100644
--- a/drivers/regulator/scmi-regulator.c
+++ b/drivers/regulator/scmi-regulator.c
@@ -299,7 +299,7 @@ static int scmi_regulator_probe(struct scmi_device *sdev)
 	if (!handle)
 		return -ENODEV;
 
-	voltage_ops = handle->protocol_get(sdev, SCMI_PROTOCOL_VOLTAGE, &ph);
+	voltage_ops = handle->dev_protocol_get(sdev, SCMI_PROTOCOL_VOLTAGE, &ph);
 	if (IS_ERR(voltage_ops))
 		return PTR_ERR(voltage_ops);
 
@@ -362,13 +362,16 @@ static int scmi_regulator_probe(struct scmi_device *sdev)
 		if (ret)
 			continue;
 
-		ret = of_regulator_register(&sreg->rdev, np);
+		sreg->rdev.desc = &sdesc->desc;
+		sreg->rdev.dev = &sdev->dev;
+
+		ret = of_regulator_register(&sreg->rdev, sreg->of_node);
 		if (ret)
 			continue;
 
-		dev_info(&sdev->dev,
-			 "Regulator %s registered for domain [%d]\n",
-			 sreg->sdesc.name, sreg->id);
+		dev_dbg(&sdev->dev,
+			"Regulator %s registered for domain [%d]\n",
+			sreg->sdesc.name, sreg->id);
 	}
 
 	return 0;
diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
index 311972fd1632..d8c4734f1b30 100644
--- a/drivers/reset/reset-scmi.c
+++ b/drivers/reset/reset-scmi.c
@@ -97,7 +97,7 @@ static int scmi_reset_probe(struct scmi_device *sdev)
 	if (!handle)
 		return -ENODEV;
 
-	reset_ops = handle->protocol_get(sdev, SCMI_PROTOCOL_RESET, &ph);
+	reset_ops = handle->dev_protocol_get(sdev, SCMI_PROTOCOL_RESET, &ph);
 	if (IS_ERR(reset_ops))
 		return PTR_ERR(reset_ops);
 
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 7c15c23a345d..a33cb497a12b 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -9,11 +9,14 @@
 #define _LINUX_SCMI_PROTOCOL_H
 
 #include <linux/bitfield.h>
-#include <driver.h>
+#include <linux/device.h>
+#include <linux/ktime.h>
+#include <notifier.h>
 #include <linux/types.h>
 
-#define SCMI_MAX_STR_SIZE	16
-#define SCMI_MAX_NUM_RATES	16
+#define SCMI_MAX_STR_SIZE		64
+#define SCMI_SHORT_NAME_MAX_SIZE	16
+#define SCMI_MAX_NUM_RATES		16
 
 /**
  * struct scmi_revision_info - version information structure
@@ -35,13 +38,16 @@ struct scmi_revision_info {
 	u8 num_protocols;
 	u8 num_agents;
 	u32 impl_ver;
-	char vendor_id[SCMI_MAX_STR_SIZE];
-	char sub_vendor_id[SCMI_MAX_STR_SIZE];
+	char vendor_id[SCMI_SHORT_NAME_MAX_SIZE];
+	char sub_vendor_id[SCMI_SHORT_NAME_MAX_SIZE];
 };
 
 struct scmi_clock_info {
 	char name[SCMI_MAX_STR_SIZE];
+	unsigned int enable_latency;
 	bool rate_discrete;
+	bool rate_changed_notifications;
+	bool rate_change_requested_notifications;
 	union {
 		struct {
 			int num_rates;
@@ -55,6 +61,12 @@ struct scmi_clock_info {
 	};
 };
 
+enum scmi_power_scale {
+	SCMI_POWER_BOGOWATTS,
+	SCMI_POWER_MILLIWATTS,
+	SCMI_POWER_MICROWATTS
+};
+
 struct scmi_handle;
 struct scmi_device;
 struct scmi_protocol_handle;
@@ -73,7 +85,7 @@ struct scmi_protocol_handle;
 struct scmi_clk_proto_ops {
 	int (*count_get)(const struct scmi_protocol_handle *ph);
 
-	const struct scmi_clock_info *(*info_get)
+	const struct scmi_clock_info __must_check *(*info_get)
 		(const struct scmi_protocol_handle *ph, u32 clk_id);
 	int (*rate_get)(const struct scmi_protocol_handle *ph, u32 clk_id,
 			u64 *rate);
@@ -81,6 +93,9 @@ struct scmi_clk_proto_ops {
 			u64 rate);
 	int (*enable)(const struct scmi_protocol_handle *ph, u32 clk_id);
 	int (*disable)(const struct scmi_protocol_handle *ph, u32 clk_id);
+	int (*enable_atomic)(const struct scmi_protocol_handle *ph, u32 clk_id);
+	int (*disable_atomic)(const struct scmi_protocol_handle *ph,
+			      u32 clk_id);
 };
 
 /**
@@ -100,6 +115,10 @@ struct scmi_clk_proto_ops {
  *	to sustained performance level mapping
  * @est_power_get: gets the estimated power cost for a given performance domain
  *	at a given frequency
+ * @fast_switch_possible: indicates if fast DVFS switching is possible or not
+ *	for a given device
+ * @power_scale_mw_get: indicates if the power values provided are in milliWatts
+ *	or in some other (abstract) scale
  */
 struct scmi_perf_proto_ops {
 	int (*limits_set)(const struct scmi_protocol_handle *ph, u32 domain,
@@ -123,7 +142,7 @@ struct scmi_perf_proto_ops {
 			     unsigned long *rate, unsigned long *power);
 	bool (*fast_switch_possible)(const struct scmi_protocol_handle *ph,
 				     struct device *dev);
-	bool (*power_scale_mw_get)(const struct scmi_protocol_handle *ph);
+	enum scmi_power_scale (*power_scale_get)(const struct scmi_protocol_handle *ph);
 };
 
 /**
@@ -137,7 +156,8 @@ struct scmi_perf_proto_ops {
  */
 struct scmi_power_proto_ops {
 	int (*num_domains_get)(const struct scmi_protocol_handle *ph);
-	char *(*name_get)(const struct scmi_protocol_handle *ph, u32 domain);
+	const char *(*name_get)(const struct scmi_protocol_handle *ph,
+				u32 domain);
 #define SCMI_POWER_STATE_TYPE_SHIFT	30
 #define SCMI_POWER_STATE_ID_MASK	(BIT(28) - 1)
 #define SCMI_POWER_STATE_PARAM(type, id) \
@@ -152,7 +172,7 @@ struct scmi_power_proto_ops {
 };
 
 /**
- * scmi_sensor_reading  - represent a timestamped read
+ * struct scmi_sensor_reading  - represent a timestamped read
  *
  * Used by @reading_get_timestamped method.
  *
@@ -166,7 +186,7 @@ struct scmi_sensor_reading {
 };
 
 /**
- * scmi_range_attrs  - specifies a sensor or axis values' range
+ * struct scmi_range_attrs  - specifies a sensor or axis values' range
  * @min_range: The minimum value which can be represented by the sensor/axis.
  * @max_range: The maximum value which can be represented by the sensor/axis.
  */
@@ -176,7 +196,7 @@ struct scmi_range_attrs {
 };
 
 /**
- * scmi_sensor_axis_info  - describes one sensor axes
+ * struct scmi_sensor_axis_info  - describes one sensor axes
  * @id: The axes ID.
  * @type: Axes type. Chosen amongst one of @enum scmi_sensor_class.
  * @scale: Power-of-10 multiplier applied to the axis unit.
@@ -204,8 +224,8 @@ struct scmi_sensor_axis_info {
 };
 
 /**
- * scmi_sensor_intervals_info  - describes number and type of available update
- * intervals
+ * struct scmi_sensor_intervals_info  - describes number and type of available
+ *	update intervals
  * @segmented: Flag for segmented intervals' representation. When True there
  *	       will be exactly 3 intervals in @desc, with each entry
  *	       representing a member of a segment in this order:
@@ -245,7 +265,6 @@ struct scmi_sensor_intervals_info {
  * @type: Sensor type. Chosen amongst one of @enum scmi_sensor_class.
  * @scale: Power-of-10 multiplier applied to the sensor unit.
  * @num_trip_points: Number of maximum configurable trip points.
- * @async: Flag for asynchronous read support.
  * @update: Flag for continuouos update notification support.
  * @timestamped: Flag for timestamped read support.
  * @tstamp_scale: Power-of-10 multiplier applied to the sensor timestamps to
@@ -281,7 +300,6 @@ struct scmi_sensor_info {
 	unsigned int type;
 	int scale;
 	unsigned int num_trip_points;
-	bool async;
 	bool update;
 	bool timestamped;
 	int tstamp_scale;
@@ -447,7 +465,7 @@ enum scmi_sensor_class {
  */
 struct scmi_sensor_proto_ops {
 	int (*count_get)(const struct scmi_protocol_handle *ph);
-	const struct scmi_sensor_info *(*info_get)
+	const struct scmi_sensor_info __must_check *(*info_get)
 		(const struct scmi_protocol_handle *ph, u32 sensor_id);
 	int (*trip_point_config)(const struct scmi_protocol_handle *ph,
 				 u32 sensor_id, u8 trip_id, u64 trip_value);
@@ -475,13 +493,19 @@ struct scmi_sensor_proto_ops {
  */
 struct scmi_reset_proto_ops {
 	int (*num_domains_get)(const struct scmi_protocol_handle *ph);
-	char *(*name_get)(const struct scmi_protocol_handle *ph, u32 domain);
+	const char *(*name_get)(const struct scmi_protocol_handle *ph,
+				u32 domain);
 	int (*latency_get)(const struct scmi_protocol_handle *ph, u32 domain);
 	int (*reset)(const struct scmi_protocol_handle *ph, u32 domain);
 	int (*assert)(const struct scmi_protocol_handle *ph, u32 domain);
 	int (*deassert)(const struct scmi_protocol_handle *ph, u32 domain);
 };
 
+enum scmi_voltage_level_mode {
+	SCMI_VOLTAGE_LEVEL_SET_AUTO,
+	SCMI_VOLTAGE_LEVEL_SET_SYNC,
+};
+
 /**
  * struct scmi_voltage_info - describe one available SCMI Voltage Domain
  *
@@ -494,7 +518,6 @@ struct scmi_reset_proto_ops {
  *	         supported voltage level
  * @negative_volts_allowed: True if any of the entries of @levels_uv represent
  *			    a negative voltage.
- * @attributes: represents Voltage Domain advertised attributes
  * @name: name assigned to the Voltage Domain by platform
  * @num_levels: number of total entries in @levels_uv.
  * @levels_uv: array of entries describing the available voltage levels for
@@ -504,7 +527,6 @@ struct scmi_voltage_info {
 	unsigned int id;
 	bool segmented;
 	bool negative_volts_allowed;
-	unsigned int attributes;
 	char name[SCMI_MAX_STR_SIZE];
 	unsigned int num_levels;
 #define SCMI_VOLTAGE_SEGMENT_LOW	0
@@ -535,7 +557,7 @@ struct scmi_voltage_proto_ops {
 	int (*config_get)(const struct scmi_protocol_handle *ph, u32 domain_id,
 			  u32 *config);
 	int (*level_set)(const struct scmi_protocol_handle *ph, u32 domain_id,
-			 u32 flags, s32 volt_uV);
+			 enum scmi_voltage_level_mode mode, s32 volt_uV);
 	int (*level_get)(const struct scmi_protocol_handle *ph, u32 domain_id,
 			 s32 *volt_uV);
 };
@@ -545,16 +567,35 @@ struct scmi_voltage_proto_ops {
  *
  * @dev: pointer to the SCMI device
  * @version: pointer to the structure containing SCMI version information
- * @protocol_get: method to acquire a protocol and get specific
+ * @dev_protocol_acquire: get hold of a protocol,
+ *			   causing its initialization and related resource
+ *			   accounting
+ * @dev_protocol_get: devres managed method to acquire a protocol and get specific
  *		       operations and a dedicated protocol handler
+ * @dev_protocol_put: devres managed method to release a protocol
+ * @is_transport_atomic: method to check if the underlying transport for this
+ *			 instance handle is configured to support atomic
+ *			 transactions for commands.
+ *			 Some users of the SCMI stack in the upper layers could
+ *			 be interested to know if they can assume SCMI
+ *			 command transactions associated to this handle will
+ *			 never sleep and act accordingly.
+ *			 An optional atomic threshold value could be returned
+ *			 where configured.
+ * @notify_ops: pointer to set of notifications related operations
  */
 struct scmi_handle {
 	struct device *dev;
 	struct scmi_revision_info *version;
 
+	int __must_check (*dev_protocol_acquire)(struct scmi_device *sdev,
+						  u8 proto);
 	const void __must_check *
-		(*protocol_get)(struct scmi_device *sdev, u8 proto,
+		(*dev_protocol_get)(struct scmi_device *sdev, u8 proto,
 				     struct scmi_protocol_handle **ph);
+	void (*dev_protocol_put)(struct scmi_device *sdev, u8 proto);
+	bool (*is_transport_atomic)(const struct scmi_handle *handle,
+				    unsigned int *atomic_threshold);
 };
 
 enum scmi_std_protocol {
@@ -586,11 +627,6 @@ struct scmi_device {
 
 #define to_scmi_dev(d) container_of(d, struct scmi_device, dev)
 
-struct scmi_device *
-scmi_device_alloc(struct device_node *np, struct device *parent, int protocol,
-		  const char *name);
-void scmi_device_destroy(struct scmi_device *scmi_dev);
-
 struct scmi_device_id {
 	u8 protocol_id;
 	const char *name;
@@ -599,10 +635,9 @@ struct scmi_device_id {
 struct scmi_driver {
 	const char *name;
 	int (*probe)(struct scmi_device *sdev);
-	void (*remove)(struct scmi_device *sdev);
 	const struct scmi_device_id *id_table;
 
-	struct driver driver;
+	struct device_driver driver;
 };
 
 #define to_scmi_driver(d) container_of(d, struct scmi_driver, driver)
@@ -649,6 +684,5 @@ scmi_driver_register(struct scmi_driver *driver)
 
 struct scmi_protocol;
 int scmi_protocol_register(const struct scmi_protocol *proto);
-void scmi_protocol_unregister(const struct scmi_protocol *proto);
 
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.39.2



