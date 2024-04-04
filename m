Delivery-date: Thu, 04 Apr 2024 08:18:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsGR8-008mRF-2B
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 08:18:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsGR7-0005rs-UT
	for lore@pengutronix.de; Thu, 04 Apr 2024 08:18:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tcmfuMEeZWxTKfdq4Jeb8fO8Uu16yGDM0WBf1yY8j38=; b=or4WohFaqgRcXSado2QwavIBEu
	51ljQOVgyTWOqv2AVhYY1MKAx/RojiHReSi+HTcJAVOQsPuqmiA+2EHJ50l+0x0BTBWWxhdP6zC9k
	NW7mbqja5Sz4WM5YS761aA4xwOEJbGVyWfW6frtuVuFXaZvgDDSrj2R+WlL7U1Xd9JHjkj+t6iaJq
	c5hDXiMZLA3+nT2hppODK0xBRixrudz2vlH76v19sH3DfctcpsOwpDNMsfuYHlDmt3C6cnyxJwSjj
	jLDbCkfY/y2TRIrTKjkRYnCfeoeiq5ACWJrA4YIIPN3N0zLZAMZgR5m3Twv+aVF2EL+xwY9QNUPNA
	bkMqJYdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGQZ-00000001QLP-053R;
	Thu, 04 Apr 2024 06:18:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGQU-00000001QKF-32Dn
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 06:18:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsGQS-0005OW-Ht; Thu, 04 Apr 2024 08:18:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsGQS-00AJjO-5O; Thu, 04 Apr 2024 08:18:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsGQS-0012eX-0D;
	Thu, 04 Apr 2024 08:18:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Apr 2024 08:18:15 +0200
Message-Id: <20240404061815.248266-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-13-s.hauer@pengutronix.de>
References: <20240326100746.471532-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_231818_791077_047A523B 
X-CRM114-Status: GOOD (  23.98  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] pci: add of_pci_bridge_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we assume a 1:1 mapping between the CPU and bus address space.
This is not always the case and different mappings are described in the
ranges device tree property. Parse the property and call
pci_add_resource_offset() accordingly. The code is based on the
corresponding Kernel code.

Link: https://lore.barebox.org/20240326100746.471532-13-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Changes since v1:
- add a commit message
- mips registers PCI controllers without a parent device. Do not crash in this case

 drivers/pci/Makefile |   1 +
 drivers/pci/of.c     | 102 +++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.c    |   2 +
 include/linux/pci.h  |  10 +++++
 4 files changed, 115 insertions(+)
 create mode 100644 drivers/pci/of.c

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index c222f77b3b..69649fbcd2 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -3,6 +3,7 @@
 # Makefile for the PCI bus specific drivers.
 #
 obj-y		+= pci.o bus.o pci_iomap.o host-bridge.o
+obj-$(CONFIG_OFDEVICE) += of.o
 
 ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
 
diff --git a/drivers/pci/of.c b/drivers/pci/of.c
new file mode 100644
index 0000000000..1cf7fe302d
--- /dev/null
+++ b/drivers/pci/of.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * PCI <-> OF mapping helpers
+ *
+ * Copyright 2011 IBM Corp.
+ */
+#define pr_fmt(fmt)	"PCI: OF: " fmt
+
+#include <linux/kernel.h>
+#include <linux/pci.h>
+#include <of.h>
+#include <of_address.h>
+#include <common.h>
+#include <linux/resource_ext.h>
+
+/**
+ * of_pci_get_host_bridge_resources() - parsing of PCI host bridge resources from DT
+ * @dev: host bridge device
+ * @resources: list where the range of resources will be added after DT parsing
+ *
+ * This function will parse the "ranges" property of a PCI host bridge device
+ * node and setup the resource mapping based on its content. It is expected
+ * that the property conforms with the Power ePAPR document.
+ *
+ * It returns zero if the range parsing has been successful or a standard error
+ * value if it failed.
+ */
+static int of_pci_get_host_bridge_resources(struct device *dev,
+					    struct pci_controller *bridge)
+{
+	struct list_head *resources = &bridge->windows;
+	struct device_node *dev_node = dev->of_node;
+	struct resource *res, tmp_res;
+	struct of_pci_range range;
+	struct of_pci_range_parser parser;
+	const char *range_type;
+	int err;
+
+	dev_dbg(dev, "host bridge %pOF ranges:\n", dev_node);
+
+	/* Check for ranges property */
+	err = of_pci_range_parser_init(&parser, dev_node);
+	if (err)
+		return 0;
+
+	dev_dbg(dev, "Parsing ranges property...\n");
+	for_each_of_pci_range(&parser, &range) {
+		/* Read next ranges element */
+		if ((range.flags & IORESOURCE_TYPE_BITS) == IORESOURCE_IO)
+			range_type = "IO";
+		else if ((range.flags & IORESOURCE_TYPE_BITS) == IORESOURCE_MEM)
+			range_type = "MEM";
+		else
+			range_type = "err";
+		dev_dbg(dev, "  %6s %#012llx..%#012llx -> %#012llx\n",
+			 range_type, range.cpu_addr,
+			 range.cpu_addr + range.size - 1, range.pci_addr);
+
+		/*
+		 * If we failed translation or got a zero-sized region
+		 * then skip this range
+		 */
+		if (range.cpu_addr == OF_BAD_ADDR || range.size == 0)
+			continue;
+
+		of_pci_range_to_resource(&range, dev_node, &tmp_res);
+
+		res = kmemdup(&tmp_res, sizeof(tmp_res), GFP_KERNEL);
+		if (!res) {
+			err = -ENOMEM;
+			goto failed;
+		}
+
+		pci_add_resource_offset(resources, res,	res->start - range.pci_addr);
+
+		switch (res->flags & IORESOURCE_TYPE_BITS) {
+		case IORESOURCE_IO:
+			bridge->io_resource = res;
+			break;
+
+		case IORESOURCE_MEM:
+			if (res->flags & IORESOURCE_PREFETCH)
+				bridge->mem_pref_resource = res;
+			else
+				bridge->mem_resource = res;
+			break;
+		}
+	}
+
+	return 0;
+
+failed:
+	return err;
+}
+
+int of_pci_bridge_init(struct device *dev, struct pci_controller *bridge)
+{
+	if (!dev || !dev->of_node)
+		return 0;
+
+	return of_pci_get_host_bridge_resources(dev, bridge);
+}
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 0a238cd190..bc083270d9 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -45,6 +45,8 @@ static void pci_bus_register_devices(struct pci_bus *bus)
 void pci_controller_init(struct pci_controller *hose)
 {
 	INIT_LIST_HEAD(&hose->windows);
+
+	of_pci_bridge_init(hose->parent, hose);
 }
 
 void register_pci_controller(struct pci_controller *hose)
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 11a60f66a9..f6511e0095 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -414,4 +414,14 @@ void pcibios_resource_to_bus(struct pci_bus *bus, struct pci_bus_region *region,
 void pcibios_bus_to_resource(struct pci_bus *bus, struct resource *res,
 			     struct pci_bus_region *region);
 
+/* drivers/pci/of.c */
+#ifdef CONFIG_OFDEVICE
+int of_pci_bridge_init(struct device *dev, struct pci_controller *bridge);
+#else
+static inline int of_pci_bridge_init(struct device *dev, struct pci_controller *bridge)
+{
+	return 0;
+}
+#endif
+
 #endif /* LINUX_PCI_H */
-- 
2.39.2



