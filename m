Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2oXn-0006FZ-Qg
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 21:27:53 +0000
Received: by mail-la0-f44.google.com with SMTP id ty20so602752lab.31
 for <barebox@lists.infradead.org>; Thu, 03 Jul 2014 14:27:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  4 Jul 2014 01:27:05 +0400
Message-Id: <1404422826-6589-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v5 6/7] MIPS: add PCI support for GT64120-based Malta board
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                                |   1 +
 arch/mips/include/asm/gt64120.h                  |  53 +++++
 arch/mips/mach-malta/Makefile                    |   1 +
 arch/mips/mach-malta/include/mach/mach-gt64120.h |   2 +
 arch/mips/mach-malta/pci.c                       | 236 +++++++++++++++++++++++
 5 files changed, 293 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d4e9e1c..bc68c67 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -45,6 +45,7 @@ config MACH_MIPS_MALTA
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select HAS_DEBUG_LL
 	select GPIOLIB
+	select HW_HAS_PCI
 
 config MACH_MIPS_AR231X
 	bool "Atheros ar231x-based boards"
diff --git a/arch/mips/include/asm/gt64120.h b/arch/mips/include/asm/gt64120.h
index 6b2ad0f..7e783c8 100644
--- a/arch/mips/include/asm/gt64120.h
+++ b/arch/mips/include/asm/gt64120.h
@@ -18,6 +18,8 @@
 #ifndef _ASM_GT64120_H
 #define _ASM_GT64120_H
 
+#define MSK(n)			((1 << (n)) - 1)
+
 #define GT_DEF_BASE		0x14000000
 
 /*
@@ -34,4 +36,55 @@
 #define GT_PCI0M1LD_OFS		0x080
 #define GT_PCI0M1HD_OFS		0x088
 
+#define GT_PCI0IOREMAP_OFS	0x0f0
+#define GT_PCI0M0REMAP_OFS	0x0f8
+#define GT_PCI0M1REMAP_OFS	0x100
+
+/* Interrupts.	*/
+#define GT_INTRCAUSE_OFS	0xc18
+
+/* PCI Internal.  */
+#define GT_PCI0_CMD_OFS		0xc00
+#define GT_PCI0_CFGADDR_OFS	0xcf8
+#define GT_PCI0_CFGDATA_OFS	0xcfc
+
+#define GT_PCI_DCRM_SHF		21
+#define GT_PCI_LD_SHF		0
+#define GT_PCI_LD_MSK		(MSK(15) << GT_PCI_LD_SHF)
+#define GT_PCI_HD_SHF		0
+#define GT_PCI_HD_MSK		(MSK(7) << GT_PCI_HD_SHF)
+#define GT_PCI_REMAP_SHF	0
+#define GT_PCI_REMAP_MSK	(MSK(11) << GT_PCI_REMAP_SHF)
+
+#define GT_INTRCAUSE_MASABORT0_SHF	18
+#define GT_INTRCAUSE_MASABORT0_MSK	(MSK(1) << GT_INTRCAUSE_MASABORT0_SHF)
+#define GT_INTRCAUSE_MASABORT0_BIT	GT_INTRCAUSE_MASABORT0_MSK
+
+#define GT_INTRCAUSE_TARABORT0_SHF	19
+#define GT_INTRCAUSE_TARABORT0_MSK	(MSK(1) << GT_INTRCAUSE_TARABORT0_SHF)
+#define GT_INTRCAUSE_TARABORT0_BIT	GT_INTRCAUSE_TARABORT0_MSK
+
+#define GT_PCI0_CFGADDR_REGNUM_SHF	2
+#define GT_PCI0_CFGADDR_REGNUM_MSK	(MSK(6) << GT_PCI0_CFGADDR_REGNUM_SHF)
+#define GT_PCI0_CFGADDR_FUNCTNUM_SHF	8
+#define GT_PCI0_CFGADDR_FUNCTNUM_MSK	(MSK(3) << GT_PCI0_CFGADDR_FUNCTNUM_SHF)
+#define GT_PCI0_CFGADDR_DEVNUM_SHF	11
+#define GT_PCI0_CFGADDR_DEVNUM_MSK	(MSK(5) << GT_PCI0_CFGADDR_DEVNUM_SHF)
+#define GT_PCI0_CFGADDR_BUSNUM_SHF	16
+#define GT_PCI0_CFGADDR_BUSNUM_MSK	(MSK(8) << GT_PCI0_CFGADDR_BUSNUM_SHF)
+#define GT_PCI0_CFGADDR_CONFIGEN_SHF	31
+#define GT_PCI0_CFGADDR_CONFIGEN_MSK	(MSK(1) << GT_PCI0_CFGADDR_CONFIGEN_SHF)
+#define GT_PCI0_CFGADDR_CONFIGEN_BIT	GT_PCI0_CFGADDR_CONFIGEN_MSK
+
+/*
+ * Because of an error/peculiarity in the Galileo chip, we need to swap the
+ * bytes when running bigendian.  We also provide non-swapping versions.
+ */
+#define __GT_READ(ofs)							\
+	(*(volatile u32 *)(GT64120_BASE+(ofs)))
+#define __GT_WRITE(ofs, data)						\
+	do { *(volatile u32 *)(GT64120_BASE+(ofs)) = (data); } while (0)
+#define GT_READ(ofs)		le32_to_cpu(__GT_READ(ofs))
+#define GT_WRITE(ofs, data)	__GT_WRITE(ofs, cpu_to_le32(data))
+
 #endif /* _ASM_GT64120_H */
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index f3cc668..0c5a701 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1 +1,2 @@
 obj-y += reset.o
