Delivery-date: Wed, 28 May 2025 16:36:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHt8-001Dfe-2v
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:36:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHt3-00029I-TU
	for lore@pengutronix.de; Wed, 28 May 2025 16:36:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bj/mvR8D/yFtVAOcG6SFbejK8PO9a1eNYRAdl/PZH7Q=; b=TITQwNGX6hjteYT7r2dPuJUVnz
	2Eh6cqRSxXPaKzLEzA54o7oMiV4b7YTyJnwPllu3vjqjMR5S7IE9E5/47pSm6QP9D/4l8OrTUsjww
	N+TjXDTAPHjI8K3F6CDpTGov+0RYF2alQDMFqypQSWgh96hzYBvA8gtPVDSc9ExFAGlWQPWvtYlfX
	uJTV4rtnPrLMShzk/4zq90XOJBncznHS4A2EFjVbk8mcjC3CraQnfyzAulDNtD2mkiu7uKTWYB/1z
	UcFxSJOUM1KgNBscz8l0TOwFJqosQUt9gdLIpBRyhBla+RLBPDw8KbUi2vLoPi+FZWqE4M2ypwSEy
	1dE5Sa7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHsN-0000000DQDg-0NeV;
	Wed, 28 May 2025 14:35:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHns-0000000DPDw-0vCr
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:30:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-0006F4-Fs; Wed, 28 May 2025 16:30:45 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-000bXm-0w;
	Wed, 28 May 2025 16:30:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKHnp-001qOC-0e;
	Wed, 28 May 2025 16:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 16:30:37 +0200
Message-Id: <20250528143043.434446-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528143043.434446-1-a.fatoum@pengutronix.de>
References: <20250528143043.434446-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_073048_596629_9568D932 
X-CRM114-Status: GOOD (  25.32  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/10] common: add barebox TLV support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox TLV is a scheme for storing factory data on non-volatile
storage. Unlike state, it's meant to be read-only and if content
is limited to already specified tags, it can be extended later on,
without modifying the bootloader binary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../bindings/nvmem/barebox,tlv.yaml           |  58 +++++
 common/Kconfig                                |  24 ++
 common/Makefile                               |   1 +
 common/tlv/Makefile                           |   4 +
 common/tlv/barebox.c                          | 192 ++++++++++++++++
 common/tlv/bus.c                              | 133 +++++++++++
 common/tlv/drv.c                              |  49 ++++
 common/tlv/parser.c                           | 211 ++++++++++++++++++
 common/tlv/register.c                         |  94 ++++++++
 include/string.h                              |   5 +
 include/tlv/format.h                          |  69 ++++++
 include/tlv/tlv.h                             |  97 ++++++++
 test/self/Kconfig                             |   7 +
 test/self/Makefile                            |   1 +
 test/self/tlv.c                               |  89 ++++++++
 test/self/tlv.dts                             |  27 +++
 16 files changed, 1061 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
 create mode 100644 common/tlv/Makefile
 create mode 100644 common/tlv/barebox.c
 create mode 100644 common/tlv/bus.c
 create mode 100644 common/tlv/drv.c
 create mode 100644 common/tlv/parser.c
 create mode 100644 common/tlv/register.c
 create mode 100644 include/tlv/format.h
 create mode 100644 include/tlv/tlv.h
 create mode 100644 test/self/tlv.c
 create mode 100644 test/self/tlv.dts

diff --git a/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
new file mode 100644
index 000000000000..b54ab600e309
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://barebox.org/schemas/nvmem/barebox,tlv.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: barebox TLV factory data
+
+description: |
+  barebox TLV is a scheme for storing factory data on non-volatile
+  storage. Unlike state, it's meant to be read-only and if content
+  is limited to already specified tags, it can be extended later on,
+  without modifying the bootloader binary.
+
+  Variables can not yet be defined as NVMEM device subnodes.
+
+maintainers:
+  - Ahmad Fatoum <a.fatoum@pengutronix.de>
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - barebox,tlv-v1        # magic: 0x61bb95f2
+      - const: barebox,tlv
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - label
+  - reg
+
+allOf:
+  - $ref: partition.yaml#
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@0 {
+            reg = <0x0 0x100000>;
+            label = "barebox";
+            read-only;
+        };
+
+        partition@100000 {
+            compatible = "barebox,tlv";
+            label = "tlv";
+            reg = <0x100000 0x10000>;
+        };
+    };
diff --git a/common/Kconfig b/common/Kconfig
index 7bb1e1d452da..f883c516856b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1151,6 +1151,30 @@ config BTHREAD
 	  scheduled within delay loops and the console idle to asynchronously
 	  execute actions, like checking for link up or feeding a watchdog.
 
