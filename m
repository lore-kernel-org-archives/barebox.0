Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QX7hM-0003CX-Rh
	for barebox@lists.infradead.org; Thu, 16 Jun 2011 08:13:11 +0000
Received: by wwb39 with SMTP id 39so910434wwb.18
	for <barebox@lists.infradead.org>; Thu, 16 Jun 2011 01:13:05 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 16 Jun 2011 10:12:43 +0200
Message-Id: <1308211963-4384-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [RFC PATCH] spi: add at25 spi eeprom driver
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/Kconfig              |    1 +
 drivers/Makefile             |    1 +
 drivers/misc/Kconfig         |   17 +++
 drivers/misc/Makefile        |    1 +
 drivers/misc/eeprom/Kconfig  |   11 ++
 drivers/misc/eeprom/Makefile |    1 +
 drivers/misc/eeprom/at25.c   |  323 ++++++++++++++++++++++++++++++++++++++++++
 drivers/spi/spi.c            |   42 ++++++
 include/spi/eeprom.h         |   22 +++
 include/spi/spi.h            |   78 ++++++++++-
 10 files changed, 495 insertions(+), 2 deletions(-)
 create mode 100644 drivers/misc/Kconfig
 create mode 100644 drivers/misc/Makefile
 create mode 100644 drivers/misc/eeprom/Kconfig
 create mode 100644 drivers/misc/eeprom/Makefile
 create mode 100644 drivers/misc/eeprom/at25.c
 create mode 100644 include/spi/eeprom.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 86d8fb5..c54e225 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -13,5 +13,6 @@ source "drivers/mci/Kconfig"
 source "drivers/clk/Kconfig"
 source "drivers/mfd/Kconfig"
 source "drivers/led/Kconfig"
+source "drivers/misc/Kconfig"

 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index b1b402f..9c67239 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
 obj-y	+= mfd/
 obj-$(CONFIG_LED) += led/
+obj-y	+= misc/
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
new file mode 100644
index 0000000..84d0e95
--- /dev/null
+++ b/drivers/misc/Kconfig
@@ -0,0 +1,17 @@
+#
+# Misc strange devices
+#
+
+menuconfig MISC_DEVICES
+	bool "Misc devices"
+	---help---
+	  Say Y here to get to see options for device drivers from various
+	  different categories. This option alone does not add any kernel code.
+
+	  If you say N, all options in this submenu will be skipped and disabled.
+
+if MISC_DEVICES
+
+source "drivers/misc/eeprom/Kconfig"
+
+endif # MISC_DEVICES
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
new file mode 100644
index 0000000..11e1ea4
--- /dev/null
+++ b/drivers/misc/Makefile
@@ -0,0 +1 @@
+obj-y				+= eeprom/
diff --git a/drivers/misc/eeprom/Kconfig b/drivers/misc/eeprom/Kconfig
new file mode 100644
index 0000000..a0b5489
--- /dev/null
+++ b/drivers/misc/eeprom/Kconfig
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
diff --git a/drivers/misc/eeprom/Makefile b/drivers/misc/eeprom/Makefile
new file mode 100644
index 0000000..e323bd0
--- /dev/null
+++ b/drivers/misc/eeprom/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_EEPROM_AT25)	+= at25.o
diff --git a/drivers/misc/eeprom/at25.c b/drivers/misc/eeprom/at25.c
new file mode 100644
index 0000000..16eb128
--- /dev/null
+++ b/drivers/misc/eeprom/at25.c
@@ -0,0 +1,323 @@
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
+		unsigned long	retries;
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
+		retries = 0;
+		do {
+
+			sr = spi_w8r8(at25->spi, AT25_RDSR);
+			if (sr < 0 || (sr & AT25_SR_nRDY)) {
+				dev_dbg(at25->cdev.dev,
+					"rdsr --> %d (%02x)\n", sr, sr);
+				mdelay(1);
+				continue;
+			}
+			if (!(sr & AT25_SR_nRDY))
+				break;
+		} while (retries++ < 3 || !is_timeout(start_time, EE_TIMEOUT));
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
+	at25->spi = dev->type_data;
+	at25->spi->mode = SPI_MODE_0;
+	at25->spi->bits_per_word = 8;
+	at25->cdev.ops = &at25_fops;
+	at25->cdev.size = chip->size;
+	at25->cdev.dev = dev;
+	at25->chip = *chip;
+	at25->addrlen = addrlen;
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
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 4560259..6456897 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -75,6 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	proxy->chip_select = chip->chip_select;
 	proxy->max_speed_hz = chip->max_speed_hz;
 	proxy->mode = chip->mode;
