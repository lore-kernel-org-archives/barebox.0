Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbaz-00081Q-2x
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:27 +0100
Message-Id: <1354800870-28385-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] ata: Add ahci support
To: barebox@lists.infradead.org

This adds ahci controller support based on U-Boot ahci support. Unlike
U-Boot we do not push the SCSI layer in between, but use the ata interface
directly. Tested on a Freescale i.MX53.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/Kconfig  |    5 +
 drivers/ata/Makefile |    1 +
 drivers/ata/ahci.c   |  678 ++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/ata/ahci.h   |  182 ++++++++++++++
 4 files changed, 866 insertions(+)
 create mode 100644 drivers/ata/ahci.c
 create mode 100644 drivers/ata/ahci.h

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index c66f13d..3eca390 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -33,6 +33,11 @@ config DISK_ATA
 	help
 	  Support for native ATA/IDE drives
 
+config DISK_AHCI
+	bool "AHCI support"
+	select DISK_ATA
+	select DISK_DRIVE
+
 comment "interface types"
 
 config DISK_INTF_PLATFORM_IDE
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index e27299e..7fbef32 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -3,6 +3,7 @@
 obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
 obj-$(CONFIG_DISK_IDE_SFF) += ide-sff.o
 obj-$(CONFIG_DISK_ATA) += disk_ata_drive.o
