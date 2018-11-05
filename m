Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJjgS-0006BW-Vt
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 18:33:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id 32-v6so4614460pgu.2
 for <barebox@lists.infradead.org>; Mon, 05 Nov 2018 10:32:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Nov 2018 10:32:20 -0800
Message-Id: <20181105183222.25637-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181105183222.25637-1-andrew.smirnov@gmail.com>
References: <20181105183222.25637-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] nvmem: Port Linux driver for Microwire 93XX46 EEPROM chips
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/Kconfig         |   8 +
 drivers/nvmem/Makefile        |   5 +-
 drivers/nvmem/eeprom_93xx46.c | 446 ++++++++++++++++++++++++++++++++++
 3 files changed, 458 insertions(+), 1 deletion(-)
 create mode 100644 drivers/nvmem/eeprom_93xx46.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 38b6f4241..c28a6d4e4 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -43,4 +43,12 @@ config RAVE_SP_EEPROM
 	help
 	  Say y here to enable Rave SP EEPROM support.
 
+config EEPROM_93XX46
+	bool "Microwire EEPROM 93XX46 support"
+	depends on SPI
+	help
+	  Driver for the microwire EEPROM chipsets 93xx46x. The driver
+	  supports both read and write commands and also the command to
+	  erase the whole EEPROM.
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 716e5dbe8..abf9dae42 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -13,4 +13,7 @@ obj-$(CONFIG_IMX_OCOTP)		+= nvmem_ocotp.o
 nvmem_ocotp-y			:= ocotp.o
 
 obj-$(CONFIG_RAVE_SP_EEPROM)	+= nvmem-rave-sp-eeprom.o
