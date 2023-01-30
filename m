Delivery-date: Mon, 30 Jan 2023 19:04:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYWa-007rcm-Lp
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:04:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMYWX-0005Rp-68
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:04:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4BmxZpGXwp7IuvGlqY4c/Z01WVtfyvoAMxsxXanHWjc=; b=P96fuL82bXdheNiGxd2I8vmmSS
	oJb7IicMgVRVvDi9D43Fot0vaNk3bsLTnGNJcfHNujKTvi2CQq43fkWJfkZEg5c08haKY/ap0IUN+
	QGfe0JOz/HuxFRKYtxPPXvOcQYhPbBx8ZXMY52yAr6Xol9L5dETtihkLbSFJ4OBXUR86jtktvUfY+
	2mX8h4DkgRIhyJz8aysi3QGQFfTPAzs4IiQZ2+lX+SZdFQTzAtL0pV7k/U6gSwiK1NCs+aieBvYCM
	vNea/h1CPwtxwB6Zs6Z6SNxV2WOYmh4Do3dW3SqvBbJOWEMK1tTvBWSQBYUjBmp5f97fzhlXEPewM
	mv3JZtHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZb-002Xew-88; Mon, 30 Jan 2023 07:27:27 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOZR-002XcE-IF
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 07:27:20 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 594BE1C000A;
	Mon, 30 Jan 2023 07:27:15 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Jan 2023 08:27:06 +0100
Message-Id: <20230130072707.2423294-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230130072707.2423294-1-ahmad@a3f.at>
References: <20230130072707.2423294-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_232717_890966_EE172537 
X-CRM114-Status: GOOD (  29.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] firmware: add QEMU FW CFG driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Quoting the QEMU Docs[1]:

  The QEMU Firmware Configuration (fw_cfg) Device allows the guest to
  retrieve various data items (blobs) that can influence how the firmware
  configures itself, or may contain tables to be installed for the guest OS.
  Examples include device boot order, ACPI and SMBIOS tables, virtual
  machine UUID, SMP and NUMA information, kernel/initrd images for
  direct (Linux) kernel booting, etc.

The driver added here is mostly based on the Linux driver.

[1]: https://www.qemu.org/docs/master/specs/fw_cfg.html
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - split off into own file
  - add cdev/fd API
  - DMA map written buffers
  - reuse kernel headers and part of kernel code
  - handle unaligned buffers correctly
---
 drivers/firmware/Kconfig         |  10 +
 drivers/firmware/Makefile        |   1 +
 drivers/firmware/qemu_fw_cfg.c   | 307 +++++++++++++++++++++++++++++++
 include/filetype.h               |   1 +
 include/uapi/linux/qemu_fw_cfg.h | 100 ++++++++++
 5 files changed, 419 insertions(+)
 create mode 100644 drivers/firmware/qemu_fw_cfg.c
 create mode 100644 include/uapi/linux/qemu_fw_cfg.h

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index d3cca41a7e8f..a6c564320eff 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -32,4 +32,14 @@ config ARM_SCMI_PROTOCOL
 	  set of operating system-independent software interfaces that are
 	  used in system management.
 
+config QEMU_FW_CFG
+	bool "QEMU FW CFG interface"
+	help
+	  This driver exposes the QEMU FW CFG conduit as a single
+	  character device.
+
+	  The selector key can be set via ioctl or device parameter
+	  and read/writes are translated to the MMIO/IO port appropriate
+	  for the platform.
+
 endmenu
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index 26d6f3275ae1..90f5113f532e 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -2,4 +2,5 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
+obj-$(CONFIG_QEMU_FW_CFG) += qemu_fw_cfg.o
 obj-y += arm_scmi/
diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
new file mode 100644
index 000000000000..3fad90bbded2
--- /dev/null
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -0,0 +1,307 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * qemu_fw_cfg.c - QEMU FW CFG character device
+ *
+ * Copyright (C) 2022 Adrian Negreanu
+ * Copyright (C) 2022 Ahmad Fatoum
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <fcntl.h>
+#include <dma.h>
+#include <linux/err.h>
+#include <linux/bitfield.h>
+#include <linux/qemu_fw_cfg.h>
+#include <asm/unaligned.h>
+#include <io-64-nonatomic-lo-hi.h>
+
+/* arch-specific ctrl & data register offsets are not available in ACPI, DT */
+#ifdef CONFIG_X86
+# define FW_CFG_CTRL_OFF 0x00
+# define FW_CFG_DATA_OFF 0x01
+# define FW_CFG_DMA_OFF 0x04
+#else
+# define FW_CFG_CTRL_OFF 0x08
+# define FW_CFG_DATA_OFF 0x00
+# define FW_CFG_DMA_OFF 0x10
+#endif
+
+/* fw_cfg DMA commands */
+#define FW_CFG_DMA_CTL_ERROR   0x01
+#define FW_CFG_DMA_CTL_READ    0x02
+#define FW_CFG_DMA_CTL_SKIP    0x04
+#define FW_CFG_DMA_CTL_SELECT  0x08
+#define FW_CFG_DMA_CTL_WRITE   0x10
+
+struct fw_cfg_dma {
+	__be32 control;
+	__be32 length;
+	__be64 address;
+} __packed;
+
+/* fw_cfg device i/o register addresses */
+struct fw_cfg {
+	struct resource *iores;
+	void __iomem *reg_ctrl;
+	void __iomem *reg_data;
+	void __iomem *reg_dma;
+	struct cdev cdev;
+	loff_t next_read_offset;
+	u32 sel;
+	bool is_mmio;
+	struct fw_cfg_dma __iomem *acc_virt;
+	dma_addr_t acc_dma;
+};
+
+static struct fw_cfg *to_fw_cfg(struct cdev *cdev)
+{
+	return container_of(cdev, struct fw_cfg, cdev);
+}
+
+/* pick appropriate endianness for selector key */
+static void fw_cfg_select(struct fw_cfg *fw_cfg)
+{
+	if (fw_cfg->is_mmio)
+		iowrite16be(fw_cfg->sel, fw_cfg->reg_ctrl);
+	else
+		iowrite16(fw_cfg->sel, fw_cfg->reg_ctrl);
+}
+
+/* clean up fw_cfg device i/o */
+static void fw_cfg_io_cleanup(struct fw_cfg *fw_cfg)
+{
+	release_region(fw_cfg->iores);
+}
+
+static int fw_cfg_ioctl(struct cdev *cdev, int request, void *buf)
+{
+	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
+	int ret = 0;
+
+	switch (request) {
+	case FW_CFG_SELECT:
+		fw_cfg->sel = *(u16 *)buf;
+		break;
+	default:
+		ret = -ENOTTY;
+	}
+
+	return 0;
+}
+
+#define __raw_readu64 __raw_readq
+#define __raw_readu32 __raw_readl
+#define __raw_readu16 __raw_readw
+#define __raw_readu8 __raw_readb
+
+#define fw_cfg_data_read_sized(fw_cfg, remaining, address, type) do {	\
+	while (*remaining >= sizeof(type)) {				\
+		val = __raw_read##type((fw_cfg)->reg_data);		\
+		*remaining -= sizeof(type);				\
+		if (*address) {						\
+			put_unaligned(val, (type *)*address);		\
+			*address += sizeof(type);			\
+		}							\
+	}								\
+} while(0)
+
+static void fw_cfg_data_read(struct fw_cfg *fw_cfg, void *address, size_t remaining,
+			     unsigned rdsize)
+{
+
+	u64 val;
+
+	if (fw_cfg->is_mmio) {
+		/*
+		 * This is just a preference. If we can't honour it, we
+		 * fall back to byte-sized copy
+		 */
+		switch(rdsize) {
+		case 8:
+#ifdef CONFIG_64BIT
+			fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u64);
+			break;
+#endif
+		case 4:
+			fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u32);
+			break;
+		case 2:
+			fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u16);
+			break;
+		}
+	}
+
+	fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u8);
+}
+
+static ssize_t fw_cfg_read(struct cdev *cdev, void *buf, size_t count,
+			   loff_t pos, unsigned long flags)
+{
+	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
+	unsigned rdsize = FIELD_GET(O_RWSIZE_MASK, flags);
+
+	if (!pos || pos != fw_cfg->next_read_offset) {
+		fw_cfg_select(fw_cfg);
+		fw_cfg->next_read_offset = 0;
+	}
+
+	if (!rdsize) {
+		if (pos % 8 == 0)
+			rdsize = 8;
+		else if (pos % 4 == 0)
+			rdsize = 4;
+		else if (pos % 2 == 0)
+			rdsize = 2;
+		else
+			rdsize = 1;
+	}
+
+	while (pos-- > fw_cfg->next_read_offset)
+		fw_cfg_data_read(fw_cfg, NULL, count, rdsize);
+
+	fw_cfg_data_read(fw_cfg, buf, count, rdsize);
+
+	fw_cfg->next_read_offset += count;
+	return count;
+}
+
+static ssize_t fw_cfg_write(struct cdev *cdev, const void *buf, size_t count,
+			    loff_t pos, unsigned long flags)
+{
+	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
+	struct device_d *dev = cdev->dev;
+	struct fw_cfg_dma __iomem *acc = fw_cfg->acc_virt;
+	dma_addr_t mapping;
+
+	if (pos != 0)
+		return -EINVAL;
+
+	mapping = dma_map_single(dev, (void *)buf, count, DMA_TO_DEVICE);
+	if (dma_mapping_error(dev, mapping))
+		return -EFAULT;
+
+	fw_cfg->next_read_offset = 0;
+
+	acc->address = cpu_to_be64(mapping);
+	acc->length = cpu_to_be32(count);
+	acc->control = cpu_to_be32(FW_CFG_DMA_CTL_WRITE |
+				   FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16);
+
+	iowrite64be(fw_cfg->acc_dma, fw_cfg->reg_dma);
+
+	while (ioread32be(&acc->control) & ~FW_CFG_DMA_CTL_ERROR)
+		;
+
+	dma_unmap_single(dev, mapping, count, DMA_FROM_DEVICE);
+
+	return count;
+}
+
+static struct cdev_operations fw_cfg_ops = {
+	.read = fw_cfg_read,
+	.write = fw_cfg_write,
+	.ioctl = fw_cfg_ioctl,
+};
+
+static int fw_cfg_param_select(struct param_d *p, void *priv)
+{
+	struct fw_cfg *fw_cfg = priv;
+
+	return fw_cfg->sel <= U16_MAX ? 0 : -EINVAL;
+}
+
+static int fw_cfg_probe(struct device_d *dev)
+{
+	struct device_node *np = dev_of_node(dev);
+	struct resource *parent_res, *iores;
+	char sig[FW_CFG_SIG_SIZE];
+	struct fw_cfg *fw_cfg;
+	int ret;
+
+	fw_cfg = xzalloc(sizeof(*fw_cfg));
+
+	/* acquire i/o range details */
+	fw_cfg->is_mmio = false;
+	iores = dev_get_resource(dev, IORESOURCE_IO, 0);
+	if (IS_ERR(iores)) {
+		fw_cfg->is_mmio = true;
+		iores = dev_get_resource(dev, IORESOURCE_MEM, 0);
+		if (IS_ERR(iores))
+			return -EINVAL;
+	}
+
+	parent_res = fw_cfg->is_mmio ? &iomem_resource : &ioport_resource;
+	iores = __request_region(parent_res, iores->start, iores->end, dev_name(dev), 0);
+	if (IS_ERR(iores))
+		return -EBUSY;
+
+	/* use architecture-specific offsets */
+	fw_cfg->reg_ctrl = IOMEM(iores->start + FW_CFG_CTRL_OFF);
+	fw_cfg->reg_data = IOMEM(iores->start + FW_CFG_DATA_OFF);
+	fw_cfg->reg_dma  = IOMEM(iores->start + FW_CFG_DMA_OFF);
+
+	fw_cfg->iores = iores;
+
+	/* verify fw_cfg device signature */
+	fw_cfg->sel = FW_CFG_SIGNATURE;
+	fw_cfg_read(&fw_cfg->cdev, sig, FW_CFG_SIG_SIZE, 0, 0);
+
+	if (memcmp(sig, "QEMU", FW_CFG_SIG_SIZE) != 0) {
+		ret = np ? -EILSEQ : -ENODEV;
+		goto err;
+	}
+
+	fw_cfg->acc_virt = dma_alloc_coherent(sizeof(*fw_cfg->acc_virt), &fw_cfg->acc_dma);
+
+	fw_cfg->cdev.name = basprintf("fw_cfg%d", cdev_find_free_index("fw_cfg"));
+	fw_cfg->cdev.flags = DEVFS_IS_CHARACTER_DEV;
+	fw_cfg->cdev.size = 0;
+	fw_cfg->cdev.ops = &fw_cfg_ops;
+	fw_cfg->cdev.dev = dev;
+	fw_cfg->cdev.filetype = filetype_qemu_fw_cfg;
+
+	dev_set_name(dev, fw_cfg->cdev.name);
+
+	ret = devfs_create(&fw_cfg->cdev);
+	if (ret) {
+		dev_err(dev, "Failed to create corresponding cdev\n");
+		goto err;
+	}
+
+	cdev_create_default_automount(&fw_cfg->cdev);
+
+	dev_add_param_uint32(dev, "selector", fw_cfg_param_select,
+			     NULL, &fw_cfg->sel, "%u", fw_cfg);
+
+	dev->priv = fw_cfg;
+
+	return 0;
+err:
+	fw_cfg_io_cleanup(fw_cfg);
+	return ret;
+}
+
+static const struct of_device_id qemu_fw_cfg_of_match[] = {
+	{ .compatible = "qemu,fw-cfg-mmio", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d qemu_fw_cfg_drv = {
+	.name = "fw_cfg",
+	.probe  = fw_cfg_probe,
+	.of_compatible = of_match_ptr(qemu_fw_cfg_of_match),
+};
+
+static int qemu_fw_cfg_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&qemu_fw_cfg_drv);
+	if (ret)
+		return ret;
+
+	return of_devices_ensure_probed_by_dev_id(qemu_fw_cfg_of_match);
+}
+postmmu_initcall(qemu_fw_cfg_init);
diff --git a/include/filetype.h b/include/filetype.h
index 00d54e48d528..1a7d145555b1 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -58,6 +58,7 @@ enum filetype {
 	filetype_mxs_sd_image,
 	filetype_rockchip_rkns_image,
 	filetype_fip,
+	filetype_qemu_fw_cfg,
 	filetype_max,
 };
 
