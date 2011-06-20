Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYmJc-0002xe-V3
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 21:47:33 +0000
Received: by mail-fx0-f49.google.com with SMTP id 14so881030fxm.36
	for <barebox@lists.infradead.org>; Mon, 20 Jun 2011 14:47:28 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Mon, 20 Jun 2011 23:46:34 +0200
Message-Id: <1308606394-7510-3-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
References: <1308606394-7510-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [RFC PATCH 3/3] eeprom: add at25 eeprom driver
To: barebox@lists.infradead.org

This commit adds support for most spi eeproms, such as the
Atmel at25 models.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 Changes since previous version:
 - moved driver to drivers/eeprom (eliminated the misc folder)
 - removed mdelay in at25_write and retries in 'wait for ready' loop
   in at25_write. The loop is only guarded by the timeout now.

 drivers/Kconfig         |    1 +
 drivers/Makefile        |    1 +
 drivers/eeprom/Kconfig  |   11 ++
 drivers/eeprom/Makefile |    1 +
 drivers/eeprom/at25.c   |  319 +++++++++++++++++++++++++++++++++++++++++++++++
 include/spi/eeprom.h    |   22 ++++
 6 files changed, 355 insertions(+), 0 deletions(-)
 create mode 100644 drivers/eeprom/Kconfig
 create mode 100644 drivers/eeprom/Makefile
 create mode 100644 drivers/eeprom/at25.c
 create mode 100644 include/spi/eeprom.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 86d8fb5..c4e1517 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -13,5 +13,6 @@ source "drivers/mci/Kconfig"
 source "drivers/clk/Kconfig"
 source "drivers/mfd/Kconfig"
 source "drivers/led/Kconfig"
+source "drivers/eeprom/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index b1b402f..92b22bd 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
 obj-y	+= mfd/
 obj-$(CONFIG_LED) += led/
