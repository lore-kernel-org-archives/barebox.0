Delivery-date: Fri, 16 Apr 2021 08:27:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHxO-0000p5-13
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 08:27:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHxM-0007ja-31
	for lore@pengutronix.de; Fri, 16 Apr 2021 08:27:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+yBBcx+lBq6Cw6zQSpRn+/v2TCB00E8vZ3C1cb8HZAo=; b=pMDd3rExFUYr9FXCLLOfJ07Wl
	enptCBQZk4Ebtv5ZM2j7sQIeh+utq/7Glc4Xsp4RQnkC61qWdWLPVsprOynP9KKgs6/wWZEdlJXUl
	Kgb2CipR7rI/YpSCxQZyIznV9iOwDugf2nuW1BBj5XkRb7fKJjmoNK0AbX1AfAZQH6ruF6Kkk+Mrq
	xY0FC76RnUki2Ip7oA8pNivNeyMN8OqMmEubp3WXG3XAQT96cfK9HCXtgkxYwszBT3/GTgwXU422Y
	2gvR4d/cG31UTuuv2Jn4NFGbkM53vDYDVY61j7XHlmgNdEMngjksCSnYy32vivKA/i2AUJGbO8U64
	xgg9buZ7A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXHw1-0012I0-AE; Fri, 16 Apr 2021 06:26:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuQ-0011qg-6G
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 06:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=HITTjrmLQsc9hmZSSXoGqY3xx/5okWgWoh9aYrPXzbI=; b=4z9pl3Q+5rmS8cDBzaE52Ky0Ez
 G0aZAXwRRGFzmohAILoQFZ7POJ9LepG/c9N9R3REnH0dQWpUZ9HHfszdRb+C0S38gK8oN4hKGfphR
 ysUCpMYc9NJ4X9FgAEpXpjiugBQd4vwPDwDxX7JTOOwAaT6KMKQJf6IqJDiJbnF+e3S05/kGaCYpi
 x1ER3EqT1bCC6pQVgtwfd1F8YNlxMQMvD+ZlQfsX6vJ4OF5+/32Dvx1GI2j0yepArpxC6LlLxtRP4
 WSpFNsnhx9bFj8LTjb9zNhgtbH2csf3eBSiwYjwGp3WZwIPz/3krkoXgYPN9PvL+ztNitovp5K9b8
 26YDLTlA==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuK-0097Ee-7Q
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 06:24:52 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B1A9E1C000D;
 Fri, 16 Apr 2021 06:24:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 16 Apr 2021 08:24:35 +0200
Message-Id: <20210416062436.332665-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210416062436.332665-1-ahmad@a3f.at>
References: <20210416062436.332665-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_232448_579258_37F589E2 
X-CRM114-Status: GOOD (  25.70  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] pci: add EFI PCI root bridge IO protocol driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

UEFI specifies two protocols for abstracting both the PCI host bus
controller and for PCI devices. The protocol for PCI devices provides
function pointers for accessing IO Port, Memory and PCI configuration
space, among others. The protocol for bus controllers provides the
ability to read the root bridge's PCI configuration space and to query
resources.

In barebox, we would want to reuse existing PCI drivers unmodified, so
we utilize the root bridge protocol, unlike most other EFI payloads.

We still utilize the PCI (device) IO protocol, but not for core
functionality: EFI has already enumerated the bus for us and allocated
the EFI handles. It thus makes sense to have the new pci device have the
EFI handle as parent and the controller as grand parent instead of
being sibling with the EFI handles. This is done with an early PCI fixup
that patches the device's parent pointer after consulting the PCI IO
GetLocation.

Driver is written from scratch and hasn't seen heavy usage yet, so it
should be used with care. It was written while consulting the UEFI
2.1D specification.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/configs/efi_defconfig |   1 +
 arch/x86/include/asm/pci.h     |   7 +
 drivers/efi/Kconfig            |   1 +
 drivers/pci/Kconfig            |   5 +
 drivers/pci/Makefile           |   1 +
 drivers/pci/pci-efi.c          | 342 ++++++++++++++++++++++++++++++++
 drivers/pci/pci-efi.h          | 343 +++++++++++++++++++++++++++++++++
 7 files changed, 700 insertions(+)
 create mode 100644 arch/x86/include/asm/pci.h
 create mode 100644 drivers/pci/pci-efi.c
 create mode 100644 drivers/pci/pci-efi.h

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 761ffbe261ba..e007bf8a0150 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -88,6 +88,7 @@ CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_EFI=y
 CONFIG_F71808E_WDT=y
 # CONFIG_PINCTRL is not set
