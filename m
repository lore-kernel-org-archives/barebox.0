Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2oXl-0006E3-W2
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 21:27:53 +0000
Received: by mail-la0-f53.google.com with SMTP id b8so588409lan.40
 for <barebox@lists.infradead.org>; Thu, 03 Jul 2014 14:27:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  4 Jul 2014 01:27:02 +0400
Message-Id: <1404422826-6589-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v5 3/7] PCI: initial commit
To: barebox@lists.infradead.org

used shorten version of linux-2.6.39 pci_ids.h

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/Kconfig                 |   1 +
 drivers/Makefile                |   1 +
 drivers/pci/Kconfig             |  29 ++++
 drivers/pci/Makefile            |   8 ++
 drivers/pci/bus.c               | 110 +++++++++++++++
 drivers/pci/pci.c               | 292 +++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci_iomap.c         |  29 ++++
 include/linux/mod_devicetable.h |  20 +++
 include/linux/pci.h             | 297 ++++++++++++++++++++++++++++++++++++++++
 include/linux/pci_ids.h         | 136 ++++++++++++++++++
 include/linux/pci_regs.h        | 110 +++++++++++++++
 11 files changed, 1033 insertions(+)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 53e1e97..12a9d8c 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -27,5 +27,6 @@ source "drivers/pinctrl/Kconfig"
 source "drivers/bus/Kconfig"
 source "drivers/regulator/Kconfig"
 source "drivers/reset/Kconfig"
+source "drivers/pci/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index ef3604f..1990e86 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -26,3 +26,4 @@ obj-y += pinctrl/
 obj-y += bus/
 obj-$(CONFIG_REGULATOR) += regulator/
 obj-$(CONFIG_RESET_CONTROLLER) += reset/
