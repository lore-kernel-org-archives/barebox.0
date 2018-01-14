Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eapkK-0005tS-G7
 for barebox@lists.infradead.org; Sun, 14 Jan 2018 21:23:21 +0000
Received: by mail-lf0-x244.google.com with SMTP id j143so11183060lfg.0
 for <barebox@lists.infradead.org>; Sun, 14 Jan 2018 13:23:06 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jan 2018 00:22:47 +0300
Message-Id: <20180114212252.29682-3-antonynpavlov@gmail.com>
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 2/7] sandbox: add gpio support with libftdi1
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/Kconfig                           |   1 +
 arch/sandbox/Makefile                          |   6 +-
 arch/sandbox/mach-sandbox/include/mach/linux.h |  11 ++
 arch/sandbox/os/Makefile                       |   3 +
 arch/sandbox/os/ftdi.c                         | 169 +++++++++++++++++++++++++
 drivers/gpio/Kconfig                           |   4 +
 drivers/gpio/Makefile                          |   1 +
 drivers/gpio/gpio-libftdi1.c                   | 125 ++++++++++++++++++
 8 files changed, 319 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 9c72673bde..3f1cefb837 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -1,6 +1,7 @@
 config SANDBOX
 	bool
 	select OFTREE
+	select GPIOLIB
 	default y
 
 config ARCH_TEXT_BASE
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 9d545c3b71..85c70b5e80 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -41,9 +41,13 @@ ifeq ($(CONFIG_DRIVER_VIDEO_SDL),y)
 SDL_LIBS := $(shell pkg-config sdl --libs)
 endif
 
+ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
+FTDI1_LIBS := $(shell pkg-config libftdi1 --libs)
+endif
+
 cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 	-Wl,--start-group $(barebox-common) -Wl,--end-group \
-	-lrt -lpthread $(SDL_LIBS)
+	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS)
 
 common-y += $(BOARD) arch/sandbox/os/
 
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 1327a56cab..9abb52e93c 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -38,4 +38,15 @@ void sdl_get_bitfield_rgba(struct fb_bitfield *r, struct fb_bitfield *g,
 			    struct fb_bitfield *b, struct fb_bitfield *a);
 void sdl_setpixel(int x, int y, uint8_t r, uint8_t g, uint8_t b, uint8_t a);
 