+CONFIG_PCI_EFI=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
diff --git a/arch/x86/include/asm/pci.h b/arch/x86/include/asm/pci.h
new file mode 100644
index 000000000000..ca1c0f912dca
--- /dev/null
+++ b/arch/x86/include/asm/pci.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_PCI_H
+#define __ASM_PCI_H
+
+#define pcibios_assign_all_busses()	0
+
+#endif
diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
index cca1a2e1d632..80d9e6f0c5eb 100644
--- a/drivers/efi/Kconfig
+++ b/drivers/efi/Kconfig
@@ -2,3 +2,4 @@ config EFI_BOOTUP
 	bool
 	select BLOCK
 	select PARTITION_DISK
+	select HW_HAS_PCI
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index 058546097621..71d05055d470 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -54,6 +54,11 @@ config PCI_LAYERSCAPE
 	select OF_PCI
 	select PCI
 
+config PCI_EFI
+	bool "EFI PCI protocol"
+	depends on EFI_BOOTUP
+	select PCI
+
 endmenu
 
 endif
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index d227619ed458..6fc4eaf6b2c2 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
 obj-$(CONFIG_PCIE_DW) += pcie-designware.o pcie-designware-host.o
 obj-$(CONFIG_PCI_IMX6) += pci-imx6.o
 obj-$(CONFIG_PCI_LAYERSCAPE) += pci-layerscape.o
