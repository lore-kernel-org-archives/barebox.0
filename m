Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSp1T-0006ON-3v
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 13:05:02 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5BD2C104E9B0
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2012 14:11:56 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 29 Oct 2012 14:02:36 +0100
Message-Id: <1351515759-25548-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351515759-25548-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121029124609.GG28904@game.jcrosoft.org>
 <1351515759-25548-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] add 1-wire support
To: barebox@lists.infradead.org

export for each device via param
the familly id (fid)
the id
the full reg_num

so for simple 64bit memory rom(ds2401/ds2411/ds1990*) no need driver.

Based on linux implementation, cleaned and re-implement the master/slave
support to use the device/driver model correctly.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/Kconfig             |    1 +
 drivers/Makefile            |    1 +
 drivers/w1/Kconfig          |   14 +
 drivers/w1/Makefile         |    6 +
 drivers/w1/masters/Kconfig  |    7 +
 drivers/w1/masters/Makefile |    4 +
 drivers/w1/slaves/Kconfig   |    7 +
 drivers/w1/slaves/Makefile  |    4 +
 drivers/w1/w1.c             |  621 +++++++++++++++++++++++++++++++++++++++++++
 drivers/w1/w1.h             |  152 +++++++++++
 10 files changed, 817 insertions(+)
 create mode 100644 drivers/w1/Kconfig
 create mode 100644 drivers/w1/Makefile
 create mode 100644 drivers/w1/masters/Kconfig
 create mode 100644 drivers/w1/masters/Makefile
 create mode 100644 drivers/w1/slaves/Kconfig
 create mode 100644 drivers/w1/slaves/Makefile
 create mode 100644 drivers/w1/w1.c
 create mode 100644 drivers/w1/w1.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index d0b5e3a..945fe02 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -21,5 +21,6 @@ source "drivers/pwm/Kconfig"
 source "drivers/dma/Kconfig"
 source "drivers/gpio/Kconfig"
 source "drivers/of/Kconfig"
+source "drivers/w1/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 2a1f8b0..e6cdf39 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -21,3 +21,4 @@ obj-y	+= dma/
 obj-y  += watchdog/
 obj-y	+= gpio/
 obj-$(CONFIG_OFDEVICE) += of/
