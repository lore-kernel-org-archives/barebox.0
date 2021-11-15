Delivery-date: Mon, 15 Nov 2021 10:33:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYMv-0008K6-Vc
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 10:33:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYMu-0007fp-KI
	for lore@pengutronix.de; Mon, 15 Nov 2021 10:33:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5k/He5N8oxltUY02HBFShPDcOZWqvQjWitydA9bTHHc=; b=cDvGRvS9UtybsB
	UNxFsdf3M8BOQPGVjU3HeeQ5Dc8w6tEjFEZLNOKewMM8u6Z8o8sTIW4urrHt7LwtQm07z6uNhjf4v
	+QloJwAZD1sVDftzhpAqnv/NjBnbT9GY3XxiHW9Qhfp5vTPPZ9mu+t5eIn5DygOK+p+d/15cIx7xu
	OWJgGSKYaPAFJFjMGVuEMFmvt8fdFz7zam8hQ3vM2Sy/xegUwFij5Bb6hD6yn9WDEiJZX8IjZN6LS
	aoHdbdZ8hieWef0igZb+e6fifp0+2rjxv7aQne2Y1y6GTp4ZpgaVhafofaUjmslCF8FbJnHYdV7w9
	eLoGXp9CcsJT2vUf6ZCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmYKM-00Ew5f-7W; Mon, 15 Nov 2021 09:31:02 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmXus-00EpYr-Pe
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 09:04:45 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C5BA81BF213;
 Mon, 15 Nov 2021 09:04:36 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 15 Nov 2021 10:04:32 +0100
Message-Id: <20211115090432.147448-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_010443_160632_0AAF1312 
X-CRM114-Status: GOOD (  19.51  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pci: add ECAM generic controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This has been tested with QEMU AArch64 Virt. The default (-M
virt,highmem=on) will have two ranges specified in the device trees for
memory bars. One 32-bit and the other 64-bit. As barebox can't yet
handle 64-bit BARs, the driver will prefer the 32-bit memory region if
available. If none is available, consider using -M virt,highmem=off or
fixing 64-bit support.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/pci/Kconfig            |   8 ++
 drivers/pci/Makefile           |   1 +
 drivers/pci/pci-ecam-generic.c | 207 +++++++++++++++++++++++++++++++++
 3 files changed, 216 insertions(+)
 create mode 100644 drivers/pci/pci-ecam-generic.c

diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 60e8e93a0739..e847e8e1a3a2 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -60,6 +60,14 @@ config PCI_EFI
 	depends on EFI_BOOTUP
 	select PCI
 
+config PCI_ECAM_GENERIC
+	bool "Generic ECAM-based PCI host controller support"
+	select OF_PCI
+	select PCI
+	help
+	  Say Y here if you want to enable support for generic ECAM-based
+	  PCI host controllers, such as the one emulated by QEMU.
+
 endmenu
 
 endif
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 60e1439ec7b2..b8a5c6392ad6 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_PCIE_DW) += pcie-designware.o pcie-designware-host.o
 obj-$(CONFIG_PCI_IMX6) += pci-imx6.o
 obj-$(CONFIG_PCI_LAYERSCAPE) += pci-layerscape.o
 obj-$(CONFIG_PCI_EFI) += pci-efi.o