+struct ft2232_bitbang;
+struct ft2232_bitbang *barebox_libftdi1_open(void);
+void barebox_libftdi1_gpio_direction(struct ft2232_bitbang *ftbb,
+						unsigned off, unsigned dir);
+int barebox_libftdi1_gpio_get_value(struct ft2232_bitbang *ftbb,
+						unsigned off);
+void barebox_libftdi1_gpio_set_value(struct ft2232_bitbang *ftbb,
+						unsigned off, unsigned val);
+int barebox_libftdi1_update(struct ft2232_bitbang *ftbb);
+void barebox_libftdi1_close(void);
+
 #endif /* __ASM_ARCH_LINUX_H */
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 537f848e06..75baa34a83 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -17,3 +17,6 @@ obj-y = common.o tap.o
 
 CFLAGS_sdl.o = $(shell pkg-config sdl --cflags)
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
+
+CFLAGS_ftdi.o = $(shell pkg-config libftdi1 --cflags)
+obj-$(CONFIG_GPIO_LIBFTDI1) += ftdi.o
diff --git a/arch/sandbox/os/ftdi.c b/arch/sandbox/os/ftdi.c
new file mode 100644
index 0000000000..7302dd0989
--- /dev/null
+++ b/arch/sandbox/os/ftdi.c
@@ -0,0 +1,169 @@
+/*
+ * sandbox barebox libftdi1 support
+ *
+ * Copyright (C) 2016, 2017 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <stdio.h>
+#include <ftdi.h>
+
+#define FTDI_VID		0x0403	/* Vendor Id */
+#define FTDI_8U2232C_PID	0x6010	/* Dual channel device */
+
+#define GPIOF_DIR_OUT	(0 << 0)
+#define GPIOF_DIR_IN	(1 << 0)
+
+#define BIT(nr)			(1UL << (nr))
+
+struct ft2232_bitbang {
+	struct ftdi_context *ftdi;
+	uint8_t odata;
+	uint8_t dir;
+};
+
+static struct ft2232_bitbang ftbb;
+
+static inline int ftdi_flush(struct ftdi_context *ftdi)
+{
+	uint8_t buf[1];
+	int ret;
+
+	buf[0] = SEND_IMMEDIATE;
+
+	ret = ftdi_write_data(ftdi, buf, 1);
+
+	return ret;
+}
+
+static int ftdi_get_high_byte_data(struct ftdi_context *ftdi, uint8_t *data)
+{
+	uint8_t obuf;
+	int ret;
+
+	obuf = GET_BITS_HIGH;
+	ret = ftdi_write_data(ftdi, &obuf, 1);
+
+	ret = ftdi_read_data(ftdi, data, 1);
+
+	return ret;
+}
+
+static int ftdi_set_high_byte_data_dir(struct ft2232_bitbang *ftbb)
+{
+	uint8_t buf[3];
+	int ret;
+
+	buf[0] = SET_BITS_HIGH;
+	buf[1] = ftbb->odata;
+	buf[2] = ftbb->dir;
+
+	ret = ftdi_write_data(ftbb->ftdi, buf, 3);
+	ftdi_flush(ftbb->ftdi);
+
+	return ret;
+}
+
+int barebox_libftdi1_update(struct ft2232_bitbang *ftbb)
+{
+	return ftdi_set_high_byte_data_dir(ftbb);
+}
+
+void barebox_libftdi1_gpio_direction(struct ft2232_bitbang *ftbb,
+					unsigned off, unsigned dir)
+{
+	switch (dir) {
+	case GPIOF_DIR_IN:
+		ftbb->dir &= ~BIT(off);
+		break;
+	case GPIOF_DIR_OUT:
+		ftbb->dir |= BIT(off);
+		break;
+	default:
+		printf("%s:%d: invalid dir argument\n", __FILE__, __LINE__);
+	}
+}
+
+int barebox_libftdi1_gpio_get_value(struct ft2232_bitbang *ftbb, unsigned off)
+{
+	uint8_t data;
+
+	ftdi_get_high_byte_data(ftbb->ftdi, &data);
+
+	return !!(data & BIT(off));
+}
+
+void barebox_libftdi1_gpio_set_value(struct ft2232_bitbang *ftbb,
+					unsigned off, unsigned val)
+{
+	if (val)
+		ftbb->odata |= BIT(off);
+	else
+		ftbb->odata &= ~BIT(off);
+}
+
+static int barebox_libftdi1_init(void)
+{
+	struct ftdi_context *ftdi;
+	int ret;
+	/* default FT2232 values */
+	uint16_t vendor_id = FTDI_VID;
+	uint16_t device_id = FTDI_8U2232C_PID;
+
+	ftdi = ftdi_new();
+	if (!ftdi) {
+		fprintf(stderr, "ftdi_new failed\n");
+		goto error;
+	}
+
+	ret = ftdi_usb_open(ftdi, vendor_id, device_id);
+	if (ret < 0 && ret != -5) {
+		fprintf(stderr, "unable to open ftdi device: %d (%s)\n",
+			ret, ftdi_get_error_string(ftdi));
+		goto error;
+	}
+
+	ftdi_set_interface(ftdi, INTERFACE_A);
+	ftdi_set_bitmode(ftdi, 0x00, BITMODE_MPSSE);
+
+	ftbb.ftdi = ftdi;
+
+	/* reset pins to default neutral state */
+	ftbb.dir = 0;
+	ftbb.odata = 0;
+	ftdi_set_high_byte_data_dir(&ftbb);
+
+	return 0;
+
+error:
+	return -1;
+}
+
+struct ft2232_bitbang *barebox_libftdi1_open(void)
+{
+	if (barebox_libftdi1_init() < 0) {
+		printf("Could not initialize ftdi\n");
+		return NULL;
+	}
+
+	return &ftbb;
+}
+
+void barebox_libftdi1_close(void)
+{
+	struct ftdi_context *ftdi = ftbb.ftdi;
+
+	ftdi_set_interface(ftdi, INTERFACE_ANY);
+	ftdi_usb_close(ftdi);
+	ftdi_free(ftdi);
+}
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 434c5688b4..ed93e868ae 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -132,6 +132,10 @@ config GPIO_SX150X
 	  Say Y here to build support for the Semtec Sx150x I2C GPIO
 	  expander chip.
 
+config GPIO_LIBFTDI1
+	bool "libftdi1 driver"
+	depends on SANDBOX
+
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index f37dd08f1a..f5ed876d5e 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_GPIO_CLPS711X)	+= gpio-clps711x.o
 obj-$(CONFIG_GPIO_DIGIC)	+= gpio-digic.o
 obj-$(CONFIG_GPIO_GENERIC)	+= gpio-generic.o
 obj-$(CONFIG_GPIO_IMX)		+= gpio-imx.o
