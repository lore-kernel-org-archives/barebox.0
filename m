Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2ko-0003Uh-Q9
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 10:21:25 +0000
Received: by ewy3 with SMTP id 3so2202378ewy.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 03:19:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 14:19:20 +0400
Message-Id: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1-very-draft 1/5] barebox draft pci support
To: barebox@lists.infradead.org

used shorten version of linux-2.6.39 pci_ids.h

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/Makefile                |    1 +
 drivers/pci/Kconfig             |   12 +
 drivers/pci/Makefile            |    8 +
 drivers/pci/pci.c               |  298 +++++++++++++++++
 include/ioports.h               |   98 ++++++
 include/linux/mod_devicetable.h |   24 ++
 include/linux/pci.h             |  201 +++++++++++
 include/linux/pci_ids.h         |  695 ++++++++++++++++++++++++++++++++++++++
 include/linux/pci_regs.h        |  698 +++++++++++++++++++++++++++++++++++++++
 9 files changed, 2035 insertions(+), 0 deletions(-)
 create mode 100644 drivers/pci/Kconfig
 create mode 100644 drivers/pci/Makefile
 create mode 100644 drivers/pci/pci.c
 create mode 100644 include/linux/mod_devicetable.h
 create mode 100644 include/linux/pci.h
 create mode 100644 include/linux/pci_ids.h
 create mode 100644 include/linux/pci_regs.h

diff --git a/drivers/Makefile b/drivers/Makefile
index 92b22bd..1be9d13 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -12,3 +12,4 @@ obj-y	+= clk/
 obj-y	+= mfd/
 obj-$(CONFIG_LED) += led/
 obj-y	+= eeprom/
+obj-$(CONFIG_PCI) += pci/
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
new file mode 100644
index 0000000..88b8dfb
--- /dev/null
+++ b/drivers/pci/Kconfig
@@ -0,0 +1,12 @@
+#
+# PCI configuration
+#
+config PCI_DEBUG
+	bool "PCI Debugging"
+	depends on PCI
+	help
+	  Say Y here if you want the PCI core to produce a bunch of debug
+	  messages to the system log.  Select this if you are having a
+	  problem with PCI support and want to see more of what is going on.
+
+	  When in doubt, say N.
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
new file mode 100644
index 0000000..69aba36
--- /dev/null
+++ b/drivers/pci/Makefile
@@ -0,0 +1,8 @@
+#
+# Makefile for the PCI bus specific drivers.
+#
+obj-y		+= pci.o
+
+ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
+
+CPPFLAGS += $(ccflags-y)
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
new file mode 100644
index 0000000..d028330
--- /dev/null
+++ b/drivers/pci/pci.c
@@ -0,0 +1,298 @@
+#include <common.h>
+#include <init.h>
+#include <linux/pci.h>
+
+#include <command.h>
+#include <debug_ll.h>
+
+#ifdef DEBUG
+#define DBG(x...) printk(x)
+#else
+#define DBG(x...)
+#endif
+
+unsigned int pci_scan_bus(struct pci_bus *bus);
+
+static struct pci_controller *hose_head, **hose_tail = &hose_head;
+
+struct pci_bus *pci_root;
+struct pci_dev *pci_devices = NULL;
+static struct pci_dev **pci_last_dev_p = &pci_devices;
+
+struct pci_ops *pci_ops;
+
+int pcibios_present;
+
+static struct pci_bus * pci_alloc_bus(void)
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
+		//b->max_bus_speed = PCI_SPEED_UNKNOWN;
+		//b->cur_bus_speed = PCI_SPEED_UNKNOWN;
+	}
+	return b;
+}
+
+void register_pci_controller(struct pci_controller *hose)
+{
+	*hose_tail = hose;
+	hose_tail = &hose->next;
+
+	printf("PCI: register_pci_controller() \n");
+
+	hose->bus = pci_alloc_bus();
+	pci_ops = hose->pci_ops;
+	hose->bus->ops = hose->pci_ops;
+	pci_scan_bus(hose->bus);
+
+	pci_root = hose->bus;
+
+	return;
+}
+
+int
+pci_bus_read_config_byte(struct pci_bus *bus, unsigned int devfn, u8 where, u8 *val)
+{
+	u32 data;
+	int status;
+
+	status = pci_ops->read(bus, devfn, where & 0xfc, 4, &data);
+	*val = (u8) (data >> ((where & 3) << 3));
+	return status;
+}
+
+int
+pci_bus_read_config_word(struct pci_bus *bus, unsigned int devfn, u8 where, u16 *val)
+{
+	u32 data;
+	int status;
+
+	status = pci_ops->read(bus, devfn, where & 0xfc, 4, &data);
+	*val = (u16) (data >> ((where & 3) << 3));
+	return status;
+}
+
+int
+pci_bus_read_config_dword(struct pci_bus *bus, unsigned int devfn, u8 where, u32 *val)
+{
+	return pci_ops->read(bus, devfn, where, 4, val);
+}
+
+int
+pci_bus_write_config_byte(struct pci_bus *bus, unsigned int devfn, u8 where, u8 val)
+{
+	u32 data;
+	int status;
+
+	pci_ops->read(bus, devfn, where & 0xfc, 4, &data);
+	data = (data & ~(0xff << ((where & 3) << 3))) | (val << ((where & 3) << 3));
+	status = pci_ops->write(bus, devfn, where & 0xfc, 4, data);
+
+	return status;
+}
+
+int
+pci_bus_write_config_word(struct pci_bus *bus, unsigned int devfn, u8 where, u16 val)
+{
+	u32 data;
+	int status;
+
+	pci_ops->read(bus, devfn, where & 0xfc, 4, &data);
+	data = (data & ~(0xffff << ((where & 3) << 3))) | (val << ((where & 3) << 3));
+	status = pci_ops->write(bus, devfn, where & 0xfc, 4, data);
+
+	return status;
+}
+
+int
+pci_bus_write_config_dword(struct pci_bus *bus, unsigned int devfn, u8 where, u32 val)
+{
+	return pci_ops->write(bus, devfn, where, 4, val);
+}
+
+int
+pci_read_config_byte(struct pci_dev *dev, u8 where, u8 *val)
+{
+	return pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
+}
+
+int
+pci_read_config_word(struct pci_dev *dev, u8 where, u16 *val)
+{
+	return pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
+}
+
+int
+pci_read_config_dword(struct pci_dev *dev, u8 where, u32 *val)
+{
+	return pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
+}
+
+int
+pci_write_config_byte(struct pci_dev *dev, u8 where, u8 val)
+{
+	return pci_bus_write_config_byte(dev->bus, dev->devfn, where, val);
+}
+
+int
+pci_write_config_word(struct pci_dev *dev, u8 where, u16 val)
+{
+	return pci_bus_write_config_word(dev->bus, dev->devfn, where, val);
+}
+
+int
+pci_write_config_dword(struct pci_dev *dev, u8 where, u32 val)
+{
+	return pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
+}
+
+struct pci_dev *alloc_pci_dev(void)
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
+	unsigned char cmd, irq, tmp, hdr_type, is_multi = 0;
+	struct pci_dev *dev, **bus_last;
+	struct pci_bus *child;
+
+	DBG("pci_scan_bus for bus %d\n", bus->number);
+	bus_last = &bus->devices;
+	max = bus->secondary;
+
+	for (devfn = 0; devfn < 0xff; ++devfn) {
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
+		//dev->master = ((tmp & PCI_COMMAND_MASTER) != 0);
+		pci_write_config_byte(dev, PCI_COMMAND, cmd);
+
+		pci_read_config_dword(dev, PCI_CLASS_REVISION, &class);
+		dev->revision = class & 0xff;
+		class >>= 8;				    /* upper 3 bytes */
+		dev->class = class;
+		class >>= 8;
+		dev->hdr_type = hdr_type;
+
+		switch (hdr_type & 0x7f) {		    /* header type */
+		case PCI_HEADER_TYPE_NORMAL:		    /* standard header */
+			if (class == PCI_CLASS_BRIDGE_PCI)
+				goto bad;
+			/*
+			 * If the card generates interrupts, read IRQ number
+			 * (some architectures change it during pcibios_fixup())
+			 */
+			pci_read_config_byte(dev, PCI_INTERRUPT_PIN, &irq);
+			if (irq)
+				pci_read_config_byte(dev, PCI_INTERRUPT_LINE, &irq);
+			dev->irq = irq;
+			/*
+			 * read base address registers, again pcibios_fixup() can
+			 * tweak these
+			 */
+	//		pci_read_bases(dev, 6);
+			pci_read_config_dword(dev, PCI_ROM_ADDRESS, &l);
+			dev->rom_address = (l == 0xffffffff) ? 0 : l;
+			break;
+		#if 0
+		case PCI_HEADER_TYPE_BRIDGE:		    /* bridge header */
+			if (class != PCI_CLASS_BRIDGE_PCI)
+				goto bad;
+			pci_read_bases(dev, 2);
+			pcibios_read_config_dword(bus->number, devfn, PCI_ROM_ADDRESS1, &l);
+			dev->rom_address = (l == 0xffffffff) ? 0 : l;
+			break;
+		case PCI_HEADER_TYPE_CARDBUS:		    /* CardBus bridge header */
+			if (class != PCI_CLASS_BRIDGE_CARDBUS)
+				goto bad;
+			pci_read_bases(dev, 1);
+			break;
+#endif
+		default:				    /* unknown header */
+		bad:
+			printk(KERN_ERR "PCI: %02x:%02x [%04x/%04x/%06x] has unknown header type %02x, ignoring.\n",
+			       bus->number, dev->devfn, dev->vendor, dev->device, class, hdr_type);
+			continue;
+		}
+
+		DBG("PCI: %02x:%02x [%04x/%04x]\n", bus->number, dev->devfn, dev->vendor, dev->device);
+		list_add_tail(&dev->bus_list, &bus->devices);
+
+	}
+
+	/*
+	 * After performing arch-dependent fixup of the bus, look behind
+	 * all PCI-to-PCI bridges on this bus.
+	 */
+	//pcibios_fixup_bus(bus);
+
+	/*
+	 * We've scanned the bus and so we know all about what's on
+	 * the other side of any bridges that may be on this bus plus
+	 * any devices.
+	 *
+	 * Return how far we've got finding sub-buses.
+	 */
+	DBG("PCI: pci_scan_bus returning with max=%02x\n", max);
+	return max;
+}
+
+static int pci_init(void)
+{
+	pcibios_present = 0;
+	pci_ops = NULL;
+
+	pcibios_init();
+
+	if (!pci_present()) {
+		printf("PCI: No PCI bus detected\n");
+		return 0;
+	}
+
+	/* give BIOS a chance to apply platform specific fixes: */
+	//pcibios_fixup();
+
+	return 0;
+}
+postcore_initcall(pci_init);
diff --git a/include/ioports.h b/include/ioports.h
index cfba667..56c5f31 100644
--- a/include/ioports.h
+++ b/include/ioports.h
@@ -7,6 +7,104 @@
  */
 
 /*
+ * Resources are tree-like, allowing
+ * nesting etc..
+ */
+struct resource {
+	resource_size_t start;
+	resource_size_t end;
+	const char *name;
+	unsigned long flags;
+	struct resource *parent, *sibling, *child;
+};
+
+struct resource_list {
+	struct resource_list *next;
+	struct resource *res;
+	struct pci_dev *dev;
+};
+
+/*
+ * IO resources have these defined flags.
+ */
+#define IORESOURCE_BITS		0x000000ff	/* Bus-specific bits */
+
+#define IORESOURCE_TYPE_BITS	0x00001f00	/* Resource type */
+#define IORESOURCE_IO		0x00000100
+#define IORESOURCE_MEM		0x00000200
+#define IORESOURCE_IRQ		0x00000400
+#define IORESOURCE_DMA		0x00000800
+#define IORESOURCE_BUS		0x00001000
+
+#define IORESOURCE_PREFETCH	0x00002000	/* No side effects */
+#define IORESOURCE_READONLY	0x00004000
+#define IORESOURCE_CACHEABLE	0x00008000
+#define IORESOURCE_RANGELENGTH	0x00010000
+#define IORESOURCE_SHADOWABLE	0x00020000
+
+#define IORESOURCE_SIZEALIGN	0x00040000	/* size indicates alignment */
+#define IORESOURCE_STARTALIGN	0x00080000	/* start field is alignment */
+
+#define IORESOURCE_MEM_64	0x00100000
+#define IORESOURCE_WINDOW	0x00200000	/* forwarded by bridge */
+#define IORESOURCE_MUXED	0x00400000	/* Resource is software muxed */
+
+#define IORESOURCE_EXCLUSIVE	0x08000000	/* Userland may not map this resource */
+#define IORESOURCE_DISABLED	0x10000000
+#define IORESOURCE_UNSET	0x20000000
+#define IORESOURCE_AUTO		0x40000000
+#define IORESOURCE_BUSY		0x80000000	/* Driver has marked this resource busy */
+
+/* PnP IRQ specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_IRQ_HIGHEDGE		(1<<0)
+#define IORESOURCE_IRQ_LOWEDGE		(1<<1)
+#define IORESOURCE_IRQ_HIGHLEVEL	(1<<2)
+#define IORESOURCE_IRQ_LOWLEVEL		(1<<3)
+#define IORESOURCE_IRQ_SHAREABLE	(1<<4)
+#define IORESOURCE_IRQ_OPTIONAL 	(1<<5)
+
+/* PnP DMA specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_DMA_TYPE_MASK	(3<<0)
+#define IORESOURCE_DMA_8BIT		(0<<0)
+#define IORESOURCE_DMA_8AND16BIT	(1<<0)
+#define IORESOURCE_DMA_16BIT		(2<<0)
+
+#define IORESOURCE_DMA_MASTER		(1<<2)
+#define IORESOURCE_DMA_BYTE		(1<<3)
+#define IORESOURCE_DMA_WORD		(1<<4)
+
+#define IORESOURCE_DMA_SPEED_MASK	(3<<6)
+#define IORESOURCE_DMA_COMPATIBLE	(0<<6)
+#define IORESOURCE_DMA_TYPEA		(1<<6)
+#define IORESOURCE_DMA_TYPEB		(2<<6)
+#define IORESOURCE_DMA_TYPEF		(3<<6)
+
+/* PnP memory I/O specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_MEM_WRITEABLE	(1<<0)	/* dup: IORESOURCE_READONLY */
+#define IORESOURCE_MEM_CACHEABLE	(1<<1)	/* dup: IORESOURCE_CACHEABLE */
+#define IORESOURCE_MEM_RANGELENGTH	(1<<2)	/* dup: IORESOURCE_RANGELENGTH */
+#define IORESOURCE_MEM_TYPE_MASK	(3<<3)
+#define IORESOURCE_MEM_8BIT		(0<<3)
+#define IORESOURCE_MEM_16BIT		(1<<3)
+#define IORESOURCE_MEM_8AND16BIT	(2<<3)
+#define IORESOURCE_MEM_32BIT		(3<<3)
+#define IORESOURCE_MEM_SHADOWABLE	(1<<5)	/* dup: IORESOURCE_SHADOWABLE */
+#define IORESOURCE_MEM_EXPANSIONROM	(1<<6)
+
+/* PnP I/O specific bits (IORESOURCE_BITS) */
+#define IORESOURCE_IO_16BIT_ADDR	(1<<0)
+#define IORESOURCE_IO_FIXED		(1<<1)
+
+/* PCI ROM control bits (IORESOURCE_BITS) */
+#define IORESOURCE_ROM_ENABLE		(1<<0)	/* ROM is enabled, same as PCI_ROM_ADDRESS_ENABLE */
+#define IORESOURCE_ROM_SHADOW		(1<<1)	/* ROM is copy at C000:0 */
+#define IORESOURCE_ROM_COPY		(1<<2)	/* ROM is alloc'd copy, resource field overlaid */
+#define IORESOURCE_ROM_BIOS_COPY	(1<<3)	/* ROM is BIOS copy, resource field overlaid */
+
+/* PCI control bits.  Shares IORESOURCE_BITS with above PCI ROM.  */
+#define IORESOURCE_PCI_FIXED		(1<<4)	/* Do not move resource */
+
+/*
  * this structure mirrors the layout of the five port registers in
  * the internal memory map - see iop8260_t in <asm/immap_8260.h>
  */
diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
new file mode 100644
index 0000000..911e461
--- /dev/null
+++ b/include/linux/mod_devicetable.h
@@ -0,0 +1,24 @@
+/*
+ * Device tables which are exported to userspace via
+ * scripts/mod/file2alias.c.  You must keep that file in sync with this
+ * header.
+ */
+
+#ifndef LINUX_MOD_DEVICETABLE_H
+#define LINUX_MOD_DEVICETABLE_H
+
+#ifdef __KERNEL__
+#include <linux/types.h>
+typedef unsigned long kernel_ulong_t;
+#endif
+
+#define PCI_ANY_ID (~0)
+
+struct pci_device_id {
+	__u32 vendor, device;		/* Vendor and device ID or PCI_ANY_ID*/
+	__u32 subvendor, subdevice;	/* Subsystem ID's or PCI_ANY_ID */
+	__u32 class, class_mask;	/* (class,subclass,prog-if) triplet */
+	kernel_ulong_t driver_data;	/* Data private to the driver */
+};
+
+#endif /* LINUX_MOD_DEVICETABLE_H */
diff --git a/include/linux/pci.h b/include/linux/pci.h
new file mode 100644
index 0000000..1f35771
--- /dev/null
+++ b/include/linux/pci.h
@@ -0,0 +1,201 @@
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
+
+#ifndef LINUX_PCI_H
+#define LINUX_PCI_H
+
+#include <linux/pci_regs.h>	/* The pci register defines */
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
+/* Ioctls for /proc/bus/pci/X/Y nodes. */
+#define PCIIOC_BASE		('P' << 24 | 'C' << 16 | 'I' << 8)
+#define PCIIOC_CONTROLLER	(PCIIOC_BASE | 0x00)	/* Get controller for PCI device. */
+#define PCIIOC_MMAP_IS_IO	(PCIIOC_BASE | 0x01)	/* Set mmap state to I/O space. */
+#define PCIIOC_MMAP_IS_MEM	(PCIIOC_BASE | 0x02)	/* Set mmap state to MEM space. */
+#define PCIIOC_WRITE_COMBINE	(PCIIOC_BASE | 0x03)	/* Enable/disable write-combining. */
+
+#ifdef __KERNEL__
+
+#include <linux/mod_devicetable.h>
+
+#include <linux/types.h>
+#include <init.h>
+#include <ioports.h>
+#include <linux/list.h>
+#include <linux/compiler.h>
+#include <errno.h>
+//#include <linux/kobject.h>
+//#include <asm/atomic.h>
+//#include <linux/device.h>
+#include <asm/io.h>
+//#include <linux/irqreturn.h>
+
+/* Include the ID list */
+#include <linux/pci_ids.h>
+
+/* Include architecture-dependent settings and functions */
+
+//#include <asm/pci.h>
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
+#define DEVICE_COUNT_RESOURCE	12
+#define PCI_BRIDGE_RESOURCE_NUM 2
+/*
+ * There is one pci_dev structure for each slot-number/function-number
+ * combination:
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
+	unsigned int	devfn;		/* encoded device & function index */
+	unsigned short	vendor;
+	unsigned short	device;
+	unsigned short	subsystem_vendor;
+	unsigned short	subsystem_device;
+	unsigned int	class;		/* 3 bytes: (base,sub,prog-if) */
+	u8		revision;	/* PCI revision, low byte of class word */
+	u8		hdr_type;	/* PCI header type (`multi' flag masked out) */
+	u8		pcie_cap;	/* PCI-E capability offset */
+	u8		pcie_type;	/* PCI-E device/port type */
+	u8		rom_base_reg;	/* which config register controls the ROM */
+	u8		pin;  		/* which interrupt pin this device uses */
+
+	/*
+	 * In theory, the irq level can be read from configuration
+	 * space and all would be fine.  However, old PCI chips don't
+	 * support these registers and return 0 instead.  For example,
+	 * the Vision864-P rev 0 chip can uses INTA, but returns 0 in
+	 * the interrupt line and pin registers.  pci_init()
+	 * initializes this field with the value at PCI_INTERRUPT_LINE
+	 * and it is the job of pcibios_fixup() to change it if
+	 * necessary.  The field must not be 0 unless the device
+	 * cannot generate interrupts at all.
+	 */
+	unsigned int	irq;		/* irq generated by this device */
+	struct resource resource[DEVICE_COUNT_RESOURCE]; /* I/O and memory regions + expansion ROMs */
+
+	/* Base registers for this device, can be adjusted by
+	 * pcibios_fixup() as necessary.
+	 */
+	unsigned long	base_address[6];
+	unsigned long	rom_address;
+};
+
+struct pci_bus {
+	struct list_head node;		/* node in list of buses */
+	struct pci_bus	*parent;	/* parent bus this bridge is on */
+	struct list_head children;	/* list of child buses */
+	struct list_head devices;	/* list of devices on this bus */
+	struct pci_dev	*self;		/* bridge device as seen by parent */
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
+	unsigned char	max_bus_speed;	/* enum pci_bus_speed */
+	unsigned char	cur_bus_speed;	/* enum pci_bus_speed */
+
+	char		name[48];
+};
+
+/* Low-level architecture-dependent routines */
+
+struct pci_ops {
+	int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
+	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
+};
+
+extern struct pci_ops * pci_ops;
+extern int pcibios_present;
+
+static inline int pci_present()
+{
+	return pcibios_present;
+}
+
+extern struct pci_ops *pci_ops;
+
+#ifndef PCIBIOS_MAX_MEM_32
+#define PCIBIOS_MAX_MEM_32 (-1)
+#endif
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
+	/* For compatibility with current (as of July 2003) pciutils
+	   and XFree86. Eventually will be removed. */
+	unsigned int need_domain_info;
+
+	int iommu;
+
+	/* Optional access methods for reading/writing the bus number
+	   of the PCI controller */
+	int (*get_busno)(void);
+	void (*set_busno)(int busno);
+};
+
+extern void register_pci_controller(struct pci_controller *hose);
+
+#endif /* __KERNEL__ */
+#endif /* LINUX_PCI_H */
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
new file mode 100644
index 0000000..fc2d865
--- /dev/null
+++ b/include/linux/pci_ids.h
@@ -0,0 +1,695 @@
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
+
+/* Vendors and devices.  Sort key: vendor first, device next. */
+
+#define PCI_VENDOR_ID_NCR		0x1000
+#define PCI_VENDOR_ID_LSI_LOGIC		0x1000
+#define PCI_DEVICE_ID_NCR_53C810	0x0001
+#define PCI_DEVICE_ID_NCR_53C820	0x0002
+#define PCI_DEVICE_ID_NCR_53C825	0x0003
+#define PCI_DEVICE_ID_NCR_53C815	0x0004
+#define PCI_DEVICE_ID_LSI_53C810AP	0x0005
+#define PCI_DEVICE_ID_NCR_53C860	0x0006
+#define PCI_DEVICE_ID_LSI_53C1510	0x000a
+#define PCI_DEVICE_ID_NCR_53C896	0x000b
+#define PCI_DEVICE_ID_NCR_53C895	0x000c
+#define PCI_DEVICE_ID_NCR_53C885	0x000d
+#define PCI_DEVICE_ID_NCR_53C875	0x000f
+#define PCI_DEVICE_ID_NCR_53C1510	0x0010
+#define PCI_DEVICE_ID_LSI_53C895A	0x0012
+#define PCI_DEVICE_ID_LSI_53C875A	0x0013
+#define PCI_DEVICE_ID_LSI_53C1010_33	0x0020
+#define PCI_DEVICE_ID_LSI_53C1010_66	0x0021
+#define PCI_DEVICE_ID_LSI_53C1030	0x0030
+#define PCI_DEVICE_ID_LSI_1030_53C1035	0x0032
+#define PCI_DEVICE_ID_LSI_53C1035	0x0040
+#define PCI_DEVICE_ID_NCR_53C875J	0x008f
+#define PCI_DEVICE_ID_LSI_FC909		0x0621
+#define PCI_DEVICE_ID_LSI_FC929		0x0622
+#define PCI_DEVICE_ID_LSI_FC929_LAN	0x0623
+#define PCI_DEVICE_ID_LSI_FC919		0x0624
+#define PCI_DEVICE_ID_LSI_FC919_LAN	0x0625
+#define PCI_DEVICE_ID_LSI_FC929X	0x0626
+#define PCI_DEVICE_ID_LSI_FC939X	0x0642
+#define PCI_DEVICE_ID_LSI_FC949X	0x0640
+#define PCI_DEVICE_ID_LSI_FC949ES	0x0646
+#define PCI_DEVICE_ID_LSI_FC919X	0x0628
+#define PCI_DEVICE_ID_NCR_YELLOWFIN	0x0701
+#define PCI_DEVICE_ID_LSI_61C102	0x0901
+#define PCI_DEVICE_ID_LSI_63C815	0x1000
+#define PCI_DEVICE_ID_LSI_SAS1064	0x0050
+#define PCI_DEVICE_ID_LSI_SAS1064R	0x0411
+#define PCI_DEVICE_ID_LSI_SAS1066	0x005E
+#define PCI_DEVICE_ID_LSI_SAS1068	0x0054
+#define PCI_DEVICE_ID_LSI_SAS1064A	0x005C
+#define PCI_DEVICE_ID_LSI_SAS1064E	0x0056
+#define PCI_DEVICE_ID_LSI_SAS1066E	0x005A
+#define PCI_DEVICE_ID_LSI_SAS1068E	0x0058
+#define PCI_DEVICE_ID_LSI_SAS1078	0x0060
+
+#define PCI_VENDOR_ID_CIRRUS		0x1013
+#define PCI_DEVICE_ID_CIRRUS_7548	0x0038
+#define PCI_DEVICE_ID_CIRRUS_5430	0x00a0
+#define PCI_DEVICE_ID_CIRRUS_5434_4	0x00a4
+#define PCI_DEVICE_ID_CIRRUS_5434_8	0x00a8
+#define PCI_DEVICE_ID_CIRRUS_5436	0x00ac
+#define PCI_DEVICE_ID_CIRRUS_5446	0x00b8
+#define PCI_DEVICE_ID_CIRRUS_5480	0x00bc
+#define PCI_DEVICE_ID_CIRRUS_5462	0x00d0
+#define PCI_DEVICE_ID_CIRRUS_5464	0x00d4
+#define PCI_DEVICE_ID_CIRRUS_5465	0x00d6
+#define PCI_DEVICE_ID_CIRRUS_6729	0x1100
+#define PCI_DEVICE_ID_CIRRUS_6832	0x1110
+#define PCI_DEVICE_ID_CIRRUS_7543	0x1202
+#define PCI_DEVICE_ID_CIRRUS_4610	0x6001
+#define PCI_DEVICE_ID_CIRRUS_4612	0x6003
+#define PCI_DEVICE_ID_CIRRUS_4615	0x6004
+
+#define PCI_VENDOR_ID_AMD		0x1022
+#define PCI_DEVICE_ID_AMD_K8_NB		0x1100
+#define PCI_DEVICE_ID_AMD_K8_NB_ADDRMAP	0x1101
+#define PCI_DEVICE_ID_AMD_K8_NB_MEMCTL	0x1102
+#define PCI_DEVICE_ID_AMD_K8_NB_MISC	0x1103
+#define PCI_DEVICE_ID_AMD_10H_NB_HT	0x1200
+#define PCI_DEVICE_ID_AMD_10H_NB_MAP	0x1201
+#define PCI_DEVICE_ID_AMD_10H_NB_DRAM	0x1202
+#define PCI_DEVICE_ID_AMD_10H_NB_MISC	0x1203
+#define PCI_DEVICE_ID_AMD_10H_NB_LINK	0x1204
+#define PCI_DEVICE_ID_AMD_11H_NB_HT	0x1300
+#define PCI_DEVICE_ID_AMD_11H_NB_MAP	0x1301
+#define PCI_DEVICE_ID_AMD_11H_NB_DRAM	0x1302
+#define PCI_DEVICE_ID_AMD_11H_NB_MISC	0x1303
+#define PCI_DEVICE_ID_AMD_11H_NB_LINK	0x1304
+#define PCI_DEVICE_ID_AMD_15H_NB_F3	0x1603
+#define PCI_DEVICE_ID_AMD_15H_NB_F4	0x1604
+#define PCI_DEVICE_ID_AMD_CNB17H_F3	0x1703
+#define PCI_DEVICE_ID_AMD_LANCE		0x2000
+#define PCI_DEVICE_ID_AMD_LANCE_HOME	0x2001
+#define PCI_DEVICE_ID_AMD_SCSI		0x2020
+#define PCI_DEVICE_ID_AMD_SERENADE	0x36c0
+#define PCI_DEVICE_ID_AMD_FE_GATE_7006	0x7006
+#define PCI_DEVICE_ID_AMD_FE_GATE_7007	0x7007
+#define PCI_DEVICE_ID_AMD_FE_GATE_700C	0x700C
+#define PCI_DEVICE_ID_AMD_FE_GATE_700E	0x700E
+#define PCI_DEVICE_ID_AMD_COBRA_7401	0x7401
+#define PCI_DEVICE_ID_AMD_VIPER_7409	0x7409
+#define PCI_DEVICE_ID_AMD_VIPER_740B	0x740B
+#define PCI_DEVICE_ID_AMD_VIPER_7410	0x7410
+#define PCI_DEVICE_ID_AMD_VIPER_7411	0x7411
+#define PCI_DEVICE_ID_AMD_VIPER_7413	0x7413
+#define PCI_DEVICE_ID_AMD_VIPER_7440	0x7440
+#define PCI_DEVICE_ID_AMD_OPUS_7441	0x7441
+#define PCI_DEVICE_ID_AMD_OPUS_7443	0x7443
+#define PCI_DEVICE_ID_AMD_VIPER_7443	0x7443
+#define PCI_DEVICE_ID_AMD_OPUS_7445	0x7445
+#define PCI_DEVICE_ID_AMD_8111_PCI	0x7460
+#define PCI_DEVICE_ID_AMD_8111_LPC	0x7468
+#define PCI_DEVICE_ID_AMD_8111_IDE	0x7469
+#define PCI_DEVICE_ID_AMD_8111_SMBUS2	0x746a
+#define PCI_DEVICE_ID_AMD_8111_SMBUS	0x746b
+#define PCI_DEVICE_ID_AMD_8111_AUDIO	0x746d
+#define PCI_DEVICE_ID_AMD_8151_0	0x7454
+#define PCI_DEVICE_ID_AMD_8131_BRIDGE	0x7450
+#define PCI_DEVICE_ID_AMD_8131_APIC	0x7451
+#define PCI_DEVICE_ID_AMD_8132_BRIDGE	0x7458
+#define PCI_DEVICE_ID_AMD_HUDSON2_SMBUS	0x780b
+#define PCI_DEVICE_ID_AMD_CS5535_IDE    0x208F
+#define PCI_DEVICE_ID_AMD_CS5536_ISA    0x2090
+#define PCI_DEVICE_ID_AMD_CS5536_FLASH  0x2091
+#define PCI_DEVICE_ID_AMD_CS5536_AUDIO  0x2093
+#define PCI_DEVICE_ID_AMD_CS5536_OHC    0x2094
+#define PCI_DEVICE_ID_AMD_CS5536_EHC    0x2095
+#define PCI_DEVICE_ID_AMD_CS5536_UDC    0x2096
+#define PCI_DEVICE_ID_AMD_CS5536_UOC    0x2097
+#define PCI_DEVICE_ID_AMD_CS5536_IDE    0x209A
+#define PCI_DEVICE_ID_AMD_LX_VIDEO  0x2081
+#define PCI_DEVICE_ID_AMD_LX_AES    0x2082
+#define PCI_DEVICE_ID_AMD_HUDSON2_IDE		0x780c
+#define PCI_DEVICE_ID_AMD_HUDSON2_SATA_IDE	0x7800
+
+#define PCI_VENDOR_ID_PROMISE		0x105a
+#define PCI_DEVICE_ID_PROMISE_20265	0x0d30
+#define PCI_DEVICE_ID_PROMISE_20267	0x4d30
+#define PCI_DEVICE_ID_PROMISE_20246	0x4d33
+#define PCI_DEVICE_ID_PROMISE_20262	0x4d38
+#define PCI_DEVICE_ID_PROMISE_20263	0x0D38
+#define PCI_DEVICE_ID_PROMISE_20268	0x4d68
+#define PCI_DEVICE_ID_PROMISE_20269	0x4d69
+#define PCI_DEVICE_ID_PROMISE_20270	0x6268
+#define PCI_DEVICE_ID_PROMISE_20271	0x6269
+#define PCI_DEVICE_ID_PROMISE_20275	0x1275
+#define PCI_DEVICE_ID_PROMISE_20276	0x5275
+#define PCI_DEVICE_ID_PROMISE_20277	0x7275
+
+#define PCI_VENDOR_ID_SUN		0x108e
+#define PCI_DEVICE_ID_SUN_EBUS		0x1000
+#define PCI_DEVICE_ID_SUN_HAPPYMEAL	0x1001
+#define PCI_DEVICE_ID_SUN_RIO_EBUS	0x1100
+#define PCI_DEVICE_ID_SUN_RIO_GEM	0x1101
+#define PCI_DEVICE_ID_SUN_RIO_1394	0x1102
+#define PCI_DEVICE_ID_SUN_RIO_USB	0x1103
+#define PCI_DEVICE_ID_SUN_GEM		0x2bad
+#define PCI_DEVICE_ID_SUN_SIMBA		0x5000
+#define PCI_DEVICE_ID_SUN_PBM		0x8000
+#define PCI_DEVICE_ID_SUN_SCHIZO	0x8001
+#define PCI_DEVICE_ID_SUN_SABRE		0xa000
+#define PCI_DEVICE_ID_SUN_HUMMINGBIRD	0xa001
+#define PCI_DEVICE_ID_SUN_TOMATILLO	0xa801
+#define PCI_DEVICE_ID_SUN_CASSINI	0xabba
+
+#define PCI_VENDOR_ID_SGI		0x10a9
+#define PCI_DEVICE_ID_SGI_IOC3		0x0003
+#define PCI_DEVICE_ID_SGI_LITHIUM	0x1002
+#define PCI_DEVICE_ID_SGI_IOC4		0x100a
+
+#define PCI_VENDOR_ID_REALTEK		0x10ec
+#define PCI_DEVICE_ID_REALTEK_8139	0x8139
+
+#define PCI_VENDOR_ID_XILINX		0x10ee
+#define PCI_DEVICE_ID_RME_DIGI96	0x3fc0
+#define PCI_DEVICE_ID_RME_DIGI96_8	0x3fc1
+#define PCI_DEVICE_ID_RME_DIGI96_8_PRO	0x3fc2
+#define PCI_DEVICE_ID_RME_DIGI96_8_PAD_OR_PST 0x3fc3
+#define PCI_DEVICE_ID_XILINX_HAMMERFALL_DSP 0x3fc5
+#define PCI_DEVICE_ID_XILINX_HAMMERFALL_DSP_MADI 0x3fc6
+
+#define PCI_VENDOR_ID_MARVELL		0x11ab
+#define PCI_DEVICE_ID_MARVELL_GT64111	0x4146
+#define PCI_DEVICE_ID_MARVELL_GT64260	0x6430
+#define PCI_DEVICE_ID_MARVELL_MV64360	0x6460
+#define PCI_DEVICE_ID_MARVELL_MV64460	0x6480
+#define PCI_DEVICE_ID_MARVELL_88ALP01_NAND	0x4100
+#define PCI_DEVICE_ID_MARVELL_88ALP01_SD	0x4101
+#define PCI_DEVICE_ID_MARVELL_88ALP01_CCIC	0x4102
+
+#define PCI_VENDOR_ID_V3		0x11b0
+#define PCI_DEVICE_ID_V3_V960		0x0001
+#define PCI_DEVICE_ID_V3_V351		0x0002
+
+#define PCI_VENDOR_ID_SPECIALIX		0x11cb
+#define PCI_DEVICE_ID_SPECIALIX_IO8	0x2000
+#define PCI_DEVICE_ID_SPECIALIX_RIO	0x8000
+#define PCI_SUBDEVICE_ID_SPECIALIX_SPEED4 0xa004
+
+#define PCI_VENDOR_ID_ANALOG_DEVICES	0x11d4
+#define PCI_DEVICE_ID_AD1889JS		0x1889
+
+#define PCI_VENDOR_ID_TEKRAM		0x1de1
+#define PCI_DEVICE_ID_TEKRAM_DC290	0xdc29
+
+#define PCI_VENDOR_ID_INTEL		0x8086
+#define PCI_DEVICE_ID_INTEL_EESSC	0x0008
+#define PCI_DEVICE_ID_INTEL_PXHD_0	0x0320
+#define PCI_DEVICE_ID_INTEL_PXHD_1	0x0321
+#define PCI_DEVICE_ID_INTEL_PXH_0	0x0329
+#define PCI_DEVICE_ID_INTEL_PXH_1	0x032A
+#define PCI_DEVICE_ID_INTEL_PXHV	0x032C
+#define PCI_DEVICE_ID_INTEL_80332_0	0x0330
+#define PCI_DEVICE_ID_INTEL_80332_1	0x0332
+#define PCI_DEVICE_ID_INTEL_80333_0	0x0370
+#define PCI_DEVICE_ID_INTEL_80333_1	0x0372
+#define PCI_DEVICE_ID_INTEL_82375	0x0482
+#define PCI_DEVICE_ID_INTEL_82424	0x0483
+#define PCI_DEVICE_ID_INTEL_82378	0x0484
+#define PCI_DEVICE_ID_INTEL_MRST_SD0	0x0807
+#define PCI_DEVICE_ID_INTEL_MRST_SD1	0x0808
+#define PCI_DEVICE_ID_INTEL_MFD_SD	0x0820
+#define PCI_DEVICE_ID_INTEL_MFD_SDIO1	0x0821
+#define PCI_DEVICE_ID_INTEL_MFD_SDIO2	0x0822
+#define PCI_DEVICE_ID_INTEL_MFD_EMMC0	0x0823
+#define PCI_DEVICE_ID_INTEL_MFD_EMMC1	0x0824
+#define PCI_DEVICE_ID_INTEL_MRST_SD2	0x084F
+#define PCI_DEVICE_ID_INTEL_I960	0x0960
+#define PCI_DEVICE_ID_INTEL_I960RM	0x0962
+#define PCI_DEVICE_ID_INTEL_8257X_SOL	0x1062
+#define PCI_DEVICE_ID_INTEL_82573E_SOL	0x1085
+#define PCI_DEVICE_ID_INTEL_82573L_SOL	0x108F
+#define PCI_DEVICE_ID_INTEL_82815_MC	0x1130
+#define PCI_DEVICE_ID_INTEL_82815_CGC	0x1132
+#define PCI_DEVICE_ID_INTEL_82092AA_0	0x1221
+#define PCI_DEVICE_ID_INTEL_7505_0	0x2550
+#define PCI_DEVICE_ID_INTEL_7205_0	0x255d
+#define PCI_DEVICE_ID_INTEL_82437	0x122d
+#define PCI_DEVICE_ID_INTEL_82371FB_0	0x122e
+#define PCI_DEVICE_ID_INTEL_82371FB_1	0x1230
+#define PCI_DEVICE_ID_INTEL_82371MX	0x1234
+#define PCI_DEVICE_ID_INTEL_82441	0x1237
+#define PCI_DEVICE_ID_INTEL_82380FB	0x124b
+#define PCI_DEVICE_ID_INTEL_82439	0x1250
+#define PCI_DEVICE_ID_INTEL_80960_RP	0x1960
+#define PCI_DEVICE_ID_INTEL_82840_HB	0x1a21
+#define PCI_DEVICE_ID_INTEL_82845_HB	0x1a30
+#define PCI_DEVICE_ID_INTEL_IOAT	0x1a38
+#define PCI_DEVICE_ID_INTEL_COUGARPOINT_LPC_MIN	0x1c41
+#define PCI_DEVICE_ID_INTEL_COUGARPOINT_LPC_MAX	0x1c5f
+#define PCI_DEVICE_ID_INTEL_PATSBURG_LPC_0	0x1d40
+#define PCI_DEVICE_ID_INTEL_PATSBURG_LPC_1	0x1d41
+#define PCI_DEVICE_ID_INTEL_DH89XXCC_LPC_MIN	0x2310
+#define PCI_DEVICE_ID_INTEL_DH89XXCC_LPC_MAX	0x231f
+#define PCI_DEVICE_ID_INTEL_82801AA_0	0x2410
+#define PCI_DEVICE_ID_INTEL_82801AA_1	0x2411
+#define PCI_DEVICE_ID_INTEL_82801AA_3	0x2413
+#define PCI_DEVICE_ID_INTEL_82801AA_5	0x2415
+#define PCI_DEVICE_ID_INTEL_82801AA_6	0x2416
+#define PCI_DEVICE_ID_INTEL_82801AA_8	0x2418
+#define PCI_DEVICE_ID_INTEL_82801AB_0	0x2420
+#define PCI_DEVICE_ID_INTEL_82801AB_1	0x2421
+#define PCI_DEVICE_ID_INTEL_82801AB_3	0x2423
+#define PCI_DEVICE_ID_INTEL_82801AB_5	0x2425
+#define PCI_DEVICE_ID_INTEL_82801AB_6	0x2426
+#define PCI_DEVICE_ID_INTEL_82801AB_8	0x2428
+#define PCI_DEVICE_ID_INTEL_82801BA_0	0x2440
+#define PCI_DEVICE_ID_INTEL_82801BA_2	0x2443
+#define PCI_DEVICE_ID_INTEL_82801BA_4	0x2445
+#define PCI_DEVICE_ID_INTEL_82801BA_6	0x2448
+#define PCI_DEVICE_ID_INTEL_82801BA_8	0x244a
+#define PCI_DEVICE_ID_INTEL_82801BA_9	0x244b
+#define PCI_DEVICE_ID_INTEL_82801BA_10	0x244c
+#define PCI_DEVICE_ID_INTEL_82801BA_11	0x244e
+#define PCI_DEVICE_ID_INTEL_82801E_0	0x2450
+#define PCI_DEVICE_ID_INTEL_82801E_11	0x245b
+#define PCI_DEVICE_ID_INTEL_82801CA_0	0x2480
+#define PCI_DEVICE_ID_INTEL_82801CA_3	0x2483
+#define PCI_DEVICE_ID_INTEL_82801CA_5	0x2485
+#define PCI_DEVICE_ID_INTEL_82801CA_6	0x2486
+#define PCI_DEVICE_ID_INTEL_82801CA_10	0x248a
+#define PCI_DEVICE_ID_INTEL_82801CA_11	0x248b
+#define PCI_DEVICE_ID_INTEL_82801CA_12	0x248c
+#define PCI_DEVICE_ID_INTEL_82801DB_0	0x24c0
+#define PCI_DEVICE_ID_INTEL_82801DB_1	0x24c1
+#define PCI_DEVICE_ID_INTEL_82801DB_2	0x24c2
+#define PCI_DEVICE_ID_INTEL_82801DB_3	0x24c3
+#define PCI_DEVICE_ID_INTEL_82801DB_5	0x24c5
+#define PCI_DEVICE_ID_INTEL_82801DB_6	0x24c6
+#define PCI_DEVICE_ID_INTEL_82801DB_9	0x24c9
+#define PCI_DEVICE_ID_INTEL_82801DB_10	0x24ca
+#define PCI_DEVICE_ID_INTEL_82801DB_11	0x24cb
+#define PCI_DEVICE_ID_INTEL_82801DB_12  0x24cc
+#define PCI_DEVICE_ID_INTEL_82801EB_0	0x24d0
+#define PCI_DEVICE_ID_INTEL_82801EB_1	0x24d1
+#define PCI_DEVICE_ID_INTEL_82801EB_3	0x24d3
+#define PCI_DEVICE_ID_INTEL_82801EB_5	0x24d5
+#define PCI_DEVICE_ID_INTEL_82801EB_6	0x24d6
+#define PCI_DEVICE_ID_INTEL_82801EB_11	0x24db
+#define PCI_DEVICE_ID_INTEL_82801EB_12	0x24dc
+#define PCI_DEVICE_ID_INTEL_82801EB_13	0x24dd
+#define PCI_DEVICE_ID_INTEL_ESB_1	0x25a1
+#define PCI_DEVICE_ID_INTEL_ESB_2	0x25a2
+#define PCI_DEVICE_ID_INTEL_ESB_4	0x25a4
+#define PCI_DEVICE_ID_INTEL_ESB_5	0x25a6
+#define PCI_DEVICE_ID_INTEL_ESB_9	0x25ab
+#define PCI_DEVICE_ID_INTEL_ESB_10	0x25ac
+#define PCI_DEVICE_ID_INTEL_82820_HB	0x2500
+#define PCI_DEVICE_ID_INTEL_82820_UP_HB	0x2501
+#define PCI_DEVICE_ID_INTEL_82850_HB	0x2530
+#define PCI_DEVICE_ID_INTEL_82860_HB	0x2531
+#define PCI_DEVICE_ID_INTEL_E7501_MCH	0x254c
+#define PCI_DEVICE_ID_INTEL_82845G_HB	0x2560
+#define PCI_DEVICE_ID_INTEL_82845G_IG	0x2562
+#define PCI_DEVICE_ID_INTEL_82865_HB	0x2570
+#define PCI_DEVICE_ID_INTEL_82865_IG	0x2572
+#define PCI_DEVICE_ID_INTEL_82875_HB	0x2578
+#define PCI_DEVICE_ID_INTEL_82915G_HB	0x2580
+#define PCI_DEVICE_ID_INTEL_82915G_IG	0x2582
+#define PCI_DEVICE_ID_INTEL_82915GM_HB	0x2590
+#define PCI_DEVICE_ID_INTEL_82915GM_IG	0x2592
+#define PCI_DEVICE_ID_INTEL_5000_ERR	0x25F0
+#define PCI_DEVICE_ID_INTEL_5000_FBD0	0x25F5
+#define PCI_DEVICE_ID_INTEL_5000_FBD1	0x25F6
+#define PCI_DEVICE_ID_INTEL_82945G_HB	0x2770
+#define PCI_DEVICE_ID_INTEL_82945G_IG	0x2772
+#define PCI_DEVICE_ID_INTEL_3000_HB	0x2778
+#define PCI_DEVICE_ID_INTEL_82945GM_HB	0x27A0
+#define PCI_DEVICE_ID_INTEL_82945GM_IG	0x27A2
+#define PCI_DEVICE_ID_INTEL_ICH6_0	0x2640
+#define PCI_DEVICE_ID_INTEL_ICH6_1	0x2641
+#define PCI_DEVICE_ID_INTEL_ICH6_2	0x2642
+#define PCI_DEVICE_ID_INTEL_ICH6_16	0x266a
+#define PCI_DEVICE_ID_INTEL_ICH6_17	0x266d
+#define PCI_DEVICE_ID_INTEL_ICH6_18	0x266e
+#define PCI_DEVICE_ID_INTEL_ICH6_19	0x266f
+#define PCI_DEVICE_ID_INTEL_ESB2_0	0x2670
+#define PCI_DEVICE_ID_INTEL_ESB2_14	0x2698
+#define PCI_DEVICE_ID_INTEL_ESB2_17	0x269b
+#define PCI_DEVICE_ID_INTEL_ESB2_18	0x269e
+#define PCI_DEVICE_ID_INTEL_ICH7_0	0x27b8
+#define PCI_DEVICE_ID_INTEL_ICH7_1	0x27b9
+#define PCI_DEVICE_ID_INTEL_ICH7_30	0x27b0
+#define PCI_DEVICE_ID_INTEL_TGP_LPC	0x27bc
+#define PCI_DEVICE_ID_INTEL_ICH7_31	0x27bd
+#define PCI_DEVICE_ID_INTEL_ICH7_17	0x27da
+#define PCI_DEVICE_ID_INTEL_ICH7_19	0x27dd
+#define PCI_DEVICE_ID_INTEL_ICH7_20	0x27de
+#define PCI_DEVICE_ID_INTEL_ICH7_21	0x27df
+#define PCI_DEVICE_ID_INTEL_ICH8_0	0x2810
+#define PCI_DEVICE_ID_INTEL_ICH8_1	0x2811
+#define PCI_DEVICE_ID_INTEL_ICH8_2	0x2812
+#define PCI_DEVICE_ID_INTEL_ICH8_3	0x2814
+#define PCI_DEVICE_ID_INTEL_ICH8_4	0x2815
+#define PCI_DEVICE_ID_INTEL_ICH8_5	0x283e
+#define PCI_DEVICE_ID_INTEL_ICH8_6	0x2850
+#define PCI_DEVICE_ID_INTEL_ICH9_0	0x2910
+#define PCI_DEVICE_ID_INTEL_ICH9_1	0x2917
+#define PCI_DEVICE_ID_INTEL_ICH9_2	0x2912
+#define PCI_DEVICE_ID_INTEL_ICH9_3	0x2913
+#define PCI_DEVICE_ID_INTEL_ICH9_4	0x2914
+#define PCI_DEVICE_ID_INTEL_ICH9_5	0x2919
+#define PCI_DEVICE_ID_INTEL_ICH9_6	0x2930
+#define PCI_DEVICE_ID_INTEL_ICH9_7	0x2916
+#define PCI_DEVICE_ID_INTEL_ICH9_8	0x2918
+#define PCI_DEVICE_ID_INTEL_I7_MCR	0x2c18
+#define PCI_DEVICE_ID_INTEL_I7_MC_TAD	0x2c19
+#define PCI_DEVICE_ID_INTEL_I7_MC_RAS	0x2c1a
+#define PCI_DEVICE_ID_INTEL_I7_MC_TEST	0x2c1c
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH0_CTRL  0x2c20
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH0_ADDR  0x2c21
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH0_RANK  0x2c22
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH0_TC    0x2c23
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH1_CTRL  0x2c28
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH1_ADDR  0x2c29
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH1_RANK  0x2c2a
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH1_TC    0x2c2b
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH2_CTRL  0x2c30
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH2_ADDR  0x2c31
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH2_RANK  0x2c32
+#define PCI_DEVICE_ID_INTEL_I7_MC_CH2_TC    0x2c33
+#define PCI_DEVICE_ID_INTEL_I7_NONCORE	0x2c41
+#define PCI_DEVICE_ID_INTEL_I7_NONCORE_ALT 0x2c40
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_NONCORE     0x2c50
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_NONCORE_ALT 0x2c51
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_NONCORE_REV2 0x2c70
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_SAD         0x2c81
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_QPI_LINK0   0x2c90
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_QPI_PHY0    0x2c91
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MCR         0x2c98
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_TAD      0x2c99
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_TEST     0x2c9C
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_CTRL 0x2ca0
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_ADDR 0x2ca1
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_RANK 0x2ca2
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_TC   0x2ca3
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_CTRL 0x2ca8
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_ADDR 0x2ca9
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_RANK 0x2caa
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_TC   0x2cab
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MCR_REV2          0x2d98
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_TAD_REV2       0x2d99
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_RAS_REV2       0x2d9a
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_TEST_REV2      0x2d9c
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_CTRL_REV2  0x2da0
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_ADDR_REV2  0x2da1
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_RANK_REV2  0x2da2
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH0_TC_REV2    0x2da3
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_CTRL_REV2  0x2da8
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_ADDR_REV2  0x2da9
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_RANK_REV2  0x2daa
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH1_TC_REV2    0x2dab
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH2_CTRL_REV2  0x2db0
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH2_ADDR_REV2  0x2db1
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH2_RANK_REV2  0x2db2
+#define PCI_DEVICE_ID_INTEL_LYNNFIELD_MC_CH2_TC_REV2    0x2db3
+#define PCI_DEVICE_ID_INTEL_82855PM_HB	0x3340
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG4	0x3429
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG5	0x342a
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG6	0x342b
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG7	0x342c
+#define PCI_DEVICE_ID_INTEL_X58_HUB_MGMT 0x342e
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG0	0x3430
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG1	0x3431
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG2	0x3432
+#define PCI_DEVICE_ID_INTEL_IOAT_TBG3	0x3433
+#define PCI_DEVICE_ID_INTEL_82830_HB	0x3575
+#define PCI_DEVICE_ID_INTEL_82830_CGC	0x3577
+#define PCI_DEVICE_ID_INTEL_82854_HB	0x358c
+#define PCI_DEVICE_ID_INTEL_82854_IG	0x358e
+#define PCI_DEVICE_ID_INTEL_82855GM_HB	0x3580
+#define PCI_DEVICE_ID_INTEL_82855GM_IG	0x3582
+#define PCI_DEVICE_ID_INTEL_E7520_MCH	0x3590
+#define PCI_DEVICE_ID_INTEL_E7320_MCH	0x3592
+#define PCI_DEVICE_ID_INTEL_MCH_PA	0x3595
+#define PCI_DEVICE_ID_INTEL_MCH_PA1	0x3596
+#define PCI_DEVICE_ID_INTEL_MCH_PB	0x3597
+#define PCI_DEVICE_ID_INTEL_MCH_PB1	0x3598
+#define PCI_DEVICE_ID_INTEL_MCH_PC	0x3599
+#define PCI_DEVICE_ID_INTEL_MCH_PC1	0x359a
+#define PCI_DEVICE_ID_INTEL_E7525_MCH	0x359e
+#define PCI_DEVICE_ID_INTEL_I7300_MCH_ERR 0x360c
+#define PCI_DEVICE_ID_INTEL_I7300_MCH_FB0 0x360f
+#define PCI_DEVICE_ID_INTEL_I7300_MCH_FB1 0x3610
+#define PCI_DEVICE_ID_INTEL_IOAT_CNB	0x360b
+#define PCI_DEVICE_ID_INTEL_FBD_CNB	0x360c
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF0	0x3710
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF1	0x3711
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF2	0x3712
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF3	0x3713
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF4	0x3714
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF5	0x3715
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF6	0x3716
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF7	0x3717
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF8	0x3718
+#define PCI_DEVICE_ID_INTEL_IOAT_JSF9	0x3719
+#define PCI_DEVICE_ID_INTEL_ICH10_0	0x3a14
+#define PCI_DEVICE_ID_INTEL_ICH10_1	0x3a16
+#define PCI_DEVICE_ID_INTEL_ICH10_2	0x3a18
+#define PCI_DEVICE_ID_INTEL_ICH10_3	0x3a1a
+#define PCI_DEVICE_ID_INTEL_ICH10_4	0x3a30
+#define PCI_DEVICE_ID_INTEL_ICH10_5	0x3a60
+#define PCI_DEVICE_ID_INTEL_5_3400_SERIES_LPC_MIN	0x3b00
+#define PCI_DEVICE_ID_INTEL_5_3400_SERIES_LPC_MAX	0x3b1f
+#define PCI_DEVICE_ID_INTEL_IOAT_SNB	0x402f
+#define PCI_DEVICE_ID_INTEL_5100_16	0x65f0
+#define PCI_DEVICE_ID_INTEL_5100_21	0x65f5
+#define PCI_DEVICE_ID_INTEL_5100_22	0x65f6
+#define PCI_DEVICE_ID_INTEL_5400_ERR	0x4030
+#define PCI_DEVICE_ID_INTEL_5400_FBD0	0x4035
+#define PCI_DEVICE_ID_INTEL_5400_FBD1	0x4036
+#define PCI_DEVICE_ID_INTEL_IOAT_SCNB	0x65ff
+#define PCI_DEVICE_ID_INTEL_EP80579_0	0x5031
+#define PCI_DEVICE_ID_INTEL_EP80579_1	0x5032
+#define PCI_DEVICE_ID_INTEL_82371SB_0	0x7000
+#define PCI_DEVICE_ID_INTEL_82371SB_1	0x7010
+#define PCI_DEVICE_ID_INTEL_82371SB_2	0x7020
+#define PCI_DEVICE_ID_INTEL_82437VX	0x7030
+#define PCI_DEVICE_ID_INTEL_82439TX	0x7100
+#define PCI_DEVICE_ID_INTEL_82371AB_0	0x7110
+#define PCI_DEVICE_ID_INTEL_82371AB	0x7111
+#define PCI_DEVICE_ID_INTEL_82371AB_2	0x7112
+#define PCI_DEVICE_ID_INTEL_82371AB_3	0x7113
+#define PCI_DEVICE_ID_INTEL_82810_MC1	0x7120
+#define PCI_DEVICE_ID_INTEL_82810_IG1	0x7121
+#define PCI_DEVICE_ID_INTEL_82810_MC3	0x7122
+#define PCI_DEVICE_ID_INTEL_82810_IG3	0x7123
+#define PCI_DEVICE_ID_INTEL_82810E_MC	0x7124
+#define PCI_DEVICE_ID_INTEL_82810E_IG	0x7125
+#define PCI_DEVICE_ID_INTEL_82443LX_0	0x7180
+#define PCI_DEVICE_ID_INTEL_82443LX_1	0x7181
+#define PCI_DEVICE_ID_INTEL_82443BX_0	0x7190
+#define PCI_DEVICE_ID_INTEL_82443BX_1	0x7191
+#define PCI_DEVICE_ID_INTEL_82443BX_2	0x7192
+#define PCI_DEVICE_ID_INTEL_440MX	0x7195
+#define PCI_DEVICE_ID_INTEL_440MX_6	0x7196
+#define PCI_DEVICE_ID_INTEL_82443MX_0	0x7198
+#define PCI_DEVICE_ID_INTEL_82443MX_1	0x7199
+#define PCI_DEVICE_ID_INTEL_82443MX_3	0x719b
+#define PCI_DEVICE_ID_INTEL_82443GX_0	0x71a0
+#define PCI_DEVICE_ID_INTEL_82443GX_2	0x71a2
+#define PCI_DEVICE_ID_INTEL_82372FB_1	0x7601
+#define PCI_DEVICE_ID_INTEL_SCH_LPC	0x8119
+#define PCI_DEVICE_ID_INTEL_SCH_IDE	0x811a
+#define PCI_DEVICE_ID_INTEL_ITC_LPC	0x8186
+#define PCI_DEVICE_ID_INTEL_82454GX	0x84c4
+#define PCI_DEVICE_ID_INTEL_82450GX	0x84c5
+#define PCI_DEVICE_ID_INTEL_82451NX	0x84ca
+#define PCI_DEVICE_ID_INTEL_82454NX     0x84cb
+#define PCI_DEVICE_ID_INTEL_84460GX	0x84ea
+#define PCI_DEVICE_ID_INTEL_IXP4XX	0x8500
+#define PCI_DEVICE_ID_INTEL_IXP2800	0x9004
+#define PCI_DEVICE_ID_INTEL_S21152BB	0xb152
+
+#define PCI_VENDOR_ID_SCALEMP		0x8686
+#define PCI_DEVICE_ID_SCALEMP_VSMP_CTL	0x1010
+
+#define PCI_VENDOR_ID_ADAPTEC		0x9004
+#define PCI_DEVICE_ID_ADAPTEC_7810	0x1078
+#define PCI_DEVICE_ID_ADAPTEC_7821	0x2178
+#define PCI_DEVICE_ID_ADAPTEC_38602	0x3860
+#define PCI_DEVICE_ID_ADAPTEC_7850	0x5078
+#define PCI_DEVICE_ID_ADAPTEC_7855	0x5578
+#define PCI_DEVICE_ID_ADAPTEC_3860	0x6038
+#define PCI_DEVICE_ID_ADAPTEC_1480A	0x6075
+#define PCI_DEVICE_ID_ADAPTEC_7860	0x6078
+#define PCI_DEVICE_ID_ADAPTEC_7861	0x6178
+#define PCI_DEVICE_ID_ADAPTEC_7870	0x7078
+#define PCI_DEVICE_ID_ADAPTEC_7871	0x7178
+#define PCI_DEVICE_ID_ADAPTEC_7872	0x7278
+#define PCI_DEVICE_ID_ADAPTEC_7873	0x7378
+#define PCI_DEVICE_ID_ADAPTEC_7874	0x7478
+#define PCI_DEVICE_ID_ADAPTEC_7895	0x7895
+#define PCI_DEVICE_ID_ADAPTEC_7880	0x8078
+#define PCI_DEVICE_ID_ADAPTEC_7881	0x8178
+#define PCI_DEVICE_ID_ADAPTEC_7882	0x8278
+#define PCI_DEVICE_ID_ADAPTEC_7883	0x8378
+#define PCI_DEVICE_ID_ADAPTEC_7884	0x8478
+#define PCI_DEVICE_ID_ADAPTEC_7885	0x8578
+#define PCI_DEVICE_ID_ADAPTEC_7886	0x8678
+#define PCI_DEVICE_ID_ADAPTEC_7887	0x8778
+#define PCI_DEVICE_ID_ADAPTEC_7888	0x8878
+
+#define PCI_VENDOR_ID_ADAPTEC2		0x9005
+#define PCI_DEVICE_ID_ADAPTEC2_2940U2	0x0010
+#define PCI_DEVICE_ID_ADAPTEC2_2930U2	0x0011
+#define PCI_DEVICE_ID_ADAPTEC2_7890B	0x0013
+#define PCI_DEVICE_ID_ADAPTEC2_7890	0x001f
+#define PCI_DEVICE_ID_ADAPTEC2_3940U2	0x0050
+#define PCI_DEVICE_ID_ADAPTEC2_3950U2D	0x0051
+#define PCI_DEVICE_ID_ADAPTEC2_7896	0x005f
+#define PCI_DEVICE_ID_ADAPTEC2_7892A	0x0080
+#define PCI_DEVICE_ID_ADAPTEC2_7892B	0x0081
+#define PCI_DEVICE_ID_ADAPTEC2_7892D	0x0083
+#define PCI_DEVICE_ID_ADAPTEC2_7892P	0x008f
+#define PCI_DEVICE_ID_ADAPTEC2_7899A	0x00c0
+#define PCI_DEVICE_ID_ADAPTEC2_7899B	0x00c1
+#define PCI_DEVICE_ID_ADAPTEC2_7899D	0x00c3
+#define PCI_DEVICE_ID_ADAPTEC2_7899P	0x00cf
+#define PCI_DEVICE_ID_ADAPTEC2_OBSIDIAN   0x0500
+#define PCI_DEVICE_ID_ADAPTEC2_SCAMP	0x0503
+
+#define PCI_VENDOR_ID_XILINX_RME	0xea60
+#define PCI_DEVICE_ID_RME_DIGI32	0x9896
+#define PCI_DEVICE_ID_RME_DIGI32_PRO	0x9897
+#define PCI_DEVICE_ID_RME_DIGI32_8	0x9898
diff --git a/include/linux/pci_regs.h b/include/linux/pci_regs.h
new file mode 100644
index 0000000..be01380
--- /dev/null
+++ b/include/linux/pci_regs.h
@@ -0,0 +1,698 @@
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
+ * 	For hypertransport information, please consult the following manuals
+ * 	from http://www.hypertransport.org
+ *
+ *	The Hypertransport I/O Link Specification
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
+#define  PCI_COMMAND_WAIT 	0x80	/* Enable address/data stepping */
+#define  PCI_COMMAND_SERR	0x100	/* Enable SERR */
+#define  PCI_COMMAND_FAST_BACK	0x200	/* Enable back-to-back writes */
+#define  PCI_COMMAND_INTX_DISABLE 0x400 /* INTx Emulation Disable */
+
+#define PCI_STATUS		0x06	/* 16 bits */
+#define  PCI_STATUS_INTERRUPT	0x08	/* Interrupt status */
+#define  PCI_STATUS_CAP_LIST	0x10	/* Support Capability List */
+#define  PCI_STATUS_66MHZ	0x20	/* Support 66 Mhz PCI 2.1 bus */
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
+#define PCI_CAPABILITY_LIST	0x34	/* Offset of first capability list entry */
+
+/* 0x35-0x3b are reserved */
+#define PCI_INTERRUPT_LINE	0x3c	/* 8 bits */
+#define PCI_INTERRUPT_PIN	0x3d	/* 8 bits */
+#define PCI_MIN_GNT		0x3e	/* 8 bits */
+#define PCI_MAX_LAT		0x3f	/* 8 bits */
+
+/* Header type 1 (PCI-to-PCI bridges) */
+#define PCI_PRIMARY_BUS		0x18	/* Primary bus number */
+#define PCI_SECONDARY_BUS	0x19	/* Secondary bus number */
+#define PCI_SUBORDINATE_BUS	0x1a	/* Highest bus number behind the bridge */
+#define PCI_SEC_LATENCY_TIMER	0x1b	/* Latency timer for secondary interface */
+#define PCI_IO_BASE		0x1c	/* I/O range behind the bridge */
+#define PCI_IO_LIMIT		0x1d
+#define  PCI_IO_RANGE_TYPE_MASK	0x0fUL	/* I/O bridging type */
+#define  PCI_IO_RANGE_TYPE_16	0x00
+#define  PCI_IO_RANGE_TYPE_32	0x01
+#define  PCI_IO_RANGE_MASK	(~0x0fUL)
+#define PCI_SEC_STATUS		0x1e	/* Secondary status register, only bit 14 used */
+#define PCI_MEMORY_BASE		0x20	/* Memory range behind */
+#define PCI_MEMORY_LIMIT	0x22
+#define  PCI_MEMORY_RANGE_TYPE_MASK 0x0fUL
+#define  PCI_MEMORY_RANGE_MASK	(~0x0fUL)
+#define PCI_PREF_MEMORY_BASE	0x24	/* Prefetchable memory range behind */
+#define PCI_PREF_MEMORY_LIMIT	0x26
+#define  PCI_PREF_RANGE_TYPE_MASK 0x0fUL
+#define  PCI_PREF_RANGE_TYPE_32	0x00
+#define  PCI_PREF_RANGE_TYPE_64	0x01
+#define  PCI_PREF_RANGE_MASK	(~0x0fUL)
+#define PCI_PREF_BASE_UPPER32	0x28	/* Upper half of prefetchable memory range */
+#define PCI_PREF_LIMIT_UPPER32	0x2c
+#define PCI_IO_BASE_UPPER16	0x30	/* Upper half of I/O addresses */
+#define PCI_IO_LIMIT_UPPER16	0x32
+/* 0x34 same as for htype 0 */
+/* 0x35-0x3b is reserved */
+#define PCI_ROM_ADDRESS1	0x38	/* Same as PCI_ROM_ADDRESS, but for htype 1 */
+/* 0x3c-0x3d are same as for htype 0 */
+#define PCI_BRIDGE_CONTROL	0x3e
+#define  PCI_BRIDGE_CTL_PARITY	0x01	/* Enable parity detection on secondary interface */
+#define  PCI_BRIDGE_CTL_SERR	0x02	/* The same for SERR forwarding */
+#define  PCI_BRIDGE_CTL_ISA	0x04	/* Enable ISA mode */
+#define  PCI_BRIDGE_CTL_VGA	0x08	/* Forward VGA addresses */
+#define  PCI_BRIDGE_CTL_MASTER_ABORT	0x20  /* Report master aborts */
+#define  PCI_BRIDGE_CTL_BUS_RESET	0x40	/* Secondary bus reset */
+#define  PCI_BRIDGE_CTL_FAST_BACK	0x80	/* Fast Back2Back enabled on secondary interface */
+
+/* Header type 2 (CardBus bridges) */
+#define PCI_CB_CAPABILITY_LIST	0x14
+/* 0x15 reserved */
+#define PCI_CB_SEC_STATUS	0x16	/* Secondary status */
+#define PCI_CB_PRIMARY_BUS	0x18	/* PCI bus number */
+#define PCI_CB_CARD_BUS		0x19	/* CardBus bus number */
+#define PCI_CB_SUBORDINATE_BUS	0x1a	/* Subordinate bus number */
+#define PCI_CB_LATENCY_TIMER	0x1b	/* CardBus latency timer */
+#define PCI_CB_MEMORY_BASE_0	0x1c
+#define PCI_CB_MEMORY_LIMIT_0	0x20
+#define PCI_CB_MEMORY_BASE_1	0x24
+#define PCI_CB_MEMORY_LIMIT_1	0x28
+#define PCI_CB_IO_BASE_0	0x2c
+#define PCI_CB_IO_BASE_0_HI	0x2e
+#define PCI_CB_IO_LIMIT_0	0x30
+#define PCI_CB_IO_LIMIT_0_HI	0x32
+#define PCI_CB_IO_BASE_1	0x34
+#define PCI_CB_IO_BASE_1_HI	0x36
+#define PCI_CB_IO_LIMIT_1	0x38
+#define PCI_CB_IO_LIMIT_1_HI	0x3a
+#define  PCI_CB_IO_RANGE_MASK	(~0x03UL)
+/* 0x3c-0x3d are same as for htype 0 */
+#define PCI_CB_BRIDGE_CONTROL	0x3e
+#define  PCI_CB_BRIDGE_CTL_PARITY	0x01	/* Similar to standard bridge control register */
+#define  PCI_CB_BRIDGE_CTL_SERR		0x02
+#define  PCI_CB_BRIDGE_CTL_ISA		0x04
+#define  PCI_CB_BRIDGE_CTL_VGA		0x08
+#define  PCI_CB_BRIDGE_CTL_MASTER_ABORT	0x20
+#define  PCI_CB_BRIDGE_CTL_CB_RESET	0x40	/* CardBus reset */
+#define  PCI_CB_BRIDGE_CTL_16BIT_INT	0x80	/* Enable interrupt for 16-bit cards */
+#define  PCI_CB_BRIDGE_CTL_PREFETCH_MEM0 0x100	/* Prefetch enable for both memory regions */
+#define  PCI_CB_BRIDGE_CTL_PREFETCH_MEM1 0x200
+#define  PCI_CB_BRIDGE_CTL_POST_WRITES	0x400
+#define PCI_CB_SUBSYSTEM_VENDOR_ID	0x40
+#define PCI_CB_SUBSYSTEM_ID		0x42
+#define PCI_CB_LEGACY_MODE_BASE		0x44	/* 16-bit PC Card legacy mode base address (ExCa) */
+/* 0x48-0x7f reserved */
+
+/* Capability lists */
+
+#define PCI_CAP_LIST_ID		0	/* Capability ID */
+#define  PCI_CAP_ID_PM		0x01	/* Power Management */
+#define  PCI_CAP_ID_AGP		0x02	/* Accelerated Graphics Port */
+#define  PCI_CAP_ID_VPD		0x03	/* Vital Product Data */
+#define  PCI_CAP_ID_SLOTID	0x04	/* Slot Identification */
+#define  PCI_CAP_ID_MSI		0x05	/* Message Signalled Interrupts */
+#define  PCI_CAP_ID_CHSWP	0x06	/* CompactPCI HotSwap */
+#define  PCI_CAP_ID_PCIX	0x07	/* PCI-X */
+#define  PCI_CAP_ID_HT		0x08	/* HyperTransport */
+#define  PCI_CAP_ID_VNDR	0x09	/* Vendor specific */
+#define  PCI_CAP_ID_DBG		0x0A	/* Debug port */
+#define  PCI_CAP_ID_CCRC	0x0B	/* CompactPCI Central Resource Control */
+#define  PCI_CAP_ID_SHPC 	0x0C	/* PCI Standard Hot-Plug Controller */
+#define  PCI_CAP_ID_SSVID	0x0D	/* Bridge subsystem vendor/device ID */
+#define  PCI_CAP_ID_AGP3	0x0E	/* AGP Target PCI-PCI bridge */
+#define  PCI_CAP_ID_EXP 	0x10	/* PCI Express */
+#define  PCI_CAP_ID_MSIX	0x11	/* MSI-X */
+#define  PCI_CAP_ID_AF		0x13	/* PCI Advanced Features */
+#define PCI_CAP_LIST_NEXT	1	/* Next capability in the list */
+#define PCI_CAP_FLAGS		2	/* Capability defined flags (16 bits) */
+#define PCI_CAP_SIZEOF		4
+
+/* Power Management Registers */
+
+#define PCI_PM_PMC		2	/* PM Capabilities Register */
+#define  PCI_PM_CAP_VER_MASK	0x0007	/* Version */
+#define  PCI_PM_CAP_PME_CLOCK	0x0008	/* PME clock required */
+#define  PCI_PM_CAP_RESERVED    0x0010  /* Reserved field */
+#define  PCI_PM_CAP_DSI		0x0020	/* Device specific initialization */
+#define  PCI_PM_CAP_AUX_POWER	0x01C0	/* Auxiliary power support mask */
+#define  PCI_PM_CAP_D1		0x0200	/* D1 power state support */
+#define  PCI_PM_CAP_D2		0x0400	/* D2 power state support */
+#define  PCI_PM_CAP_PME		0x0800	/* PME pin supported */
+#define  PCI_PM_CAP_PME_MASK	0xF800	/* PME Mask of all supported states */
+#define  PCI_PM_CAP_PME_D0	0x0800	/* PME# from D0 */
+#define  PCI_PM_CAP_PME_D1	0x1000	/* PME# from D1 */
+#define  PCI_PM_CAP_PME_D2	0x2000	/* PME# from D2 */
+#define  PCI_PM_CAP_PME_D3	0x4000	/* PME# from D3 (hot) */
+#define  PCI_PM_CAP_PME_D3cold	0x8000	/* PME# from D3 (cold) */
+#define  PCI_PM_CAP_PME_SHIFT	11	/* Start of the PME Mask in PMC */
+#define PCI_PM_CTRL		4	/* PM control and status register */
+#define  PCI_PM_CTRL_STATE_MASK	0x0003	/* Current power state (D0 to D3) */
+#define  PCI_PM_CTRL_NO_SOFT_RESET	0x0008	/* No reset for D3hot->D0 */
+#define  PCI_PM_CTRL_PME_ENABLE	0x0100	/* PME pin enable */
+#define  PCI_PM_CTRL_DATA_SEL_MASK	0x1e00	/* Data select (??) */
+#define  PCI_PM_CTRL_DATA_SCALE_MASK	0x6000	/* Data scale (??) */
+#define  PCI_PM_CTRL_PME_STATUS	0x8000	/* PME pin status */
+#define PCI_PM_PPB_EXTENSIONS	6	/* PPB support extensions (??) */
+#define  PCI_PM_PPB_B2_B3	0x40	/* Stop clock when in D3hot (??) */
+#define  PCI_PM_BPCC_ENABLE	0x80	/* Bus power/clock control enable (??) */
+#define PCI_PM_DATA_REGISTER	7	/* (??) */
+#define PCI_PM_SIZEOF		8
+
+/* AGP registers */
+
+#define PCI_AGP_VERSION		2	/* BCD version number */
+#define PCI_AGP_RFU		3	/* Rest of capability flags */
+#define PCI_AGP_STATUS		4	/* Status register */
+#define  PCI_AGP_STATUS_RQ_MASK	0xff000000	/* Maximum number of requests - 1 */
+#define  PCI_AGP_STATUS_SBA	0x0200	/* Sideband addressing supported */
+#define  PCI_AGP_STATUS_64BIT	0x0020	/* 64-bit addressing supported */
+#define  PCI_AGP_STATUS_FW	0x0010	/* FW transfers supported */
+#define  PCI_AGP_STATUS_RATE4	0x0004	/* 4x transfer rate supported */
+#define  PCI_AGP_STATUS_RATE2	0x0002	/* 2x transfer rate supported */
+#define  PCI_AGP_STATUS_RATE1	0x0001	/* 1x transfer rate supported */
+#define PCI_AGP_COMMAND		8	/* Control register */
+#define  PCI_AGP_COMMAND_RQ_MASK 0xff000000  /* Master: Maximum number of requests */
+#define  PCI_AGP_COMMAND_SBA	0x0200	/* Sideband addressing enabled */
+#define  PCI_AGP_COMMAND_AGP	0x0100	/* Allow processing of AGP transactions */
+#define  PCI_AGP_COMMAND_64BIT	0x0020 	/* Allow processing of 64-bit addresses */
+#define  PCI_AGP_COMMAND_FW	0x0010 	/* Force FW transfers */
+#define  PCI_AGP_COMMAND_RATE4	0x0004	/* Use 4x rate */
+#define  PCI_AGP_COMMAND_RATE2	0x0002	/* Use 2x rate */
+#define  PCI_AGP_COMMAND_RATE1	0x0001	/* Use 1x rate */
+#define PCI_AGP_SIZEOF		12
+
+/* Vital Product Data */
+
+#define PCI_VPD_ADDR		2	/* Address to access (15 bits!) */
+#define  PCI_VPD_ADDR_MASK	0x7fff	/* Address mask */
+#define  PCI_VPD_ADDR_F		0x8000	/* Write 0, 1 indicates completion */
+#define PCI_VPD_DATA		4	/* 32-bits of data returned here */
+
+/* Slot Identification */
+
+#define PCI_SID_ESR		2	/* Expansion Slot Register */
+#define  PCI_SID_ESR_NSLOTS	0x1f	/* Number of expansion slots available */
+#define  PCI_SID_ESR_FIC	0x20	/* First In Chassis Flag */
+#define PCI_SID_CHASSIS_NR	3	/* Chassis Number */
+
+/* Message Signalled Interrupts registers */
+
+#define PCI_MSI_FLAGS		2	/* Various flags */
+#define  PCI_MSI_FLAGS_64BIT	0x80	/* 64-bit addresses allowed */
+#define  PCI_MSI_FLAGS_QSIZE	0x70	/* Message queue size configured */
+#define  PCI_MSI_FLAGS_QMASK	0x0e	/* Maximum queue size available */
+#define  PCI_MSI_FLAGS_ENABLE	0x01	/* MSI feature enabled */
+#define  PCI_MSI_FLAGS_MASKBIT	0x100	/* 64-bit mask bits allowed */
+#define PCI_MSI_RFU		3	/* Rest of capability flags */
+#define PCI_MSI_ADDRESS_LO	4	/* Lower 32 bits */
+#define PCI_MSI_ADDRESS_HI	8	/* Upper 32 bits (if PCI_MSI_FLAGS_64BIT set) */
+#define PCI_MSI_DATA_32		8	/* 16 bits of data for 32-bit devices */
+#define PCI_MSI_MASK_32		12	/* Mask bits register for 32-bit devices */
+#define PCI_MSI_DATA_64		12	/* 16 bits of data for 64-bit devices */
+#define PCI_MSI_MASK_64		16	/* Mask bits register for 64-bit devices */
+
+/* MSI-X registers */
+#define PCI_MSIX_FLAGS		2
+#define  PCI_MSIX_FLAGS_QSIZE	0x7FF
+#define  PCI_MSIX_FLAGS_ENABLE	(1 << 15)
+#define  PCI_MSIX_FLAGS_MASKALL	(1 << 14)
+#define PCI_MSIX_TABLE		4
+#define PCI_MSIX_PBA		8
+#define  PCI_MSIX_FLAGS_BIRMASK	(7 << 0)
+
+/* MSI-X entry's format */
+#define PCI_MSIX_ENTRY_SIZE		16
+#define  PCI_MSIX_ENTRY_LOWER_ADDR	0
+#define  PCI_MSIX_ENTRY_UPPER_ADDR	4
+#define  PCI_MSIX_ENTRY_DATA		8
+#define  PCI_MSIX_ENTRY_VECTOR_CTRL	12
+#define   PCI_MSIX_ENTRY_CTRL_MASKBIT	1
+
+/* CompactPCI Hotswap Register */
+
+#define PCI_CHSWP_CSR		2	/* Control and Status Register */
+#define  PCI_CHSWP_DHA		0x01	/* Device Hiding Arm */
+#define  PCI_CHSWP_EIM		0x02	/* ENUM# Signal Mask */
+#define  PCI_CHSWP_PIE		0x04	/* Pending Insert or Extract */
+#define  PCI_CHSWP_LOO		0x08	/* LED On / Off */
+#define  PCI_CHSWP_PI		0x30	/* Programming Interface */
+#define  PCI_CHSWP_EXT		0x40	/* ENUM# status - extraction */
+#define  PCI_CHSWP_INS		0x80	/* ENUM# status - insertion */
+
+/* PCI Advanced Feature registers */
+
+#define PCI_AF_LENGTH		2
+#define PCI_AF_CAP		3
+#define  PCI_AF_CAP_TP		0x01
+#define  PCI_AF_CAP_FLR		0x02
+#define PCI_AF_CTRL		4
+#define  PCI_AF_CTRL_FLR	0x01
+#define PCI_AF_STATUS		5
+#define  PCI_AF_STATUS_TP	0x01
+
+/* PCI-X registers */
+
+#define PCI_X_CMD		2	/* Modes & Features */
+#define  PCI_X_CMD_DPERR_E	0x0001	/* Data Parity Error Recovery Enable */
+#define  PCI_X_CMD_ERO		0x0002	/* Enable Relaxed Ordering */
+#define  PCI_X_CMD_READ_512	0x0000	/* 512 byte maximum read byte count */
+#define  PCI_X_CMD_READ_1K	0x0004	/* 1Kbyte maximum read byte count */
+#define  PCI_X_CMD_READ_2K	0x0008	/* 2Kbyte maximum read byte count */
+#define  PCI_X_CMD_READ_4K	0x000c	/* 4Kbyte maximum read byte count */
+#define  PCI_X_CMD_MAX_READ	0x000c	/* Max Memory Read Byte Count */
+				/* Max # of outstanding split transactions */
+#define  PCI_X_CMD_SPLIT_1	0x0000	/* Max 1 */
+#define  PCI_X_CMD_SPLIT_2	0x0010	/* Max 2 */
+#define  PCI_X_CMD_SPLIT_3	0x0020	/* Max 3 */
+#define  PCI_X_CMD_SPLIT_4	0x0030	/* Max 4 */
+#define  PCI_X_CMD_SPLIT_8	0x0040	/* Max 8 */
+#define  PCI_X_CMD_SPLIT_12	0x0050	/* Max 12 */
+#define  PCI_X_CMD_SPLIT_16	0x0060	/* Max 16 */
+#define  PCI_X_CMD_SPLIT_32	0x0070	/* Max 32 */
+#define  PCI_X_CMD_MAX_SPLIT	0x0070	/* Max Outstanding Split Transactions */
+#define  PCI_X_CMD_VERSION(x) 	(((x) >> 12) & 3) /* Version */
+#define PCI_X_STATUS		4	/* PCI-X capabilities */
+#define  PCI_X_STATUS_DEVFN	0x000000ff	/* A copy of devfn */
+#define  PCI_X_STATUS_BUS	0x0000ff00	/* A copy of bus nr */
+#define  PCI_X_STATUS_64BIT	0x00010000	/* 64-bit device */
+#define  PCI_X_STATUS_133MHZ	0x00020000	/* 133 MHz capable */
+#define  PCI_X_STATUS_SPL_DISC	0x00040000	/* Split Completion Discarded */
+#define  PCI_X_STATUS_UNX_SPL	0x00080000	/* Unexpected Split Completion */
+#define  PCI_X_STATUS_COMPLEX	0x00100000	/* Device Complexity */
+#define  PCI_X_STATUS_MAX_READ	0x00600000	/* Designed Max Memory Read Count */
+#define  PCI_X_STATUS_MAX_SPLIT	0x03800000	/* Designed Max Outstanding Split Transactions */
+#define  PCI_X_STATUS_MAX_CUM	0x1c000000	/* Designed Max Cumulative Read Size */
+#define  PCI_X_STATUS_SPL_ERR	0x20000000	/* Rcvd Split Completion Error Msg */
+#define  PCI_X_STATUS_266MHZ	0x40000000	/* 266 MHz capable */
+#define  PCI_X_STATUS_533MHZ	0x80000000	/* 533 MHz capable */
+
+/* PCI Bridge Subsystem ID registers */
+
+#define PCI_SSVID_VENDOR_ID     4	/* PCI-Bridge subsystem vendor id register */
+#define PCI_SSVID_DEVICE_ID     6	/* PCI-Bridge subsystem device id register */
+
+/* PCI Express capability registers */
+
+#define PCI_EXP_FLAGS		2	/* Capabilities register */
+#define PCI_EXP_FLAGS_VERS	0x000f	/* Capability version */
+#define PCI_EXP_FLAGS_TYPE	0x00f0	/* Device/Port type */
+#define  PCI_EXP_TYPE_ENDPOINT	0x0	/* Express Endpoint */
+#define  PCI_EXP_TYPE_LEG_END	0x1	/* Legacy Endpoint */
+#define  PCI_EXP_TYPE_ROOT_PORT 0x4	/* Root Port */
+#define  PCI_EXP_TYPE_UPSTREAM	0x5	/* Upstream Port */
+#define  PCI_EXP_TYPE_DOWNSTREAM 0x6	/* Downstream Port */
+#define  PCI_EXP_TYPE_PCI_BRIDGE 0x7	/* PCI/PCI-X Bridge */
+#define  PCI_EXP_TYPE_RC_END	0x9	/* Root Complex Integrated Endpoint */
+#define  PCI_EXP_TYPE_RC_EC	0x10	/* Root Complex Event Collector */
+#define PCI_EXP_FLAGS_SLOT	0x0100	/* Slot implemented */
+#define PCI_EXP_FLAGS_IRQ	0x3e00	/* Interrupt message number */
+#define PCI_EXP_DEVCAP		4	/* Device capabilities */
+#define  PCI_EXP_DEVCAP_PAYLOAD	0x07	/* Max_Payload_Size */
+#define  PCI_EXP_DEVCAP_PHANTOM	0x18	/* Phantom functions */
+#define  PCI_EXP_DEVCAP_EXT_TAG	0x20	/* Extended tags */
+#define  PCI_EXP_DEVCAP_L0S	0x1c0	/* L0s Acceptable Latency */
+#define  PCI_EXP_DEVCAP_L1	0xe00	/* L1 Acceptable Latency */
+#define  PCI_EXP_DEVCAP_ATN_BUT	0x1000	/* Attention Button Present */
+#define  PCI_EXP_DEVCAP_ATN_IND	0x2000	/* Attention Indicator Present */
+#define  PCI_EXP_DEVCAP_PWR_IND	0x4000	/* Power Indicator Present */
+#define  PCI_EXP_DEVCAP_RBER	0x8000	/* Role-Based Error Reporting */
+#define  PCI_EXP_DEVCAP_PWR_VAL	0x3fc0000 /* Slot Power Limit Value */
+#define  PCI_EXP_DEVCAP_PWR_SCL	0xc000000 /* Slot Power Limit Scale */
+#define  PCI_EXP_DEVCAP_FLR     0x10000000 /* Function Level Reset */
+#define PCI_EXP_DEVCTL		8	/* Device Control */
+#define  PCI_EXP_DEVCTL_CERE	0x0001	/* Correctable Error Reporting En. */
+#define  PCI_EXP_DEVCTL_NFERE	0x0002	/* Non-Fatal Error Reporting Enable */
+#define  PCI_EXP_DEVCTL_FERE	0x0004	/* Fatal Error Reporting Enable */
+#define  PCI_EXP_DEVCTL_URRE	0x0008	/* Unsupported Request Reporting En. */
+#define  PCI_EXP_DEVCTL_RELAX_EN 0x0010 /* Enable relaxed ordering */
+#define  PCI_EXP_DEVCTL_PAYLOAD	0x00e0	/* Max_Payload_Size */
+#define  PCI_EXP_DEVCTL_EXT_TAG	0x0100	/* Extended Tag Field Enable */
+#define  PCI_EXP_DEVCTL_PHANTOM	0x0200	/* Phantom Functions Enable */
+#define  PCI_EXP_DEVCTL_AUX_PME	0x0400	/* Auxiliary Power PM Enable */
+#define  PCI_EXP_DEVCTL_NOSNOOP_EN 0x0800  /* Enable No Snoop */
+#define  PCI_EXP_DEVCTL_READRQ	0x7000	/* Max_Read_Request_Size */
+#define  PCI_EXP_DEVCTL_BCR_FLR 0x8000  /* Bridge Configuration Retry / FLR */
+#define PCI_EXP_DEVSTA		10	/* Device Status */
+#define  PCI_EXP_DEVSTA_CED	0x01	/* Correctable Error Detected */
+#define  PCI_EXP_DEVSTA_NFED	0x02	/* Non-Fatal Error Detected */
+#define  PCI_EXP_DEVSTA_FED	0x04	/* Fatal Error Detected */
+#define  PCI_EXP_DEVSTA_URD	0x08	/* Unsupported Request Detected */
+#define  PCI_EXP_DEVSTA_AUXPD	0x10	/* AUX Power Detected */
+#define  PCI_EXP_DEVSTA_TRPND	0x20	/* Transactions Pending */
+#define PCI_EXP_LNKCAP		12	/* Link Capabilities */
+#define  PCI_EXP_LNKCAP_SLS	0x0000000f /* Supported Link Speeds */
+#define  PCI_EXP_LNKCAP_MLW	0x000003f0 /* Maximum Link Width */
+#define  PCI_EXP_LNKCAP_ASPMS	0x00000c00 /* ASPM Support */
+#define  PCI_EXP_LNKCAP_L0SEL	0x00007000 /* L0s Exit Latency */
+#define  PCI_EXP_LNKCAP_L1EL	0x00038000 /* L1 Exit Latency */
+#define  PCI_EXP_LNKCAP_CLKPM	0x00040000 /* L1 Clock Power Management */
+#define  PCI_EXP_LNKCAP_SDERC	0x00080000 /* Surprise Down Error Reporting Capable */
+#define  PCI_EXP_LNKCAP_DLLLARC	0x00100000 /* Data Link Layer Link Active Reporting Capable */
+#define  PCI_EXP_LNKCAP_LBNC	0x00200000 /* Link Bandwidth Notification Capability */
+#define  PCI_EXP_LNKCAP_PN	0xff000000 /* Port Number */
+#define PCI_EXP_LNKCTL		16	/* Link Control */
+#define  PCI_EXP_LNKCTL_ASPMC	0x0003	/* ASPM Control */
+#define  PCI_EXP_LNKCTL_RCB	0x0008	/* Read Completion Boundary */
+#define  PCI_EXP_LNKCTL_LD	0x0010	/* Link Disable */
+#define  PCI_EXP_LNKCTL_RL	0x0020	/* Retrain Link */
+#define  PCI_EXP_LNKCTL_CCC	0x0040	/* Common Clock Configuration */
+#define  PCI_EXP_LNKCTL_ES	0x0080	/* Extended Synch */
+#define  PCI_EXP_LNKCTL_CLKREQ_EN 0x100	/* Enable clkreq */
+#define  PCI_EXP_LNKCTL_HAWD	0x0200	/* Hardware Autonomous Width Disable */
+#define  PCI_EXP_LNKCTL_LBMIE	0x0400	/* Link Bandwidth Management Interrupt Enable */
+#define  PCI_EXP_LNKCTL_LABIE	0x0800	/* Lnk Autonomous Bandwidth Interrupt Enable */
+#define PCI_EXP_LNKSTA		18	/* Link Status */
+#define  PCI_EXP_LNKSTA_CLS	0x000f	/* Current Link Speed */
+#define  PCI_EXP_LNKSTA_CLS_2_5GB 0x01	/* Current Link Speed 2.5GT/s */
+#define  PCI_EXP_LNKSTA_CLS_5_0GB 0x02	/* Current Link Speed 5.0GT/s */
+#define  PCI_EXP_LNKSTA_NLW	0x03f0	/* Nogotiated Link Width */
+#define  PCI_EXP_LNKSTA_NLW_SHIFT 4	/* start of NLW mask in link status */
+#define  PCI_EXP_LNKSTA_LT	0x0800	/* Link Training */
+#define  PCI_EXP_LNKSTA_SLC	0x1000	/* Slot Clock Configuration */
+#define  PCI_EXP_LNKSTA_DLLLA	0x2000	/* Data Link Layer Link Active */
+#define  PCI_EXP_LNKSTA_LBMS	0x4000	/* Link Bandwidth Management Status */
+#define  PCI_EXP_LNKSTA_LABS	0x8000	/* Link Autonomous Bandwidth Status */
+#define PCI_EXP_SLTCAP		20	/* Slot Capabilities */
+#define  PCI_EXP_SLTCAP_ABP	0x00000001 /* Attention Button Present */
+#define  PCI_EXP_SLTCAP_PCP	0x00000002 /* Power Controller Present */
+#define  PCI_EXP_SLTCAP_MRLSP	0x00000004 /* MRL Sensor Present */
+#define  PCI_EXP_SLTCAP_AIP	0x00000008 /* Attention Indicator Present */
+#define  PCI_EXP_SLTCAP_PIP	0x00000010 /* Power Indicator Present */
+#define  PCI_EXP_SLTCAP_HPS	0x00000020 /* Hot-Plug Surprise */
+#define  PCI_EXP_SLTCAP_HPC	0x00000040 /* Hot-Plug Capable */
+#define  PCI_EXP_SLTCAP_SPLV	0x00007f80 /* Slot Power Limit Value */
+#define  PCI_EXP_SLTCAP_SPLS	0x00018000 /* Slot Power Limit Scale */
+#define  PCI_EXP_SLTCAP_EIP	0x00020000 /* Electromechanical Interlock Present */
+#define  PCI_EXP_SLTCAP_NCCS	0x00040000 /* No Command Completed Support */
+#define  PCI_EXP_SLTCAP_PSN	0xfff80000 /* Physical Slot Number */
+#define PCI_EXP_SLTCTL		24	/* Slot Control */
+#define  PCI_EXP_SLTCTL_ABPE	0x0001	/* Attention Button Pressed Enable */
+#define  PCI_EXP_SLTCTL_PFDE	0x0002	/* Power Fault Detected Enable */
+#define  PCI_EXP_SLTCTL_MRLSCE	0x0004	/* MRL Sensor Changed Enable */
+#define  PCI_EXP_SLTCTL_PDCE	0x0008	/* Presence Detect Changed Enable */
+#define  PCI_EXP_SLTCTL_CCIE	0x0010	/* Command Completed Interrupt Enable */
+#define  PCI_EXP_SLTCTL_HPIE	0x0020	/* Hot-Plug Interrupt Enable */
+#define  PCI_EXP_SLTCTL_AIC	0x00c0	/* Attention Indicator Control */
+#define  PCI_EXP_SLTCTL_PIC	0x0300	/* Power Indicator Control */
+#define  PCI_EXP_SLTCTL_PCC	0x0400	/* Power Controller Control */
+#define  PCI_EXP_SLTCTL_EIC	0x0800	/* Electromechanical Interlock Control */
+#define  PCI_EXP_SLTCTL_DLLSCE	0x1000	/* Data Link Layer State Changed Enable */
+#define PCI_EXP_SLTSTA		26	/* Slot Status */
+#define  PCI_EXP_SLTSTA_ABP	0x0001	/* Attention Button Pressed */
+#define  PCI_EXP_SLTSTA_PFD	0x0002	/* Power Fault Detected */
+#define  PCI_EXP_SLTSTA_MRLSC	0x0004	/* MRL Sensor Changed */
+#define  PCI_EXP_SLTSTA_PDC	0x0008	/* Presence Detect Changed */
+#define  PCI_EXP_SLTSTA_CC	0x0010	/* Command Completed */
+#define  PCI_EXP_SLTSTA_MRLSS	0x0020	/* MRL Sensor State */
+#define  PCI_EXP_SLTSTA_PDS	0x0040	/* Presence Detect State */
+#define  PCI_EXP_SLTSTA_EIS	0x0080	/* Electromechanical Interlock Status */
+#define  PCI_EXP_SLTSTA_DLLSC	0x0100	/* Data Link Layer State Changed */
+#define PCI_EXP_RTCTL		28	/* Root Control */
+#define  PCI_EXP_RTCTL_SECEE	0x01	/* System Error on Correctable Error */
+#define  PCI_EXP_RTCTL_SENFEE	0x02	/* System Error on Non-Fatal Error */
+#define  PCI_EXP_RTCTL_SEFEE	0x04	/* System Error on Fatal Error */
+#define  PCI_EXP_RTCTL_PMEIE	0x08	/* PME Interrupt Enable */
+#define  PCI_EXP_RTCTL_CRSSVE	0x10	/* CRS Software Visibility Enable */
+#define PCI_EXP_RTCAP		30	/* Root Capabilities */
+#define PCI_EXP_RTSTA		32	/* Root Status */
+#define PCI_EXP_RTSTA_PME	0x10000 /* PME status */
+#define PCI_EXP_RTSTA_PENDING	0x20000 /* PME pending */
+#define PCI_EXP_DEVCAP2		36	/* Device Capabilities 2 */
+#define  PCI_EXP_DEVCAP2_ARI	0x20	/* Alternative Routing-ID */
+#define PCI_EXP_DEVCTL2		40	/* Device Control 2 */
+#define  PCI_EXP_DEVCTL2_ARI	0x20	/* Alternative Routing-ID */
+#define PCI_EXP_LNKCTL2		48	/* Link Control 2 */
+#define PCI_EXP_SLTCTL2		56	/* Slot Control 2 */
+
+/* Extended Capabilities (PCI-X 2.0 and Express) */
+#define PCI_EXT_CAP_ID(header)		(header & 0x0000ffff)
+#define PCI_EXT_CAP_VER(header)		((header >> 16) & 0xf)
+#define PCI_EXT_CAP_NEXT(header)	((header >> 20) & 0xffc)
+
+#define PCI_EXT_CAP_ID_ERR	1
+#define PCI_EXT_CAP_ID_VC	2
+#define PCI_EXT_CAP_ID_DSN	3
+#define PCI_EXT_CAP_ID_PWR	4
+#define PCI_EXT_CAP_ID_VNDR	11
+#define PCI_EXT_CAP_ID_ACS	13
+#define PCI_EXT_CAP_ID_ARI	14
+#define PCI_EXT_CAP_ID_ATS	15
+#define PCI_EXT_CAP_ID_SRIOV	16
+
+/* Advanced Error Reporting */
+#define PCI_ERR_UNCOR_STATUS	4	/* Uncorrectable Error Status */
+#define  PCI_ERR_UNC_TRAIN	0x00000001	/* Training */
+#define  PCI_ERR_UNC_DLP	0x00000010	/* Data Link Protocol */
+#define  PCI_ERR_UNC_POISON_TLP	0x00001000	/* Poisoned TLP */
+#define  PCI_ERR_UNC_FCP	0x00002000	/* Flow Control Protocol */
+#define  PCI_ERR_UNC_COMP_TIME	0x00004000	/* Completion Timeout */
+#define  PCI_ERR_UNC_COMP_ABORT	0x00008000	/* Completer Abort */
+#define  PCI_ERR_UNC_UNX_COMP	0x00010000	/* Unexpected Completion */
+#define  PCI_ERR_UNC_RX_OVER	0x00020000	/* Receiver Overflow */
+#define  PCI_ERR_UNC_MALF_TLP	0x00040000	/* Malformed TLP */
+#define  PCI_ERR_UNC_ECRC	0x00080000	/* ECRC Error Status */
+#define  PCI_ERR_UNC_UNSUP	0x00100000	/* Unsupported Request */
+#define PCI_ERR_UNCOR_MASK	8	/* Uncorrectable Error Mask */
+	/* Same bits as above */
+#define PCI_ERR_UNCOR_SEVER	12	/* Uncorrectable Error Severity */
+	/* Same bits as above */
+#define PCI_ERR_COR_STATUS	16	/* Correctable Error Status */
+#define  PCI_ERR_COR_RCVR	0x00000001	/* Receiver Error Status */
+#define  PCI_ERR_COR_BAD_TLP	0x00000040	/* Bad TLP Status */
+#define  PCI_ERR_COR_BAD_DLLP	0x00000080	/* Bad DLLP Status */
+#define  PCI_ERR_COR_REP_ROLL	0x00000100	/* REPLAY_NUM Rollover */
+#define  PCI_ERR_COR_REP_TIMER	0x00001000	/* Replay Timer Timeout */
+#define PCI_ERR_COR_MASK	20	/* Correctable Error Mask */
+	/* Same bits as above */
+#define PCI_ERR_CAP		24	/* Advanced Error Capabilities */
+#define  PCI_ERR_CAP_FEP(x)	((x) & 31)	/* First Error Pointer */
+#define  PCI_ERR_CAP_ECRC_GENC	0x00000020	/* ECRC Generation Capable */
+#define  PCI_ERR_CAP_ECRC_GENE	0x00000040	/* ECRC Generation Enable */
+#define  PCI_ERR_CAP_ECRC_CHKC	0x00000080	/* ECRC Check Capable */
+#define  PCI_ERR_CAP_ECRC_CHKE	0x00000100	/* ECRC Check Enable */
+#define PCI_ERR_HEADER_LOG	28	/* Header Log Register (16 bytes) */
+#define PCI_ERR_ROOT_COMMAND	44	/* Root Error Command */
+/* Correctable Err Reporting Enable */
+#define PCI_ERR_ROOT_CMD_COR_EN		0x00000001
+/* Non-fatal Err Reporting Enable */
+#define PCI_ERR_ROOT_CMD_NONFATAL_EN	0x00000002
+/* Fatal Err Reporting Enable */
+#define PCI_ERR_ROOT_CMD_FATAL_EN	0x00000004
+#define PCI_ERR_ROOT_STATUS	48
+#define PCI_ERR_ROOT_COR_RCV		0x00000001	/* ERR_COR Received */
+/* Multi ERR_COR Received */
+#define PCI_ERR_ROOT_MULTI_COR_RCV	0x00000002
+/* ERR_FATAL/NONFATAL Recevied */
+#define PCI_ERR_ROOT_UNCOR_RCV		0x00000004
+/* Multi ERR_FATAL/NONFATAL Recevied */
+#define PCI_ERR_ROOT_MULTI_UNCOR_RCV	0x00000008
+#define PCI_ERR_ROOT_FIRST_FATAL	0x00000010	/* First Fatal */
+#define PCI_ERR_ROOT_NONFATAL_RCV	0x00000020	/* Non-Fatal Received */
+#define PCI_ERR_ROOT_FATAL_RCV		0x00000040	/* Fatal Received */
+#define PCI_ERR_ROOT_ERR_SRC	52	/* Error Source Identification */
+
+/* Virtual Channel */
+#define PCI_VC_PORT_REG1	4
+#define PCI_VC_PORT_REG2	8
+#define PCI_VC_PORT_CTRL	12
+#define PCI_VC_PORT_STATUS	14
+#define PCI_VC_RES_CAP		16
+#define PCI_VC_RES_CTRL		20
+#define PCI_VC_RES_STATUS	26
+
+/* Power Budgeting */
+#define PCI_PWR_DSR		4	/* Data Select Register */
+#define PCI_PWR_DATA		8	/* Data Register */
+#define  PCI_PWR_DATA_BASE(x)	((x) & 0xff)	    /* Base Power */
+#define  PCI_PWR_DATA_SCALE(x)	(((x) >> 8) & 3)    /* Data Scale */
+#define  PCI_PWR_DATA_PM_SUB(x)	(((x) >> 10) & 7)   /* PM Sub State */
+#define  PCI_PWR_DATA_PM_STATE(x) (((x) >> 13) & 3) /* PM State */
+#define  PCI_PWR_DATA_TYPE(x)	(((x) >> 15) & 7)   /* Type */
+#define  PCI_PWR_DATA_RAIL(x)	(((x) >> 18) & 7)   /* Power Rail */
+#define PCI_PWR_CAP		12	/* Capability */
+#define  PCI_PWR_CAP_BUDGET(x)	((x) & 1)	/* Included in system budget */
+
+/*
+ * Hypertransport sub capability types
+ *
+ * Unfortunately there are both 3 bit and 5 bit capability types defined
+ * in the HT spec, catering for that is a little messy. You probably don't
+ * want to use these directly, just use pci_find_ht_capability() and it
+ * will do the right thing for you.
+ */
+#define HT_3BIT_CAP_MASK	0xE0
+#define HT_CAPTYPE_SLAVE	0x00	/* Slave/Primary link configuration */
+#define HT_CAPTYPE_HOST		0x20	/* Host/Secondary link configuration */
+
+#define HT_5BIT_CAP_MASK	0xF8
+#define HT_CAPTYPE_IRQ		0x80	/* IRQ Configuration */
+#define HT_CAPTYPE_REMAPPING_40	0xA0	/* 40 bit address remapping */
+#define HT_CAPTYPE_REMAPPING_64 0xA2	/* 64 bit address remapping */
+#define HT_CAPTYPE_UNITID_CLUMP	0x90	/* Unit ID clumping */
+#define HT_CAPTYPE_EXTCONF	0x98	/* Extended Configuration Space Access */
+#define HT_CAPTYPE_MSI_MAPPING	0xA8	/* MSI Mapping Capability */
+#define  HT_MSI_FLAGS		0x02		/* Offset to flags */
+#define  HT_MSI_FLAGS_ENABLE	0x1		/* Mapping enable */
+#define  HT_MSI_FLAGS_FIXED	0x2		/* Fixed mapping only */
+#define  HT_MSI_FIXED_ADDR	0x00000000FEE00000ULL	/* Fixed addr */
+#define  HT_MSI_ADDR_LO		0x04		/* Offset to low addr bits */
+#define  HT_MSI_ADDR_LO_MASK	0xFFF00000	/* Low address bit mask */
+#define  HT_MSI_ADDR_HI		0x08		/* Offset to high addr bits */
+#define HT_CAPTYPE_DIRECT_ROUTE	0xB0	/* Direct routing configuration */
+#define HT_CAPTYPE_VCSET	0xB8	/* Virtual Channel configuration */
+#define HT_CAPTYPE_ERROR_RETRY	0xC0	/* Retry on error configuration */
+#define HT_CAPTYPE_GEN3		0xD0	/* Generation 3 hypertransport configuration */
+#define HT_CAPTYPE_PM		0xE0	/* Hypertransport powermanagement configuration */
+
+/* Alternative Routing-ID Interpretation */
+#define PCI_ARI_CAP		0x04	/* ARI Capability Register */
+#define  PCI_ARI_CAP_MFVC	0x0001	/* MFVC Function Groups Capability */
+#define  PCI_ARI_CAP_ACS	0x0002	/* ACS Function Groups Capability */
+#define  PCI_ARI_CAP_NFN(x)	(((x) >> 8) & 0xff) /* Next Function Number */
+#define PCI_ARI_CTRL		0x06	/* ARI Control Register */
+#define  PCI_ARI_CTRL_MFVC	0x0001	/* MFVC Function Groups Enable */
+#define  PCI_ARI_CTRL_ACS	0x0002	/* ACS Function Groups Enable */
+#define  PCI_ARI_CTRL_FG(x)	(((x) >> 4) & 7) /* Function Group */
+
+/* Address Translation Service */
+#define PCI_ATS_CAP		0x04	/* ATS Capability Register */
+#define  PCI_ATS_CAP_QDEP(x)	((x) & 0x1f)	/* Invalidate Queue Depth */
+#define  PCI_ATS_MAX_QDEP	32	/* Max Invalidate Queue Depth */
+#define PCI_ATS_CTRL		0x06	/* ATS Control Register */
+#define  PCI_ATS_CTRL_ENABLE	0x8000	/* ATS Enable */
+#define  PCI_ATS_CTRL_STU(x)	((x) & 0x1f)	/* Smallest Translation Unit */
+#define  PCI_ATS_MIN_STU	12	/* shift of minimum STU block */
+
+/* Single Root I/O Virtualization */
+#define PCI_SRIOV_CAP		0x04	/* SR-IOV Capabilities */
+#define  PCI_SRIOV_CAP_VFM	0x01	/* VF Migration Capable */
+#define  PCI_SRIOV_CAP_INTR(x)	((x) >> 21) /* Interrupt Message Number */
+#define PCI_SRIOV_CTRL		0x08	/* SR-IOV Control */
+#define  PCI_SRIOV_CTRL_VFE	0x01	/* VF Enable */
+#define  PCI_SRIOV_CTRL_VFM	0x02	/* VF Migration Enable */
+#define  PCI_SRIOV_CTRL_INTR	0x04	/* VF Migration Interrupt Enable */
+#define  PCI_SRIOV_CTRL_MSE	0x08	/* VF Memory Space Enable */
+#define  PCI_SRIOV_CTRL_ARI	0x10	/* ARI Capable Hierarchy */
+#define PCI_SRIOV_STATUS	0x0a	/* SR-IOV Status */
+#define  PCI_SRIOV_STATUS_VFM	0x01	/* VF Migration Status */
+#define PCI_SRIOV_INITIAL_VF	0x0c	/* Initial VFs */
+#define PCI_SRIOV_TOTAL_VF	0x0e	/* Total VFs */
+#define PCI_SRIOV_NUM_VF	0x10	/* Number of VFs */
+#define PCI_SRIOV_FUNC_LINK	0x12	/* Function Dependency Link */
+#define PCI_SRIOV_VF_OFFSET	0x14	/* First VF Offset */
+#define PCI_SRIOV_VF_STRIDE	0x16	/* Following VF Stride */
+#define PCI_SRIOV_VF_DID	0x1a	/* VF Device ID */
+#define PCI_SRIOV_SUP_PGSIZE	0x1c	/* Supported Page Sizes */
+#define PCI_SRIOV_SYS_PGSIZE	0x20	/* System Page Size */
+#define PCI_SRIOV_BAR		0x24	/* VF BAR0 */
+#define  PCI_SRIOV_NUM_BARS	6	/* Number of VF BARs */
+#define PCI_SRIOV_VFM		0x3c	/* VF Migration State Array Offset*/
+#define  PCI_SRIOV_VFM_BIR(x)	((x) & 7)	/* State BIR */
+#define  PCI_SRIOV_VFM_OFFSET(x) ((x) & ~7)	/* State Offset */
+#define  PCI_SRIOV_VFM_UA	0x0	/* Inactive.Unavailable */
+#define  PCI_SRIOV_VFM_MI	0x1	/* Dormant.MigrateIn */
+#define  PCI_SRIOV_VFM_MO	0x2	/* Active.MigrateOut */
+#define  PCI_SRIOV_VFM_AV	0x3	/* Active.Available */
+
+/* Access Control Service */
+#define PCI_ACS_CAP		0x04	/* ACS Capability Register */
+#define  PCI_ACS_SV		0x01	/* Source Validation */
+#define  PCI_ACS_TB		0x02	/* Translation Blocking */
+#define  PCI_ACS_RR		0x04	/* P2P Request Redirect */
+#define  PCI_ACS_CR		0x08	/* P2P Completion Redirect */
+#define  PCI_ACS_UF		0x10	/* Upstream Forwarding */
+#define  PCI_ACS_EC		0x20	/* P2P Egress Control */
+#define  PCI_ACS_DT		0x40	/* Direct Translated P2P */
+#define PCI_ACS_CTRL		0x06	/* ACS Control Register */
+#define PCI_ACS_EGRESS_CTL_V	0x08	/* ACS Egress Control Vector */
+
+#endif /* LINUX_PCI_REGS_H */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
