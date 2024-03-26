Delivery-date: Tue, 26 Mar 2024 11:09:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jx-0051pV-0Y
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:09:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jv-00036R-14
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:09:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F5as27LrSwGzVIQsOe28TyYJ+lZgvgXw2MDoKbXKseU=; b=NkiHs7NRrngepjXq5GxUsOsi8Q
	nFFI6cL+zya2RdodTptja4gllV3j14d+H+L7FrEK+48FyPvJmtqPHyNXsMu71R/OR4u0GIZoW44aO
	6m2as0/6DJJ76DJbLoDGoDv6y3vxDADdZ1meeI4mJTGuhCALXiNgvkXbeWtIFhzcckw680ZZyikTQ
	tUlYrKx8hWdBjIw8RYRUwf6aIVqkST+kBouCsEuDaMgmnHike0MFamLYNpYi6tDIsJczkg9uet8yr
	Tea+16gVF2ucEKfxIK9RlDpGo/hjfNJplxqgqhEXMAIwt74pt35eqh1XqJ4cNHRLKSEqyrspMUTsB
	1Iw8pqDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3jB-00000003xlm-1BBO;
	Tue, 26 Mar 2024 10:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ii-00000003xRz-0f5W
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002H0-Qw; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0m-Ds; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-12;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:38 +0100
Message-Id: <20240326100746.471532-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_636674_53CCCB41 
X-CRM114-Status: GOOD (  24.04  )
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
Subject: [PATCH 08/16] pci: support non 1:1 mappings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently we assume that the addresses on the PCI bus are mapped 1:1
to the host CPU. This is not always true. Specifically on Rockchip
RK3568 and RK3588 we have ranges properties in the device tree which
introduce a different mapping. We already worked around this by
changing the ranges property to a 1:1 mapping in b10ee53 ("ARM:
rockchip: rock-5a: Disable non working devices"). To get rid of
the workaround this patch introduces support for non 1:1 mappings.
We do this by porting the bare minimum from Linux drivers/pci/host-bridge.c
over to barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/Makefile      |  2 +-
 drivers/pci/bus.c         | 23 ++++++++++++
 drivers/pci/host-bridge.c | 76 +++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.c         | 15 ++++++--
 include/linux/pci.h       | 20 +++++++++++
 5 files changed, 133 insertions(+), 3 deletions(-)
 create mode 100644 drivers/pci/host-bridge.c

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 9249bffecb..c222f77b3b 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -2,7 +2,7 @@
 #
 # Makefile for the PCI bus specific drivers.
 #
-obj-y		+= pci.o bus.o pci_iomap.o
+obj-y		+= pci.o bus.o pci_iomap.o host-bridge.o
 
 ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
 
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index b6eab56d87..37bdc9a22f 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -3,6 +3,29 @@
 #include <init.h>
 #include <driver.h>
 #include <linux/pci.h>
+#include <linux/resource_ext.h>
+
+void pci_add_resource_offset(struct list_head *resources, struct resource *res,
+			     resource_size_t offset)
+{
+	struct resource_entry *entry;
+
+	entry = resource_list_create_entry(res, 0);
+	if (!entry) {
+		pr_err("PCI: can't add host bridge window %pR\n", res);
+		return;
+	}
+	entry->offset = offset;
+
+	resource_list_add_tail(entry, resources);
+}
+EXPORT_SYMBOL(pci_add_resource_offset);
+
+void pci_add_resource(struct list_head *resources, struct resource *res)
+{
+	pci_add_resource_offset(resources, res, 0);
+}
+EXPORT_SYMBOL(pci_add_resource);
 
 /**
  * pci_match_one_device - Tell if a PCI device structure has a matching
diff --git a/drivers/pci/host-bridge.c b/drivers/pci/host-bridge.c
new file mode 100644
index 0000000000..4460ad1971
--- /dev/null
+++ b/drivers/pci/host-bridge.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Host bridge related code
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <linux/pci.h>
+
+static struct pci_bus *find_pci_root_bus(struct pci_bus *bus)
+{
+	while (bus->parent)
+		bus = bus->parent;
+
+	return bus;
+}
+
+struct pci_controller *pci_find_host_bridge(struct pci_bus *bus)
+{
+	struct pci_bus *root_bus = find_pci_root_bus(bus);
+
+	return root_bus->host;
+}
+EXPORT_SYMBOL_GPL(pci_find_host_bridge);
+
+void pcibios_resource_to_bus(struct pci_bus *bus, struct pci_bus_region *region,
+			     struct resource *res)
+{
+	struct pci_controller *bridge = pci_find_host_bridge(bus);
+	struct resource_entry *window;
+	resource_size_t offset = 0;
+
+	resource_list_for_each_entry(window, &bridge->windows) {
+		if (resource_contains(window->res, res)) {
+			offset = window->offset;
+			break;
+		}
+	}
+
+	region->start = res->start - offset;
+	region->end = res->end - offset;
+}
+EXPORT_SYMBOL(pcibios_resource_to_bus);
+
+static bool region_contains(struct pci_bus_region *region1,
+			    struct pci_bus_region *region2)
+{
+	return region1->start <= region2->start && region1->end >= region2->end;
+}
+
+void pcibios_bus_to_resource(struct pci_bus *bus, struct resource *res,
+			     struct pci_bus_region *region)
+{
+	struct pci_controller *bridge = pci_find_host_bridge(bus);
+	struct resource_entry *window;
+	resource_size_t offset = 0;
+
+	resource_list_for_each_entry(window, &bridge->windows) {
+		struct pci_bus_region bus_region;
+
+		if (resource_type(res) != resource_type(window->res))
+			continue;
+
+		bus_region.start = window->res->start - window->offset;
+		bus_region.end = window->res->end - window->offset;
+
+		if (region_contains(&bus_region, region)) {
+			offset = window->offset;
+			break;
+		}
+	}
+
+	res->start = region->start + offset;
+	res->end = region->end + offset;
+}
+EXPORT_SYMBOL(pcibios_bus_to_resource);
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 67a085d34e..5113abe0fc 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -44,6 +44,7 @@ static void pci_bus_register_devices(struct pci_bus *bus)
 
 void pci_controller_init(struct pci_controller *hose)
 {
+	INIT_LIST_HEAD(&hose->windows);
 }
 
 void register_pci_controller(struct pci_controller *hose)
@@ -401,6 +402,9 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			 size);
 
 		if (pcibios_assign_all_busses()) {
+			struct resource res;
+			struct pci_bus_region region;
+
 			if (ALIGN(*last_addr, size) + size >
 			    dev->bus->resource[busres]->end) {
 				pr_debug("BAR does not fit within bus %s res\n", kind);
@@ -408,11 +412,18 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 			}
 
 			*last_addr = ALIGN(*last_addr, size);
+
+			res.flags = flags;
+			res.start = *last_addr;
+			res.end = res.start + size - 1;
+
+			pcibios_resource_to_bus(dev->bus, &region, &res);
+
 			pci_write_config_dword(dev, pci_base_address_0,
-					       lower_32_bits(*last_addr));
+					       lower_32_bits(region.start));
 			if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64)
 				pci_write_config_dword(dev, pci_base_address_1,
-						       upper_32_bits(*last_addr));
+						       upper_32_bits(region.start));
 			start = *last_addr;
 			*last_addr += size;
 		} else {
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 2fea9ba6c7..73117afa08 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -25,6 +25,7 @@
 #include <linux/ioport.h>
 #include <linux/list.h>
 #include <linux/compiler.h>
+#include <linux/resource_ext.h>
 #include <driver.h>
 #include <errno.h>
 #include <io.h>
@@ -185,6 +186,8 @@ struct pci_controller {
 	unsigned long io_offset;
 	unsigned long io_map_base;
 
+	struct list_head windows;	/* resource_entry */
+
 	unsigned int index;
 
 	/* Optional access method for writing the bus number */
@@ -395,4 +398,21 @@ static inline const struct pci_device_id *pci_match_id(const struct pci_device_i
 { return NULL; }
 #endif
 
+/* drivers/pci/bus.c */
+void pci_add_resource_offset(struct list_head *resources, struct resource *res,
+			     resource_size_t offset);
+void pci_add_resource(struct list_head *resources, struct resource *res);
+
+struct pci_controller *pci_find_host_bridge(struct pci_bus *bus);
+
+struct pci_bus_region {
+	u64 start;
+	u64 end;
+};
+
+void pcibios_resource_to_bus(struct pci_bus *bus, struct pci_bus_region *region,
+			     struct resource *res);
+void pcibios_bus_to_resource(struct pci_bus *bus, struct resource *res,
+			     struct pci_bus_region *region);
+
 #endif /* LINUX_PCI_H */
-- 
2.39.2



