Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkmeY-0007vX-R3
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 08:38:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fkmeN-0008Bs-6x
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 10:38:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Aug 2018 10:38:30 +0200
Message-Id: <20180801083831.12983-3-l.stach@pengutronix.de>
In-Reply-To: <20180801083831.12983-1-l.stach@pengutronix.de>
References: <20180801083831.12983-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] pci: add quirk infrastructure
To: barebox@lists.infradead.org

This is a cut down version of the Linux kernel PCI quirk infrastructure,
which allows to register and execute some fixups before the driver is
loaded.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib32/barebox.lds.S | 12 +++++++
 drivers/pci/pci.c            | 63 +++++++++++++++++++++++++++++++++---
 include/linux/pci.h          | 54 +++++++++++++++++++++++++++++++
 3 files changed, 125 insertions(+), 4 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 594bf5683796..7230e5f31f80 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -106,6 +106,18 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+#ifdef CONFIG_PCI
+	__start_pci_fixups_early = .;
+	.pci_fixup_early : { KEEP(*(.pci_fixup_early)) }
+	__end_pci_fixups_early = .;
+	__start_pci_fixups_header = .;
+	.pci_fixup_header : { KEEP(*(.pci_fixup_header)) }
+	__end_pci_fixups_header = .;
+	__start_pci_fixups_enable = .;
+	.pci_fixup_enable : { KEEP(*(.pci_fixup_enable)) }
+	__end_pci_fixups_enable = .;
+#endif
+
 	.oftables : { BAREBOX_CLK_TABLE() }
 
 	.dtb : { BAREBOX_DTB() }
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index bd8b7278ef19..d206c538481c 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -253,6 +253,8 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 	}
 
+	pci_fixup_device(pci_fixup_header, dev);
+
 	pci_write_config_byte(dev, PCI_COMMAND, cmd);
 	list_add_tail(&dev->bus_list, &dev->bus->devices);
 }
@@ -412,6 +414,10 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 		class >>= 8;
 		dev->hdr_type = hdr_type;
 
+		pci_fixup_device(pci_fixup_early, dev);
+		/* the fixup may have changed the device class */
+		class = dev->class >> 8;
+
 		pr_debug("class = %08x, hdr_type = %08x\n", class, hdr_type);
 		pr_debug("%02x:%02x [%04x:%04x]\n", bus->number, dev->devfn,
 		    dev->vendor, dev->device);
@@ -519,12 +525,61 @@ EXPORT_SYMBOL(pci_clear_master);
  */
 int pci_enable_device(struct pci_dev *dev)
 {
+	int ret;
 	u32 t;
 
 	pci_read_config_dword(dev, PCI_COMMAND, &t);
-	return pci_write_config_dword(dev, PCI_COMMAND, t
-				| PCI_COMMAND_IO
-				| PCI_COMMAND_MEMORY
-				);
+	ret = pci_write_config_dword(dev, PCI_COMMAND,
+				     t | PCI_COMMAND_IO | PCI_COMMAND_MEMORY);
+	if (ret)
+		return ret;
+
+	pci_fixup_device(pci_fixup_enable, dev);
+
+	return 0;
 }
 EXPORT_SYMBOL(pci_enable_device);
