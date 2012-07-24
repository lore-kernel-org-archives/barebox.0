Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StbAD-0003oN-Hx
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 09:12:38 +0000
Received: by lbbgg6 with SMTP id gg6so9201077lbb.36
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 02:11:59 -0700 (PDT)
Message-ID: <500E66D7.5030002@kiwigrid.com>
Date: Tue, 24 Jul 2012 11:11:51 +0200
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------040609050300070709000700"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add JTAG bitbang driver
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------040609050300070709000700
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



--------------040609050300070709000700
Content-Type: text/x-patch;
 name="0001-Add-JTAG-bitbang-driver.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Add-JTAG-bitbang-driver.patch"

From 01b528ff11f3d0fe63db96b77e40ae9e695afaa7 Mon Sep 17 00:00:00 2001
From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>
Date: Tue, 24 Jul 2012 10:54:55 +0200
Subject: [PATCH] Add JTAG bitbang driver

Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 drivers/Kconfig       |    1 +
 drivers/Makefile      |    1 +
 drivers/misc/Kconfig  |   27 ++++
 drivers/misc/Makefile |    5 +
 drivers/misc/jtag.c   |  395 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/jtag.h        |  113 ++++++++++++++
 6 files changed, 542 insertions(+)
 create mode 100644 drivers/misc/Kconfig
 create mode 100644 drivers/misc/Makefile
 create mode 100644 drivers/misc/jtag.c
 create mode 100644 include/jtag.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index c52c56a..c4d7962 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -12,6 +12,7 @@ source "drivers/video/Kconfig"
 source "drivers/mci/Kconfig"
 source "drivers/clk/Kconfig"
 source "drivers/mfd/Kconfig"
+source "drivers/misc/Kconfig"
 source "drivers/led/Kconfig"
 source "drivers/eeprom/Kconfig"
 source "drivers/input/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 3aefc12..8e692cb 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_LED) += led/
 obj-y	+= eeprom/
 obj-$(CONFIG_PWM) += pwm/
 obj-y	+= input/