+obj-$(CONFIG_PCI) += pci.o
diff --git a/arch/mips/mach-malta/include/mach/mach-gt64120.h b/arch/mips/mach-malta/include/mach/mach-gt64120.h
index ed1e23e..8f20fcf 100644
--- a/arch/mips/mach-malta/include/mach/mach-gt64120.h
+++ b/arch/mips/mach-malta/include/mach/mach-gt64120.h
@@ -10,4 +10,6 @@
 
 #define MIPS_GT_BASE	0x1be00000
 
+#define GT64120_BASE    0xbbe00000
+
 #endif /* _ASM_MACH_MIPS_MACH_GT64120_DEP_H */
diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
new file mode 100644
index 0000000..9035175
--- /dev/null
+++ b/arch/mips/mach-malta/pci.c
@@ -0,0 +1,236 @@
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <mach/hardware.h>
+#include <asm/io.h>
+#include <asm/addrspace.h>
+
+#include <linux/pci.h>
+#include <asm/gt64120.h>
+
+#include <mach/mach-gt64120.h>
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
+		struct pci_bus *bus, unsigned int devfn, int where, u32 *data)
+{
+	unsigned char busnum = bus->number;
+	u32 intr;
+
+	if ((busnum == 0) && (devfn >= PCI_DEVFN(31, 0)))
+		return -1;	/* Because of a bug in the galileo (for slot 31). */
+
+	/* Clear cause register bits */
+	GT_WRITE(GT_INTRCAUSE_OFS, ~(GT_INTRCAUSE_MASABORT0_BIT |
+					GT_INTRCAUSE_TARABORT0_BIT));
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
+						GT_INTRCAUSE_TARABORT0_BIT));
+
+		return -1;
+	}
+
+	return 0;
+}
+
+/*
+ * We can't address 8 and 16 bit words directly. Instead we have to
+ * read/write a 32bit word and mask/modify the data we actually want.
+ */
+static int gt64xxx_pci0_pcibios_read(struct pci_bus *bus, unsigned int devfn,
+		int where, int size, u32 *val)
+{
+	u32 data = 0;
+
+	if (gt64xxx_pci0_pcibios_config_access(PCI_ACCESS_READ, bus, devfn,
+						where, &data))
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
+							devfn, where, &data))
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
+						where, &data))
+		return PCIBIOS_DEVICE_NOT_FOUND;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+/* function returns memory address for begin of pci resource */
+static int gt64xxx_res_start(struct pci_bus *bus, resource_size_t res_addr)
+{
+	return KSEG0ADDR(res_addr);
+}
+
+struct pci_ops gt64xxx_pci0_ops = {
+	.read	= gt64xxx_pci0_pcibios_read,
+	.write	= gt64xxx_pci0_pcibios_write,
+
+	.res_start = gt64xxx_res_start,
+};
+
+static struct pci_controller gt64120_controller = {
+	.pci_ops	= &gt64xxx_pci0_ops,
+	.io_resource	= &gt64120_io_resource,
+	.mem_resource	= &gt64120_mem_resource,
+};
+
+static int pcibios_init(void)
+{
+	resource_size_t start, end, map, start1, end1, map1, mask, res_end;
+
+	/*
+	 * Due to a bug in the Galileo system controller, we need
+	 * to setup the PCI BAR for the Galileo internal registers.
+	 * This should be done in the bios/bootprom and will be
+	 * fixed in a later revision of YAMON (the MIPS boards
+	 * boot prom).
+	 */
+	GT_WRITE(GT_PCI0_CFGADDR_OFS,
+		 (0 << GT_PCI0_CFGADDR_BUSNUM_SHF) | /* Local bus */
+		 (0 << GT_PCI0_CFGADDR_DEVNUM_SHF) | /* GT64120 dev */
+		 (0 << GT_PCI0_CFGADDR_FUNCTNUM_SHF) | /* Function 0*/
+		 ((0x20/4) << GT_PCI0_CFGADDR_REGNUM_SHF) | /* BAR 4*/
+		 GT_PCI0_CFGADDR_CONFIGEN_BIT);
+
+	/* Perform the write */
+	GT_WRITE(GT_PCI0_CFGDATA_OFS, CPHYSADDR(MIPS_GT_BASE));
+
+	/* Here is linux code. It assumes, that firmware
+	(pbl in case of barebox) made the work... */
+
+	/* Set up resource ranges from the controller's registers. */
+	start = GT_READ(GT_PCI0M0LD_OFS);
+	end = GT_READ(GT_PCI0M0HD_OFS);
+	map = GT_READ(GT_PCI0M0REMAP_OFS);
+	end = (end & GT_PCI_HD_MSK) | (start & ~GT_PCI_HD_MSK);
+	start1 = GT_READ(GT_PCI0M1LD_OFS);
+	end1 = GT_READ(GT_PCI0M1HD_OFS);
+	map1 = GT_READ(GT_PCI0M1REMAP_OFS);
+	end1 = (end1 & GT_PCI_HD_MSK) | (start1 & ~GT_PCI_HD_MSK);
+
+	mask = ~(start ^ end);
+
+	/* We don't support remapping with a discontiguous mask. */
+	BUG_ON((start & GT_PCI_HD_MSK) != (map & GT_PCI_HD_MSK) &&
+		mask != ~((mask & -mask) - 1));
+	gt64120_mem_resource.start = start;
+	gt64120_mem_resource.end = end;
+	gt64120_controller.mem_offset = (start & mask) - (map & mask);
+	/* Addresses are 36-bit, so do shifts in the destinations. */
+	gt64120_mem_resource.start <<= GT_PCI_DCRM_SHF;
+	gt64120_mem_resource.end <<= GT_PCI_DCRM_SHF;
+	gt64120_mem_resource.end |= (1 << GT_PCI_DCRM_SHF) - 1;
+	gt64120_controller.mem_offset <<= GT_PCI_DCRM_SHF;
+
+	start = GT_READ(GT_PCI0IOLD_OFS);
+	end = GT_READ(GT_PCI0IOHD_OFS);
+	map = GT_READ(GT_PCI0IOREMAP_OFS);
+	end = (end & GT_PCI_HD_MSK) | (start & ~GT_PCI_HD_MSK);
+	mask = ~(start ^ end);
+
+	/* We don't support remapping with a discontiguous mask. */
+	BUG_ON((start & GT_PCI_HD_MSK) != (map & GT_PCI_HD_MSK) &&
+		mask != ~((mask & -mask) - 1));
+	gt64120_io_resource.start = map & mask;
+	res_end = (map & mask) | ~mask;
+	gt64120_controller.io_offset = 0;
+	/* Addresses are 36-bit, so do shifts in the destinations. */
+	gt64120_io_resource.start <<= GT_PCI_DCRM_SHF;
+	gt64120_io_resource.end <<= GT_PCI_DCRM_SHF;
+	gt64120_io_resource.end |= (1 << GT_PCI_DCRM_SHF) - 1;
+
+#ifdef CONFIG_CPU_LITTLE_ENDIAN
+	GT_WRITE(GT_PCI0_CMD_OFS, GT_PCI0_CMD_MBYTESWAP_BIT |
+		GT_PCI0_CMD_SBYTESWAP_BIT);
+#else
+	GT_WRITE(GT_PCI0_CMD_OFS, 0);
+#endif
+
+	/* Fix up PCI I/O mapping if necessary (for Atlas). */
+	start = GT_READ(GT_PCI0IOLD_OFS);
+	map = GT_READ(GT_PCI0IOREMAP_OFS);
+	if ((start & map) != 0) {
+		map &= ~start;
+		GT_WRITE(GT_PCI0IOREMAP_OFS, map);
+	}
+
+	register_pci_controller(&gt64120_controller);
+
+	return 0;
+}
+postcore_initcall(pcibios_init);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
