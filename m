Delivery-date: Tue, 26 Mar 2024 11:36:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4As-0054YF-1s
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:36:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4Aq-0002eA-Pa
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:36:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ChXGyEfecUW2WVCeAl1XYY/OYTAORqq1Ibb7xRNh/ZE=; b=qJHyZbJDCPR4XERmiCJPHbFUrf
	v/SBR8oaNu+0wAyCvIxC94NPQMoPWEw3Dgtw/p38KAbELn7GQKo/DymPjucHNIcyPPUKAty0Gis6N
	cguHqTSTqyOhYgd4hboIXdzQdKj6w9TLUTcYNCzY6Q29GWzf9zzF0HhgplY/TOvjYfNnlLQoxLN5H
	5oIlzTLxK/klEdAw3K8cZXyAfItFEI3vdup9Ze8zUK6JYLac878J0cQpX2XHmd6Gjms+GBSOfxGWb
	r1Ei+cCcCckuDnbG1gePsXhiVVAyDdZXVxYosYDI8T6o/73P97MebhTBdRiQtWj3P8VRvCOgvDBpR
	7L+k37gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4AE-000000045TK-2kt2;
	Tue, 26 Mar 2024 10:36:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4A2-000000045Kl-484M
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:36:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49t-00023V-NC; Tue, 26 Mar 2024 11:35:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49r-008b72-SR; Tue, 26 Mar 2024 11:35:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-1i;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:42 +0100
Message-Id: <20240326100746.471532-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033607_103506_FF3D46B4 
X-CRM114-Status: GOOD (  22.11  )
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
Subject: [PATCH 12/16] pci: add of_pci_bridge_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
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
index 0000000000..b1ee3fa938
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
+	if (!dev->of_node)
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



