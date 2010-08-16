Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ol0P3-0000ad-29
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 14:11:13 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon, 16 Aug 2010 17:10:34 +0300
Message-Id: <1f8fe0ae906c0c029decae3edfae22ae97c1cbb6.1281966840.git.baruch@tkos.co.il>
In-Reply-To: <cover.1281966840.git.baruch@tkos.co.il>
References: <cover.1281966840.git.baruch@tkos.co.il>
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
Subject: [PATCH v2 2/6] imx: driver for the IIM fusebox
To: barebox@lists.infradead.org

This driver provides an interface for programming and sensing the IIM fusebox
which is present on some i.MX chips.

Since the IIM io addresses of the controlling registers and each fuse bank are
are not contiguous the driver implementation uses two drivers, imx_iim, and
imx_iim_bank.  The imx_iim is the "parent" driver for a device holding the
map_base address of the control registers.  The imx_iim_bank driver is for
child devices holding the map_base of each fuse bank.  The platform code then,
instantiate one imx_iim_bank device per fuse bank.

Fuses blow is a dangerous operation. Thus, the fuses blow functionality can be
disabled independently at configuration time. On run time this functionality
must be enabled explicitly by setting the permanent_write_enable parameter.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/mach-imx/Kconfig  |   18 +++
 arch/arm/mach-imx/Makefile |    1 +
 arch/arm/mach-imx/iim.c    |  291 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 310 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-imx/iim.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 10f01bf..1311ceb 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -364,6 +364,24 @@ config IMX_CLKO
 	  The i.MX SoCs have a Pin which can output different reference frequencies.
 	  Say y here if you want to have the clko command which lets you select the
 	  frequency to output on this pin.
+
+config IMX_IIM
+	tristate "IIM fusebox device"
+	depends on ARCH_IMX25 || ARCH_IMX35
+	help
+	  Device driver for the IC Identification Module (IIM) fusebox. Use the 
+	  regular md/mw commands to program and read the fusebox.
+
+config IMX_IIM_FUSE_BLOW
+	bool "IIM fuses blow support"
+	depends on IMX_IIM
+	help
+	  Enable this option to add permanent programming of the fusebox, using
+	  fuses blowing.
+
+	  Warning: blown fuses can not be unblown. Using this option may damage
+	  your CPU, or make it unbootalbe. Use with care.
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 445a879..de62f7e 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
 obj-$(CONFIG_IMX_CLKO)	+= clko.o
+obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 obj-y += speed.o
 
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
new file mode 100644
index 0000000..73369b7
--- /dev/null
+++ b/arch/arm/mach-imx/iim.c
@@ -0,0 +1,291 @@
+/*
+ * iim.c - i.MX IIM fusebox driver
+ * 
+ * Provide an interface for programming and sensing the information that are
+ * stored in on-chip fuse elements. This functionality is part of the IC
+ * Identification Module (IIM), which is present on some i.MX CPUs.
+ *
+ * Copyright (c) 2010 Baruch Siach <baruch@tkos.co.il>,
+ * 	Orex Computed Radiography
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <param.h>
+
+#include <asm/io.h>
+
+#include <mach/iim.h>
+
+#define DRIVERNAME	"imx_iim"
+
+static int do_fuse_sense(unsigned long reg_base, unsigned int bank,
+		unsigned int row)
+{
+	u8 err, stat;
+
+	if (bank > 7) {
+		printf("%s: invalid bank number\n", __func__);
+		return -EINVAL;
+	}
+
+	if (row > 0x3ff) {
+		printf("%s: invalid row offset\n", __func__);
+		return -EINVAL;
+	}
+
+	/* clear status and error registers */
+	writeb(3, reg_base + IIM_STATM);
+	writeb(0xfe, reg_base + IIM_ERR);
+
+	/* upper and lower address halves */
+	writeb((bank << 3) | (row >> 7), reg_base + IIM_UA);
+	writeb((row << 1) & 0xf8, reg_base + IIM_LA);
+
+	/* start fuse sensing */
+	writeb(0x08, reg_base + IIM_FCTL);
+
+	/* wait for sense done */
+	while ((readb(reg_base + IIM_STAT) & 0x80) != 0)
+		;
+
+	stat = readb(reg_base + IIM_STAT);
+	writeb(stat, reg_base + IIM_STAT);
+
+	err = readb(reg_base + IIM_ERR);
+	if (err) {
+		printf("%s: sense error (0x%02x)\n", __func__, err);
+		return -EIO;
+	}
+
+	return readb(reg_base + IIM_SDAT);
+}
+
+static ssize_t imx_iim_read(struct cdev *cdev, void *buf, size_t count,
+		ulong offset, ulong flags)
+{
+	ulong size, i;
+	struct device_d *dev = cdev->dev;
+	const char *sense_param;
+	unsigned long explicit_sense = 0;
+
+	if (dev == NULL)
+		return -EINVAL;
+
+	if ((sense_param = dev_get_param(dev, "explicit_sense_enable")))
+		explicit_sense = simple_strtoul(sense_param, NULL, 0);
+
+	size = min((ulong)count, dev->size - offset);
+	if (explicit_sense) {
+		for (i = 0; i < size; i++) {
+			int row_val;
+
+			row_val = do_fuse_sense(dev->parent->map_base,
+				dev->id, (offset+i)*4);
+			if (row_val < 0)
+				return row_val;
+			((u8 *)buf)[i] = (u8)row_val;
+		}
+	} else {
+		for (i = 0; i < size; i++)
+			((u8 *)buf)[i] = ((u8 *)dev->map_base)[(offset+i)*4];
+	}
+
+	return size;
+}
+
+#ifdef CONFIG_IMX_IIM_FUSE_BLOW
+static int do_fuse_blow(unsigned long reg_base, unsigned int bank,
+		unsigned int row, u8 value)
+{
+	int bit, ret = 0;
+	u8 err, stat;
+
+	if (bank > 7) {
+		printf("%s: invalid bank number\n", __func__);
+		return -EINVAL;
+	}
+
+	if (row > 0x3ff) {
+		printf("%s: invalid row offset\n", __func__);
+		return -EINVAL;
+	}
+
+	/* clear status and error registers */
+	writeb(3, reg_base + IIM_STATM);
+	writeb(0xfe, reg_base + IIM_ERR);
+
+	/* unprotect fuse programing */
+	writeb(0xaa, reg_base + IIM_PREG_P);
+
+	/* upper half address register */
+	writeb((bank << 3) | (row >> 7), reg_base + IIM_UA);
+
+	for (bit = 0; bit < 8; bit++) {
+		if (((value >> bit) & 1) == 0)
+			continue;
+
+		/* lower half address register */
+		writeb(((row << 1) | bit), reg_base + IIM_LA);
+
+		/* start fuse programing */
+		writeb(0x71, reg_base + IIM_FCTL);
+
+		/* wait for program done */
+		while ((readb(reg_base + IIM_STAT) & 0x80) != 0)
+			;
+
+		/* clear program done status */
+		stat = readb(reg_base + IIM_STAT);
+		writeb(stat, reg_base + IIM_STAT);
+
+		err = readb(reg_base + IIM_ERR);
+		if (err) {
+			printf("%s: bank %u, row %u, bit %d program error "
+					"(0x%02x)\n", __func__, bank, row, bit, 
+					err);
+			ret = -EIO;
+			goto out;
+		}
+	}
+
+out:
+	/* protect fuse programing */
+	writeb(0, reg_base + IIM_PREG_P);
+	return ret;
+}
+#endif /* CONFIG_IMX_IIM_FUSE_BLOW */
+
+static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_t count,
+		ulong offset, ulong flags)
+{
+	ulong size, i;
+	struct device_d *dev = cdev->dev;
+	const char *write_param;
+	unsigned int blow_enable = 0;
+
+	if (dev == NULL)
+		return -EINVAL;
+
+	if ((write_param = dev_get_param(dev, "permanent_write_enable")))
+		blow_enable = simple_strtoul(write_param, NULL, 0);
+
+	size = min((ulong)count, dev->size - offset);
+#ifdef CONFIG_IMX_IIM_FUSE_BLOW
+	if (blow_enable) {
+		for (i = 0; i < size; i++) {
+			int ret;
+
+			ret = do_fuse_blow(dev->parent->map_base, dev->id,
+					(offset+i)*4, ((u8 *)buf)[i]);
+			if (ret < 0)
+				return ret;
+		}
+	} else
+#endif /* CONFIG_IMX_IIM_FUSE_BLOW */
+	{
+		for (i = 0; i < size; i++)
+			((u8 *)dev->map_base)[(offset+i)*4] = ((u8 *)buf)[i];
+	}
+
+	return size;
+}
+
+static struct file_operations imx_iim_ops = {
+	.read	= imx_iim_read,
+	.write	= imx_iim_write,
+	.lseek	= dev_lseek_default,
+};
+
+static int imx_iim_blow_enable_set(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	unsigned long blow_enable;
+
+	if (val == NULL)
+		return -EINVAL;
+
+	blow_enable = simple_strtoul(val, NULL, 0);
+	if (blow_enable > 1)
+		return -EINVAL;
+
+	return dev_param_set_generic(dev, param, blow_enable ? "1" : "0");
+}
+
+static int imx_iim_probe(struct device_d *dev)
+{
+	return 0;
+}
+
+static int imx_iim_bank_probe(struct device_d *dev)
+{
+	struct cdev *cdev;
+	struct device_d *parent;
+	int err;
+
+	cdev = xzalloc(sizeof (struct cdev));
+	dev->priv = cdev;
+
+	cdev->dev	= dev;
+	cdev->ops	= &imx_iim_ops;
+	cdev->size	= dev->size;
+	cdev->name	= asprintf(DRIVERNAME "_bank%d", dev->id);
+	if (cdev->name == NULL)
+		return -ENOMEM;
+
+	parent = get_device_by_name(DRIVERNAME "0");
+	if (parent == NULL)
+		return -ENODEV;
+	err = dev_add_child(parent, dev);
+	if (err < 0)
+		return err;
+
+#ifdef CONFIG_IMX_IIM_FUSE_BLOW
+	err = dev_add_param(dev, "permanent_write_enable",
+			imx_iim_blow_enable_set, NULL, 0);
+	if (err < 0)
+		return err;
+	err = dev_set_param(dev, "permanent_write_enable", "0");
+	if (err < 0)
+		return err;
+#endif /* CONFIG_IMX_IIM_FUSE_BLOW */
+
+	err = dev_add_param(dev, "explicit_sense_enable",
+			imx_iim_blow_enable_set, NULL, 0);
+	if (err < 0)
+		return err;
+	err = dev_set_param(dev, "explicit_sense_enable", "0");
+	if (err < 0)
+		return err;
+
+	return devfs_create(cdev);
+}
+
+static struct driver_d imx_iim_driver = {
+	.name	= DRIVERNAME,
+	.probe	= imx_iim_probe,
+};
+
+static struct driver_d imx_iim_bank_driver = {
+	.name	= DRIVERNAME "_bank",
+	.probe	= imx_iim_bank_probe,
+};
+
+static int imx_iim_init(void)
+{
+	register_driver(&imx_iim_driver);
+	register_driver(&imx_iim_bank_driver);
+
+	return 0;
+}
+device_initcall(imx_iim_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