+obj-$(CONFIG_W1) += w1/
diff --git a/drivers/w1/Kconfig b/drivers/w1/Kconfig
new file mode 100644
index 0000000..ab34997
--- /dev/null
+++ b/drivers/w1/Kconfig
@@ -0,0 +1,14 @@
+menuconfig W1
+	bool "Dallas's 1-wire support"
+	---help---
+	  Dallas' 1-wire bus is useful to connect slow 1-pin devices
+	  such as iButtons and thermal sensors.
+
+	  If you want W1 support, you should say Y here.
+
+if W1
+
+source drivers/w1/masters/Kconfig
+source drivers/w1/slaves/Kconfig
+
+endif # W1
diff --git a/drivers/w1/Makefile b/drivers/w1/Makefile
new file mode 100644
index 0000000..3e36d2f
--- /dev/null
+++ b/drivers/w1/Makefile
@@ -0,0 +1,6 @@
+#
+# Makefile for the Dallas's 1-wire bus.
+#
+
+obj-$(CONFIG_W1)	+= w1.o
+obj-y			+= masters/ slaves/
diff --git a/drivers/w1/masters/Kconfig b/drivers/w1/masters/Kconfig
new file mode 100644
index 0000000..86aa8df
--- /dev/null
+++ b/drivers/w1/masters/Kconfig
@@ -0,0 +1,7 @@
+#
+# 1-wire bus master configuration
+#
+
+menu "1-wire Bus Masters"
+
+endmenu
diff --git a/drivers/w1/masters/Makefile b/drivers/w1/masters/Makefile
new file mode 100644
index 0000000..ed1b9d9
--- /dev/null
+++ b/drivers/w1/masters/Makefile
@@ -0,0 +1,4 @@
+#
+# Makefile for 1-wire bus master drivers.
+#
+
diff --git a/drivers/w1/slaves/Kconfig b/drivers/w1/slaves/Kconfig
new file mode 100644
index 0000000..f35eedf
--- /dev/null
+++ b/drivers/w1/slaves/Kconfig
@@ -0,0 +1,7 @@
+#
+# 1-wire slaves configuration
+#
+
+menu "1-wire Slaves"
+
+endmenu
diff --git a/drivers/w1/slaves/Makefile b/drivers/w1/slaves/Makefile
new file mode 100644
index 0000000..ac9a5a7
--- /dev/null
+++ b/drivers/w1/slaves/Makefile
@@ -0,0 +1,4 @@
+#
+# Makefile for the Dallas's 1-wire slaves.
+#
+
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
new file mode 100644
index 0000000..11b8320
--- /dev/null
+++ b/drivers/w1/w1.c
@@ -0,0 +1,621 @@
+/*
+ * Copyright (c) 2004 Evgeniy Polyakov <zbr@ioremap.net>
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+
+#include "w1.h"
+
+static LIST_HEAD(w1_buses);
+
+static void w1_pre_write(struct w1_bus *bus);
+static void w1_post_write(struct w1_bus *bus);
+
+static void w1_delay(unsigned long usecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout_non_interruptible(start, usecs * USECOND));
+}
+
+static u8 w1_crc8_table[] = {
+	0, 94, 188, 226, 97, 63, 221, 131, 194, 156, 126, 32, 163, 253, 31, 65,
+	157, 195, 33, 127, 252, 162, 64, 30, 95, 1, 227, 189, 62, 96, 130, 220,
+	35, 125, 159, 193, 66, 28, 254, 160, 225, 191, 93, 3, 128, 222, 60, 98,
+	190, 224, 2, 92, 223, 129, 99, 61, 124, 34, 192, 158, 29, 67, 161, 255,
+	70, 24, 250, 164, 39, 121, 155, 197, 132, 218, 56, 102, 229, 187, 89, 7,
+	219, 133, 103, 57, 186, 228, 6, 88, 25, 71, 165, 251, 120, 38, 196, 154,
+	101, 59, 217, 135, 4, 90, 184, 230, 167, 249, 27, 69, 198, 152, 122, 36,
+	248, 166, 68, 26, 153, 199, 37, 123, 58, 100, 134, 216, 91, 5, 231, 185,
+	140, 210, 48, 110, 237, 179, 81, 15, 78, 16, 242, 172, 47, 113, 147, 205,
+	17, 79, 173, 243, 112, 46, 204, 146, 211, 141, 111, 49, 178, 236, 14, 80,
+	175, 241, 19, 77, 206, 144, 114, 44, 109, 51, 209, 143, 12, 82, 176, 238,
+	50, 108, 142, 208, 83, 13, 239, 177, 240, 174, 76, 18, 145, 207, 45, 115,
+	202, 148, 118, 40, 171, 245, 23, 73, 8, 86, 180, 234, 105, 55, 213, 139,
+	87, 9, 235, 181, 54, 104, 138, 212, 149, 203, 41, 119, 244, 170, 72, 22,
+	233, 183, 85, 11, 136, 214, 52, 106, 43, 117, 151, 201, 74, 20, 246, 168,
+	116, 42, 200, 150, 21, 75, 169, 247, 182, 232, 10, 84, 215, 137, 107, 53
+};
+
+u8 w1_calc_crc8(u8 * data, int len)
+{
+	u8 crc = 0;
+
+	while (len--)
+		crc = w1_crc8_table[crc ^ *data++];
+
+	return crc;
+}
+
+/**
+ * Issues a reset bus sequence.
+ *
+ * @param  dev The bus master pointer
+ * @return     0=Device present, 1=No device present or error
+ */
+int w1_reset_bus(struct w1_bus *bus)
+{
+	return bus->reset_bus(bus) & 0x1;
+}
+
+static u8 w1_soft_reset_bus(struct w1_bus *bus)
+{
+	int result;
+
+	bus->write_bit(bus, 0);
+	/* minimum 480, max ? us
+	 * be nice and sleep, except 18b20 spec lists 960us maximum,
+	 * so until we can sleep with microsecond accuracy, spin.
+	 * Feel free to come up with some other way to give up the
+	 * cpu for such a short amount of time AND get it back in
+	 * the maximum amount of time.
+	 */
+	w1_delay(500);
+	bus->write_bit(bus, 1);
+	w1_delay(70);
+
+	result = bus->read_bit(bus) & 0x1;
+	/* minmum 70 (above) + 430 = 500 us
+	 * There aren't any timing requirements between a reset and
+	 * the following transactions.  Sleeping is safe here.
+	 */
+	/* w1_delay(430); min required time */
+	mdelay(1);
+
+	return result;
+}
+
+/**
+ * Generates a write-0 or write-1 cycle and samples the level.
+ */
+static u8 w1_touch_bit(struct w1_bus *bus, int bit)
+{
+	return bus->touch_bit(bus, bit);
+}
+
+/**
+ * Generates a write-0 or write-1 cycle.
+ * Only call if dev->bus_master->touch_bit is NULL
+ */
+static void w1_write_bit(struct w1_bus *bus, int bit)
+{
+	if (bit) {
+		bus->write_bit(bus, 0);
+		w1_delay(6);
+		bus->write_bit(bus, 1);
+		w1_delay(64);
+	} else {
+		bus->write_bit(bus, 0);
+		w1_delay(60);
+		bus->write_bit(bus, 1);
+		w1_delay(10);
+	}
+}
+
+/**
+ * Reads 8 bits.
+ *
+ * @param dev     the master device
+ * @return        the byte read
+ */
+u8 w1_read_8(struct w1_bus *bus)
+{
+	return bus->read_byte(bus);
+}
+
+static u8 w1_soft_read_8(struct w1_bus *bus)
+{
+	int i;
+	u8 res = 0;
+
+	for (i = 0; i < 8; ++i)
+		res |= (w1_touch_bit(bus, 1) << i);
+
+	return res;
+}
+
+/**
+ * Writes a series of bytes.
+ *
+ * @param dev     the master device
+ * @param buf     pointer to the data to write
+ * @param len     the number of bytes to write
+ */
+void w1_write_block(struct w1_bus *bus, const u8 *buf, int len)
+{
+	int i;
+
+	if (bus->write_block) {
+		w1_pre_write(bus);
+		bus->write_block(bus, buf, len);
+	} else {
+		for (i = 0; i < len; ++i)
+			w1_write_8(bus, buf[i]); /* calls w1_pre_write */
+	}
+	w1_post_write(bus);
+}
+
+/**
+ * Touches a series of bytes.
+ *
+ * @param dev     the master device
+ * @param buf     pointer to the data to write
+ * @param len     the number of bytes to write
+ */
+void w1_touch_block(struct w1_bus *bus, u8 *buf, int len)
+{
+	int i, j;
+	u8 tmp;
+
+	for (i = 0; i < len; ++i) {
+		tmp = 0;
+		for (j = 0; j < 8; ++j) {
+			if (j == 7)
+				w1_pre_write(bus);
+			tmp |= w1_touch_bit(bus, (buf[i] >> j) & 0x1) << j;
+		}
+
+		buf[i] = tmp;
+	}
+}
+
+/**
+ * Generates a write-1 cycle and samples the level.
+ * Only call if dev->bus_master->touch_bit is NULL
+ */
+static u8 w1_read_bit(struct w1_bus *bus)
+{
+	int result;
+
+	/* sample timing is critical here */
+	bus->write_bit(bus, 0);
+	w1_delay(6);
+	bus->write_bit(bus, 1);
+	w1_delay(9);
+
+	result = bus->read_bit(bus);
+
+	w1_delay(55);
+
+	return result & 0x1;
+}
+
+/**
+ * Does a triplet - used for searching ROM addresses.
+ * Return bits:
+ *  bit 0 = id_bit
+ *  bit 1 = comp_bit
+ *  bit 2 = dir_taken
+ * If both bits 0 & 1 are set, the search should be restarted.
+ *
+ * @param dev     the master device
+ * @param bdir    the bit to write if both id_bit and comp_bit are 0
+ * @return        bit fields - see above
+ */
+u8 w1_triplet(struct w1_bus *bus, int bdir)
+{
+	return bus->triplet(bus, bdir);
+}
+
+static u8 w1_soft_triplet(struct w1_bus *bus, u8 bdir)
+{
+	u8 id_bit   = w1_touch_bit(bus, 1);
+	u8 comp_bit = w1_touch_bit(bus, 1);
+	u8 retval;
+
+	if (id_bit && comp_bit)
+		return 0x03;  /* error */
+
+	if (!id_bit && !comp_bit) {
+		/* Both bits are valid, take the direction given */
+		retval = bdir ? 0x04 : 0;
+	} else {
+		/* Only one bit is valid, take that direction */
+		bdir = id_bit;
+		retval = id_bit ? 0x05 : 0x02;
+	}
+
+	w1_touch_bit(bus, bdir);
+	return retval;
+}
+
+static u8 w1_soft_touch_bit(struct w1_bus *bus, u8 bit)
+{
+	if (bit)
+		return w1_read_bit(bus);
+
+	w1_write_bit(bus, 0);
+	return 0;
+}
+
+/**
+ * Pre-write operation, currently only supporting strong pullups.
+ * Program the hardware for a strong pullup, if one has been requested and
+ * the hardware supports it.
+ *
+ * @param dev     the master device
+ */
+static void w1_pre_write(struct w1_bus *bus)
+{
+	if (!bus->set_pullup)
+		return;
+
+	if (bus->pullup_duration && bus->enable_pullup)
+		bus->set_pullup(bus, bus->pullup_duration);
+}
+
+/**
+ * Post-write operation, currently only supporting strong pullups.
+ * If a strong pullup was requested, clear it if the hardware supports
+ * them, or execute the delay otherwise, in either case clear the request.
+ *
+ * @param dev     the master device
+ */
+static void w1_post_write(struct w1_bus *bus)
+{
+	if (!bus->pullup_duration)
+		return;
+
+	if (bus->enable_pullup && bus->set_pullup)
+		bus->set_pullup(bus, 0);
+	else
+		mdelay(bus->pullup_duration);
+	bus->pullup_duration = 0;
+}
+
+/**
+ * Writes 8 bits.
+ *
+ * @param dev     the master device
+ * @param byte    the byte to write
+ */
+void w1_write_8(struct w1_bus *bus, u8 byte)
+{
+	if (bus->write_byte) {
+		w1_pre_write(bus);
+		bus->write_byte(bus, byte);
+	} else {
+		int i;
+
+		for (i = 0; i < 8; ++i) {
+			if (i == 7)
+				w1_pre_write(bus);
+			w1_touch_bit(bus, (byte >> i) & 0x1);
+		}
+	}
+	w1_post_write(bus);
+}
+
+/**
+ * Reads a series of bytes.
+ *
+ * @param dev     the master device
+ * @param buf     pointer to the buffer to fill
+ * @param len     the number of bytes to read
+ * @return        the number of bytes read
+ */
+u8 w1_read_block(struct w1_bus *bus, u8 *buf, int len)
+{
+	return bus->read_block(bus, buf, len);
+}
+
+static u8 w1_soft_read_block(struct w1_bus *bus, u8 *buf, int len)
+{
+	int i;
+
+	for (i = 0; i < len; ++i)
+		buf[i] = w1_read_8(bus);
+	return len;
+}
+
+/**
+ * Resets the bus and then selects the slave by sending either a skip rom
+ * or a rom match.
+ * The w1 master lock must be held.
+ *
+ * @param sl	the slave to select
+ * @return 	0=success, anything else=error
+ */
+int w1_reset_select_slave(struct w1_device *dev)
+{
+	struct w1_bus *bus = dev->bus;
+
+	if (w1_reset_bus(bus))
+		return -1;
+
+	if (bus->slave_count == 1)
+		w1_write_8(bus, W1_SKIP_ROM);
+	else {
+		u8 match[9] = {W1_MATCH_ROM, };
+		u64 rn = le64_to_cpu(*((u64*)&dev->reg_num));
+
+		memcpy(&match[1], &rn, 8);
+		w1_write_block(bus, match, 9);
+	}
+	return 0;
+}
+
+#define to_w1_device(d)	container_of(d, struct w1_device, dev)
+#define to_w1_driver(d) container_of(d, struct w1_driver, drv)
+
+static int w1_bus_match(struct device_d *_dev, struct driver_d *_drv)
+{
+	struct w1_device *dev = to_w1_device(_dev);
+	struct w1_driver *drv = to_w1_driver(_drv);
+
+	return !(drv->fid == dev->fid);
+}
+
+static int w1_bus_probe(struct device_d *_dev)
+{
+	struct w1_driver *drv = to_w1_driver(_dev->driver);
+	struct w1_device *dev = to_w1_device(_dev);
+
+	return drv->probe(dev);
+}
+
+static void w1_bus_remove(struct device_d *_dev)
+{
+	struct w1_driver *drv = to_w1_driver(_dev->driver);
+	struct w1_device *dev = to_w1_device(_dev);
+
+	return drv->remove(dev);
+}
+
+struct bus_type w1_bustype= {
+	.name = "w1_bus",
+	.match = w1_bus_match,
+	.probe = w1_bus_probe,
+	.remove = w1_bus_remove,
+};
+
+static int w1_device_register(struct w1_bus *bus, struct w1_device *dev)
+{
+	char str[18];
+	int ret;
+
+	sprintf(dev->dev.name, "w1-%x-", dev->fid);
+	dev->dev.id = DEVICE_ID_DYNAMIC;
+	dev->dev.bus = &w1_bustype;
+	dev->bus = bus;
+
+	dev->dev.parent = &bus->dev;
+	dev_add_child(dev->dev.parent, &dev->dev);
+
+	ret = register_device(&dev->dev);
+	if (ret)
+		return ret;
+
+	sprintf(str, "0x%x", dev->fid);
+	dev_add_param_fixed(&dev->dev, "fid", str);
+	sprintf(str, "0x%llx", dev->id);
+	dev_add_param_fixed(&dev->dev, "id", str);
+	sprintf(str, "0x%llx", dev->reg_num);
+	dev_add_param_fixed(&dev->dev, "reg_num", str);
+
+	return ret;
+}
+
+int w1_driver_register(struct w1_driver *drv)
+{
+	drv->drv.bus = &w1_bustype;
+
+	if (drv->probe)
+		drv->drv.probe = w1_bus_probe;
+	if (drv->remove)
+		drv->drv.remove = w1_bus_remove;
+
+	return register_driver(&drv->drv);
+}
+
+void w1_found(struct w1_bus *bus, u64 rn)
+{
+	struct w1_device *dev = xzalloc(sizeof(*dev));
+	u64 tmp = be64_to_cpu(rn);
+
+	dev->reg_num = rn;
+	dev->fid = tmp >> 56;
+	dev->id = (tmp >> 8) & 0xffffffffffff;
+	dev->crc = tmp & 0xff;
+
+	dev_dbg(&bus->dev, "%s:  familly = 0x%x, id = 0x%llx, crc = 0x%x\n",
+		__func__, dev->fid, dev->id, dev->crc);
+
+	if (dev->crc != w1_calc_crc8((u8 *)&rn, 7)) {
+		dev_err(&bus->dev, "0x%llx crc error\n", rn);
+		return;
+	}
+
+	w1_device_register(bus, dev);
+}
+
+/**
+ * Performs a ROM Search & registers any devices found.
+ * The 1-wire search is a simple binary tree search.
+ * For each bit of the address, we read two bits and write one bit.
+ * The bit written will put to sleep all devies that don't match that bit.
+ * When the two reads differ, the direction choice is obvious.
+ * When both bits are 0, we must choose a path to take.
+ * When we can scan all 64 bits without having to choose a path, we are done.
+ *
+ * See "Application note 187 1-wire search algorithm" at www.maxim-ic.com
+ *
+ * @dev        The master device to search
+ * @cb         Function to call when a device is found
+ */
+static void w1_search(struct w1_bus *bus, u8 search_type)
+{
+	u64 last_rn, rn, tmp64;
+	int i, slave_count = 0;
+	int last_zero, last_device;
+	int search_bit, desc_bit;
+	u8  triplet_ret = 0;
+
+	search_bit = 0;
+	rn = last_rn = 0;
+	last_device = 0;
+	last_zero = -1;
+
+	desc_bit = 64;
+
+	while ( !last_device && (slave_count++ < bus->max_slave_count) ) {
+		last_rn = rn;
+		rn = 0;
+
+		/*
+		 * Reset bus and all 1-wire device state machines
+		 * so they can respond to our requests.
+		 *
+		 * Return 0 - device(s) present, 1 - no devices present.
+		 */
+		if (w1_reset_bus(bus)) {
+			dev_dbg(&bus->dev, "No devices present on the wire.\n");
+			break;
+		}
+
+		/* Do fast search on single slave bus */
+		if (bus->max_slave_count == 1) {
+			int rv;
+			w1_write_8(bus, W1_READ_ROM);
+			rv = w1_read_block(bus, (u8 *)&rn, 8);
+
+			if (rv == 8 && rn)
+				w1_found(bus, rn);
+
+			break;
+		}
+
+		/* Start the search */
+		w1_write_8(bus, search_type);
+		for (i = 0; i < 64; ++i) {
+			/* Determine the direction/search bit */
+			if (i == desc_bit)
+				search_bit = 1;	  /* took the 0 path last time, so take the 1 path */
+			else if (i > desc_bit)
+				search_bit = 0;	  /* take the 0 path on the next branch */
+			else
+				search_bit = ((last_rn >> i) & 0x1);
+
+			/** Read two bits and write one bit */
+			triplet_ret = w1_triplet(bus, search_bit);
+
+			/* quit if no device responded */
+			if ( (triplet_ret & 0x03) == 0x03 )
+				break;
+
+			/* If both directions were valid, and we took the 0 path... */
+			if (triplet_ret == 0)
+				last_zero = i;
+
+			/* extract the direction taken & update the device number */
+			tmp64 = (triplet_ret >> 2);
+			rn |= (tmp64 << i);
+		}
+
+		if ( (triplet_ret & 0x03) != 0x03 ) {
+			if ( (desc_bit == last_zero) || (last_zero < 0))
+				last_device = 1;
+			desc_bit = last_zero;
+			w1_found(bus, rn);
+		}
+	}
+
+	w1_reset_bus(bus);
+}
+
+int w1_bus_register(struct w1_bus *bus)
+{
+	int ret;
+
+	/* validate minimum functionality */
+	if (!(bus->touch_bit && bus->reset_bus) &&
+	    !(bus->write_bit && bus->read_bit)) {
+		pr_err("w1_bus_register: invalid function set\n");
+		return -EINVAL;
+	}
+	/* While it would be electrically possible to make a device that
+	 * generated a strong pullup in bit bang mode, only hardware that
+	 * controls 1-wire time frames are even expected to support a strong
+	 * pullup.  w1_io.c would need to support calling set_pullup before
+	 * the last write_bit operation of a w1_write_8 which it currently
+	 * doesn't.
+	 */
+	if (!bus->touch_bit && bus->set_pullup) {
+		pr_err("w1_add_bus_device: set_pullup requires touch_bit, disabling\n");
+		bus->set_pullup = NULL;
+	}
+
+	if (!bus->reset_bus)
+		bus->reset_bus = w1_soft_reset_bus;
+
+	if (!bus->touch_bit)
+		bus->touch_bit = w1_soft_touch_bit;
+
+	if (!bus->read_block)
+		bus->read_block = w1_soft_read_block;
+
+	if (!bus->read_byte)
+		bus->read_byte = w1_soft_read_8;
+
+	if (!bus->triplet)
+		bus->triplet = w1_soft_triplet;
+
+	if (!bus->max_slave_count)
+		bus->max_slave_count = 10;
+
+	list_add_tail(&bus->list, &w1_buses);
+
+	strcpy(bus->dev.name, "w1_bus");
+	bus->dev.id = DEVICE_ID_DYNAMIC;
+
+	bus->dev.parent = bus->parent;
+	if (bus->parent)
+		dev_add_child(bus->parent, &bus->dev);
+
+	ret = register_device(&bus->dev);
+	if (ret)
+		return ret;
+
+	w1_search(bus, W1_SEARCH);
+
+	return 0;
+}
+
+static int w1_bus_init(void)
+{
+	return bus_register(&w1_bustype);
+}
+pure_initcall(w1_bus_init);
diff --git a/drivers/w1/w1.h b/drivers/w1/w1.h
new file mode 100644
index 0000000..1373f69
--- /dev/null
+++ b/drivers/w1/w1.h
@@ -0,0 +1,152 @@
+/*
+ *	w1.h
+ *
+ * Copyright (c) 2004 Evgeniy Polyakov <zbr@ioremap.net>
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+ */
+
+#ifndef __W1_H
+#define __W1_H
+
+#include <common.h>
+#include <driver.h>
+
+struct w1_device {
+	u64	reg_num;
+	u8	fid;
+	u64	id;
+	u8	crc;
+
+	struct w1_bus	*bus;
+	struct device_d dev;
+};
+
+struct w1_driver {
+	u8	fid;
+	u64	id;
+
+	int	(*probe) (struct w1_device *dev);
+	void	(*remove) (struct w1_device *dev);
+	struct driver_d drv;
+};
+
+int w1_driver_register(struct w1_driver *drv);
+
+extern struct bus_type w1_bustype;
+
+#define W1_MAXNAMELEN		32
+
+#define W1_SEARCH		0xF0
+#define W1_ALARM_SEARCH		0xEC
+#define W1_CONVERT_TEMP		0x44
+#define W1_SKIP_ROM		0xCC
+#define W1_READ_SCRATCHPAD	0xBE
+#define W1_READ_ROM		0x33
+#define W1_READ_PSUPPLY		0xB4
+#define W1_MATCH_ROM		0x55
+#define W1_RESUME_CMD		0xA5
+
+#define W1_SLAVE_ACTIVE		0
+
+/**
+ * Note: read_bit and write_bit are very low level functions and should only
+ * be used with hardware that doesn't really support 1-wire operations,
+ * like a parallel/serial port.
+ * Either define read_bit and write_bit OR define, at minimum, touch_bit and
+ * reset_bus.
+ */
+struct w1_bus
+{
+	struct device_d	dev;
+	struct device_d	*parent;
+
+	/**
+	 * Sample the line level
+	 * @return the level read (0 or 1)
+	 */
+	u8		(*read_bit)(struct w1_bus *);
+
+	/** Sets the line level */
+	void		(*write_bit)(struct w1_bus *, u8);
+
+	/**
+	 * touch_bit is the lowest-level function for devices that really
+	 * support the 1-wire protocol.
+	 * touch_bit(0) = write-0 cycle
+	 * touch_bit(1) = write-1 / read cycle
+	 * @return the bit read (0 or 1)
+	 */
+	u8		(*touch_bit)(struct w1_bus *, u8);
+
+	/**
+	 * Reads a bytes. Same as 8 touch_bit(1) calls.
+	 * @return the byte read
+	 */
+	u8		(*read_byte)(struct w1_bus *);
+
+	/**
+	 * Writes a byte. Same as 8 touch_bit(x) calls.
+	 */
+	void		(*write_byte)(struct w1_bus *, u8);
+
+	/**
+	 * Same as a series of read_byte() calls
+	 * @return the number of bytes read
+	 */
+	u8		(*read_block)(struct w1_bus *, u8 *, int);
+
+	/** Same as a series of write_byte() calls */
+	void		(*write_block)(struct w1_bus *, const u8 *, int);
+
+	/**
+	 * Combines two reads and a smart write for ROM searches
+	 * @return bit0=Id bit1=comp_id bit2=dir_taken
+	 */
+	u8		(*triplet)(struct w1_bus *, u8);
+
+	/**
+	 * long write-0 with a read for the presence pulse detection
+	 * @return -1=Error, 0=Device present, 1=No device present
+	 */
+	u8		(*reset_bus)(struct w1_bus *);
+
+	/**
+	 * Put out a strong pull-up pulse of the specified duration.
+	 * @return -1=Error, 0=completed
+	 */
+	u8		(*set_pullup)(struct w1_bus *, int);
+
+	/** 5V strong pullup enabled flag, 1 enabled, zero disabled. */
+	int		enable_pullup;
+	/** 5V strong pullup duration in milliseconds, zero disabled. */
+	int		pullup_duration;
+
+	int		max_slave_count, slave_count;
+
+	void		*data;
+	struct list_head list;
+};
+
+u8 w1_read_block(struct w1_bus *bus, u8 *buf, int len);
+void w1_write_block(struct w1_bus *bus, const u8 *buf, int len);
+void w1_touch_block(struct w1_bus *bus, u8 *buf, int len);
+u8 w1_triplet(struct w1_bus *bus, int bdir);
+u8 w1_read_8(struct w1_bus *bus);
+void w1_write_8(struct w1_bus *bus, u8 byte);
+int w1_reset_select_slave(struct w1_device *dev);
+int w1_reset_bus(struct w1_bus *bus);
+u8 w1_calc_crc8(u8 * data, int len);
+
+int w1_bus_register(struct w1_bus *bus);
+
+#endif /* __W1_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
