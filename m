Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QVLN1-0000FN-Nf
	for barebox@lists.infradead.org; Sat, 11 Jun 2011 10:24:50 +0000
Received: by wyb28 with SMTP id 28so3182642wyb.36
	for <barebox@lists.infradead.org>; Sat, 11 Jun 2011 03:24:45 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Fri, 10 Jun 2011 23:18:25 +0200
Message-Id: <1307740705-25299-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] [Nios2]: Add EPCS flash driver
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Add EPCS flash (FPGA configuration flash memory) driver.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/Kconfig          |    4 +
 arch/nios2/Makefile         |    1 +
 arch/nios2/drivers/Makefile |    1 +
 arch/nios2/drivers/epcs.c   |  403 +++++++++++++++++++++++++++++++++++++++++++
 arch/nios2/drivers/epcs.h   |   48 +++++
 5 files changed, 457 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/drivers/Makefile
 create mode 100644 arch/nios2/drivers/epcs.c
 create mode 100644 arch/nios2/drivers/epcs.h

diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
index b4b0429..abe8f77 100644
--- a/arch/nios2/Kconfig
+++ b/arch/nios2/Kconfig
@@ -28,6 +28,10 @@ config EARLY_PRINTF
 	default n
 	bool "Enable early printf functions"
 
+config EPCS_FLASH_DRIVER
+	default n
+	bool "Support for EPCS flash memory"
+
 endmenu
 
 source common/Kconfig
diff --git a/arch/nios2/Makefile b/arch/nios2/Makefile
index 6603da5..ab83847 100644
--- a/arch/nios2/Makefile
+++ b/arch/nios2/Makefile
@@ -20,6 +20,7 @@ endif
 common-y += $(BOARD)
 common-y += arch/nios2/lib/
 common-y += arch/nios2/cpu/
+common-y += arch/nios2/drivers/
 
 lds-y += arch/nios2/cpu/barebox.lds
 
