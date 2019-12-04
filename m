Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVKP-0007Gm-Pj
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 14:08:32 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 1A8D11C0010
 for <barebox@lists.infradead.org>; Wed,  4 Dec 2019 14:07:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  4 Dec 2019 15:07:20 +0100
Message-Id: <20191204140721.20299-2-ahmad@a3f.at>
In-Reply-To: <20191204140721.20299-1-ahmad@a3f.at>
References: <20191204140721.20299-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] bus: efi: add basic ACPI bus infrastructure
To: barebox@lists.infradead.org

It makes sense to support some ACPI tables like the WDAT (Watchdog
Action Table) in barebox. To facilitate this add a ACPI bus and
the necessary bits to integrate ACPI tables into the barebox
device/driver model as devices. These devices are identified by the
four byte signature, which drivers can then match against and the
system description table (SDT) of the device is then available as a
device memory resource.

Even without drivers, with this patch, devinfo and md can now be used
to view the ACPI system description tables, which can be useful
during UEFI payload development.

Support for the ACPI Machine Language and ACPI 5.1 _DSD (Device
Specific Data) is not implemented.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/bus/Kconfig  |   8 ++
 drivers/bus/Makefile |   1 +
 drivers/bus/acpi.c   | 255 +++++++++++++++++++++++++++++++++++++++++++
 include/acpi.h       |  73 +++++++++++++
 4 files changed, 337 insertions(+)
 create mode 100644 drivers/bus/acpi.c
 create mode 100644 include/acpi.h

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 219982d878a8..1a2ff9129e8e 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -25,4 +25,12 @@ config MVEBU_MBUS
 	  Driver needed for the MBus configuration on Marvell EBU SoCs
 	  (Kirkwood, Dove, Orion5x, MV78XX0 and Armada 370/XP).
 
+config ACPI
+	bool "Advanced Configuration and Power Interface (ACPI)"
+	default y
+	depends on EFI_BOOTUP
+	help
+	  Driver needed for supporting drivers probed from ACPI tables.
+	  The root SDT is found via UEFI.
+
 endmenu
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index ba5cee40636b..518689a1eabe 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_BUS_OMAP_GPMC)	+= omap-gpmc.o
 obj-$(CONFIG_IMX_WEIM)		+= imx-weim.o
 obj-$(CONFIG_MVEBU_MBUS)	+= mvebu-mbus.o
 obj-$(CONFIG_TI_SYSC)		+= ti-sysc.o
