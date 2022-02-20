Delivery-date: Sun, 20 Feb 2022 13:50:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlfy-004x0E-8Y
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:50:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlfs-00028Z-Kk
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:50:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cuQDBvmMdOGRMAY1jxuR8yXo7I+XHNXfwhfpixB8M0=; b=hzHMUh9tNnh3qe
	9Enrd66yhTUrYth/8vlDlZLgEznWuLfQ+URu3m4zaNFh4km6pHQ/t04rAg31dqd06posoKu5+G5WE
	HKYl9XrH5plB7zJIH//jIvx3MR+VATqFdINsDILooSkfbuuSvT9JEgI1oT4wGT984CTAJGY0+Gk1n
	2NdG4fWPoVT6kBobssN1O3ya6lA/Bfwh2VvVfpmnY3uF7W565gpuBkgBv6EyZdNGm2Pyhw8ymGxRs
	tt4AKa7loLEj4Y+17MLgw3ijU9IIqUgRZmBCzA8hKfw5Rm2Vr6DXNtDAcKsfkrVHSFyFMY/YMt/uF
	ZWCKSbg8nFKaYLMcQBeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLle8-001Ild-CJ; Sun, 20 Feb 2022 12:49:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld1-001I4F-Tx
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a8-Jb; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQ0-Bv; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:27 +0100
Message-Id: <20220220124736.3052502-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044752_343081_679C2FA0 
X-CRM114-Status: GOOD (  28.09  )
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
Subject: [PATCH 15/24] regulator: add SCMI regulator driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import the Linux v5.13 state of the SCMI clock regulator driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/arm_scmi/Makefile  |   2 +-
 drivers/firmware/arm_scmi/common.h  |   1 +
 drivers/firmware/arm_scmi/driver.c  |   1 +
 drivers/firmware/arm_scmi/voltage.c | 379 +++++++++++++++++++++++++++
 drivers/regulator/Kconfig           |   9 +
 drivers/regulator/Makefile          |   1 +
 drivers/regulator/scmi-regulator.c  | 391 ++++++++++++++++++++++++++++
 7 files changed, 783 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_scmi/voltage.c
 create mode 100644 drivers/regulator/scmi-regulator.c

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 968a7eb7771e..4b21e6609a1e 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -3,7 +3,7 @@ scmi-bus-y = bus.o
 scmi-driver-y = driver.o
 scmi-transport-y = shmem.o
 scmi-transport-$(CONFIG_ARM_SMCCC) += smc.o
-scmi-protocols-y = base.o reset.o clock.o
+scmi-protocols-y = base.o reset.o clock.o voltage.o
 
 scmi-module-objs := $(scmi-bus-y) $(scmi-driver-y) $(scmi-protocols-y) \
 		    $(scmi-transport-y)
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 7ac9fd1bc961..5004a71dc910 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -234,6 +234,7 @@ void __exit scmi_bus_exit(void);
 DECLARE_SCMI_REGISTER(base);
 DECLARE_SCMI_REGISTER(reset);
 DECLARE_SCMI_REGISTER(clock);
+DECLARE_SCMI_REGISTER(voltage);
 
 #define DEFINE_SCMI_PROTOCOL_REGISTER(name, proto)	\
 static const struct scmi_protocol *__this_proto = &(proto);	\
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index ca71e1a279ac..ef3d76b3f439 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -1261,6 +1261,7 @@ static int __init scmi_bus_driver_init(void)
 
 	scmi_reset_register();
 	scmi_clock_register();
+	scmi_voltage_register();
 
 	return 0;
 }
