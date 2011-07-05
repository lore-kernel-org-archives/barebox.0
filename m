Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2ju-0003ST-Oe
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 10:20:24 +0000
Received: by ewy3 with SMTP id 3so2202387ewy.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 03:19:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 14:19:23 +0400
Message-Id: <1309861164-11327-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
References: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v1-very-draft 4/5] MIPS: add PCI support for GT64120-based
	malta
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig             |   22 ++++++
 arch/mips/mach-malta/Makefile |    1 +
 arch/mips/mach-malta/pci.c    |  152 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 175 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/mach-malta/pci.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index bb1d9d3..a27593e 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -35,6 +35,7 @@ config MACH_MIPS_MALTA
 	select SYS_HAS_CPU_MIPS32_R2
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_BIG_ENDIAN
+	select HW_HAS_PCI
 
 endchoice
 
@@ -208,6 +209,27 @@ config CMD_MIPS_CPUINFO
 
 endmenu
 
+menu "Bus options (PCI)"
+
+config HW_HAS_PCI
+	bool
+
+config PCI
+	bool "Support for PCI controller"
+	depends on HW_HAS_PCI
+	select PCI_DOMAINS
+	help
+	  Find out whether you have a PCI motherboard. PCI is the name of a
+	  bus system, i.e. the way the CPU talks to the other stuff inside
+	  your box. If you have PCI, say Y, otherwise N.
+
+config PCI_DOMAINS
+	bool
+
+source "drivers/pci/Kconfig"
+
+endmenu
+
 source common/Kconfig
 source commands/Kconfig
 source net/Kconfig
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index f3cc668..0c5a701 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1 +1,2 @@
 obj-y += reset.o
+obj-$(CONFIG_PCI) += pci.o
diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
new file mode 100644
index 0000000..ab90ddb
--- /dev/null
+++ b/arch/mips/mach-malta/pci.c
@@ -0,0 +1,152 @@
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <asm/io.h>
+
+#include <linux/pci.h>
+#include <asm/gt64120.h>
+
+#define GT64120_BASE    0xb4000000
+
+#define PCI_ACCESS_READ  0
+#define PCI_ACCESS_WRITE 1
+
+static struct resource gt64120_mem_resource = {
+	.name	= "GT-64120 PCI MEM",
+	.flags	= IORESOURCE_MEM,
+};
+
+static struct resource gt64120_io_resource = {
+	.name	= "GT-64120 PCI I/O",
+	.flags	= IORESOURCE_IO,
+};
+
+static int gt64xxx_pci0_pcibios_config_access(unsigned char access_type,
+		struct pci_bus *bus, unsigned int devfn, int where, u32 * data)
+{
+	unsigned char busnum = bus->number;
+	u32 intr;
+
+	if ((busnum == 0) && (devfn >= PCI_DEVFN(31, 0)))
+		return -1;	/* Because of a bug in the galileo (for slot 31). */
+
+	/* Clear cause register bits */
+	GT_WRITE(GT_INTRCAUSE_OFS, ~(GT_INTRCAUSE_MASABORT0_BIT |
+	                             GT_INTRCAUSE_TARABORT0_BIT));
+
+	/* Setup address */
+	GT_WRITE(GT_PCI0_CFGADDR_OFS,
+		 (busnum << GT_PCI0_CFGADDR_BUSNUM_SHF) |
+		 (devfn << GT_PCI0_CFGADDR_FUNCTNUM_SHF) |
+		 ((where / 4) << GT_PCI0_CFGADDR_REGNUM_SHF) |
+		 GT_PCI0_CFGADDR_CONFIGEN_BIT);
+
+	if (access_type == PCI_ACCESS_WRITE) {
+		if (busnum == 0 && PCI_SLOT(devfn) == 0) {
+			/*
+			 * The Galileo system controller is acting
+			 * differently than other devices.
+			 */
+			GT_WRITE(GT_PCI0_CFGDATA_OFS, *data);
+		} else
+			__GT_WRITE(GT_PCI0_CFGDATA_OFS, *data);
+	} else {
+		if (busnum == 0 && PCI_SLOT(devfn) == 0) {
+			/*
+			 * The Galileo system controller is acting
+			 * differently than other devices.
+			 */
+			*data = GT_READ(GT_PCI0_CFGDATA_OFS);
+		} else
+			*data = __GT_READ(GT_PCI0_CFGDATA_OFS);
+	}
+
+	/* Check for master or target abort */
+	intr = GT_READ(GT_INTRCAUSE_OFS);
+
+	if (intr & (GT_INTRCAUSE_MASABORT0_BIT | GT_INTRCAUSE_TARABORT0_BIT)) {
+		/* Error occurred */
+
+		/* Clear bits */
+		GT_WRITE(GT_INTRCAUSE_OFS, ~(GT_INTRCAUSE_MASABORT0_BIT |
+		                             GT_INTRCAUSE_TARABORT0_BIT));
+
+		return -1;
+	}
+
+	return 0;
+}
+
+
+/*
+ * We can't address 8 and 16 bit words directly.  Instead we have to
+ * read/write a 32bit word and mask/modify the data we actually want.
+ */
+static int gt64xxx_pci0_pcibios_read(struct pci_bus *bus, unsigned int devfn,
+		int where, int size, u32 * val)
+{
+	u32 data = 0;
+
+	if (gt64xxx_pci0_pcibios_config_access(PCI_ACCESS_READ, bus, devfn,
+	                                       where, &data))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	if (size == 1)
+		*val = (data >> ((where & 3) << 3)) & 0xff;
+	else if (size == 2)
+		*val = (data >> ((where & 3) << 3)) & 0xffff;
+	else
+		*val = data;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int gt64xxx_pci0_pcibios_write(struct pci_bus *bus, unsigned int devfn,
+		int where, int size, u32 val)
+{
+	u32 data = 0;
+
+	if (size == 4)
+		data = val;
+	else {
+		if (gt64xxx_pci0_pcibios_config_access(PCI_ACCESS_READ, bus,
+		                                       devfn, where, &data))
+			return PCIBIOS_DEVICE_NOT_FOUND;
+
+		if (size == 1)
+			data = (data & ~(0xff << ((where & 3) << 3))) |
+				(val << ((where & 3) << 3));
+		else if (size == 2)
+			data = (data & ~(0xffff << ((where & 3) << 3))) |
+				(val << ((where & 3) << 3));
+	}
+
+	if (gt64xxx_pci0_pcibios_config_access(PCI_ACCESS_WRITE, bus, devfn,
+	                                       where, &data))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+struct pci_ops gt64xxx_pci0_ops = {
+	.read	= gt64xxx_pci0_pcibios_read,
+	.write	= gt64xxx_pci0_pcibios_write
+};
+
+static struct pci_controller gt64120_controller = {
+	.pci_ops	= &gt64xxx_pci0_ops,
+	.io_resource	= &gt64120_io_resource,
+	.mem_resource	= &gt64120_mem_resource,
+};
+
+int pcibios_init()
+{
+	pcibios_present = 1;
+	pci_ops = &gt64xxx_pci0_ops;
+	register_pci_controller(&gt64120_controller);
+
+	return 0;
+}
+EXPORT(pcibios_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