+obj-$(CONFIG_PCI_ECAM_GENERIC) += pci-ecam-generic.o
diff --git a/drivers/pci/pci-ecam-generic.c b/drivers/pci/pci-ecam-generic.c
new file mode 100644
index 000000000000..ac2b6b9ea26c
--- /dev/null
+++ b/drivers/pci/pci-ecam-generic.c
@@ -0,0 +1,207 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Generic PCIE host provided by e.g. QEMU
+ *
+ * Heavily based on drivers/pci/pcie_xilinx.c
+ *
+ * Copyright (C) 2016 Imagination Technologies
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <io.h>
+#include <of.h>
+#include <of_address.h>
+#include <init.h>
+#include <linux/pci.h>
+#include <linux/sizes.h>
+
+struct generic_ecam_pcie {
+	struct pci_controller pci;
+	struct resource *cfg;
+	int first_busno;
+	struct resource io;
+	struct resource mem;
+	struct resource prefetch;
+};
+
+static inline struct generic_ecam_pcie *host_to_ecam(struct pci_controller *host)
+{
+	return container_of(host, struct generic_ecam_pcie, pci);
+}
+
+static void __iomem *pci_generic_ecam_conf_address(const struct pci_bus *bus,
+						   u32 devfn, int where)
+{
+	struct generic_ecam_pcie *ecam = host_to_ecam(bus->host);
+	void __iomem *addr;
+
+	addr = IOMEM(ecam->cfg->start);
+	addr += (bus->number - ecam->first_busno) << 20;
+	addr += PCI_SLOT(devfn) << 15;
+	addr += PCI_FUNC(devfn) << 12;
+	addr += where;
+
+	return addr;
+}
+
+static bool pci_generic_ecam_addr_valid(const struct pci_bus *bus, u32 devfn)
+{
+	struct generic_ecam_pcie *ecam = host_to_ecam(bus->host);
+	int num_buses = DIV_ROUND_UP(resource_size(ecam->cfg), 1 << 16);
+
+	return (bus->number >= ecam->first_busno &&
+		bus->number < ecam->first_busno + num_buses);
+}
+
+static int pci_generic_ecam_read_config(struct pci_bus *bus,
+					u32 devfn, int where,
+					int size, u32 *val)
+{
+	void __iomem *addr;
+
+	if (!pci_generic_ecam_addr_valid(bus, devfn))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	addr = pci_generic_ecam_conf_address(bus, devfn, where);
+
+	if (!IS_ALIGNED((uintptr_t)addr, size)) {
+		*val = 0;
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	if (size == 4) {
+		*val = readl(addr);
+	} else if (size == 2) {
+		*val = readw(addr);
+	} else if (size == 1) {
+		*val = readb(addr);
+	} else {
+		*val = 0;
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int pci_generic_ecam_write_config(struct pci_bus *bus, u32 devfn,
+					 int where, int size, u32 val)
+{
+	void __iomem *addr;
+
+	if (!pci_generic_ecam_addr_valid(bus, devfn))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	addr = pci_generic_ecam_conf_address(bus, devfn, where);
+
+	if (!IS_ALIGNED((uintptr_t)addr, size))
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
+	if (size == 4)
+		writel(val, addr);
+	else if (size == 2)
+		writew(val, addr);
+	else if (size == 1)
+		writeb(val, addr);
+	else
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static void pcie_ecam_set_local_bus_nr(struct pci_controller *host, int busno)
+{
+	struct generic_ecam_pcie *ecam = host_to_ecam(host);
+
+	ecam->first_busno = busno;
+}
+
+static const struct pci_ops pci_generic_ecam_ops = {
+	.read = pci_generic_ecam_read_config,
+	.write = pci_generic_ecam_write_config,
+};
+
+static inline bool is_64bit(const struct resource *res)
+{
+	return res->flags & IORESOURCE_MEM_64;
+}
+
+static int pcie_ecam_parse_dt(struct generic_ecam_pcie *ecam)
+{
+	struct device_d *dev = ecam->pci.parent;
+	struct device_node *np = dev->device_node;
+	struct of_pci_range_parser parser;
+	struct of_pci_range range;
+	struct resource res;
+
+	if (of_pci_range_parser_init(&parser, np)) {
+		dev_err(dev, "missing \"ranges\" property\n");
+		return -EINVAL;
+	}
+
+	for_each_of_pci_range(&parser, &range) {
+		of_pci_range_to_resource(&range, np, &res);
+
+		switch (res.flags & IORESOURCE_TYPE_BITS) {
+		case IORESOURCE_IO:
+			memcpy(&ecam->io, &res, sizeof(res));
+			ecam->io.name = "I/O";
+			break;
+
+		case IORESOURCE_MEM:
+			if (res.flags & IORESOURCE_PREFETCH) {
+				memcpy(&ecam->prefetch, &res, sizeof(res));
+				ecam->prefetch.name = "PREFETCH";
+			} else {
+				/* Choose 32-bit mappings over 64-bit ones if possible */
+				if (ecam->mem.name && !is_64bit(&ecam->mem) && is_64bit(&res))
+					break;
+
+				memcpy(&ecam->mem, &res, sizeof(res));
+				ecam->mem.name = "MEM";
+			}
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static int pcie_ecam_probe(struct device_d *dev)
+{
+	struct generic_ecam_pcie *ecam;
+	struct resource *iores;
+	int ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	ecam = xzalloc(sizeof(*ecam));
+	ecam->cfg = iores;
+	ecam->pci.parent = dev;
+	ecam->pci.pci_ops = &pci_generic_ecam_ops;
+	ecam->pci.set_busno = pcie_ecam_set_local_bus_nr;
+	ecam->pci.mem_resource = &ecam->mem;
+	ecam->pci.io_resource = &ecam->io;
+	ecam->pci.mem_pref_resource = &ecam->prefetch;
+
+	ret = pcie_ecam_parse_dt(ecam);
+	if (ret)
+		return ret;
+
+	register_pci_controller(&ecam->pci);
+	return 0;
+}
+
+static struct of_device_id pcie_ecam_dt_ids[] = {
+	{ .compatible = "pci-host-ecam-generic" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d pcie_ecam_driver = {
+	.name = "pcie-generic-ecam",
+	.probe = pcie_ecam_probe,
+	.of_compatible = pcie_ecam_dt_ids,
+};
+device_platform_driver(pcie_ecam_driver);
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

