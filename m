Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxlm-0007Ek-9K
 for barebox@lists.infradead.org; Fri, 11 Oct 2019 16:28:01 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Oct 2019 18:27:50 +0200
Message-Id: <20191011162753.17100-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/4] mfd: add basic Super I/O chip helpers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Super I/O chips are ICs common to x86 that are used for interfacing
to low-bandwidth peripherals. They often contain serial ports, watchdog
timers and hardware monitoring units.

They are usually addressable via one of two I/O port pairs, either
0x2e-0x2f or 0x4e-0x4f, but they don't typically respond to reads from
their range unless a device-specific 'password' has been poked in.
After this is done, they are read and written in the same manner however.

On Linux, these devices aren't subject to any device/driver model.
Each driver for some function (e.g. watchdog or GPIO) duplicates the
device probe in the module_init and board-specific configuration
is handled via module parameters.

Lets do it a bit fancier in barebox and add a helper to register chips
and a regmap for the control and configuration registers as well as a
helper to register child devices for each function contained within the
Super I/O chip.
Board-specific configuration, e.g. which pin to use as a watchdog reset,
can then be realized using barebox device-specific parameters.

The regmap will be more of a debugging aid, however.
For ease of porting from Linux, it's expected that access to the
I/O ports won't happen via the regmap. For this reason, the new
<superio.h> header offers functions to read/write these chips' registers
as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/Kconfig   |  3 ++
 drivers/mfd/Makefile  |  1 +
 drivers/mfd/superio.c | 98 +++++++++++++++++++++++++++++++++++++++++++
 include/superio.h     | 64 ++++++++++++++++++++++++++++
 4 files changed, 166 insertions(+)
 create mode 100644 drivers/mfd/superio.c
 create mode 100644 include/superio.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 7d924cfca1eb..bd6f14a59f56 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -67,4 +67,7 @@ config MFD_STPMIC1
 	help
 	  Select this to support communication with the STPMIC1.
 
+config MFD_SUPERIO
+	bool
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 16a74abd77f3..690788eefb44 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
 obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
 obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
 obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
+obj-$(CONFIG_MFD_SUPERIO)	+= superio.o
diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
new file mode 100644
index 000000000000..0f08d56cb357
--- /dev/null
+++ b/drivers/mfd/superio.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#define pr_fmt(fmt) "superio: " fmt
+
+#include <common.h>
+#include <superio.h>
+#include <regmap.h>
+
+struct device_d *superio_func_add(struct superio_chip *siochip, const char *name)
+{
+	struct device_d *dev;
+	int ret;
+
+	dev = device_alloc(name, DEVICE_ID_DYNAMIC);
+	dev->parent = siochip->dev;
+
+
+	ret = platform_device_register(dev);
+	if (ret)
+		return NULL;
+
+	return dev;
+}
+EXPORT_SYMBOL(superio_func_add)
+
+static int superio_reg_read(void *ctx, unsigned int reg, unsigned int *val)
+{
+	struct superio_chip *siochip = ctx;
+
+	siochip->enter(siochip->sioaddr);
+
+	*val = superio_inb(siochip->sioaddr, reg);
+
+	siochip->exit(siochip->sioaddr);
+
+	return 0;
+}
+
+static int superio_reg_write(void *ctx, unsigned int reg, unsigned int val)
+{
+	struct superio_chip *siochip = ctx;
+
+	siochip->enter(siochip->sioaddr);
+
+	superio_outb(siochip->sioaddr, reg, val);
+
+	siochip->exit(siochip->sioaddr);
+
+	return 0;
+}
+
+static struct regmap_bus superio_regmap_bus = {
+	.reg_write = superio_reg_write,
+	.reg_read = superio_reg_read,
+};
+
+static struct regmap_config superio_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.reg_stride = 1,
+	.max_register = 0xff,
+};
+
+void superio_chip_add(struct superio_chip *siochip)
+{
+	struct regmap *regmap;
+	char *chipname;
+	char str[5];
+	int ret;
+
+	chipname = xasprintf("superio-%04x:%04x@%02x",
+			     siochip->vid, siochip->devid, siochip->sioaddr);
+	siochip->dev = add_generic_device(chipname, DEVICE_ID_SINGLE, NULL,
+					  siochip->sioaddr, 2, IORESOURCE_IO,
+					  NULL);
+
+	siochip->dev->priv = siochip;
+
+	sprintf(str, "%04x", siochip->vid);
+	dev_add_param_fixed(siochip->dev, "vendor", str);
+	sprintf(str, "%04x", siochip->devid);
+	dev_add_param_fixed(siochip->dev, "device", str);
+
+	regmap = regmap_init(siochip->dev, &superio_regmap_bus, siochip,
+			     &superio_regmap_config);
+	if (IS_ERR(regmap))
+		pr_warn("creating %s regmap failed: %s\n",
+			chipname, strerror(-PTR_ERR(regmap)));
+
+	ret = regmap_register_cdev(regmap, chipname);
+	if (ret)
+		pr_warn("registering %s regmap cdev failed: %s\n",
+			chipname, strerror(-ret));
+}
+EXPORT_SYMBOL(superio_chip_add)
diff --git a/include/superio.h b/include/superio.h
new file mode 100644
index 000000000000..12bff58b6b1b
--- /dev/null
+++ b/include/superio.h
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#ifndef _SUPERIO_H_
+#define _SUPERIO_H_
+
+#include <asm/io.h>
+#include <linux/bitops.h>
+#include <driver.h>
+#include <linux/types.h>
+
+#define SIO_REG_DEVID		0x20	/* Device ID (2 bytes) */
+#define SIO_REG_DEVREV		0x22	/* Device revision */
+#define SIO_REG_MANID		0x23	/* Vendor ID (2 bytes) */
+
+static inline u8 superio_inb(u16 base, u8 reg)
+{
+	outb(reg, base);
+	return inb(base + 1);
+}
+
+static inline u16 superio_inw(u16 base, u8 reg)
+{
+	u16 val;
+	val  = superio_inb(base, reg) << 8;
+	val |= superio_inb(base, reg + 1);
+	return val;
+}
+
+static inline void superio_outb(u16 base, u8 reg, u8 val)
+{
+	outb(reg, base);
+	outb(val, base + 1);
+}
+
+static inline void superio_set_bit(u16 base, u8 reg, unsigned bit)
+{
+	unsigned long val = superio_inb(base, reg);
+	__set_bit(bit, &val);
+	superio_outb(base, reg, val);
+}
+
+static inline void superio_clear_bit(u16 base, u8 reg, unsigned bit)
+{
+	unsigned long val = superio_inb(base, reg);
+	__clear_bit(bit, &val);
+	superio_outb(base, reg, val);
+}
+
+struct superio_chip {
+	struct device_d *dev;
+	u16 vid;
+	u16 devid;
+	u16 sioaddr;
+	void (*enter)(u16 sioaddr);
+	void (*exit)(u16 sioaddr);
+};
+
+void superio_chip_add(struct superio_chip *chip);
+struct device_d *superio_func_add(struct superio_chip *chip, const char *name);
+
+#endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
