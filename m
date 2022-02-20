Delivery-date: Sun, 20 Feb 2022 13:49:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLles-004wvS-4b
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLleo-0001Ps-TR
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVC6+dkquzI1rKW9hr+Wy1RayVa2hzAezm2PEOcCBl4=; b=VmzNque95A2NhP
	wSxODDXT4EHb7ShyU0lpQwrymKjcKwdiABrBXBb+rycCoXWWX1qKrElxj5v16Q5QyBdV+23LMnQAR
	/N/LmGgEFmogK3RjyggbwycQRv8zmzYHJ9EqQas4u0iBmCCrUaNb/t7zYfU6xx7eaLBbDZRxAgTTz
	Wmi1Qk1kDHjNV+7ySn6IXcW+kVVrDSEQpokpM48tl9GES2SJhE7BAHRL3nV6bbxOkPHPh++wXWYgN
	SJ9rTBbBBJHKbVQd2kP/NrwAA/h2YUXUhsZLTGYhIc2OOAnhm3izBEAe5R4WaAs3KJ63gYnFkCL9k
	NEJrSLBjGlxKAc8fmPtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldP-001IDy-R9; Sun, 20 Feb 2022 12:48:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I17-LL
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a6-IJ; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoPu-9O; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:25 +0100
Message-Id: <20220220124736.3052502-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044747_063621_DE1656B2 
X-CRM114-Status: GOOD (  24.70  )
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
Subject: [PATCH 13/24] reset: add SCMI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import the Linux v5.13 state of the SCMI reset protocol driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/common.h |   1 +
 drivers/firmware/arm_scmi/driver.c |   2 +
 drivers/firmware/arm_scmi/reset.c  | 229 +++++++++++++++++++++++++++++
 drivers/reset/Kconfig              |  11 ++
 drivers/reset/Makefile             |   1 +
 drivers/reset/reset-scmi.c         | 130 ++++++++++++++++
 7 files changed, 375 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_scmi/reset.c
 create mode 100644 drivers/reset/reset-scmi.c

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 8bb25484b9b2..510c0372a096 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -3,7 +3,7 @@ scmi-bus-y = bus.o
 scmi-driver-y = driver.o
 scmi-transport-y = shmem.o
 scmi-transport-$(CONFIG_ARM_SMCCC) += smc.o
-scmi-protocols-y = base.o
+scmi-protocols-y = base.o reset.o
 
 scmi-module-objs := $(scmi-bus-y) $(scmi-driver-y) $(scmi-protocols-y) \
 		    $(scmi-transport-y)
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 9e48c0e7747d..f1f6cdae5af2 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -232,6 +232,7 @@ void __exit scmi_bus_exit(void);
 #define DECLARE_SCMI_REGISTER(func)		\
 	int __init scmi_##func##_register(void);
 DECLARE_SCMI_REGISTER(base);
+DECLARE_SCMI_REGISTER(reset);
 
 #define DEFINE_SCMI_PROTOCOL_REGISTER(name, proto)	\
 static const struct scmi_protocol *__this_proto = &(proto);	\
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index c9819e7c2aa3..d862e4de8afb 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1259,6 +1259,8 @@ static int __init scmi_bus_driver_init(void)
 
 	scmi_base_register();
 
+	scmi_reset_register();
+
 	return 0;
 }
 pure_initcall(scmi_bus_driver_init);
diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
new file mode 100644
index 000000000000..94baab99e1e4
--- /dev/null
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Reset Protocol
+ *
+ * Copyright (C) 2019-2021 ARM Ltd.
+ */
+
+#define pr_fmt(fmt) "SCMI RESET - " fmt
+
+#include <common.h>
+#include <linux/scmi_protocol.h>
+
+#include "common.h"
+
+enum scmi_reset_protocol_cmd {
+	RESET_DOMAIN_ATTRIBUTES = 0x3,
+	RESET = 0x4,
+	RESET_NOTIFY = 0x5,
+};
+
+#define NUM_RESET_DOMAIN_MASK	0xffff
+
+struct scmi_msg_resp_reset_domain_attributes {
+	__le32 attributes;
+#define SUPPORTS_ASYNC_RESET(x)		((x) & BIT(31))
+#define SUPPORTS_NOTIFY_RESET(x)	((x) & BIT(30))
+	__le32 latency;
+	    u8 name[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_msg_reset_domain_reset {
+	__le32 domain_id;
+	__le32 flags;
+#define AUTONOMOUS_RESET	BIT(0)
+#define EXPLICIT_RESET_ASSERT	BIT(1)
+#define ASYNCHRONOUS_RESET	BIT(2)
+	__le32 reset_state;
+#define ARCH_COLD_RESET		0
+};
+
+struct reset_dom_info {
+	bool async_reset;
+	u32 latency_us;
+	char name[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_reset_info {
+	u32 version;
+	int num_domains;
+	struct reset_dom_info *dom_info;
+};
+
+static int scmi_reset_attributes_get(const struct scmi_protocol_handle *ph,
+				     struct scmi_reset_info *pi)
+{
+	int ret;
+	struct scmi_xfer *t;
+	u32 attr;
+
+	ret = ph->xops->xfer_get_init(ph, PROTOCOL_ATTRIBUTES,
+				      0, sizeof(attr), &t);
+	if (ret)
+		return ret;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		attr = get_unaligned_le32(t->rx.buf);
+		pi->num_domains = attr & NUM_RESET_DOMAIN_MASK;
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int
+scmi_reset_domain_attributes_get(const struct scmi_protocol_handle *ph,
+				 u32 domain, struct reset_dom_info *dom_info)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_reset_domain_attributes *attr;
+
+	ret = ph->xops->xfer_get_init(ph, RESET_DOMAIN_ATTRIBUTES,
+				      sizeof(domain), sizeof(*attr), &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(domain, t->tx.buf);
+	attr = t->rx.buf;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		u32 attributes = le32_to_cpu(attr->attributes);
+
+		dom_info->async_reset = SUPPORTS_ASYNC_RESET(attributes);
+		dom_info->latency_us = le32_to_cpu(attr->latency);
+		if (dom_info->latency_us == U32_MAX)
+			dom_info->latency_us = 0;
+		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
+	}
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_reset_num_domains_get(const struct scmi_protocol_handle *ph)
+{
+	struct scmi_reset_info *pi = ph->get_priv(ph);
+
+	return pi->num_domains;
+}
+
+static char *scmi_reset_name_get(const struct scmi_protocol_handle *ph,
+				 u32 domain)
+{
+	struct scmi_reset_info *pi = ph->get_priv(ph);
+
+	struct reset_dom_info *dom = pi->dom_info + domain;
+
+	return dom->name;
+}
+
+static int scmi_reset_latency_get(const struct scmi_protocol_handle *ph,
+				  u32 domain)
+{
+	struct scmi_reset_info *pi = ph->get_priv(ph);
+	struct reset_dom_info *dom = pi->dom_info + domain;
+
+	return dom->latency_us;
+}
+
+static int scmi_domain_reset(const struct scmi_protocol_handle *ph, u32 domain,
+			     u32 flags, u32 state)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_reset_domain_reset *dom;
+	struct scmi_reset_info *pi = ph->get_priv(ph);
+	struct reset_dom_info *rdom = pi->dom_info + domain;
+
+	if (rdom->async_reset)
+		flags |= ASYNCHRONOUS_RESET;
+
+	ret = ph->xops->xfer_get_init(ph, RESET, sizeof(*dom), 0, &t);
+	if (ret)
+		return ret;
+
+	dom = t->tx.buf;
+	dom->domain_id = cpu_to_le32(domain);
+	dom->flags = cpu_to_le32(flags);
+	dom->reset_state = cpu_to_le32(state);
+
+	if (rdom->async_reset)
+		ret = ph->xops->do_xfer_with_response(ph, t);
+	else
+		ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_reset_domain_reset(const struct scmi_protocol_handle *ph,
+				   u32 domain)
+{
+	return scmi_domain_reset(ph, domain, AUTONOMOUS_RESET,
+				 ARCH_COLD_RESET);
+}
+
+static int
+scmi_reset_domain_assert(const struct scmi_protocol_handle *ph, u32 domain)
+{
+	return scmi_domain_reset(ph, domain, EXPLICIT_RESET_ASSERT,
+				 ARCH_COLD_RESET);
+}
+
+static int
+scmi_reset_domain_deassert(const struct scmi_protocol_handle *ph, u32 domain)
+{
+	return scmi_domain_reset(ph, domain, 0, ARCH_COLD_RESET);
+}
+
+static const struct scmi_reset_proto_ops reset_proto_ops = {
+	.num_domains_get = scmi_reset_num_domains_get,
+	.name_get = scmi_reset_name_get,
+	.latency_get = scmi_reset_latency_get,
+	.reset = scmi_reset_domain_reset,
+	.assert = scmi_reset_domain_assert,
+	.deassert = scmi_reset_domain_deassert,
+};
+
+static int scmi_reset_protocol_init(const struct scmi_protocol_handle *ph)
+{
+	int domain;
+	u32 version;
+	struct scmi_reset_info *pinfo;
+
+	ph->xops->version_get(ph, &version);
+
+	dev_dbg(ph->dev, "Reset Version %d.%d\n",
+		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
+
+	pinfo = kzalloc(sizeof(*pinfo), GFP_KERNEL);
+	if (!pinfo)
+		return -ENOMEM;
+
+	scmi_reset_attributes_get(ph, pinfo);
+
+	pinfo->dom_info = kcalloc(pinfo->num_domains,
+				       sizeof(*pinfo->dom_info), GFP_KERNEL);
+	if (!pinfo->dom_info)
+		return -ENOMEM;
+
+	for (domain = 0; domain < pinfo->num_domains; domain++) {
+		struct reset_dom_info *dom = pinfo->dom_info + domain;
+
+		scmi_reset_domain_attributes_get(ph, domain, dom);
+	}
+
+	pinfo->version = version;
+	return ph->set_priv(ph, pinfo);
+}
+
+static const struct scmi_protocol scmi_reset = {
+	.id = SCMI_PROTOCOL_RESET,
+	.instance_init = &scmi_reset_protocol_init,
+	.ops = &reset_proto_ops,
+};
+
+DEFINE_SCMI_PROTOCOL_REGISTER(reset, scmi_reset)
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 21a6e1a50d8f..913b309eac3a 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -45,4 +45,15 @@ config RESET_STARFIVE
 	help
 	  This enables the reset controller driver for the StarFive JH7100.
 
+config RESET_SCMI
+	tristate "Reset driver controlled via ARM SCMI interface"
+	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
+	default ARM_SCMI_PROTOCOL
+	help
+	  This driver provides support for reset signal/domains that are
+	  controlled by firmware that implements the SCMI interface.
+
+	  This driver uses SCMI Message Protocol to interact with the
+	  firmware controlling all the reset signals.
+
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 6d0cd51f86ce..b1668433d76a 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
 obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_STARFIVE) += reset-starfive-vic.o
+obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
new file mode 100644
index 000000000000..c33bbc5c8afe
--- /dev/null
+++ b/drivers/reset/reset-scmi.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ARM System Control and Management Interface (ARM SCMI) reset driver
+ *
+ * Copyright (C) 2019-2021 ARM Ltd.
+ */
+
+#include <common.h>
+#include <of.h>
+#include <driver.h>
+#include <linux/reset-controller.h>
+#include <linux/scmi_protocol.h>
+
+static const struct scmi_reset_proto_ops *reset_ops;
+
+/**
+ * struct scmi_reset_data - reset controller information structure
+ * @rcdev: reset controller entity
+ * @ph: ARM SCMI protocol handle used for communication with system controller
+ */
+struct scmi_reset_data {
+	struct reset_controller_dev rcdev;
+	const struct scmi_protocol_handle *ph;
+};
+
+#define to_scmi_reset_data(p)	container_of((p), struct scmi_reset_data, rcdev)
+#define to_scmi_handle(p)	(to_scmi_reset_data(p)->ph)
+
+/**
+ * scmi_reset_assert() - assert device reset
+ * @rcdev: reset controller entity
+ * @id: ID of the reset to be asserted
+ *
+ * This function implements the reset driver op to assert a device's reset
+ * using the ARM SCMI protocol.
+ *
+ * Return: 0 for successful request, else a corresponding error value
+ */
+static int
+scmi_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	const struct scmi_protocol_handle *ph = to_scmi_handle(rcdev);
+
+	return reset_ops->assert(ph, id);
+}
+
+/**
+ * scmi_reset_deassert() - deassert device reset
+ * @rcdev: reset controller entity
+ * @id: ID of the reset to be deasserted
+ *
+ * This function implements the reset driver op to deassert a device's reset
+ * using the ARM SCMI protocol.
+ *
+ * Return: 0 for successful request, else a corresponding error value
+ */
+static int
+scmi_reset_deassert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	const struct scmi_protocol_handle *ph = to_scmi_handle(rcdev);
+
+	return reset_ops->deassert(ph, id);
+}
+
+/**
+ * scmi_reset_reset() - reset the device
+ * @rcdev: reset controller entity
+ * @id: ID of the reset signal to be reset(assert + deassert)
+ *
+ * This function implements the reset driver op to trigger a device's
+ * reset signal using the ARM SCMI protocol.
+ *
+ * Return: 0 for successful request, else a corresponding error value
+ */
+static int
+scmi_reset_reset(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	const struct scmi_protocol_handle *ph = to_scmi_handle(rcdev);
+
+	return reset_ops->reset(ph, id);
+}
+
+static const struct reset_control_ops scmi_reset_ops = {
+	.assert		= scmi_reset_assert,
+	.deassert	= scmi_reset_deassert,
+	.reset		= scmi_reset_reset,
+};
+
+static int scmi_reset_probe(struct scmi_device *sdev)
+{
+	struct scmi_reset_data *data;
+	struct device_d *dev = &sdev->dev;
+	struct device_node *np = dev->device_node;
+	const struct scmi_handle *handle = sdev->handle;
+	struct scmi_protocol_handle *ph;
+
+	if (!handle)
+		return -ENODEV;
+
+	reset_ops = handle->protocol_get(sdev, SCMI_PROTOCOL_RESET, &ph);
+	if (IS_ERR(reset_ops))
+		return PTR_ERR(reset_ops);
+
+	data = kzalloc(sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->rcdev.ops = &scmi_reset_ops;
+	data->rcdev.of_node = np;
+	data->rcdev.nr_resets = reset_ops->num_domains_get(ph);
+	data->ph = ph;
+
+	return reset_controller_register(&data->rcdev);
+}
+
+static const struct scmi_device_id scmi_id_table[] = {
+	{ SCMI_PROTOCOL_RESET, "reset" },
+	{ },
+};
+
+static struct scmi_driver scmi_reset_driver = {
+	.name = "scmi-reset",
+	.probe = scmi_reset_probe,
+	.id_table = scmi_id_table,
+};
+core_scmi_driver(scmi_reset_driver);
+
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI reset controller driver");
+MODULE_LICENSE("GPL v2");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

