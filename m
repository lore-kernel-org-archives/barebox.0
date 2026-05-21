Delivery-date: Thu, 21 May 2026 10:38:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyus-002Ajj-1E
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:38:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyur-0003Sv-59
	for lore@pengutronix.de; Thu, 21 May 2026 10:38:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KQBGCE119FQEct85ApwbhF+Dil/pRarXWB1h3OR+pAQ=; b=HknrUpJ8mMJh3y7j5D1zwjEFZ3
	xNepcfy+p4N8HeddMWDkaosR6Jr0UQTcV2iJuE8ATwgLdhNyu51hTP0B50f1UtvmxGZeG35cl2I63
	AYUmuimeTl/9yH6Rv0w+kd2wnJ1Iv2sG1cPZn/bGGNv0SGSTlLG+7Ycr7vYiMmwDu+SxaUTfjNPxY
	2aPGQQ/B1ntf8S+bUEvCljnO8/MvFz+crkVvbpTKQuwfusL3ofMD73oK2UlM4tYL7jJ3dMhI0aG8M
	0FjLwd0hRSWIyr9nIuBMeMCIUnH2L/ZqzYisH5a18FKybOcVwxOutPp43oFBkR7b5qHfLTADYTDVU
	YfhffUUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytq-00000007Ara-2jJZ;
	Thu, 21 May 2026 08:37:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytm-00000007Aoj-20sC
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:37:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0002Mb-ET; Thu, 21 May 2026 10:36:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytj-0014d4-2Z;
	Thu, 21 May 2026 10:36:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0000000DTPV-1AHm;
	Thu, 21 May 2026 10:36:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:36:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260521-pci-of-dynamic-v1-4-951f1878e378@pengutronix.de>
References: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
In-Reply-To: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779352616; l=9798;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jvon3W3yJzuP34jczSTUJR0EPWZeMp/eHvBaw1/Vr6Q=;
 b=iNA/jiHPDc7Stb4JGtQSNx9mPc+mdYqsTVO64ntYj89k1sVQWXspqVZwoW0DtE68nKmCY5RZP
 c0eAN3JY6ZTBsBEXCV6gEgrbJlpVFsbAH8lT8nSMIG1ZBgHF/rr+O0B
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_013658_679167_D67FD567 
X-CRM114-Status: GOOD (  29.35  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] pci: synthesize devicetree nodes for enumerated
 devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an opt-in PCI_DYNAMIC_OF_NODES that creates a devicetree node for
every PCI device discovered during bus scan that doesn't already have
one in the static tree. Nodes are attached to the live tree under the
host bridge / parent bridge, so they're visible both to barebox's own
pci_of_match_device() and to the kernel devicetree handed off at boot.

Inspired by Linux's CONFIG_PCI_DYNAMIC_OF_NODES, but trimmed to the
bare minimum Linux actually consumes: a node with a "reg" property
encoding bus/devfn so of_pci_find_child_device() can attach the node
to the device it rediscovers from hardware. Everything else Linux
would otherwise look at (compatible, bus-range, ranges, interrupts)
is recomputed from PCI config space at probe time, so duplicating it
here would just be state with no consumer and more surface for bugs.
Linux's changeset wrapper is dropped: barebox's live tree is freely
mutable via of_new_node() / of_set_property().

The primary motivation is letting board code stamp MAC addresses onto
PCI Ethernet endpoints via of_eth_register_ethaddr() without having
to hand-write the pci@D,F / dev@D,F hierarchy in the source DTS.

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/Kconfig      |  23 +++++++
 drivers/pci/Makefile     |   1 +
 drivers/pci/of-dynamic.c | 173 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.c        |   8 +++
 include/of_pci.h         |   6 ++
 5 files changed, 211 insertions(+)

diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index f8e60c4ea5..a2ebf348d9 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -25,6 +25,29 @@ config PCI_DEBUG
 
 	  When in doubt, say N.
 
