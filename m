Delivery-date: Sun, 20 Feb 2022 13:51:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgT-004x3T-Cp
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:51:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgL-0002Kk-FC
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:51:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQ4PAFga1QOQ2Wdu9IzVzLZ4HPnXSg/4lTRnkPFmrYQ=; b=NbNXqvQNQchTUj
	/Oo6gxazpRdeXCDZlwXVq7vXhOD1H1aAPRmgp3Ug5FMuXkymKS3zxtXYS1Z3dC7bOdaQfV8dYXu8U
	tK/Geg9vjyJRETDKM6brlzkcIqScPkxa7LuH4VEHm74dNTguGoRR4qScTn7B6b35OyLKj6wXR3CNN
	iLAxykmLfyYVmsoiFE4NHeVmpzqn8FEte/Q74xSusx5Y854GmNiZarZw62jS7d8yRQnfVuVDjUzZf
	RhXYvMMD3Fb38DOui+ipvuCy3t1y8WzepIzSV20P3nCnqQUhzy2Nc/lznxxC9vRToL1njeO7uj0D9
	94CqCalrj+lbkm9X439A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLle2-001IhC-AA; Sun, 20 Feb 2022 12:48:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I16-JF
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a5-GB; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoPs-6E; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:24 +0100
Message-Id: <20220220124736.3052502-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044747_389884_37447556 
X-CRM114-Status: GOOD (  30.19  )
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
Subject: [PATCH 12/24] firmware: import Linux v5.13 SCMI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ARM System Control and Management Interface (SCMI) is a standard way
to offload handling of system resources like clocks, resets and power
domain handling to the firmware. This should replace Silicon Provider
specific conduits for new SoCs. Systems where this is already relevant:

  - STM32MP1: For trusted boot, the clock and reset controller are
    managed from secure world. This is not yet supported by barebox and
    must be disabled in TF-A
  - RK3568: At least the CPU clock is only controllable via SCMI
  - i.MX8X: Communication with the SCU occurs via SCMI

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c              |   28 +
 drivers/firmware/Kconfig           |   10 +
 drivers/firmware/Makefile          |    1 +
 drivers/firmware/arm_scmi/Makefile |   10 +
 drivers/firmware/arm_scmi/base.c   |  281 ++++++
 drivers/firmware/arm_scmi/bus.c    |  226 +++++
 drivers/firmware/arm_scmi/common.h |  330 +++++++
 drivers/firmware/arm_scmi/driver.c | 1275 ++++++++++++++++++++++++++++
 drivers/firmware/arm_scmi/shmem.c  |   89 ++
 drivers/firmware/arm_scmi/smc.c    |  137 +++
 include/driver.h                   |    3 +
 include/linux/idr.h                |   79 ++
 include/linux/processor.h          |   29 +
 include/linux/scmi_protocol.h      |  654 ++++++++++++++
 include/linux/slab.h               |    3 +
 15 files changed, 3155 insertions(+)
 create mode 100644 drivers/firmware/arm_scmi/Makefile
 create mode 100644 drivers/firmware/arm_scmi/base.c
 create mode 100644 drivers/firmware/arm_scmi/bus.c
 create mode 100644 drivers/firmware/arm_scmi/common.h
 create mode 100644 drivers/firmware/arm_scmi/driver.c
 create mode 100644 drivers/firmware/arm_scmi/shmem.c
 create mode 100644 drivers/firmware/arm_scmi/smc.c
 create mode 100644 include/linux/idr.h
 create mode 100644 include/linux/processor.h
 create mode 100644 include/linux/scmi_protocol.h

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2347b5c71fac..303ca061ceb6 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -619,3 +619,31 @@ int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
 	return err;
 }
 EXPORT_SYMBOL_GPL(dev_err_probe);