+obj-y	+= eeprom/
diff --git a/drivers/eeprom/Kconfig b/drivers/eeprom/Kconfig
new file mode 100644
index 0000000..a0b5489
--- /dev/null
+++ b/drivers/eeprom/Kconfig
@@ -0,0 +1,11 @@
+menu "EEPROM support"
+
+config EEPROM_AT25
+	tristate "SPI EEPROMs from most vendors"
+	depends on SPI
+	help
+	  Enable this driver to get read/write support to most SPI EEPROMs,
+	  after you configure the board init code to know about each eeprom
+	  on your target board.
+
+endmenu
diff --git a/drivers/eeprom/Makefile b/drivers/eeprom/Makefile
new file mode 100644
index 0000000..e323bd0
--- /dev/null
+++ b/drivers/eeprom/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_EEPROM_AT25)	+= at25.o
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
new file mode 100644
index 0000000..8a979d5
--- /dev/null
+++ b/drivers/eeprom/at25.c
@@ -0,0 +1,319 @@
+/*
+ * at25.c -- support most SPI EEPROMs, such as Atmel AT25 models
+ *
+ * Copyright (C) 2011 Hubert Feurstein <h.feurstein@gmail.com>
+ *
+ * based on linux driver by:
+ * Copyright (C) 2006 David Brownell
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <driver.h>
+#include <errno.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <spi/spi.h>
+#include <spi/eeprom.h>
+
+/*
+ * NOTE: this is an *EEPROM* driver.  The vagaries of product naming
+ * mean that some AT25 products are EEPROMs, and others are FLASH.
+ * Handle FLASH chips with the drivers/mtd/devices/m25p80.c driver,
+ * not this one!
+ */
+
+struct at25_data {
+	struct cdev		cdev;
+	struct spi_device	*spi;
+	struct spi_eeprom	chip;
+	unsigned		addrlen;
+};
+
+#define to_at25_data(cdev)		((struct at25_data *)(cdev)->priv)
+
+#define	AT25_WREN	0x06		/* latch the write enable */
+#define	AT25_WRDI	0x04		/* reset the write enable */
+#define	AT25_RDSR	0x05		/* read status register */
+#define	AT25_WRSR	0x01		/* write status register */
+#define	AT25_READ	0x03		/* read byte(s) */
+#define	AT25_WRITE	0x02		/* write byte(s)/sector */
+
+#define	AT25_SR_nRDY	0x01		/* nRDY = write-in-progress */
+#define	AT25_SR_WEN	0x02		/* write enable (latched) */
+#define	AT25_SR_BP0	0x04		/* BP for software writeprotect */
+#define	AT25_SR_BP1	0x08
+#define	AT25_SR_WPEN	0x80		/* writeprotect enable */
+
+
+#define EE_MAXADDRLEN	3		/* 24 bit addresses, up to 2 MBytes */
+
+/* Specs often allow 5 msec for a page write, sometimes 20 msec;
+ * it's important to recover from write timeouts.
+ */
+#define	EE_TIMEOUT	(25 * MSECOND)
+#define DRIVERNAME	"at25x"
+
+/*-------------------------------------------------------------------------*/
+
+#define	io_limit	PAGE_SIZE	/* bytes */
+
+static ssize_t at25_ee_read(struct cdev *cdev,
+			    void *buf,
+			    size_t count,
+			    ulong offset,
+			    ulong flags)
+{
+	u8			command[EE_MAXADDRLEN + 1];
+	u8			*cp;
+	ssize_t			status;
+	struct spi_transfer	t[2];
+	struct spi_message	m;
+	struct at25_data	*at25 = to_at25_data(cdev);
+
+	if (unlikely(offset >= at25->chip.size))
+		return 0;
+	if ((offset + count) > at25->chip.size)
+		count = at25->chip.size - offset;
+	if (unlikely(!count))
+		return count;
+
+	cp = command;
+	*cp++ = AT25_READ;
+
+	/* 8/16/24-bit address is written MSB first */
+	switch (at25->addrlen) {
+	default:	/* case 3 */
+		*cp++ = offset >> 16;
+	case 2:
+		*cp++ = offset >> 8;
+	case 1:
+	case 0:	/* can't happen: for better codegen */
+		*cp++ = offset >> 0;
+	}
+
+	spi_message_init(&m);
+	memset(t, 0, sizeof t);
+
+	t[0].tx_buf = command;
+	t[0].len = at25->addrlen + 1;
+	spi_message_add_tail(&t[0], &m);
+
+	t[1].rx_buf = buf;
+	t[1].len = count;
+	spi_message_add_tail(&t[1], &m);
+
+	/* Read it all at once.
+	 *
+	 * REVISIT that's potentially a problem with large chips, if
+	 * other devices on the bus need to be accessed regularly or
+	 * this chip is clocked very slowly
+	 */
+	status = spi_sync(at25->spi, &m);
+	dev_dbg(at25->cdev.dev,
+		"read %d bytes at %lu --> %d\n",
+		count, offset, (int) status);
+
+	return status ? status : count;
+}
+
+static ssize_t at25_ee_write(struct cdev *cdev,
+			     const void *buf,
+			     size_t count,
+			     ulong off,
+			     ulong flags)
+{
+	ssize_t			status = 0;
+	unsigned		written = 0;
+	unsigned		buf_size;
+	u8			*bounce;
+	struct at25_data	*at25 = to_at25_data(cdev);
+
+	if (unlikely(off >= at25->chip.size))
+		return -EFBIG;
+	if ((off + count) > at25->chip.size)
+		count = at25->chip.size - off;
+	if (unlikely(!count))
+		return count;
+
+	/* Temp buffer starts with command and address */
+	buf_size = at25->chip.page_size;
+	if (buf_size > io_limit)
+		buf_size = io_limit;
+	bounce = xmalloc(buf_size + at25->addrlen + 1);
+
+	/* For write, rollover is within the page ... so we write at
+	 * most one page, then manually roll over to the next page.
+	 */
+	bounce[0] = AT25_WRITE;
+
+	do {
+		uint64_t	start_time;
+		unsigned	segment;
+		unsigned	offset = (unsigned) off;
+		u8		*cp = bounce + 1;
+		int		sr;
+
+		*cp = AT25_WREN;
+		status = spi_write(at25->spi, cp, 1);
+		if (status < 0) {
+			dev_dbg(at25->cdev.dev, "WREN --> %d\n",
+					(int) status);
+			break;
+		}
+
+		/* 8/16/24-bit address is written MSB first */
+		switch (at25->addrlen) {
+		default:	/* case 3 */
+			*cp++ = offset >> 16;
+		case 2:
+			*cp++ = offset >> 8;
+		case 1:
+		case 0:	/* can't happen: for better codegen */
+			*cp++ = offset >> 0;
+		}
+
+		/* Write as much of a page as we can */
+		segment = buf_size - (offset % buf_size);
+		if (segment > count)
+			segment = count;
+		memcpy(cp, buf, segment);
+		status = spi_write(at25->spi, bounce,
+				segment + at25->addrlen + 1);
+		dev_dbg(at25->cdev.dev,
+				"write %u bytes at %u --> %d\n",
+				segment, offset, (int) status);
+		if (status < 0)
+			break;
+
+		/* REVISIT this should detect (or prevent) failed writes
+		 * to readonly sections of the EEPROM...
+		 */
+
+		/* Wait for non-busy status */
+		start_time = get_time_ns();
+
+		do {
+			sr = spi_w8r8(at25->spi, AT25_RDSR);
+			if (sr < 0 || (sr & AT25_SR_nRDY)) {
+				dev_dbg(at25->cdev.dev,
+					"rdsr --> %d (%02x)\n", sr, sr);
+				continue;
+			}
+			if (!(sr & AT25_SR_nRDY))
+				break;
+		} while (!is_timeout(start_time, EE_TIMEOUT));
+
+		if ((sr < 0) || (sr & AT25_SR_nRDY)) {
+			dev_err(at25->cdev.dev,
+				"write %d bytes offset %d, "
+				"timeout after %u msecs\n",
+				segment, offset,
+				(unsigned int)(get_time_ns() - start_time) /
+					1000000);
+			status = -ETIMEDOUT;
+			break;
+		}
+
+		off += segment;
+		buf += segment;
+		count -= segment;
+		written += segment;
+
+	} while (count > 0);
+
+	free(bounce);
+	return written ? written : status;
+}
+
+static off_t at25_ee_lseek(struct cdev *cdev, off_t off)
+{
+	return off;
+}
+
+static struct file_operations at25_fops = {
+	.read	= at25_ee_read,
+	.write	= at25_ee_write,
+	.lseek	= at25_ee_lseek,
+};
+
+static int at25_probe(struct device_d *dev)
+{
+	int err, sr;
+	int addrlen;
+	struct at25_data *at25 = NULL;
+	const struct spi_eeprom *chip;
+
+	/* Chip description */
+	chip = dev->platform_data;
+	if (!chip) {
+		dev_dbg(dev, "no chip description\n");
+		err = -ENODEV;
+		goto fail;
+	}
+
+	/* For now we only support 8/16/24 bit addressing */
+	if (chip->flags & EE_ADDR1) {
+		addrlen = 1;
+	} else if (chip->flags & EE_ADDR2) {
+		addrlen = 2;
+	} else if (chip->flags & EE_ADDR3) {
+		addrlen = 3;
+	} else {
+		dev_dbg(dev, "unsupported address type\n");
+		err = -EINVAL;
+		goto fail;
+	}
+
+	at25 = xzalloc(sizeof(*at25));
+	at25->chip = *chip;
+	at25->addrlen = addrlen;
+	at25->spi = dev->type_data;
+	at25->spi->mode = SPI_MODE_0;
+	at25->spi->bits_per_word = 8;
+	at25->cdev.ops = &at25_fops;
+	at25->cdev.size = chip->size;
+	at25->cdev.dev = dev;
+	at25->cdev.name = at25->chip.name[0] ? at25->chip.name : DRIVERNAME;
+	at25->cdev.priv = at25;
+
+	/* Ping the chip ... the status register is pretty portable,
+	 * unlike probing manufacturer IDs.  We do expect that system
+	 * firmware didn't write it in the past few milliseconds!
+	 */
+	sr = spi_w8r8(at25->spi, AT25_RDSR);
+	if (sr < 0 || sr & AT25_SR_nRDY) {
+		dev_dbg(dev, "rdsr --> %d (%02x)\n", sr, sr);
+		err = -ENXIO;
+		goto fail;
+	}
+
+	dev_dbg(dev, "%s probed\n", at25->cdev.name);
+	devfs_create(&at25->cdev);
+	return 0;
+
+fail:
+	if (at25)
+		free(at25);
+
+	return err;
+}
+
+static struct driver_d at25_driver = {
+	.name  = DRIVERNAME,
+	.probe = at25_probe,
+};
+
+static int at25_init(void)
+{
+	register_driver(&at25_driver);
+	return 0;
+}
+
+device_initcall(at25_init);
diff --git a/include/spi/eeprom.h b/include/spi/eeprom.h
new file mode 100644
index 0000000..15495e5
--- /dev/null
+++ b/include/spi/eeprom.h
@@ -0,0 +1,22 @@
+#ifndef _SPI_EEPROM_H
+#define _SPI_EEPROM_H
+
+/*
+ * Put one of these structures in platform_data for SPI EEPROMS handled
+ * by the "at25" driver.  On SPI, most EEPROMS understand the same core
+ * command set.  If you need to support EEPROMs that don't yet fit, add
+ * flags to support those protocol options.  These values all come from
+ * the chip datasheets.
+ */
+struct spi_eeprom {
+	char		name[10];
+	u16		page_size;		/* for writes */
+	u16		flags;
+#define	EE_ADDR1	0x0001			/*  8 bit addrs */
+#define	EE_ADDR2	0x0002			/* 16 bit addrs */
+#define	EE_ADDR3	0x0004			/* 24 bit addrs */
+#define	EE_READONLY	0x0008			/* disallow writes */
+	u32		size;
+};
+
+#endif /* _SPI_EEPROM_H */
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