+obj-y	+= misc/
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
new file mode 100644
index 0000000..122e065
--- /dev/null
+++ b/drivers/misc/Kconfig
@@ -0,0 +1,27 @@
+#
+# Misc strange devices
+#
+
+menuconfig MISC_DEVICES
+	bool "Misc devices                  "
+	default y
+	---help---
+	  Say Y here to get to see options for device drivers from various
+	  different categories. This option alone does not add any kernel code.
+
+	  If you say N, all options in this submenu will be skipped and disabled.
+
+if MISC_DEVICES
+
+config JTAG
+	tristate "Jtag Bitbang driver"
+	default n
+	---help---
+	Controls jtag chains connected to I/O pins
+
+	This driver can also be built as a module. If so, the module
+	will be called jtag.
+
+	If unsure, say N.
+
+endif # MISC_DEVICES
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
new file mode 100644
index 0000000..b085577
--- /dev/null
+++ b/drivers/misc/Makefile
@@ -0,0 +1,5 @@
+#
+# Makefile for misc devices that really don't fit anywhere else.
+#
+
+obj-$(CONFIG_JTAG)		+= jtag.o
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
new file mode 100644
index 0000000..1bd927b
--- /dev/null
+++ b/drivers/misc/jtag.c
@@ -0,0 +1,395 @@
+/*
+ * drivers/misc/jtag.c - More infos in include/jtag.h
+ *
+ * Written Aug 2009 by Davide Rizzo <elpa.rizzo@gmail.com>
+ *
+ * Ported to barebox Jul 2012 by
+ *       Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+#include <fs.h>
+#include <errno.h>
+#include <linux/list.h>
+#include <jtag.h>
+#include <gpio.h>
+#include <driver.h>
+#include <malloc.h>
+#include <common.h>
+#include <init.h>
+#include <ioctl.h>
+#include <io.h>
+
+#define VERSION_MAJ 1
+#define VERSION_MIN 0
+
+/* Max devices in the jtag chain */
+#define MAX_DEVICES 16
+
+static LIST_HEAD(jtag_device_list);
+
+struct jtag_info {
+	struct jtag_platdata *pdata;
+	struct cdev cdev;
+	unsigned int devices; /* Number of devices found in the jtag chain */
+	struct list_head device_entry;
+	/* Instruction register length of every device in the chain */
+	unsigned int ir_len[];	/* [devices] */
+};
+
+static const unsigned long bypass = 0xFFFFFFFF;
+
+static void pulseTMS0(const struct jtag_platdata *pdata)
+{
+	gpio_set_value(pdata->pin_tms, 0);
+	gpio_set_value(pdata->pin_tclk, 0);
+	gpio_set_value(pdata->pin_tclk, 1);
+}
+
+static void pulseTMS1(const struct jtag_platdata *pdata)
+{
+	gpio_set_value(pdata->pin_tms, 1);
+	gpio_set_value(pdata->pin_tclk, 0);
+	gpio_set_value(pdata->pin_tclk, 1);
+}
+
+static void jtag_reset(const struct jtag_platdata *pdata)
+{
+	gpio_set_value(pdata->pin_tms, 1);
+	gpio_set_value(pdata->pin_tclk, 0);
+	gpio_set_value(pdata->pin_tclk, 1);
+	gpio_set_value(pdata->pin_tclk, 0);
+	gpio_set_value(pdata->pin_tclk, 1);
+	gpio_set_value(pdata->pin_tclk, 0);
+	gpio_set_value(pdata->pin_tclk, 1);
+	gpio_set_value(pdata->pin_tclk, 0);
+	gpio_set_value(pdata->pin_tclk, 1);
+	gpio_set_value(pdata->pin_tclk, 0);
+	gpio_set_value(pdata->pin_tclk, 1);
+}
+
+static void jtag_output(const struct jtag_platdata *pdata,
+	const unsigned long *data, unsigned int bitlen, int notlast)
+{
+	unsigned int a;
+	unsigned long mask;
+	gpio_set_value(pdata->pin_tms, 0);
+	while (bitlen > 0) {
+		for (a = *data++, mask = 0x00000001; mask != 0 && bitlen > 0;
+		      mask <<= 1, bitlen--) {
+			gpio_set_value(pdata->pin_tdo, (a & mask) ? 1 : 0);
+			if ((bitlen == 1) && !notlast)
+				gpio_set_value(pdata->pin_tms, 1);
+			gpio_set_value(pdata->pin_tclk, 0);
+			gpio_set_value(pdata->pin_tclk, 1);
+		}
+	}
+}
+
+static int jtag_ioctl(struct cdev *inode, int cmd, void *arg)
+{
+	int ret = 0;
+	struct jtag_info *info = (struct jtag_info *)inode->priv;
+	int devices = info->devices;
+	struct jtag_cmd *jcmd = (struct jtag_cmd *)arg;
+	struct jtag_platdata *pdata = info->pdata;
+
+	if (_IOC_TYPE(cmd) != JTAG_IOC_MAGIC) return -ENOTTY;
+	if (_IOC_NR(cmd) > JTAG_IOC_MAXNR) return -ENOTTY;
+
+	switch (cmd) {
+
+	case JTAG_GET_DEVICES:
+		/* Returns how many devices found in the chain */
+		ret = info->devices;
+		break;
+
+	case JTAG_GET_ID:
+		/* Returns ID register of selected device */
+		if ((((struct jtag_rd_id *)arg)->device < 0) ||
+			(((struct jtag_rd_id *)arg)->device >= devices)) {
+			ret = -EINVAL;
+			break;
+		}
+		jtag_reset(pdata);
+		pulseTMS0(pdata);
+		pulseTMS1(pdata);
+		pulseTMS0(pdata);
+		pulseTMS0(pdata);
+		while (devices-- > 0) {
+			unsigned long id = 0;
+			pulseTMS0(pdata);
+			if (gpio_get_value(pdata->pin_tdi)) {
+				unsigned long mask;
+				for (id = 1, mask = 0x00000002; (mask != 0);
+				      mask <<= 1) {
+					pulseTMS0(pdata);
+					if (gpio_get_value(pdata->pin_tdi))
+						id |= mask;
+				}
+			}
+			if (devices == ((struct jtag_rd_id *)arg)->device) {
+				((struct jtag_rd_id *)arg)->id = id;
+				ret = 0;
+				break;
+			}
+		}
+		jtag_reset(pdata);
+		break;
+
+	case JTAG_SET_IR_LENGTH:
+		/* Sets up IR length of one device */
+		if ((jcmd->device >= 0) && (jcmd->device < devices))
+			info->ir_len[jcmd->device] = jcmd->bitlen;
+		else
+			ret = -EINVAL;
+		break;
+
+	case JTAG_RESET:
+		/* Resets all JTAG states */
+		jtag_reset(pdata);
+		break;
+
+	case JTAG_IR_WR:
+		/* Writes Instruction Register
+		If device == -1 writes same Instruction Register in all devices
+		If device >= 0 writes Instruction Register in selected device
+		 and loads BYPASS instruction in all others */
+		if ((jcmd->device < -1) || (jcmd->device >= devices)) {
+			ret = -EINVAL;
+			break;
+		}
+		pulseTMS0(pdata);
+		pulseTMS1(pdata);
+		pulseTMS1(pdata);
+		pulseTMS0(pdata);
+		pulseTMS0(pdata);
+		while (devices-- > 0) {
+			if ((jcmd->device == -1) || (jcmd->device == devices))
+				/* Loads desired instruction */
+				jtag_output(pdata, jcmd->data,
+					info->ir_len[devices], devices);
+			else
+				/* Loads BYPASS instruction */
+				jtag_output(pdata, &bypass,
+					info->ir_len[devices], devices);
+		}
+		pulseTMS1(pdata);
+		pulseTMS0(pdata);
+		break;
+
+	case JTAG_DR_WR:
+		/* Writes Data Register of all devices
+		If device == -1 writes same Data Register in all devices
+		If device >= 0 writes Data Register in selected device
+		 and loads BYPASS instruction in all others */
+		if ((jcmd->device < -1) || (jcmd->device >= devices)) {
+			ret = -EINVAL;
+			break;
+		}
+		pulseTMS0(pdata);
+		pulseTMS1(pdata);
+		pulseTMS0(pdata);
+		pulseTMS0(pdata);
+		while (devices-- > 0) {
+			if ((jcmd->device == -1) || (devices == jcmd->device))
+				/* Loads desired data */
+				jtag_output(pdata, jcmd->data, jcmd->bitlen,
+					devices);
+			else
+				/* Loads 1 dummy bit in BYPASS data register */
+				jtag_output(pdata, &bypass, 1, devices);
+		}
+		pulseTMS1(pdata);
+		pulseTMS0(pdata);
+		break;
+
+	case JTAG_DR_RD:
+		/* Reads data register of selected device */
+		if ((jcmd->device < 0) || (jcmd->device >= devices))
+			ret = -EINVAL;
+		else {
+			unsigned long mask;
+			int bitlen = jcmd->bitlen;
+			unsigned long *data = jcmd->data;
+			pulseTMS0(pdata);
+			pulseTMS1(pdata);
+			pulseTMS0(pdata);
+			pulseTMS0(pdata);
+			devices -= (jcmd->device + 1);
+			while (devices-- > 0)
+				pulseTMS0(pdata);
+			while (bitlen > 0) {
+				for (*data = 0, mask = 0x00000001;
+				      (mask != 0) && (bitlen > 0);
+				      mask <<= 1, bitlen--) {
+					if (bitlen == 1)
+						pulseTMS1(pdata);
+					else
+						pulseTMS0(pdata);
+					if (gpio_get_value(pdata->pin_tdi))
+						*data |= mask;
+				}
+				data++;
+			}
+			pulseTMS1(pdata);
+			pulseTMS0(pdata);
+		}
+		break;
+
+	case JTAG_CLK:
+		/* Generates arg clock pulses */
+		gpio_set_value(pdata->pin_tms, 0);
+		while ((*(unsigned int *) arg)--) {
+			gpio_set_value(pdata->pin_tclk, 0);
+			gpio_set_value(pdata->pin_tclk, 1);
+		}
+		break;
+
+	default:
+		ret = -EFAULT;
+	}
+
+	return ret;
+}
+
+struct file_operations jtag_operations = {
+	.ioctl = jtag_ioctl,
+};
+
+static int jtag_probe(struct device_d *pdev)
+{
+	int i, ret;
+	struct jtag_info *info;
+	struct jtag_platdata *pdata = pdev->platform_data;
+
+	/* Setup gpio pins */
+	gpio_direction_output(pdata->pin_tms, 0);
+	gpio_direction_output(pdata->pin_tclk, 1);
+	gpio_direction_output(pdata->pin_tdo, 0);
+	gpio_direction_input(pdata->pin_tdi);
+	if (pdata->use_pin_trst) {
+		/* Keep fixed at 1 because some devices in the chain could
+			not use it, to reset chain use jtag_reset() */
+		gpio_direction_output(pdata->pin_trst, 1);
+	}
+
+	/* Find how many devices in chain */
+	jtag_reset(pdata);
+	pulseTMS0(pdata);
+	pulseTMS1(pdata);
+	pulseTMS1(pdata);
+	pulseTMS0(pdata);
+	pulseTMS0(pdata);
+	gpio_set_value(pdata->pin_tdo, 1);
+	/* Fills all IR with bypass instruction */
+	for (i = 0; i < 32 * MAX_DEVICES; i++)
+		pulseTMS0(pdata);
+	pulseTMS1(pdata);
+	pulseTMS1(pdata);
+	pulseTMS1(pdata);
+	pulseTMS0(pdata);
+	pulseTMS0(pdata);
+	gpio_set_value(pdata->pin_tdo, 0);
+	/* Fills all 1-bit bypass register with 0 */
+	for (i = 0; i < MAX_DEVICES + 2; i++)
+		pulseTMS0(pdata);
+	gpio_set_value(pdata->pin_tdo, 1);
+	/* Counts chain's bit length */
+	for (i = 0; i < MAX_DEVICES + 1; i++) {
+		pulseTMS0(pdata);
+		if (gpio_get_value(pdata->pin_tdi))
+			break;
+	}
+	dev_notice(pdev, "%d devices found in chain\n", i);
+
+	/* Allocate structure with chain specific infos */
+	info = xzalloc(sizeof(struct jtag_info) + sizeof(info->ir_len[0]) * i);
+	if (!info) {
+		dev_err(pdev, "out of kernel memory\n");
+		return -ENOMEM;
+	}
+	info->devices = i;
+	INIT_LIST_HEAD(&info->device_entry);
+	list_add(&info->device_entry, &jtag_device_list);
+	info->pdata = pdata;
+	pdev->priv = info;
+
+	info->cdev.name = JTAG_NAME;
+	info->cdev.dev = pdev;
+	info->cdev.ops = &jtag_operations;
+	info->cdev.priv = info;
+	ret = devfs_create(&info->cdev);
+
+	if (ret)
+		goto fail_devfs_create;
+
+	return 0;
+
+fail_devfs_create:
+	pdev->priv = NULL;
+	free(info);
+	return ret;
+}
+
+static void jtag_info(struct device_d *pdev)
+{
+	int dn, ret;
+	struct jtag_rd_id jid;
+	struct jtag_info *info = pdev->priv;
+
+	printf(" JTAG:\n");
+	printf("  Devices found: %d\n", info->devices);
+	for(dn = 0; dn < info->devices; dn++) {
+		jid.device = dn;
+		ret = jtag_ioctl(&info->cdev, JTAG_GET_ID, &jid);
+		printf("  Device number: %d\n", dn);
+		if ( ret == -1 )
+			printf("   JTAG_GET_ID failed: %s\n", strerror(errno));
+		else
+			printf("   ID: 0x%lX\n", jid.id);
+	}
+}
+
+static void jtag_remove(struct device_d *pdev)
+{
+	struct jtag_info *info = (struct jtag_info *) pdev->priv;
+
+	list_del(&info->device_entry);
+	devfs_remove(&info->cdev);
+	pdev->priv = NULL;
+	free(info);
+	dev_notice(pdev, "Device removed\n");
+}
+
+static struct driver_d jtag_driver = {
+	.name = JTAG_NAME,
+	.probe = jtag_probe,
+	.remove = jtag_remove,
+	.info = jtag_info,
+};
+
+static int jtag_module_init(void)
+{
+	return register_driver(&jtag_driver);
+}
+
+device_initcall(jtag_module_init);
+
+MODULE_AUTHOR("Davide Rizzo <elpa.rizzo@gmail.com>");
+MODULE_AUTHOR("Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>");
+MODULE_DESCRIPTION("JTAG bitbang driver");
+MODULE_LICENSE("GPL");
diff --git a/include/jtag.h b/include/jtag.h
new file mode 100644
index 0000000..d8f0606
--- /dev/null
+++ b/include/jtag.h
@@ -0,0 +1,113 @@
+/*
+ * include/linux/jtag.h
+ *
+ * Written Aug 2009 by Davide Rizzo <elpa.rizzo@gmail.com>
+ * Ported to barebox Jul 2012 by
+ *       Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+/*
+ * This driver manages one or more jtag chains controlled by host pins.
+ * Jtag chains must be defined during setup using jtag_platdata structs.
+ * All operations must be done from user programs using ioctls to /dev/jtag
+ * Typical operation sequence is:
+ * - open() the device (normally /dev/jtag)
+ * - ioctl JTAG_GET_DEVICES reads how many devices in the chain
+ * (repeat for each chip in the chain)
+ * - ioctl JTAG_GET_ID identifies the chip
+ * - ioctl JTAG_SET_IR_LENGTH sets the instruction register length
+ * Before accessing the data registers, instruction registers' lenghtes
+ *  MUST be programmed for all chips.
+ * After this initialization, you can execute JTAG_IR_WR, JTAG_DR_RD, JTAG_DR_WR
+ *  commands in any sequence.
+ */
+
+#ifndef __JTAG_H__
+#define __JTAG_H__
+
+#ifdef __KERNEL__
+/* Controller's pin_tdi must be connected to last device's pin_tdo */
+/* Controller's pin_tdo must be connected to first device's pin_tdi */
+struct jtag_platdata {
+	unsigned int pin_tclk;
+	unsigned int pin_tms;
+	unsigned int pin_tdi;
+	unsigned int pin_tdo;
+	unsigned int pin_trst;
+	int use_pin_trst;
+};
+#endif /* __KERNEL__ */
+
+#define JTAG_NAME "jtag"
+
+/* structures used for passing arguments to ioctl */
+
+struct jtag_rd_id {
+	int device; /* Device in the chain */
+	unsigned long id;
+};
+
+struct jtag_cmd {
+	int device; /* Device in the chain (-1 = all devices) */
+	unsigned int bitlen; /* Bit length of the register to be transfered */
+	unsigned long *data; /* Data to be transfered */
+};
+
+/* Use 'j' as magic number */
+#define JTAG_IOC_MAGIC		'j'
+
+/* ioctl commands */
+
+/* Resets jtag chain status, arg is ignored */
+#define JTAG_RESET		_IO(JTAG_IOC_MAGIC, 0)
+
+/* Returns the number of devices in the jtag chain, arg is ignored. */
+#define JTAG_GET_DEVICES	_IO(JTAG_IOC_MAGIC, 1)
+
+/* arg must point to a jtag_rd_id structure.
+   Fills up the id field with ID of selected device */
+#define JTAG_GET_ID		_IOR(JTAG_IOC_MAGIC, 2, struct jtag_rd_id)
+
+/* arg must point to a struct jtag_cmd.
+   Programs the Instruction Register length of specified device at bitlen value.
+   *data is ignored. */
+#define JTAG_SET_IR_LENGTH	_IOW(JTAG_IOC_MAGIC, 3, struct jtag_rd_id)
+
+/* arg must point to a struct jtag_cmd.
+   Writes *data in the Instruction Register of selected device, and BYPASS
+    instruction into Instruction Registers of all other devices in the chain.
+   If device == -1, the Instruction Registers of all devices are programmed
+    to the same value.
+   bitlen is always ignored, before using this command you have to program all
+    Instruction Register's lengthes with JTAG_SET_IR_LENGTH command. */
+#define JTAG_IR_WR		_IOW(JTAG_IOC_MAGIC, 4, struct jtag_cmd)
+
+/* arg must point to a struct jtag_cmd.
+   Reads data register of selected device, with length bitlen */
+#define JTAG_DR_RD		_IOR(JTAG_IOC_MAGIC, 5, struct jtag_cmd)
+
+/* arg must point to a struct jtag_cmd.
+   Writes data register of selected device, with length bitlen.
+   If device == -1, writes same data on all devices. */
+#define JTAG_DR_WR		_IOW(JTAG_IOC_MAGIC, 6, struct jtag_cmd)
+
+/* Generates arg pulses on TCLK pin */
+#define JTAG_CLK		_IOW(JTAG_IOC_MAGIC, 7, unsigned int)
+
+#define JTAG_IOC_MAXNR		9
+
+#endif /* __JTAG_H__ */
-- 
1.7.9.5


--------------040609050300070709000700
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------040609050300070709000700--