diff --git a/drivers/firmware/arm_scmi/voltage.c b/drivers/firmware/arm_scmi/voltage.c
new file mode 100644
index 000000000000..a3d78db28f26
--- /dev/null
+++ b/drivers/firmware/arm_scmi/voltage.c
@@ -0,0 +1,379 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Voltage Protocol
+ *
+ * Copyright (C) 2020-2021 ARM Ltd.
+ */
+
+#include <common.h>
+#include <linux/scmi_protocol.h>
+
+#include "common.h"
+
+#define VOLTAGE_DOMS_NUM_MASK		GENMASK(15, 0)
+#define REMAINING_LEVELS_MASK		GENMASK(31, 16)
+#define RETURNED_LEVELS_MASK		GENMASK(11, 0)
+
+enum scmi_voltage_protocol_cmd {
+	VOLTAGE_DOMAIN_ATTRIBUTES = 0x3,
+	VOLTAGE_DESCRIBE_LEVELS = 0x4,
+	VOLTAGE_CONFIG_SET = 0x5,
+	VOLTAGE_CONFIG_GET = 0x6,
+	VOLTAGE_LEVEL_SET = 0x7,
+	VOLTAGE_LEVEL_GET = 0x8,
+};
+
+#define NUM_VOLTAGE_DOMAINS(x)	((u16)(FIELD_GET(VOLTAGE_DOMS_NUM_MASK, (x))))
+
+struct scmi_msg_resp_domain_attributes {
+	__le32 attr;
+	u8 name[SCMI_MAX_STR_SIZE];
+};
+
+struct scmi_msg_cmd_describe_levels {
+	__le32 domain_id;
+	__le32 level_index;
+};
+
+struct scmi_msg_resp_describe_levels {
+	__le32 flags;
+#define NUM_REMAINING_LEVELS(f)	((u16)(FIELD_GET(REMAINING_LEVELS_MASK, (f))))
+#define NUM_RETURNED_LEVELS(f)	((u16)(FIELD_GET(RETURNED_LEVELS_MASK, (f))))
+#define SUPPORTS_SEGMENTED_LEVELS(f)	((f) & BIT(12))
+	__le32 voltage[];
+};
+
+struct scmi_msg_cmd_config_set {
+	__le32 domain_id;
+	__le32 config;
+};
+
+struct scmi_msg_cmd_level_set {
+	__le32 domain_id;
+	__le32 flags;
+	__le32 voltage_level;
+};
+
+struct voltage_info {
+	unsigned int version;
+	unsigned int num_domains;
+	struct scmi_voltage_info *domains;
+};
+
+static int scmi_protocol_attributes_get(const struct scmi_protocol_handle *ph,
+					struct voltage_info *vinfo)
+{
+	int ret;
+	struct scmi_xfer *t;
+
+	ret = ph->xops->xfer_get_init(ph, PROTOCOL_ATTRIBUTES, 0,
+				      sizeof(__le32), &t);
+	if (ret)
+		return ret;
+
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		vinfo->num_domains =
+			NUM_VOLTAGE_DOMAINS(get_unaligned_le32(t->rx.buf));
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_init_voltage_levels(struct device_d *dev,
+				    struct scmi_voltage_info *v,
+				    u32 num_returned, u32 num_remaining,
+				    bool segmented)
+{
+	u32 num_levels;
+
+	num_levels = num_returned + num_remaining;
+	/*
+	 * segmented levels entries are represented by a single triplet
+	 * returned all in one go.
+	 */
+	if (!num_levels ||
+	    (segmented && (num_remaining || num_returned != 3))) {
+		dev_err(dev,
+			"Invalid level descriptor(%d/%d/%d) for voltage dom %d\n",
+			num_levels, num_returned, num_remaining, v->id);
+		return -EINVAL;
+	}
+
+	v->levels_uv = kcalloc(num_levels, sizeof(u32), GFP_KERNEL);
+	if (!v->levels_uv)
+		return -ENOMEM;
+
+	v->num_levels = num_levels;
+	v->segmented = segmented;
+
+	return 0;
+}
+
+static int scmi_voltage_descriptors_get(const struct scmi_protocol_handle *ph,
+					struct voltage_info *vinfo)
+{
+	int ret, dom;
+	struct scmi_xfer *td, *tl;
+	struct device_d *dev = ph->dev;
+	struct scmi_msg_resp_domain_attributes *resp_dom;
+	struct scmi_msg_resp_describe_levels *resp_levels;
+
+	ret = ph->xops->xfer_get_init(ph, VOLTAGE_DOMAIN_ATTRIBUTES,
+				      sizeof(__le32), sizeof(*resp_dom), &td);
+	if (ret)
+		return ret;
+	resp_dom = td->rx.buf;
+
+	ret = ph->xops->xfer_get_init(ph, VOLTAGE_DESCRIBE_LEVELS,
+				      sizeof(__le64), 0, &tl);
+	if (ret)
+		goto outd;
+	resp_levels = tl->rx.buf;
+
+	for (dom = 0; dom < vinfo->num_domains; dom++) {
+		u32 desc_index = 0;
+		u16 num_returned = 0, num_remaining = 0;
+		struct scmi_msg_cmd_describe_levels *cmd;
+		struct scmi_voltage_info *v;
+
+		/* Retrieve domain attributes at first ... */
+		put_unaligned_le32(dom, td->tx.buf);
+		ret = ph->xops->do_xfer(ph, td);
+		/* Skip domain on comms error */
+		if (ret)
+			continue;
+
+		v = vinfo->domains + dom;
+		v->id = dom;
+		v->attributes = le32_to_cpu(resp_dom->attr);
+		strlcpy(v->name, resp_dom->name, SCMI_MAX_STR_SIZE);
+
+		cmd = tl->tx.buf;
+		/* ...then retrieve domain levels descriptions */
+		do {
+			u32 flags;
+			int cnt;
+
+			cmd->domain_id = cpu_to_le32(v->id);
+			cmd->level_index = desc_index;
+			ret = ph->xops->do_xfer(ph, tl);
+			if (ret)
+				break;
+
+			flags = le32_to_cpu(resp_levels->flags);
+			num_returned = NUM_RETURNED_LEVELS(flags);
+			num_remaining = NUM_REMAINING_LEVELS(flags);
+
+			/* Allocate space for num_levels if not already done */
+			if (!v->num_levels) {
+				ret = scmi_init_voltage_levels(dev, v,
+							       num_returned,
+							       num_remaining,
+					      SUPPORTS_SEGMENTED_LEVELS(flags));
+				if (ret)
+					break;
+			}
+
+			if (desc_index + num_returned > v->num_levels) {
+				dev_err(ph->dev,
+					"No. of voltage levels can't exceed %d\n",
+					v->num_levels);
+				ret = -EINVAL;
+				break;
+			}
+
+			for (cnt = 0; cnt < num_returned; cnt++) {
+				s32 val;
+
+				val =
+				    (s32)le32_to_cpu(resp_levels->voltage[cnt]);
+				v->levels_uv[desc_index + cnt] = val;
+				if (val < 0)
+					v->negative_volts_allowed = true;
+			}
+
+			desc_index += num_returned;
+
+			ph->xops->reset_rx_to_maxsz(ph, tl);
+			/* check both to avoid infinite loop due to buggy fw */
+		} while (num_returned && num_remaining);
+
+		if (ret) {
+			v->num_levels = 0;
+			kfree(v->levels_uv);
+		}
+
+		ph->xops->reset_rx_to_maxsz(ph, td);
+	}
+
+	ph->xops->xfer_put(ph, tl);
+outd:
+	ph->xops->xfer_put(ph, td);
+
+	return ret;
+}
+
+static int __scmi_voltage_get_u32(const struct scmi_protocol_handle *ph,
+				  u8 cmd_id, u32 domain_id, u32 *value)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct voltage_info *vinfo = ph->get_priv(ph);
+
+	if (domain_id >= vinfo->num_domains)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, cmd_id, sizeof(__le32), 0, &t);
+	if (ret)
+		return ret;
+
+	put_unaligned_le32(domain_id, t->tx.buf);
+	ret = ph->xops->do_xfer(ph, t);
+	if (!ret)
+		*value = get_unaligned_le32(t->rx.buf);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_voltage_config_set(const struct scmi_protocol_handle *ph,
+				   u32 domain_id, u32 config)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct voltage_info *vinfo = ph->get_priv(ph);
+	struct scmi_msg_cmd_config_set *cmd;
+
+	if (domain_id >= vinfo->num_domains)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, VOLTAGE_CONFIG_SET,
+				     sizeof(*cmd), 0, &t);
+	if (ret)
+		return ret;
+
+	cmd = t->tx.buf;
+	cmd->domain_id = cpu_to_le32(domain_id);
+	cmd->config = cpu_to_le32(config & GENMASK(3, 0));
+
+	ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_voltage_config_get(const struct scmi_protocol_handle *ph,
+				   u32 domain_id, u32 *config)
+{
+	return __scmi_voltage_get_u32(ph, VOLTAGE_CONFIG_GET,
+				      domain_id, config);
+}
+
+static int scmi_voltage_level_set(const struct scmi_protocol_handle *ph,
+				  u32 domain_id, u32 flags, s32 volt_uV)
+{
+	int ret;
+	struct scmi_xfer *t;
+	struct voltage_info *vinfo = ph->get_priv(ph);
+	struct scmi_msg_cmd_level_set *cmd;
+
+	if (domain_id >= vinfo->num_domains)
+		return -EINVAL;
+
+	ret = ph->xops->xfer_get_init(ph, VOLTAGE_LEVEL_SET,
+				      sizeof(*cmd), 0, &t);
+	if (ret)
+		return ret;
+
+	cmd = t->tx.buf;
+	cmd->domain_id = cpu_to_le32(domain_id);
+	cmd->flags = cpu_to_le32(flags);
+	cmd->voltage_level = cpu_to_le32(volt_uV);
+
+	ret = ph->xops->do_xfer(ph, t);
+
+	ph->xops->xfer_put(ph, t);
+	return ret;
+}
+
+static int scmi_voltage_level_get(const struct scmi_protocol_handle *ph,
+				  u32 domain_id, s32 *volt_uV)
+{
+	return __scmi_voltage_get_u32(ph, VOLTAGE_LEVEL_GET,
+				      domain_id, (u32 *)volt_uV);
+}
+
+static const struct scmi_voltage_info * __must_check
+scmi_voltage_info_get(const struct scmi_protocol_handle *ph, u32 domain_id)
+{
+	struct voltage_info *vinfo = ph->get_priv(ph);
+
+	if (domain_id >= vinfo->num_domains ||
+	    !vinfo->domains[domain_id].num_levels)
+		return NULL;
+
+	return vinfo->domains + domain_id;
+}
+
+static int scmi_voltage_domains_num_get(const struct scmi_protocol_handle *ph)
+{
+	struct voltage_info *vinfo = ph->get_priv(ph);
+
+	return vinfo->num_domains;
+}
+
+static struct scmi_voltage_proto_ops voltage_proto_ops = {
+	.num_domains_get = scmi_voltage_domains_num_get,
+	.info_get = scmi_voltage_info_get,
+	.config_set = scmi_voltage_config_set,
+	.config_get = scmi_voltage_config_get,
+	.level_set = scmi_voltage_level_set,
+	.level_get = scmi_voltage_level_get,
+};
+
+static int scmi_voltage_protocol_init(const struct scmi_protocol_handle *ph)
+{
+	int ret;
+	u32 version;
+	struct voltage_info *vinfo;
+
+	ret = ph->xops->version_get(ph, &version);
+	if (ret)
+		return ret;
+
+	dev_dbg(ph->dev, "Voltage Version %d.%d\n",
+		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
+
+	vinfo = kzalloc(sizeof(*vinfo), GFP_KERNEL);
+	if (!vinfo)
+		return -ENOMEM;
+	vinfo->version = version;
+
+	ret = scmi_protocol_attributes_get(ph, vinfo);
+	if (ret)
+		return ret;
+
+	if (vinfo->num_domains) {
+		vinfo->domains = kcalloc(vinfo->num_domains,
+					      sizeof(*vinfo->domains),
+					      GFP_KERNEL);
+		if (!vinfo->domains)
+			return -ENOMEM;
+		ret = scmi_voltage_descriptors_get(ph, vinfo);
+		if (ret)
+			return ret;
+	} else {
+		dev_warn(ph->dev, "No Voltage domains found.\n");
+	}
+
+	return ph->set_priv(ph, vinfo);
+}
+
+static const struct scmi_protocol scmi_voltage = {
+	.id = SCMI_PROTOCOL_VOLTAGE,
+	.instance_init = &scmi_voltage_protocol_init,
+	.ops = &voltage_proto_ops,
+};
+
+DEFINE_SCMI_PROTOCOL_REGISTER(voltage, scmi_voltage)
diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index c468e459153b..38a47b7bc2ed 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -55,4 +55,13 @@ config REGULATOR_ANATOP
 	  regulators. It is recommended that this option be
 	  enabled on i.MX6 platform.
 
+config REGULATOR_ARM_SCMI
+	tristate "SCMI based regulator driver"
+	depends on ARM_SCMI_PROTOCOL && OFDEVICE
+	help
+	  This adds the regulator driver support for ARM platforms using SCMI
+	  protocol for device voltage management.
+	  This driver uses SCMI Message Protocol driver to interact with the
+	  firmware providing the device Voltage functionality.
+
 endif
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 7b5d527cb1ba..5eaa657ad162 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_REGULATOR_STPMIC1) += stpmic1_regulator.o
 obj-$(CONFIG_REGULATOR_ANATOP) += anatop-regulator.o
 obj-$(CONFIG_REGULATOR_STM32_PWR) += stm32-pwr.o
 obj-$(CONFIG_REGULATOR_STM32_VREFBUF) += stm32-vrefbuf.o