+	proxy->dev.platform_data = chip->platform_data;
 	strcpy(proxy->dev.name, chip->name);
 	proxy->dev.type_data = proxy;
 	status = register_device(&proxy->dev);
@@ -194,3 +195,44 @@ int spi_sync(struct spi_device *spi, struct spi_message *message)
 	return spi->master->transfer(spi, message);
 }

+/**
+ * spi_write_then_read - SPI synchronous write followed by read
+ * @spi: device with which data will be exchanged
+ * @txbuf: data to be written
+ * @n_tx: size of txbuf, in bytes
+ * @rxbuf: buffer into which data will be read
+ * @n_rx: size of rxbuf, in bytes
+ * Context: can sleep
+ *
+ * This performs a half duplex MicroWire style transaction with the
+ * device, sending txbuf and then reading rxbuf.  The return value
+ * is zero for success, else a negative errno status code.
+ * This call may only be used from a context that may sleep.
+ */
+int spi_write_then_read(struct spi_device *spi,
+		const void *txbuf, unsigned n_tx,
+		void *rxbuf, unsigned n_rx)
+{
+	int			status;
+	struct spi_message	message;
+	struct spi_transfer	x[2];
+
+	spi_message_init(&message);
+	memset(x, 0, sizeof x);
+	if (n_tx) {
+		x[0].len = n_tx;
+		spi_message_add_tail(&x[0], &message);
+	}
+	if (n_rx) {
+		x[1].len = n_rx;
+		spi_message_add_tail(&x[1], &message);
+	}
+
+	x[0].tx_buf = txbuf;
+	x[1].rx_buf = rxbuf;
+
+	/* do the i/o */
+	status = spi_sync(spi, &message);
+	return status;
+}
+EXPORT_SYMBOL(spi_write_then_read);
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
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 8dce8db..ac2013a 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -14,8 +14,8 @@ struct spi_board_info {
 	/* mode becomes spi_device.mode, and is essential for chips
 	 * where the default of SPI_CS_HIGH = 0 is wrong.
 	 */
-	u8		mode;
-
+	u8	mode;
+	void	*platform_data;
 };

 /**
@@ -349,6 +349,80 @@ static inline int spi_register_board_info(struct spi_board_info const *info,
 }
 #endif

+/**
+ * spi_write - SPI synchronous write
+ * @spi: device to which data will be written
+ * @buf: data buffer
+ * @len: data buffer size
+ * Context: can sleep
+ *
+ * This writes the buffer and returns zero or a negative error code.
+ * Callable only from contexts that can sleep.
+ */
+static inline int
+spi_write(struct spi_device *spi, const void *buf, size_t len)
+{
+	struct spi_transfer	t = {
+			.tx_buf		= buf,
+			.len		= len,
+		};
+	struct spi_message	m;
+
+	spi_message_init(&m);
+	spi_message_add_tail(&t, &m);
+	return spi_sync(spi, &m);
+}
+
+/**
+ * spi_read - SPI synchronous read
+ * @spi: device from which data will be read
+ * @buf: data buffer
+ * @len: data buffer size
+ * Context: can sleep
+ *
+ * This reads the buffer and returns zero or a negative error code.
+ * Callable only from contexts that can sleep.
+ */
+static inline int
+spi_read(struct spi_device *spi, void *buf, size_t len)
+{
+	struct spi_transfer	t = {
+			.rx_buf		= buf,
+			.len		= len,
+		};
+	struct spi_message	m;
+
+	spi_message_init(&m);
+	spi_message_add_tail(&t, &m);
+	return spi_sync(spi, &m);
+}
+
+/* this copies txbuf and rxbuf data; for small transfers only! */
+extern int spi_write_then_read(struct spi_device *spi,
+		const void *txbuf, unsigned n_tx,
+		void *rxbuf, unsigned n_rx);
+
+/**
+ * spi_w8r8 - SPI synchronous 8 bit write followed by 8 bit read
+ * @spi: device with which data will be exchanged
+ * @cmd: command to be written before data is read back
+ * Context: can sleep
+ *
+ * This returns the (unsigned) eight bit number returned by the
+ * device, or else a negative error code.  Callable only from
+ * contexts that can sleep.
+ */
+static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
+{
+	ssize_t			status;
+	u8			result;
+
+	status = spi_write_then_read(spi, &cmd, 1, &result, 1);
+
+	/* return negative errno or unsigned value */
+	return (status < 0) ? status : result;
+}
+
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */

 #endif /* __INCLUDE_SPI_H */
--
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