+obj-$(CONFIG_PCI_EFI) += pci-efi.o
diff --git a/drivers/pci/pci-efi.c b/drivers/pci/pci-efi.c
new file mode 100644
index 000000000000..e1fe11d07016
--- /dev/null
+++ b/drivers/pci/pci-efi.c
@@ -0,0 +1,342 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+#define pr_fmt(fmt) "pci-efi: " fmt
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <xfuncs.h>
+#include <efi.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
+#include <linux/pci.h>
+
+#include "pci-efi.h"
+
+struct efi_pci_priv {
+	struct efi_pci_root_bridge_io_protocol *protocol;
+	struct device_d *dev;
+	struct pci_controller pci;
+	struct resource mem;
+	struct resource mem_pref;
+	struct resource io;
+	struct list_head children;
+};
+
+struct pci_child_id {
+	size_t segmentno;
+	size_t busno;
+	size_t devno;
+	size_t funcno;
+};
+
+struct pci_child {
+	struct efi_pci_io_protocol *protocol;
+	struct device_d *dev;
+	struct list_head list;
+	struct pci_child_id id;
+};
+
+static inline bool pci_child_id_equal(struct pci_child_id *a, struct pci_child_id *b)
+{
+	return a->segmentno == b->segmentno
+		&& a->busno == b->busno
+		&& a->devno == b->devno
+		&& a->funcno == b->funcno;
+}
+
+#define host_to_efi_pci(host) container_of(host, struct efi_pci_priv, pci)
+
+static inline u64 efi_pci_addr(struct pci_bus *bus, u32 devfn, int where)
+{
+	return EFI_PCI_ADDRESS(bus->number,
+			       PCI_SLOT(devfn), PCI_FUNC(devfn),
+			       where);
+}
+
+static int efi_pci_rd_conf(struct pci_bus *bus, u32 devfn, int where,
+			   int size, u32 *val)
+{
+	struct efi_pci_priv *priv = host_to_efi_pci(bus->host);
+	efi_status_t efiret;
+	u32 value;
+	enum efi_pci_protocol_width width;
+
+	switch (size) {
+	case 4:
+		width = EFI_PCI_WIDTH_U32;
+		break;
+	case 2:
+		width = EFI_PCI_WIDTH_U16;
+		break;
+	case 1:
+		width = EFI_PCI_WIDTH_U8;
+		break;
+	default:
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	efiret = priv->protocol->pci.read(priv->protocol, width,
+		efi_pci_addr(bus, devfn, where),
+		1, &value);
+
+	*val = 0xFFFFFFFF;
+
+	if (EFI_ERROR(efiret))
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
+	*val = value;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int efi_pci_wr_conf(struct pci_bus *bus, u32 devfn, int where,
+			   int size, u32 val)
+{
+	struct efi_pci_priv *priv = host_to_efi_pci(bus->host);
+	efi_status_t efiret;
+	enum efi_pci_protocol_width width;
+
+	switch (size) {
+	case 4:
+		width = EFI_PCI_WIDTH_U32;
+		break;
+	case 2:
+		width = EFI_PCI_WIDTH_U16;
+		break;
+	case 1:
+		width = EFI_PCI_WIDTH_U8;
+		break;
+	default:
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	efiret = priv->protocol->pci.write(priv->protocol, width,
+		efi_pci_addr(bus, devfn, where),
+		1, &val);
+	if (EFI_ERROR(efiret))
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static inline struct resource build_resource(const char *name,
+					     resource_size_t start,
+					     resource_size_t len,
+					     unsigned long flags)
+{
+	struct resource res;
+
+	res.name = name;
+	res.start = start;
+	res.end = start + len - 1;
+	res.flags = flags;
+	res.parent = NULL;
+	INIT_LIST_HEAD(&res.children);
+	INIT_LIST_HEAD(&res.sibling);
+
+	return res;
+}
+
+static const struct pci_ops efi_pci_ops = {
+	.read = efi_pci_rd_conf,
+	.write = efi_pci_wr_conf,
+};
+
+static u8 *acpi_parse_resource(u8 *next, struct resource *out)
+{
+	struct efi_acpi_resource *res;
+	const char *name = NULL;
+	unsigned long flags = 0;
+
+	do {
+		if (*next == ACPI_RESOURCE_END_TAG)
+			return NULL;
+
+		if (*next != ACPI_RESOURCE_DESC_TAG)
+			return ERR_PTR(-EIO);
+
+		res = container_of(next, struct efi_acpi_resource, asd);
+
+		next = (u8 *)&res[1];
+	} while (res->addr_len == 0);
+
+	switch (res->restype) {
+	case ACPI_RESOURCE_TYPE_MEM:
+		if ((res->typflags & ACPI_RESOURCE_TYPFLAG_MTP_MASK)
+		    != ACPI_RESOURCE_TYPFLAG_MTP_MEM)
+			break;
+
+		name = "NP-MEM";
+		flags = IORESOURCE_MEM;
+
+		switch (res->typflags & ACPI_RESOURCE_TYPFLAG_MEM_MASK) {
+		case ACPI_RESOURCE_TYPFLAG_MEM_PREF:
+			name = "P-MEM";
+			flags |= IORESOURCE_PREFETCH;
+			/* fallthrough */
+		case ACPI_RESOURCE_TYPFLAG_MEM_WC:
+		case ACPI_RESOURCE_TYPFLAG_MEM_CACHEABLE:
+			flags |= IORESOURCE_CACHEABLE;
+		}
+
+		if (res->typflags & ACPI_RESOURCE_TYPFLAG_RW_MASK)
+			flags |= IORESOURCE_MEM_WRITEABLE;
+
+		break;
+	case ACPI_RESOURCE_TYPE_IO:
+		name = "IO";
+		flags = IORESOURCE_IO;
+		break;
+	case ACPI_RESOURCE_TYPE_BUSNO:
+		name = "BUS";
+		flags = IORESOURCE_BUS;
+		break;
+	default:
+		return ERR_PTR(-ENXIO);
+	}
+
+	*out = build_resource(name, res->addr_min, res->addr_len, flags);
+
+	pr_debug("%s: %llx-%llx (len=%llx, gr=%lld, xlate_off=%llx, resflags=%08lx)\n",
+		 out->name,
+		 res->addr_min, res->addr_max, res->addr_len,
+		 res->addr_granularity, res->addr_xlate_off,
+		 flags);
+
+	return next;
+}
+
+/* EFI already enumerated the bus for us, match our new pci devices with the efi
+ * handles
+ */
+static void efi_pci_fixup_dev_parent(struct pci_dev *dev)
+{
+	struct efi_pci_priv *priv = host_to_efi_pci(dev->bus->host);
+	struct pci_child *child;
+	struct pci_child_id id;
+
+	id.segmentno = priv->protocol->segmentno;
+	id.busno = dev->bus->number;
+	id.devno = PCI_SLOT(dev->devfn);
+	id.funcno = PCI_FUNC(dev->devfn);
+
+	list_for_each_entry(child, &priv->children, list) {
+		if (IS_ERR(child->protocol))
+			continue;
+
+		if (!child->protocol) {
+			struct efi_device *efichild = to_efi_device(child->dev);
+			efi_status_t efiret;
+
+			BS->handle_protocol(efichild->handle, &EFI_PCI_IO_PROTOCOL_GUID,
+					    (void **)&child->protocol);
+			if (!child->protocol) {
+				child->protocol = ERR_PTR(-ENODEV);
+				continue;
+			}
+
+			efiret = child->protocol->get_location(child->protocol,
+						       &child->id.segmentno,
+						       &child->id.busno,
+						       &child->id.devno,
+						       &child->id.funcno);
+
+			if (EFI_ERROR(efiret)) {
+				child->protocol = ERR_PTR(-efi_errno(efiret));
+				continue;
+			}
+		}
+
+		if (pci_child_id_equal(&child->id, &id)) {
+			dev->dev.priv = child->protocol;
+			dev->dev.parent = child->dev;
+			return;
+		}
+	}
+}
+DECLARE_PCI_FIXUP_EARLY(PCI_ANY_ID, PCI_ANY_ID, efi_pci_fixup_dev_parent);
+
+static int efi_pci_probe(struct efi_device *efidev)
+{
+	struct device_d *child;
+	struct efi_pci_priv *priv;
+	efi_status_t efiret;
+	void *resources;
+	struct resource resource;
+	u8 *res;
+
+	priv = xzalloc(sizeof(*priv));
+
+	BS->handle_protocol(efidev->handle, &EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID,
+			(void **)&priv->protocol);
+	if (!priv->protocol)
+		return -ENODEV;
+
+	efiret = priv->protocol->configuration(priv->protocol, &resources);
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	res = resources;
+
+	while (1) {
+		res = acpi_parse_resource(res, &resource);
+
+		if (IS_ERR(res))
+			return PTR_ERR(res);
+
+		if (!res)
+			break;
+
+		if ((resource.flags & (IORESOURCE_MEM | IORESOURCE_PREFETCH))
+		    == (IORESOURCE_MEM | IORESOURCE_PREFETCH)) {
+			priv->pci.mem_pref_resource = &priv->mem_pref;
+			priv->mem_pref = resource;
+		} else if (resource.flags & IORESOURCE_MEM) {
+			priv->pci.mem_resource = &priv->mem;
+			priv->mem = resource;
+		} else if (resource.flags & IORESOURCE_IO) {
+			priv->pci.io_resource = &priv->io;
+			priv->io = resource;
+		}
+	}
+
+	priv->pci.parent = &efidev->dev;
+	priv->pci.pci_ops = &efi_pci_ops;
+
+	INIT_LIST_HEAD(&priv->children);
+
+	device_for_each_child(&efidev->dev, child) {
+		struct pci_child *pci_child;
+		struct efi_device *efichild = to_efi_device(child);
+
+		if (!efi_device_has_guid(efichild, EFI_PCI_IO_PROTOCOL_GUID))
+			continue;
+
+		pci_child = xzalloc(sizeof(*pci_child));
+
+		pci_child->dev = &efichild->dev;
+
+		/*
+		 * regiser_pci_controller can reconfigure bridge bus numbers,
+		 * thus we only collect the child node handles here, but
+		 * don't yet call GetLocation on them
+		 */
+		list_add_tail(&pci_child->list, &priv->children);
+	};
+
+	register_pci_controller(&priv->pci);
+
+	return 0;
+}
+
+static struct efi_driver efi_pci_driver = {
+        .driver = {
+		.name  = "efi-pci",
+	},
+        .probe = efi_pci_probe,
+	.guid = EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID,
+};
+device_efi_driver(efi_pci_driver);
diff --git a/drivers/pci/pci-efi.h b/drivers/pci/pci-efi.h
new file mode 100644
index 000000000000..1943461cdf23
--- /dev/null
+++ b/drivers/pci/pci-efi.h
@@ -0,0 +1,343 @@
+// SPDX-License-Identifier: GPL-2.0
+#ifndef __PCI_EFI_H_
+#define __PCI_EFI_H_
+
+#include <efi.h>
+
+struct efi_pci_root_bridge_io_protocol;
+struct efi_pci_io_protocol;
+
+enum efi_pci_protocol_width {
+	EFI_PCI_WIDTH_U8,
+	EFI_PCI_WIDTH_U16,
+	EFI_PCI_WIDTH_U32,
+	EFI_PCI_WIDTH_U64,
+	EFI_PCI_WIDTH_FIFO_U8,
+	EFI_PCI_WIDTH_FIFO_U16,
+	EFI_PCI_WIDTH_FIFO_U32,
+	EFI_PCI_WIDTH_FIFO_U64,
+	EFI_PCI_WIDTH_FILL_U8,
+	EFI_PCI_WIDTH_FILL_U16,
+	EFI_PCI_WIDTH_FILL_U32,
+	EFI_PCI_WIDTH_FILL_U64,
+	EFI_PCI_WIDTH_MAX
+};
+
+#define EFI_PCI_IO_PASS_THROUGH_BAR	0xff
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_io_mem) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	enum efi_pci_protocol_width width,
+	u64 addr,
+	size_t count,
+	void *buf
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_io_mem) (
+	struct efi_pci_io_protocol *this,
+	enum efi_pci_protocol_width width,
+	u8 bar,
+	u64 offset,
+	size_t count,
+	void *buf
+);
+
+struct efi_pci_root_bridge_io_protocol_access {
+	efi_pci_root_bridge_io_protocol_io_mem read;
+	efi_pci_root_bridge_io_protocol_io_mem write;
+};
+
+struct efi_pci_io_protocol_access {
+	efi_pci_io_protocol_io_mem read;
+	efi_pci_io_protocol_io_mem write;
+};
+
+#define EFI_PCI_ATTRIBUTE_ISA_MOTHERBOARD_IO   0x0001
+#define EFI_PCI_ATTRIBUTE_ISA_IO               0x0002
+#define EFI_PCI_ATTRIBUTE_VGA_PALETTE_IO       0x0004
+#define EFI_PCI_ATTRIBUTE_VGA_MEMORY           0x0008
+#define EFI_PCI_ATTRIBUTE_VGA_IO               0x0010
+#define EFI_PCI_ATTRIBUTE_IDE_PRIMARY_IO       0x0020
+#define EFI_PCI_ATTRIBUTE_IDE_SECONDARY_IO     0x0040
+#define EFI_PCI_ATTRIBUTE_MEMORY_WRITE_COMBINE 0x0080
+#define EFI_PCI_ATTRIBUTE_IO                   0x0100
+#define EFI_PCI_ATTRIBUTE_MEMORY               0x0200
+#define EFI_PCI_ATTRIBUTE_BUS_MASTER           0x0400
+#define EFI_PCI_ATTRIBUTE_MEMORY_CACHED        0x0800
+#define EFI_PCI_ATTRIBUTE_MEMORY_DISABLE       0x1000
+#define EFI_PCI_ATTRIBUTE_EMBEDDED_DEVICE      0x2000
+#define EFI_PCI_ATTRIBUTE_EMBEDDED_ROM         0x4000
+#define EFI_PCI_ATTRIBUTE_DUAL_ADDRESS_CYCLE   0x8000
+#define EFI_PCI_ATTRIBUTE_ISA_IO_16            0x10000
+#define EFI_PCI_ATTRIBUTE_VGA_PALETTE_IO_16    0x20000
+#define EFI_PCI_ATTRIBUTE_VGA_IO_16            0x40000
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_poll_io_mem) (
+	struct efi_pci_root_bridge_io_protocol	*this,
+	enum efi_pci_protocol_width width,
+	u64 address,
+	u64 mask,
+	u64 value,
+	u64 delay,
+	u64 *result
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_poll_io_mem) (
+	struct efi_pci_io_protocol	*this,
+	enum efi_pci_protocol_width width,
+	u8 bar,
+	u64 offset,
+	u64 mask,
+	u64 value,
+	u64 delay,
+	u64 *result
+);
+
+enum efi_pci_root_bridge_io_protocol_operation {
+	EFI_PCI_ROOT_BRIGE_IO_OP_BUS_MASTER_READ,
+	EFI_PCI_ROOT_BRIGE_IO_OP_BUS_MASTER_WRITE,
+	EFI_PCI_ROOT_BRIGE_IO_OP_BUS_MASTER_COMMON_BUFFER,
+	EFI_PCI_ROOT_BRIGE_IO_OP_BUS_MASTER_READ64,
+	EFI_PCI_ROOT_BRIGE_IO_OP_BUS_MASTER_WRITE64,
+	EFI_PCI_ROOT_BRIGE_IO_OP_BUS_MASTER_COMMON_BUFFER64,
+	EFI_PCI_ROOT_BRIGE_IO_OP_MAX
+};
+
+enum efi_pci_io_protocol_operation {
+	EFI_PCI_IO_OP_BUS_MASTER_READ,
+	EFI_PCI_IO_OP_BUS_MASTER_WRITE,
+	EFI_PCI_IO_OP_BUS_MASTER_COMMON_BUFFER,
+	EFI_PCI_IO_OP_MAX
+};
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_copy_mem) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	enum efi_pci_protocol_width width,
+	u64 dst,
+	u64 src,
+	size_t count
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_copy_mem) (
+	struct efi_pci_io_protocol *this,
+	enum efi_pci_protocol_width width,
+	u8 dst_bar,
+	u64 dst_offset,
+	u8 src_bar,
+	u64 src_offset,
+	size_t count
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_map) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	enum efi_pci_root_bridge_io_protocol_operation operation,
+	void *hostaddr,
+	size_t *nbytes,
+	efi_physical_addr_t *devaddr,
+	void **mapping
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_map) (
+	struct efi_pci_io_protocol *this,
+	enum efi_pci_io_protocol_operation operation,
+	void *hostaddr,
+	size_t *nbytes,
+	efi_physical_addr_t *devaddr,
+	void **mapping
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_unmap) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	void *mapping
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_unmap) (
+	struct efi_pci_io_protocol *this,
+	void *mapping
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_allocate_buffer) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	enum efi_allocate_type alloctype,
+	enum efi_memory_type memtype,
+	size_t npages,
+	void **hostaddr,
+	u64 attrs
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_allocate_buffer) (
+	struct efi_pci_io_protocol *this,
+	enum efi_allocate_type alloctype,
+	enum efi_memory_type memtype,
+	size_t npages,
+	void **hostaddr,
+	u64 attrs
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_free_buffer) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	size_t npages,
+	void *hostaddr
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_free_buffer) (
+	struct efi_pci_io_protocol *this,
+	size_t npages,
+	void *hostaddr
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_flush) (
+	struct efi_pci_root_bridge_io_protocol *this
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_flush) (
+	struct efi_pci_io_protocol *this
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_get_location) (
+	struct efi_pci_io_protocol *this,
+	size_t *segmentno,
+	size_t *busno,
+	size_t *deveno,
+	size_t *funcno
+);
+
+enum efi_io_protocol_attribute_operation {
+	PCI_IO_ATTR_OP_GET,
+	PCI_IO_ATTR_OP_SET,
+	PCI_IO_ATTR_OP_ENABLE,
+	PCI_IO_ATTR_OP_DISABLE,
+	PCI_IO_ATTR_OP_SUPPORTED,
+	PCI_IO_ATTR_OP_MAX,
+};
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_attributes) (
+	struct efi_pci_io_protocol *this,
+	enum efi_io_protocol_attribute_operation operation,
+	u64 attrs,
+	u64 *result
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_get_attributes) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	u64 *supports,
+	u64 *attrs
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_get_bar_attributes) (
+	struct efi_pci_io_protocol *this,
+	u8 bar,
+	u64 *supports,
+	void **resources
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_set_attributes) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	u64 attrs,
+	u64 *resource_base,
+	u64 *resource_len
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_set_bar_attributes) (
+	struct efi_pci_io_protocol *this,
+	u64 attrs,
+	u8 bar,
+	u64 *offset,
+	u64 *len
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_root_bridge_io_protocol_configuration) (
+	struct efi_pci_root_bridge_io_protocol *this,
+	void **resources
+);
+
+typedef efi_status_t (EFIAPI *efi_pci_io_protocol_config) (
+	struct efi_pci_io_protocol *this,
+	enum efi_pci_protocol_width width,
+	u32 offset,
+	size_t count,
+	void *buffer
+);
+
+struct efi_pci_io_protocol_config_access {
+	efi_pci_io_protocol_config read;
+	efi_pci_io_protocol_config write;
+};
+
+struct __packed efi_acpi_resource {
+#define	ACPI_RESOURCE_DESC_TAG	0x8A
+#define	ACPI_RESOURCE_END_TAG	0x79
+	u8 asd; /* 0x8A */
+	u16 len; /* 0x2B */
+#define	ACPI_RESOURCE_TYPE_MEM		0
+#define	ACPI_RESOURCE_TYPE_IO		1
+#define	ACPI_RESOURCE_TYPE_BUSNO	2
+	u8 restype;
+	u8 genflags;
+#define	ACPI_RESOURCE_TYPFLAG_TTP_MASK	0b00100000
+#define	ACPI_RESOURCE_TYPFLAG_MTP_MASK	0b00011000
+#define		ACPI_RESOURCE_TYPFLAG_MTP_MEM		0
+#define		ACPI_RESOURCE_TYPFLAG_MTP_RESERVED	1
+#define		ACPI_RESOURCE_TYPFLAG_MTP_ACPI		2
+#define		ACPI_RESOURCE_TYPFLAG_MTP_NVS		3
+#define	ACPI_RESOURCE_TYPFLAG_MEM_MASK	0b00000110
+#define		ACPI_RESOURCE_TYPFLAG_MEM_NONCACHEABLE	0
+#define		ACPI_RESOURCE_TYPFLAG_MEM_CACHEABLE	1
+#define		ACPI_RESOURCE_TYPFLAG_MEM_WC		2
+#define		ACPI_RESOURCE_TYPFLAG_MEM_PREF		3
+#define	ACPI_RESOURCE_TYPFLAG_RW_MASK	0b00000001
+	u8 typflags;
+	u64 addr_granularity;
+	u64 addr_min;
+	u64 addr_max;
+	u64 addr_xlate_off;
+	u64 addr_len;
+};
+
+struct efi_pci_root_bridge_io_protocol {
+	efi_handle_t					parent_handle;
+	efi_pci_root_bridge_io_protocol_poll_io_mem	poll_mem;
+	efi_pci_root_bridge_io_protocol_poll_io_mem	poll_io;
+	struct efi_pci_root_bridge_io_protocol_access	mem;
+	struct efi_pci_root_bridge_io_protocol_access	io;
+	struct efi_pci_root_bridge_io_protocol_access	pci;
+	efi_pci_root_bridge_io_protocol_copy_mem	copy_mem;
+	efi_pci_root_bridge_io_protocol_map		map;
+	efi_pci_root_bridge_io_protocol_unmap		unmap;
+	efi_pci_root_bridge_io_protocol_allocate_buffer	allocate_buffer;
+	efi_pci_root_bridge_io_protocol_free_buffer	free_buffer;
+	efi_pci_root_bridge_io_protocol_flush		flush;
+	efi_pci_root_bridge_io_protocol_get_attributes	get_attributes;
+	efi_pci_root_bridge_io_protocol_set_attributes	set_attributes;
+	efi_pci_root_bridge_io_protocol_configuration	configuration;
+	u32						segmentno;
+};
+
+struct efi_pci_io_protocol {
+	efi_pci_io_protocol_poll_io_mem		poll_mem;
+	efi_pci_io_protocol_poll_io_mem		poll_io;
+	struct efi_pci_io_protocol_access	mem;
+	struct efi_pci_io_protocol_access	io;
+	struct efi_pci_io_protocol_access	pci;
+	efi_pci_io_protocol_copy_mem		copy_mem;
+	efi_pci_io_protocol_map			map;
+	efi_pci_io_protocol_unmap		unmap;
+	efi_pci_io_protocol_allocate_buffer	allocate_buffer;
+	efi_pci_io_protocol_free_buffer		free_buffer;
+	efi_pci_io_protocol_flush		flush;
+	efi_pci_io_protocol_get_location	get_location;
+	efi_pci_io_protocol_attributes		attributes;
+	efi_pci_io_protocol_get_bar_attributes	get_bar_attributes;
+	efi_pci_io_protocol_set_bar_attributes	set_bar_attributes;
+	u64					rom_size;
+	void					*rom_image;
+};
+
+#define EFI_PCI_ADDRESS(bus, dev, func, reg) \
+  (u64) ( \
+  (((size_t) bus) << 24) | \
+  (((size_t) dev) << 16) | \
+  (((size_t) func) << 8) | \
+  (((size_t) (reg)) < 256 ? ((size_t) (reg)) : ((u64)(reg)) << 32))
+
+#endif
-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