+obj-$(CONFIG_REGULATOR_ARM_SCMI) += scmi-regulator.o
diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
new file mode 100644
index 000000000000..3e6fd3ec6084
--- /dev/null
+++ b/drivers/regulator/scmi-regulator.c
@@ -0,0 +1,391 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// System Control and Management Interface (SCMI) based regulator driver
+//
+// Copyright (C) 2020-2021 ARM Ltd.
+//
+// Implements a regulator driver on top of the SCMI Voltage Protocol.
+//
+// The ARM SCMI Protocol aims in general to hide as much as possible all the
+// underlying operational details while providing an abstracted interface for
+// its users to operate upon: as a consequence the resulting operational
+// capabilities and configurability of this regulator device are much more
+// limited than the ones usually available on a standard physical regulator.
+//
+// The supported SCMI regulator ops are restricted to the bare minimum:
+//
+//  - 'status_ops': enable/disable/is_enabled
+//  - 'voltage_ops': get_voltage_sel/set_voltage_sel
+//		     list_voltage/map_voltage
+//
+// Each SCMI regulator instance is associated, through the means of a proper DT
+// entry description, to a specific SCMI Voltage Domain.
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <of.h>
+#include <regulator.h>
+#include <linux/regulator/of_regulator.h>
+#include <linux/scmi_protocol.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+static const struct scmi_voltage_proto_ops *voltage_ops;
+
+struct scmi_reg_desc {
+	struct regulator_desc desc;
+	const char *name;
+	const char *supply_name;
+};
+
+struct scmi_regulator {
+	u32 id;
+	struct scmi_device *sdev;
+	struct scmi_protocol_handle *ph;
+	struct regulator_dev rdev;
+	struct device_node *device_node;
+	struct scmi_reg_desc sdesc;
+};
+
+struct scmi_regulator_info {
+	int num_doms;
+	struct scmi_regulator **sregv;
+};
+
+static inline struct scmi_regulator *to_scmi_regulator(struct regulator_dev *rdev)
+{
+	return container_of(rdev, struct scmi_regulator, rdev);
+}
+
+static int scmi_reg_enable(struct regulator_dev *rdev)
+{
+	struct scmi_regulator *sreg = to_scmi_regulator(rdev);
+
+	return voltage_ops->config_set(sreg->ph, sreg->id,
+				       SCMI_VOLTAGE_ARCH_STATE_ON);
+}
+
+static int scmi_reg_disable(struct regulator_dev *rdev)
+{
+	struct scmi_regulator *sreg = to_scmi_regulator(rdev);
+
+	return voltage_ops->config_set(sreg->ph, sreg->id,
+				       SCMI_VOLTAGE_ARCH_STATE_OFF);
+}
+
+static int scmi_reg_is_enabled(struct regulator_dev *rdev)
+{
+	int ret;
+	u32 config;
+	struct scmi_regulator *sreg = to_scmi_regulator(rdev);
+	struct scmi_reg_desc *sdesc = &sreg->sdesc;
+
+	ret = voltage_ops->config_get(sreg->ph, sreg->id, &config);
+	if (ret) {
+		dev_err(&sreg->sdev->dev,
+			"Error %d reading regulator %s status.\n",
+			ret, sdesc->name);
+		return ret;
+	}
+
+	return config & SCMI_VOLTAGE_ARCH_STATE_ON;
+}
+
+static int scmi_reg_get_voltage_sel(struct regulator_dev *rdev)
+{
+	int ret;
+	s32 volt_uV;
+	struct scmi_regulator *sreg = to_scmi_regulator(rdev);
+
+	ret = voltage_ops->level_get(sreg->ph, sreg->id, &volt_uV);
+	if (ret)
+		return ret;
+
+	return sreg->sdesc.desc.ops->map_voltage(rdev, volt_uV, volt_uV);
+}
+
+static int scmi_reg_set_voltage_sel(struct regulator_dev *rdev,
+				    unsigned int selector)
+{
+	s32 volt_uV;
+	struct scmi_regulator *sreg = to_scmi_regulator(rdev);
+
+	volt_uV = sreg->sdesc.desc.ops->list_voltage(rdev, selector);
+	if (volt_uV <= 0)
+		return -EINVAL;
+
+	return voltage_ops->level_set(sreg->ph, sreg->id, 0x0, volt_uV);
+}
+
+static const struct regulator_ops scmi_reg_fixed_ops = {
+	.enable = scmi_reg_enable,
+	.disable = scmi_reg_disable,
+	.is_enabled = scmi_reg_is_enabled,
+};
+
+static const struct regulator_ops scmi_reg_linear_ops = {
+	.enable = scmi_reg_enable,
+	.disable = scmi_reg_disable,
+	.is_enabled = scmi_reg_is_enabled,
+	.get_voltage_sel = scmi_reg_get_voltage_sel,
+	.set_voltage_sel = scmi_reg_set_voltage_sel,
+	.list_voltage = regulator_list_voltage_linear,
+	.map_voltage = regulator_map_voltage_linear,
+};
+
+static const struct regulator_ops scmi_reg_discrete_ops = {
+	.enable = scmi_reg_enable,
+	.disable = scmi_reg_disable,
+	.is_enabled = scmi_reg_is_enabled,
+	.get_voltage_sel = scmi_reg_get_voltage_sel,
+	.set_voltage_sel = scmi_reg_set_voltage_sel,
+	.list_voltage = regulator_list_voltage_table,
+	.map_voltage = regulator_map_voltage_iterate,
+};
+
+static int
+scmi_config_linear_regulator_mappings(struct scmi_regulator *sreg,
+				      const struct scmi_voltage_info *vinfo)
+{
+	struct regulator_desc *desc = &sreg->sdesc.desc;
+	s32 delta_uV;
+
+	/*
+	 * Note that SCMI voltage domains describable by linear ranges
+	 * (segments) {low, high, step} are guaranteed to come in one single
+	 * triplet by the SCMI Voltage Domain protocol support itself.
+	 */
+
+	delta_uV = (vinfo->levels_uv[SCMI_VOLTAGE_SEGMENT_HIGH] -
+			vinfo->levels_uv[SCMI_VOLTAGE_SEGMENT_LOW]);
+
+	/* Rule out buggy negative-intervals answers from fw */
+	if (delta_uV < 0) {
+		dev_err(&sreg->sdev->dev,
+			"Invalid volt-range %d-%duV for domain %d\n",
+			vinfo->levels_uv[SCMI_VOLTAGE_SEGMENT_LOW],
+			vinfo->levels_uv[SCMI_VOLTAGE_SEGMENT_HIGH],
+			sreg->id);
+		return -EINVAL;
+	}
+
+	if (!delta_uV) {
+		/* Just one fixed voltage exposed by SCMI */
+		desc->fixed_uV =
+			vinfo->levels_uv[SCMI_VOLTAGE_SEGMENT_LOW];
+		desc->n_voltages = 1;
+		desc->ops = &scmi_reg_fixed_ops;
+	} else {
+		/* One simple linear mapping. */
+		desc->min_uV =
+			vinfo->levels_uv[SCMI_VOLTAGE_SEGMENT_LOW];
+		desc->uV_step =
+			vinfo->levels_uv[SCMI_VOLTAGE_SEGMENT_STEP];
+		desc->linear_min_sel = 0;
+		desc->n_voltages = (delta_uV / desc->uV_step) + 1;
+		desc->ops = &scmi_reg_linear_ops;
+	}
+
+	return 0;
+}
+
+static int
+scmi_config_discrete_regulator_mappings(struct scmi_regulator *sreg,
+					const struct scmi_voltage_info *vinfo)
+{
+	struct regulator_desc *desc = &sreg->sdesc.desc;
+
+	/* Discrete non linear levels are mapped to volt_table */
+	desc->n_voltages = vinfo->num_levels;
+
+	if (desc->n_voltages > 1) {
+		desc->volt_table = (const unsigned int *)vinfo->levels_uv;
+		desc->ops = &scmi_reg_discrete_ops;
+	} else {
+		desc->fixed_uV = vinfo->levels_uv[0];
+		desc->ops = &scmi_reg_fixed_ops;
+	}
+
+	return 0;
+}
+
+static int scmi_regulator_common_init(struct scmi_regulator *sreg)
+{
+	int ret;
+	struct device_d *dev = &sreg->sdev->dev;
+	const struct scmi_voltage_info *vinfo;
+	struct scmi_reg_desc *sdesc = &sreg->sdesc;
+
+	vinfo = voltage_ops->info_get(sreg->ph, sreg->id);
+	if (!vinfo) {
+		dev_warn(dev, "Failure to get voltage domain %d\n",
+			 sreg->id);
+		return -ENODEV;
+	}
+
+	/*
+	 * Regulator framework does not fully support negative voltages
+	 * so we discard any voltage domain reported as supporting negative
+	 * voltages: as a consequence each levels_uv entry is guaranteed to
+	 * be non-negative from here on.
+	 */
+	if (vinfo->negative_volts_allowed) {
+		dev_warn(dev, "Negative voltages NOT supported...skip %s\n",
+			 sreg->device_node->full_name);
+		return -EOPNOTSUPP;
+	}
+
+	sdesc->name = basprintf("%s", vinfo->name);
+	if (!sdesc->name)
+		return -ENOMEM;
+
+	if (vinfo->segmented)
+		ret = scmi_config_linear_regulator_mappings(sreg, vinfo);
+	else
+		ret = scmi_config_discrete_regulator_mappings(sreg, vinfo);
+
+	return ret;
+}
+
+static int process_scmi_regulator_of_node(struct scmi_device *sdev,
+					  struct scmi_protocol_handle *ph,
+					  struct device_node *np,
+					  struct scmi_regulator_info *rinfo)
+{
+	u32 dom, ret;
+
+	ret = of_property_read_u32(np, "reg", &dom);
+	if (ret)
+		return ret;
+
+	if (dom >= rinfo->num_doms)
+		return -ENODEV;
+
+	if (rinfo->sregv[dom]) {
+		dev_err(&sdev->dev,
+			"SCMI Voltage Domain %d already in use. Skipping: %s\n",
+			dom, np->full_name);
+		return -EINVAL;
+	}
+
+	rinfo->sregv[dom] = kzalloc(sizeof(struct scmi_regulator), GFP_KERNEL);
+	if (!rinfo->sregv[dom])
+		return -ENOMEM;
+
+	rinfo->sregv[dom]->id = dom;
+	rinfo->sregv[dom]->sdev = sdev;
+	rinfo->sregv[dom]->ph = ph;
+
+	/* get hold of good nodes */
+	rinfo->sregv[dom]->device_node = np;
+
+	dev_dbg(&sdev->dev,
+		"Found SCMI Regulator entry -- OF node [%d] -> %s\n",
+		dom, np->full_name);
+
+	return 0;
+}
+
+static int scmi_regulator_probe(struct scmi_device *sdev)
+{
+	int d, ret, num_doms;
+	struct device_node *np, *child;
+	const struct scmi_handle *handle = sdev->handle;
+	struct scmi_regulator_info *rinfo;
+	struct scmi_protocol_handle *ph;
+	struct scmi_reg_desc *sdesc;
+
+	if (!handle)
+		return -ENODEV;
+
+	voltage_ops = handle->protocol_get(sdev, SCMI_PROTOCOL_VOLTAGE, &ph);
+	if (IS_ERR(voltage_ops))
+		return PTR_ERR(voltage_ops);
+
+	num_doms = voltage_ops->num_domains_get(ph);
+	if (num_doms <= 0) {
+		if (!num_doms) {
+			dev_err(&sdev->dev,
+				"number of voltage domains invalid\n");
+			num_doms = -EINVAL;
+		} else {
+			dev_err(&sdev->dev,
+				"failed to get voltage domains - err:%d\n",
+				num_doms);
+		}
+
+		return num_doms;
+	}
+
+	rinfo = kzalloc(sizeof(*rinfo), GFP_KERNEL);
+	if (!rinfo)
+		return -ENOMEM;
+
+	/* Allocate pointers array for all possible domains */
+	rinfo->sregv = kcalloc(num_doms, sizeof(void *), GFP_KERNEL);
+	if (!rinfo->sregv)
+		return -ENOMEM;
+
+	rinfo->num_doms = num_doms;
+
+	/*
+	 * Start collecting into rinfo->sregv possibly good SCMI Regulators as
+	 * described by a well-formed DT entry and associated with an existing
+	 * plausible SCMI Voltage Domain number, all belonging to this SCMI
+	 * platform instance node (handle->dev->of_node).
+	 */
+	np = of_find_node_by_name(handle->dev->device_node, "regulators");
+	for_each_child_of_node(np, child) {
+		ret = process_scmi_regulator_of_node(sdev, ph, child, rinfo);
+		/* abort on any mem issue */
+		if (ret == -ENOMEM)
+			return ret;
+	}
+
+	/*
+	 * Register a regulator for each valid regulator-DT-entry that we
+	 * can successfully reach via SCMI and has a valid associated voltage
+	 * domain.
+	 */
+	for (d = 0; d < num_doms; d++) {
+		struct scmi_regulator *sreg = rinfo->sregv[d];
+
+		/* Skip empty slots */
+		if (!sreg)
+			continue;
+
+		sdesc = &sreg->sdesc;
+
+		ret = scmi_regulator_common_init(sreg);
+		/* Skip invalid voltage domains */
+		if (ret)
+			continue;
+
+		ret = of_regulator_register(&sreg->rdev, np);
+		if (ret)
+			continue;
+
+		dev_info(&sdev->dev,
+			 "Regulator %s registered for domain [%d]\n",
+			 sreg->sdesc.name, sreg->id);
+	}
+
+	return 0;
+}
+
+static const struct scmi_device_id scmi_regulator_id_table[] = {
+	{ SCMI_PROTOCOL_VOLTAGE,  "regulator" },
+	{ },
+};
+
+static struct scmi_driver scmi_drv = {
+	.name		= "scmi-regulator",
+	.probe		= scmi_regulator_probe,
+	.id_table	= scmi_regulator_id_table,
+};
+core_scmi_driver(scmi_drv);
+
+MODULE_AUTHOR("Cristian Marussi <cristian.marussi@arm.com>");
+MODULE_DESCRIPTION("ARM SCMI regulator driver");
+MODULE_LICENSE("GPL v2");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