+obj-$(CONFIG_GPIO_LIBFTDI1)	+= gpio-libftdi1.o
 obj-$(CONFIG_GPIO_MXS)		+= gpio-mxs.o
 obj-$(CONFIG_GPIO_JZ4740)	+= gpio-jz4740.o
 obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
diff --git a/drivers/gpio/gpio-libftdi1.c b/drivers/gpio/gpio-libftdi1.c
new file mode 100644
index 0000000000..21fc8cf034
--- /dev/null
+++ b/drivers/gpio/gpio-libftdi1.c
@@ -0,0 +1,125 @@
+/*
+ * libftdi1 sandbox barebox GPIO driver
+ *
+ * Copyright (C) 2016, 2017 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <gpio.h>
+#include <init.h>
+#include <malloc.h>
+#include <mach/linux.h>
+
+struct libftdi1_gpio_chip {
+	struct gpio_chip chip;
+	struct ft2232_bitbang *ftbb;
+};
+
+static int libftdi1_gpio_direction_input(struct gpio_chip *chip, unsigned off)
+{
+	struct libftdi1_gpio_chip *gpio =
+		container_of(chip, struct libftdi1_gpio_chip, chip);
+
+	barebox_libftdi1_gpio_direction(gpio->ftbb, off, GPIOF_DIR_IN);
+	barebox_libftdi1_update(gpio->ftbb);
+
+	return 0;
+}
+
+static int libftdi1_gpio_direction_output(
+	struct gpio_chip *chip, unsigned off, int value)
+{
+	struct libftdi1_gpio_chip *gpio =
+		container_of(chip, struct libftdi1_gpio_chip, chip);
+
+	barebox_libftdi1_gpio_set_value(gpio->ftbb, off, value);
+	barebox_libftdi1_gpio_direction(gpio->ftbb, off, GPIOF_DIR_OUT);
+	barebox_libftdi1_update(gpio->ftbb);
+
+	return 0;
+}
+
+static int libftdi1_gpio_get_value(struct gpio_chip *chip, unsigned off)
+{
+	struct libftdi1_gpio_chip *gpio =
+		container_of(chip, struct libftdi1_gpio_chip, chip);
+
+	return barebox_libftdi1_gpio_get_value(gpio->ftbb, off);
+}
+
+static void libftdi1_gpio_set_value(
+	struct gpio_chip *chip, unsigned off, int value)
+{
+	struct libftdi1_gpio_chip *gpio =
+		container_of(chip, struct libftdi1_gpio_chip, chip);
+
+	barebox_libftdi1_gpio_set_value(gpio->ftbb, off, value);
+	barebox_libftdi1_update(gpio->ftbb);
+}
+
+static struct gpio_ops libftdi1_gpio_ops = {
+	.direction_input = libftdi1_gpio_direction_input,
+	.direction_output = libftdi1_gpio_direction_output,
+	.get = libftdi1_gpio_get_value,
+	.set = libftdi1_gpio_set_value,
+};
+
+static int libftdi1_gpio_probe(struct device_d *dev)
+{
+	struct libftdi1_gpio_chip *gpio;
+	struct ft2232_bitbang *ftbb;
+	int ret;
+
+	ftbb = barebox_libftdi1_open();
+	if (!ftbb)
+		return -EIO;
+
+	gpio = xzalloc(sizeof(*gpio));
+
+	gpio->ftbb = ftbb;
+
+	gpio->chip.dev = dev;
+	gpio->chip.ops = &libftdi1_gpio_ops;
+	gpio->chip.base = 0;
+	gpio->chip.ngpio = 8;
+
+	ret = gpiochip_add(&gpio->chip);
+
+	dev_dbg(dev, "%d: probed gpio%d with base %d\n",
+			ret, dev->id, gpio->chip.base);
+
+	return 0;
+}
+
+static __maybe_unused const struct of_device_id libftdi1_gpio_dt_ids[] = {
+	{
+		.compatible = "barebox,libftdi1-gpio",
+	}, {
+		/* sentinel */
+	},
+};
+
+static void libftdi1_gpio_remove(struct device_d *dev)
+{
+	barebox_libftdi1_close();
+}
+
+static struct driver_d libftdi1_gpio_driver = {
+	.name = "libftdi1-gpio",
+	.probe = libftdi1_gpio_probe,
+	.remove = libftdi1_gpio_remove,
+	.of_compatible = DRV_OF_COMPAT(libftdi1_gpio_dt_ids),
+};
+device_platform_driver(libftdi1_gpio_driver);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
