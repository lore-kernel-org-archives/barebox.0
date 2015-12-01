Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3lXk-0001e3-Dh
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 14:04:57 +0000
Received: by wmuu63 with SMTP id u63so174242811wmu.0
 for <barebox@lists.infradead.org>; Tue, 01 Dec 2015 06:04:10 -0800 (PST)
From: Florian Vallee <fvallee@eukrea.fr>
Date: Tue,  1 Dec 2015 15:03:59 +0100
Message-Id: <1448978639-12375-1-git-send-email-fvallee@eukrea.fr>
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
Subject: [PATCH] GPIO: add Microchip MCP23017 / MCP23008 GPIO driver
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>

This is based on the I2C implementation of the corresponding linux
driver. The SPI part was left out.

Tested with an MCP23017.

Signed-off-by: Florian Vallee <fvallee@eukrea.fr>
---
 drivers/gpio/Kconfig             |  11 +-
 drivers/gpio/Makefile            |   1 +
 drivers/gpio/gpio-mcp23s08.c     | 351 +++++++++++++++++++++++++++++++++++++++
 include/platform_data/mcp23s08.h |  43 +++++
 4 files changed, 405 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpio/gpio-mcp23s08.c
 create mode 100644 include/platform_data/mcp23s08.h

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 9cb2261..6428f2b 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -121,6 +121,15 @@ config GPIO_DESIGNWARE
 	help
 	  Say Y or M here to build support for the Synopsys DesignWare APB
 	  GPIO block.
-endmenu
 
+config GPIO_MCP23S08
+	tristate "Microchip MCP23xxx I/O expander"
+	depends on I2C
+	help
+	  I2C driver for Microchip MCP23008/MCP23017
+	  I/O expanders.
+	  This provides a GPIO interface supporting inputs and outputs.
+	  The I2C versions of the chips can be used as interrupt-controller.
+
+endmenu
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 1d94661..bce1c0d 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -17,3 +17,4 @@ obj-$(CONFIG_GPIO_PL061)	+= gpio-pl061.o
 obj-$(CONFIG_GPIO_STMPE)	+= gpio-stmpe.o
 obj-$(CONFIG_GPIO_TEGRA)	+= gpio-tegra.o
 obj-$(CONFIG_GPIO_DESIGNWARE)	+= gpio-dw.o