+obj-$(CONFIG_PCI) += pci/
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
new file mode 100644
index 0000000..9e46592
--- /dev/null
+++ b/drivers/pci/Kconfig
@@ -0,0 +1,29 @@
+config HW_HAS_PCI
+	bool
+
+if HW_HAS_PCI
+
+menu "PCI bus options"
+
+config PCI
+	bool "Support for PCI controller"
+	depends on HW_HAS_PCI
+	help
+	  Find out whether you have a PCI motherboard. PCI is the name of a
+	  bus system, i.e. the way the CPU talks to the other stuff inside
+	  your box. If you have PCI, say Y, otherwise N.
+
+
+config PCI_DEBUG
+	bool "PCI Debugging"
+	depends on PCI
+	help
+	  Say Y here if you want the PCI core to produce a bunch of debug
+	  messages to the system log.  Select this if you are having a
+	  problem with PCI support and want to see more of what is going on.
+
+	  When in doubt, say N.
+
+endmenu
+
+endif
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
new file mode 100644
index 0000000..edac1a5
--- /dev/null
+++ b/drivers/pci/Makefile
@@ -0,0 +1,8 @@
+#
+# Makefile for the PCI bus specific drivers.
+#
+obj-y		+= pci.o bus.o pci_iomap.o
+
+ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
+
+CPPFLAGS += $(ccflags-y)
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
new file mode 100644
index 0000000..8215ee5
--- /dev/null
+++ b/drivers/pci/bus.c
@@ -0,0 +1,110 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/pci.h>
+
+/**
+ * pci_match_one_device - Tell if a PCI device structure has a matching
+ *                        PCI device id structure
+ * @id: single PCI device id structure to match
+ * @dev: the PCI device structure to match against
+ *
+ * Returns the matching pci_device_id structure or %NULL if there is no match.
+ */
+static inline const struct pci_device_id *
+pci_match_one_device(const struct pci_device_id *id, const struct pci_dev *dev)
+{
+	if ((id->vendor == PCI_ANY_ID || id->vendor == dev->vendor) &&
+	    (id->device == PCI_ANY_ID || id->device == dev->device) &&
+	    (id->subvendor == PCI_ANY_ID || id->subvendor == dev->subsystem_vendor) &&
+	    (id->subdevice == PCI_ANY_ID || id->subdevice == dev->subsystem_device) &&
+	    !((id->class ^ dev->class) & id->class_mask))
+		return id;
+	return NULL;
+}
+
+static int pci_match(struct device_d *dev, struct driver_d *drv)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct pci_driver *pdrv = to_pci_driver(drv);
+	struct pci_device_id *id;
+
+	for (id = (struct pci_device_id *)pdrv->id_table; id->vendor; id++)
+		if (pci_match_one_device(id, pdev)) {
+			dev->priv = id;
+			return 0;
+		}
+
+	return -1;
+}
+
+static int pci_probe(struct device_d *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct pci_driver *pdrv = to_pci_driver(dev->driver);
+
+	return pdrv->probe(pdev, dev->priv);
+}
+
+static void pci_remove(struct device_d *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+	struct pci_driver *pdrv = to_pci_driver(dev->driver);
+
+	pdrv->remove(pdev);
+}
+
+struct bus_type pci_bus = {
+	.name = "pci",
+	.match = pci_match,
+	.probe = pci_probe,
+	.remove = pci_remove,
+};
+
+static int pci_bus_init(void)
+{
+	return bus_register(&pci_bus);
+}
+pure_initcall(pci_bus_init);
+
+int pci_register_driver(struct pci_driver *pdrv)
+{
+	struct driver_d *drv = &pdrv->driver;
+
+	if (!pdrv->id_table)
+		return -EIO;
+
+	drv->name = pdrv->name;
+	drv->bus = &pci_bus;
+
+	return register_driver(drv);
+}
+
+int pci_register_device(struct pci_dev *pdev)
+{
+	char str[6];
+	struct device_d *dev = &pdev->dev;
+	int ret;
+
+	strcpy(dev->name, "pci");
+	dev->bus = &pci_bus;
+	dev->id = DEVICE_ID_DYNAMIC;
+
+	ret = register_device(dev);
+
+	if (ret)
+		return ret;
+
+	sprintf(str, "%02x", pdev->devfn);
+	dev_add_param_fixed(dev, "devfn", str);
+	sprintf(str, "%04x", (pdev->class >> 8) & 0xffff);
+	dev_add_param_fixed(dev, "class", str);
+	sprintf(str, "%04x", pdev->vendor);
+	dev_add_param_fixed(dev, "vendor", str);
+	sprintf(str, "%04x", pdev->device);
+	dev_add_param_fixed(dev, "device", str);
+	sprintf(str, "%04x", pdev->revision);
+	dev_add_param_fixed(dev, "revision", str);
+
+	return 0;
+}
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
new file mode 100644
index 0000000..ad9350f
--- /dev/null
+++ b/drivers/pci/pci.c
@@ -0,0 +1,292 @@
+#include <common.h>
+#include <linux/pci.h>
+
+#ifdef DEBUG
+#define DBG(x...) printk(x)
+#else
+#define DBG(x...)
+#endif
+
+static struct pci_controller *hose_head, **hose_tail = &hose_head;
+
+LIST_HEAD(pci_root_buses);
+EXPORT_SYMBOL(pci_root_buses);
+
+static struct pci_bus *pci_alloc_bus(void)
+{
+	struct pci_bus *b;
+
+	b = kzalloc(sizeof(*b), GFP_KERNEL);
+	if (b) {
+		INIT_LIST_HEAD(&b->node);
+		INIT_LIST_HEAD(&b->children);
+		INIT_LIST_HEAD(&b->devices);
+		INIT_LIST_HEAD(&b->slots);
+		INIT_LIST_HEAD(&b->resources);
+	}
+	return b;
+}
+
+void register_pci_controller(struct pci_controller *hose)
+{
+	struct pci_bus *bus;
+
+	*hose_tail = hose;
+	hose_tail = &hose->next;
+
+	bus = pci_alloc_bus();
+	hose->bus = bus;
+	bus->ops = hose->pci_ops;
+	bus->resource[0] = hose->mem_resource;
+	bus->resource[1] = hose->io_resource;
+
+	pci_scan_bus(bus);
+
+	list_add_tail(&bus->node, &pci_root_buses);
+
+	return;
+}
+
+/*
+ *  Wrappers for all PCI configuration access functions.  They just check
+ *  alignment, do locking and call the low-level functions pointed to
+ *  by pci_dev->ops.
+ */
+
+#define PCI_byte_BAD 0
+#define PCI_word_BAD (pos & 1)
+#define PCI_dword_BAD (pos & 3)
+
+#define PCI_OP_READ(size,type,len) \
+int pci_bus_read_config_##size \
+	(struct pci_bus *bus, unsigned int devfn, int pos, type *value)	\
+{									\
+	int res;							\
+	u32 data = 0;							\
+	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
+	res = bus->ops->read(bus, devfn, pos, len, &data);		\
+	*value = (type)data;						\
+	return res;							\
+}
+
+#define PCI_OP_WRITE(size,type,len) \
+int pci_bus_write_config_##size \
+	(struct pci_bus *bus, unsigned int devfn, int pos, type value)	\
+{									\
+	int res;							\
+	if (PCI_##size##_BAD) return PCIBIOS_BAD_REGISTER_NUMBER;	\
+	res = bus->ops->write(bus, devfn, pos, len, value);		\
+	return res;							\
+}
+
+PCI_OP_READ(byte, u8, 1)
+PCI_OP_READ(word, u16, 2)
+PCI_OP_READ(dword, u32, 4)
+PCI_OP_WRITE(byte, u8, 1)
+PCI_OP_WRITE(word, u16, 2)
+PCI_OP_WRITE(dword, u32, 4)
+
+EXPORT_SYMBOL(pci_bus_read_config_byte);
+EXPORT_SYMBOL(pci_bus_read_config_word);
+EXPORT_SYMBOL(pci_bus_read_config_dword);
+EXPORT_SYMBOL(pci_bus_write_config_byte);
+EXPORT_SYMBOL(pci_bus_write_config_word);
+EXPORT_SYMBOL(pci_bus_write_config_dword);
+
+static struct pci_dev *alloc_pci_dev(void)
+{
+	struct pci_dev *dev;
+
+	dev = kzalloc(sizeof(struct pci_dev), GFP_KERNEL);
+	if (!dev)
+		return NULL;
+
+	INIT_LIST_HEAD(&dev->bus_list);
+
+	return dev;
+}
+
+unsigned int pci_scan_bus(struct pci_bus *bus)
+{
+	unsigned int devfn, l, max, class;
+	unsigned char cmd, tmp, hdr_type, is_multi = 0;
+	struct pci_dev *dev;
+	resource_size_t last_mem;
+	resource_size_t last_io;
+
+	/* FIXME: use res_start() */
+	last_mem = bus->resource[0]->start;
+	last_io = bus->resource[1]->start;
+
+	DBG("pci_scan_bus for bus %d\n", bus->number);
+	DBG(" last_io = 0x%08x, last_mem = 0x%08x\n", last_io, last_mem);
+	max = bus->secondary;
+
+	for (devfn = 0; devfn < 0xff; ++devfn) {
+		int bar;
+		u32 old_bar, mask;
+		int size;
+
+		if (PCI_FUNC(devfn) && !is_multi) {
+			/* not a multi-function device */
+			continue;
+		}
+		if (pci_bus_read_config_byte(bus, devfn, PCI_HEADER_TYPE, &hdr_type))
+			continue;
+		if (!PCI_FUNC(devfn))
+			is_multi = hdr_type & 0x80;
+
+		if (pci_bus_read_config_dword(bus, devfn, PCI_VENDOR_ID, &l) ||
+		    /* some broken boards return 0 if a slot is empty: */
+		    l == 0xffffffff || l == 0x00000000 || l == 0x0000ffff || l == 0xffff0000)
+			continue;
+
+		dev = alloc_pci_dev();
+		if (!dev)
+			return 0;
+
+		dev->bus = bus;
+		dev->devfn = devfn;
+		dev->vendor = l & 0xffff;
+		dev->device = (l >> 16) & 0xffff;
+
+		/* non-destructively determine if device can be a master: */
+		pci_read_config_byte(dev, PCI_COMMAND, &cmd);
+		pci_write_config_byte(dev, PCI_COMMAND, cmd | PCI_COMMAND_MASTER);
+		pci_read_config_byte(dev, PCI_COMMAND, &tmp);
+		pci_write_config_byte(dev, PCI_COMMAND, cmd);
+
+		pci_read_config_dword(dev, PCI_CLASS_REVISION, &class);
+		dev->revision = class & 0xff;
+		class >>= 8;				    /* upper 3 bytes */
+		dev->class = class;
+		class >>= 8;
+		dev->hdr_type = hdr_type;
+
+		DBG("PCI: class = %08x, hdr_type = %08x\n", class, hdr_type);
+
+		switch (hdr_type & 0x7f) {		    /* header type */
+		case PCI_HEADER_TYPE_NORMAL:		    /* standard header */
+			if (class == PCI_CLASS_BRIDGE_PCI)
+				goto bad;
+
+			/*
+			 * read base address registers, again pcibios_fixup() can
+			 * tweak these
+			 */
+			pci_read_config_dword(dev, PCI_ROM_ADDRESS, &l);
+			dev->rom_address = (l == 0xffffffff) ? 0 : l;
+			break;
+		default:				    /* unknown header */
+		bad:
+			printk(KERN_ERR "PCI: %02x:%02x [%04x/%04x/%06x] has unknown header type %02x, ignoring.\n",
+			       bus->number, dev->devfn, dev->vendor, dev->device, class, hdr_type);
+			continue;
+		}
+
+		DBG("PCI: %02x:%02x [%04x/%04x]\n", bus->number, dev->devfn, dev->vendor, dev->device);
+
+		list_add_tail(&dev->bus_list, &bus->devices);
+		pci_register_device(dev);
+
+		if (class == PCI_CLASS_BRIDGE_HOST) {
+			DBG("PCI: skip pci host bridge\n");
+			continue;
+		}
+
+		for (bar = 0; bar < 6; bar++) {
+			resource_size_t last_addr;
+
+			pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &old_bar);
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
+			pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &mask);
+			pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, old_bar);
+
+			if (mask == 0 || mask == 0xffffffff) {
+				DBG("  PCI: pbar%d set bad mask\n", bar);
+				continue;
+			}
+
+			if (mask & 0x01) { /* IO */
+				size = -(mask & 0xfffffffe);
+				DBG("  PCI: pbar%d: mask=%08x io %d bytes\n", bar, mask, size);
+				pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
+				last_addr = last_io;
+				last_io += size;
+
+			} else { /* MEM */
+				size = -(mask & 0xfffffff0);
+				DBG("  PCI: pbar%d: mask=%08x memory %d bytes\n", bar, mask, size);
+				pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
+				last_addr = last_mem;
+				last_mem += size;
+			}
+
+			dev->resource[bar].start = last_addr;
+			dev->resource[bar].end = last_addr + size - 1;
+		}
+	}
+
+	/*
+	 * We've scanned the bus and so we know all about what's on
+	 * the other side of any bridges that may be on this bus plus
+	 * any devices.
+	 *
+	 * Return how far we've got finding sub-buses.
+	 */
+	DBG("PCI: pci_scan_bus returning with max=%02x\n", max);
+
+	return max;
+}
+
+static void __pci_set_master(struct pci_dev *dev, bool enable)
+{
+	u16 old_cmd, cmd;
+
+	pci_read_config_word(dev, PCI_COMMAND, &old_cmd);
+	if (enable)
+		cmd = old_cmd | PCI_COMMAND_MASTER;
+	else
+		cmd = old_cmd & ~PCI_COMMAND_MASTER;
+	if (cmd != old_cmd) {
+		dev_dbg(&dev->dev, "%s bus mastering\n",
+			enable ? "enabling" : "disabling");
+		pci_write_config_word(dev, PCI_COMMAND, cmd);
+	}
+}
+
+/**
+ * pci_set_master - enables bus-mastering for device dev
+ * @dev: the PCI device to enable
+ */
+void pci_set_master(struct pci_dev *dev)
+{
+	__pci_set_master(dev, true);
+}
+EXPORT_SYMBOL(pci_set_master);
+
+/**
+ * pci_clear_master - disables bus-mastering for device dev
+ * @dev: the PCI device to disable
+ */
+void pci_clear_master(struct pci_dev *dev)
+{
+	__pci_set_master(dev, false);
+}
+EXPORT_SYMBOL(pci_clear_master);
+
+/**
+ * pci_enable_device - Initialize device before it's used by a driver.
+ * @dev: PCI device to be initialized
+ */
+int pci_enable_device(struct pci_dev *dev)
+{
+	u32 t;
+
+	pci_read_config_dword(dev, PCI_COMMAND, &t);
+	return pci_write_config_dword(dev, PCI_COMMAND, t
+				| PCI_COMMAND_IO
+				| PCI_COMMAND_MEMORY
+				);
+}
+EXPORT_SYMBOL(pci_enable_device);
diff --git a/drivers/pci/pci_iomap.c b/drivers/pci/pci_iomap.c
new file mode 100644
index 0000000..a56f61d
--- /dev/null
+++ b/drivers/pci/pci_iomap.c
@@ -0,0 +1,29 @@
+/*
+ * Implement the default iomap interfaces
+ *
+ * (C) Copyright 2004 Linus Torvalds
+ */
+#include <linux/pci.h>
+#include <io.h>
+
+#include <module.h>
+
+/**
+ * pci_iomap - create a virtual mapping cookie for a PCI BAR
+ * @dev: PCI device that owns the BAR
+ * @bar: BAR number
+ *
+ * Using this function you will get a __iomem address to your device BAR.
+ * You can access it using ioread*() and iowrite*(). These functions hide
+ * the details if this is a MMIO or PIO address space and will just do what
+ * you expect from them in the correct way.
+ *
+ */
+void __iomem *pci_iomap(struct pci_dev *dev, int bar)
+{
+	struct pci_bus *bus = dev->bus;
+	resource_size_t start = pci_resource_start(dev, bar);
+
+	return (void *)bus->ops->res_start(bus, start);
+}
+EXPORT_SYMBOL(pci_iomap);
diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
new file mode 100644
index 0000000..c822075
--- /dev/null
+++ b/include/linux/mod_devicetable.h
@@ -0,0 +1,20 @@
+/*
+ * Device tables which are exported to userspace via
+ * scripts/mod/file2alias.c.  You must keep that file in sync with this
+ * header.
+ */
+
+#ifndef LINUX_MOD_DEVICETABLE_H
+#define LINUX_MOD_DEVICETABLE_H
+
+#include <linux/types.h>
+
+#define PCI_ANY_ID (~0)
+
+struct pci_device_id {
+	__u32 vendor, device;		/* Vendor and device ID or PCI_ANY_ID*/
+	__u32 subvendor, subdevice;	/* Subsystem ID's or PCI_ANY_ID */
+	__u32 class, class_mask;	/* (class,subclass,prog-if) triplet */
+};
+
+#endif /* LINUX_MOD_DEVICETABLE_H */
diff --git a/include/linux/pci.h b/include/linux/pci.h
new file mode 100644
index 0000000..6caed01
--- /dev/null
+++ b/include/linux/pci.h
@@ -0,0 +1,297 @@
+/*
+ *	pci.h
+ *
+ *	PCI defines and function prototypes
+ *	Copyright 1994, Drew Eckhardt
+ *	Copyright 1997--1999 Martin Mares <mj@ucw.cz>
+ *
+ *	For more information, please consult the following manuals (look at
+ *	http://www.pcisig.com/ for how to get them):
+ *
+ *	PCI BIOS Specification
+ *	PCI Local Bus Specification
+ *	PCI to PCI Bridge Specification
+ *	PCI System Design Guide
+ */
+#ifndef LINUX_PCI_H
+#define LINUX_PCI_H
+
+#include <linux/mod_devicetable.h>
+
+#include <linux/pci_regs.h>
+#include <linux/types.h>
+#include <linux/ioport.h>
+#include <linux/list.h>
+#include <linux/compiler.h>
+#include <driver.h>
+#include <errno.h>
+#include <io.h>
+
+#include <linux/pci_ids.h>
+
+
+/*
+ * The PCI interface treats multi-function devices as independent
+ * devices.  The slot/function address of each device is encoded
+ * in a single byte as follows:
+ *
+ *	7:3 = slot
+ *	2:0 = function
+ */
+#define PCI_DEVFN(slot, func)	((((slot) & 0x1f) << 3) | ((func) & 0x07))
+#define PCI_SLOT(devfn)		(((devfn) >> 3) & 0x1f)
+#define PCI_FUNC(devfn)		((devfn) & 0x07)
+
+/*
+ *  For PCI devices, the region numbers are assigned this way:
+ */
+enum {
+	/* #0-5: standard PCI resources */
+	PCI_STD_RESOURCES,
+	PCI_STD_RESOURCE_END = 5,
+
+	/* #6: expansion ROM resource */
+	PCI_ROM_RESOURCE,
+
+	/* device specific resources */
+#ifdef CONFIG_PCI_IOV
+	PCI_IOV_RESOURCES,
+	PCI_IOV_RESOURCE_END = PCI_IOV_RESOURCES + PCI_SRIOV_NUM_BARS - 1,
+#endif
+
+	/* resources assigned to buses behind the bridge */
+#define PCI_BRIDGE_RESOURCE_NUM 4
+
+	PCI_BRIDGE_RESOURCES,
+	PCI_BRIDGE_RESOURCE_END = PCI_BRIDGE_RESOURCES +
+				  PCI_BRIDGE_RESOURCE_NUM - 1,
+
+	/* total resources associated with a PCI device */
+	PCI_NUM_RESOURCES,
+
+	/* preserve this for compatibility */
+	DEVICE_COUNT_RESOURCE = PCI_NUM_RESOURCES,
+};
+
+/*
+ * Error values that may be returned by PCI functions.
+ */
+#define PCIBIOS_SUCCESSFUL		0x00
+#define PCIBIOS_FUNC_NOT_SUPPORTED	0x81
+#define PCIBIOS_BAD_VENDOR_ID		0x83
+#define PCIBIOS_DEVICE_NOT_FOUND	0x86
+#define PCIBIOS_BAD_REGISTER_NUMBER	0x87
+#define PCIBIOS_SET_FAILED		0x88
+#define PCIBIOS_BUFFER_TOO_SMALL	0x89
+
+/*
+ * The pci_dev structure is used to describe PCI devices.
+ */
+struct pci_dev {
+	struct list_head bus_list;	/* node in per-bus list */
+	struct pci_bus	*bus;		/* bus this device is on */
+	struct pci_bus	*subordinate;	/* bus this device bridges to */
+
+	void		*sysdata;	/* hook for sys-specific extension */
+	struct proc_dir_entry *procent;	/* device entry in /proc/bus/pci */
+	struct pci_slot	*slot;		/* Physical slot this device is in */
+
+	struct device_d dev;
+
+	unsigned int	devfn;		/* encoded device & function index */
+	unsigned short	vendor;
+	unsigned short	device;
+	unsigned short	subsystem_vendor;
+	unsigned short	subsystem_device;
+	unsigned int	class;		/* 3 bytes: (base,sub,prog-if) */
+	u8		revision;	/* PCI revision, low byte of class word */
+	u8		hdr_type;	/* PCI header type (`multi' flag masked out) */
+
+	struct resource resource[DEVICE_COUNT_RESOURCE]; /* I/O and memory regions + expansion ROMs */
+
+	/* Base registers for this device, can be adjusted by
+	 * pcibios_fixup() as necessary.
+	 */
+	unsigned long	base_address[6];
+	unsigned long	rom_address;
+};
+#define	to_pci_dev(dev) container_of(dev, struct pci_dev, dev)
+
+struct pci_bus {
+	struct list_head node;		/* node in list of buses */
+	struct list_head children;	/* list of child buses */
+	struct list_head devices;	/* list of devices on this bus */
+	struct list_head slots;		/* list of slots on this bus */
+	struct resource *resource[PCI_BRIDGE_RESOURCE_NUM];
+	struct list_head resources;	/* address space routed to this bus */
+
+	struct pci_ops	*ops;		/* configuration access functions */
+	void		*sysdata;	/* hook for sys-specific extension */
+	struct proc_dir_entry *procdir;	/* directory entry in /proc/bus/pci */
+
+	unsigned char	number;		/* bus number */
+	unsigned char	primary;	/* number of primary bridge */
+	unsigned char	secondary;	/* number of secondary bridge */
+	unsigned char	subordinate;	/* max number of subordinate buses */
+
+	char		name[48];
+};
+
+/* Low-level architecture-dependent routines */
+
+struct pci_ops {
+	int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
+	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
+
+	/* return memory address for pci resource */
+	int (*res_start)(struct pci_bus *bus, resource_size_t res_addr);
+};
+
+extern struct pci_ops *pci_ops;
+
+/*
+ * Each pci channel is a top-level PCI bus seem by CPU.  A machine  with
+ * multiple PCI channels may have multiple PCI host controllers or a
+ * single controller supporting multiple channels.
+ */
+struct pci_controller {
+	struct pci_controller *next;
+	struct pci_bus *bus;
+
+	struct pci_ops *pci_ops;
+	struct resource *mem_resource;
+	unsigned long mem_offset;
+	struct resource *io_resource;
+	unsigned long io_offset;
+	unsigned long io_map_base;
+
+	unsigned int index;
+
+	/* Optional access methods for reading/writing the bus number
+	   of the PCI controller */
+	int (*get_busno)(void);
+	void (*set_busno)(int busno);
+};
+
+struct pci_driver {
+	struct list_head node;
+	const char *name;
+	const struct pci_device_id *id_table;	/* must be non-NULL for probe to be called */
+	int  (*probe)  (struct pci_dev *dev, const struct pci_device_id *id);	/* New device inserted */
+	void (*remove) (struct pci_dev *dev);	/* Device removed (NULL if not a hot-plug capable driver) */
+	struct driver_d	driver;
+};
+
+#define	to_pci_driver(drv) container_of(drv, struct pci_driver, driver)
+
+/* these helpers provide future and backwards compatibility
+ * for accessing popular PCI BAR info */
+#define pci_resource_start(dev, bar)    ((dev)->resource[(bar)].start)
+
+/**
+ * DEFINE_PCI_DEVICE_TABLE - macro used to describe a pci device table
+ * @_table: device table name
+ *
+ * This macro is used to create a struct pci_device_id array (a device table)
+ * in a generic manner.
+ */
+#define DEFINE_PCI_DEVICE_TABLE(_table) \
+	const struct pci_device_id _table[]
+
+/**
+ * PCI_DEVICE - macro used to describe a specific pci device
+ * @vend: the 16 bit PCI Vendor ID
+ * @dev: the 16 bit PCI Device ID
+ *
+ * This macro is used to create a struct pci_device_id that matches a
+ * specific device.  The subvendor and subdevice fields will be set to
+ * PCI_ANY_ID.
+ */
+#define PCI_DEVICE(vend, dev) \
+	.vendor = (vend), .device = (dev), \
+	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID
+
+/**
+ * PCI_DEVICE_CLASS - macro used to describe a specific pci device class
+ * @dev_class: the class, subclass, prog-if triple for this device
+ * @dev_class_mask: the class mask for this device
+ *
+ * This macro is used to create a struct pci_device_id that matches a
+ * specific PCI class.  The vendor, device, subvendor, and subdevice
+ * fields will be set to PCI_ANY_ID.
+ */
+#define PCI_DEVICE_CLASS(dev_class, dev_class_mask) \
+	.class = (dev_class), .class_mask = (dev_class_mask), \
+	.vendor = PCI_ANY_ID, .device = PCI_ANY_ID, \
+	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID
+
+/**
+ * PCI_VDEVICE - macro used to describe a specific pci device in short form
+ * @vend: the vendor name
+ * @dev: the 16 bit PCI Device ID
+ *
+ * This macro is used to create a struct pci_device_id that matches a
+ * specific PCI device.  The subvendor, and subdevice fields will be set
+ * to PCI_ANY_ID. The macro allows the next field to follow as the device
+ * private data.
+ */
+
+#define PCI_VDEVICE(vend, dev) \
+	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
+	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID, 0, 0
+
+int pci_register_driver(struct pci_driver *pdrv);
+int pci_register_device(struct pci_dev *pdev);
+
+extern struct list_head pci_root_buses; /* list of all known PCI buses */
+
+extern unsigned int pci_scan_bus(struct pci_bus *bus);
+extern void register_pci_controller(struct pci_controller *hose);
+
+int pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn,
+			     int where, u8 *val);
+int pci_bus_read_config_word(struct pci_bus *bus, unsigned int devfn,
+			     int where, u16 *val);
+int pci_bus_read_config_dword(struct pci_bus *bus, unsigned int devfn,
+			      int where, u32 *val);
+int pci_bus_write_config_byte(struct pci_bus *bus, unsigned int devfn,
+			      int where, u8 val);
+int pci_bus_write_config_word(struct pci_bus *bus, unsigned int devfn,
+			      int where, u16 val);
+int pci_bus_write_config_dword(struct pci_bus *bus, unsigned int devfn,
+			       int where, u32 val);
+
+static inline int pci_read_config_byte(const struct pci_dev *dev, int where, u8 *val)
+{
+	return pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
+}
+static inline int pci_read_config_word(const struct pci_dev *dev, int where, u16 *val)
+{
+	return pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
+}
+static inline int pci_read_config_dword(const struct pci_dev *dev, int where,
+					u32 *val)
+{
+	return pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
+}
+static inline int pci_write_config_byte(const struct pci_dev *dev, int where, u8 val)
+{
+	return pci_bus_write_config_byte(dev->bus, dev->devfn, where, val);
+}
+static inline int pci_write_config_word(const struct pci_dev *dev, int where, u16 val)
+{
+	return pci_bus_write_config_word(dev->bus, dev->devfn, where, val);
+}
+static inline int pci_write_config_dword(const struct pci_dev *dev, int where,
+					 u32 val)
+{
+	return pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
+}
+
+void pci_set_master(struct pci_dev *dev);
+void pci_clear_master(struct pci_dev *dev);
+int pci_enable_device(struct pci_dev *dev);
+
+extern void __iomem *pci_iomap(struct pci_dev *dev, int bar);
+
+#endif /* LINUX_PCI_H */
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
new file mode 100644
index 0000000..49e2954
--- /dev/null
+++ b/include/linux/pci_ids.h
@@ -0,0 +1,136 @@
+/*
+ *	PCI Class, Vendor and Device IDs
+ *
+ *	Please keep sorted.
+ *
+ *	Do not add new entries to this file unless the definitions
+ *	are shared between multiple drivers.
+ */
+
+/* Device classes and subclasses */
+
+#define PCI_CLASS_NOT_DEFINED		0x0000
+#define PCI_CLASS_NOT_DEFINED_VGA	0x0001
+
+#define PCI_BASE_CLASS_STORAGE		0x01
+#define PCI_CLASS_STORAGE_SCSI		0x0100
+#define PCI_CLASS_STORAGE_IDE		0x0101
+#define PCI_CLASS_STORAGE_FLOPPY	0x0102
+#define PCI_CLASS_STORAGE_IPI		0x0103
+#define PCI_CLASS_STORAGE_RAID		0x0104
+#define PCI_CLASS_STORAGE_SATA		0x0106
+#define PCI_CLASS_STORAGE_SATA_AHCI	0x010601
+#define PCI_CLASS_STORAGE_SAS		0x0107
+#define PCI_CLASS_STORAGE_OTHER		0x0180
+
+#define PCI_BASE_CLASS_NETWORK		0x02
+#define PCI_CLASS_NETWORK_ETHERNET	0x0200
+#define PCI_CLASS_NETWORK_TOKEN_RING	0x0201
+#define PCI_CLASS_NETWORK_FDDI		0x0202
+#define PCI_CLASS_NETWORK_ATM		0x0203
+#define PCI_CLASS_NETWORK_OTHER		0x0280
+
+#define PCI_BASE_CLASS_DISPLAY		0x03
+#define PCI_CLASS_DISPLAY_VGA		0x0300
+#define PCI_CLASS_DISPLAY_XGA		0x0301
+#define PCI_CLASS_DISPLAY_3D		0x0302
+#define PCI_CLASS_DISPLAY_OTHER		0x0380
+
+#define PCI_BASE_CLASS_MULTIMEDIA	0x04
+#define PCI_CLASS_MULTIMEDIA_VIDEO	0x0400
+#define PCI_CLASS_MULTIMEDIA_AUDIO	0x0401
+#define PCI_CLASS_MULTIMEDIA_PHONE	0x0402
+#define PCI_CLASS_MULTIMEDIA_OTHER	0x0480
+
+#define PCI_BASE_CLASS_MEMORY		0x05
+#define PCI_CLASS_MEMORY_RAM		0x0500
+#define PCI_CLASS_MEMORY_FLASH		0x0501
+#define PCI_CLASS_MEMORY_OTHER		0x0580
+
+#define PCI_BASE_CLASS_BRIDGE		0x06
+#define PCI_CLASS_BRIDGE_HOST		0x0600
+#define PCI_CLASS_BRIDGE_ISA		0x0601
+#define PCI_CLASS_BRIDGE_EISA		0x0602
+#define PCI_CLASS_BRIDGE_MC		0x0603
+#define PCI_CLASS_BRIDGE_PCI		0x0604
+#define PCI_CLASS_BRIDGE_PCMCIA		0x0605
+#define PCI_CLASS_BRIDGE_NUBUS		0x0606
+#define PCI_CLASS_BRIDGE_CARDBUS	0x0607
+#define PCI_CLASS_BRIDGE_RACEWAY	0x0608
+#define PCI_CLASS_BRIDGE_OTHER		0x0680
+
+#define PCI_BASE_CLASS_COMMUNICATION	0x07
+#define PCI_CLASS_COMMUNICATION_SERIAL	0x0700
+#define PCI_CLASS_COMMUNICATION_PARALLEL 0x0701
+#define PCI_CLASS_COMMUNICATION_MULTISERIAL 0x0702
+#define PCI_CLASS_COMMUNICATION_MODEM	0x0703
+#define PCI_CLASS_COMMUNICATION_OTHER	0x0780
+
+#define PCI_BASE_CLASS_SYSTEM		0x08
+#define PCI_CLASS_SYSTEM_PIC		0x0800
+#define PCI_CLASS_SYSTEM_PIC_IOAPIC	0x080010
+#define PCI_CLASS_SYSTEM_PIC_IOXAPIC	0x080020
+#define PCI_CLASS_SYSTEM_DMA		0x0801
+#define PCI_CLASS_SYSTEM_TIMER		0x0802
+#define PCI_CLASS_SYSTEM_RTC		0x0803
+#define PCI_CLASS_SYSTEM_PCI_HOTPLUG	0x0804
+#define PCI_CLASS_SYSTEM_SDHCI		0x0805
+#define PCI_CLASS_SYSTEM_OTHER		0x0880
+
+#define PCI_BASE_CLASS_INPUT		0x09
+#define PCI_CLASS_INPUT_KEYBOARD	0x0900
+#define PCI_CLASS_INPUT_PEN		0x0901
+#define PCI_CLASS_INPUT_MOUSE		0x0902
+#define PCI_CLASS_INPUT_SCANNER		0x0903
+#define PCI_CLASS_INPUT_GAMEPORT	0x0904
+#define PCI_CLASS_INPUT_OTHER		0x0980
+
+#define PCI_BASE_CLASS_DOCKING		0x0a
+#define PCI_CLASS_DOCKING_GENERIC	0x0a00
+#define PCI_CLASS_DOCKING_OTHER		0x0a80
+
+#define PCI_BASE_CLASS_PROCESSOR	0x0b
+#define PCI_CLASS_PROCESSOR_386		0x0b00
+#define PCI_CLASS_PROCESSOR_486		0x0b01
+#define PCI_CLASS_PROCESSOR_PENTIUM	0x0b02
+#define PCI_CLASS_PROCESSOR_ALPHA	0x0b10
+#define PCI_CLASS_PROCESSOR_POWERPC	0x0b20
+#define PCI_CLASS_PROCESSOR_MIPS	0x0b30
+#define PCI_CLASS_PROCESSOR_CO		0x0b40
+
+#define PCI_BASE_CLASS_SERIAL		0x0c
+#define PCI_CLASS_SERIAL_FIREWIRE	0x0c00
+#define PCI_CLASS_SERIAL_FIREWIRE_OHCI	0x0c0010
+#define PCI_CLASS_SERIAL_ACCESS		0x0c01
+#define PCI_CLASS_SERIAL_SSA		0x0c02
+#define PCI_CLASS_SERIAL_USB		0x0c03
+#define PCI_CLASS_SERIAL_USB_UHCI	0x0c0300
+#define PCI_CLASS_SERIAL_USB_OHCI	0x0c0310
+#define PCI_CLASS_SERIAL_USB_EHCI	0x0c0320
+#define PCI_CLASS_SERIAL_USB_XHCI	0x0c0330
+#define PCI_CLASS_SERIAL_FIBER		0x0c04
+#define PCI_CLASS_SERIAL_SMBUS		0x0c05
+
+#define PCI_BASE_CLASS_WIRELESS			0x0d
+#define PCI_CLASS_WIRELESS_RF_CONTROLLER	0x0d10
+#define PCI_CLASS_WIRELESS_WHCI			0x0d1010
+
+#define PCI_BASE_CLASS_INTELLIGENT	0x0e
+#define PCI_CLASS_INTELLIGENT_I2O	0x0e00
+
+#define PCI_BASE_CLASS_SATELLITE	0x0f
+#define PCI_CLASS_SATELLITE_TV		0x0f00
+#define PCI_CLASS_SATELLITE_AUDIO	0x0f01
+#define PCI_CLASS_SATELLITE_VOICE	0x0f03
+#define PCI_CLASS_SATELLITE_DATA	0x0f04
+
+#define PCI_BASE_CLASS_CRYPT		0x10
+#define PCI_CLASS_CRYPT_NETWORK		0x1000
+#define PCI_CLASS_CRYPT_ENTERTAINMENT	0x1001
+#define PCI_CLASS_CRYPT_OTHER		0x1080
+
+#define PCI_BASE_CLASS_SIGNAL_PROCESSING 0x11
+#define PCI_CLASS_SP_DPIO		0x1100
+#define PCI_CLASS_SP_OTHER		0x1180
+
+#define PCI_CLASS_OTHERS		0xff
diff --git a/include/linux/pci_regs.h b/include/linux/pci_regs.h
new file mode 100644
index 0000000..14a3ed3
--- /dev/null
+++ b/include/linux/pci_regs.h
@@ -0,0 +1,110 @@
+/*
+ *	pci_regs.h
+ *
+ *	PCI standard defines
+ *	Copyright 1994, Drew Eckhardt
+ *	Copyright 1997--1999 Martin Mares <mj@ucw.cz>
+ *
+ *	For more information, please consult the following manuals (look at
+ *	http://www.pcisig.com/ for how to get them):
+ *
+ *	PCI BIOS Specification
+ *	PCI Local Bus Specification
+ *	PCI to PCI Bridge Specification
+ *	PCI System Design Guide
+ *
+ *	For HyperTransport information, please consult the following manuals
+ *	from http://www.hypertransport.org
+ *
+ *	The HyperTransport I/O Link Specification
+ */
+
+#ifndef LINUX_PCI_REGS_H
+#define LINUX_PCI_REGS_H
+
+/*
+ * Under PCI, each device has 256 bytes of configuration address space,
+ * of which the first 64 bytes are standardized as follows:
+ */
+#define PCI_VENDOR_ID		0x00	/* 16 bits */
+#define PCI_DEVICE_ID		0x02	/* 16 bits */
+#define PCI_COMMAND		0x04	/* 16 bits */
+#define  PCI_COMMAND_IO		0x1	/* Enable response in I/O space */
+#define  PCI_COMMAND_MEMORY	0x2	/* Enable response in Memory space */
+#define  PCI_COMMAND_MASTER	0x4	/* Enable bus mastering */
+#define  PCI_COMMAND_SPECIAL	0x8	/* Enable response to special cycles */
+#define  PCI_COMMAND_INVALIDATE	0x10	/* Use memory write and invalidate */
+#define  PCI_COMMAND_VGA_PALETTE 0x20	/* Enable palette snooping */
+#define  PCI_COMMAND_PARITY	0x40	/* Enable parity checking */
+#define  PCI_COMMAND_WAIT	0x80	/* Enable address/data stepping */
+#define  PCI_COMMAND_SERR	0x100	/* Enable SERR */
+#define  PCI_COMMAND_FAST_BACK	0x200	/* Enable back-to-back writes */
+#define  PCI_COMMAND_INTX_DISABLE 0x400 /* INTx Emulation Disable */
+
+#define PCI_STATUS		0x06	/* 16 bits */
+#define  PCI_STATUS_INTERRUPT	0x08	/* Interrupt status */
+#define  PCI_STATUS_CAP_LIST	0x10	/* Support Capability List */
+#define  PCI_STATUS_66MHZ	0x20	/* Support 66 MHz PCI 2.1 bus */
+#define  PCI_STATUS_UDF		0x40	/* Support User Definable Features [obsolete] */
+#define  PCI_STATUS_FAST_BACK	0x80	/* Accept fast-back to back */
+#define  PCI_STATUS_PARITY	0x100	/* Detected parity error */
+#define  PCI_STATUS_DEVSEL_MASK	0x600	/* DEVSEL timing */
+#define  PCI_STATUS_DEVSEL_FAST		0x000
+#define  PCI_STATUS_DEVSEL_MEDIUM	0x200
+#define  PCI_STATUS_DEVSEL_SLOW		0x400
+#define  PCI_STATUS_SIG_TARGET_ABORT	0x800 /* Set on target abort */
+#define  PCI_STATUS_REC_TARGET_ABORT	0x1000 /* Master ack of " */
+#define  PCI_STATUS_REC_MASTER_ABORT	0x2000 /* Set on master abort */
+#define  PCI_STATUS_SIG_SYSTEM_ERROR	0x4000 /* Set when we drive SERR */
+#define  PCI_STATUS_DETECTED_PARITY	0x8000 /* Set on parity error */
+
+#define PCI_CLASS_REVISION	0x08	/* High 24 bits are class, low 8 revision */
+#define PCI_REVISION_ID		0x08	/* Revision ID */
+#define PCI_CLASS_PROG		0x09	/* Reg. Level Programming Interface */
+#define PCI_CLASS_DEVICE	0x0a	/* Device class */
+
+#define PCI_CACHE_LINE_SIZE	0x0c	/* 8 bits */
+#define PCI_LATENCY_TIMER	0x0d	/* 8 bits */
+#define PCI_HEADER_TYPE		0x0e	/* 8 bits */
+#define  PCI_HEADER_TYPE_NORMAL		0
+#define  PCI_HEADER_TYPE_BRIDGE		1
+#define  PCI_HEADER_TYPE_CARDBUS	2
+
+#define PCI_BIST		0x0f	/* 8 bits */
+#define  PCI_BIST_CODE_MASK	0x0f	/* Return result */
+#define  PCI_BIST_START		0x40	/* 1 to start BIST, 2 secs or less */
+#define  PCI_BIST_CAPABLE	0x80	/* 1 if BIST capable */
+
+/*
+ * Base addresses specify locations in memory or I/O space.
+ * Decoded size can be determined by writing a value of
+ * 0xffffffff to the register, and reading it back.  Only
+ * 1 bits are decoded.
+ */
+#define PCI_BASE_ADDRESS_0	0x10	/* 32 bits */
+#define PCI_BASE_ADDRESS_1	0x14	/* 32 bits [htype 0,1 only] */
+#define PCI_BASE_ADDRESS_2	0x18	/* 32 bits [htype 0 only] */
+#define PCI_BASE_ADDRESS_3	0x1c	/* 32 bits */
+#define PCI_BASE_ADDRESS_4	0x20	/* 32 bits */
+#define PCI_BASE_ADDRESS_5	0x24	/* 32 bits */
+#define  PCI_BASE_ADDRESS_SPACE		0x01	/* 0 = memory, 1 = I/O */
+#define  PCI_BASE_ADDRESS_SPACE_IO	0x01
+#define  PCI_BASE_ADDRESS_SPACE_MEMORY	0x00
+#define  PCI_BASE_ADDRESS_MEM_TYPE_MASK	0x06
+#define  PCI_BASE_ADDRESS_MEM_TYPE_32	0x00	/* 32 bit address */
+#define  PCI_BASE_ADDRESS_MEM_TYPE_1M	0x02	/* Below 1M [obsolete] */
+#define  PCI_BASE_ADDRESS_MEM_TYPE_64	0x04	/* 64 bit address */
+#define  PCI_BASE_ADDRESS_MEM_PREFETCH	0x08	/* prefetchable? */
+#define  PCI_BASE_ADDRESS_MEM_MASK	(~0x0fUL)
+#define  PCI_BASE_ADDRESS_IO_MASK	(~0x03UL)
+/* bit 1 is reserved if address_space = 1 */
+
+/* Header type 0 (normal devices) */
+#define PCI_CARDBUS_CIS		0x28
+#define PCI_SUBSYSTEM_VENDOR_ID	0x2c
+#define PCI_SUBSYSTEM_ID	0x2e
+#define PCI_ROM_ADDRESS		0x30	/* Bits 31..11 are address, 10..1 reserved */
+#define  PCI_ROM_ADDRESS_ENABLE	0x01
+#define PCI_ROM_ADDRESS_MASK	(~0x7ffUL)
+
+#endif /* LINUX_PCI_REGS_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