diff --git a/include/uapi/linux/qemu_fw_cfg.h b/include/uapi/linux/qemu_fw_cfg.h
new file mode 100644
index 000000000000..97a720c383cc
--- /dev/null
+++ b/include/uapi/linux/qemu_fw_cfg.h
@@ -0,0 +1,100 @@
+/* SPDX-License-Identifier: BSD-3-Clause */
+#ifndef _LINUX_FW_CFG_H
+#define _LINUX_FW_CFG_H
+
+#include <linux/types.h>
+#include <ioctl.h>
+
+#define FW_CFG_ACPI_DEVICE_ID	"QEMU0002"
+
+/* selector key values for "well-known" fw_cfg entries */
+#define FW_CFG_SIGNATURE	0x00
+#define FW_CFG_ID		0x01
+#define FW_CFG_UUID		0x02
+#define FW_CFG_RAM_SIZE		0x03
+#define FW_CFG_NOGRAPHIC	0x04
+#define FW_CFG_NB_CPUS		0x05
+#define FW_CFG_MACHINE_ID	0x06
+#define FW_CFG_KERNEL_ADDR	0x07
+#define FW_CFG_KERNEL_SIZE	0x08
+#define FW_CFG_KERNEL_CMDLINE	0x09
+#define FW_CFG_INITRD_ADDR	0x0a
+#define FW_CFG_INITRD_SIZE	0x0b
+#define FW_CFG_BOOT_DEVICE	0x0c
+#define FW_CFG_NUMA		0x0d
+#define FW_CFG_BOOT_MENU	0x0e
+#define FW_CFG_MAX_CPUS		0x0f
+#define FW_CFG_KERNEL_ENTRY	0x10
+#define FW_CFG_KERNEL_DATA	0x11
+#define FW_CFG_INITRD_DATA	0x12
+#define FW_CFG_CMDLINE_ADDR	0x13
+#define FW_CFG_CMDLINE_SIZE	0x14
+#define FW_CFG_CMDLINE_DATA	0x15
+#define FW_CFG_SETUP_ADDR	0x16
+#define FW_CFG_SETUP_SIZE	0x17
+#define FW_CFG_SETUP_DATA	0x18
+#define FW_CFG_FILE_DIR		0x19
+
+#define FW_CFG_FILE_FIRST	0x20
+#define FW_CFG_FILE_SLOTS_MIN	0x10
+
+#define FW_CFG_WRITE_CHANNEL	0x4000
+#define FW_CFG_ARCH_LOCAL	0x8000
+#define FW_CFG_ENTRY_MASK	(~(FW_CFG_WRITE_CHANNEL | FW_CFG_ARCH_LOCAL))
+
+#define FW_CFG_INVALID		0xffff
+
+/* width in bytes of fw_cfg control register */
+#define FW_CFG_CTL_SIZE		0x02
+
+/* fw_cfg "file name" is up to 56 characters (including terminating nul) */
+#define FW_CFG_MAX_FILE_PATH	56
+
+/* size in bytes of fw_cfg signature */
+#define FW_CFG_SIG_SIZE 4
+
+/* FW_CFG_ID bits */
+#define FW_CFG_VERSION		0x01
+#define FW_CFG_VERSION_DMA	0x02
+
+/* fw_cfg file directory entry type */
+struct fw_cfg_file {
+	__be32 size;
+	__be16 select;
+	__u16 reserved;
+	char name[FW_CFG_MAX_FILE_PATH];
+};
+
+/* FW_CFG_DMA_CONTROL bits */
+#define FW_CFG_DMA_CTL_ERROR	0x01
+#define FW_CFG_DMA_CTL_READ	0x02
+#define FW_CFG_DMA_CTL_SKIP	0x04
+#define FW_CFG_DMA_CTL_SELECT	0x08
+#define FW_CFG_DMA_CTL_WRITE	0x10
+
+#define FW_CFG_DMA_SIGNATURE    0x51454d5520434647ULL /* "QEMU CFG" */
+
+/* Control as first field allows for different structures selected by this
+ * field, which might be useful in the future
+ */
+struct fw_cfg_dma_access {
+	__be32 control;
+	__be32 length;
+	__be64 address;
+};
+
+#define FW_CFG_VMCOREINFO_FILENAME "etc/vmcoreinfo"
+
+#define FW_CFG_VMCOREINFO_FORMAT_NONE 0x0
+#define FW_CFG_VMCOREINFO_FORMAT_ELF 0x1
+
+struct fw_cfg_vmcoreinfo {
+	__le16 host_format;
+	__le16 guest_format;
+	__le32 size;
+	__le64 paddr;
+};
+
+#define FW_CFG_SELECT		_IOW('Q', 1, __u16)
+
+#endif
-- 
2.38.1