+
+/*
+ * device_find_child - device iterator for locating a particular device.
+ * @parent: parent struct device_d
+ * @match: Callback function to check device
+ * @data: Data to pass to match function
+ *
+ * The callback should return 0 if the device doesn't match and non-zero
+ * if it does.  If the callback returns non-zero and a reference to the
+ * current device can be obtained, this function will return to the caller
+ * and not iterate over any more devices.
+ */
+struct device_d *device_find_child(struct device_d *parent, void *data,
+				 int (*match)(struct device_d *dev, void *data))
+{
+	struct device_d *child;
+
+	if (!parent)
+		return NULL;
+
+	list_for_each_entry(child, &parent->children, sibling) {
+		if (match(child, data))
+			return child;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(device_find_child);
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index ffba7146f742..d3cca41a7e8f 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -22,4 +22,14 @@ config FIRMWARE_ZYNQMP_FPGA
 	select FIRMWARE
 	help
 	  Load a bitstream to the PL of Zynq Ultrascale+
+
+config ARM_SCMI_PROTOCOL
+	tristate "ARM System Control and Management Interface (SCMI) Message Protocol"
+	depends on ARM || COMPILE_TEST
+	depends on ARM_SMCCC
+	help
+	  ARM System Control and Management Interface (SCMI) protocol is a
+	  set of operating system-independent software interfaces that are
+	  used in system management.
+
 endmenu
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index d16469cf72ec..26d6f3275ae1 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
+obj-y += arm_scmi/
diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
new file mode 100644
index 000000000000..8bb25484b9b2
--- /dev/null
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
+scmi-bus-y = bus.o
+scmi-driver-y = driver.o
+scmi-transport-y = shmem.o
+scmi-transport-$(CONFIG_ARM_SMCCC) += smc.o
+scmi-protocols-y = base.o
+
+scmi-module-objs := $(scmi-bus-y) $(scmi-driver-y) $(scmi-protocols-y) \
+		    $(scmi-transport-y)
+obj-$(CONFIG_ARM_SCMI_PROTOCOL) += scmi-module.o
diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
new file mode 100644
index 000000000000..d4af40c40cf1
--- /dev/null
+++ b/drivers/firmware/arm_scmi/base.c
@@ -0,0 +1,281 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Base Protocol
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+
+#define pr_fmt(fmt) "SCMI BASE - " fmt
+
+#include <common.h>
+#include <linux/scmi_protocol.h>
+
+#include "common.h"
+
+#define SCMI_BASE_NUM_SOURCES		1
+#define SCMI_BASE_MAX_CMD_ERR_COUNT	1024
+
+struct scmi_msg_resp_base_attributes {
+	u8 num_protocols;
+	u8 num_agents;
+	__le16 reserved;
+};
+
+enum scmi_base_protocol_cmd {
+	BASE_DISCOVER_VENDOR = 0x3,
+	BASE_DISCOVER_SUB_VENDOR = 0x4,
+	BASE_DISCOVER_IMPLEMENT_VERSION = 0x5,
+	BASE_DISCOVER_LIST_PROTOCOLS = 0x6,
+	BASE_DISCOVER_AGENT = 0x7,
+	BASE_NOTIFY_ERRORS = 0x8,
+	BASE_SET_DEVICE_PERMISSIONS = 0x9,
+	BASE_SET_PROTOCOL_PERMISSIONS = 0xa,
+	BASE_RESET_AGENT_CONFIGURATION = 0xb,
+};
+
+/**
+ * scmi_base_attributes_get() - gets the implementation details
+ *	that are associated with the base protocol.
+ *
+ * @ph: SCMI protocol handle
+ *
+ * Return: 0 on success, else appropriate SCMI error.
+ */
+static int scmi_base_attributes_get(const struct scmi_protocol_handle *ph)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct scmi_msg_resp_base_attributes *attr_info;
+	struct scmi_revision_info *rev = ph->get_priv(ph);
+
+	ret = ph->xops->xfer_get_init(ph, PROTOCOL_ATTRIBUTES,
+				      0, sizeof(*attr_info), &t);
+	if (ret)
+		return ret;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		attr_info = t->rx.buf;
+		rev->num_protocols = attr_info->num_protocols;
+		rev->num_agents = attr_info->num_agents;
+	}
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+/**
+ * scmi_base_vendor_id_get() - gets vendor/subvendor identifier ASCII string.
+ *
+ * @ph: SCMI protocol handle
+ * @sub_vendor: specify true if sub-vendor ID is needed
+ *
+ * Return: 0 on success, else appropriate SCMI error.
+ */
+static int
+scmi_base_vendor_id_get(const struct scmi_protocol_handle *ph, bool sub_vendor)
+{
+	u8 cmd;
+	int ret, size;
+	char *vendor_id;
+	struct scmi_xfer *t;
+	struct scmi_revision_info *rev = ph->get_priv(ph);
+
+
+	if (sub_vendor) {
+		cmd = BASE_DISCOVER_SUB_VENDOR;
+		vendor_id = rev->sub_vendor_id;
+		size = ARRAY_SIZE(rev->sub_vendor_id);
+	} else {
+		cmd = BASE_DISCOVER_VENDOR;
+		vendor_id = rev->vendor_id;
+		size = ARRAY_SIZE(rev->vendor_id);
+	}
+
+	ret = ph->xops->xfer_get_init(ph, cmd, 0, size, &t);
+	if (ret)
+		return ret;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		memcpy(vendor_id, t->rx.buf, size);
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+/**
+ * scmi_base_implementation_version_get() - gets a vendor-specific
+ *	implementation 32-bit version. The format of the version number is
+ *	vendor-specific
+ *
+ * @ph: SCMI protocol handle
+ *
+ * Return: 0 on success, else appropriate SCMI error.
+ */
+static int
+scmi_base_implementation_version_get(const struct scmi_protocol_handle *ph)
+{
+	int ret;
+	__le32 *impl_ver;
+	struct scmi_xfer *t;
+	struct scmi_revision_info *rev = ph->get_priv(ph);
+
+	ret = ph->xops->xfer_get_init(ph, BASE_DISCOVER_IMPLEMENT_VERSION,
+				      0, sizeof(*impl_ver), &t);
+	if (ret)
+		return ret;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret) {
+		impl_ver = t->rx.buf;
+		rev->impl_ver = le32_to_cpu(*impl_ver);
+	}
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+/**
+ * scmi_base_implementation_list_get() - gets the list of protocols it is
+ *	OSPM is allowed to access
+ *
+ * @ph: SCMI protocol handle
+ * @protocols_imp: pointer to hold the list of protocol identifiers
+ *
+ * Return: 0 on success, else appropriate SCMI error.
+ */
+static int
+scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
+				  u8 *protocols_imp)
+{
+	u8 *list;
+	int ret, loop;
+	struct scmi_xfer *t;
+	__le32 *num_skip, *num_ret;
+	u32 tot_num_ret = 0, loop_num_ret;
+	struct device_d *dev = ph->dev;
+
+	ret = ph->xops->xfer_get_init(ph, BASE_DISCOVER_LIST_PROTOCOLS,
+				      sizeof(*num_skip), 0, &t);
+	if (ret)
+		return ret;
+
+	num_skip = t->tx.buf;
+	num_ret = t->rx.buf;
+	list = t->rx.buf + sizeof(*num_ret);
+
+	do {
+		/* Set the number of protocols to be skipped/already read */
+		*num_skip = cpu_to_le32(tot_num_ret);
+
+		ret = ph->xops->do_xfer(ph, t);
+		if (ret)
+			break;
+
+		loop_num_ret = le32_to_cpu(*num_ret);
+		if (tot_num_ret + loop_num_ret > MAX_PROTOCOLS_IMP) {
+			dev_err(dev, "No. of Protocol > MAX_PROTOCOLS_IMP");
+			break;
+		}
+
+		for (loop = 0; loop < loop_num_ret; loop++)
+			protocols_imp[tot_num_ret + loop] = *(list + loop);
+
+		tot_num_ret += loop_num_ret;
+
+		ph->xops->reset_rx_to_maxsz(ph, t);
+	} while (loop_num_ret);
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+/**
+ * scmi_base_discover_agent_get() - discover the name of an agent
+ *
+ * @ph: SCMI protocol handle
+ * @id: Agent identifier
+ * @name: Agent identifier ASCII string
+ *
+ * An agent id of 0 is reserved to identify the platform itself.
+ * Generally operating system is represented as "OSPM"
+ *
+ * Return: 0 on success, else appropriate SCMI error.
+ */
+static int scmi_base_discover_agent_get(const struct scmi_protocol_handle *ph,
+					int id, char *name)
+{
+	int ret;
+	struct scmi_xfer *t;
+
+	ret = ph->xops->xfer_get_init(ph, BASE_DISCOVER_AGENT,
+				      sizeof(__le32), SCMI_MAX_STR_SIZE, &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(id, t->tx.buf);
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		strlcpy(name, t->rx.buf, SCMI_MAX_STR_SIZE);
+
+	ph->xops->xfer_put(ph, t);
+
+	return ret;
+}
+
+static int scmi_base_protocol_init(const struct scmi_protocol_handle *ph)
+{
+	int id, ret;
+	u8 *prot_imp;
+	u32 version;
+	char name[SCMI_MAX_STR_SIZE];
+	struct device_d *dev = ph->dev;
+	struct scmi_revision_info *rev = scmi_revision_area_get(ph);
+
+	ret = ph->xops->version_get(ph, &version);
+	if (ret)
+		return ret;
+
+	prot_imp = kcalloc(MAX_PROTOCOLS_IMP, sizeof(u8), GFP_KERNEL);
+	if (!prot_imp)
+		return -ENOMEM;
+
+	rev->major_ver = PROTOCOL_REV_MAJOR(version),
+	rev->minor_ver = PROTOCOL_REV_MINOR(version);
+	ph->set_priv(ph, rev);
+
+	scmi_base_attributes_get(ph);
+	scmi_base_vendor_id_get(ph, false);
+	scmi_base_vendor_id_get(ph, true);
+	scmi_base_implementation_version_get(ph);
+	scmi_base_implementation_list_get(ph, prot_imp);
+
+	scmi_setup_protocol_implemented(ph, prot_imp);
+
+	dev_info(dev, "SCMI Protocol v%d.%d '%s:%s' Firmware version 0x%x\n",
+		 rev->major_ver, rev->minor_ver, rev->vendor_id,
+		 rev->sub_vendor_id, rev->impl_ver);
+	dev_dbg(dev, "Found %d protocol(s) %d agent(s)\n", rev->num_protocols,
+		rev->num_agents);
+
+	for (id = 0; id < rev->num_agents; id++) {
+		scmi_base_discover_agent_get(ph, id, name);
+		dev_dbg(dev, "Agent %d: %s\n", id, name);
+	}
+
+	return 0;
+}
+
+static const struct scmi_protocol scmi_base = {
+	.id = SCMI_PROTOCOL_BASE,
+	.instance_init = &scmi_base_protocol_init,
+	.ops = NULL,
+};
+
+DEFINE_SCMI_PROTOCOL_REGISTER(base, scmi_base)
diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bus.c
new file mode 100644
index 000000000000..e8297be4d22e
--- /dev/null
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Message Protocol bus layer
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <linux/types.h>
+#include <linux/slab.h>
+#include <linux/idr.h>
+#include <driver.h>
+
+#include "common.h"
+
+static DEFINE_IDR(scmi_protocols);
+
+static const struct scmi_device_id *
+scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
+{
+	const struct scmi_device_id *id = scmi_drv->id_table;
+
+	if (!id)
+		return NULL;
+
+	for (; id->protocol_id; id++)
+		if (id->protocol_id == scmi_dev->protocol_id) {
+			if (!id->name)
+				return id;
+			else if (!strcmp(id->name, scmi_dev->name))
+				return id;
+		}
+
+	return NULL;
+}
+
+static int scmi_dev_match(struct device_d *dev, struct driver_d *drv)
+{
+	struct scmi_driver *scmi_drv = to_scmi_driver(drv);
+	struct scmi_device *scmi_dev = to_scmi_dev(dev);
+	const struct scmi_device_id *id;
+
+	id = scmi_dev_match_id(scmi_dev, scmi_drv);
+	if (id)
+		return 0;
+
+	return -1;
+}
+
+static int scmi_match_by_id_table(struct device_d *dev, void *data)
+{
+	struct scmi_device *sdev = to_scmi_dev(dev);
+	struct scmi_device_id *id_table = data;
+
+	return sdev->protocol_id == id_table->protocol_id &&
+		!strcmp(sdev->name, id_table->name);
+}
+
+struct scmi_device *scmi_child_dev_find(struct device_d *parent,
+					int prot_id, const char *name)
+{
+	struct scmi_device_id id_table;
+	struct device_d *dev;
+
+	id_table.protocol_id = prot_id;
+	id_table.name = name;
+
+	dev = device_find_child(parent, &id_table, scmi_match_by_id_table);
+	if (!dev)
+		return NULL;
+
+	return to_scmi_dev(dev);
+}
+
+const struct scmi_protocol *scmi_protocol_get(int protocol_id)
+{
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
+static int scmi_dev_probe(struct device_d *dev)
+{
+	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
+	struct scmi_device *scmi_dev = to_scmi_dev(dev);
+	const struct scmi_device_id *id;
+
+	id = scmi_dev_match_id(scmi_dev, scmi_drv);
+	if (!id)
+		return -ENODEV;
+
+	if (!scmi_dev->handle)
+		return -EPROBE_DEFER;
+
+	return scmi_drv->probe(scmi_dev);
+}
+
+static void scmi_dev_remove(struct device_d *dev)
+{
+	struct scmi_driver *scmi_drv = to_scmi_driver(dev->driver);
+	struct scmi_device *scmi_dev = to_scmi_dev(dev);
+
+	if (scmi_drv->remove)
+		scmi_drv->remove(scmi_dev);
+}
+
+static struct bus_type scmi_bus_type = {
+	.name =	"scmi_protocol",
+	.match = scmi_dev_match,
+	.probe = scmi_dev_probe,
+	.remove = scmi_dev_remove,
+};
+
+int scmi_driver_register(struct scmi_driver *driver)
+{
+	int retval;
+
+	retval = scmi_protocol_device_request(driver->id_table);
+	if (retval)
+		return retval;
+
+	driver->driver.bus = &scmi_bus_type;
+	driver->driver.name = driver->name;
+
+	retval = register_driver(&driver->driver);
+	if (!retval)
+		pr_debug("registered new scmi driver %s\n", driver->name);
+
+	return retval;
+}
+EXPORT_SYMBOL_GPL(scmi_driver_register);
+
+struct scmi_device *
+scmi_device_alloc(struct device_node *np, struct device_d *parent, int protocol,
+		   const char *name)
+{
+	struct scmi_device *scmi_dev;
+
+	scmi_dev = kzalloc(sizeof(*scmi_dev), GFP_KERNEL);
+	if (!scmi_dev)
+		return NULL;
+
+	scmi_dev->name = kstrdup_const(name ?: "unknown", GFP_KERNEL);
+	if (!scmi_dev->name) {
+		kfree(scmi_dev);
+		return NULL;
+	}
+
+	scmi_dev->dev.id = DEVICE_ID_DYNAMIC;
+	scmi_dev->protocol_id = protocol;
+	scmi_dev->dev.parent = parent;
+	scmi_dev->dev.device_node = np;
+	scmi_dev->dev.bus = &scmi_bus_type;
+	dev_set_name(&scmi_dev->dev, "scmi_dev");
+
+	return scmi_dev;
+}
+
+void scmi_device_destroy(struct scmi_device *scmi_dev)
+{
+	kfree_const(scmi_dev->name);
+	unregister_device(&scmi_dev->dev);
+}
+
+void scmi_set_handle(struct scmi_device *scmi_dev)
+{
+	scmi_dev->handle = scmi_handle_get(&scmi_dev->dev);
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
+	ret = idr_alloc_one(&scmi_protocols, (void *)proto, proto->id);
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
+void scmi_protocol_unregister(const struct scmi_protocol *proto)
+{
+	idr_remove(&scmi_protocols, proto->id);
+
+	pr_debug("Unregistered SCMI Protocol 0x%x\n", proto->id);
+
+	return;
+}
+EXPORT_SYMBOL_GPL(scmi_protocol_unregister);
+
+int __init scmi_bus_init(void)
+{
+	int retval;
+
+	retval = bus_register(&scmi_bus_type);
+	if (retval)
+		pr_err("scmi protocol bus register failed (%d)\n", retval);
+
+	return retval;
+}
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
new file mode 100644
index 000000000000..9e48c0e7747d
--- /dev/null
+++ b/drivers/firmware/arm_scmi/common.h
@@ -0,0 +1,330 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * System Control and Management Interface (SCMI) Message Protocol
+ * driver common header file containing some definitions, structures
+ * and function prototypes used in all the different SCMI protocols.
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+#ifndef _SCMI_COMMON_H
+#define _SCMI_COMMON_H
+
+#include <linux/bitfield.h>
+#include <driver.h>
+#include <errno.h>
+#include <linux/kernel.h>
+#include <linux/scmi_protocol.h>
+#include <linux/types.h>
+#include <linux/idr.h>
+
+#include <asm/unaligned.h>
+
+#define PROTOCOL_REV_MINOR_MASK	GENMASK(15, 0)
+#define PROTOCOL_REV_MAJOR_MASK	GENMASK(31, 16)
+#define PROTOCOL_REV_MAJOR(x)	(u16)(FIELD_GET(PROTOCOL_REV_MAJOR_MASK, (x)))
+#define PROTOCOL_REV_MINOR(x)	(u16)(FIELD_GET(PROTOCOL_REV_MINOR_MASK, (x)))
+#define MAX_PROTOCOLS_IMP	16
+#define MAX_OPPS		16
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
+#define MSG_ID_MASK		GENMASK(7, 0)
+#define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
+#define MSG_TYPE_MASK		GENMASK(9, 8)
+#define MSG_XTRACT_TYPE(hdr)	FIELD_GET(MSG_TYPE_MASK, (hdr))
+#define MSG_TYPE_COMMAND	0
+#define MSG_TYPE_DELAYED_RESP	2
+#define MSG_TYPE_NOTIFICATION	3
+#define MSG_PROTOCOL_ID_MASK	GENMASK(17, 10)
+#define MSG_XTRACT_PROT_ID(hdr)	FIELD_GET(MSG_PROTOCOL_ID_MASK, (hdr))
+#define MSG_TOKEN_ID_MASK	GENMASK(27, 18)
+#define MSG_XTRACT_TOKEN(hdr)	FIELD_GET(MSG_TOKEN_ID_MASK, (hdr))
+#define MSG_TOKEN_MAX		(MSG_XTRACT_TOKEN(MSG_TOKEN_ID_MASK) + 1)
+
+/**
+ * struct scmi_msg_hdr - Message(Tx/Rx) header
+ *
+ * @id: The identifier of the message being sent
+ * @protocol_id: The identifier of the protocol used to send @id message
+ * @seq: The token to identify the message. When a message returns, the
+ *	platform returns the whole message header unmodified including the
+ *	token
+ * @status: Status of the transfer once it's complete
+ * @poll_completion: Indicate if the transfer needs to be polled for
+ *	completion or interrupt mode is used
+ */
+struct scmi_msg_hdr {
+	u8 id;
+	u8 protocol_id;
+	u16 seq;
+	u32 status;
+	bool poll_completion;
+};
+
+/**
+ * pack_scmi_header() - packs and returns 32-bit header
+ *
+ * @hdr: pointer to header containing all the information on message id,
+ *	protocol id and sequence id.
+ *
+ * Return: 32-bit packed message header to be sent to the platform.
+ */
+static inline u32 pack_scmi_header(struct scmi_msg_hdr *hdr)
+{
+	return FIELD_PREP(MSG_ID_MASK, hdr->id) |
+		FIELD_PREP(MSG_TOKEN_ID_MASK, hdr->seq) |
+		FIELD_PREP(MSG_PROTOCOL_ID_MASK, hdr->protocol_id);
+}
+
+/**
+ * unpack_scmi_header() - unpacks and records message and protocol id
+ *
+ * @msg_hdr: 32-bit packed message header sent from the platform
+ * @hdr: pointer to header to fetch message and protocol id.
+ */
+static inline void unpack_scmi_header(u32 msg_hdr, struct scmi_msg_hdr *hdr)
+{
+	hdr->id = MSG_XTRACT_ID(msg_hdr);
+	hdr->protocol_id = MSG_XTRACT_PROT_ID(msg_hdr);
+}
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
+ * struct scmi_xfer - Structure representing a message flow
+ *
+ * @transfer_id: Unique ID for debug & profiling purpose
+ * @hdr: Transmit message header
+ * @tx: Transmit message
+ * @rx: Receive message, the buffer should be pre-allocated to store
+ *	message. If request-ACK protocol is used, we can reuse the same
+ *	buffer for the rx path as we use for the tx path.
+ * @done: command message transmit completion event
+ * @async_done: pointer to delayed response message received event completion
+ */
+struct scmi_xfer {
+	int transfer_id;
+	struct scmi_msg_hdr hdr;
+	struct scmi_msg tx;
+	struct scmi_msg rx;
+	bool done;
+	bool *async_done;
+};
+
+struct scmi_xfer_ops;
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
+	struct device_d *dev;
+	const struct scmi_xfer_ops *xops;
+	int (*set_priv)(const struct scmi_protocol_handle *ph, void *priv);
+	void *(*get_priv)(const struct scmi_protocol_handle *ph);
+};
+
+/**
+ * struct scmi_xfer_ops  - References to the core SCMI xfer operations.
+ * @version_get: Get this version protocol.
+ * @xfer_get_init: Initialize one struct xfer if any xfer slot is free.
+ * @reset_rx_to_maxsz: Reset rx size to max transport size.
+ * @do_xfer: Do the SCMI transfer.
+ * @do_xfer_with_response: Do the SCMI transfer waiting for a response.
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
+	int (*do_xfer_with_response)(const struct scmi_protocol_handle *ph,
+				     struct scmi_xfer *xfer);
+	void (*xfer_put)(const struct scmi_protocol_handle *ph,
+			 struct scmi_xfer *xfer);
+};
+
+struct scmi_revision_info *
+scmi_revision_area_get(const struct scmi_protocol_handle *ph);
+int scmi_handle_put(const struct scmi_handle *handle);
+struct scmi_handle *scmi_handle_get(struct device_d *dev);
+void scmi_set_handle(struct scmi_device *scmi_dev);
+void scmi_setup_protocol_implemented(const struct scmi_protocol_handle *ph,
+				     u8 *prot_imp);
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
+ * @events: An optional reference to the events supported by this protocol.
+ */
+struct scmi_protocol {
+	const u8				id;
+	const scmi_prot_init_ph_fn_t		instance_init;
+	const scmi_prot_init_ph_fn_t		instance_deinit;
+	const void				*ops;
+	const struct scmi_protocol_events	*events;
+};
+
+int __init scmi_bus_init(void);
+void __exit scmi_bus_exit(void);
+
+#define DECLARE_SCMI_REGISTER(func)		\
+	int __init scmi_##func##_register(void);
+DECLARE_SCMI_REGISTER(base);
+
+#define DEFINE_SCMI_PROTOCOL_REGISTER(name, proto)	\
+static const struct scmi_protocol *__this_proto = &(proto);	\
+								\
+int __init scmi_##name##_register(void)				\
+{								\
+	return scmi_protocol_register(__this_proto);		\
+}
+
+const struct scmi_protocol *scmi_protocol_get(int protocol_id);
+
+int scmi_protocol_acquire(const struct scmi_handle *handle, u8 protocol_id);
+void scmi_protocol_release(const struct scmi_handle *handle, u8 protocol_id);
+
+/* SCMI Transport */
+/**
+ * struct scmi_chan_info - Structure representing a SCMI channel information
+ *
+ * @dev: Reference to device in the SCMI hierarchy corresponding to this
+ *	 channel
+ * @handle: Pointer to SCMI entity handle
+ * @transport_info: Transport layer related information
+ */
+struct scmi_chan_info {
+	struct device_d *dev;
+	struct scmi_handle *handle;
+	void *transport_info;
+};
+
+/**
+ * struct scmi_transport_ops - Structure representing a SCMI transport ops
+ *
+ * @chan_available: Callback to check if channel is available or not
+ * @chan_setup: Callback to allocate and setup a channel
+ * @chan_free: Callback to free a channel
+ * @send_message: Callback to send a message
+ * @mark_txdone: Callback to mark tx as done
+ * @fetch_response: Callback to fetch response
+ * @clear_channel: Callback to clear a channel
+ * @poll_done: Callback to poll transfer status
+ */
+struct scmi_transport_ops {
+	bool (*chan_available)(struct device_d *dev, int idx);
+	int (*chan_setup)(struct scmi_chan_info *cinfo, struct device_d *dev,
+			  bool tx);
+	int (*chan_free)(int id, void *p, void *data);
+	int (*send_message)(struct scmi_chan_info *cinfo,
+			    struct scmi_xfer *xfer);
+	void (*mark_txdone)(struct scmi_chan_info *cinfo, int ret);
+	void (*fetch_response)(struct scmi_chan_info *cinfo,
+			       struct scmi_xfer *xfer);
+	void (*clear_channel)(struct scmi_chan_info *cinfo);
+	bool (*poll_done)(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer);
+};
+
+int scmi_protocol_device_request(const struct scmi_device_id *id_table);
+void scmi_protocol_device_unrequest(const struct scmi_device_id *id_table);
+struct scmi_device *scmi_child_dev_find(struct device_d *parent,
+					int prot_id, const char *name);
+
+/**
+ * struct scmi_desc - Description of SoC integration
+ *
+ * @ops: Pointer to the transport specific ops structure
+ * @max_rx_timeout_ms: Timeout for communication with SoC (in Milliseconds)
+ * @max_msg: Maximum number of messages that can be pending
+ *	simultaneously in the system
+ * @max_msg_size: Maximum size of data per message that can be handled.
+ */
+struct scmi_desc {
+	const struct scmi_transport_ops *ops;
+	int max_rx_timeout_ms;
+	int max_msg;
+	int max_msg_size;
+};
+
+#ifdef CONFIG_ARM_SMCCC
+extern const struct scmi_desc scmi_smc_desc;
+#endif
+
+void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
+void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
+
+/* shmem related declarations */
+struct scmi_shared_mem;
+
+void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
+		      struct scmi_xfer *xfer);
+u32 shmem_read_header(struct scmi_shared_mem __iomem *shmem);
+void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
+			  struct scmi_xfer *xfer);
+void shmem_clear_channel(struct scmi_shared_mem __iomem *shmem);
+bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
+		     struct scmi_xfer *xfer);
+
+#endif /* _SCMI_COMMON_H */
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
new file mode 100644
index 000000000000..c9819e7c2aa3
--- /dev/null
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -0,0 +1,1275 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Message Protocol driver
+ *
+ * SCMI Message Protocol is used between the System Control Processor(SCP)
+ * and the Application Processors(AP). The Message Handling Unit(MHU)
+ * provides a mechanism for inter-processor communication between SCP's
+ * Cortex M3 and AP.
+ *
+ * SCP offers control and management of the core/cluster power states,
+ * various power domain DVFS including the core/cluster, certain system
+ * clocks configuration, thermal sensors and many others.
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+
+#define pr_fmt(fmt) "SCMI DRIVER - " fmt
+
+#include <common.h>
+#include <linux/bitmap.h>
+#include <driver.h>
+#include <linux/export.h>
+#include <io.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <of_address.h>
+#include <of_device.h>
+#include <linux/slab.h>
+#include <linux/idr.h>
+#include <linux/processor.h>
+
+#include "common.h"
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
+	SCMI_ERR_MAX
+};
+
+/* List of all SCMI devices active in system */
+static LIST_HEAD(scmi_list);
+/* Protection for the entire list */
+/* Track the unique id for the transfers for debug & profiling purpose */
+static unsigned transfer_last_id;
+
+static DEFINE_IDR(scmi_requested_devices);
+
+struct scmi_requested_dev {
+	const struct scmi_device_id *id_table;
+	struct list_head node;
+};
+
+/**
+ * struct scmi_xfers_info - Structure to manage transfer information
+ *
+ * @xfer_block: Preallocated Message array
+ * @xfer_alloc_table: Bitmap table for allocated messages.
+ *	Index of this bitmap table is also used for message
+ *	sequence identifier.
+ */
+struct scmi_xfers_info {
+	struct scmi_xfer *xfer_block;
+	unsigned long *xfer_alloc_table;
+};
+
+/**
+ * struct scmi_protocol_instance  - Describe an initialized protocol instance.
+ * @handle: Reference to the SCMI handle associated to this protocol instance.
+ * @proto: A reference to the protocol descriptor.
+ * @users: A refcount to track effective users of this protocol.
+ * @priv: Reference for optional protocol private data.
+ * @ph: An embedded protocol handle that will be passed down to protocol
+ *	initialization code to identify this instance.
+ *
+ * Each protocol is initialized independently once for each SCMI platform in
+ * which is defined by DT and implemented by the SCMI server fw.
+ */
+struct scmi_protocol_instance {
+	const struct scmi_handle	*handle;
+	const struct scmi_protocol	*proto;
+	int				users;
+	void				*priv;
+	struct scmi_protocol_handle	ph;
+};
+
+#define ph_to_pi(h)	container_of(h, struct scmi_protocol_instance, ph)
+
+/**
+ * struct scmi_info - Structure representing a SCMI instance
+ *
+ * @dev: Device pointer
+ * @desc: SoC description for this instance
+ * @version: SCMI revision information containing protocol version,
+ *	implementation version and (sub-)vendor identification.
+ * @handle: Instance of SCMI handle to send to clients
+ * @tx_minfo: Universal Transmit Message management info
+ * @rx_minfo: Universal Receive Message management info
+ * @tx_idr: IDR object to map protocol id to Tx channel info pointer
+ * @rx_idr: IDR object to map protocol id to Rx channel info pointer
+ * @protocols: IDR for protocols' instance descriptors initialized for
+ *	       this SCMI instance: populated on protocol's first attempted
+ *	       usage.
+ * @protocols_imp: List of protocols implemented, currently maximum of
+ *	MAX_PROTOCOLS_IMP elements allocated by the base protocol
+ * @active_protocols: IDR storing device_nodes for protocols actually defined
+ *		      in the DT and confirmed as implemented by fw.
+ * @node: List head
+ * @users: Number of users of this instance
+ */
+struct scmi_info {
+	struct device_d *dev;
+	const struct scmi_desc *desc;
+	struct scmi_revision_info version;
+	struct scmi_handle handle;
+	struct scmi_xfers_info tx_minfo;
+	struct scmi_xfers_info rx_minfo;
+	struct idr tx_idr;
+	struct idr rx_idr;
+	struct idr protocols;
+	/* Ensure mutual exclusive access to protocols instance array */
+	u8 *protocols_imp;
+	struct idr active_protocols;
+	struct list_head node;
+	int users;
+};
+
+#define handle_to_scmi_info(h)	container_of(h, struct scmi_info, handle)
+
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
+};
+
+static inline int scmi_to_linux_errno(int errno)
+{
+	if (errno < SCMI_SUCCESS && errno > SCMI_ERR_MAX)
+		return scmi_linux_errmap[-errno];
+	return -EIO;
+}
+
+/**
+ * scmi_dump_header_dbg() - Helper to dump a message header.
+ *
+ * @dev: Device pointer corresponding to the SCMI entity
+ * @hdr: pointer to header.
+ */
+static inline void scmi_dump_header_dbg(struct device_d *dev,
+					struct scmi_msg_hdr *hdr)
+{
+	dev_dbg(dev, "Message ID: %x Sequence ID: %x Protocol: %x\n",
+		hdr->id, hdr->seq, hdr->protocol_id);
+}
+
+/**
+ * scmi_xfer_get() - Allocate one message
+ *
+ * @handle: Pointer to SCMI entity handle
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
+ *
+ * Helper function which is used by various message functions that are
+ * exposed to clients of this driver for allocating a message traffic event.
+ *
+ * This function can sleep depending on pending requests already in the system
+ * for the SCMI entity.
+ *
+ * Return: 0 if all went fine, else corresponding error.
+ */
+static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle,
+				       struct scmi_xfers_info *minfo)
+{
+	u16 xfer_id;
+	struct scmi_xfer *xfer;
+	unsigned long bit_pos;
+	struct scmi_info *info = handle_to_scmi_info(handle);
+
+	bit_pos = find_first_zero_bit(minfo->xfer_alloc_table,
+				      info->desc->max_msg);
+	if (bit_pos == info->desc->max_msg)
+		return ERR_PTR(-ENOMEM);
+	set_bit(bit_pos, minfo->xfer_alloc_table);
+
+	xfer_id = bit_pos;
+
+	xfer = &minfo->xfer_block[xfer_id];
+	xfer->hdr.seq = xfer_id;
+	xfer->done = false;
+	xfer->transfer_id = ++transfer_last_id;
+
+	return xfer;
+}
+
+/**
+ * __scmi_xfer_put() - Release a message
+ *
+ * @minfo: Pointer to Tx/Rx Message management info based on channel type
+ * @xfer: message that was reserved by scmi_xfer_get
+ */
+static void
+__scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
+{
+	clear_bit(xfer->hdr.seq, minfo->xfer_alloc_table);
+}
+
+static void scmi_handle_response(struct scmi_chan_info *cinfo,
+				 u16 xfer_id, u8 msg_type)
+{
+	struct scmi_xfer *xfer;
+	struct device_d *dev = cinfo->dev;
+	struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
+	struct scmi_xfers_info *minfo = &info->tx_minfo;
+
+	/* Are we even expecting this? */
+	if (!test_bit(xfer_id, minfo->xfer_alloc_table)) {
+		dev_err(dev, "message for %d is not expected!\n", xfer_id);
+		info->desc->ops->clear_channel(cinfo);
+		return;
+	}
+
+	xfer = &minfo->xfer_block[xfer_id];
+	/*
+	 * Even if a response was indeed expected on this slot at this point,
+	 * a buggy platform could wrongly reply feeding us an unexpected
+	 * delayed response we're not prepared to handle: bail-out safely
+	 * blaming firmware.
+	 */
+	if (unlikely(msg_type == MSG_TYPE_DELAYED_RESP && !xfer->async_done)) {
+		dev_err(dev,
+			"Delayed Response for %d not expected! Buggy F/W ?\n",
+			xfer_id);
+		info->desc->ops->clear_channel(cinfo);
+		/* It was unexpected, so nobody will clear the xfer if not us */
+		__scmi_xfer_put(minfo, xfer);
+		return;
+	}
+
+	scmi_dump_header_dbg(dev, &xfer->hdr);
+
+	info->desc->ops->fetch_response(cinfo, xfer);
+
+	if (msg_type == MSG_TYPE_DELAYED_RESP) {
+		info->desc->ops->clear_channel(cinfo);
+		*xfer->async_done = true;
+	} else {
+		xfer->done = true;
+	}
+}
+
+/**
+ * scmi_rx_callback() - callback for receiving messages
+ *
+ * @cinfo: SCMI channel info
+ * @msg_hdr: Message header
+ *
+ * Processes one received message to appropriate transfer information and
+ * signals completion of the transfer.
+ *
+ * NOTE: This function will be invoked in IRQ context, hence should be
+ * as optimal as possible.
+ */
+void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr)
+{
+	u16 xfer_id = MSG_XTRACT_TOKEN(msg_hdr);
+	u8 msg_type = MSG_XTRACT_TYPE(msg_hdr);
+
+	switch (msg_type) {
+	case MSG_TYPE_COMMAND:
+	case MSG_TYPE_DELAYED_RESP:
+		scmi_handle_response(cinfo, xfer_id, msg_type);
+		break;
+	default:
+		WARN_ONCE(1, "received unknown msg_type:%d\n", msg_type);
+		break;
+	}
+}
+
+/**
+ * xfer_put() - Release a transmit message
+ *
+ * @ph: Pointer to SCMI protocol handle
+ * @xfer: message that was reserved by scmi_xfer_get
+ */
+static void xfer_put(const struct scmi_protocol_handle *ph,
+		     struct scmi_xfer *xfer)
+{
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+	struct scmi_info *info = handle_to_scmi_info(pi->handle);
+
+	__scmi_xfer_put(&info->tx_minfo, xfer);
+}
+
+/**
+ * do_xfer() - Do one transfer
+ *
+ * @ph: Pointer to SCMI protocol handle
+ * @xfer: Transfer to initiate and wait for response
+ *
+ * Return: -ETIMEDOUT in case of no response, if transmit error,
+ *	return corresponding error, else if all goes well,
+ *	return 0.
+ */
+static int do_xfer(const struct scmi_protocol_handle *ph,
+		   struct scmi_xfer *xfer)
+{
+	int ret;
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+	struct scmi_info *info = handle_to_scmi_info(pi->handle);
+	struct device_d *dev = info->dev;
+	struct scmi_chan_info *cinfo;
+	u64 start;
+
+	/*
+	 * Re-instate protocol id here from protocol handle so that cannot be
+	 * overridden by mistake (or malice) by the protocol code mangling with
+	 * the scmi_xfer structure.
+	 */
+	xfer->hdr.protocol_id = pi->proto->id;
+
+	cinfo = idr_find(&info->tx_idr, xfer->hdr.protocol_id);
+	if (unlikely(!cinfo))
+		return -EINVAL;
+
+	ret = info->desc->ops->send_message(cinfo, xfer);
+	if (ret < 0) {
+		dev_dbg(dev, "Failed to send message %d\n", ret);
+		return ret;
+	}
+
+	/* And we wait for the response. */
+	start = get_time_ns();
+	while (!xfer->done) {
+		if (is_timeout(start, info->desc->max_rx_timeout_ms * (u64)NSEC_PER_MSEC)) {
+			dev_err(dev, "timed out in resp(caller: %pS)\n", (void *)_RET_IP_);
+			ret = -ETIMEDOUT;
+			break;
+		}
+	}
+
+	if (!ret && xfer->hdr.status)
+		ret = scmi_to_linux_errno(xfer->hdr.status);
+
+	if (info->desc->ops->mark_txdone)
+		info->desc->ops->mark_txdone(cinfo, ret);
+
+	return ret;
+}
+
+static void reset_rx_to_maxsz(const struct scmi_protocol_handle *ph,
+			      struct scmi_xfer *xfer)
+{
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+	struct scmi_info *info = handle_to_scmi_info(pi->handle);
+
+	xfer->rx.len = info->desc->max_msg_size;
+}
+
+#define SCMI_MAX_RESPONSE_TIMEOUT_NS	(2 * NSEC_PER_SEC)
+
+/**
+ * do_xfer_with_response() - Do one transfer and wait until the delayed
+ *	response is received
+ *
+ * @ph: Pointer to SCMI protocol handle
+ * @xfer: Transfer to initiate and wait for response
+ *
+ * Return: -ETIMEDOUT in case of no delayed response, if transmit error,
+ *	return corresponding error, else if all goes well, return 0.
+ */
+static int do_xfer_with_response(const struct scmi_protocol_handle *ph,
+				 struct scmi_xfer *xfer)
+{
+	int ret;
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+	bool async_response = false;
+	u64 start;
+
+	xfer->hdr.protocol_id = pi->proto->id;
+
+	xfer->async_done = &async_response;
+
+	ret = do_xfer(ph, xfer);
+	if (ret)
+		goto out;
+
+	start = get_time_ns();
+	while (!*xfer->async_done) {
+		if (is_timeout(start, SCMI_MAX_RESPONSE_TIMEOUT_NS)) {
+			ret = -ETIMEDOUT;
+			break;
+		}
+	}
+
+out:
+	xfer->async_done = NULL;
+	return ret;
+}
+
+/**
+ * xfer_get_init() - Allocate and initialise one message for transmit
+ *
+ * @ph: Pointer to SCMI protocol handle
+ * @msg_id: Message identifier
+ * @tx_size: transmit message size
+ * @rx_size: receive message size
+ * @p: pointer to the allocated and initialised message
+ *
+ * This function allocates the message using @scmi_xfer_get and
+ * initialise the header.
+ *
+ * Return: 0 if all went fine with @p pointing to message, else
+ *	corresponding error.
+ */
+static int xfer_get_init(const struct scmi_protocol_handle *ph,
+			 u8 msg_id, size_t tx_size, size_t rx_size,
+			 struct scmi_xfer **p)
+{
+	int ret;
+	struct scmi_xfer *xfer;
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+	struct scmi_info *info = handle_to_scmi_info(pi->handle);
+	struct scmi_xfers_info *minfo = &info->tx_minfo;
+	struct device_d *dev = info->dev;
+
+	/* Ensure we have sane transfer sizes */
+	if (rx_size > info->desc->max_msg_size ||
+	    tx_size > info->desc->max_msg_size)
+		return -ERANGE;
+
+	xfer = scmi_xfer_get(pi->handle, minfo);
+	if (IS_ERR(xfer)) {
+		ret = PTR_ERR(xfer);
+		dev_err(dev, "failed to get free message slot(%d)\n", ret);
+		return ret;
+	}
+
+	xfer->tx.len = tx_size;
+	xfer->rx.len = rx_size ? : info->desc->max_msg_size;
+	xfer->hdr.id = msg_id;
+	xfer->hdr.protocol_id = pi->proto->id;
+	xfer->hdr.poll_completion = false;
+
+	*p = xfer;
+
+	return 0;
+}
+
+/**
+ * version_get() - command to get the revision of the SCMI entity
+ *
+ * @ph: Pointer to SCMI protocol handle
+ * @version: Holds returned version of protocol.
+ *
+ * Updates the SCMI information in the internal data structure.
+ *
+ * Return: 0 if all went fine, else return appropriate error.
+ */
+static int version_get(const struct scmi_protocol_handle *ph, u32 *version)
+{
+	int ret;
+	__le32 *rev_info;
+	struct scmi_xfer *t;
+
+	ret = xfer_get_init(ph, PROTOCOL_VERSION, 0, sizeof(*version), &t);
+	if (ret)
+		return ret;
+
+	ret = do_xfer(ph, t);
+	if (!ret) {
+		rev_info = t->rx.buf;
+		*version = le32_to_cpu(*rev_info);
+	}
+
+	xfer_put(ph, t);
+	return ret;
+}
+
+/**
+ * scmi_set_protocol_priv  - Set protocol specific data at init time
+ *
+ * @ph: A reference to the protocol handle.
+ * @priv: The private data to set.
+ *
+ * Return: 0 on Success
+ */
+static int scmi_set_protocol_priv(const struct scmi_protocol_handle *ph,
+				  void *priv)
+{
+	struct scmi_protocol_instance *pi = ph_to_pi(ph);
+
+	pi->priv = priv;
+
+	return 0;
+}
+
+/**
+ * scmi_get_protocol_priv  - Set protocol specific data at init time
+ *
+ * @ph: A reference to the protocol handle.
+ *
+ * Return: Protocol private data if any was set.
+ */
+static void *scmi_get_protocol_priv(const struct scmi_protocol_handle *ph)
+{
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+
+	return pi->priv;
+}
+
+static const struct scmi_xfer_ops xfer_ops = {
+	.version_get = version_get,
+	.xfer_get_init = xfer_get_init,
+	.reset_rx_to_maxsz = reset_rx_to_maxsz,
+	.do_xfer = do_xfer,
+	.do_xfer_with_response = do_xfer_with_response,
+	.xfer_put = xfer_put,
+};
+
+/**
+ * scmi_revision_area_get  - Retrieve version memory area.
+ *
+ * @ph: A reference to the protocol handle.
+ *
+ * A helper to grab the version memory area reference during SCMI Base protocol
+ * initialization.
+ *
+ * Return: A reference to the version memory area associated to the SCMI
+ *	   instance underlying this protocol handle.
+ */
+struct scmi_revision_info *
+scmi_revision_area_get(const struct scmi_protocol_handle *ph)
+{
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+
+	return pi->handle->version;
+}
+
+/**
+ * scmi_alloc_init_protocol_instance  - Allocate and initialize a protocol
+ * instance descriptor.
+ * @info: The reference to the related SCMI instance.
+ * @proto: The protocol descriptor.
+ *
+ * Allocate a new protocol instance descriptor, using the provided @proto
+ * description, against the specified SCMI instance @info, and initialize it;
+ *
+ * Return: A reference to a freshly allocated and initialized protocol instance
+ *	   or ERR_PTR on failure. On failure the @proto reference is at first
+ */
+static struct scmi_protocol_instance *
+scmi_alloc_init_protocol_instance(struct scmi_info *info,
+				  const struct scmi_protocol *proto)
+{
+	int ret = -ENOMEM;
+	struct scmi_protocol_instance *pi;
+	const struct scmi_handle *handle = &info->handle;
+
+	pi = kzalloc(sizeof(*pi), GFP_KERNEL);
+	if (!pi)
+		goto clean;
+
+	pi->proto = proto;
+	pi->handle = handle;
+	pi->ph.dev = handle->dev;
+	pi->ph.xops = &xfer_ops;
+	pi->ph.set_priv = scmi_set_protocol_priv;
+	pi->ph.get_priv = scmi_get_protocol_priv;
+	pi->users++;
+	/* proto->init is assured NON NULL by scmi_protocol_register */
+	ret = pi->proto->instance_init(&pi->ph);
+	if (ret)
+		goto clean;
+
+	ret = idr_alloc_one(&info->protocols, pi, proto->id);
+	if (ret != proto->id)
+		goto clean;
+
+	dev_dbg(handle->dev, "Initialized protocol: 0x%X\n", pi->proto->id);
+
+	return pi;
+
+clean:
+	return ERR_PTR(ret);
+}
+
+/**
+ * scmi_get_protocol_instance  - Protocol initialization helper.
+ * @handle: A reference to the SCMI platform instance.
+ * @protocol_id: The protocol being requested.
+ *
+ * In case the required protocol has never been requested before for this
+ * instance, allocate and initialize all the needed structures.
+ *
+ * Return: A reference to an initialized protocol instance or error on failure:
+ *	   in particular returns -EPROBE_DEFER when the desired protocol could
+ *	   NOT be found.
+ */
+static struct scmi_protocol_instance * __must_check
+scmi_get_protocol_instance(const struct scmi_handle *handle, u8 protocol_id)
+{
+	struct scmi_protocol_instance *pi;
+	struct scmi_info *info = handle_to_scmi_info(handle);
+
+	pi = idr_find(&info->protocols, protocol_id);
+
+	if (pi) {
+		pi->users++;
+	} else {
+		const struct scmi_protocol *proto;
+
+		/* Fails if protocol not registered on bus */
+		proto = scmi_protocol_get(protocol_id);
+		if (proto)
+			pi = scmi_alloc_init_protocol_instance(info, proto);
+		else
+			pi = ERR_PTR(-EPROBE_DEFER);
+	}
+
+	return pi;
+}
+
+/**
+ * scmi_protocol_acquire  - Protocol acquire
+ * @handle: A reference to the SCMI platform instance.
+ * @protocol_id: The protocol being requested.
+ *
+ * Register a new user for the requested protocol on the specified SCMI
+ * platform instance, possibly triggering its initialization on first user.
+ *
+ * Return: 0 if protocol was acquired successfully.
+ */
+int scmi_protocol_acquire(const struct scmi_handle *handle, u8 protocol_id)
+{
+	return PTR_ERR_OR_ZERO(scmi_get_protocol_instance(handle, protocol_id));
+}
+
+void scmi_setup_protocol_implemented(const struct scmi_protocol_handle *ph,
+				     u8 *prot_imp)
+{
+	const struct scmi_protocol_instance *pi = ph_to_pi(ph);
+	struct scmi_info *info = handle_to_scmi_info(pi->handle);
+
+	info->protocols_imp = prot_imp;
+}
+
+static bool
+scmi_is_protocol_implemented(const struct scmi_handle *handle, u8 prot_id)
+{
+	int i;
+	struct scmi_info *info = handle_to_scmi_info(handle);
+
+	if (!info->protocols_imp)
+		return false;
+
+	for (i = 0; i < MAX_PROTOCOLS_IMP; i++)
+		if (info->protocols_imp[i] == prot_id)
+			return true;
+	return false;
+}
+
+/**
+ * scmi_dev_protocol_get  - get protocol operations and handle
+ * @protocol_id: The protocol being requested.
+ * @ph: A pointer reference used to pass back the associated protocol handle.
+ *
+ * Get hold of a protocol accounting for its usage, eventually triggering its
+ * initialization, and returning the protocol specific operations and related
+ * protocol handle which will be used as first argument in most of the
+ * protocols operations methods.
+ * Being a devres based managed method, protocol hold will be automatically
+ * released, and possibly de-initialized on last user, once the SCMI driver
+ * owning the scmi_device is unbound from it.
+ *
+ * Return: A reference to the requested protocol operations or error.
+ *	   Must be checked for errors by caller.
+ */
+static const void __must_check *
+scmi_dev_protocol_get(struct scmi_device *sdev, u8 protocol_id,
+		       struct scmi_protocol_handle **ph)
+{
+	struct scmi_protocol_instance *pi;
+	struct scmi_handle *handle = sdev->handle;
+
+	if (!ph)
+		return ERR_PTR(-EINVAL);
+
+	pi = scmi_get_protocol_instance(handle, protocol_id);
+	if (IS_ERR(pi))
+		return pi;
+
+	*ph = &pi->ph;
+
+	return pi->proto->ops;
+}
+
+static inline
+struct scmi_handle *scmi_handle_get_from_info_unlocked(struct scmi_info *info)
+{
+	info->users++;
+	return &info->handle;
+}
+
+/**
+ * scmi_handle_get() - Get the SCMI handle for a device
+ *
+ * @dev: pointer to device for which we want SCMI handle
+ *
+ * NOTE: The function does not track individual clients of the framework
+ * and is expected to be maintained by caller of SCMI protocol library.
+ * scmi_handle_put must be balanced with successful scmi_handle_get
+ *
+ * Return: pointer to handle if successful, NULL on error
+ */
+struct scmi_handle *scmi_handle_get(struct device_d *dev)
+{
+	struct list_head *p;
+	struct scmi_info *info;
+	struct scmi_handle *handle = NULL;
+
+	list_for_each(p, &scmi_list) {
+		info = list_entry(p, struct scmi_info, node);
+		if (dev->parent == info->dev) {
+			handle = scmi_handle_get_from_info_unlocked(info);
+			break;
+		}
+	}
+
+	return handle;
+}
+
+/**
+ * scmi_handle_put() - Release the handle acquired by scmi_handle_get
+ *
+ * @handle: handle acquired by scmi_handle_get
+ *
+ * NOTE: The function does not track individual clients of the framework
+ * and is expected to be maintained by caller of SCMI protocol library.
+ * scmi_handle_put must be balanced with successful scmi_handle_get
+ *
+ * Return: 0 is successfully released
+ *	if null was passed, it returns -EINVAL;
+ */
+int scmi_handle_put(const struct scmi_handle *handle)
+{
+	struct scmi_info *info;
+
+	if (!handle)
+		return -EINVAL;
+
+	info = handle_to_scmi_info(handle);
+	if (!WARN_ON(!info->users))
+		info->users--;
+
+	return 0;
+}
+
+static int __scmi_xfer_info_init(struct scmi_info *sinfo,
+				 struct scmi_xfers_info *info)
+{
+	int i;
+	struct scmi_xfer *xfer;
+	struct device_d *dev = sinfo->dev;
+	const struct scmi_desc *desc = sinfo->desc;
+
+	/* Pre-allocated messages, no more than what hdr.seq can support */
+	if (WARN_ON(desc->max_msg >= MSG_TOKEN_MAX)) {
+		dev_err(dev, "Maximum message of %d exceeds supported %ld\n",
+			desc->max_msg, MSG_TOKEN_MAX);
+		return -EINVAL;
+	}
+
+	info->xfer_block = kcalloc(desc->max_msg, sizeof(*info->xfer_block), GFP_KERNEL);
+	if (!info->xfer_block)
+		return -ENOMEM;
+
+	info->xfer_alloc_table = kcalloc(BITS_TO_LONGS(desc->max_msg),
+					      sizeof(long), GFP_KERNEL);
+	if (!info->xfer_alloc_table)
+		return -ENOMEM;
+
+	/* Pre-initialize the buffer pointer to pre-allocated buffers */
+	for (i = 0, xfer = info->xfer_block; i < desc->max_msg; i++, xfer++) {
+		xfer->rx.buf = kcalloc(sizeof(u8), desc->max_msg_size,
+					    GFP_KERNEL);
+		if (!xfer->rx.buf)
+			return -ENOMEM;
+
+		xfer->tx.buf = xfer->rx.buf;
+		xfer->done = false;
+	}
+
+	return 0;
+}
+
+static int scmi_xfer_info_init(struct scmi_info *sinfo)
+{
+	int ret = __scmi_xfer_info_init(sinfo, &sinfo->tx_minfo);
+
+	if (!ret && idr_find(&sinfo->rx_idr, SCMI_PROTOCOL_BASE))
+		ret = __scmi_xfer_info_init(sinfo, &sinfo->rx_minfo);
+
+	return ret;
+}
+
+static int scmi_chan_setup(struct scmi_info *info, struct device_d *dev,
+			   int prot_id, bool tx)
+{
+	int ret, idx;
+	struct scmi_chan_info *cinfo;
+	struct idr *idr;
+
+	/* Transmit channel is first entry i.e. index 0 */
+	idx = tx ? 0 : 1;
+	idr = tx ? &info->tx_idr : &info->rx_idr;
+
+	/* check if already allocated, used for multiple device per protocol */
+	cinfo = idr_find(idr, prot_id);
+	if (cinfo)
+		return 0;
+
+	if (!info->desc->ops->chan_available(dev, idx)) {
+		cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
+		if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
+			return -EINVAL;
+		goto idr_alloc;
+	}
+
+	cinfo = kzalloc(sizeof(*cinfo), GFP_KERNEL);
+	if (!cinfo)
+		return -ENOMEM;
+
+	cinfo->dev = dev;
+
+	ret = info->desc->ops->chan_setup(cinfo, info->dev, tx);
+	if (ret)
+		return ret;
+
+idr_alloc:
+	ret = idr_alloc_one(idr, cinfo, prot_id);
+	if (ret != prot_id) {
+		dev_err(dev, "unable to allocate SCMI idr slot err %d\n", ret);
+		return ret;
+	}
+
+	cinfo->handle = &info->handle;
+	return 0;
+}
+
+static inline int
+scmi_txrx_setup(struct scmi_info *info, struct device_d *dev, int prot_id)
+{
+	int ret = scmi_chan_setup(info, dev, prot_id, true);
+
+	if (!ret) /* Rx is optional, hence no error check */
+		scmi_chan_setup(info, dev, prot_id, false);
+
+	return ret;
+}
+
+/**
+ * scmi_get_protocol_device  - Helper to get/create an SCMI device.
+ *
+ * @np: A device node representing a valid active protocols for the referred
+ * SCMI instance.
+ * @info: The referred SCMI instance for which we are getting/creating this
+ * device.
+ * @prot_id: The protocol ID.
+ * @name: The device name.
+ *
+ * Referring to the specific SCMI instance identified by @info, this helper
+ * takes care to return a properly initialized device matching the requested
+ * @proto_id and @name: if device was still not existent it is created as a
+ * child of the specified SCMI instance @info and its transport properly
+ * initialized as usual.
+ */
+static inline struct scmi_device *
+scmi_get_protocol_device(struct device_node *np, struct scmi_info *info,
+			 int prot_id, const char *name)
+{
+	struct scmi_device *sdev;
+
+	/* Already created for this parent SCMI instance ? */
+	sdev = scmi_child_dev_find(info->dev, prot_id, name);
+	if (sdev)
+		return sdev;
+
+	pr_debug("Creating SCMI device (%s) for protocol %x\n", name, prot_id);
+
+	sdev = scmi_device_alloc(np, info->dev, prot_id, name);
+	if (!sdev) {
+		dev_err(info->dev, "failed to create %d protocol device\n",
+			prot_id);
+		return NULL;
+	}
+
+	if (scmi_txrx_setup(info, &sdev->dev, prot_id)) {
+		dev_err(&sdev->dev, "failed to setup transport\n");
+		scmi_device_destroy(sdev);
+		return NULL;
+	}
+
+	return sdev;
+}
+
+static inline void
+scmi_create_protocol_device(struct device_node *np, struct scmi_info *info,
+			    int prot_id, const char *name)
+{
+	struct scmi_device *sdev;
+
+	sdev = scmi_get_protocol_device(np, info, prot_id, name);
+	if (!sdev)
+		return;
+
+	/* setup handle now as the transport is ready */
+	scmi_set_handle(sdev);
+
+	/* Register if not done yet */
+	if (sdev->dev.id == DEVICE_ID_DYNAMIC)
+		register_device(&sdev->dev);
+}
+
+/**
+ * scmi_create_protocol_devices  - Create devices for all pending requests for
+ * this SCMI instance.
+ *
+ * @np: The device node describing the protocol
+ * @info: The SCMI instance descriptor
+ * @prot_id: The protocol ID
+ *
+ * All devices previously requested for this instance (if any) are found and
+ * created by scanning the proper @&scmi_requested_devices entry.
+ */
+static void scmi_create_protocol_devices(struct device_node *np,
+					 struct scmi_info *info, int prot_id)
+{
+	struct list_head *phead;
+
+	phead = idr_find(&scmi_requested_devices, prot_id);
+	if (phead) {
+		struct scmi_requested_dev *rdev;
+
+		list_for_each_entry(rdev, phead, node)
+			scmi_create_protocol_device(np, info, prot_id,
+						    rdev->id_table->name);
+	}
+}
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
+ * @scmi_requested_devices, then a matching device is created for each already
+ * active SCMI instance. (if any)
+ *
+ * This way the requested device is created straight-away for all the already
+ * initialized(probed) SCMI instances (handles) and it remains also annotated
+ * as pending creation if the requesting SCMI driver was loaded before some
+ * SCMI instance and related transports were available: when such late instance
+ * is probed, its probe will take care to scan the list of pending requested
+ * devices and create those on its own (see @scmi_create_protocol_devices and
+ * its enclosing loop)
+ *
+ * Return: 0 on Success
+ */
+int scmi_protocol_device_request(const struct scmi_device_id *id_table)
+{
+	int ret = 0;
+	struct list_head *phead = NULL;
+	struct scmi_requested_dev *rdev;
+	struct scmi_info *info;
+	struct idr *idr;
+
+	pr_debug("Requesting SCMI device (%s) for protocol 0x%x\n",
+		 id_table->name, id_table->protocol_id);
+
+	/*
+	 * Search for the matching protocol rdev list and then search
+	 * of any existent equally named device...fails if any duplicate found.
+	 */
+	__idr_for_each_entry(&scmi_requested_devices, idr) {
+		struct list_head *head = idr->ptr;
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
+	/*
+	 * Now effectively create and initialize the requested device for every
+	 * already initialized SCMI instance which has registered the requested
+	 * protocol as a valid active one: i.e. defined in DT and supported by
+	 * current platform FW.
+	 */
+	list_for_each_entry(info, &scmi_list, node) {
+		struct device_node *child;
+
+		child = idr_find(&info->active_protocols,
+				 id_table->protocol_id);
+		if (child) {
+			struct scmi_device *sdev;
+
+			sdev = scmi_get_protocol_device(child, info,
+							id_table->protocol_id,
+							id_table->name);
+			/* Set handle if not already set: device existed */
+			if (sdev && !sdev->handle)
+				sdev->handle =
+					scmi_handle_get_from_info_unlocked(info);
+		} else {
+			dev_err(info->dev,
+				"Failed. SCMI protocol %d not active.\n",
+				id_table->protocol_id);
+		}
+	}
+
+out:
+	return ret;
+}
+
+/**
+ * scmi_protocol_device_unrequest  - Helper to unrequest a device
+ *
+ * @id_table: A protocol/name pair descriptor for the device to be unrequested.
+ *
+ * An helper to let an SCMI driver release its request about devices; note that
+ * devices are created and initialized once the first SCMI driver request them
+ * but they destroyed only on SCMI core unloading/unbinding.
+ *
+ * The current SCMI transport layer uses such devices as internal references and
+ * as such they could be shared as same transport between multiple drivers so
+ * that cannot be safely destroyed till the whole SCMI stack is removed.
+ * (unless adding further burden of refcounting.)
+ */
+void scmi_protocol_device_unrequest(const struct scmi_device_id *id_table)
+{
+	struct list_head *phead;
+
+	pr_debug("Unrequesting SCMI device (%s) for protocol %x\n",
+		 id_table->name, id_table->protocol_id);
+
+	phead = idr_find(&scmi_requested_devices, id_table->protocol_id);
+	if (phead) {
+		struct scmi_requested_dev *victim, *tmp;
+
+		list_for_each_entry_safe(victim, tmp, phead, node) {
+			if (!strcmp(victim->id_table->name, id_table->name)) {
+				list_del(&victim->node);
+				kfree(victim);
+				break;
+			}
+		}
+
+		if (list_empty(phead)) {
+			idr_remove(&scmi_requested_devices,
+				   id_table->protocol_id);
+			kfree(phead);
+		}
+	}
+}
+
+static void version_info(struct device_d *dev)
+{
+	struct scmi_info *info = dev->priv;
+
+	printf("SCMI information:\n"
+	       "  version: %u.%u\n"
+	       "  firmware version: 0x%x\n"
+	       "  vendor: %s (sub: %s)\n",
+	       info->version.minor_ver,
+	       info->version.major_ver,
+	       info->version.impl_ver,
+	       info->version.vendor_id,
+	       info->version.sub_vendor_id);
+}
+
+static int scmi_probe(struct device_d *dev)
+{
+	int ret;
+	struct scmi_handle *handle;
+	const struct scmi_desc *desc;
+	struct scmi_info *info;
+	struct device_node *child, *np = dev->device_node;
+
+	desc = of_device_get_match_data(dev);
+	if (!desc)
+		return -EINVAL;
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+
+	info->dev = dev;
+	info->desc = desc;
+	INIT_LIST_HEAD(&info->node);
+	idr_init(&info->protocols);
+	idr_init(&info->active_protocols);
+
+	dev->priv = info;
+	idr_init(&info->tx_idr);
+	idr_init(&info->rx_idr);
+
+	handle = &info->handle;
+	handle->dev = info->dev;
+	handle->version = &info->version;
+	handle->protocol_get = scmi_dev_protocol_get;
+
+	ret = scmi_txrx_setup(info, dev, SCMI_PROTOCOL_BASE);
+	if (ret)
+		return ret;
+
+	ret = scmi_xfer_info_init(info);
+	if (ret)
+		return ret;
+
+	/*
+	 * Trigger SCMI Base protocol initialization.
+	 * It's mandatory and won't be ever released/deinit until the
+	 * SCMI stack is shutdown/unloaded as a whole.
+	 */
+	ret = scmi_protocol_acquire(handle, SCMI_PROTOCOL_BASE);
+	if (ret) {
+		dev_err(dev, "unable to communicate with SCMI\n");
+		return ret;
+	}
+
+	list_add_tail(&info->node, &scmi_list);
+
+	for_each_available_child_of_node(np, child) {
+		u32 prot_id;
+
+		if (of_property_read_u32(child, "reg", &prot_id))
+			continue;
+
+		if (!FIELD_FIT(MSG_PROTOCOL_ID_MASK, prot_id))
+			dev_err(dev, "Out of range protocol %d\n", prot_id);
+
+		if (!scmi_is_protocol_implemented(handle, prot_id)) {
+			dev_err(dev, "SCMI protocol %d not implemented\n",
+				prot_id);
+			continue;
+		}
+
+		/*
+		 * Save this valid DT protocol descriptor amongst
+		 * @active_protocols for this SCMI instance/
+		 */
+		ret = idr_alloc_one(&info->active_protocols, child, prot_id);
+		if (ret != prot_id) {
+			dev_err(dev, "SCMI protocol %d already activated. Skip\n",
+				prot_id);
+			continue;
+		}
+
+		scmi_create_protocol_devices(child, info, prot_id);
+	}
+
+	dev->info = version_info;
+
+	return 0;
+}
+
+void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id)
+{
+	idr_remove(idr, id);
+}
+
+/* Each compatible listed below must have descriptor associated with it */
+static const struct of_device_id scmi_of_match[] = {
+#ifdef CONFIG_ARM_SMCCC
+	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc},
+#endif
+	{ /* Sentinel */ },
+};
+
+static struct driver_d scmi_driver = {
+	.name = "arm-scmi",
+	.of_compatible = scmi_of_match,
+	.probe = scmi_probe,
+};
+
+static int __init scmi_bus_driver_init(void)
+{
+	scmi_bus_init();
+
+	scmi_base_register();
+
+	return 0;
+}
+pure_initcall(scmi_bus_driver_init);
+
+static int __init scmi_platform_driver_init(void)
+{
+	return platform_driver_register(&scmi_driver);
+}
+core_initcall(scmi_platform_driver_init);
+
+MODULE_ALIAS("platform: arm-scmi");
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI protocol driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/firmware/arm_scmi/shmem.c b/drivers/firmware/arm_scmi/shmem.c
new file mode 100644
index 000000000000..2dde2b6e09eb
--- /dev/null
+++ b/drivers/firmware/arm_scmi/shmem.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * For transport using shared mem structure.
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <linux/types.h>
+#include <linux/processor.h>
+
+#include "common.h"
+
+/*
+ * SCMI specification requires all parameters, message headers, return
+ * arguments or any protocol data to be expressed in little endian
+ * format only.
+ */
+struct scmi_shared_mem {
+	__le32 reserved;
+	__le32 channel_status;
+#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
+#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
+	__le32 reserved1[2];
+	__le32 flags;
+#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
+	__le32 length;
+	__le32 msg_header;
+	u8 msg_payload[];
+};
+
+void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
+		      struct scmi_xfer *xfer)
+{
+	/*
+	 * Ideally channel must be free by now unless OS timeout last
+	 * request and platform continued to process the same, wait
+	 * until it releases the shared memory, otherwise we may endup
+	 * overwriting its response with new message payload or vice-versa
+	 */
+	spin_until_cond(ioread32(&shmem->channel_status) &
+			SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
+	/* Mark channel busy + clear error */
+	iowrite32(0x0, &shmem->channel_status);
+	iowrite32(xfer->hdr.poll_completion ? 0 : SCMI_SHMEM_FLAG_INTR_ENABLED,
+		  &shmem->flags);
+	iowrite32(sizeof(shmem->msg_header) + xfer->tx.len, &shmem->length);
+	iowrite32(pack_scmi_header(&xfer->hdr), &shmem->msg_header);
+	if (xfer->tx.buf)
+		memcpy_toio(shmem->msg_payload, xfer->tx.buf, xfer->tx.len);
+}
+
+u32 shmem_read_header(struct scmi_shared_mem __iomem *shmem)
+{
+	return ioread32(&shmem->msg_header);
+}
+
+void shmem_fetch_response(struct scmi_shared_mem __iomem *shmem,
+			  struct scmi_xfer *xfer)
+{
+	xfer->hdr.status = ioread32(shmem->msg_payload);
+	/* Skip the length of header and status in shmem area i.e 8 bytes */
+	xfer->rx.len = min_t(size_t, xfer->rx.len,
+			     ioread32(&shmem->length) - 8);
+
+	/* Take a copy to the rx buffer.. */
+	memcpy_fromio(xfer->rx.buf, shmem->msg_payload + 4, xfer->rx.len);
+}
+
+void shmem_clear_channel(struct scmi_shared_mem __iomem *shmem)
+{
+	iowrite32(SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE, &shmem->channel_status);
+}
+
+bool shmem_poll_done(struct scmi_shared_mem __iomem *shmem,
+		     struct scmi_xfer *xfer)
+{
+	u16 xfer_id;
+
+	xfer_id = MSG_XTRACT_TOKEN(ioread32(&shmem->msg_header));
+
+	if (xfer->hdr.seq != xfer_id)
+		return false;
+
+	return ioread32(&shmem->channel_status) &
+		(SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR |
+		 SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE);
+}
diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
new file mode 100644
index 000000000000..67f19a7b4308
--- /dev/null
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -0,0 +1,137 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Message SMC/HVC
+ * Transport driver
+ *
+ * Copyright 2020 NXP
+ */
+
+#include <common.h>
+#include <linux/arm-smccc.h>
+#include <driver.h>
+#include <linux/err.h>
+#include <of.h>
+#include <of_address.h>
+
+#include "common.h"
+
+/**
+ * struct scmi_smc - Structure representing a SCMI smc transport
+ *
+ * @cinfo: SCMI channel info
+ * @shmem: Transmit/Receive shared memory area
+ * @func_id: smc/hvc call function id
+ */
+
+struct scmi_smc {
+	struct scmi_chan_info *cinfo;
+	struct scmi_shared_mem __iomem *shmem;
+	u32 func_id;
+};
+
+static bool smc_chan_available(struct device_d *dev, int idx)
+{
+	return of_parse_phandle(dev->device_node, "shmem", 0) != NULL;
+}
+
+static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device_d *dev,
+			  bool tx)
+{
+	struct device_d *cdev = cinfo->dev;
+	struct scmi_smc *scmi_info;
+	resource_size_t size;
+	struct resource res;
+	struct device_node *np;
+	u32 func_id;
+	int ret;
+
+	if (!tx)
+		return -ENODEV;
+
+	scmi_info = kzalloc(sizeof(*scmi_info), GFP_KERNEL);
+	if (!scmi_info)
+		return -ENOMEM;
+
+	np = of_parse_phandle(cdev->device_node, "shmem", 0);
+	ret = of_address_to_resource(np, 0, &res);
+	if (ret) {
+		dev_err(cdev, "failed to get SCMI Tx shared memory\n");
+		return ret;
+	}
+
+	size = resource_size(&res);
+	scmi_info->shmem = IOMEM(res.start);
+
+	ret = of_property_read_u32(dev->device_node, "arm,smc-id", &func_id);
+	if (ret < 0)
+		return ret;
+
+	scmi_info->func_id = func_id;
+	scmi_info->cinfo = cinfo;
+	cinfo->transport_info = scmi_info;
+
+	return 0;
+}
+
+static int smc_chan_free(int id, void *p, void *data)
+{
+	struct scmi_chan_info *cinfo = p;
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+
+	cinfo->transport_info = NULL;
+	scmi_info->cinfo = NULL;
+
+	scmi_free_channel(cinfo, data, id);
+
+	return 0;
+}
+
+static int smc_send_message(struct scmi_chan_info *cinfo,
+			    struct scmi_xfer *xfer)
+{
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+	struct arm_smccc_res res;
+
+	shmem_tx_prepare(scmi_info->shmem, xfer);
+
+	arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
+
+	scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
+
+	/* Only SMCCC_RET_NOT_SUPPORTED is valid error code */
+	if (res.a0)
+		return -EOPNOTSUPP;
+	return 0;
+}
+
+static void smc_fetch_response(struct scmi_chan_info *cinfo,
+			       struct scmi_xfer *xfer)
+{
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+
+	shmem_fetch_response(scmi_info->shmem, xfer);
+}
+
+static bool
+smc_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
+{
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+
+	return shmem_poll_done(scmi_info->shmem, xfer);
+}
+
+static const struct scmi_transport_ops scmi_smc_ops = {
+	.chan_available = smc_chan_available,
+	.chan_setup = smc_chan_setup,
+	.chan_free = smc_chan_free,
+	.send_message = smc_send_message,
+	.fetch_response = smc_fetch_response,
+	.poll_done = smc_poll_done,
+};
+
+const struct scmi_desc scmi_smc_desc = {
+	.ops = &scmi_smc_ops,
+	.max_rx_timeout_ms = 30,
+	.max_msg = 20,
+	.max_msg_size = 128,
+};
diff --git a/include/driver.h b/include/driver.h
index a787f985a010..e59f0a164d42 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -595,4 +595,7 @@ const void *device_get_match_data(struct device_d *dev);
 
 int device_match_of_modalias(struct device_d *dev, struct driver_d *drv);
 