+obj-$(CONFIG_DISK_AHCI) += ahci.o
 
 # interface types
 
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
new file mode 100644
index 0000000..14de3c5
--- /dev/null
+++ b/drivers/ata/ahci.c
@@ -0,0 +1,678 @@
+/*
+ * Copyright (C) Freescale Semiconductor, Inc. 2006.
+ * Author: Jason Jin<Jason.jin@freescale.com>
+ *         Zhang Wei<wei.zhang@freescale.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ * with the reference on libata and ahci drvier in kernel
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <io.h>
+#include <malloc.h>
+#include <scsi.h>
+#include <linux/ctype.h>
+#include <disks.h>
+#include <asm/mmu.h>
+#include <ata_drive.h>
+#include <sizes.h>
+#include <clock.h>
+
+#include "ahci.h"
+
+#define AHCI_MAX_DATA_BYTE_COUNT  SZ_4M
+
+/*
+ * Some controllers limit number of blocks they can read/write at once.
+ * Contemporary SSD devices work much faster if the read/write size is aligned
+ * to a power of 2.
+ */
+#define MAX_SATA_BLOCKS_READ_WRITE	0x80
+
+/* Maximum timeouts for each event */
+#define WAIT_SPINUP	(10 * SECOND)
+#define WAIT_DATAIO	(5 * SECOND)
+#define WAIT_FLUSH	(5 * SECOND)
+#define WAIT_LINKUP	(4 * MSECOND)
+
+#define ahci_port_debug(port, fmt, arg...) \
+	dev_dbg(port->ahci->dev, "port %d: " fmt, port->num, ##arg)
+
+#define ahci_port_info(port, fmt, arg...) \
+	dev_info(port->ahci->dev, "port %d: " fmt, port->num, ##arg)
+
+#define ahci_debug(ahci, fmt, arg...) \
+	dev_dbg(ahci->dev, fmt, ##arg)
+
+struct ahci_cmd_hdr {
+	u32	opts;
+	u32	status;
+	u32	tbl_addr;
+	u32	tbl_addr_hi;
+	u32	reserved[4];
+};
+
+struct ahci_sg {
+	u32	addr;
+	u32	addr_hi;
+	u32	reserved;
+	u32	flags_size;
+};
+
+static inline void ahci_iowrite(struct ahci_device *ahci, int ofs, u32 val)
+{
+	writel(val, ahci->mmio_base + ofs);
+}
+
+static inline u32 ahci_ioread(struct ahci_device *ahci, int ofs)
+{
+	return readl(ahci->mmio_base + ofs);
+}
+
+static inline void ahci_iowrite_f(struct ahci_device *ahci, int ofs, u32 val)
+{
+	writel(val, ahci->mmio_base + ofs);
+	readl(ahci->mmio_base);
+}
+
+static inline void ahci_port_write(struct ahci_port *port, int ofs, u32 val)
+{
+	writel(val, port->port_mmio + ofs);
+}
+
+static inline void ahci_port_write_f(struct ahci_port *port, int ofs, u32 val)
+{
+	writel(val, port->port_mmio + ofs);
+	readl(port->port_mmio + ofs);
+}
+
+static inline u32 ahci_port_read(struct ahci_port *port, int ofs)
+{
+	return readl(port->port_mmio + ofs);
+}
+
+static inline void __iomem *ahci_port_base(void __iomem *base, int port)
+{
+	return base + 0x100 + (port * 0x80);
+}
+
+static int ahci_link_ok(struct ahci_port *ahci_port, int verbose)
+{
+	u32 val = ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf;
+
+	if (val == 0x3)
+		return true;
+
+	if (verbose)
+		dev_err(ahci_port->ahci->dev, "port %d: no link\n", ahci_port->num);
+
+	return false;
+}
+
+static void ahci_fill_cmd_slot(struct ahci_port *ahci_port, u32 opts)
+{
+	ahci_port->cmd_slot->opts = cpu_to_le32(opts);
+	ahci_port->cmd_slot->status = 0;
+	ahci_port->cmd_slot->tbl_addr =
+		cpu_to_le32((unsigned long)ahci_port->cmd_tbl & 0xffffffff);
+	ahci_port->cmd_slot->tbl_addr_hi = 0;
+}
+
+static int ahci_fill_sg(struct ahci_port *ahci_port, const void *buf, int buf_len)
+{
+	struct ahci_sg *ahci_sg = ahci_port->cmd_tbl_sg;
+	u32 sg_count;
+
+	sg_count = ((buf_len - 1) / AHCI_MAX_DATA_BYTE_COUNT) + 1;
+	if (sg_count > AHCI_MAX_SG)
+		return -EINVAL;
+
+	while (buf_len) {
+		unsigned int now = min(AHCI_MAX_DATA_BYTE_COUNT, buf_len);
+
+		ahci_sg->addr = cpu_to_le32((u32)buf);
+		ahci_sg->addr_hi = 0;
+		ahci_sg->flags_size = cpu_to_le32(now - 1);
+
+		buf_len -= now;
+		buf += now;
+	}
+
+	return sg_count;
+}
+
+static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf,
+		const void *wbuf, int buf_len)
+{
+	u32 opts;
+	int sg_count;
+	int ret;
+
+	if (!ahci_link_ok(ahci_port, 1))
+		return -EIO;
+
+	if (wbuf)
+		dma_flush_range((unsigned long)wbuf, (unsigned long)wbuf + buf_len);
+
+	memcpy((unsigned char *)ahci_port->cmd_tbl, fis, fis_len);
+
+	sg_count = ahci_fill_sg(ahci_port, rbuf ? rbuf : wbuf, buf_len);
+	opts = (fis_len >> 2) | (sg_count << 16);
+	if (wbuf)
+		opts |= 1 << 6;
+	ahci_fill_cmd_slot(ahci_port, opts);
+
+	ahci_port_write_f(ahci_port, PORT_CMD_ISSUE, 1);
+
+	ret = wait_on_timeout(WAIT_DATAIO,
+			(readl(ahci_port->port_mmio + PORT_CMD_ISSUE) & 0x1) == 0);
+	if (ret)
+		return -ETIMEDOUT;
+
+	if (rbuf)
+		dma_inv_range((unsigned long)rbuf, (unsigned long)rbuf + buf_len);
+
+	return 0;
+}
+
+/*
+ * SCSI INQUIRY command operation.
+ */
+static int ahci_read_id(struct ata_port *ata, void *buf)
+{
+	struct ahci_port *ahci = container_of(ata, struct ahci_port, ata);
+	u8 fis[20];
+	int ret;
+
+	memset(fis, 0, sizeof(fis));
+
+	/* Construct the FIS */
+	fis[0] = 0x27;			/* Host to device FIS. */
+	fis[1] = 1 << 7;		/* Command FIS. */
+	fis[2] = ATA_CMD_ID_ATA;	/* Command byte. */
+
+	ret = ahci_io(ahci, fis, sizeof(fis), buf, NULL, SECTOR_SIZE);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
+static int ahci_rw(struct ata_port *ata, void *rbuf, const void *wbuf,
+		unsigned int block, int num_blocks)
+{
+	struct ahci_port *ahci = container_of(ata, struct ahci_port, ata);
+	u8 fis[20];
+	int ret;
+
+	memset(fis, 0, sizeof(fis));
+
+	/* Construct the FIS */
+	fis[0] = 0x27;			/* Host to device FIS. */
+	fis[1] = 1 << 7;		/* Command FIS. */
+	fis[2] = wbuf ? ATA_CMD_WRITE_EXT : ATA_CMD_READ_EXT;	/* Command byte. */
+
+	while (num_blocks) {
+		int now;
+
+		now = min(MAX_SATA_BLOCKS_READ_WRITE, num_blocks);
+
+		fis[4] = (block >> 0) & 0xff;
+		fis[5] = (block >> 8) & 0xff;
+		fis[6] = (block >> 16) & 0xff;
+		fis[7] = 1 << 6; /* device reg: set LBA mode */
+		fis[8] = ((block >> 24) & 0xff);
+		fis[3] = 0xe0; /* features */
+
+		/* Block (sector) count */
+		fis[12] = (now >> 0) & 0xff;
+		fis[13] = (now >> 8) & 0xff;
+
+		ret = ahci_io(ahci, fis, sizeof(fis), rbuf, wbuf, now * SECTOR_SIZE);
+		if (ret)
+			return ret;
+
+		if (rbuf)
+			rbuf += now * SECTOR_SIZE;
+		if (wbuf)
+			wbuf += now * SECTOR_SIZE;
+		num_blocks -= now;
+		block += now;
+	}
+
+	return 0;
+}
+
+static int ahci_read(struct ata_port *ata, void *buf, unsigned int block,
+		int num_blocks)
+{
+	return ahci_rw(ata, buf, NULL, block, num_blocks);
+}
+
+static int ahci_write(struct ata_port *ata, const void *buf, unsigned int block,
+		int num_blocks)
+{
+	return ahci_rw(ata, NULL, buf, block, num_blocks);
+}
+
+static struct ata_port_operations ahci_ops = {
+	.read_id = ahci_read_id,
+	.read = ahci_read,
+	.write = ahci_write,
+};
+
+static int ahci_init_port(struct ahci_port *ahci_port)
+{
+	void __iomem *port_mmio;
+	u32 val, cmd;
+	int ret;
+
+	port_mmio = ahci_port->port_mmio;
+
+	/* make sure port is not active */
+	val = ahci_port_read(ahci_port, PORT_CMD);
+	if (val & (PORT_CMD_LIST_ON | PORT_CMD_FIS_ON | PORT_CMD_FIS_RX | PORT_CMD_START)) {
+		ahci_port_debug(ahci_port, "Port is active. Deactivating.\n");
+		val &= ~(PORT_CMD_LIST_ON | PORT_CMD_FIS_ON |
+			 PORT_CMD_FIS_RX | PORT_CMD_START);
+		ahci_port_write(ahci_port, PORT_CMD, val);
+
+		/*
+		 * spec says 500 msecs for each bit, so
+		 * this is slightly incorrect.
+		 */
+		mdelay(500);
+	}
+
+	/*
+	 * First item in chunk of DMA memory: 32-slot command table,
+	 * 32 bytes each in size
+	 */
+	ahci_port->cmd_slot = dma_alloc_coherent(AHCI_CMD_SLOT_SZ * 32);
+	if (!ahci_port->cmd_slot) {
+		ret = -ENOMEM;
+		goto err_alloc;
+	}
+
+	ahci_port_debug(ahci_port, "cmd_slot = 0x%x\n", (unsigned)ahci_port->cmd_slot);
+
+	/*
+	 * Second item: Received-FIS area
+	 */
+	ahci_port->rx_fis = (unsigned long)dma_alloc_coherent(AHCI_RX_FIS_SZ);
+	if (!ahci_port->rx_fis) {
+		ret = -ENOMEM;
+		goto err_alloc1;
+	}
+
+	/*
+	 * Third item: data area for storing a single command
+	 * and its scatter-gather table
+	 */
+	ahci_port->cmd_tbl = dma_alloc_coherent(AHCI_CMD_TBL_SZ);
+	if (!ahci_port->cmd_tbl) {
+		ret = -ENOMEM;
+		goto err_alloc2;
+	}
+
+	memset(ahci_port->cmd_slot, 0, AHCI_CMD_SLOT_SZ * 32);
+	memset((void *)ahci_port->rx_fis, 0, AHCI_RX_FIS_SZ);
+	memset(ahci_port->cmd_tbl, 0, AHCI_CMD_TBL_SZ);
+
+	ahci_port_debug(ahci_port, "cmd_tbl_dma = 0x%p\n", ahci_port->cmd_tbl);
+
+	ahci_port->cmd_tbl_sg = ahci_port->cmd_tbl + AHCI_CMD_TBL_HDR_SZ;
+
+	ahci_port_write_f(ahci_port, PORT_LST_ADDR, (u32)ahci_port->cmd_slot);
+	ahci_port_write_f(ahci_port, PORT_FIS_ADDR, ahci_port->rx_fis);
+
+	/*
+	 * Add the spinup command to whatever mode bits may
+	 * already be on in the command register.
+	 */
+	cmd = ahci_port_read(ahci_port, PORT_CMD);
+	cmd |= PORT_CMD_FIS_RX;
+	cmd |= PORT_CMD_SPIN_UP;
+	cmd |= PORT_CMD_ICC_ACTIVE;
+	ahci_port_write_f(ahci_port, PORT_CMD, cmd);
+
+	mdelay(10);
+
+	cmd = ahci_port_read(ahci_port, PORT_CMD);
+	cmd |= PORT_CMD_START;
+	ahci_port_write_f(ahci_port, PORT_CMD, cmd);
+
+	/*
+	 * Bring up SATA link.
+	 * SATA link bringup time is usually less than 1 ms; only very
+	 * rarely has it taken between 1-2 ms. Never seen it above 2 ms.
+	 */
+	ret = wait_on_timeout(WAIT_LINKUP,
+			(ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 0x3);
+	if (ret) {
+		ahci_port_info(ahci_port, "SATA link timeout\n");;
+		ret = -ETIMEDOUT;
+		goto err_init;
+	}
+
+	ahci_port_info(ahci_port, "SATA link ok\n");
+
+	/* Clear error status */
+	val = ahci_port_read(ahci_port, PORT_SCR_ERR);
+	if (val)
+		ahci_port_write(ahci_port, PORT_SCR_ERR, val);
+
+	ahci_port_info(ahci_port, "Spinning up device...\n");
+
+	ret = wait_on_timeout(WAIT_SPINUP,
+			(readl(port_mmio + PORT_TFDATA) &
+			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0);
+	if (ret) {
+		ahci_port_info(ahci_port, "timeout.\n");
+		ret = -ENODEV;
+		goto err_init;
+	}
+
+	ahci_port_info(ahci_port, "ok.\n");
+
+	val = ahci_port_read(ahci_port, PORT_SCR_ERR);
+
+	ahci_port_write(ahci_port, PORT_SCR_ERR, val);
+
+	/* ack any pending irq events for this port */
+	val = ahci_port_read(ahci_port, PORT_IRQ_STAT);
+	if (val)
+		ahci_port_write(ahci_port, PORT_IRQ_STAT, val);
+
+	ahci_iowrite(ahci_port->ahci, HOST_IRQ_STAT, 1 << ahci_port->num);
+
+	/* set irq mask (enables interrupts) */
+	ahci_port_write(ahci_port, PORT_IRQ_MASK, DEF_PORT_IRQ);
+
+	/* register linkup ports */
+	val = ahci_port_read(ahci_port, PORT_SCR_STAT);
+
+	ahci_port_debug(ahci_port, "status: 0x%08x\n", val);
+
+	ahci_port->ata.ops = &ahci_ops;
+
+	if ((val & 0xf) == 0x03)
+		return 0;
+
+	ret = -ENODEV;
+
+err_init:
+	dma_free_coherent(ahci_port->cmd_tbl, AHCI_CMD_TBL_SZ);
+err_alloc2:
+	dma_free_coherent((void *)ahci_port->rx_fis, AHCI_RX_FIS_SZ);
+err_alloc1:
+	dma_free_coherent(ahci_port->cmd_slot, AHCI_CMD_SLOT_SZ * 32);
+err_alloc:
+	return ret;
+}
+
+static int ahci_host_init(struct ahci_device *ahci)
+{
+	u8 *mmio = (u8 *)ahci->mmio_base;
+	u32 tmp, cap_save;
+	int i, ret;
+
+	ahci_debug(ahci, "ahci_host_init: start\n");
+
+	cap_save = readl(mmio + HOST_CAP);
+	cap_save &= ((1 << 28) | (1 << 17));
+	cap_save |= (1 << 27);  /* Staggered Spin-up. Not needed. */
+
+	/* global controller reset */
+	tmp = ahci_ioread(ahci, HOST_CTL);
+	if ((tmp & HOST_RESET) == 0)
+		ahci_iowrite_f(ahci, HOST_CTL, tmp | HOST_RESET);
+
+	/*
+	 * reset must complete within 1 second, or
+	 * the hardware should be considered fried.
+	 */
+	ret = wait_on_timeout(SECOND, (readl(mmio + HOST_CTL) & HOST_RESET) == 0);
+	if (ret) {
+		ahci_debug(ahci,"controller reset failed (0x%x)\n", tmp);
+		return -ENODEV;
+	}
+
+	ahci_iowrite_f(ahci, HOST_CTL, HOST_AHCI_EN);
+	ahci_iowrite(ahci, HOST_CAP, cap_save);
+	ahci_iowrite_f(ahci, HOST_PORTS_IMPL, 0xf);
+
+	ahci->cap = ahci_ioread(ahci, HOST_CAP);
+	ahci->port_map = ahci_ioread(ahci, HOST_PORTS_IMPL);
+	ahci->n_ports = (ahci->cap & 0x1f) + 1;
+
+	ahci_debug(ahci, "cap 0x%x  port_map 0x%x  n_ports %d\n",
+	      ahci->cap, ahci->port_map, ahci->n_ports);
+
+	for (i = 0; i < ahci->n_ports; i++) {
+		struct ahci_port *ahci_port = &ahci->ports[i];
+
+		ahci_port->num = i;
+		ahci_port->ahci = ahci;
+		ahci_port->ata.dev = ahci->dev;
+		ahci_port->port_mmio = ahci_port_base(mmio, i);
+		ret = ahci_init_port(ahci_port);
+		if (!ret)
+			ahci->link_port_map |= 1 << i;
+	}
+
+	tmp = ahci_ioread(ahci, HOST_CTL);
+	ahci_iowrite(ahci, HOST_CTL, tmp | HOST_IRQ_EN);
+	tmp = ahci_ioread(ahci, HOST_CTL);
+
+	return 0;
+}
+
+static int ahci_port_start(struct ahci_port *ahci_port, u8 port)
+{
+	if (!ahci_link_ok(ahci_port, 1))
+		return -EIO;
+
+	ahci_port_write_f(ahci_port, PORT_CMD,
+			PORT_CMD_ICC_ACTIVE | PORT_CMD_FIS_RX |
+			PORT_CMD_POWER_ON | PORT_CMD_SPIN_UP |
+			PORT_CMD_START);
+
+	ata_port_register(&ahci_port->ata);
+
+	return 0;
+}
+
+static int __ahci_host_init(struct ahci_device *ahci)
+{
+	int i, rc = 0;
+	u32 linkmap;
+
+	ahci->host_flags = ATA_FLAG_SATA
+				| ATA_FLAG_NO_LEGACY
+				| ATA_FLAG_MMIO
+				| ATA_FLAG_PIO_DMA
+				| ATA_FLAG_NO_ATAPI;
+	ahci->pio_mask = 0x1f;
+	ahci->udma_mask = 0x7f;	/* FIXME: assume to support UDMA6 */
+
+	/* initialize adapter */
+	rc = ahci_host_init(ahci);
+	if (rc)
+		goto err_out;
+
+	linkmap = ahci->link_port_map;
+
+	for (i = 0; i < 32; i++) {
+		if (((linkmap >> i) & 0x01)) {
+			if (ahci_port_start(&ahci->ports[i], i)) {
+				printf("Can not start port %d\n", i);
+				continue;
+			}
+		}
+	}
+err_out:
+	return rc;
+}
+
+#if 0
+/*
+ * In the general case of generic rotating media it makes sense to have a
+ * flush capability. It probably even makes sense in the case of SSDs because
+ * one cannot always know for sure what kind of internal cache/flush mechanism
+ * is embodied therein. At first it was planned to invoke this after the last
+ * write to disk and before rebooting. In practice, knowing, a priori, which
+ * is the last write is difficult. Because writing to the disk in u-boot is
+ * very rare, this flush command will be invoked after every block write.
+ */
+static int ata_io_flush(u8 port)
+{
+	u8 fis[20];
+	struct ahci_ioports *pp = &(probe_ent->port[port]);
+	volatile u8 *port_mmio = (volatile u8 *)pp->port_mmio;
+	u32 cmd_fis_len = 5;	/* five dwords */
+
+	/* Preset the FIS */
+	memset(fis, 0, 20);
+	fis[0] = 0x27;		 /* Host to device FIS. */
+	fis[1] = 1 << 7;	 /* Command FIS. */
+	fis[2] = ATA_CMD_FLUSH_EXT;
+
+	memcpy((unsigned char *)pp->cmd_tbl, fis, 20);
+	ahci_fill_cmd_slot(pp, cmd_fis_len);
+	mywritel_with_flush(1, port_mmio + PORT_CMD_ISSUE);
+
+	if (waiting_for_cmd_completed(port_mmio + PORT_CMD_ISSUE,
+			WAIT_MS_FLUSH, 0x1)) {
+		debug("scsi_ahci: flush command timeout on port %d.\n", port);
+		return -EIO;
+	}
+
+	return 0;
+}
+#endif
+
+void ahci_print_info(struct ahci_device *ahci)
+{
+	u32 vers, cap, cap2, impl, speed;
+	const char *speed_s;
+	const char *scc_s;
+
+	vers = ahci_ioread(ahci, HOST_VERSION);
+	cap = ahci->cap;
+	cap2 = ahci_ioread(ahci, HOST_CAP2);
+	impl = ahci->port_map;
+
+	speed = (cap >> 20) & 0xf;
+	if (speed == 1)
+		speed_s = "1.5";
+	else if (speed == 2)
+		speed_s = "3";
+	else if (speed == 3)
+		speed_s = "6";
+	else
+		speed_s = "?";
+
+	scc_s = "SATA";
+
+	printf("AHCI %02x%02x.%02x%02x "
+	       "%u slots %u ports %s Gbps 0x%x impl %s mode\n",
+	       (vers >> 24) & 0xff,
+	       (vers >> 16) & 0xff,
+	       (vers >> 8) & 0xff,
+	       vers & 0xff,
+	       ((cap >> 8) & 0x1f) + 1, (cap & 0x1f) + 1, speed_s, impl, scc_s);
+
+	printf("flags: "
+	       "%s%s%s%s%s%s%s"
+	       "%s%s%s%s%s%s%s"
+	       "%s%s%s%s%s%s\n",
+	       cap & (1 << 31) ? "64bit " : "",
+	       cap & (1 << 30) ? "ncq " : "",
+	       cap & (1 << 28) ? "ilck " : "",
+	       cap & (1 << 27) ? "stag " : "",
+	       cap & (1 << 26) ? "pm " : "",
+	       cap & (1 << 25) ? "led " : "",
+	       cap & (1 << 24) ? "clo " : "",
+	       cap & (1 << 19) ? "nz " : "",
+	       cap & (1 << 18) ? "only " : "",
+	       cap & (1 << 17) ? "pmp " : "",
+	       cap & (1 << 16) ? "fbss " : "",
+	       cap & (1 << 15) ? "pio " : "",
+	       cap & (1 << 14) ? "slum " : "",
+	       cap & (1 << 13) ? "part " : "",
+	       cap & (1 << 7) ? "ccc " : "",
+	       cap & (1 << 6) ? "ems " : "",
+	       cap & (1 << 5) ? "sxs " : "",
+	       cap2 & (1 << 2) ? "apst " : "",
+	       cap2 & (1 << 1) ? "nvmp " : "",
+	       cap2 & (1 << 0) ? "boh " : "");
+}
+
+void ahci_info(struct device_d *dev)
+{
+	struct ahci_device *ahci = dev->priv;
+
+	ahci_print_info(ahci);
+}
+
+int ahci_add_host(struct ahci_device *ahci)
+{
+	__ahci_host_init(ahci);
+
+	return 0;
+}
+
+static int ahci_probe(struct device_d *dev)
+{
+	struct ahci_device *ahci;
+	void __iomem *regs;
+	int ret;
+
+	ahci = xzalloc(sizeof(*ahci));
+
+	regs = dev_request_mem_region(dev, 0);
+
+	ahci->dev = dev;
+	ahci->mmio_base = regs;
+	dev->priv = ahci;
+
+	ret = ahci_add_host(ahci);
+	if (ret)
+		free(ahci);
+
+	return ret;
+}
+
+static struct driver_d ahci_driver = {
+	.name   = "ahci",
+	.probe  = ahci_probe,
+	.info	= ahci_info,
+};
+
+static int ahci_init(void)
+{
+	return platform_driver_register(&ahci_driver);
+}
+
+device_initcall(ahci_init);
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
new file mode 100644
index 0000000..72e5c1a
--- /dev/null
+++ b/drivers/ata/ahci.h
@@ -0,0 +1,182 @@
+/*
+ * Copyright (C) Freescale Semiconductor, Inc. 2006.
+ * Author: Jason Jin<Jason.jin@freescale.com>
+ *         Zhang Wei<wei.zhang@freescale.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+#ifndef _AHCI_H_
+#define _AHCI_H_
+
+#define AHCI_PCI_BAR		0x24
+#define AHCI_MAX_SG		56 /* hardware max is 64K */
+#define AHCI_CMD_SLOT_SZ	32
+#define AHCI_MAX_CMD_SLOT	32
+#define AHCI_RX_FIS_SZ		256
+#define AHCI_CMD_TBL_HDR_SZ	0x80
+#define AHCI_CMD_TBL_CDB	0x40
+#define AHCI_CMD_TBL_SZ		AHCI_CMD_TBL_HDR_SZ + (AHCI_MAX_SG * 32)
+#define AHCI_PORT_PRIV_DMA_SZ	(AHCI_CMD_SLOT_SZ * AHCI_MAX_CMD_SLOT + \
+				AHCI_CMD_TBL_SZ	+ AHCI_RX_FIS_SZ)
+#define AHCI_CMD_ATAPI		(1 << 5)
+#define AHCI_CMD_WRITE		(1 << 6)
+#define AHCI_CMD_PREFETCH	(1 << 7)
+#define AHCI_CMD_RESET		(1 << 8)
+#define AHCI_CMD_CLR_BUSY	(1 << 10)
+
+#define RX_FIS_D2H_REG		0x40	/* offset of D2H Register FIS data */
+
+/* Global controller registers */
+#define HOST_CAP		0x00 /* host capabilities */
+#define HOST_CTL		0x04 /* global host control */
+#define HOST_IRQ_STAT		0x08 /* interrupt status */
+#define HOST_PORTS_IMPL		0x0c /* bitmap of implemented ports */
+#define HOST_VERSION		0x10 /* AHCI spec. version compliancy */
+#define HOST_CAP2		0x24 /* host capabilities, extended */
+
+/* HOST_CTL bits */
+#define HOST_RESET		(1 << 0)  /* reset controller; self-clear */
+#define HOST_IRQ_EN		(1 << 1)  /* global IRQ enable */
+#define HOST_AHCI_EN		(1 << 31) /* AHCI enabled */
+
+/* Registers for each SATA port */
+#define PORT_LST_ADDR		0x00 /* command list DMA addr */
+#define PORT_LST_ADDR_HI	0x04 /* command list DMA addr hi */
+#define PORT_FIS_ADDR		0x08 /* FIS rx buf addr */
+#define PORT_FIS_ADDR_HI	0x0c /* FIS rx buf addr hi */
+#define PORT_IRQ_STAT		0x10 /* interrupt status */
+#define PORT_IRQ_MASK		0x14 /* interrupt enable/disable mask */
+#define PORT_CMD		0x18 /* port command */
+#define PORT_TFDATA		0x20 /* taskfile data */
+#define PORT_SIG		0x24 /* device TF signature */
+#define PORT_CMD_ISSUE		0x38 /* command issue */
+#define PORT_SCR		0x28 /* SATA phy register block */
+#define PORT_SCR_STAT		0x28 /* SATA phy register: SStatus */
+#define PORT_SCR_CTL		0x2c /* SATA phy register: SControl */
+#define PORT_SCR_ERR		0x30 /* SATA phy register: SError */
+#define PORT_SCR_ACT		0x34 /* SATA phy register: SActive */
+
+/* PORT_IRQ_{STAT,MASK} bits */
+#define PORT_IRQ_COLD_PRES	(1 << 31) /* cold presence detect */
+#define PORT_IRQ_TF_ERR		(1 << 30) /* task file error */
+#define PORT_IRQ_HBUS_ERR	(1 << 29) /* host bus fatal error */
+#define PORT_IRQ_HBUS_DATA_ERR	(1 << 28) /* host bus data error */
+#define PORT_IRQ_IF_ERR		(1 << 27) /* interface fatal error */
+#define PORT_IRQ_IF_NONFATAL	(1 << 26) /* interface non-fatal error */
+#define PORT_IRQ_OVERFLOW	(1 << 24) /* xfer exhausted available S/G */
+#define PORT_IRQ_BAD_PMP	(1 << 23) /* incorrect port multiplier */
+
+#define PORT_IRQ_PHYRDY		(1 << 22) /* PhyRdy changed */
+#define PORT_IRQ_DEV_ILCK	(1 << 7) /* device interlock */
+#define PORT_IRQ_CONNECT	(1 << 6) /* port connect change status */
+#define PORT_IRQ_SG_DONE	(1 << 5) /* descriptor processed */
+#define PORT_IRQ_UNK_FIS	(1 << 4) /* unknown FIS rx'd */
+#define PORT_IRQ_SDB_FIS	(1 << 3) /* Set Device Bits FIS rx'd */
+#define PORT_IRQ_DMAS_FIS	(1 << 2) /* DMA Setup FIS rx'd */
+#define PORT_IRQ_PIOS_FIS	(1 << 1) /* PIO Setup FIS rx'd */
+#define PORT_IRQ_D2H_REG_FIS	(1 << 0) /* D2H Register FIS rx'd */
+
+#define PORT_IRQ_FATAL		PORT_IRQ_TF_ERR | PORT_IRQ_HBUS_ERR	\
+				| PORT_IRQ_HBUS_DATA_ERR | PORT_IRQ_IF_ERR
+
+#define DEF_PORT_IRQ		PORT_IRQ_FATAL | PORT_IRQ_PHYRDY	\
+				| PORT_IRQ_CONNECT | PORT_IRQ_SG_DONE	\
+				| PORT_IRQ_UNK_FIS | PORT_IRQ_SDB_FIS	\
+				| PORT_IRQ_DMAS_FIS | PORT_IRQ_PIOS_FIS	\
+				| PORT_IRQ_D2H_REG_FIS
+
+/* PORT_CMD bits */
+#define PORT_CMD_ATAPI		(1 << 24) /* Device is ATAPI */
+#define PORT_CMD_LIST_ON	(1 << 15) /* cmd list DMA engine running */
+#define PORT_CMD_FIS_ON		(1 << 14) /* FIS DMA engine running */
+#define PORT_CMD_FIS_RX		(1 << 4) /* Enable FIS receive DMA engine */
+#define PORT_CMD_CLO		(1 << 3) /* Command list override */
+#define PORT_CMD_POWER_ON	(1 << 2) /* Power up device */
+#define PORT_CMD_SPIN_UP	(1 << 1) /* Spin up device */
+#define PORT_CMD_START		(1 << 0) /* Enable port DMA engine */
+
+#define PORT_CMD_ICC_ACTIVE	(0x1 << 28) /* Put i/f in active state */
+#define PORT_CMD_ICC_PARTIAL	(0x2 << 28) /* Put i/f in partial state */
+#define PORT_CMD_ICC_SLUMBER	(0x6 << 28) /* Put i/f in slumber state */
+
+#define AHCI_MAX_PORTS		32
+
+/* SETFEATURES stuff */
+#define SETFEATURES_XFER	0x03
+#define XFER_UDMA_7		0x47
+#define XFER_UDMA_6		0x46
+#define XFER_UDMA_5		0x45
+#define XFER_UDMA_4		0x44
+#define XFER_UDMA_3		0x43
+#define XFER_UDMA_2		0x42
+#define XFER_UDMA_1		0x41
+#define XFER_UDMA_0		0x40
+#define XFER_MW_DMA_2		0x22
+#define XFER_MW_DMA_1		0x21
+#define XFER_MW_DMA_0		0x20
+#define XFER_SW_DMA_2		0x12
+#define XFER_SW_DMA_1		0x11
+#define XFER_SW_DMA_0		0x10
+#define XFER_PIO_4		0x0C
+#define XFER_PIO_3		0x0B
+#define XFER_PIO_2		0x0A
+#define XFER_PIO_1		0x09
+#define XFER_PIO_0		0x08
+#define XFER_PIO_SLOW		0x00
+
+#define ATA_FLAG_SATA		(1 << 3)
+#define ATA_FLAG_NO_LEGACY	(1 << 4) /* no legacy mode check */
+#define ATA_FLAG_MMIO		(1 << 6) /* use MMIO, not PIO */
+#define ATA_FLAG_SATA_RESET	(1 << 7) /* (obsolete) use COMRESET */
+#define ATA_FLAG_PIO_DMA	(1 << 8) /* PIO cmds via DMA */
+#define ATA_FLAG_NO_ATAPI	(1 << 11) /* No ATAPI support */
+
+struct ahci_device;
+
+struct ahci_port {
+	struct ata_port		ata;
+	struct ahci_device	*ahci;
+	int			num;
+	unsigned		flags;
+	void __iomem		*port_mmio;
+	struct ahci_cmd_hdr	*cmd_slot;
+	struct ahci_sg		*cmd_tbl_sg;
+	void			*cmd_tbl;
+	u32			rx_fis;
+};
+
+struct ahci_device {
+	struct device_d		*dev;
+	struct ahci_port	ports[AHCI_MAX_PORTS];
+	u32			n_ports;
+	void __iomem		*mmio_base;
+	u32			cap;		/* cache of HOST_CAP register */
+	u32			port_map;	/* cache of HOST_PORTS_IMPL reg */
+	u32			link_port_map;	/* linkup port map */
+	u32			pio_mask;
+	u32			udma_mask;
+	u32			host_flags;
+};
+
+int ahci_add_host(struct ahci_device *ahci);
+void ahci_print_info(struct ahci_device *ahci);
+void ahci_info(struct device_d *dev);
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