+obj-$(CONFIG_GPIO_MCP23S08)	+= gpio-mcp23s08.o
diff --git a/drivers/gpio/gpio-mcp23s08.c b/drivers/gpio/gpio-mcp23s08.c
new file mode 100644
index 0000000..080d20f
--- /dev/null
+++ b/drivers/gpio/gpio-mcp23s08.c
@@ -0,0 +1,351 @@
+/*
+ * MCP23S08 SPI/I2C GPIO gpio expander driver
+ *
+ * The inputs and outputs of the mcp23008 and mcp23017 are
+ * supported.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+
+#include <gpio.h>
+#include <platform_data/mcp23s08.h>
+
+/**
+ * MCP types supported by driver
+ */
+#define MCP_TYPE_S08	0
+#define MCP_TYPE_S17	1
+#define MCP_TYPE_008	2
+#define MCP_TYPE_017	3
+
+/* Registers are all 8 bits wide.
+ *
+ * The mcp23s17 has twice as many bits, and can be configured to work
+ * with either 16 bit registers or with two adjacent 8 bit banks.
+ */
+#define MCP_IODIR	0x00		/* init/reset:  all ones */
+#define MCP_IPOL	0x01
+#define MCP_GPINTEN	0x02
+#define MCP_DEFVAL	0x03
+#define MCP_INTCON	0x04
+#define MCP_IOCON	0x05
+#	define IOCON_MIRROR	(1 << 6)
+#	define IOCON_SEQOP	(1 << 5)
+#	define IOCON_HAEN	(1 << 3)
+#	define IOCON_ODR	(1 << 2)
+#	define IOCON_INTPOL	(1 << 1)
+#define MCP_GPPU	0x06
+#define MCP_INTF	0x07
+#define MCP_INTCAP	0x08
+#define MCP_GPIO	0x09
+#define MCP_OLAT	0x0a
+
+struct mcp23s08;
+
+struct mcp23s08_ops {
+	int	(*read)(struct mcp23s08 *mcp, unsigned reg);
+	int	(*write)(struct mcp23s08 *mcp, unsigned reg, unsigned val);
+	int	(*read_regs)(struct mcp23s08 *mcp, unsigned reg,
+			     u16 *vals, unsigned n);
+};
+
+struct mcp23s08 {
+	u8			addr;
+
+	u16			cache[11];
+
+	struct gpio_chip	chip;
+
+	const struct mcp23s08_ops	*ops;
+	void			*data; /* ops specific data */
+};
+
+/* A given spi_device can represent up to eight mcp23sxx chips
+ * sharing the same chipselect but using different addresses
+ * (e.g. chips #0 and #3 might be populated, but not #1 or $2).
+ * Driver data holds all the per-chip data.
+ */
+struct mcp23s08_driver_data {
+	unsigned		ngpio;
+	struct mcp23s08		*mcp[8];
+	struct mcp23s08		chip[];
+};
+
+/*----------------------------------------------------------------------*/
+
+#if IS_ENABLED(CONFIG_I2C)
+
+static int mcp23008_read(struct mcp23s08 *mcp, unsigned reg)
+{
+	return i2c_smbus_read_byte_data(mcp->data, reg);
+}
+
+static int mcp23008_write(struct mcp23s08 *mcp, unsigned reg, unsigned val)
+{
+	return i2c_smbus_write_byte_data(mcp->data, reg, val);
+}
+
+static int
+mcp23008_read_regs(struct mcp23s08 *mcp, unsigned reg, u16 *vals, unsigned n)
+{
+	while (n--) {
+		int ret = mcp23008_read(mcp, reg++);
+		if (ret < 0)
+			return ret;
+		*vals++ = ret;
+	}
+
+	return 0;
+}
+
+static int mcp23017_read(struct mcp23s08 *mcp, unsigned reg)
+{
+	return i2c_smbus_read_word_data(mcp->data, reg << 1);
+}
+
+static int mcp23017_write(struct mcp23s08 *mcp, unsigned reg, unsigned val)
+{
+	return i2c_smbus_write_word_data(mcp->data, reg << 1, val);
+}
+
+static int
+mcp23017_read_regs(struct mcp23s08 *mcp, unsigned reg, u16 *vals, unsigned n)
+{
+	while (n--) {
+		int ret = mcp23017_read(mcp, reg++);
+		if (ret < 0)
+			return ret;
+		*vals++ = ret;
+	}
+
+	return 0;
+}
+
+static const struct mcp23s08_ops mcp23008_ops = {
+	.read		= mcp23008_read,
+	.write		= mcp23008_write,
+	.read_regs	= mcp23008_read_regs,
+};
+
+static const struct mcp23s08_ops mcp23017_ops = {
+	.read		= mcp23017_read,
+	.write		= mcp23017_write,
+	.read_regs	= mcp23017_read_regs,
+};
+
+#endif /* CONFIG_I2C */
+
+/*----------------------------------------------------------------------*/
+
+static int mcp23s08_direction_input(struct gpio_chip *chip, unsigned offset)
+{
+	struct mcp23s08	*mcp = container_of(chip, struct mcp23s08, chip);
+	int status;
+
+	mcp->cache[MCP_IODIR] |= (1 << offset);
+	status = mcp->ops->write(mcp, MCP_IODIR, mcp->cache[MCP_IODIR]);
+	return status;
+}
+
+static int mcp23s08_get(struct gpio_chip *chip, unsigned offset)
+{
+	struct mcp23s08	*mcp = container_of(chip, struct mcp23s08, chip);
+	int status;
+
+	status = mcp->ops->read(mcp, MCP_GPIO);
+	if (status < 0)
+		status = 0;
+	else {
+		mcp->cache[MCP_GPIO] = status;
+		status = !!(status & (1 << offset));
+	}
+
+	return status;
+}
+
+static int __mcp23s08_set(struct mcp23s08 *mcp, unsigned mask, int value)
+{
+	unsigned olat = mcp->cache[MCP_OLAT];
+
+	if (value)
+		olat |= mask;
+	else
+		olat &= ~mask;
+	mcp->cache[MCP_OLAT] = olat;
+	return mcp->ops->write(mcp, MCP_OLAT, olat);
+}
+
+static void mcp23s08_set(struct gpio_chip *chip, unsigned offset, int value)
+{
+	struct mcp23s08	*mcp = container_of(chip, struct mcp23s08, chip);
+	unsigned mask = 1 << offset;
+
+	__mcp23s08_set(mcp, mask, value);
+}
+
+static int
+mcp23s08_direction_output(struct gpio_chip *chip, unsigned offset, int value)
+{
+	struct mcp23s08	*mcp = container_of(chip, struct mcp23s08, chip);
+	unsigned mask = 1 << offset;
+	int status;
+
+	status = __mcp23s08_set(mcp, mask, value);
+	if (status == 0) {
+		mcp->cache[MCP_IODIR] &= ~mask;
+		status = mcp->ops->write(mcp, MCP_IODIR, mcp->cache[MCP_IODIR]);
+	}
+	return status;
+}
+
+static int mcp23s08_get_direction(struct gpio_chip *chip, unsigned offset)
+{
+	struct mcp23s08	*mcp = container_of(chip, struct mcp23s08, chip);
+	unsigned mask = 1 << offset;
+
+	if (mcp->cache[MCP_IODIR] & mask)
+		return GPIOF_DIR_IN;
+
+	return GPIOF_DIR_OUT;
+}
+
+
+/*----------------------------------------------------------------------*/
+
+static struct gpio_ops mcp23s08x_gpio_ops = {
+	.direction_input = mcp23s08_direction_input,
+	.direction_output = mcp23s08_direction_output,
+	.get_direction = mcp23s08_get_direction,
+	.get = mcp23s08_get,
+	.set = mcp23s08_set,
+};
+
+static int mcp23s08_probe_one(struct mcp23s08 *mcp, struct device_d *dev,
+			      void *data, unsigned addr, unsigned type,
+			      struct mcp23s08_platform_data *pdata, int cs)
+{
+	int status;
+
+	mcp->data = data;
+	mcp->addr = addr;
+
+	switch (type) {
+#if IS_ENABLED(CONFIG_I2C)
+	case MCP_TYPE_008:
+		mcp->ops = &mcp23008_ops;
+		mcp->chip.ngpio = 8;
+		break;
+
+	case MCP_TYPE_017:
+		mcp->ops = &mcp23017_ops;
+		mcp->chip.ngpio = 16;
+		break;
+#endif /* CONFIG_I2C */
+
+	default:
+		dev_err(dev, "invalid device type (%d)\n", type);
+		return -EINVAL;
+	}
+
+	mcp->chip.ops = &mcp23s08x_gpio_ops;
+	mcp->chip.base = pdata->base;
+	mcp->chip.dev = dev;
+
+	/* verify MCP_IOCON.SEQOP = 0, so sequential reads work,
+	 * and MCP_IOCON.HAEN = 1, so we work with all chips.
+	 */
+
+	status = mcp->ops->read(mcp, MCP_IOCON);
+	if (status < 0)
+		goto fail;
+
+	status = mcp->ops->read_regs(mcp, 0, mcp->cache, ARRAY_SIZE(mcp->cache));
+	if (status < 0)
+		goto fail;
+
+	/* disable inverter on input */
+	if (mcp->cache[MCP_IPOL] != 0) {
+		mcp->cache[MCP_IPOL] = 0;
+		status = mcp->ops->write(mcp, MCP_IPOL, 0);
+		if (status < 0)
+			goto fail;
+	}
+
+	/* disable irqs */
+	if (mcp->cache[MCP_GPINTEN] != 0) {
+		mcp->cache[MCP_GPINTEN] = 0;
+		status = mcp->ops->write(mcp, MCP_GPINTEN, 0);
+		if (status < 0)
+			goto fail;
+	}
+
+	status = gpiochip_add(&mcp->chip);
+	if (status < 0)
+		goto fail;
+
+fail:
+	if (status < 0)
+		dev_dbg(dev, "can't setup chip %d, --> %d\n",
+			addr, status);
+	return status;
+}
+
+/*----------------------------------------------------------------------*/
+
+static int mcp230xx_probe(struct device_d *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	unsigned long driver_data;
+	struct mcp23s08_platform_data *pdata;
+	struct mcp23s08 *mcp;
+	int status;
+
+	driver_data = 0;
+	pdata = dev->platform_data;
+	if (pdata) {
+		pdata->base = -1;
+	} else {
+		int err;
+
+		err = dev_get_drvdata(dev, (const void **) &driver_data);
+		if (err)
+			return err;
+
+		pdata = xzalloc(sizeof(struct mcp23s08_platform_data));
+		pdata->base = -1;
+	}
+
+	mcp = xzalloc(sizeof(*mcp));
+	if (!mcp)
+		return -ENOMEM;
+
+	status = mcp23s08_probe_one(mcp, &client->dev, client, client->addr,
+				    driver_data, pdata, 0);
+
+	return status;
+}
+
+static struct platform_device_id mcp230xx_id[] = {
+	{ "mcp23008", MCP_TYPE_008 },
+	{ "mcp23017", MCP_TYPE_017 },
+	{ },
+};
+
+static struct driver_d mcp230xx_driver = {
+	.name	= "mcp230xx",
+	.probe		= mcp230xx_probe,
+	.id_table	= mcp230xx_id,
+};
+
+static int __init mcp23s08_i2c_init(void)
+{
+	return i2c_driver_register(&mcp230xx_driver);
+}
+
+device_initcall(mcp23s08_i2c_init);
diff --git a/include/platform_data/mcp23s08.h b/include/platform_data/mcp23s08.h
new file mode 100644
index 0000000..aa07d7b
--- /dev/null
+++ b/include/platform_data/mcp23s08.h
@@ -0,0 +1,43 @@
+
+/* FIXME driver should be able to handle IRQs...  */
+
+struct mcp23s08_chip_info {
+	bool		is_present;	/* true if populated */
+	unsigned	pullups;	/* BIT(x) means enable pullup x */
+};
+
+struct mcp23s08_platform_data {
+	/* For mcp23s08, up to 4 slaves (numbered 0..3) can share one SPI
+	 * chipselect, each providing 1 gpio_chip instance with 8 gpios.
+	 * For mpc23s17, up to 8 slaves (numbered 0..7) can share one SPI
+	 * chipselect, each providing 1 gpio_chip (port A + port B) with
+	 * 16 gpios.
+	 */
+	struct mcp23s08_chip_info	chip[8];
+
+	/* "base" is the number of the first GPIO.  Dynamic assignment is
+	 * not currently supported, and even if there are gaps in chip
+	 * addressing the GPIO numbers are sequential .. so for example
+	 * if only slaves 0 and 3 are present, their GPIOs range from
+	 * base to base+15 (or base+31 for s17 variant).
+	 */
+	unsigned	base;
+	/* Marks the device as a interrupt controller.
+	 * NOTE: The interrupt functionality is only supported for i2c
+	 * versions of the chips. The spi chips can also do the interrupts,
+	 * but this is not supported by the linux driver yet.
+	 */
+	bool		irq_controller;
+
+	/* Sets the mirror flag in the IOCON register. Devices
+	 * with two interrupt outputs (these are the devices ending with 17 and
+	 * those that have 16 IOs) have two IO banks: IO 0-7 form bank 1 and
+	 * IO 8-15 are bank 2. These chips have two different interrupt outputs:
+	 * One for bank 1 and another for bank 2. If irq-mirror is set, both
+	 * interrupts are generated regardless of the bank that an input change
+	 * occurred on. If it is not set, the interrupt are only generated for
+	 * the bank they belong to.
+	 * On devices with only one interrupt output this property is useless.
+	 */
+	bool		mirror;
+};
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