+config PCI_DYNAMIC_OF_NODES
+	bool "Create devicetree nodes for runtime-enumerated PCI devices"
+	depends on PCI && OFDEVICE
+	help
+	  Synthesize a devicetree node for every PCI device discovered during
+	  bus scan that does not already have one in the static devicetree.
+	  Nodes are attached to the live tree under the host-bridge / parent
+	  bridge node, so they are visible to barebox itself and flow into the
+	  devicetree passed to the kernel at boot.
+
+	  This lets consumers (e.g. of_eth_register_ethaddr() for stamping a
+	  MAC address) reference PCI endpoints by node path without
+	  hand-writing the pci@D,F / dev@D,F hierarchy in the source DTS.
+
+	  Only the bare minimum is generated: a node with a "reg" property
+	  encoding the device/function so Linux's of_pci_find_child_device()
+	  can attach the node to the device it rediscovers from hardware.
+	  Linux recomputes everything else (compatible from VID/DID, bus-range
+	  and ranges from config space, etc.) so adding it here would just be
+	  duplicated state with no consumer.
+
+	  When in doubt, say N.
+
 config PCIE_DW
 	bool
 
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 69649fbcd2..803ff09f89 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -4,6 +4,7 @@
 #
 obj-y		+= pci.o bus.o pci_iomap.o host-bridge.o
 obj-$(CONFIG_OFDEVICE) += of.o
+obj-$(CONFIG_PCI_DYNAMIC_OF_NODES) += of-dynamic.o
 
 ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
 