+
+static void pci_do_fixups(struct pci_dev *dev, struct pci_fixup *f,
+			  struct pci_fixup *end)
+{
+	for (; f < end; f++)
+		if ((f->class == (u32) (dev->class >> f->class_shift) ||
+		     f->class == (u32) PCI_ANY_ID) &&
+		    (f->vendor == dev->vendor ||
+		     f->vendor == (u16) PCI_ANY_ID) &&
+		    (f->device == dev->device ||
+		     f->device == (u16) PCI_ANY_ID)) {
+			f->hook(dev);
+		}
+}
+
+extern struct pci_fixup __start_pci_fixups_early[];
+extern struct pci_fixup __end_pci_fixups_early[];
+extern struct pci_fixup __start_pci_fixups_header[];
+extern struct pci_fixup __end_pci_fixups_header[];
+extern struct pci_fixup __start_pci_fixups_enable[];
+extern struct pci_fixup __end_pci_fixups_enable[];
+
+void pci_fixup_device(enum pci_fixup_pass pass, struct pci_dev *dev)
+{
+	struct pci_fixup *start, *end;
+
+	switch (pass) {
+	case pci_fixup_early:
+		start = __start_pci_fixups_early;
+		end = __end_pci_fixups_early;
+		break;
+	case pci_fixup_header:
+		start = __start_pci_fixups_header;
+		end = __end_pci_fixups_header;
+		break;
+	case pci_fixup_enable:
+		start = __start_pci_fixups_enable;
+		end = __end_pci_fixups_enable;
+		break;
+	default:
+		unreachable();
+	}
+	pci_do_fixups(dev, start, end);
+}
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 152ba10a04d9..82f27f21b247 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -29,6 +29,7 @@
 
 #include <linux/pci_ids.h>
 
+#define PCI_ANY_ID (~0)
 
 /*
  * The PCI interface treats multi-function devices as independent
@@ -299,4 +300,57 @@ int pci_enable_device(struct pci_dev *dev);
 
 extern void __iomem *pci_iomap(struct pci_dev *dev, int bar);
 
+/*
+ * The world is not perfect and supplies us with broken PCI devices.
+ * For at least a part of these bugs we need a work-around, so both
+ * generic (drivers/pci/quirks.c) and per-architecture code can define
+ * fixup hooks to be called for particular buggy devices.
+ */
+
+struct pci_fixup {
+	u16 vendor;			/* Or PCI_ANY_ID */
+	u16 device;			/* Or PCI_ANY_ID */
+	u32 class;			/* Or PCI_ANY_ID */
+	unsigned int class_shift;	/* should be 0, 8, 16 */
+	void (*hook)(struct pci_dev *dev);
+};
+
+enum pci_fixup_pass {
+	pci_fixup_early,	/* Before probing BARs */
+	pci_fixup_header,	/* After reading configuration header */
+	pci_fixup_enable,	/* pci_enable_device() time */
+};
+
+/* Anonymous variables would be nice... */
+#define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
+				  class_shift, hook)			\
+	static const struct pci_fixup __PASTE(__pci_fixup_##name,__LINE__) __used	\
+	__attribute__((__section__(#section), aligned((sizeof(void *)))))    \
+		= { vendor, device, class, class_shift, hook };
+
+#define DECLARE_PCI_FIXUP_CLASS_EARLY(vendor, device, class,		\
+					 class_shift, hook)		\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_early,			\
+		hook, vendor, device, class, class_shift, hook)
+#define DECLARE_PCI_FIXUP_CLASS_HEADER(vendor, device, class,		\
+					 class_shift, hook)		\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,			\
+		hook, vendor, device, class, class_shift, hook)
+#define DECLARE_PCI_FIXUP_CLASS_ENABLE(vendor, device, class,		\
+					 class_shift, hook)		\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_enable,			\
+		hook, vendor, device, class, class_shift, hook)
+
+#define DECLARE_PCI_FIXUP_EARLY(vendor, device, hook)			\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_early,			\
+		hook, vendor, device, PCI_ANY_ID, 0, hook)
+#define DECLARE_PCI_FIXUP_HEADER(vendor, device, hook)			\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_header,			\
+		hook, vendor, device, PCI_ANY_ID, 0, hook)
+#define DECLARE_PCI_FIXUP_ENABLE(vendor, device, hook)			\
+	DECLARE_PCI_FIXUP_SECTION(.pci_fixup_enable,			\
+		hook, vendor, device, PCI_ANY_ID, 0, hook)
+
+void pci_fixup_device(enum pci_fixup_pass pass, struct pci_dev *dev);
+
 #endif /* LINUX_PCI_H */
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