-nvmem-rave-sp-eeprom-y		:= rave-sp-eeprom.o
\ No newline at end of file
+nvmem-rave-sp-eeprom-y		:= rave-sp-eeprom.o
+
+obj-$(CONFIG_EEPROM_93XX46)	+= nvmem_eeprom_93xx46.o
+nvmem_eeprom_93xx46-y		:= eeprom_93xx46.o
\ No newline at end of file
diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
new file mode 100644
index 000000000..d96ba32d0
--- /dev/null
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -0,0 +1,446 @@
+/*
+ * Driver for 93xx46 EEPROMs
+ *
+ * (C) 2011 DENX Software Engineering, Anatolij Gustschin <agust@denx.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <of.h>
+#include <spi/spi.h>
+#include <of.h>
+#include <spi/spi.h>
+#include <malloc.h>
+#include <gpio.h>
+#include <of_gpio.h>
+#include <of_device.h>
+
+#include <linux/nvmem-provider.h>
+
+
+#define OP_START	0x4
+#define OP_WRITE	(OP_START | 0x1)
+#define OP_READ		(OP_START | 0x2)
+#define ADDR_EWDS	0x00
+#define ADDR_ERAL	0x20
+#define ADDR_EWEN	0x30
+
+struct eeprom_93xx46_platform_data {
+	unsigned char	flags;
+#define EE_ADDR8	0x01		/*  8 bit addr. cfg */
+#define EE_ADDR16	0x02		/* 16 bit addr. cfg */
+#define EE_READONLY	0x08		/* forbid writing */
+
+	unsigned int	quirks;
+/* Single word read transfers only; no sequential read. */
+#define EEPROM_93XX46_QUIRK_SINGLE_WORD_READ		(1 << 0)
+/* Instructions such as EWEN are (addrlen + 2) in length. */
+#define EEPROM_93XX46_QUIRK_INSTRUCTION_LENGTH		(1 << 1)
+
+	/*
+	 * optional hooks to control additional logic
+	 * before and after spi transfer.
+	 */
+	void (*prepare)(void *);
+	void (*finish)(void *);
+	int select;
+};
+
+struct eeprom_93xx46_devtype_data {
+	unsigned int quirks;
+};
+
+static const struct eeprom_93xx46_devtype_data atmel_at93c46d_data = {
+	.quirks = EEPROM_93XX46_QUIRK_SINGLE_WORD_READ |
+		  EEPROM_93XX46_QUIRK_INSTRUCTION_LENGTH,
+};
+
+struct eeprom_93xx46_dev {
+	struct spi_device *spi;
+	struct eeprom_93xx46_platform_data *pdata;
+	struct nvmem_config nvmem_config;
+	struct nvmem_device *nvmem;
+	int addrlen;
+	int size;
+};
+
+static inline bool has_quirk_single_word_read(struct eeprom_93xx46_dev *edev)
+{
+	return edev->pdata->quirks & EEPROM_93XX46_QUIRK_SINGLE_WORD_READ;
+}
+
+static inline bool has_quirk_instruction_length(struct eeprom_93xx46_dev *edev)
+{
+	return edev->pdata->quirks & EEPROM_93XX46_QUIRK_INSTRUCTION_LENGTH;
+}
+
+static int eeprom_93xx46_read(struct device_d *dev, int off,
+			      void *val, int count)
+{
+	struct eeprom_93xx46_dev *edev = dev->parent->priv;
+	char *buf = val;
+	int err = 0;
+
+	if (unlikely(off >= edev->size))
+		return 0;
+	if ((off + count) > edev->size)
+		count = edev->size - off;
+	if (unlikely(!count))
+		return count;
+
+	if (edev->pdata->prepare)
+		edev->pdata->prepare(edev);
+
+	while (count) {
+		struct spi_message m;
+		struct spi_transfer t[2] = { { 0 } };
+		u16 cmd_addr = OP_READ << edev->addrlen;
+		size_t nbytes = count;
+		int bits;
+
+		if (edev->addrlen == 7) {
+			cmd_addr |= off & 0x7f;
+			bits = 10;
+			if (has_quirk_single_word_read(edev))
+				nbytes = 1;
+		} else {
+			cmd_addr |= (off >> 1) & 0x3f;
+			bits = 9;
+			if (has_quirk_single_word_read(edev))
+				nbytes = 2;
+		}
+
+		dev_dbg(&edev->spi->dev, "read cmd 0x%x, %d Hz\n",
+			cmd_addr, edev->spi->max_speed_hz);
+
+		spi_message_init(&m);
+
+		t[0].tx_buf = (char *)&cmd_addr;
+		t[0].len = 2;
+		t[0].bits_per_word = bits;
+		spi_message_add_tail(&t[0], &m);
+
+		t[1].rx_buf = buf;
+		t[1].len = count;
+		t[1].bits_per_word = 8;
+		spi_message_add_tail(&t[1], &m);
+
+		err = spi_sync(edev->spi, &m);
+		/* have to wait at least Tcsl ns */
+		ndelay(250);
+
+		if (err) {
+			dev_err(&edev->spi->dev, "read %zu bytes at %d: err. %d\n",
+				nbytes, (int)off, err);
+			break;
+		}
+
+		buf += nbytes;
+		off += nbytes;
+		count -= nbytes;
+	}
+
+	if (edev->pdata->finish)
+		edev->pdata->finish(edev);
+
+	return err;
+}
+
+static int eeprom_93xx46_ew(struct eeprom_93xx46_dev *edev, int is_on)
+{
+	struct spi_message m;
+	struct spi_transfer t;
+	int bits, ret;
+	u16 cmd_addr;
+
+	cmd_addr = OP_START << edev->addrlen;
+	if (edev->addrlen == 7) {
+		cmd_addr |= (is_on ? ADDR_EWEN : ADDR_EWDS) << 1;
+		bits = 10;
+	} else {
+		cmd_addr |= (is_on ? ADDR_EWEN : ADDR_EWDS);
+		bits = 9;
+	}
+
+	if (has_quirk_instruction_length(edev)) {
+		cmd_addr <<= 2;
+		bits += 2;
+	}
+
+	dev_dbg(&edev->spi->dev, "ew%s cmd 0x%04x, %d bits\n",
+			is_on ? "en" : "ds", cmd_addr, bits);
+
+	spi_message_init(&m);
+	memset(&t, 0, sizeof(t));
+
+	t.tx_buf = &cmd_addr;
+	t.len = 2;
+	t.bits_per_word = bits;
+	spi_message_add_tail(&t, &m);
+
+	if (edev->pdata->prepare)
+		edev->pdata->prepare(edev);
+
+	ret = spi_sync(edev->spi, &m);
+	/* have to wait at least Tcsl ns */
+	ndelay(250);
+	if (ret)
+		dev_err(&edev->spi->dev, "erase/write %sable error %d\n",
+			is_on ? "en" : "dis", ret);
+
+	if (edev->pdata->finish)
+		edev->pdata->finish(edev);
+
+	return ret;
+}
+
+static ssize_t
+eeprom_93xx46_write_word(struct eeprom_93xx46_dev *edev,
+			 const char *buf, unsigned off)
+{
+	struct spi_message m;
+	struct spi_transfer t[2];
+	int bits, data_len, ret;
+	u16 cmd_addr;
+
+	cmd_addr = OP_WRITE << edev->addrlen;
+
+	if (edev->addrlen == 7) {
+		cmd_addr |= off & 0x7f;
+		bits = 10;
+		data_len = 1;
+	} else {
+		cmd_addr |= (off >> 1) & 0x3f;
+		bits = 9;
+		data_len = 2;
+	}
+
+	dev_dbg(&edev->spi->dev, "write cmd 0x%x\n", cmd_addr);
+
+	spi_message_init(&m);
+	memset(t, 0, sizeof(t));
+
+	t[0].tx_buf = (char *)&cmd_addr;
+	t[0].len = 2;
+	t[0].bits_per_word = bits;
+	spi_message_add_tail(&t[0], &m);
+
+	t[1].tx_buf = buf;
+	t[1].len = data_len;
+	t[1].bits_per_word = 8;
+	spi_message_add_tail(&t[1], &m);
+
+	ret = spi_sync(edev->spi, &m);
+	/* have to wait program cycle time Twc ms */
+	mdelay(6);
+	return ret;
+}
+
+static int eeprom_93xx46_write(struct device_d *dev, const int off,
+			       const void *val, int count)
+{
+	struct eeprom_93xx46_dev *edev = dev->parent->priv;
+	const char *buf = val;
+	int i, ret, step = 1;
+
+	if (unlikely(off >= edev->size))
+		return -EFBIG;
+	if ((off + count) > edev->size)
+		count = edev->size - off;
+	if (unlikely(!count))
+		return count;
+
+	/* only write even number of bytes on 16-bit devices */
+	if (edev->addrlen == 6) {
+		step = 2;
+		count &= ~1;
+	}
+
+	/* erase/write enable */
+	ret = eeprom_93xx46_ew(edev, 1);
+	if (ret)
+		return ret;
+
+	if (edev->pdata->prepare)
+		edev->pdata->prepare(edev);
+
+	for (i = 0; i < count; i += step) {
+		ret = eeprom_93xx46_write_word(edev, &buf[i], off + i);
+		if (ret) {
+			dev_err(&edev->spi->dev, "write failed at %d: %d\n",
+				(int)off + i, ret);
+			break;
+		}
+	}
+
+	if (edev->pdata->finish)
+		edev->pdata->finish(edev);
+
+	/* erase/write disable */
+	eeprom_93xx46_ew(edev, 0);
+	return ret;
+}
+
+static void select_assert(void *context)
+{
+	struct eeprom_93xx46_dev *edev = context;
+
+	if (gpio_is_valid(edev->pdata->select))
+		gpio_set_active(edev->pdata->select, true);
+}
+
+static void select_deassert(void *context)
+{
+	struct eeprom_93xx46_dev *edev = context;
+
+	if (gpio_is_valid(edev->pdata->select))
+		gpio_set_active(edev->pdata->select, false);
+}
+
+static const struct of_device_id eeprom_93xx46_of_table[] = {
+	{ .compatible = "eeprom-93xx46", },
+	{ .compatible = "atmel,at93c46d", .data = &atmel_at93c46d_data, },
+	{}
+};
+
+static int eeprom_93xx46_probe_dt(struct spi_device *spi)
+{
+	const struct of_device_id *of_id =
+		of_match_device(eeprom_93xx46_of_table, &spi->dev);
+	struct device_node *np = spi->dev.device_node;
+	struct eeprom_93xx46_platform_data *pd;
+	enum of_gpio_flags of_flags;
+	unsigned long flags = GPIOF_OUT_INIT_INACTIVE;
+	u32 tmp;
+	int ret;
+
+	pd = xzalloc(sizeof(*pd));
+
+	ret = of_property_read_u32(np, "data-size", &tmp);
+	if (ret < 0) {
+		dev_err(&spi->dev, "data-size property not found\n");
+		return ret;
+	}
+
+	if (tmp == 8) {
+		pd->flags |= EE_ADDR8;
+	} else if (tmp == 16) {
+		pd->flags |= EE_ADDR16;
+	} else {
+		dev_err(&spi->dev, "invalid data-size (%d)\n", tmp);
+		return -EINVAL;
+	}
+
+	if (of_property_read_bool(np, "read-only"))
+		pd->flags |= EE_READONLY;
+
+	pd->select =of_get_named_gpio_flags(np, "select", 0, &of_flags);
+	if (gpio_is_valid(pd->select)) {
+		char *name;
+
+		if (of_flags & OF_GPIO_ACTIVE_LOW)
+			flags |= GPIOF_ACTIVE_LOW;
+
+		name = basprintf("%s select", dev_name(&spi->dev));
+		ret  = gpio_request_one(pd->select, flags, name);
+		if (ret < 0)
+			return ret;
+	}
+
+	pd->prepare = select_assert;
+	pd->finish = select_deassert;
+
+	if (gpio_is_valid(pd->select))
+		gpio_set_active(pd->select, false);
+
+	if (of_id->data) {
+		const struct eeprom_93xx46_devtype_data *data = of_id->data;
+
+		pd->quirks = data->quirks;
+	}
+
+	spi->dev.platform_data = pd;
+
+	return 0;
+}
+
+static const struct nvmem_bus eeprom_93xx46_nvmem_bus = {
+	.write = eeprom_93xx46_write,
+	.read  = eeprom_93xx46_read,
+};
+
+static int eeprom_93xx46_probe(struct device_d *dev)
+{
+	struct spi_device *spi = (struct spi_device *)dev->type_data;
+	struct eeprom_93xx46_platform_data *pd;
+	struct eeprom_93xx46_dev *edev;
+	int err;
+
+	if (dev->device_node) {
+		err = eeprom_93xx46_probe_dt(spi);
+		if (err < 0)
+			return err;
+	}
+
+	pd = spi->dev.platform_data;
+	if (!pd) {
+		dev_err(&spi->dev, "missing platform data\n");
+		return -ENODEV;
+	}
+
+	edev = xzalloc(sizeof(*edev));
+
+	if (pd->flags & EE_ADDR8)
+		edev->addrlen = 7;
+	else if (pd->flags & EE_ADDR16)
+		edev->addrlen = 6;
+	else {
+		dev_err(&spi->dev, "unspecified address type\n");
+		err = -EINVAL;
+		goto fail;
+	}
+
+	edev->spi = spi;
+	edev->pdata = pd;
+
+	edev->size = 128;
+	edev->nvmem_config.name = dev_name(&spi->dev);
+	edev->nvmem_config.dev = &spi->dev;
+	edev->nvmem_config.read_only = pd->flags & EE_READONLY;
+	edev->nvmem_config.bus = &eeprom_93xx46_nvmem_bus;
+	edev->nvmem_config.stride = 4;
+	edev->nvmem_config.word_size = 1;
+	edev->nvmem_config.size = edev->size;
+
+	dev->priv = edev;
+
+	edev->nvmem = nvmem_register(&edev->nvmem_config);
+	if (IS_ERR(edev->nvmem)) {
+		err = PTR_ERR(edev->nvmem);
+		goto fail;
+	}
+
+	dev_info(&spi->dev, "%d-bit eeprom %s\n",
+		(pd->flags & EE_ADDR8) ? 8 : 16,
+		(pd->flags & EE_READONLY) ? "(readonly)" : "");
+
+	return 0;
+fail:
+	kfree(edev);
+	return err;
+}
+
+static struct driver_d eeprom_93xx46_driver = {
+	.name = "93xx46",
+	.probe = eeprom_93xx46_probe,
+	.of_compatible = DRV_OF_COMPAT(eeprom_93xx46_of_table),
+};
+device_spi_driver(eeprom_93xx46_driver);
+
+
+
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