diff --git a/drivers/pci/of-dynamic.c b/drivers/pci/of-dynamic.c
new file mode 100644
index 0000000000..2f6d7fb84e
--- /dev/null
+++ b/drivers/pci/of-dynamic.c
@@ -0,0 +1,173 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Synthesize the minimal devicetree nodes Linux needs to attach properties
+ * (most notably mac-address) to runtime-enumerated PCI devices.
+ *
+ * Loosely modelled on Linux's CONFIG_PCI_DYNAMIC_OF_NODES, but trimmed to
+ * just node creation + a "reg" property. Linux discovers PCI topology from
+ * hardware, so other properties it would otherwise read (compatible,
+ * bus-range, ranges, #address-cells/#size-cells, interrupts, ...) are
+ * either redundant or recomputed from config space at probe time. Keeping
+ * the generator small keeps the bug surface small.
+ *
+ * The only thing barebox must put in DT for Linux to find the node is:
+ *   - a child of the parent bus' DT node, with
+ *   - reg cell[0] = (bus << 16) | (devfn << 8) so of_pci_get_devfn() works.
+ *
+ * Linux uses of_changeset because its live kernel devicetree is treated
+ * as immutable; barebox is free to mutate the live tree directly, so the
+ * changeset layer is dropped.
+ */
+
+#define pr_fmt(fmt) "PCI: OF: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <of_pci.h>
+#include <malloc.h>
+#include <linux/pci.h>
+
+static int of_pci_fill_node(struct device_node *np, struct pci_dev *pdev)
+{
+	u32 reg[5] = { 0 };
+	int ret;
+
+	/* Config-space tag (space = 0); only bus/devfn matter for matching. */
+	reg[0] = (pdev->bus->number << 16) | (pdev->devfn << 8);
+	ret = of_property_write_u32_array(np, "reg", reg, ARRAY_SIZE(reg));
+	if (ret)
+		return ret;
+
+	if (pci_is_bridge(pdev)) {
+		ret = of_property_write_u32(np, "#address-cells", 3);
+		if (ret)
+			return ret;
+		ret = of_property_write_u32(np, "#size-cells", 2);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+void of_pci_make_dev_node(struct pci_dev *pdev)
+{
+	struct device_node *parent_np, *np;
+	struct device *parent_dev;
+	char *name;
+
+	if (pdev->dev.of_node)
+		return;
+
+	parent_dev = pdev->bus->self ? &pdev->bus->self->dev
+				     : pdev->bus->host->parent;
+	if (!parent_dev || !parent_dev->of_node)
+		return;
+	parent_np = parent_dev->of_node;
+
+	name = xasprintf("%s@%x,%x",
+			 pci_is_bridge(pdev) ? "pci" : "dev",
+			 PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
+	np = of_new_node(parent_np, name);
+	free(name);
+	if (!np)
+		return;
+
+	if (of_pci_fill_node(np, pdev)) {
+		of_delete_node(np);
+		return;
+	}
+
+	pdev->dev.of_node = np;
+
+	dev_dbg(&pdev->dev, "created OF node %pOF\n", np);
+}
+
+static struct device_node *
+of_pci_fixup_dev_node(struct device_node *parent_np, struct pci_dev *pdev)
+{
+	struct device_node *np;
+	char *name;
+	u32 reg;
+
+	/*
+	 * Match by devfn before creating a new node: any existing child
+	 * whose reg[0] devfn byte matches refers to the same hardware,
+	 * regardless of node name.
+	 */
+	for_each_child_of_node(parent_np, np) {
+		if (of_property_read_u32_array(np, "reg", &reg, 1))
+			continue;
+		if (((reg >> 8) & 0xff) == pdev->devfn)
+			return np;
+	}
+
+	name = xasprintf("%s@%x,%x",
+			 pci_is_bridge(pdev) ? "pci" : "dev",
+			 PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
+	np = of_new_node(parent_np, name);
+	free(name);
+	if (!np)
+		return NULL;
+
+	if (of_pci_fill_node(np, pdev)) {
+		of_delete_node(np);
+		return NULL;
+	}
+
+	return np;
+}
+
+static void of_pci_fixup_bus(struct device_node *parent_np, struct pci_bus *bus)
+{
+	struct pci_dev *pdev;
+	struct device_node *np;
+
+	list_for_each_entry(pdev, &bus->devices, bus_list) {
+		np = of_pci_fixup_dev_node(parent_np, pdev);
+		if (np && pdev->subordinate)
+			of_pci_fixup_bus(np, pdev->subordinate);
+	}
+}
+
+static int of_pci_fixup(struct device_node *root, void *ctx)
+{
+	struct pci_bus *bus;
+
+	list_for_each_entry(bus, &pci_root_buses, node) {
+		struct device_node *bb_np, *host_np;
+		char *name;
+
+		if (!bus->host || !bus->host->parent)
+			continue;
+		bb_np = bus->host->parent->of_node;
+		if (!bb_np)
+			continue;
+
+		name = of_get_reproducible_name(bb_np);
+		host_np = of_find_node_by_reproducible_name(root, name);
+		free(name);
+		if (!host_np) {
+			pr_debug("no kernel-DT mirror of host bridge %pOF\n", bb_np);
+			continue;
+		}
+
+		of_pci_fixup_bus(host_np, bus);
+	}
+
+	return 0;
+}
+
+static int of_pci_register_fixup(void)
+{
+	return of_register_fixup(of_pci_fixup, NULL);
+}
+
+/*
+ * The PCI device OF fixup must run before other fixups want to modify the nodes
+ * we are creating here. As OF fixups are running in the order they are registered,
+ * register this one early. This might be the first sign that we need a dependency
+ * tracking or -EPROBE_DEFERRED mechanism for OF fixups. Keep an eye on it.
+ */
+core_initcall(of_pci_register_fixup);
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index fc00ec2249..ca19a03c20 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -5,6 +5,7 @@
 #include <linux/sizes.h>
 #include <linux/pci.h>
 #include <linux/bitfield.h>
+#include <of_pci.h>
 
 static unsigned int pci_scan_bus(struct pci_bus *bus);
 
@@ -672,6 +673,7 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 
 			pci_read_config_word(dev, PCI_SUBSYSTEM_ID, &dev->subsystem_device);
 			pci_read_config_word(dev, PCI_SUBSYSTEM_VENDOR_ID, &dev->subsystem_vendor);
+			of_pci_make_dev_node(dev);
 			break;
 		case PCI_HEADER_TYPE_BRIDGE:
 			child_bus = pci_alloc_bus();
@@ -690,6 +692,12 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 
 			/* scan pci hierarchy behind bridge */
 			prescan_setup_bridge(dev);
+			/*
+			 * Materialize the bridge's OF node before recursing so
+			 * children below it can find their parent during their
+			 * own of_pci_make_dev_node() call.
+			 */
+			of_pci_make_dev_node(dev);
 			pci_scan_bus(child_bus);
 			postscan_setup_bridge(dev);
 
diff --git a/include/of_pci.h b/include/of_pci.h
index c787150936..c44cc625f5 100644
--- a/include/of_pci.h
+++ b/include/of_pci.h
@@ -15,4 +15,10 @@ static inline int of_pci_get_devfn(struct device_node *np)
 
 #endif
 
+#ifdef CONFIG_PCI_DYNAMIC_OF_NODES
+void of_pci_make_dev_node(struct pci_dev *pdev);
+#else
+static inline void of_pci_make_dev_node(struct pci_dev *pdev) { }
+#endif
+
 #endif

-- 
2.47.3