+obj-$(CONFIG_ACPI)		+= acpi.o
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
new file mode 100644
index 000000000000..2515b6633b33
--- /dev/null
+++ b/drivers/bus/acpi.c
@@ -0,0 +1,255 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Ahmad Fatoum
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
+#include <acpi.h>
+
+static struct sig_desc {
+	const char sig[4];
+	const char *desc;
+} signatures[] = {
+	/* ACPI 6.3 Table 5-29, Defined DESCRIPTION_HEADER Signatures */
+	{ "APIC", "Multiple APIC Description" },
+	{ "BERT", "Boot Error Record" },
+	{ "BGRT", "Boot Graphics Resource" },
+	{ "CPEP", "Corrected Platform Error Polling" },
+	{ "DSDT", "Differentiated System Description" },
+	{ "ECDT", "Embedded Controller Boot Resource" },
+	{ "EINJ", "Error Injection" },
+	{ "ERST", "Error Record Serialization" },
+	{ "FACP", "Fixed ACPI Description" },
+	{ "FACS", "Firmware ACPI Control Structure" },
+	{ "FPDT", "Firmware Performance Data" },
+	{ "GTDT", "Generic Timer Description" },
+	{ "HEST", "Hardware Error Source" },
+	{ "MSCT", "Maximum System Characteristics" },
+	{ "MPST", "Memory Power State" },
+	{ "NFIT", "NVDIMM Firmware Interface" },
+	{ "OEM\0", "OEM Specific Information" },
+	{ "PCCT", "Platform Communications Channel" },
+	{ "PMTT", "Platform Memory Topology" },
+	{ "PSDT", "Persistent System Description" },
+	{ "RASF", "ACPI RAS Feature" },
+	{ "RSDT", "Root System Description" },
+	{ "SBST", "Smart Battery Specification" },
+	{ "SDEV", "Secure Devices" },
+	{ "SLIT", "System Locality Distance Information" },
+	{ "SRAT", "System Resource Affinity" },
+	{ "SSDT", "Secondary System Description" },
+	{ "XSDT", "Extended System Description" },
+
+	/* ACPI 6.3 Table 5-30, Reserved DESCRIPTION_HEADER Signatures */
+	{ "BOOT", "Simple BOOT Flag" },
+	{ "CSRT", "Core System Resource" },
+	{ "DBG2", "Microsoft Debug Port 2" },
+	{ "DBGP", "Debug Port" },
+	{ "DMAR", "DMA Remapping" },
+	{ "DPPT", "DMA Protection Policy" },
+	{ "DRTM", "Dynamic Root of Trust for Measurement" },
+	{ "ETDT", "(Obsolete) Event Timer Description" },
+	{ "HPET", "IA-PC High Precision Event Timer" },
+	{ "IBFT", "iSCSI Boot Firmware" },
+	{ "IORT", "I/O Remapping" },
+	{ "IVRS", "I/O Virtualization Reporting Structure" },
+	{ "LPIT", "Low Power Idle" },
+	{ "MCFG", "PCI Express memory mapped configuration" },
+	{ "MCHI", "Management Controller Host Interface" },
+	{ "MSDM", "Microsoft Data Management" },
+	{ "SDEI", "Software Delegated Exceptions Interface" },
+	{ "SLIC", "Microsoft Software Licensing Specification" },
+	{ "SPCR", "Serial Port Console Redirection" },
+	{ "SPMI", "Server Platform Management Interface" },
+	{ "STAO", "_STA Override" },
+	{ "TCPA", "Trusted Computing Platform Alliance Capabilities" },
+	{ "TPM2", "Trusted Platform Module 2" },
+	{ "UEFI", "UEFI ACPI Data" },
+	{ "WAET", "Windows ACPI Emulated Devices" },
+	{ "WDAT", "Watch Dog Action" },
+	{ "WDRT", "Watchdog Resource" },
+	{ "WPBT", "Platform Binary" },
+	{ "WSMT", "Windows SMM Security Mitigation" },
+	{ "XENV", "Xen Project" },
+
+	/* Others */
+	{ "NHLT", "Non-HD Audio" },
+	{ "ASF!", "Alert Standard Format" },
+
+	{ /* sentinel */ }
+};
+
+static struct acpi_sdt *acpi_get_dev_sdt(struct device_d *dev)
+{
+	int i;
+
+	for (i = 0; i < dev->num_resources; i++) {
+		if (!strcmp(dev->resource[i].name, "SDT"))
+			return (struct acpi_sdt *)dev->resource[i].start;
+	}
+
+	return NULL;
+}
+
+static void acpi_devinfo(struct device_d *dev)
+{
+	struct acpi_sdt *sdt = acpi_get_dev_sdt(dev);
+	struct sig_desc *sig_desc;
+
+	printf("Signature: %.4s", sdt->signature);
+
+	for (sig_desc = signatures; sig_desc->desc; sig_desc++) {
+		size_t len = strnlen(sig_desc->sig, 4);
+
+		if (!memcmp(sdt->signature, sig_desc->sig, len)) {
+			printf(" (%s Table)", sig_desc->desc);
+			break;
+		}
+	}
+
+	printf("\nRevision: %u\n", sdt->revision);
+	printf("OemId: %.6s\n", sdt->oem_id);
+	printf("OemTableId: %.8s\n", sdt->oem_table_id);
+	printf("OemRevision: %u\n", sdt->oem_revision);
+	printf("CreatorId: 0x%08x\n", sdt->creator_id);
+	printf("CreatorRevision: %u\n", sdt->creator_revision);
+}
+
+static int acpi_register_device(struct device_d *dev, struct acpi_sdt *sdt)
+{
+	int ret;
+
+	ret = register_device(dev);
+	if (ret)
+		return ret;
+
+	device_add_resource(dev, "SDT", (resource_size_t)sdt, sdt->len,
+		IORESOURCE_MEM | IORESOURCE_ROM_COPY | IORESOURCE_ROM_BIOS_COPY);
+
+	dev_dbg(dev, "registered as ACPI device\n");
+
+	return 0;
+}
+
+static struct device_d *acpi_add_device(struct bus_type *bus,
+					acpi_sig_t signature)
+{
+	struct device_d *dev;
+
+	dev = xzalloc(sizeof(*dev));
+
+	dev->bus = bus;
+	dev->parent = bus->dev;
+	dev->id = DEVICE_ID_DYNAMIC;
+	dev->info = acpi_devinfo;
+
+	dev_set_name(dev, "acpi-%.4s", signature);
+
+	return dev;
+}
+
+static int acpi_register_devices(struct bus_type *bus)
+{
+	efi_config_table_t *table = bus->dev->priv;
+	struct acpi_rsdp *rsdp;
+	struct acpi_rsdt *root;
+	size_t entry_count;
+	const char *sig;
+	int i;
+
+	rsdp = (struct acpi_rsdp *)table->table;
+
+	if (!rsdp)
+		return -EFAULT;
+
+	/* ACPI specification v6.3
+	 * 5.2.5.2 Finding the RSDP on UEFI Enabled Systems
+	 */
+	if (memcmp("RSD PTR ", rsdp->signature, sizeof(rsdp->signature))) {
+		dev_dbg(bus->dev, "unexpected signature at start of config table: '%.8s'\n",
+			rsdp->signature);
+		return -ENODEV;
+	}
+
+	if (rsdp->revision < 0x02) {
+		sig = "RSDT";
+		root = (struct acpi_rsdt *)(unsigned long)rsdp->rsdt_addr;
+		entry_count = (root->sdt.len - sizeof(struct acpi_rsdt)) / sizeof(u32);
+	} else {
+		sig = "XSDT";
+		root = (struct acpi_rsdt *)((struct acpi2_rsdp *)rsdp)->xsdt_addr;
+		entry_count = (root->sdt.len - sizeof(struct acpi_rsdt)) / sizeof(u64);
+	}
+
+	if (acpi_sigcmp(sig, root->sdt.signature)) {
+		dev_err(bus->dev, "Expected %s, but found '%.4s'.\n",
+			sig, root->sdt.signature);
+		return -EIO;
+	}
+
+	dev_info(bus->dev, "Found %s (OEM: %.8s) with %lu entries\n",
+		sig, root->sdt.oem_id, entry_count);
+
+	for (i = 0; i < entry_count; i++) {
+		struct acpi_sdt *sdt = root->entries[i];
+		acpi_register_device(acpi_add_device(bus, sdt->signature), sdt);
+	}
+
+	return 0;
+}
+
+static int acpi_bus_match(struct device_d *dev, struct driver_d *drv)
+{
+	struct acpi_driver *acpidrv = to_acpi_driver(drv);
+	struct acpi_sdt *sdt = acpi_get_dev_sdt(dev);
+
+	return acpi_sigcmp(acpidrv->signature, sdt->signature);
+}
+
+static int acpi_bus_probe(struct device_d *dev)
+{
+	return dev->driver->probe(dev);
+}
+
+static void acpi_bus_remove(struct device_d *dev)
+{
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
+}
+
+struct bus_type acpi_bus = {
+	.match = acpi_bus_match,
+	.probe = acpi_bus_probe,
+	.remove = acpi_bus_remove,
+};
+
+static int efi_acpi_probe(void)
+{
+	efi_config_table_t *table = NULL;
+	int i;
+
+	for (i = 0; i < efi_sys_table->nr_tables; i++) {
+		efi_config_table_t *ect = &efi_sys_table->tables[i];
+		/* take ACPI < 2 table only if no ACPI 2.0 is available */
+		if (!efi_guidcmp(ect->guid, EFI_ACPI_20_TABLE_GUID)) {
+			acpi_bus.name = "acpi2";
+			table = ect;
+		} else if (!table && !efi_guidcmp(ect->guid, EFI_ACPI_TABLE_GUID)) {
+			acpi_bus.name = "acpi";
+			table = ect;
+		}
+	}
+
+	if (!table)
+		return 0;
+
+	bus_register(&acpi_bus);
+	acpi_bus.dev->priv = table;
+
+	return acpi_register_devices(&acpi_bus);
+}
+postcore_initcall(efi_acpi_probe);
diff --git a/include/acpi.h b/include/acpi.h
new file mode 100644
index 000000000000..2d5fd3086a89
--- /dev/null
+++ b/include/acpi.h
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 Ahmad Fatoum
+ */
+
+#ifndef __ACPI_H_
+#define __ACPI_H_
+
+#include <linux/types.h>
+#include <driver.h>
+
+typedef char acpi_sig_t[4];
+
+struct __packed acpi_rsdp { /* root system description pointer */
+	char	signature[8];
+	u8	checksum;
+	u8	oem_id[6];
+	u8	revision;
+	u32	rsdt_addr;
+};
+
+struct __packed acpi2_rsdp { /* root system description */
+	struct acpi_rsdp acpi1;
+	u32	length;
+	u64	xsdt_addr;
+	u8	extended_checksum;
+	u8	reserved[3];
+};
+
+struct __packed acpi_sdt { /* system description table header */
+	acpi_sig_t	signature;
+	u32		len;
+	u8		revision;
+	u8		checksum;
+	char		oem_id[6];
+	char		oem_table_id[8];
+	u32		oem_revision;
+	u32		creator_id;
+	u32		creator_revision;
+};
+
+struct __packed acpi_rsdt { /* system description table header */
+	struct acpi_sdt	sdt;
+	struct acpi_sdt	* __aligned(8) entries[];
+};
+
+struct acpi_driver {
+	struct driver_d driver;
+	acpi_sig_t signature;
+};
+
+extern struct bus_type acpi_bus;
+
+static inline struct acpi_driver *to_acpi_driver(struct driver_d *drv)
+{
+	return container_of(drv, struct acpi_driver, driver);
+}
+
+#define device_acpi_driver(drv)	\
+	register_driver_macro(device, acpi, drv)
+
+static inline int acpi_driver_register(struct acpi_driver *acpidrv)
+{
+	acpidrv->driver.bus = &acpi_bus;
+	return register_driver(&acpidrv->driver);
+}
+
+static inline int acpi_sigcmp(const acpi_sig_t sig_a, const acpi_sig_t sig_b)
+{
+	return memcmp(sig_a, sig_b, sizeof(acpi_sig_t));
+}
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