+config TLV
+	bool "barebox TLV support"
+	depends on OFDEVICE
+	help
+	  barebox TLV is a scheme for storing factory data on non-volatile
+	  storage. Unlike state, it's meant to be read-only.
+
+config TLV_DRV
+	bool "barebox TLV generic driver"
+	depends on TLV
+	default y
+	help
+	  barebox,tlv devices in the device tree will be matched against
+	  a compatible decoder via the 4-byte magic header.
+
+config TLV_BAREBOX
+	bool "barebox TLV common format"
+	depends on TLV
+	depends on PARAMETER
+	select PRINTF_HEXSTR
+	default y
+	help
+	  Decoder support for the common barebox TLV format.
+
 config STATE
 	bool "generic state infrastructure"
 	select CRC32
diff --git a/common/Makefile b/common/Makefile
index e12eef4691fe..9e258823d82d 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -68,6 +68,7 @@ obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_STATE)		+= state/
+obj-$(CONFIG_TLV)		+= tlv/
 obj-$(CONFIG_RATP)		+= ratp/
 obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= uimage_types.o uimage.o
diff --git a/common/tlv/Makefile b/common/tlv/Makefile
new file mode 100644
index 000000000000..ea982f229a08
--- /dev/null
+++ b/common/tlv/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += parser.o bus.o register.o drv.o
+obj-$(CONFIG_TLV_DRV) += drv.o barebox.o
+obj-$(CONFIG_TLV_BAREBOX) += barebox.o
diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
new file mode 100644
index 000000000000..b941463b31c7
--- /dev/null
+++ b/common/tlv/barebox.c
@@ -0,0 +1,192 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <net.h>
+#include <tlv/tlv.h>
+
+int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	const char *str;
+
+	str = __tlv_format_str(dev, map, len, val);
+	if (!str)
+		return -ENOMEM;
+
+	barebox_set_serial_number(str);
+	return 0;
+}
+
+int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	int i;
+
+	if (len % ETH_ALEN != 0)
+		return -EINVAL;
+
+	for (i = 0; i < len / ETH_ALEN; i++)
+		eth_register_ethaddr(i, val + i * ETH_ALEN);
+
+	return tlv_format_mac(dev, map, len, val);
+}
+
+int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	u8 eth_addr[ETH_ALEN];
+	int eth_count;
+
+	eth_count = *val;
+
+	if (len != 1 + ETH_ALEN)
+		return -EINVAL;
+
+	memcpy(eth_addr, val + 1, ETH_ALEN);
+
+	for (int i = 0; i < eth_count; i++, eth_addr_inc(eth_addr)) {
+		eth_register_ethaddr(i, eth_addr);
+		tlv_format_mac(dev, map, ETH_ALEN, eth_addr);
+	}
+
+	return 0;
+}
+
+static const char *__tlv_format(struct tlv_device *dev, struct tlv_mapping *map, char *buf)
+{
+	struct param_d *param;
+	int ret;
+
+	if (!buf)
+		return NULL;
+
+	param = dev_add_param_fixed(&dev->dev, map->prop, NULL);
+	if (!IS_ERR(param))
+		param->value = buf; /* pass ownership */
+
+	ret = of_append_property(tlv_of_node(dev), map->prop, buf, strlen(buf) + 1);
+	if (ret)
+		return NULL;
+
+	return buf;
+}
+
+#define tlv_format(tlvdev, map, ...) ({ __tlv_format(tlvdev, map, basprintf(__VA_ARGS__)) ? 0 : -ENOMEM; })
+
+const char * __tlv_format_str(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	return __tlv_format(dev, map, basprintf("%.*s", len, val));
+}
+
+int tlv_format_str(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;
+}
+
+int tlv_format_hex(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	return tlv_format(dev, map, "%*ph", len, val);
+}
+
+int tlv_format_blob(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	struct param_d *param;
+
+	param = dev_add_param_fixed(&dev->dev, map->prop, NULL);
+	if (!IS_ERR(param))
+		param->value = basprintf("%*phN", len, val);
+
+	return of_append_property(tlv_of_node(dev), map->prop, val, len);
+}
+
+static struct device_node *of_append_node(struct device_node *root, const char *name)
+{
+	struct device_node *np;
+
+	np = of_get_child_by_name(root, name);
+	if (np)
+		return np;
+
+	return of_new_node(root, name);
+}
+
+int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	struct device_node *np = tlv_of_node(dev);
+	struct property *pp;
+	char propname[sizeof("address-4294967295")];
+	int base = 0, i, ret;
+
+	if (len % 6 != 0)
+		return -EINVAL;
+
+	np = of_append_node(np, map->prop);
+	if (!np)
+		return -ENOMEM;
+
+	for_each_property_of_node(np, pp)
+		base++;
+
+	for (i = base; i < base + len / 6; i++) {
+		snprintf(propname, sizeof(propname), "address-%u", i);
+		ret = of_property_sprintf(np, propname, "%*phC", 6, val);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+int tlv_format_dec(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
+{
+	switch (len) {
+	case 1:
+		return tlv_format(dev, map, "%u", *(u8 *)val);
+	case 2:
+		return tlv_format(dev, map, "%u", get_unaligned_be16(val));
+	case 4:
+		return tlv_format(dev, map, "%u", get_unaligned_be32(val));
+	case 8:
+		return tlv_format(dev, map, "%llu", get_unaligned_be64(val));
+	default:
+		return tlv_format_hex(dev, map, len, val);
+	}
+}
+
+struct tlv_mapping barebox_tlv_v1_mappings[] = {
+	/* Detailed release information string for the device */
+	{ 0x0002, tlv_format_str, "device-hardware-release" },
+	/* UNIX timestamp of fabrication */
+	{ 0x0003, tlv_format_timestamp, "factory-timestamp" },
+	/* Device serial number string */
+	{ 0x0004, tlv_handle_serial, "device-serial-number"},
+	/* Modification: 0: Device unmodified; 1: undocumented modifications */
+	{ 0x0005, tlv_format_dec, "modification" },
+	/* a comma separated list of features */
+	{ 0x0006, tlv_format_str, "featureset" },
+	/* Printed Circuit Board Assembly serial number string */
+	{ 0x0007, tlv_format_str, "pcba-serial-number"},
+	/* Printed Circuit Board Assembly hardware release */
+	{ 0x0008, tlv_format_str, "pcba-hardware-release"},
+	/* A single Ethernet address */
+	{ 0x0011, tlv_handle_eth_address, "ethernet-address" },
+	/* A sequence of multiple Ethernet addresses */
+	{ 0x0012, tlv_handle_eth_address_seq, "ethernet-address" },
+	{ /* sentintel */ },
+};
+
+static struct tlv_mapping *mappings[] = { barebox_tlv_v1_mappings, NULL };
+static struct of_device_id of_matches[] = {
+	{ .compatible = "barebox,tlv-v1" },
+	{ /* sentinel */}
+};
+
+static struct tlv_decoder barebox_tlv_v1 = {
+	.magic = TLV_MAGIC_BAREBOX_V1,
+	.driver.name = "barebox-tlv-v1",
+	.driver.of_compatible = of_matches,
+	.mappings = mappings,
+};
+
+static int tlv_register_default(void)
+{
+	return tlv_register_decoder(&barebox_tlv_v1);
+}
+device_initcall(tlv_register_default);
diff --git a/common/tlv/bus.c b/common/tlv/bus.c
new file mode 100644
index 000000000000..336415483622
--- /dev/null
+++ b/common/tlv/bus.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <tlv/tlv.h>
+#include <linux/err.h>
+#include <of.h>
+
+static void tlv_devinfo(struct device *dev)
+{
+	struct tlv_device *tlvdev = to_tlv_device(dev);
+
+	printf("Magic: %08x\n", tlvdev->magic);
+}
+
+struct tlv_device *tlv_register_device(struct tlv_header *header,
+				       struct device *parent)
+{
+	struct tlv_device *tlvdev;
+	const char *name = NULL;
+	char *buf = NULL;
+	struct device *dev;
+	static int id = 0;
+
+	tlvdev = xzalloc(sizeof(*tlvdev));
+
+	dev = &tlvdev->dev;
+
+	dev->bus = &tlv_bus;
+	devinfo_add(dev, tlv_devinfo);
+	dev->platform_data = header;
+	tlvdev->magic = be32_to_cpu(header->magic);
+	dev->parent = parent ?: tlv_bus.dev;
+	dev->id = DEVICE_ID_SINGLE;
+
+	if (parent)
+		name = of_alias_get(parent->device_node);
+	if (!name)
+		name = buf = basprintf("tlv%u", id++);
+
+	dev->device_node = of_new_node(of_new_node(NULL, NULL), name);
+	dev->device_node->dev = dev;
+	dev_set_name(dev, name);
+	register_device(dev);
+
+	free(buf);
+	return tlvdev;
+}
+
+void tlv_free_device(struct tlv_device *tlvdev)
+{
+	tlv_of_unregister_fixup(tlvdev);
+
+	devinfo_del(&tlvdev->dev, tlv_devinfo);
+	unregister_device(&tlvdev->dev);
+
+	free(tlvdev->dev.platform_data);
+	of_delete_node(tlvdev->dev.device_node);
+
+	free(tlvdev);
+}
+
+static int tlv_bus_match(struct device *dev, const struct driver *drv)
+{
+	const struct tlv_decoder *decoder = to_tlv_decoder(drv);
+	struct tlv_device *tlvdev = to_tlv_device(dev);
+
+	return decoder->magic == tlvdev->magic;
+}
+
+static int tlv_bus_probe(struct device *dev)
+{
+	return dev->driver->probe(dev);
+}
+
+static void tlv_bus_remove(struct device *dev)
+{
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
+}
+
+struct bus_type tlv_bus = {
+	.name = "barebox-tlv",
+	.match = tlv_bus_match,
+	.probe = tlv_bus_probe,
+	.remove = tlv_bus_remove,
+};
+
+struct tlv_device *tlv_ensure_probed_by_alias(const char *alias)
+{
+	struct device_node *np;
+	struct device *dev;
+
+	np = of_find_node_by_alias(NULL, alias);
+	if (!np)
+		return ERR_PTR(-EINVAL);
+
+	of_partition_ensure_probed(np);
+
+	bus_for_each_device(&tlv_bus, dev) {
+		if (dev->parent && dev->parent->device_node == np)
+			return to_tlv_device(dev);
+	}
+
+	return ERR_PTR(-EPROBE_DEFER);
+}
+
+static void tlv_bus_info(struct device *dev)
+{
+	struct driver *drv;
+
+	puts("Registered Magic:\n");
+	bus_for_each_driver(&tlv_bus, drv) {
+		struct tlv_decoder *tlvdrv = to_tlv_decoder(drv);
+
+		printf("  %08x (%s)\n", tlvdrv->magic, tlvdrv->driver.name);
+	}
+}
+
+static int tlv_bus_register(void)
+{
+	int ret;
+
+	ret = bus_register(&tlv_bus);
+	if (ret)
+		return ret;
+
+	devinfo_add(tlv_bus.dev, tlv_bus_info);
+
+	return 0;
+}
+postcore_initcall(tlv_bus_register);
diff --git a/common/tlv/drv.c b/common/tlv/drv.c
new file mode 100644
index 000000000000..baba30808683
--- /dev/null
+++ b/common/tlv/drv.c
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <driver.h>
+#include <tlv/tlv.h>
+#include <init.h>
+#include <of.h>
+#include <of_device.h>
+#include <stdio.h>
+
+static int barebox_tlv_probe(struct device *dev)
+{
+	const struct of_device_id *match;
+	struct tlv_device *tlvdev;
+	struct cdev *cdev;
+	char *backend_path;
+
+	match = of_match_device(dev->driver->of_match_table, dev);
+	/*
+	 * We only match with the device if this driver is the most specific match
+	 * because we don't want to incorrectly bind to a device that has a more
+	 * specific driver.
+	 */
+	if (match && of_property_match_string(dev->of_node, "compatible",
+					      match->compatible) != 0)
+		return -ENODEV;
+
+	cdev = cdev_by_device_node(dev->of_node);
+	if (!cdev)
+		return -EINVAL;
+
+	backend_path = basprintf("/dev/%s", cdev_name(cdev));
+
+	tlvdev = tlv_register_device_by_path(backend_path, dev);
+	free(backend_path);
+
+	return PTR_ERR_OR_ZERO(tlvdev);
+}
+
+static const __maybe_unused struct of_device_id tlv_ids[] = {
+	{ .compatible = "barebox,tlv" },
+	{ /* sentinel */ }
+};
+
+static struct driver barebox_tlv_driver = {
+	.name = "tlv",
+	.probe = barebox_tlv_probe,
+	.of_compatible = tlv_ids,
+};
+core_platform_driver(barebox_tlv_driver);
diff --git a/common/tlv/parser.c b/common/tlv/parser.c
new file mode 100644
index 000000000000..468eeafceda1
--- /dev/null
+++ b/common/tlv/parser.c
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "barebox-tlv: " fmt
+
+#include <common.h>
+#include <tlv/tlv.h>
+#include <fcntl.h>
+#include <libfile.h>
+#include <linux/stat.h>
+#include <crc.h>
+#include <net.h>
+
+int tlv_parse(struct tlv_device *tlvdev,
+	      const struct tlv_decoder *decoder)
+{
+	const struct tlv *tlv = NULL;
+	struct tlv_mapping *map = NULL;
+	struct tlv_header *header = tlv_device_header(tlvdev);
+	u32 magic, size;
+	int ret = 0;
+	u32 crc = ~0;
+
+
+	magic = be32_to_cpu(header->magic);
+
+	size = tlv_total_len(header);
+
+	crc = crc32_be(crc, header, size - 4);
+	if (crc != tlv_crc(header)) {
+		pr_warn("Invalid CRC32. Should be %08x\n", crc);
+		return -EILSEQ;
+	}
+
+	for_each_tlv(header, tlv) {
+		struct tlv_mapping **mappings;
+		u16 tag = TLV_TAG(tlv);
+		int len = TLV_LEN(tlv);
+		const void *val = TLV_VAL(tlv);
+
+		pr_debug("[%04x] %*ph\n", tag, len, val);
+
+		for (mappings = decoder->mappings; *mappings; mappings++) {
+			for (map = *mappings; map->tag; map++) {
+				if (map->tag == tag)
+					goto done;
+			}
+		}
+
+done:
+		if (!map || !map->tag) {
+			if (tag)
+				pr_warn("skipping unknown tag: %04x\n", tag);
+			continue;
+		}
+
+		ret = map->handle(tlvdev, map, len, val);
+		if (ret < 0)
+			return ret;
+	}
+
+	return PTR_ERR_OR_ZERO(tlv);
+}
+
+struct tlv_device *tlv_register_device_by_path(const char *path, struct device *parent)
+{
+	struct tlv_header *header;
+	struct tlv_device *tlvdev;
+	size_t size;
+
+	header = tlv_read(path, &size);
+	if (IS_ERR(header))
+		return ERR_CAST(header);
+
+	tlvdev = tlv_register_device(header, parent);
+	if (IS_ERR(tlvdev))
+		free(header);
+
+	return tlvdev;
+}
+
+int of_tlv_fixup(struct device_node *root, void *ctx)
+{
+	struct device_node *chosen, *conf, *ethaddrs;
+	struct eth_ethaddr *addr;
+
+	chosen = of_create_node(root, "/chosen");
+	if (!chosen)
+		return -ENOMEM;
+
+	conf = of_copy_node(chosen, ctx);
+
+	ethaddrs = of_get_child_by_name(conf, "ethernet-address");
+	if (!ethaddrs)
+		return 0;
+
+	list_for_each_entry(addr, &ethaddr_list, list) {
+		char propname[sizeof("address-4294967295")];
+		const u8 *enetaddr_a;
+		u8 enetaddr_b[ETH_ALEN];
+		struct property *pp;
+
+		if (!eth_of_get_fixup_node(root, NULL, addr->ethid))
+			continue;
+
+		snprintf(propname, sizeof(propname), "address-%u", addr->ethid);
+		pp = of_find_property(ethaddrs, propname, NULL);
+		if (!pp)
+			continue;
+
+		enetaddr_a = of_property_get_value(pp);
+		if (string_to_ethaddr(addr->ethaddr, enetaddr_b))
+			continue;
+
+		if (memcmp(enetaddr_a, enetaddr_b, ETH_ALEN))
+			continue;
+
+		of_delete_property(pp);
+	}
+
+	return 0;
+}
+
+int tlv_of_register_fixup(struct tlv_device *tlvdev)
+{
+	return of_register_fixup(of_tlv_fixup, tlv_of_node(tlvdev));
+}
+
+void tlv_of_unregister_fixup(struct tlv_device *tlvdev)
+{
+	of_unregister_fixup(of_tlv_fixup, tlv_of_node(tlvdev));
+}
+
+struct tlv_header *tlv_read(const char *filename, size_t *nread)
+{
+	struct tlv_header *header = NULL, *tmpheader;
+	int size, fd, ret;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return ERR_PTR(fd);
+
+	header = malloc(128);
+	if (!header) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	ret = read_full(fd, header, sizeof(*header));
+	if (ret >= 0 && ret != sizeof(*header))
+		ret = -ENODATA;
+	if (ret < 0)
+		goto err;
+
+	size = tlv_total_len(header);
+
+	tmpheader = realloc(header, size);
+	if (!tmpheader) {
+		struct stat st;
+
+		ret = fstat(fd, &st);
+		if (ret)
+			ret = -EIO;
+		else if (size > st.st_size)
+			ret = -ENODATA;
+		else
+			ret = -ENOMEM;
+		goto err;
+	}
+	header = tmpheader;
+
+	ret = read_full(fd, header->tlvs, size - sizeof(*header));
+	if (ret < 0)
+		goto err;
+
+	/* file might have been truncated, but this will be handled
+	 * in tlv_parse
+	 */
+
+	if (nread)
+		*nread = sizeof(*header) + ret;
+
+	close(fd);
+	return header;
+err:
+	free(header);
+	close(fd);
+	return ERR_PTR(ret);
+}
+
+static struct tlv *__tlv_next(const struct tlv *tlv)
+{
+	return (void *)tlv + 4 + TLV_LEN(tlv);
+}
+
+struct tlv *tlv_next(const struct tlv_header *header,
+			     const struct tlv *tlv)
+{
+	void *tlvs_start = (void *)&header->tlvs[0], *tlvs_end, *next_tlv;
+
+	tlv = tlv ? __tlv_next(tlv) : tlvs_start;
+
+	tlvs_end = tlvs_start + get_unaligned_be32(&header->length_tlv);
+	if (tlv == tlvs_end)
+		return NULL;
+
+	next_tlv = __tlv_next(tlv);
+	if (next_tlv > tlvs_end)
+		return ERR_PTR(-ENODATA);
+
+	return (void *)tlv;
+}
diff --git a/common/tlv/register.c b/common/tlv/register.c
new file mode 100644
index 000000000000..a6d95fb8e091
--- /dev/null
+++ b/common/tlv/register.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2022 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <linux/nvmem-consumer.h>
+#include <of.h>
+#include <tlv/tlv.h>
+#include <libfile.h>
+#include <fcntl.h>
+
+#include <linux/err.h>
+
+static int tlv_probe_from_magic(struct device *dev)
+{
+	struct tlv_device *tlvdev = to_tlv_device(dev);
+	int ret;
+
+	ret = tlv_parse(tlvdev, to_tlv_decoder(dev->driver));
+	if (ret)
+		return ret;
+
+	return tlv_of_register_fixup(tlvdev);
+}
+
+static int tlv_probe_from_compatible(struct device *dev)
+{
+	struct tlv_decoder *decoder = to_tlv_decoder(dev->driver);
+	struct tlv_header *header;
+	struct tlv_device *tlvdev;
+	struct cdev *cdev;
+	char *backend_path;
+	size_t size;
+	u32 magic;
+	int ret;
+
+	cdev = cdev_by_device_node(dev->of_node);
+	if (!cdev)
+		return -EINVAL;
+
+	backend_path = basprintf("/dev/%s", cdev_name(cdev));
+
+	header = tlv_read(backend_path, &size);
+	free(backend_path);
+
+	if (IS_ERR(header))
+		return PTR_ERR(header);
+
+	magic = be32_to_cpu(header->magic);
+	if (magic != decoder->magic) {
+		dev_err(dev, "got magic %08x, but %08x expected\n",
+			magic, decoder->magic);
+		ret = -EILSEQ;
+		goto err;
+	}
+
+	tlvdev = tlv_register_device(header, dev);
+	if (IS_ERR(tlvdev)) {
+		ret = PTR_ERR(tlvdev);
+		goto err;
+	}
+
+	return 0;
+err:
+	free(header);
+	return ret;
+}
+
+int tlv_register_decoder(struct tlv_decoder *decoder)
+{
+	int ret;
+
+	if (decoder->driver.bus)
+		return -EBUSY;
+
+	if (!decoder->driver.probe)
+		decoder->driver.probe = tlv_probe_from_magic;
+	decoder->driver.bus = &tlv_bus;
+
+	ret = register_driver(&decoder->driver);
+	if (ret)
+		return ret;
+
+	if (!decoder->driver.of_compatible)
+		return 0;
+
+	decoder->_platform_driver.name = basprintf("%s-pltfm", decoder->driver.name);
+	decoder->_platform_driver.of_compatible = decoder->driver.of_compatible;
+	decoder->_platform_driver.probe = tlv_probe_from_compatible;
+
+	return platform_driver_register(&decoder->_platform_driver);
+}
diff --git a/include/string.h b/include/string.h
index 986ccd83dd73..c16529c21273 100644
--- a/include/string.h
+++ b/include/string.h
@@ -45,4 +45,9 @@ static inline const char *nonempty(const char *s)
 	return isempty(s) ? NULL : s;
 }
 
+static inline bool is_nul_terminated(const char *val, size_t len)
+{
+	return strnlen(val, len) != len;
+}
+
 #endif /* __STRING_H */
diff --git a/include/tlv/format.h b/include/tlv/format.h
new file mode 100644
index 000000000000..a32ec917a434
--- /dev/null
+++ b/include/tlv/format.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+ *
+ * barebox TLVs are preceded by a 12 byte header: 4 bytes for magic,
+ * 4 bytes for TLV sequence length (in bytes) and 4 bytes for
+ * the length of the signature. Each tag consists of at least four
+ * bytes: 2 bytes for the tag and two bytes for the length (in bytes)
+ * and as many bytes as the length. The TLV sequence must be equal
+ * to the TLV sequence length in the header. It can be followed by a
+ * signature of the length described in the header. At the end
+ * is a (big-endian) CRC-32/MPEG-2 of the whole structure. All
+ * integers are in big-endian. Tags and magic have their MSB set
+ * if they are vendor-specific. The second MSB is 0 for tag
+ * and 1 for magic.
+ */
+
+#ifndef __TLV_FORMAT_H_
+#define __TLV_FORMAT_H_
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <asm/unaligned.h>
+#include <linux/build_bug.h>
+
+#define TLV_MAGIC_BAREBOX_V1		0x61bb95f2
+
+#define TLV_IS_VENDOR_SPECIFIC(val)	((*(u8 *)&(val) & 0x80) == 0x80)
+#define TLV_IS_GENERIC(val)		((*(u8 *)&(val) & 0x80) != 0x80)
+
+struct tlv {
+	/*
+	 * _tag:15 (MSB): product specific
+	 */
+	__be16 _tag;
+	__be16 _len; /* in bytes */
+	u8 _payload[];
+} __packed;
+
+
+#define TLV_TAG(tlv) get_unaligned_be16(&(tlv)->_tag)
+#define TLV_LEN(tlv) get_unaligned_be16(&(tlv)->_len)
+#define TLV_VAL(tlv) ((tlv)->_payload)
+
+struct tlv_header {
+	__be32 magic;
+	__be32 length_tlv; /* in bytes */
+	__be32 length_sig; /* in bytes */
+	struct tlv tlvs[];
+};
+static_assert(sizeof(struct tlv_header) == 3 * 4);
+
+#define for_each_tlv(tlv_head, tlv) \
+	for (tlv = tlv_next(tlv_head, NULL); !IS_ERR_OR_NULL(tlv); tlv = tlv_next(tlv_head, tlv))
+
+static inline size_t tlv_total_len(const struct tlv_header *header)
+{
+	return sizeof(struct tlv_header) + get_unaligned_be32(&header->length_tlv)
+		+ get_unaligned_be32(&header->length_sig) + 4;
+}
+
+/*
+ * Retrieves the CRC-32/MPEG-2 CRC32 at the end of a TLV blob. Parameters:
+ * Poly=0x04C11DB7, Init=0xFFFFFFFF, RefIn=RefOut=false, XorOut=0x00000000
+ */
+static inline u32 tlv_crc(const struct tlv_header *header)
+{
+	return get_unaligned_be32((void *)header + tlv_total_len(header) - sizeof(__be32));
+}
+
+#endif
diff --git a/include/tlv/tlv.h b/include/tlv/tlv.h
new file mode 100644
index 000000000000..2a3fb1439234
--- /dev/null
+++ b/include/tlv/tlv.h
@@ -0,0 +1,97 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __TLV_H_
+#define __TLV_H_
+
+#include <linux/compiler.h>
+#include <linux/kernel.h>
+#include <linux/types.h>
+#include <linux/err.h>
+#include <asm/unaligned.h>
+#include <unistd.h>
+#include <driver.h>
+
+#include <tlv/format.h>
+
+struct tlv *tlv_next(const struct tlv_header *header, const struct tlv *tlv);
+
+struct tlv_header *tlv_read(const char *filename, size_t *nread);
+
+struct device_node;
+struct tlv_device;
+struct tlv_mapping;
+
+struct tlv_mapping {
+	u16 tag;
+	int (*handle)(struct tlv_device *dev, struct tlv_mapping *map,
+		      u16 len, const u8 *val);
+	const char *prop;
+};
+
+extern struct tlv_mapping barebox_tlv_v1_mappings[];
+
+extern const char *__tlv_format_str(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_format_str(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_format_dec(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+#define tlv_format_timestamp tlv_format_dec /* For timestamps since the UNIX epoch */
+extern int tlv_format_hex(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_format_blob(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+extern int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val);
+
+struct tlv_decoder {
+	u32 magic;
+	void *driverata;
+	struct tlv_mapping **mappings;
+	struct driver driver;
+	/* private members */
+	struct driver _platform_driver;
+	struct list_head list;
+};
+
+struct tlv_device {
+	struct device dev;
+	u32 magic;
+};
+
+static inline struct device_node *tlv_of_node(struct tlv_device *tlvdev)
+{
+	return tlvdev->dev.device_node;
+}
+
+struct tlv_device *tlv_register_device(struct tlv_header *header, struct device *parent);
+static inline struct tlv_header *tlv_device_header(struct tlv_device *tlvdev)
+{
+	return tlvdev->dev.platform_data;
+}
+
+void tlv_free_device(struct tlv_device *tlvdev);
+
+int tlv_register_decoder(struct tlv_decoder *decoder);
+
+int tlv_parse(struct tlv_device *tlvdev,
+	      const struct tlv_decoder *decoder);
+
+int of_tlv_fixup(struct device_node *root, void *ctx);
+
+int tlv_of_register_fixup(struct tlv_device *tlvdev);
+void tlv_of_unregister_fixup(struct tlv_device *tlvdev);
+
+extern struct bus_type tlv_bus;
+
+#define to_tlv_decoder(drv) ( \
+	drv->bus == &tlv_bus ? container_of_const(drv, struct tlv_decoder, driver) : \
+	drv->bus == &platform_bus ? container_of_const(drv, struct tlv_decoder, _platform_driver) : \
+	NULL \
+)
+
+static inline struct tlv_device *to_tlv_device(struct device *dev)
+{
+	return container_of(dev, struct tlv_device, dev);
+}
+
+struct tlv_device *tlv_register_device_by_path(const char *path, struct device *parent);
+struct tlv_device *tlv_ensure_probed_by_alias(const char *alias);
+
+#endif
diff --git a/test/self/Kconfig b/test/self/Kconfig
index 33e478aee882..33d05e4cf205 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -45,6 +45,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_REGULATOR if REGULATOR_FIXED
 	select SELFTEST_TEST_COMMAND if CMD_TEST
 	select SELFTEST_IDR
+	select SELFTEST_TLV
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -117,4 +118,10 @@ config SELFTEST_IDR
 	bool "idr selftest"
 	select IDR
 
+config SELFTEST_TLV
+	bool "TLV selftest"
+	select TLV
+	select BASE64
+	select BOARD_LXA
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 666a8f9ee7e2..8cd2a4c526c8 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -18,6 +18,7 @@ obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
 obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
 obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
 obj-$(CONFIG_SELFTEST_IDR) += idr.o
+obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
 
 ifdef REGENERATE_KEYTOC
 
diff --git a/test/self/tlv.c b/test/self/tlv.c
new file mode 100644
index 000000000000..c22335f264c5
--- /dev/null
+++ b/test/self/tlv.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <crypto/rsa.h>
+#include <bselftest.h>
+#include <base64.h>
+#include <console.h>
+#include <tlv/tlv.h>
+
+BSELFTEST_GLOBALS();
+
+static const char cpu_tlv_encoded[] =
+"vCiN/gAAAH4AAAAAAAIAGGd1dGVmZWUyLUQwMS1SMDEtVjAxLUM/PwADAAgAAAAAZ+"
+"Z4XgAEAAswMDA0MC4wMDAxMAAFAAEAAAYACGJhc2UsUG9FAAcACzAwMDM2LjAwMDEwA"
+"AgAGGd1dGVmZWUyLVMwMS1SMDEtVjAxLUM/PwASAAcEGHTioAPA6zhwRw==";
+
+static const char io_tlv_encoded[] =
+"3KWocAAAAEQAAAAAAAMACAAAAABn5nheAAUAAQAABgAEYmFzZQAHAAswMDAzNy4wMDA"
+"xMAAIABhndXRlZmVlMi1TMDItUjAxLVYwMS1DPz+xJ7bM";
+
+static u8 *base64_decode_alloc(const char *encoded, size_t *len)
+{
+	size_t enclen = strlen(encoded);
+	u8 *buf = xmalloc(enclen);
+	*len = decode_base64(buf, enclen, encoded);
+	return buf;
+}
+
+static void assert_equal(struct device_node *a, struct device_node *b)
+{
+	int ret;
+
+	ret = of_diff(a, b, -1);
+	if (ret == 0)
+		return;
+
+	pr_warn("comparison of %s and %s failed: no differences expected, %u found.\n",
+		a->full_name, b->full_name, ret);
+	of_diff(a, b, 1);
+	failed_tests++;
+}
+
+static void test_lxa_tlv(void)
+{
+	extern char __dtb_tlv_start[], __dtb_tlv_end[];
+	struct tlv_device *cpu_tlvdev, *io_tlvdev;
+	size_t cpu_bloblen, io_bloblen;
+	void *cpu_blob = base64_decode_alloc(cpu_tlv_encoded, &cpu_bloblen);
+	void *io_blob = base64_decode_alloc(io_tlv_encoded, &io_bloblen);
+	struct device_node *expected, *np;
+
+	total_tests = 4;
+
+	expected = of_unflatten_dtb(__dtb_tlv_start,
+				    __dtb_tlv_end - __dtb_tlv_start);
+	if (WARN_ON(IS_ERR(expected))) {
+		skipped_tests = total_tests;
+		return;
+	}
+
+	cpu_tlvdev = tlv_register_device(cpu_blob, NULL);
+	if (IS_ERR(cpu_tlvdev)) {
+		free(cpu_blob);
+		failed_tests++;
+		skipped_tests++;
+	}
+
+	io_tlvdev = tlv_register_device(io_blob, NULL);
+	if (IS_ERR(io_tlvdev)) {
+		free(io_blob);
+		failed_tests++;
+		skipped_tests++;
+	}
+
+	for_each_child_of_node(expected, np) {
+		if (!IS_ERR(cpu_tlvdev) && !strcmp(np->full_name, "/tlv0"))
+			assert_equal(tlv_of_node(cpu_tlvdev), np);
+		if (!IS_ERR(io_tlvdev) && !strcmp(np->full_name, "/tlv1"))
+			assert_equal(tlv_of_node(io_tlvdev), np);
+	}
+
+	if (!IS_ERR(cpu_tlvdev))
+		tlv_free_device(cpu_tlvdev);
+	if (!IS_ERR(io_tlvdev))
+		tlv_free_device(io_tlvdev);
+}
+bselftest(parser, test_lxa_tlv);
diff --git a/test/self/tlv.dts b/test/self/tlv.dts
new file mode 100644
index 000000000000..40906279bafd
--- /dev/null
+++ b/test/self/tlv.dts
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/dts-v1/;
+/ {
+	tlv0 {
+		device-hardware-release = "gutefee2-D01-R01-V01-C??";
+		factory-timestamp = "1743157342";
+		serial-number = "00040.00010";
+		modification = "0";
+		featureset = "base,PoE";
+		pcba-serial-number = "00036.00010";
+		pcba-hardware-release = "gutefee2-S01-R01-V01-C??";
+		ethernet-address {
+			address-0 = "18:74:e2:a0:03:c0";
+			address-1 = "18:74:e2:a0:03:c1";
+			address-2 = "18:74:e2:a0:03:c2";
+			address-3 = "18:74:e2:a0:03:c3";
+		};
+	};
+
+	tlv1 {
+		factory-timestamp = "1743157342";
+		modification = "0";
+		featureset = "base";
+		pcba-serial-number = "00037.00010";
+		pcba-hardware-release = "gutefee2-S02-R01-V01-C??";
+	};
+};
-- 
2.39.5