diff --git a/arch/nios2/drivers/Makefile b/arch/nios2/drivers/Makefile
new file mode 100644
index 0000000..6480e64
--- /dev/null
+++ b/arch/nios2/drivers/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_EPCS_FLASH_DRIVER) += epcs.o
diff --git a/arch/nios2/drivers/epcs.c b/arch/nios2/drivers/epcs.c
new file mode 100644
index 0000000..5584086
--- /dev/null
+++ b/arch/nios2/drivers/epcs.c
@@ -0,0 +1,403 @@
+/*
+ *
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <progress.h>
+#include <asm/nios2-io.h>
+#include <asm/io.h>
+
+#include "epcs.h"
+
+static struct epcs_devinfo devinfo_detect[] = {
+	{ "EPCS1 ", 0x10, 17, 4, 15, 8, 0x0c, NULL},
+	{ "EPCS4 ", 0x12, 19, 8, 16, 8, 0x1c, NULL},
+	{ "EPCS16", 0x14, 21, 32, 16, 8, 0x1c, NULL},
+	{ "EPCS64", 0x16, 23, 128, 16, 8, 0x1c, NULL},
+	{ 0, 0, 0, 0, 0, 0, 0, NULL},
+};
+
+static int epcs_cs(struct nios_spi *reg_base, int assert)
+{
+	unsigned int tmp;
+
+	if (assert) {
+		tmp = readw(&reg_base->control);
+		writew(tmp | NIOS_SPI_SSO, &reg_base->control);
+	} else {
+		/* Let all bits shift out */
+		while ((readw(&reg_base->status) & NIOS_SPI_TMT) == 0);
+
+		tmp = readw(&reg_base->control);
+		writew(tmp & ~NIOS_SPI_SSO, &reg_base->control);
+	}
+
+	return 0;
+}
+
+static int epcs_tx(struct nios_spi *reg_base, unsigned char c)
+{
+	while ((readw(&reg_base->status) & NIOS_SPI_TRDY) == 0);
+	writew(c, &reg_base->txdata);
+
+	return 0;
+}
+
+static int epcs_rx(struct nios_spi *reg_base)
+{
+	while ((readw(&reg_base->status) & NIOS_SPI_RRDY) == 0);
+
+	return readw(&reg_base->rxdata);
+}
+
+static void epcs_rcv(struct nios_spi *reg_base, unsigned char *dst, int len)
+{
+	while (len--) {
+		epcs_tx(reg_base, 0);
+		*dst++ = epcs_rx(reg_base);
+	}
+}
+
+static void epcs_rrcv(struct nios_spi *reg_base, unsigned char *dst, int len)
+{
+	while (len--) {
+		epcs_tx(reg_base, 0);
+		*dst++ = epcs_bitrev(epcs_rx(reg_base));
+	}
+}
+
+static void epcs_snd(struct nios_spi *reg_base, unsigned char *src, int len)
+{
+	while (len--) {
+		epcs_tx(reg_base, *src++);
+		epcs_rx(reg_base);
+	}
+}
+
+static void epcs_rsnd(struct nios_spi *reg_base, unsigned char *src, int len)
+{
+	while (len--) {
+		epcs_tx(reg_base, epcs_bitrev(*src++));
+		epcs_rx(reg_base);
+	}
+}
+
+static void epcs_wr_enable(struct nios_spi *reg_base)
+{
+	epcs_cs(reg_base, 1);
+	epcs_tx(reg_base, EPCS_WRITE_ENA);
+	epcs_rx(reg_base);
+	epcs_cs(reg_base, 0);
+}
+
+static unsigned char epcs_status_rd(struct nios_spi *reg_base)
+{
+	unsigned char status;
+
+	epcs_cs(reg_base, 1);
+	epcs_tx(reg_base, EPCS_READ_STAT);
+	epcs_rx(reg_base);
+	epcs_tx(reg_base, 0);
+	status = epcs_rx(reg_base);
+	epcs_cs(reg_base, 0);
+
+	return status;
+}
+
+int epcs_reset(struct nios_spi *reg_base)
+{
+	/* When booting from an epcs controller, the epcs bootrom
+	* code may leave the slave select in an asserted state.
+	* This causes two problems: (1) The initial epcs access
+	* will fail -- not a big deal, and (2) a software reset
+	* will cause the bootrom code to hang since it does not
+	* ensure the select is negated prior to first access -- a
+	* big deal. Here we just negate chip select and everything
+	* gets better :-)
+	*/
+	epcs_cs(reg_base, 0); /* Negate chip select */
+
+	return 0;
+}
+
+int epcs_dev_find(unsigned long map_base, struct epcs_devinfo *dev)
+{
+	unsigned char buf[4];
+	unsigned char id;
+	int i;
+
+	struct nios_spi *reg_base = (struct nios_spi *) map_base;
+
+	/* Read silicon id requires 3 "dummy bytes" before it's put
+	* on the wire.
+	*/
+	buf[0] = EPCS_READ_ID;
+	buf[1] = 0;
+	buf[2] = 0;
+	buf[3] = 0;
+
+	epcs_cs(reg_base, 1);
+	epcs_snd(reg_base, buf, 4);
+	epcs_rcv(reg_base, buf, 1);
+
+	if (epcs_cs(reg_base, 0) == -1)
+		return 0;
+
+	id = buf[0];
+
+	/* Find the info struct */
+	i = 0;
+	while (devinfo_detect[i].name) {
+		if (id == devinfo_detect[i].id) {
+			memcpy(dev, &devinfo_detect[i], sizeof(struct epcs_devinfo));
+		return 1;
+		}
+		i++;
+	}
+
+	return 0;
+}
+
+int epcs_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	unsigned off, sectsz;
+	unsigned char buf[4];
+	unsigned start_sector;
+	unsigned end_sector;
+
+	struct epcs_devinfo *epcs_device_info = cdev->priv;
+
+	sectsz = (1 << epcs_device_info->sz_sect);
+
+	start_sector = offset / sectsz;
+	end_sector = (offset + count) / sectsz;
+
+	/* Erase the requested sectors. An address is required
+	* that lies within the requested sector -- we'll just
+	* use the first address in the sector.
+	*/
+
+	init_progression_bar(end_sector - start_sector + 1);
+
+	sectsz = (1 << epcs_device_info->sz_sect);
+
+	while (start_sector <= end_sector) {
+		off = start_sector * sectsz;
+		start_sector++;
+
+		buf[0] = EPCS_ERASE_SECT;
+		buf[1] = off >> 16;
+		buf[2] = off >> 8;
+		buf[3] = off;
+
+		epcs_wr_enable(epcs_device_info->reg_base);
+		epcs_cs(epcs_device_info->reg_base, 1);
+		epcs_snd(epcs_device_info->reg_base, buf, 4);
+		epcs_cs(epcs_device_info->reg_base, 0);
+
+		show_progress(start_sector);
+
+		/* Wait for erase to complete */
+		while (epcs_status_rd(epcs_device_info->reg_base) & EPCS_STATUS_WIP);
+	}
+
+	printf("\n");
+
+	return 0;
+}
+
+static ssize_t epcs_read(struct cdev *cdev, void* buf, size_t count, ulong offset, ulong flags)
+{
+	unsigned char txbuf[4];
+	struct epcs_devinfo *epcs_device_info = cdev->priv;
+
+	txbuf[0] = EPCS_READ_BYTES;
+	txbuf[1] = offset >> 16;
+	txbuf[2] = offset >> 8;
+	txbuf[3] = offset;
+
+	epcs_cs(epcs_device_info->reg_base, 1);
+	epcs_snd(epcs_device_info->reg_base, txbuf, 4);
+	epcs_rrcv(epcs_device_info->reg_base, (unsigned char *) buf, count);
+	epcs_cs(epcs_device_info->reg_base, 0);
+
+	return count;
+}
+
+ssize_t epcs_write(struct cdev *cdev, const void *buf, size_t count, unsigned long offset, ulong flags)
+{
+	unsigned long wrcnt;
+	unsigned pgsz;
+	unsigned char txbuf[4];
+	struct epcs_devinfo *epcs_device_info = cdev->priv;
+	size_t count_bak;
+
+	count_bak = count;
+	pgsz = (1 << epcs_device_info->sz_page);
+
+	while (count) {
+		if (offset % pgsz)
+			wrcnt = pgsz - (offset % pgsz);
+		else
+			wrcnt = pgsz;
+
+		wrcnt = (wrcnt > count) ? count : wrcnt;
+
+		txbuf[0] = EPCS_WRITE_BYTES;
+		txbuf[1] = offset >> 16;
+		txbuf[2] = offset >> 8;
+		txbuf[3] = offset;
+
+		epcs_wr_enable(epcs_device_info->reg_base);
+		epcs_cs(epcs_device_info->reg_base, 1);
+		epcs_snd(epcs_device_info->reg_base, txbuf, 4);
+		epcs_rsnd(epcs_device_info->reg_base, (unsigned char *)buf, wrcnt);
+		epcs_cs(epcs_device_info->reg_base, 0);
+
+		/* Wait for write to complete */
+		while (epcs_status_rd(epcs_device_info->reg_base) & EPCS_STATUS_WIP);
+
+		count -= wrcnt;
+		offset += wrcnt;
+		buf += wrcnt;
+	}
+
+	return count_bak;
+}
+
+static int epcs_sect_erased(int sect, unsigned int *offset,
+	struct epcs_devinfo *epcs_device_info) {
+
+	unsigned char buf[128];
+	unsigned off, end;
+	unsigned sectsz;
+	int i;
+
+	sectsz = (1 << epcs_device_info->sz_sect);
+	off = sectsz * sect;
+	end = off + sectsz;
+
+	while (off < end) {
+		epcs_read(&epcs_device_info->cdev, &buf, sizeof(buf), off, 0);
+		for (i = 0; i < sizeof(buf); i++) {
+			if (buf[i] != 0xff) {
+				*offset = off + i;
+				return 0;
+			}
+		}
+		off += sizeof(buf);
+	}
+
+	return 1;
+}
+
+static void epcs_info(struct device_d *dev)
+{
+	struct epcs_devinfo *epcs_device_info = dev->priv;
+	unsigned int i;
+	unsigned char stat;
+	unsigned int tmp;
+	unsigned char erased;
+
+	/* Basic device info */
+	printf("%s: %d kbytes (%d sectors x %d kbytes, %d bytes/page)\n",
+		epcs_device_info->name, 1 << (epcs_device_info->size - 10),
+		epcs_device_info->num_sects, 1 << (epcs_device_info->sz_sect - 10),
+		1 << epcs_device_info->sz_page);
+
+	/* Status -- for now protection is all-or-nothing */
+	stat = epcs_status_rd(epcs_device_info->reg_base);
+
+	printf("status: 0x%02x (WIP:%d, WEL:%d, PROT:%s)\n",
+		stat,
+		(stat & EPCS_STATUS_WIP) ? 1 : 0,
+		(stat & EPCS_STATUS_WEL) ? 1 : 0,
+		(stat & epcs_device_info->prot_mask) ? "on" : "off");
+
+	/* Sector info */
+	for (i = 0; (i < epcs_device_info->num_sects); i++) {
+		erased = epcs_sect_erased(i, &tmp, dev->priv);
+		printf("\n");
+		printf("Sector %4d: %07x ", i, i * (1 << epcs_device_info->sz_sect));
+		if (erased)
+			printf("Erased ");
+		else
+			printf("  ");
+	}
+
+	printf("\n\n");
+}
+
+struct file_operations epcs_ops = {
+	.read = epcs_read,
+	.write = epcs_write,
+	.erase = epcs_erase,
+	.lseek = dev_lseek_default,
+};
+
+static int epcs_probe(struct device_d *dev)
+{
+	struct epcs_devinfo *epcs_device_info = xzalloc(sizeof(struct epcs_devinfo));
+
+	if (!dev->map_base)
+		return -ENODEV;
+
+	if (!(epcs_dev_find(dev->map_base, epcs_device_info))) {
+		printf("EPCS device not found.\n");
+		return -ENODEV;
+	} else
+		printf("%s device found\n", epcs_device_info->name);
+
+	epcs_device_info->reg_base = (struct nios_spi *) dev->map_base;
+	dev->priv = (void *) epcs_device_info;
+	dev->size = 1 << (epcs_device_info->size);
+
+	epcs_device_info->cdev.name = asprintf("epcs%d", dev->id);
+	epcs_device_info->cdev.size = 1 << (epcs_device_info->size);
+	epcs_device_info->cdev.dev = dev;
+	epcs_device_info->cdev.ops = &epcs_ops;
+	epcs_device_info->cdev.priv = epcs_device_info;
+
+	devfs_create(&epcs_device_info->cdev);
+
+	return 0;
+}
+
+static struct driver_d epcs_driver = {
+	.name = "epcs_flash",
+	.probe = epcs_probe,
+	.info = epcs_info,
+};
+
+static int epcs_init(void)
+{
+	return register_driver(&epcs_driver);
+}
+
+device_initcall(epcs_init);
+
diff --git a/arch/nios2/drivers/epcs.h b/arch/nios2/drivers/epcs.h
new file mode 100644
index 0000000..1b500a2
--- /dev/null
+++ b/arch/nios2/drivers/epcs.h
@@ -0,0 +1,48 @@
+#ifndef __EPCS_H
+#define __EPCS_H
+
+#include <asm/nios2-io.h>
+
+#define EPCS_WRITE_ENA		0x06	/* Write enable */
+#define EPCS_WRITE_DIS		0x04	/* Write disable */
+#define EPCS_READ_STAT		0x05	/* Read status */
+#define EPCS_READ_BYTES		0x03	/* Read bytes */
+#define EPCS_READ_ID		0xab	/* Read silicon id */
+#define EPCS_WRITE_STAT		0x01	/* Write status */
+#define EPCS_WRITE_BYTES	0x02	/* Write bytes */
+#define EPCS_ERASE_BULK		0xc7	/* Erase entire device */
+#define EPCS_ERASE_SECT		0xd8	/* Erase sector */
+
+#define EPCS_STATUS_WIP		(1<<0)	/* Write in progress */
+#define EPCS_STATUS_WEL		(1<<1)	/* Write enable latch */
+
+#define EPCS_TIMEOUT		100	/* 100 msec timeout */
+
+struct epcs_devinfo {
+	const char	*name;		/* Device name */
+	unsigned char	id;		/* Device silicon id */
+	unsigned char	size;		/* Total size log2(bytes)*/
+	unsigned char	num_sects;	/* Number of sectors */
+	unsigned char	sz_sect;	/* Sector size log2(bytes) */
+	unsigned char	sz_page;	/* Page size log2(bytes) */
+	unsigned char	prot_mask;	/* Protection mask */
+	struct nios_spi	*reg_base;	/* Registers base */
+	struct cdev	cdev;
+};
+
+static unsigned char bitrev[] = {
+	0x00, 0x08, 0x04, 0x0c, 0x02, 0x0a, 0x06, 0x0e,
+	0x01, 0x09, 0x05, 0x0d, 0x03, 0x0b, 0x07, 0x0f
+};
+
+static inline unsigned char epcs_bitrev(unsigned char c)
+{
+	unsigned char val;
+
+	val = bitrev[c >> 4];
+	val |= bitrev[c & 0x0f] << 4;
+	return val;
+}
+
+#endif /* __EPCS_H */
+
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