+struct device_d *device_find_child(struct device_d *parent, void *data,
+				 int (*match)(struct device_d *dev, void *data));
+
 #endif /* DRIVER_H */
diff --git a/include/linux/idr.h b/include/linux/idr.h
new file mode 100644
index 000000000000..8a0f452d766d
--- /dev/null
+++ b/include/linux/idr.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * include/linux/idr.h
+ * 
+ * 2002-10-18  written by Jim Houston jim.houston@ccur.com
+ *	Copyright (C) 2002 by Concurrent Computer Corporation
+ *
+ * Small id to pointer translation service avoiding fixed sized
+ * tables.
+ */
+
+#ifndef __IDR_H__
+#define __IDR_H__
+
+#include <errno.h>
+#include <linux/list.h>
+
+struct idr {
+	int			id;
+	void			*ptr;
+	struct list_head	list;
+};
+
+#define DEFINE_IDR(name)	\
+	struct idr name = { .list = LIST_HEAD_INIT((name).list) }
+
+#define __idr_for_each_entry(head, idr) \
+	list_for_each_entry((idr), &(head)->list, list)
+
+static inline struct idr *__idr_find(struct idr *head, int id)
+{
+	struct idr *idr;
+
+	__idr_for_each_entry(head, idr) {
+		if (idr->id == id)
+			return idr;
+	}
+
+	return NULL;
+}
+
+static inline void *idr_find(struct idr *head, int id)
+{
+	struct idr *idr = __idr_find(head, id);
+
+	return idr ? idr->ptr : NULL;
+}
+
+static inline int idr_alloc_one(struct idr *head, void *ptr, int start)
+{
+	struct idr *idr;
+
+	if (__idr_find(head, start))
+		return -EBUSY;
+
+	idr = malloc(sizeof(*idr));
+
+	idr->id = start;
+	idr->ptr = ptr;
+
+	list_add(&idr->list, &head->list);
+
+	return start;
+}
+
+static inline void idr_init(struct idr *idr)
+{
+	INIT_LIST_HEAD(&idr->list);
+}
+
+static inline void idr_remove(struct idr *head, int id)
+{
+	struct idr *idr = __idr_find(head, id);
+
+	list_del(&idr->list);
+	free(idr);
+}
+
+#endif /* __IDR_H__ */
diff --git a/include/linux/processor.h b/include/linux/processor.h
new file mode 100644
index 000000000000..94a458c3d197
--- /dev/null
+++ b/include/linux/processor.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Misc low level processor primitives */
+#ifndef _LINUX_PROCESSOR_H
+#define _LINUX_PROCESSOR_H
+
+#include <linux/barebox-wrapper.h>
+
+/*
+ * spin_until_cond can be used to wait for a condition to become true. It
+ * may be expected that the first iteration will true in the common case
+ * (no spinning), so that callers should not require a first "likely" test
+ * for the uncontended case before using this primitive.
+ *
+ * Usage and implementation guidelines are the same as for the spin_begin
+ * primitives, above.
+ */
+#ifndef spin_until_cond
+#define spin_until_cond(cond)					\
+do {								\
+	if (unlikely(!(cond))) {				\
+		do {						\
+			cpu_relax();				\
+		} while (!(cond));				\
+	}							\
+} while (0)
+
+#endif
+
+#endif /* _LINUX_PROCESSOR_H */
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
new file mode 100644
index 000000000000..5b6de7bb87c1
--- /dev/null
+++ b/include/linux/scmi_protocol.h
@@ -0,0 +1,654 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * SCMI Message Protocol driver header
+ *
+ * Copyright (C) 2018-2021 ARM Ltd.
+ */
+
+#ifndef _LINUX_SCMI_PROTOCOL_H
+#define _LINUX_SCMI_PROTOCOL_H
+
+#include <linux/bitfield.h>
+#include <driver.h>
+#include <linux/types.h>
+
+#define SCMI_MAX_STR_SIZE	16
+#define SCMI_MAX_NUM_RATES	16
+
+/**
+ * struct scmi_revision_info - version information structure
+ *
+ * @major_ver: Major ABI version. Change here implies risk of backward
+ *	compatibility break.
+ * @minor_ver: Minor ABI version. Change here implies new feature addition,
+ *	or compatible change in ABI.
+ * @num_protocols: Number of protocols that are implemented, excluding the
+ *	base protocol.
+ * @num_agents: Number of agents in the system.
+ * @impl_ver: A vendor-specific implementation version.
+ * @vendor_id: A vendor identifier(Null terminated ASCII string)
+ * @sub_vendor_id: A sub-vendor identifier(Null terminated ASCII string)
+ */
+struct scmi_revision_info {
+	u16 major_ver;
+	u16 minor_ver;
+	u8 num_protocols;
+	u8 num_agents;
+	u32 impl_ver;
+	char vendor_id[SCMI_MAX_STR_SIZE];
+	char sub_vendor_id[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_clock_info {
+	char name[SCMI_MAX_STR_SIZE];
+	bool rate_discrete;
+	union {
+		struct {
+			int num_rates;
+			u64 rates[SCMI_MAX_NUM_RATES];
+		} list;
+		struct {
+			u64 min_rate;
+			u64 max_rate;
+			u64 step_size;
+		} range;
+	};
+};
+
+struct scmi_handle;
+struct scmi_device;
+struct scmi_protocol_handle;
+
+/**
+ * struct scmi_clk_proto_ops - represents the various operations provided
+ *	by SCMI Clock Protocol
+ *
+ * @count_get: get the count of clocks provided by SCMI
+ * @info_get: get the information of the specified clock
+ * @rate_get: request the current clock rate of a clock
+ * @rate_set: set the clock rate of a clock
+ * @enable: enables the specified clock
+ * @disable: disables the specified clock
+ */
+struct scmi_clk_proto_ops {
+	int (*count_get)(const struct scmi_protocol_handle *ph);
+
+	const struct scmi_clock_info *(*info_get)
+		(const struct scmi_protocol_handle *ph, u32 clk_id);
+	int (*rate_get)(const struct scmi_protocol_handle *ph, u32 clk_id,
+			u64 *rate);
+	int (*rate_set)(const struct scmi_protocol_handle *ph, u32 clk_id,
+			u64 rate);
+	int (*enable)(const struct scmi_protocol_handle *ph, u32 clk_id);
+	int (*disable)(const struct scmi_protocol_handle *ph, u32 clk_id);
+};
+
+/**
+ * struct scmi_perf_proto_ops - represents the various operations provided
+ *	by SCMI Performance Protocol
+ *
+ * @limits_set: sets limits on the performance level of a domain
+ * @limits_get: gets limits on the performance level of a domain
+ * @level_set: sets the performance level of a domain
+ * @level_get: gets the performance level of a domain
+ * @device_domain_id: gets the scmi domain id for a given device_d
+ * @transition_latency_get: gets the DVFS transition latency for a given device_d
+ * @device_opps_add: adds all the OPPs for a given device_d
+ * @freq_set: sets the frequency for a given device_d using sustained frequency
+ *	to sustained performance level mapping
+ * @freq_get: gets the frequency for a given device_d using sustained frequency
+ *	to sustained performance level mapping
+ * @est_power_get: gets the estimated power cost for a given performance domain
+ *	at a given frequency
+ */
+struct scmi_perf_proto_ops {
+	int (*limits_set)(const struct scmi_protocol_handle *ph, u32 domain,
+			  u32 max_perf, u32 min_perf);
+	int (*limits_get)(const struct scmi_protocol_handle *ph, u32 domain,
+			  u32 *max_perf, u32 *min_perf);
+	int (*level_set)(const struct scmi_protocol_handle *ph, u32 domain,
+			 u32 level, bool poll);
+	int (*level_get)(const struct scmi_protocol_handle *ph, u32 domain,
+			 u32 *level, bool poll);
+	int (*device_domain_id)(struct device_d *dev);
+	int (*transition_latency_get)(const struct scmi_protocol_handle *ph,
+				      struct device_d *dev);
+	int (*device_opps_add)(const struct scmi_protocol_handle *ph,
+			       struct device_d *dev);
+	int (*freq_set)(const struct scmi_protocol_handle *ph, u32 domain,
+			unsigned long rate, bool poll);
+	int (*freq_get)(const struct scmi_protocol_handle *ph, u32 domain,
+			unsigned long *rate, bool poll);
+	int (*est_power_get)(const struct scmi_protocol_handle *ph, u32 domain,
+			     unsigned long *rate, unsigned long *power);
+	bool (*fast_switch_possible)(const struct scmi_protocol_handle *ph,
+				     struct device_d *dev);
+	bool (*power_scale_mw_get)(const struct scmi_protocol_handle *ph);
+};
+
+/**
+ * struct scmi_power_proto_ops - represents the various operations provided
+ *	by SCMI Power Protocol
+ *
+ * @num_domains_get: get the count of power domains provided by SCMI
+ * @name_get: gets the name of a power domain
+ * @state_set: sets the power state of a power domain
+ * @state_get: gets the power state of a power domain
+ */
+struct scmi_power_proto_ops {
+	int (*num_domains_get)(const struct scmi_protocol_handle *ph);
+	char *(*name_get)(const struct scmi_protocol_handle *ph, u32 domain);
+#define SCMI_POWER_STATE_TYPE_SHIFT	30
+#define SCMI_POWER_STATE_ID_MASK	(BIT(28) - 1)
+#define SCMI_POWER_STATE_PARAM(type, id) \
+	((((type) & BIT(0)) << SCMI_POWER_STATE_TYPE_SHIFT) | \
+		((id) & SCMI_POWER_STATE_ID_MASK))
+#define SCMI_POWER_STATE_GENERIC_ON	SCMI_POWER_STATE_PARAM(0, 0)
+#define SCMI_POWER_STATE_GENERIC_OFF	SCMI_POWER_STATE_PARAM(1, 0)
+	int (*state_set)(const struct scmi_protocol_handle *ph, u32 domain,
+			 u32 state);
+	int (*state_get)(const struct scmi_protocol_handle *ph, u32 domain,
+			 u32 *state);
+};
+
+/**
+ * scmi_sensor_reading  - represent a timestamped read
+ *
+ * Used by @reading_get_timestamped method.
+ *
+ * @value: The signed value sensor read.
+ * @timestamp: An unsigned timestamp for the sensor read, as provided by
+ *	       SCMI platform. Set to zero when not available.
+ */
+struct scmi_sensor_reading {
+	long long value;
+	unsigned long long timestamp;
+};
+
+/**
+ * scmi_range_attrs  - specifies a sensor or axis values' range
+ * @min_range: The minimum value which can be represented by the sensor/axis.
+ * @max_range: The maximum value which can be represented by the sensor/axis.
+ */
+struct scmi_range_attrs {
+	long long min_range;
+	long long max_range;
+};
+
+/**
+ * scmi_sensor_axis_info  - describes one sensor axes
+ * @id: The axes ID.
+ * @type: Axes type. Chosen amongst one of @enum scmi_sensor_class.
+ * @scale: Power-of-10 multiplier applied to the axis unit.
+ * @name: NULL-terminated string representing axes name as advertised by
+ *	  SCMI platform.
+ * @extended_attrs: Flag to indicate the presence of additional extended
+ *		    attributes for this axes.
+ * @resolution: Extended attribute representing the resolution of the axes.
+ *		Set to 0 if not reported by this axes.
+ * @exponent: Extended attribute representing the power-of-10 multiplier that
+ *	      is applied to the resolution field. Set to 0 if not reported by
+ *	      this axes.
+ * @attrs: Extended attributes representing minimum and maximum values
+ *	   measurable by this axes. Set to 0 if not reported by this sensor.
+ */
+struct scmi_sensor_axis_info {
+	unsigned int id;
+	unsigned int type;
+	int scale;
+	char name[SCMI_MAX_STR_SIZE];
+	bool extended_attrs;
+	unsigned int resolution;
+	int exponent;
+	struct scmi_range_attrs attrs;
+};
+
+/**
+ * scmi_sensor_intervals_info  - describes number and type of available update
+ * intervals
+ * @segmented: Flag for segmented intervals' representation. When True there
+ *	       will be exactly 3 intervals in @desc, with each entry
+ *	       representing a member of a segment in this order:
+ *	       {lowest update interval, highest update interval, step size}
+ * @count: Number of intervals described in @desc.
+ * @desc: Array of @count interval descriptor bitmask represented as detailed in
+ *	  the SCMI specification: it can be accessed using the accompanying
+ *	  macros.
+ * @prealloc_pool: A minimal preallocated pool of desc entries used to avoid
+ *		   lesser-than-64-bytes dynamic allocation for small @count
+ *		   values.
+ */
+struct scmi_sensor_intervals_info {
+	bool segmented;
+	unsigned int count;
+#define SCMI_SENS_INTVL_SEGMENT_LOW	0
+#define SCMI_SENS_INTVL_SEGMENT_HIGH	1
+#define SCMI_SENS_INTVL_SEGMENT_STEP	2
+	unsigned int *desc;
+#define SCMI_SENS_INTVL_GET_SECS(x)		FIELD_GET(GENMASK(20, 5), (x))
+#define SCMI_SENS_INTVL_GET_EXP(x)					\
+	({								\
+		int __signed_exp = FIELD_GET(GENMASK(4, 0), (x));	\
+									\
+		if (__signed_exp & BIT(4))				\
+			__signed_exp |= GENMASK(31, 5);			\
+		__signed_exp;						\
+	})
+#define SCMI_MAX_PREALLOC_POOL			16
+	unsigned int prealloc_pool[SCMI_MAX_PREALLOC_POOL];
+};
+
+/**
+ * struct scmi_sensor_info - represents information related to one of the
+ * available sensors.
+ * @id: Sensor ID.
+ * @type: Sensor type. Chosen amongst one of @enum scmi_sensor_class.
+ * @scale: Power-of-10 multiplier applied to the sensor unit.
+ * @num_trip_points: Number of maximum configurable trip points.
+ * @async: Flag for asynchronous read support.
+ * @update: Flag for continuouos update notification support.
+ * @timestamped: Flag for timestamped read support.
+ * @tstamp_scale: Power-of-10 multiplier applied to the sensor timestamps to
+ *		  represent it in seconds.
+ * @num_axis: Number of supported axis if any. Reported as 0 for scalar sensors.
+ * @axis: Pointer to an array of @num_axis descriptors.
+ * @intervals: Descriptor of available update intervals.
+ * @sensor_config: A bitmask reporting the current sensor configuration as
+ *		   detailed in the SCMI specification: it can accessed and
+ *		   modified through the accompanying macros.
+ * @name: NULL-terminated string representing sensor name as advertised by
+ *	  SCMI platform.
+ * @extended_scalar_attrs: Flag to indicate the presence of additional extended
+ *			   attributes for this sensor.
+ * @sensor_power: Extended attribute representing the average power
+ *		  consumed by the sensor in microwatts (uW) when it is active.
+ *		  Reported here only for scalar sensors.
+ *		  Set to 0 if not reported by this sensor.
+ * @resolution: Extended attribute representing the resolution of the sensor.
+ *		Reported here only for scalar sensors.
+ *		Set to 0 if not reported by this sensor.
+ * @exponent: Extended attribute representing the power-of-10 multiplier that is
+ *	      applied to the resolution field.
+ *	      Reported here only for scalar sensors.
+ *	      Set to 0 if not reported by this sensor.
+ * @scalar_attrs: Extended attributes representing minimum and maximum
+ *		  measurable values by this sensor.
+ *		  Reported here only for scalar sensors.
+ *		  Set to 0 if not reported by this sensor.
+ */
+struct scmi_sensor_info {
+	unsigned int id;
+	unsigned int type;
+	int scale;
+	unsigned int num_trip_points;
+	bool async;
+	bool update;
+	bool timestamped;
+	int tstamp_scale;
+	unsigned int num_axis;
+	struct scmi_sensor_axis_info *axis;
+	struct scmi_sensor_intervals_info intervals;
+	unsigned int sensor_config;
+#define SCMI_SENS_CFG_UPDATE_SECS_MASK		GENMASK(31, 16)
+#define SCMI_SENS_CFG_GET_UPDATE_SECS(x)				\
+	FIELD_GET(SCMI_SENS_CFG_UPDATE_SECS_MASK, (x))
+
+#define SCMI_SENS_CFG_UPDATE_EXP_MASK		GENMASK(15, 11)
+#define SCMI_SENS_CFG_GET_UPDATE_EXP(x)					\
+	({								\
+		int __signed_exp =					\
+			FIELD_GET(SCMI_SENS_CFG_UPDATE_EXP_MASK, (x));	\
+									\
+		if (__signed_exp & BIT(4))				\
+			__signed_exp |= GENMASK(31, 5);			\
+		__signed_exp;						\
+	})
+
+#define SCMI_SENS_CFG_ROUND_MASK		GENMASK(10, 9)
+#define SCMI_SENS_CFG_ROUND_AUTO		2
+#define SCMI_SENS_CFG_ROUND_UP			1
+#define SCMI_SENS_CFG_ROUND_DOWN		0
+
+#define SCMI_SENS_CFG_TSTAMP_ENABLED_MASK	BIT(1)
+#define SCMI_SENS_CFG_TSTAMP_ENABLE		1
+#define SCMI_SENS_CFG_TSTAMP_DISABLE		0
+#define SCMI_SENS_CFG_IS_TSTAMP_ENABLED(x)				\
+	FIELD_GET(SCMI_SENS_CFG_TSTAMP_ENABLED_MASK, (x))
+
+#define SCMI_SENS_CFG_SENSOR_ENABLED_MASK	BIT(0)
+#define SCMI_SENS_CFG_SENSOR_ENABLE		1
+#define SCMI_SENS_CFG_SENSOR_DISABLE		0
+	char name[SCMI_MAX_STR_SIZE];
+#define SCMI_SENS_CFG_IS_ENABLED(x)		FIELD_GET(BIT(0), (x))
+	bool extended_scalar_attrs;
+	unsigned int sensor_power;
+	unsigned int resolution;
+	int exponent;
+	struct scmi_range_attrs scalar_attrs;
+};
+
+/*
+ * Partial list from Distributed Management Task Force (DMTF) specification:
+ * DSP0249 (Platform Level Data Model specification)
+ */
+enum scmi_sensor_class {
+	NONE = 0x0,
+	UNSPEC = 0x1,
+	TEMPERATURE_C = 0x2,
+	TEMPERATURE_F = 0x3,
+	TEMPERATURE_K = 0x4,
+	VOLTAGE = 0x5,
+	CURRENT = 0x6,
+	POWER = 0x7,
+	ENERGY = 0x8,
+	CHARGE = 0x9,
+	VOLTAMPERE = 0xA,
+	NITS = 0xB,
+	LUMENS = 0xC,
+	LUX = 0xD,
+	CANDELAS = 0xE,
+	KPA = 0xF,
+	PSI = 0x10,
+	NEWTON = 0x11,
+	CFM = 0x12,
+	RPM = 0x13,
+	HERTZ = 0x14,
+	SECS = 0x15,
+	MINS = 0x16,
+	HOURS = 0x17,
+	DAYS = 0x18,
+	WEEKS = 0x19,
+	MILS = 0x1A,
+	INCHES = 0x1B,
+	FEET = 0x1C,
+	CUBIC_INCHES = 0x1D,
+	CUBIC_FEET = 0x1E,
+	METERS = 0x1F,
+	CUBIC_CM = 0x20,
+	CUBIC_METERS = 0x21,
+	LITERS = 0x22,
+	FLUID_OUNCES = 0x23,
+	RADIANS = 0x24,
+	STERADIANS = 0x25,
+	REVOLUTIONS = 0x26,
+	CYCLES = 0x27,
+	GRAVITIES = 0x28,
+	OUNCES = 0x29,
+	POUNDS = 0x2A,
+	FOOT_POUNDS = 0x2B,
+	OUNCE_INCHES = 0x2C,
+	GAUSS = 0x2D,
+	GILBERTS = 0x2E,
+	HENRIES = 0x2F,
+	FARADS = 0x30,
+	OHMS = 0x31,
+	SIEMENS = 0x32,
+	MOLES = 0x33,
+	BECQUERELS = 0x34,
+	PPM = 0x35,
+	DECIBELS = 0x36,
+	DBA = 0x37,
+	DBC = 0x38,
+	GRAYS = 0x39,
+	SIEVERTS = 0x3A,
+	COLOR_TEMP_K = 0x3B,
+	BITS = 0x3C,
+	BYTES = 0x3D,
+	WORDS = 0x3E,
+	DWORDS = 0x3F,
+	QWORDS = 0x40,
+	PERCENTAGE = 0x41,
+	PASCALS = 0x42,
+	COUNTS = 0x43,
+	GRAMS = 0x44,
+	NEWTON_METERS = 0x45,
+	HITS = 0x46,
+	MISSES = 0x47,
+	RETRIES = 0x48,
+	OVERRUNS = 0x49,
+	UNDERRUNS = 0x4A,
+	COLLISIONS = 0x4B,
+	PACKETS = 0x4C,
+	MESSAGES = 0x4D,
+	CHARS = 0x4E,
+	ERRORS = 0x4F,
+	CORRECTED_ERRS = 0x50,
+	UNCORRECTABLE_ERRS = 0x51,
+	SQ_MILS = 0x52,
+	SQ_INCHES = 0x53,
+	SQ_FEET = 0x54,
+	SQ_CM = 0x55,
+	SQ_METERS = 0x56,
+	RADIANS_SEC = 0x57,
+	BPM = 0x58,
+	METERS_SEC_SQUARED = 0x59,
+	METERS_SEC = 0x5A,
+	CUBIC_METERS_SEC = 0x5B,
+	MM_MERCURY = 0x5C,
+	RADIANS_SEC_SQUARED = 0x5D,
+	OEM_UNIT = 0xFF
+};
+
+/**
+ * struct scmi_sensor_proto_ops - represents the various operations provided
+ *	by SCMI Sensor Protocol
+ *
+ * @count_get: get the count of sensors provided by SCMI
+ * @info_get: get the information of the specified sensor
+ * @trip_point_config: selects and configures a trip-point of interest
+ * @reading_get: gets the current value of the sensor
+ * @reading_get_timestamped: gets the current value and timestamp, when
+ *			     available, of the sensor. (as of v3.0 spec)
+ *			     Supports multi-axis sensors for sensors which
+ *			     supports it and if the @reading array size of
+ *			     @count entry equals the sensor num_axis
+ * @config_get: Get sensor current configuration
+ * @config_set: Set sensor current configuration
+ */
+struct scmi_sensor_proto_ops {
+	int (*count_get)(const struct scmi_protocol_handle *ph);
+	const struct scmi_sensor_info *(*info_get)
+		(const struct scmi_protocol_handle *ph, u32 sensor_id);
+	int (*trip_point_config)(const struct scmi_protocol_handle *ph,
+				 u32 sensor_id, u8 trip_id, u64 trip_value);
+	int (*reading_get)(const struct scmi_protocol_handle *ph, u32 sensor_id,
+			   u64 *value);
+	int (*reading_get_timestamped)(const struct scmi_protocol_handle *ph,
+				       u32 sensor_id, u8 count,
+				       struct scmi_sensor_reading *readings);
+	int (*config_get)(const struct scmi_protocol_handle *ph,
+			  u32 sensor_id, u32 *sensor_config);
+	int (*config_set)(const struct scmi_protocol_handle *ph,
+			  u32 sensor_id, u32 sensor_config);
+};
+
+/**
+ * struct scmi_reset_proto_ops - represents the various operations provided
+ *	by SCMI Reset Protocol
+ *
+ * @num_domains_get: get the count of reset domains provided by SCMI
+ * @name_get: gets the name of a reset domain
+ * @latency_get: gets the reset latency for the specified reset domain
+ * @reset: resets the specified reset domain
+ * @assert: explicitly assert reset signal of the specified reset domain
+ * @deassert: explicitly deassert reset signal of the specified reset domain
+ */
+struct scmi_reset_proto_ops {
+	int (*num_domains_get)(const struct scmi_protocol_handle *ph);
+	char *(*name_get)(const struct scmi_protocol_handle *ph, u32 domain);
+	int (*latency_get)(const struct scmi_protocol_handle *ph, u32 domain);
+	int (*reset)(const struct scmi_protocol_handle *ph, u32 domain);
+	int (*assert)(const struct scmi_protocol_handle *ph, u32 domain);
+	int (*deassert)(const struct scmi_protocol_handle *ph, u32 domain);
+};
+
+/**
+ * struct scmi_voltage_info - describe one available SCMI Voltage Domain
+ *
+ * @id: the domain ID as advertised by the platform
+ * @segmented: defines the layout of the entries of array @levels_uv.
+ *	       - when True the entries are to be interpreted as triplets,
+ *	         each defining a segment representing a range of equally
+ *	         space voltages: <lowest_volts>, <highest_volt>, <step_uV>
+ *	       - when False the entries simply represent a single discrete
+ *	         supported voltage level
+ * @negative_volts_allowed: True if any of the entries of @levels_uv represent
+ *			    a negative voltage.
+ * @attributes: represents Voltage Domain advertised attributes
+ * @name: name assigned to the Voltage Domain by platform
+ * @num_levels: number of total entries in @levels_uv.
+ * @levels_uv: array of entries describing the available voltage levels for
+ *	       this domain.
+ */
+struct scmi_voltage_info {
+	unsigned int id;
+	bool segmented;
+	bool negative_volts_allowed;
+	unsigned int attributes;
+	char name[SCMI_MAX_STR_SIZE];
+	unsigned int num_levels;
+#define SCMI_VOLTAGE_SEGMENT_LOW	0
+#define SCMI_VOLTAGE_SEGMENT_HIGH	1
+#define SCMI_VOLTAGE_SEGMENT_STEP	2
+	int *levels_uv;
+};
+
+/**
+ * struct scmi_voltage_proto_ops - represents the various operations provided
+ * by SCMI Voltage Protocol
+ *
+ * @num_domains_get: get the count of voltage domains provided by SCMI
+ * @info_get: get the information of the specified domain
+ * @config_set: set the config for the specified domain
+ * @config_get: get the config of the specified domain
+ * @level_set: set the voltage level for the specified domain
+ * @level_get: get the voltage level of the specified domain
+ */
+struct scmi_voltage_proto_ops {
+	int (*num_domains_get)(const struct scmi_protocol_handle *ph);
+	const struct scmi_voltage_info __must_check *(*info_get)
+		(const struct scmi_protocol_handle *ph, u32 domain_id);
+	int (*config_set)(const struct scmi_protocol_handle *ph, u32 domain_id,
+			  u32 config);
+#define	SCMI_VOLTAGE_ARCH_STATE_OFF		0x0
+#define	SCMI_VOLTAGE_ARCH_STATE_ON		0x7
+	int (*config_get)(const struct scmi_protocol_handle *ph, u32 domain_id,
+			  u32 *config);
+	int (*level_set)(const struct scmi_protocol_handle *ph, u32 domain_id,
+			 u32 flags, s32 volt_uV);
+	int (*level_get)(const struct scmi_protocol_handle *ph, u32 domain_id,
+			 s32 *volt_uV);
+};
+
+/**
+ * struct scmi_handle - Handle returned to ARM SCMI clients for usage.
+ *
+ * @dev: pointer to the SCMI device_d
+ * @version: pointer to the structure containing SCMI version information
+ * @protocol_get: method to acquire a protocol and get specific
+ *		       operations and a dedicated protocol handler
+ */
+struct scmi_handle {
+	struct device_d *dev;
+	struct scmi_revision_info *version;
+
+	const void __must_check *
+		(*protocol_get)(struct scmi_device *sdev, u8 proto,
+				     struct scmi_protocol_handle **ph);
+};
+
+enum scmi_std_protocol {
+	SCMI_PROTOCOL_BASE = 0x10,
+	SCMI_PROTOCOL_POWER = 0x11,
+	SCMI_PROTOCOL_SYSTEM = 0x12,
+	SCMI_PROTOCOL_PERF = 0x13,
+	SCMI_PROTOCOL_CLOCK = 0x14,
+	SCMI_PROTOCOL_SENSOR = 0x15,
+	SCMI_PROTOCOL_RESET = 0x16,
+	SCMI_PROTOCOL_VOLTAGE = 0x17,
+};
+
+enum scmi_system_events {
+	SCMI_SYSTEM_SHUTDOWN,
+	SCMI_SYSTEM_COLDRESET,
+	SCMI_SYSTEM_WARMRESET,
+	SCMI_SYSTEM_POWERUP,
+	SCMI_SYSTEM_SUSPEND,
+	SCMI_SYSTEM_MAX
+};
+
+struct scmi_device {
+	u8 protocol_id;
+	const char *name;
+	struct device_d dev;
+	struct scmi_handle *handle;
+};
+
+#define to_scmi_dev(d) container_of(d, struct scmi_device, dev)
+
+struct scmi_device *
+scmi_device_alloc(struct device_node *np, struct device_d *parent, int protocol,
+		  const char *name);
+void scmi_device_destroy(struct scmi_device *scmi_dev);
+
+struct scmi_device_id {
+	u8 protocol_id;
+	const char *name;
+};
+
+struct scmi_driver {
+	const char *name;
+	int (*probe)(struct scmi_device *sdev);
+	void (*remove)(struct scmi_device *sdev);
+	const struct scmi_device_id *id_table;
+
+	struct driver_d driver;
+};
+
+#define to_scmi_driver(d) container_of(d, struct scmi_driver, driver)
+
+#if IS_REACHABLE(CONFIG_ARM_SCMI_PROTOCOL)
+int scmi_driver_register(struct scmi_driver *driver);
+#else
+static inline int
+scmi_driver_register(struct scmi_driver *driver)
+{
+	return -EINVAL;
+}
+
+#endif /* CONFIG_ARM_SCMI_PROTOCOL */
+
+#define scmi_register(driver) \
+	scmi_driver_register(driver)
+
+/**
+ * coredevice_scmi_driver() - Helper macro for registering a scmi driver
+ * @__scmi_driver: scmi_driver structure
+ *
+ * Helper macro for scmi drivers to set up proper module init / exit
+ * functions.  Replaces module_init() and module_exit() and keeps people from
+ * printing pointless things to the kernel log when their driver is loaded.
+ */
+#define coredevice_scmi_driver(__scmi_driver)	\
+	register_driver_macro(coredevice,scmi,__scmi_driver)
+
+#define core_scmi_driver(__scmi_driver)	\
+	register_driver_macro(core,scmi,__scmi_driver)
+
+/**
+ * module_scmi_protocol() - Helper macro for registering a scmi protocol
+ * @__scmi_protocol: scmi_protocol structure
+ *
+ * Helper macro for scmi drivers to set up proper module init / exit
+ * functions.  Replaces module_init() and module_exit() and keeps people from
+ * printing pointless things to the kernel log when their driver is loaded.
+ */
+#define module_scmi_protocol(__scmi_protocol)	\
+	module_driver(__scmi_protocol,		\
+		      scmi_protocol_register, scmi_protocol_unregister)
+
+struct scmi_protocol;
+int scmi_protocol_register(const struct scmi_protocol *proto);
+void scmi_protocol_unregister(const struct scmi_protocol *proto);
+
+#endif /* _LINUX_SCMI_PROTOCOL_H */
diff --git a/include/linux/slab.h b/include/linux/slab.h
index 348770a3a28c..eb14c58e340f 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -103,4 +103,7 @@ static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
 	return calloc(n, size);
 }
 
+#define kstrdup_const(str, flags) strdup(str)
+#define kfree_const(ptr) kfree((void *)ptr)
+
 #endif /* _LINUX_SLAB_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

