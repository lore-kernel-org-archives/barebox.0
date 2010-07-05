Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000kw-Gb
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 02/12] move drivers/nand to drivers/mtd/nand
Date: Mon,  5 Jul 2010 15:16:25 +0200
Message-Id: <1278335795-16289-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0114612343=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
To: barebox@lists.infradead.org

--===============0114612343==
Content-Type: text/plain

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig                   |    2 +-
 drivers/Makefile                  |    2 +-
 drivers/mtd/Kconfig               |    8 +
 drivers/mtd/Makefile              |    1 +
 drivers/mtd/nand/Kconfig          |  109 ++
 drivers/mtd/nand/Makefile         |   12 +
 drivers/mtd/nand/atmel_nand.c     |  516 ++++++++
 drivers/mtd/nand/atmel_nand_ecc.h |   39 +
 drivers/mtd/nand/diskonchip.c     | 1787 +++++++++++++++++++++++++
 drivers/mtd/nand/nand.c           |  247 ++++
 drivers/mtd/nand/nand_base.c      | 2648 +++++++++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand_bbt.c       | 1224 +++++++++++++++++
 drivers/mtd/nand/nand_ecc.c       |  198 +++
 drivers/mtd/nand/nand_ids.c       |  153 +++
 drivers/mtd/nand/nand_imx.c       | 1210 +++++++++++++++++
 drivers/mtd/nand/nand_omap_gpmc.c |  534 ++++++++
 drivers/mtd/nand/nand_s3c2410.c   |  525 ++++++++
 drivers/mtd/nand/nand_util.c      |  858 ++++++++++++
 drivers/nand/Kconfig              |  109 --
 drivers/nand/Makefile             |   12 -
 drivers/nand/atmel_nand.c         |  516 --------
 drivers/nand/atmel_nand_ecc.h     |   39 -
 drivers/nand/diskonchip.c         | 1787 -------------------------
 drivers/nand/nand.c               |  247 ----
 drivers/nand/nand_base.c          | 2648 -------------------------------------
 drivers/nand/nand_bbt.c           | 1224 -----------------
 drivers/nand/nand_ecc.c           |  198 ---
 drivers/nand/nand_ids.c           |  153 ---
 drivers/nand/nand_imx.c           | 1210 -----------------
 drivers/nand/nand_omap_gpmc.c     |  534 --------
 drivers/nand/nand_s3c2410.c       |  525 --------
 drivers/nand/nand_util.c          |  858 ------------
 32 files changed, 10071 insertions(+), 10062 deletions(-)
 create mode 100644 drivers/mtd/Kconfig
 create mode 100644 drivers/mtd/Makefile
 create mode 100644 drivers/mtd/nand/Kconfig
 create mode 100644 drivers/mtd/nand/Makefile
 create mode 100644 drivers/mtd/nand/atmel_nand.c
 create mode 100644 drivers/mtd/nand/atmel_nand_ecc.h
 create mode 100644 drivers/mtd/nand/diskonchip.c
 create mode 100644 drivers/mtd/nand/nand.c
 create mode 100644 drivers/mtd/nand/nand_base.c
 create mode 100644 drivers/mtd/nand/nand_bbt.c
 create mode 100644 drivers/mtd/nand/nand_ecc.c
 create mode 100644 drivers/mtd/nand/nand_ids.c
 create mode 100644 drivers/mtd/nand/nand_imx.c
 create mode 100644 drivers/mtd/nand/nand_omap_gpmc.c
 create mode 100644 drivers/mtd/nand/nand_s3c2410.c
 create mode 100644 drivers/mtd/nand/nand_util.c
 delete mode 100644 drivers/nand/Kconfig
 delete mode 100644 drivers/nand/Makefile
 delete mode 100644 drivers/nand/atmel_nand.c
 delete mode 100644 drivers/nand/atmel_nand_ecc.h
 delete mode 100644 drivers/nand/diskonchip.c
 delete mode 100644 drivers/nand/nand.c
 delete mode 100644 drivers/nand/nand_base.c
 delete mode 100644 drivers/nand/nand_bbt.c
 delete mode 100644 drivers/nand/nand_ecc.c
 delete mode 100644 drivers/nand/nand_ids.c
 delete mode 100644 drivers/nand/nand_imx.c
 delete mode 100644 drivers/nand/nand_omap_gpmc.c
 delete mode 100644 drivers/nand/nand_s3c2410.c
 delete mode 100644 drivers/nand/nand_util.c

diff --git a/drivers/Kconfig b/drivers/Kconfig
index bf559c4..ae9efce 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -5,7 +5,7 @@ source "drivers/net/Kconfig"
 source "drivers/spi/Kconfig"
 source "drivers/i2c/Kconfig"
 source "drivers/nor/Kconfig"
-source "drivers/nand/Kconfig"
+source "drivers/mtd/Kconfig"
 source "drivers/ata/Kconfig"
 source "drivers/usb/Kconfig"
 source "drivers/video/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 7bae6ff..bce68bc 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -1,6 +1,6 @@
 obj-y	+= net/
 obj-y	+= serial/
-obj-y	+= nand/
+obj-y	+= mtd/
 obj-y	+= nor/
 obj-y	+= usb/
 obj-$(CONFIG_ATA) += ata/
diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
new file mode 100644
index 0000000..53183fc
--- /dev/null
+++ b/drivers/mtd/Kconfig
@@ -0,0 +1,8 @@
+menuconfig MTD
+        bool "Memory Technology Device (MTD) support"
+
+if MTD
+
+source "drivers/mtd/nand/Kconfig"
+
+endif
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
new file mode 100644
index 0000000..87ee6f4
--- /dev/null
+++ b/drivers/mtd/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_NAND)	+= nand/
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
new file mode 100644
index 0000000..e0d9d0d
--- /dev/null
+++ b/drivers/mtd/nand/Kconfig
@@ -0,0 +1,109 @@
+menuconfig NAND
+	bool "NAND support              "
+	select MTD_NAND_IDS
+	help
+	  This enables support for accessing all type of NAND flash
+	  devices. For further information see
+	  <http://www.linux-mtd.infradead.org/doc/nand.html>.
+
+if NAND
+
+config NAND_IMX
+	bool
+	prompt "i.MX NAND driver"
+	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX25
+
+config NAND_IMX_BOOT
+	bool
+	prompt "Support Starting barebox from NAND"
+	depends on NAND_IMX || NAND_IMX_V2
+
+config NAND_OMAP_GPMC
+	tristate "NAND Flash Support for GPMC based OMAP platforms"
+	depends on ((ARCH_OMAP2 || ARCH_OMAP3) && GPMC)
+	help
+	 Support for NAND flash using GPMC. GPMC is a common memory
+	 interface found on Texas Instrument's OMAP platforms
+
+config NAND_OMAP_GPMC_HWECC
+	bool "The Hardware ECC support"
+	depends on NAND && NAND_OMAP_GPMC
+	default n
+	help
+	 The ECC compuatation for the data to be written/read can be either by
+	 software or omap has Hw ecc engine which calculates it.
+
+config NAND_ATMEL
+	bool
+	prompt "Atmel (AT91SAM9xxx) NAND driver"
+	depends on ARCH_AT91
+
+config NAND_S3C24X0
+	bool
+	prompt "Samsung S3C24X0 NAND driver"
+	depends on ARCH_S3C24xx
+	help
+	  Add support for processor's NAND device controller.
+
+config MTD_NAND_VERIFY_WRITE
+	bool "Verify NAND page writes"
+	help
+	  This adds an extra check when data is written to the flash. The
+	  NAND flash device internally checks only bits transitioning
+	  from 1 to 0. There is a rare possibility that even though the
+	  device thinks the write was successful, a bit could have been
+	  flipped accidentally due to device wear or something else.
+
+config MTD_NAND_ECC_SMC
+	bool "NAND ECC Smart Media byte order"
+	default n
+	help
+	  Software ECC according to the Smart Media Specification.
+	  The original Linux implementation had byte 0 and 1 swapped.
+
+config MTD_NAND_MUSEUM_IDS
+	bool "Enable chip ids for obsolete ancient NAND devices"
+	depends on MTD_NAND
+	default n
+	help
+	  Enable this option only when your board has first generation
+	  NAND chips (page size 256 byte, erase size 4-8KiB). The IDs
+	  of these chips were reused by later, larger chips.
+
+config MTD_NAND_IDS
+	tristate
+
+config MTD_NAND_DISKONCHIP
+	tristate "DiskOnChip 2000, Millennium and Millennium Plus"
+	depends on EXPERIMENTAL && BROKEN
+	help
+	  This is a reimplementation of M-Systems DiskOnChip 2000,
+	  Millennium and Millennium Plus as a standard NAND device driver,
+	  as opposed to the earlier self-contained MTD device drivers.
+	  This should enable, among other things, proper JFFS2 operation on
+	  these devices.
+
+config MTD_NAND_DISKONCHIP_BBTWRITE
+	bool "Allow BBT writes on DiskOnChip Millennium and 2000TSOP"
+	depends on MTD_NAND_DISKONCHIP
+	help
+	  On DiskOnChip devices shipped with the INFTL filesystem (Millennium
+	  and 2000 TSOP/Alon), Linux reserves some space at the end of the
+	  device for the Bad Block Table (BBT).  If you have existing INFTL
+	  data on your device (created by non-Linux tools such as M-Systems'
+	  DOS drivers), your data might overlap the area Linux wants to use for
+	  the BBT.  If this is a concern for you, leave this option disabled and
+	  Linux will not write BBT data into this area.
+	  The downside of leaving this option disabled is that if bad blocks
+	  are detected by Linux, they will not be recorded in the BBT, which
+	  could cause future problems.
+	  Once you enable this option, new filesystems (INFTL or others, created
+	  in Linux or other operating systems) will not use the reserved area.
+	  The only reason not to enable this option is to prevent damage to
+	  preexisting filesystems.
+	  Even if you leave this disabled, you can enable BBT writes at module
+	  load time (assuming you build diskonchip as a module) with the module
+	  parameter "inftl_bbt_write=1".
+
+
+endif
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
new file mode 100644
index 0000000..73f7346
--- /dev/null
+++ b/drivers/mtd/nand/Makefile
@@ -0,0 +1,12 @@
+
+# Generic NAND options
+obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o
+obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
+obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
+
+obj-$(CONFIG_MTD_NAND_DISKONCHIP)	+= diskonchip.o
+obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
+obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o
+obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
+obj-$(CONFIG_NAND_S3C24X0)		+= nand_s3c2410.o
+#obj-$(CONFIG_NAND)			+= nand_util.o
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
new file mode 100644
index 0000000..c3669e5
--- /dev/null
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -0,0 +1,516 @@
+/*
+ *  Copyright (C) 2003 Rick Bronson
+ *
+ *  Derived from drivers/mtd/nand/autcpu12.c
+ *	 Copyright (c) 2001 Thomas Gleixner (gleixner@autronix.de)
+ *
+ *  Derived from drivers/mtd/spia.c
+ *	 Copyright (C) 2000 Steven J. Hill (sjhill@cotw.com)
+ *
+ *
+ *  Add Hardware ECC support for AT91SAM9260 / AT91SAM9263
+ *     Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright (C) 2007
+ *
+ *     Derived from Das barebox source code
+ *     		(barebox-1.1.5/board/atmel/at91sam9263ek/nand.c)
+ *     (C) Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas
+ *
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <init.h>
+#include <gpio.h>
+
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+
+#include <asm/io.h>
+#include <mach/board.h>
+
+#include <errno.h>
+
+#ifdef CONFIG_MTD_NAND_ATMEL_ECC_HW
+#define hard_ecc	1
+#else
+#define hard_ecc	0
+#endif
+
+#ifdef CONFIG_MTD_NAND_ATMEL_ECC_NONE
+#define no_ecc		1
+#else
+#define no_ecc		0
+#endif
+
+/* Register access macros */
+#define ecc_readl(add, reg)				\
+	readl(add + ATMEL_ECC_##reg)
+#define ecc_writel(add, reg, value)			\
+	writel((value), add + ATMEL_ECC_##reg)
+
+#include "atmel_nand_ecc.h"	/* Hardware ECC registers */
+
+/* oob layout for large page size
+ * bad block info is on bytes 0 and 1
+ * the bytes have to be consecutives to avoid
+ * several NAND_CMD_RNDOUT during read
+ */
+static struct nand_ecclayout atmel_oobinfo_large = {
+	.eccbytes = 4,
+	.eccpos = {60, 61, 62, 63},
+	.oobfree = {
+		{2, 58}
+	},
+};
+
+/* oob layout for small page size
+ * bad block info is on bytes 4 and 5
+ * the bytes have to be consecutives to avoid
+ * several NAND_CMD_RNDOUT during read
+ */
+static struct nand_ecclayout atmel_oobinfo_small = {
+	.eccbytes = 4,
+	.eccpos = {0, 1, 2, 3},
+	.oobfree = {
+		{6, 10}
+	},
+};
+
+struct atmel_nand_host {
+	struct nand_chip	nand_chip;
+	struct mtd_info		mtd;
+	void __iomem		*io_base;
+	struct atmel_nand_data	*board;
+	struct device_d		*dev;
+	void __iomem		*ecc;
+};
+
+/*
+ * Enable NAND.
+ */
+static void atmel_nand_enable(struct atmel_nand_host *host)
+{
+	if (host->board->enable_pin)
+		gpio_set_value(host->board->enable_pin, 0);
+}
+
+/*
+ * Disable NAND.
+ */
+static void atmel_nand_disable(struct atmel_nand_host *host)
+{
+	if (host->board->enable_pin)
+		gpio_set_value(host->board->enable_pin, 1);
+}
+
+/*
+ * Hardware specific access to control-lines
+ */
+static void atmel_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+
+	if (ctrl & NAND_CTRL_CHANGE) {
+		if (ctrl & NAND_NCE)
+			atmel_nand_enable(host);
+		else
+			atmel_nand_disable(host);
+	}
+	if (cmd == NAND_CMD_NONE)
+		return;
+
+	if (ctrl & NAND_CLE)
+		writeb(cmd, host->io_base + (1 << host->board->cle));
+	else
+		writeb(cmd, host->io_base + (1 << host->board->ale));
+}
+
+/*
+ * Read the Device Ready pin.
+ */
+static int atmel_nand_device_ready(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+
+	return gpio_get_value(host->board->rdy_pin);
+}
+
+/*
+ * Minimal-overhead PIO for data access.
+ */
+static void atmel_read_buf(struct mtd_info *mtd, u8 *buf, int len)
+{
+	struct nand_chip	*nand_chip = mtd->priv;
+
+	readsb(nand_chip->IO_ADDR_R, buf, len);
+}
+
+static void atmel_read_buf16(struct mtd_info *mtd, u8 *buf, int len)
+{
+	struct nand_chip	*nand_chip = mtd->priv;
+
+	readsw(nand_chip->IO_ADDR_R, buf, len / 2);
+}
+
+static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
+{
+	struct nand_chip	*nand_chip = mtd->priv;
+
+	writesb(nand_chip->IO_ADDR_W, buf, len);
+}
+
+static void atmel_write_buf16(struct mtd_info *mtd, const u8 *buf, int len)
+{
+	struct nand_chip	*nand_chip = mtd->priv;
+
+	writesw(nand_chip->IO_ADDR_W, buf, len / 2);
+}
+
+/*
+ * Calculate HW ECC
+ *
+ * function called after a write
+ *
+ * mtd:        MTD block structure
+ * dat:        raw data (unused)
+ * ecc_code:   buffer for ECC
+ */
+static int atmel_nand_calculate(struct mtd_info *mtd,
+		const u_char *dat, unsigned char *ecc_code)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+/* 	uint32_t *eccpos = nand_chip->ecc.layout->eccpos; */
+	unsigned int ecc_value;
+
+	/* get the first 2 ECC bytes */
+	ecc_value = ecc_readl(host->ecc, PR);
+
+	ecc_code[0] = ecc_value & 0xFF;
+	ecc_code[1] = (ecc_value >> 8) & 0xFF;
+
+	/* get the last 2 ECC bytes */
+	ecc_value = ecc_readl(host->ecc, NPR) & ATMEL_ECC_NPARITY;
+
+	ecc_code[2] = ecc_value & 0xFF;
+	ecc_code[3] = (ecc_value >> 8) & 0xFF;
+
+	return 0;
+}
+
+/*
+ * HW ECC read page function
+ *
+ * mtd:        mtd info structure
+ * chip:       nand chip info structure
+ * buf:        buffer to store read data
+ */
+static int atmel_nand_read_page(struct mtd_info *mtd,
+		struct nand_chip *chip, uint8_t *buf)
+{
+	int eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+	uint8_t *p = buf;
+	uint8_t *oob = chip->oob_poi;
+	uint8_t *ecc_pos;
+	int stat;
+
+	/*
+	 * Errata: ALE is incorrectly wired up to the ECC controller
+	 * on the AP7000, so it will include the address cycles in the
+	 * ECC calculation.
+	 *
+	 * Workaround: Reset the parity registers before reading the
+	 * actual data.
+	 */
+#if 0
+	if (cpu_is_at32ap7000()) {
+		struct atmel_nand_host *host = chip->priv;
+		ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
+	}
+#endif
+
+	/* read the page */
+	chip->read_buf(mtd, p, eccsize);
+
+	/* move to ECC position if needed */
+	if (eccpos[0] != 0) {
+		/* This only works on large pages
+		 * because the ECC controller waits for
+		 * NAND_CMD_RNDOUTSTART after the
+		 * NAND_CMD_RNDOUT.
+		 * anyway, for small pages, the eccpos[0] == 0
+		 */
+		chip->cmdfunc(mtd, NAND_CMD_RNDOUT,
+				mtd->writesize + eccpos[0], -1);
+	}
+
+	/* the ECC controller needs to read the ECC just after the data */
+	ecc_pos = oob + eccpos[0];
+	chip->read_buf(mtd, ecc_pos, eccbytes);
+
+	/* check if there's an error */
+	stat = chip->ecc.correct(mtd, p, oob, NULL);
+
+	if (stat < 0)
+		mtd->ecc_stats.failed++;
+	else
+		mtd->ecc_stats.corrected += stat;
+
+	/* get back to oob start (end of page) */
+	chip->cmdfunc(mtd, NAND_CMD_RNDOUT, mtd->writesize, -1);
+
+	/* read the oob */
+	chip->read_buf(mtd, oob, mtd->oobsize);
+
+	return 0;
+}
+
+/*
+ * HW ECC Correction
+ *
+ * function called after a read
+ *
+ * mtd:        MTD block structure
+ * dat:        raw data read from the chip
+ * read_ecc:   ECC from the chip (unused)
+ * isnull:     unused
+ *
+ * Detect and correct a 1 bit error for a page
+ */
+static int atmel_nand_correct(struct mtd_info *mtd, u_char *dat,
+		u_char *read_ecc, u_char *isnull)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+	unsigned int ecc_status;
+	unsigned int ecc_word, ecc_bit;
+
+	/* get the status from the Status Register */
+	ecc_status = ecc_readl(host->ecc, SR);
+
+	/* if there's no error */
+	if (likely(!(ecc_status & ATMEL_ECC_RECERR)))
+		return 0;
+
+	/* get error bit offset (4 bits) */
+	ecc_bit = ecc_readl(host->ecc, PR) & ATMEL_ECC_BITADDR;
+	/* get word address (12 bits) */
+	ecc_word = ecc_readl(host->ecc, PR) & ATMEL_ECC_WORDADDR;
+	ecc_word >>= 4;
+
+	/* if there are multiple errors */
+	if (ecc_status & ATMEL_ECC_MULERR) {
+		/* check if it is a freshly erased block
+		 * (filled with 0xff) */
+		if ((ecc_bit == ATMEL_ECC_BITADDR)
+				&& (ecc_word == (ATMEL_ECC_WORDADDR >> 4))) {
+			/* the block has just been erased, return OK */
+			return 0;
+		}
+		/* it doesn't seems to be a freshly
+		 * erased block.
+		 * We can't correct so many errors */
+		dev_dbg(host->dev, "atmel_nand : multiple errors detected."
+				" Unable to correct.\n");
+		return -EIO;
+	}
+
+	/* if there's a single bit error : we can correct it */
+	if (ecc_status & ATMEL_ECC_ECCERR) {
+		/* there's nothing much to do here.
+		 * the bit error is on the ECC itself.
+		 */
+		dev_dbg(host->dev, "atmel_nand : one bit error on ECC code."
+				" Nothing to correct\n");
+		return 0;
+	}
+
+	dev_dbg(host->dev, "atmel_nand : one bit error on data."
+			" (word offset in the page :"
+			" 0x%x bit offset : 0x%x)\n",
+			ecc_word, ecc_bit);
+	/* correct the error */
+	if (nand_chip->options & NAND_BUSWIDTH_16) {
+		/* 16 bits words */
+		((unsigned short *) dat)[ecc_word] ^= (1 << ecc_bit);
+	} else {
+		/* 8 bits words */
+		dat[ecc_word] ^= (1 << ecc_bit);
+	}
+	dev_dbg(host->dev, "atmel_nand : error corrected\n");
+	return 1;
+}
+
+/*
+ * Enable HW ECC : unused on most chips
+ */
+static void atmel_nand_hwctl(struct mtd_info *mtd, int mode)
+{
+#if 0
+	if (cpu_is_at32ap7000()) {
+		struct nand_chip *nand_chip = mtd->priv;
+		struct atmel_nand_host *host = nand_chip->priv;
+		ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
+	}
+#endif
+}
+
+/*
+ * Probe for the NAND device.
+ */
+static int __init atmel_nand_probe(struct device_d *dev)
+{
+	struct atmel_nand_data *pdata = dev->platform_data;
+	struct atmel_nand_host *host;
+	struct mtd_info *mtd;
+	struct nand_chip *nand_chip;
+	int res = 0;
+
+	/* Allocate memory for the device structure (and zero it) */
+	host = kzalloc(sizeof(struct atmel_nand_host), GFP_KERNEL);
+	if (!host)
+		return -ENOMEM;
+
+	host->io_base = (void __iomem *)dev->map_base;
+
+	mtd = &host->mtd;
+	nand_chip = &host->nand_chip;
+	host->board = pdata;
+	host->dev = dev;
+
+	nand_chip->priv = host;		/* link the private data structures */
+	mtd->priv = nand_chip;
+
+	/* Set address of NAND IO lines */
+	nand_chip->IO_ADDR_R = host->io_base;
+	nand_chip->IO_ADDR_W = host->io_base;
+	nand_chip->cmd_ctrl = atmel_nand_cmd_ctrl;
+
+	if (host->board->rdy_pin)
+		nand_chip->dev_ready = atmel_nand_device_ready;
+
+	nand_chip->ecc.mode = pdata->ecc_mode;
+
+	if (pdata->ecc_mode == NAND_ECC_HW) {
+		if (!pdata->ecc_base)
+			return -ENODEV;
+
+		host->ecc = pdata->ecc_base;
+
+		nand_chip->ecc.mode = NAND_ECC_HW;
+		nand_chip->ecc.calculate = atmel_nand_calculate;
+		nand_chip->ecc.correct = atmel_nand_correct;
+		nand_chip->ecc.hwctl = atmel_nand_hwctl;
+		nand_chip->ecc.read_page = atmel_nand_read_page;
+		nand_chip->ecc.bytes = 4;
+	}
+
+	nand_chip->chip_delay = 20;		/* 20us command delay time */
+
+	if (host->board->bus_width_16) {	/* 16-bit bus width */
+		nand_chip->options |= NAND_BUSWIDTH_16;
+		nand_chip->read_buf = atmel_read_buf16;
+		nand_chip->write_buf = atmel_write_buf16;
+	} else {
+		nand_chip->read_buf = atmel_read_buf;
+		nand_chip->write_buf = atmel_write_buf;
+	}
+
+	atmel_nand_enable(host);
+
+	if (host->board->det_pin) {
+		if (gpio_get_value(host->board->det_pin)) {
+			printk("No SmartMedia card inserted.\n");
+			res = ENXIO;
+			goto err_no_card;
+		}
+	}
+
+	/* first scan to find the device and get the page size */
+	if (nand_scan_ident(mtd, 1)) {
+		res = -ENXIO;
+		goto err_scan_ident;
+	}
+
+	if (nand_chip->ecc.mode == NAND_ECC_HW) {
+		/* ECC is calculated for the whole page (1 step) */
+		nand_chip->ecc.size = mtd->writesize;
+
+		/* set ECC page size and oob layout */
+		switch (mtd->writesize) {
+		case 512:
+			nand_chip->ecc.layout = &atmel_oobinfo_small;
+			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_528);
+			break;
+		case 1024:
+			nand_chip->ecc.layout = &atmel_oobinfo_large;
+			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_1056);
+			break;
+		case 2048:
+			nand_chip->ecc.layout = &atmel_oobinfo_large;
+			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_2112);
+			break;
+		case 4096:
+			nand_chip->ecc.layout = &atmel_oobinfo_large;
+			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_4224);
+			break;
+		default:
+			/* page size not handled by HW ECC */
+			/* switching back to soft ECC */
+			nand_chip->ecc.mode = NAND_ECC_SOFT;
+			nand_chip->ecc.calculate = NULL;
+			nand_chip->ecc.correct = NULL;
+			nand_chip->ecc.hwctl = NULL;
+			nand_chip->ecc.read_page = NULL;
+			nand_chip->ecc.postpad = 0;
+			nand_chip->ecc.prepad = 0;
+			nand_chip->ecc.bytes = 0;
+			break;
+		}
+	}
+
+	/* second phase scan */
+	if (nand_scan_tail(mtd)) {
+		res = -ENXIO;
+		goto err_scan_tail;
+	}
+
+	add_mtd_device(mtd);
+
+	if (!res)
+		return res;
+
+	nand_release(mtd);
+err_scan_tail:
+err_scan_ident:
+err_no_card:
+	atmel_nand_disable(host);
+	kfree(host);
+	return res;
+}
+
+static struct driver_d atmel_nand_driver = {
+	.name	= "atmel_nand",
+	.probe	= atmel_nand_probe,
+};
+
+static int __init atmel_nand_init(void)
+{
+	return register_driver(&atmel_nand_driver);
+}
+
+device_initcall(atmel_nand_init);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Rick Bronson");
+MODULE_DESCRIPTION("NAND/SmartMedia driver for AT91 / AVR32");
diff --git a/drivers/mtd/nand/atmel_nand_ecc.h b/drivers/mtd/nand/atmel_nand_ecc.h
new file mode 100644
index 0000000..578c776
--- /dev/null
+++ b/drivers/mtd/nand/atmel_nand_ecc.h
@@ -0,0 +1,39 @@
+/*
+ * Error Corrected Code Controller (ECC) - System peripherals regsters.
+ * Based on AT91SAM9260 datasheet revision B.
+ *
+ * Copyright (C) 2007 Andrew Victor
+ * Copyright (C) 2007 Atmel Corporation.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the
+ * Free Software Foundation; either version 2 of the License, or (at your
+ * option) any later version.
+ */
+
+#ifndef ATMEL_NAND_ECC_H
+#define ATMEL_NAND_ECC_H
+
+#define ATMEL_ECC_CR		0x00			/* Control register */
+#define		ATMEL_ECC_RST		(1 << 0)		/* Reset parity */
+
+#define ATMEL_ECC_MR		0x04			/* Mode register */
+#define		ATMEL_ECC_PAGESIZE	(3 << 0)		/* Page Size */
+#define			ATMEL_ECC_PAGESIZE_528		(0)
+#define			ATMEL_ECC_PAGESIZE_1056		(1)
+#define			ATMEL_ECC_PAGESIZE_2112		(2)
+#define			ATMEL_ECC_PAGESIZE_4224		(3)
+
+#define ATMEL_ECC_SR		0x08			/* Status register */
+#define		ATMEL_ECC_RECERR		(1 << 0)		/* Recoverable Error */
+#define		ATMEL_ECC_ECCERR		(1 << 1)		/* ECC Single Bit Error */
+#define		ATMEL_ECC_MULERR		(1 << 2)		/* Multiple Errors */
+
+#define ATMEL_ECC_PR		0x0c			/* Parity register */
+#define		ATMEL_ECC_BITADDR	(0xf << 0)		/* Bit Error Address */
+#define		ATMEL_ECC_WORDADDR	(0xfff << 4)		/* Word Error Address */
+
+#define ATMEL_ECC_NPR		0x10			/* NParity register */
+#define		ATMEL_ECC_NPARITY	(0xffff << 0)		/* NParity */
+
+#endif
diff --git a/drivers/mtd/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
new file mode 100644
index 0000000..e762524
--- /dev/null
+++ b/drivers/mtd/nand/diskonchip.c
@@ -0,0 +1,1787 @@
+/*
+ * drivers/mtd/nand/diskonchip.c
+ *
+ * (C) 2003 Red Hat, Inc.
+ * (C) 2004 Dan Brown <dan_brown@ieee.org>
+ * (C) 2004 Kalev Lember <kalev@smartlink.ee>
+ *
+ * Author: David Woodhouse <dwmw2@infradead.org>
+ * Additional Diskonchip 2000 and Millennium support by Dan Brown <dan_brown@ieee.org>
+ * Diskonchip Millennium Plus support by Kalev Lember <kalev@smartlink.ee>
+ *
+ * Error correction code lifted from the old docecc code
+ * Author: Fabrice Bellard (fabrice.bellard@netgem.com)
+ * Copyright (C) 2000 Netgem S.A.
+ * converted to the generic Reed-Solomon library by Thomas Gleixner <tglx@linutronix.de>
+ *
+ * Interface to generic NAND code for M-Systems DiskOnChip devices
+ *
+ * $Id: diskonchip.c,v 1.45 2005/01/05 18:05:14 dwmw2 Exp $
+ */
+
+#include <common.h>
+
+#if !defined(CFG_NAND_LEGACY)
+
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/sched.h>
+#include <linux/delay.h>
+#include <linux/rslib.h>
+#include <linux/moduleparam.h>
+#include <asm/io.h>
+
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <linux/mtd/doc2000.h>
+#include <linux/mtd/compatmac.h>
+#include <linux/mtd/partitions.h>
+#include <linux/mtd/inftl.h>
+
+/* Where to look for the devices? */
+#ifndef CONFIG_MTD_DISKONCHIP_PROBE_ADDRESS
+#define CONFIG_MTD_DISKONCHIP_PROBE_ADDRESS 0
+#endif
+
+static unsigned long __initdata doc_locations[] = {
+#if defined (__alpha__) || defined(__i386__) || defined(__x86_64__)
+#ifdef CONFIG_MTD_DISKONCHIP_PROBE_HIGH
+	0xfffc8000, 0xfffca000, 0xfffcc000, 0xfffce000,
+	0xfffd0000, 0xfffd2000, 0xfffd4000, 0xfffd6000,
+	0xfffd8000, 0xfffda000, 0xfffdc000, 0xfffde000,
+	0xfffe0000, 0xfffe2000, 0xfffe4000, 0xfffe6000,
+	0xfffe8000, 0xfffea000, 0xfffec000, 0xfffee000,
+#else /*  CONFIG_MTD_DOCPROBE_HIGH */
+	0xc8000, 0xca000, 0xcc000, 0xce000,
+	0xd0000, 0xd2000, 0xd4000, 0xd6000,
+	0xd8000, 0xda000, 0xdc000, 0xde000,
+	0xe0000, 0xe2000, 0xe4000, 0xe6000,
+	0xe8000, 0xea000, 0xec000, 0xee000,
+#endif /*  CONFIG_MTD_DOCPROBE_HIGH */
+#elif defined(__PPC__)
+	0xe4000000,
+#elif defined(CONFIG_MOMENCO_OCELOT)
+	0x2f000000,
+	0xff000000,
+#elif defined(CONFIG_MOMENCO_OCELOT_G) || defined (CONFIG_MOMENCO_OCELOT_C)
+	0xff000000,
+##else
+#warning Unknown architecture for DiskOnChip. No default probe locations defined
+#endif
+	0xffffffff };
+
+static struct mtd_info *doclist = NULL;
+
+struct doc_priv {
+	void __iomem *virtadr;
+	unsigned long physadr;
+	u_char ChipID;
+	u_char CDSNControl;
+	int chips_per_floor; /* The number of chips detected on each floor */
+	int curfloor;
+	int curchip;
+	int mh0_page;
+	int mh1_page;
+	struct mtd_info *nextdoc;
+};
+
+/* Max number of eraseblocks to scan (from start of device) for the (I)NFTL
+   MediaHeader.  The spec says to just keep going, I think, but that's just
+   silly. */
+#define MAX_MEDIAHEADER_SCAN 8
+
+/* This is the syndrome computed by the HW ecc generator upon reading an empty
+   page, one with all 0xff for data and stored ecc code. */
+static u_char empty_read_syndrome[6] = { 0x26, 0xff, 0x6d, 0x47, 0x73, 0x7a };
+/* This is the ecc value computed by the HW ecc generator upon writing an empty
+   page, one with all 0xff for data. */
+static u_char empty_write_ecc[6] = { 0x4b, 0x00, 0xe2, 0x0e, 0x93, 0xf7 };
+
+#define INFTL_BBT_RESERVED_BLOCKS 4
+
+#define DoC_is_MillenniumPlus(doc) ((doc)->ChipID == DOC_ChipID_DocMilPlus16 || (doc)->ChipID == DOC_ChipID_DocMilPlus32)
+#define DoC_is_Millennium(doc) ((doc)->ChipID == DOC_ChipID_DocMil)
+#define DoC_is_2000(doc) ((doc)->ChipID == DOC_ChipID_Doc2k)
+
+static void doc200x_hwcontrol(struct mtd_info *mtd, int cmd);
+static void doc200x_select_chip(struct mtd_info *mtd, int chip);
+
+static int debug=0;
+module_param(debug, int, 0);
+
+static int try_dword=1;
+module_param(try_dword, int, 0);
+
+static int no_ecc_failures=0;
+module_param(no_ecc_failures, int, 0);
+
+#ifdef CONFIG_MTD_PARTITIONS
+static int no_autopart=0;
+module_param(no_autopart, int, 0);
+#endif
+
+#ifdef CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE
+static int inftl_bbt_write=1;
+#else
+static int inftl_bbt_write=0;
+#endif
+module_param(inftl_bbt_write, int, 0);
+
+static unsigned long doc_config_location = CONFIG_MTD_DISKONCHIP_PROBE_ADDRESS;
+module_param(doc_config_location, ulong, 0);
+MODULE_PARM_DESC(doc_config_location, "Physical memory address at which to probe for DiskOnChip");
+
+
+/* Sector size for HW ECC */
+#define SECTOR_SIZE 512
+/* The sector bytes are packed into NB_DATA 10 bit words */
+#define NB_DATA (((SECTOR_SIZE + 1) * 8 + 6) / 10)
+/* Number of roots */
+#define NROOTS 4
+/* First consective root */
+#define FCR 510
+/* Number of symbols */
+#define NN 1023
+
+/* the Reed Solomon control structure */
+static struct rs_control *rs_decoder;
+
+/*
+ * The HW decoder in the DoC ASIC's provides us a error syndrome,
+ * which we must convert to a standard syndrom usable by the generic
+ * Reed-Solomon library code.
+ *
+ * Fabrice Bellard figured this out in the old docecc code. I added
+ * some comments, improved a minor bit and converted it to make use
+ * of the generic Reed-Solomon libary. tglx
+ */
+static int doc_ecc_decode (struct rs_control *rs, uint8_t *data, uint8_t *ecc)
+{
+	int i, j, nerr, errpos[8];
+	uint8_t parity;
+	uint16_t ds[4], s[5], tmp, errval[8], syn[4];
+
+	/* Convert the ecc bytes into words */
+	ds[0] = ((ecc[4] & 0xff) >> 0) | ((ecc[5] & 0x03) << 8);
+	ds[1] = ((ecc[5] & 0xfc) >> 2) | ((ecc[2] & 0x0f) << 6);
+	ds[2] = ((ecc[2] & 0xf0) >> 4) | ((ecc[3] & 0x3f) << 4);
+	ds[3] = ((ecc[3] & 0xc0) >> 6) | ((ecc[0] & 0xff) << 2);
+	parity = ecc[1];
+
+	/* Initialize the syndrom buffer */
+	for (i = 0; i < NROOTS; i++)
+		s[i] = ds[0];
+	/*
+	 *  Evaluate
+	 *  s[i] = ds[3]x^3 + ds[2]x^2 + ds[1]x^1 + ds[0]
+	 *  where x = alpha^(FCR + i)
+	 */
+	for(j = 1; j < NROOTS; j++) {
+		if(ds[j] == 0)
+			continue;
+		tmp = rs->index_of[ds[j]];
+		for(i = 0; i < NROOTS; i++)
+			s[i] ^= rs->alpha_to[rs_modnn(rs, tmp + (FCR + i) * j)];
+	}
+
+	/* Calc s[i] = s[i] / alpha^(v + i) */
+	for (i = 0; i < NROOTS; i++) {
+		if (syn[i])
+ 			syn[i] = rs_modnn(rs, rs->index_of[s[i]] + (NN - FCR - i));
+	}
+	/* Call the decoder library */
+	nerr = decode_rs16(rs, NULL, NULL, 1019, syn, 0, errpos, 0, errval);
+
+	/* Incorrectable errors ? */
+	if (nerr < 0)
+		return nerr;
+
+	/*
+	 * Correct the errors. The bitpositions are a bit of magic,
+	 * but they are given by the design of the de/encoder circuit
+	 * in the DoC ASIC's.
+	 */
+	for(i = 0;i < nerr; i++) {
+		int index, bitpos, pos = 1015 - errpos[i];
+		uint8_t val;
+		if (pos >= NB_DATA && pos < 1019)
+			continue;
+		if (pos < NB_DATA) {
+			/* extract bit position (MSB first) */
+			pos = 10 * (NB_DATA - 1 - pos) - 6;
+			/* now correct the following 10 bits. At most two bytes
+			   can be modified since pos is even */
+			index = (pos >> 3) ^ 1;
+			bitpos = pos & 7;
+			if ((index >= 0 && index < SECTOR_SIZE) ||
+			    index == (SECTOR_SIZE + 1)) {
+				val = (uint8_t) (errval[i] >> (2 + bitpos));
+				parity ^= val;
+				if (index < SECTOR_SIZE)
+					data[index] ^= val;
+			}
+			index = ((pos >> 3) + 1) ^ 1;
+			bitpos = (bitpos + 10) & 7;
+			if (bitpos == 0)
+				bitpos = 8;
+			if ((index >= 0 && index < SECTOR_SIZE) ||
+			    index == (SECTOR_SIZE + 1)) {
+				val = (uint8_t)(errval[i] << (8 - bitpos));
+				parity ^= val;
+				if (index < SECTOR_SIZE)
+					data[index] ^= val;
+			}
+		}
+	}
+	/* If the parity is wrong, no rescue possible */
+	return parity ? -1 : nerr;
+}
+
+static void DoC_Delay(struct doc_priv *doc, unsigned short cycles)
+{
+	volatile char dummy;
+	int i;
+
+	for (i = 0; i < cycles; i++) {
+		if (DoC_is_Millennium(doc))
+			dummy = ReadDOC(doc->virtadr, NOP);
+		else if (DoC_is_MillenniumPlus(doc))
+			dummy = ReadDOC(doc->virtadr, Mplus_NOP);
+		else
+			dummy = ReadDOC(doc->virtadr, DOCStatus);
+	}
+
+}
+
+#define CDSN_CTRL_FR_B_MASK	(CDSN_CTRL_FR_B0 | CDSN_CTRL_FR_B1)
+
+/* DOC_WaitReady: Wait for RDY line to be asserted by the flash chip */
+static int _DoC_WaitReady(struct doc_priv *doc)
+{
+	void __iomem *docptr = doc->virtadr;
+	unsigned long timeo = jiffies + (HZ * 10);
+
+	if(debug) printk("_DoC_WaitReady...\n");
+	/* Out-of-line routine to wait for chip response */
+	if (DoC_is_MillenniumPlus(doc)) {
+		while ((ReadDOC(docptr, Mplus_FlashControl) & CDSN_CTRL_FR_B_MASK) != CDSN_CTRL_FR_B_MASK) {
+			if (time_after(jiffies, timeo)) {
+				printk("_DoC_WaitReady timed out.\n");
+				return -EIO;
+			}
+			udelay(1);
+			cond_resched();
+		}
+	} else {
+		while (!(ReadDOC(docptr, CDSNControl) & CDSN_CTRL_FR_B)) {
+			if (time_after(jiffies, timeo)) {
+				printk("_DoC_WaitReady timed out.\n");
+				return -EIO;
+			}
+			udelay(1);
+			cond_resched();
+		}
+	}
+
+	return 0;
+}
+
+static inline int DoC_WaitReady(struct doc_priv *doc)
+{
+	void __iomem *docptr = doc->virtadr;
+	int ret = 0;
+
+	if (DoC_is_MillenniumPlus(doc)) {
+		DoC_Delay(doc, 4);
+
+		if ((ReadDOC(docptr, Mplus_FlashControl) & CDSN_CTRL_FR_B_MASK) != CDSN_CTRL_FR_B_MASK)
+			/* Call the out-of-line routine to wait */
+			ret = _DoC_WaitReady(doc);
+	} else {
+		DoC_Delay(doc, 4);
+
+		if (!(ReadDOC(docptr, CDSNControl) & CDSN_CTRL_FR_B))
+			/* Call the out-of-line routine to wait */
+			ret = _DoC_WaitReady(doc);
+		DoC_Delay(doc, 2);
+	}
+
+	if(debug) printk("DoC_WaitReady OK\n");
+	return ret;
+}
+
+static void doc2000_write_byte(struct mtd_info *mtd, u_char datum)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	if(debug)printk("write_byte %02x\n", datum);
+	WriteDOC(datum, docptr, CDSNSlowIO);
+	WriteDOC(datum, docptr, 2k_CDSN_IO);
+}
+
+static u_char doc2000_read_byte(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	u_char ret;
+
+	ReadDOC(docptr, CDSNSlowIO);
+	DoC_Delay(doc, 2);
+	ret = ReadDOC(docptr, 2k_CDSN_IO);
+	if (debug) printk("read_byte returns %02x\n", ret);
+	return ret;
+}
+
+static void doc2000_writebuf(struct mtd_info *mtd,
+			     const u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+	if (debug)printk("writebuf of %d bytes: ", len);
+	for (i=0; i < len; i++) {
+		WriteDOC_(buf[i], docptr, DoC_2k_CDSN_IO + i);
+		if (debug && i < 16)
+			printk("%02x ", buf[i]);
+	}
+	if (debug) printk("\n");
+}
+
+static void doc2000_readbuf(struct mtd_info *mtd,
+			    u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+ 	int i;
+
+	if (debug)printk("readbuf of %d bytes: ", len);
+
+	for (i=0; i < len; i++) {
+		buf[i] = ReadDOC(docptr, 2k_CDSN_IO + i);
+	}
+}
+
+static void doc2000_readbuf_dword(struct mtd_info *mtd,
+			    u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+ 	int i;
+
+	if (debug) printk("readbuf_dword of %d bytes: ", len);
+
+	if (unlikely((((unsigned long)buf)|len) & 3)) {
+		for (i=0; i < len; i++) {
+			*(uint8_t *)(&buf[i]) = ReadDOC(docptr, 2k_CDSN_IO + i);
+		}
+	} else {
+		for (i=0; i < len; i+=4) {
+			*(uint32_t*)(&buf[i]) = readl(docptr + DoC_2k_CDSN_IO + i);
+		}
+	}
+}
+
+static int doc2000_verifybuf(struct mtd_info *mtd,
+			      const u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+
+	for (i=0; i < len; i++)
+		if (buf[i] != ReadDOC(docptr, 2k_CDSN_IO))
+			return -EFAULT;
+	return 0;
+}
+
+static uint16_t __init doc200x_ident_chip(struct mtd_info *mtd, int nr)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	uint16_t ret;
+
+	doc200x_select_chip(mtd, nr);
+	doc200x_hwcontrol(mtd, NAND_CTL_SETCLE);
+	this->write_byte(mtd, NAND_CMD_READID);
+	doc200x_hwcontrol(mtd, NAND_CTL_CLRCLE);
+	doc200x_hwcontrol(mtd, NAND_CTL_SETALE);
+	this->write_byte(mtd, 0);
+	doc200x_hwcontrol(mtd, NAND_CTL_CLRALE);
+
+	ret = this->read_byte(mtd) << 8;
+	ret |= this->read_byte(mtd);
+
+	if (doc->ChipID == DOC_ChipID_Doc2k && try_dword && !nr) {
+		/* First chip probe. See if we get same results by 32-bit access */
+		union {
+			uint32_t dword;
+			uint8_t byte[4];
+		} ident;
+		void __iomem *docptr = doc->virtadr;
+
+		doc200x_hwcontrol(mtd, NAND_CTL_SETCLE);
+		doc2000_write_byte(mtd, NAND_CMD_READID);
+		doc200x_hwcontrol(mtd, NAND_CTL_CLRCLE);
+		doc200x_hwcontrol(mtd, NAND_CTL_SETALE);
+		doc2000_write_byte(mtd, 0);
+		doc200x_hwcontrol(mtd, NAND_CTL_CLRALE);
+
+		ident.dword = readl(docptr + DoC_2k_CDSN_IO);
+		if (((ident.byte[0] << 8) | ident.byte[1]) == ret) {
+			printk(KERN_INFO "DiskOnChip 2000 responds to DWORD access\n");
+			this->read_buf = &doc2000_readbuf_dword;
+		}
+	}
+
+	return ret;
+}
+
+static void __init doc2000_count_chips(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	uint16_t mfrid;
+	int i;
+
+	/* Max 4 chips per floor on DiskOnChip 2000 */
+	doc->chips_per_floor = 4;
+
+	/* Find out what the first chip is */
+	mfrid = doc200x_ident_chip(mtd, 0);
+
+	/* Find how many chips in each floor. */
+	for (i = 1; i < 4; i++) {
+		if (doc200x_ident_chip(mtd, i) != mfrid)
+			break;
+	}
+	doc->chips_per_floor = i;
+	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
+}
+
+static int doc200x_wait(struct mtd_info *mtd, struct nand_chip *this, int state)
+{
+	struct doc_priv *doc = this->priv;
+
+	int status;
+
+	DoC_WaitReady(doc);
+	this->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
+	DoC_WaitReady(doc);
+	status = (int)this->read_byte(mtd);
+
+	return status;
+}
+
+static void doc2001_write_byte(struct mtd_info *mtd, u_char datum)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	WriteDOC(datum, docptr, CDSNSlowIO);
+	WriteDOC(datum, docptr, Mil_CDSN_IO);
+	WriteDOC(datum, docptr, WritePipeTerm);
+}
+
+static u_char doc2001_read_byte(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	/*ReadDOC(docptr, CDSNSlowIO); */
+	/* 11.4.5 -- delay twice to allow extended length cycle */
+	DoC_Delay(doc, 2);
+	ReadDOC(docptr, ReadPipeInit);
+	/*return ReadDOC(docptr, Mil_CDSN_IO); */
+	return ReadDOC(docptr, LastDataRead);
+}
+
+static void doc2001_writebuf(struct mtd_info *mtd,
+			     const u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+
+	for (i=0; i < len; i++)
+		WriteDOC_(buf[i], docptr, DoC_Mil_CDSN_IO + i);
+	/* Terminate write pipeline */
+	WriteDOC(0x00, docptr, WritePipeTerm);
+}
+
+static void doc2001_readbuf(struct mtd_info *mtd,
+			    u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+
+	/* Start read pipeline */
+	ReadDOC(docptr, ReadPipeInit);
+
+	for (i=0; i < len-1; i++)
+		buf[i] = ReadDOC(docptr, Mil_CDSN_IO + (i & 0xff));
+
+	/* Terminate read pipeline */
+	buf[i] = ReadDOC(docptr, LastDataRead);
+}
+
+static int doc2001_verifybuf(struct mtd_info *mtd,
+			     const u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+
+	/* Start read pipeline */
+	ReadDOC(docptr, ReadPipeInit);
+
+	for (i=0; i < len-1; i++)
+		if (buf[i] != ReadDOC(docptr, Mil_CDSN_IO)) {
+			ReadDOC(docptr, LastDataRead);
+			return i;
+		}
+	if (buf[i] != ReadDOC(docptr, LastDataRead))
+		return i;
+	return 0;
+}
+
+static u_char doc2001plus_read_byte(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	u_char ret;
+
+	ReadDOC(docptr, Mplus_ReadPipeInit);
+	ReadDOC(docptr, Mplus_ReadPipeInit);
+	ret = ReadDOC(docptr, Mplus_LastDataRead);
+	if (debug) printk("read_byte returns %02x\n", ret);
+	return ret;
+}
+
+static void doc2001plus_writebuf(struct mtd_info *mtd,
+			     const u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+
+	if (debug)printk("writebuf of %d bytes: ", len);
+	for (i=0; i < len; i++) {
+		WriteDOC_(buf[i], docptr, DoC_Mil_CDSN_IO + i);
+		if (debug && i < 16)
+			printk("%02x ", buf[i]);
+	}
+	if (debug) printk("\n");
+}
+
+static void doc2001plus_readbuf(struct mtd_info *mtd,
+			    u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+
+	if (debug)printk("readbuf of %d bytes: ", len);
+
+	/* Start read pipeline */
+	ReadDOC(docptr, Mplus_ReadPipeInit);
+	ReadDOC(docptr, Mplus_ReadPipeInit);
+
+	for (i=0; i < len-2; i++) {
+		buf[i] = ReadDOC(docptr, Mil_CDSN_IO);
+		if (debug && i < 16)
+			printk("%02x ", buf[i]);
+	}
+
+	/* Terminate read pipeline */
+	buf[len-2] = ReadDOC(docptr, Mplus_LastDataRead);
+	if (debug && i < 16)
+		printk("%02x ", buf[len-2]);
+	buf[len-1] = ReadDOC(docptr, Mplus_LastDataRead);
+	if (debug && i < 16)
+		printk("%02x ", buf[len-1]);
+	if (debug) printk("\n");
+}
+
+static int doc2001plus_verifybuf(struct mtd_info *mtd,
+			     const u_char *buf, int len)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+
+	if (debug)printk("verifybuf of %d bytes: ", len);
+
+	/* Start read pipeline */
+	ReadDOC(docptr, Mplus_ReadPipeInit);
+	ReadDOC(docptr, Mplus_ReadPipeInit);
+
+	for (i=0; i < len-2; i++)
+		if (buf[i] != ReadDOC(docptr, Mil_CDSN_IO)) {
+			ReadDOC(docptr, Mplus_LastDataRead);
+			ReadDOC(docptr, Mplus_LastDataRead);
+			return i;
+		}
+	if (buf[len-2] != ReadDOC(docptr, Mplus_LastDataRead))
+		return len-2;
+	if (buf[len-1] != ReadDOC(docptr, Mplus_LastDataRead))
+		return len-1;
+	return 0;
+}
+
+static void doc2001plus_select_chip(struct mtd_info *mtd, int chip)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int floor = 0;
+
+	if(debug)printk("select chip (%d)\n", chip);
+
+	if (chip == -1) {
+		/* Disable flash internally */
+		WriteDOC(0, docptr, Mplus_FlashSelect);
+		return;
+	}
+
+	floor = chip / doc->chips_per_floor;
+	chip -= (floor *  doc->chips_per_floor);
+
+	/* Assert ChipEnable and deassert WriteProtect */
+	WriteDOC((DOC_FLASH_CE), docptr, Mplus_FlashSelect);
+	this->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+
+	doc->curchip = chip;
+	doc->curfloor = floor;
+}
+
+static void doc200x_select_chip(struct mtd_info *mtd, int chip)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int floor = 0;
+
+	if(debug)printk("select chip (%d)\n", chip);
+
+	if (chip == -1)
+		return;
+
+	floor = chip / doc->chips_per_floor;
+	chip -= (floor *  doc->chips_per_floor);
+
+	/* 11.4.4 -- deassert CE before changing chip */
+	doc200x_hwcontrol(mtd, NAND_CTL_CLRNCE);
+
+	WriteDOC(floor, docptr, FloorSelect);
+	WriteDOC(chip, docptr, CDSNDeviceSelect);
+
+	doc200x_hwcontrol(mtd, NAND_CTL_SETNCE);
+
+	doc->curchip = chip;
+	doc->curfloor = floor;
+}
+
+static void doc200x_hwcontrol(struct mtd_info *mtd, int cmd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	switch(cmd) {
+	case NAND_CTL_SETNCE:
+		doc->CDSNControl |= CDSN_CTRL_CE;
+		break;
+	case NAND_CTL_CLRNCE:
+		doc->CDSNControl &= ~CDSN_CTRL_CE;
+		break;
+	case NAND_CTL_SETCLE:
+		doc->CDSNControl |= CDSN_CTRL_CLE;
+		break;
+	case NAND_CTL_CLRCLE:
+		doc->CDSNControl &= ~CDSN_CTRL_CLE;
+		break;
+	case NAND_CTL_SETALE:
+		doc->CDSNControl |= CDSN_CTRL_ALE;
+		break;
+	case NAND_CTL_CLRALE:
+		doc->CDSNControl &= ~CDSN_CTRL_ALE;
+		break;
+	case NAND_CTL_SETWP:
+		doc->CDSNControl |= CDSN_CTRL_WP;
+		break;
+	case NAND_CTL_CLRWP:
+		doc->CDSNControl &= ~CDSN_CTRL_WP;
+		break;
+	}
+	if (debug)printk("hwcontrol(%d): %02x\n", cmd, doc->CDSNControl);
+	WriteDOC(doc->CDSNControl, docptr, CDSNControl);
+	/* 11.4.3 -- 4 NOPs after CSDNControl write */
+	DoC_Delay(doc, 4);
+}
+
+static void doc2001plus_command (struct mtd_info *mtd, unsigned command, int column, int page_addr)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	/*
+	 * Must terminate write pipeline before sending any commands
+	 * to the device.
+	 */
+	if (command == NAND_CMD_PAGEPROG) {
+		WriteDOC(0x00, docptr, Mplus_WritePipeTerm);
+		WriteDOC(0x00, docptr, Mplus_WritePipeTerm);
+	}
+
+	/*
+	 * Write out the command to the device.
+	 */
+	if (command == NAND_CMD_SEQIN) {
+		int readcmd;
+
+		if (column >= mtd->oobblock) {
+			/* OOB area */
+			column -= mtd->oobblock;
+			readcmd = NAND_CMD_READOOB;
+		} else if (column < 256) {
+			/* First 256 bytes --> READ0 */
+			readcmd = NAND_CMD_READ0;
+		} else {
+			column -= 256;
+			readcmd = NAND_CMD_READ1;
+		}
+		WriteDOC(readcmd, docptr, Mplus_FlashCmd);
+	}
+	WriteDOC(command, docptr, Mplus_FlashCmd);
+	WriteDOC(0, docptr, Mplus_WritePipeTerm);
+	WriteDOC(0, docptr, Mplus_WritePipeTerm);
+
+	if (column != -1 || page_addr != -1) {
+		/* Serially input address */
+		if (column != -1) {
+			/* Adjust columns for 16 bit buswidth */
+			if (this->options & NAND_BUSWIDTH_16)
+				column >>= 1;
+			WriteDOC(column, docptr, Mplus_FlashAddress);
+		}
+		if (page_addr != -1) {
+			WriteDOC((unsigned char) (page_addr & 0xff), docptr, Mplus_FlashAddress);
+			WriteDOC((unsigned char) ((page_addr >> 8) & 0xff), docptr, Mplus_FlashAddress);
+			/* One more address cycle for higher density devices */
+			if (this->chipsize & 0x0c000000) {
+				WriteDOC((unsigned char) ((page_addr >> 16) & 0x0f), docptr, Mplus_FlashAddress);
+				printk("high density\n");
+			}
+		}
+		WriteDOC(0, docptr, Mplus_WritePipeTerm);
+		WriteDOC(0, docptr, Mplus_WritePipeTerm);
+		/* deassert ALE */
+		if (command == NAND_CMD_READ0 || command == NAND_CMD_READ1 || command == NAND_CMD_READOOB || command == NAND_CMD_READID)
+			WriteDOC(0, docptr, Mplus_FlashControl);
+	}
+
+	/*
+	 * program and erase have their own busy handlers
+	 * status and sequential in needs no delay
+	*/
+	switch (command) {
+
+	case NAND_CMD_PAGEPROG:
+	case NAND_CMD_ERASE1:
+	case NAND_CMD_ERASE2:
+	case NAND_CMD_SEQIN:
+	case NAND_CMD_STATUS:
+		return;
+
+	case NAND_CMD_RESET:
+		if (this->dev_ready)
+			break;
+		udelay(this->chip_delay);
+		WriteDOC(NAND_CMD_STATUS, docptr, Mplus_FlashCmd);
+		WriteDOC(0, docptr, Mplus_WritePipeTerm);
+		WriteDOC(0, docptr, Mplus_WritePipeTerm);
+		while ( !(this->read_byte(mtd) & 0x40));
+		return;
+
+	/* This applies to read commands */
+	default:
+		/*
+		 * If we don't have access to the busy pin, we apply the given
+		 * command delay
+		*/
+		if (!this->dev_ready) {
+			udelay (this->chip_delay);
+			return;
+		}
+	}
+
+	/* Apply this short delay always to ensure that we do wait tWB in
+	 * any case on any machine. */
+	ndelay (100);
+	/* wait until command is processed */
+	while (!this->dev_ready(mtd));
+}
+
+static int doc200x_dev_ready(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	if (DoC_is_MillenniumPlus(doc)) {
+		/* 11.4.2 -- must NOP four times before checking FR/B# */
+		DoC_Delay(doc, 4);
+		if ((ReadDOC(docptr, Mplus_FlashControl) & CDSN_CTRL_FR_B_MASK) != CDSN_CTRL_FR_B_MASK) {
+			if(debug)
+				printk("not ready\n");
+			return 0;
+		}
+		if (debug)printk("was ready\n");
+		return 1;
+	} else {
+		/* 11.4.2 -- must NOP four times before checking FR/B# */
+		DoC_Delay(doc, 4);
+		if (!(ReadDOC(docptr, CDSNControl) & CDSN_CTRL_FR_B)) {
+			if(debug)
+				printk("not ready\n");
+			return 0;
+		}
+		/* 11.4.2 -- Must NOP twice if it's ready */
+		DoC_Delay(doc, 2);
+		if (debug)printk("was ready\n");
+		return 1;
+	}
+}
+
+static int doc200x_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
+{
+	/* This is our last resort if we couldn't find or create a BBT.  Just
+	   pretend all blocks are good. */
+	return 0;
+}
+
+static void doc200x_enable_hwecc(struct mtd_info *mtd, int mode)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	/* Prime the ECC engine */
+	switch(mode) {
+	case NAND_ECC_READ:
+		WriteDOC(DOC_ECC_RESET, docptr, ECCConf);
+		WriteDOC(DOC_ECC_EN, docptr, ECCConf);
+		break;
+	case NAND_ECC_WRITE:
+		WriteDOC(DOC_ECC_RESET, docptr, ECCConf);
+		WriteDOC(DOC_ECC_EN | DOC_ECC_RW, docptr, ECCConf);
+		break;
+	}
+}
+
+static void doc2001plus_enable_hwecc(struct mtd_info *mtd, int mode)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+
+	/* Prime the ECC engine */
+	switch(mode) {
+	case NAND_ECC_READ:
+		WriteDOC(DOC_ECC_RESET, docptr, Mplus_ECCConf);
+		WriteDOC(DOC_ECC_EN, docptr, Mplus_ECCConf);
+		break;
+	case NAND_ECC_WRITE:
+		WriteDOC(DOC_ECC_RESET, docptr, Mplus_ECCConf);
+		WriteDOC(DOC_ECC_EN | DOC_ECC_RW, docptr, Mplus_ECCConf);
+		break;
+	}
+}
+
+/* This code is only called on write */
+static int doc200x_calculate_ecc(struct mtd_info *mtd, const u_char *dat,
+				 unsigned char *ecc_code)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	int i;
+	int emptymatch = 1;
+
+	/* flush the pipeline */
+	if (DoC_is_2000(doc)) {
+		WriteDOC(doc->CDSNControl & ~CDSN_CTRL_FLASH_IO, docptr, CDSNControl);
+		WriteDOC(0, docptr, 2k_CDSN_IO);
+		WriteDOC(0, docptr, 2k_CDSN_IO);
+		WriteDOC(0, docptr, 2k_CDSN_IO);
+		WriteDOC(doc->CDSNControl, docptr, CDSNControl);
+	} else if (DoC_is_MillenniumPlus(doc)) {
+		WriteDOC(0, docptr, Mplus_NOP);
+		WriteDOC(0, docptr, Mplus_NOP);
+		WriteDOC(0, docptr, Mplus_NOP);
+	} else {
+		WriteDOC(0, docptr, NOP);
+		WriteDOC(0, docptr, NOP);
+		WriteDOC(0, docptr, NOP);
+	}
+
+	for (i = 0; i < 6; i++) {
+		if (DoC_is_MillenniumPlus(doc))
+			ecc_code[i] = ReadDOC_(docptr, DoC_Mplus_ECCSyndrome0 + i);
+		else
+			ecc_code[i] = ReadDOC_(docptr, DoC_ECCSyndrome0 + i);
+		if (ecc_code[i] != empty_write_ecc[i])
+			emptymatch = 0;
+	}
+	if (DoC_is_MillenniumPlus(doc))
+		WriteDOC(DOC_ECC_DIS, docptr, Mplus_ECCConf);
+	else
+		WriteDOC(DOC_ECC_DIS, docptr, ECCConf);
+#if 0
+	/* If emptymatch=1, we might have an all-0xff data buffer.  Check. */
+	if (emptymatch) {
+		/* Note: this somewhat expensive test should not be triggered
+		   often.  It could be optimized away by examining the data in
+		   the writebuf routine, and remembering the result. */
+		for (i = 0; i < 512; i++) {
+			if (dat[i] == 0xff) continue;
+			emptymatch = 0;
+			break;
+		}
+	}
+	/* If emptymatch still =1, we do have an all-0xff data buffer.
+	   Return all-0xff ecc value instead of the computed one, so
+	   it'll look just like a freshly-erased page. */
+	if (emptymatch) memset(ecc_code, 0xff, 6);
+#endif
+	return 0;
+}
+
+static int doc200x_correct_data(struct mtd_info *mtd, u_char *dat, u_char *read_ecc, u_char *calc_ecc)
+{
+	int i, ret = 0;
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	void __iomem *docptr = doc->virtadr;
+	volatile u_char dummy;
+	int emptymatch = 1;
+
+	/* flush the pipeline */
+	if (DoC_is_2000(doc)) {
+		dummy = ReadDOC(docptr, 2k_ECCStatus);
+		dummy = ReadDOC(docptr, 2k_ECCStatus);
+		dummy = ReadDOC(docptr, 2k_ECCStatus);
+	} else if (DoC_is_MillenniumPlus(doc)) {
+		dummy = ReadDOC(docptr, Mplus_ECCConf);
+		dummy = ReadDOC(docptr, Mplus_ECCConf);
+		dummy = ReadDOC(docptr, Mplus_ECCConf);
+	} else {
+		dummy = ReadDOC(docptr, ECCConf);
+		dummy = ReadDOC(docptr, ECCConf);
+		dummy = ReadDOC(docptr, ECCConf);
+	}
+
+	/* Error occured ? */
+	if (dummy & 0x80) {
+		for (i = 0; i < 6; i++) {
+			if (DoC_is_MillenniumPlus(doc))
+				calc_ecc[i] = ReadDOC_(docptr, DoC_Mplus_ECCSyndrome0 + i);
+			else
+				calc_ecc[i] = ReadDOC_(docptr, DoC_ECCSyndrome0 + i);
+			if (calc_ecc[i] != empty_read_syndrome[i])
+				emptymatch = 0;
+		}
+		/* If emptymatch=1, the read syndrome is consistent with an
+		   all-0xff data and stored ecc block.  Check the stored ecc. */
+		if (emptymatch) {
+			for (i = 0; i < 6; i++) {
+				if (read_ecc[i] == 0xff) continue;
+				emptymatch = 0;
+				break;
+			}
+		}
+		/* If emptymatch still =1, check the data block. */
+		if (emptymatch) {
+		/* Note: this somewhat expensive test should not be triggered
+		   often.  It could be optimized away by examining the data in
+		   the readbuf routine, and remembering the result. */
+			for (i = 0; i < 512; i++) {
+				if (dat[i] == 0xff) continue;
+				emptymatch = 0;
+				break;
+			}
+		}
+		/* If emptymatch still =1, this is almost certainly a freshly-
+		   erased block, in which case the ECC will not come out right.
+		   We'll suppress the error and tell the caller everything's
+		   OK.  Because it is. */
+		if (!emptymatch) ret = doc_ecc_decode (rs_decoder, dat, calc_ecc);
+		if (ret > 0)
+			printk(KERN_ERR "doc200x_correct_data corrected %d errors\n", ret);
+	}
+	if (DoC_is_MillenniumPlus(doc))
+		WriteDOC(DOC_ECC_DIS, docptr, Mplus_ECCConf);
+	else
+		WriteDOC(DOC_ECC_DIS, docptr, ECCConf);
+	if (no_ecc_failures && (ret == -1)) {
+		printk(KERN_ERR "suppressing ECC failure\n");
+		ret = 0;
+	}
+	return ret;
+}
+
+/*u_char mydatabuf[528]; */
+
+static struct nand_oobinfo doc200x_oobinfo = {
+	.useecc = MTD_NANDECC_AUTOPLACE,
+	.eccbytes = 6,
+	.eccpos = {0, 1, 2, 3, 4, 5},
+	.oobfree = { {8, 8} }
+};
+
+/* Find the (I)NFTL Media Header, and optionally also the mirror media header.
+   On sucessful return, buf will contain a copy of the media header for
+   further processing.  id is the string to scan for, and will presumably be
+   either "ANAND" or "BNAND".  If findmirror=1, also look for the mirror media
+   header.  The page #s of the found media headers are placed in mh0_page and
+   mh1_page in the DOC private structure. */
+static int __init find_media_headers(struct mtd_info *mtd, u_char *buf,
+				     const char *id, int findmirror)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	unsigned offs, end = (MAX_MEDIAHEADER_SCAN << this->phys_erase_shift);
+	int ret;
+	size_t retlen;
+
+	end = min(end, mtd->size); /* paranoia */
+	for (offs = 0; offs < end; offs += mtd->erasesize) {
+		ret = mtd->read(mtd, offs, mtd->oobblock, &retlen, buf);
+		if (retlen != mtd->oobblock) continue;
+		if (ret) {
+			printk(KERN_WARNING "ECC error scanning DOC at 0x%x\n",
+				offs);
+		}
+		if (memcmp(buf, id, 6)) continue;
+		printk(KERN_INFO "Found DiskOnChip %s Media Header at 0x%x\n", id, offs);
+		if (doc->mh0_page == -1) {
+			doc->mh0_page = offs >> this->page_shift;
+			if (!findmirror) return 1;
+			continue;
+		}
+		doc->mh1_page = offs >> this->page_shift;
+		return 2;
+	}
+	if (doc->mh0_page == -1) {
+		printk(KERN_WARNING "DiskOnChip %s Media Header not found.\n", id);
+		return 0;
+	}
+	/* Only one mediaheader was found.  We want buf to contain a
+	   mediaheader on return, so we'll have to re-read the one we found. */
+	offs = doc->mh0_page << this->page_shift;
+	ret = mtd->read(mtd, offs, mtd->oobblock, &retlen, buf);
+	if (retlen != mtd->oobblock) {
+		/* Insanity.  Give up. */
+		printk(KERN_ERR "Read DiskOnChip Media Header once, but can't reread it???\n");
+		return 0;
+	}
+	return 1;
+}
+
+static inline int __init nftl_partscan(struct mtd_info *mtd,
+				struct mtd_partition *parts)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	int ret = 0;
+	u_char *buf;
+	struct NFTLMediaHeader *mh;
+	const unsigned psize = 1 << this->page_shift;
+	unsigned blocks, maxblocks;
+	int offs, numheaders;
+
+	buf = kmalloc(mtd->oobblock, GFP_KERNEL);
+	if (!buf) {
+		printk(KERN_ERR "DiskOnChip mediaheader kmalloc failed!\n");
+		return 0;
+	}
+	if (!(numheaders=find_media_headers(mtd, buf, "ANAND", 1))) goto out;
+	mh = (struct NFTLMediaHeader *) buf;
+
+/*#ifdef CONFIG_MTD_DEBUG_VERBOSE */
+/*	if (CONFIG_MTD_DEBUG_VERBOSE >= 2) */
+	printk(KERN_INFO "    DataOrgID        = %s\n"
+			 "    NumEraseUnits    = %d\n"
+			 "    FirstPhysicalEUN = %d\n"
+			 "    FormattedSize    = %d\n"
+			 "    UnitSizeFactor   = %d\n",
+		mh->DataOrgID, mh->NumEraseUnits,
+		mh->FirstPhysicalEUN, mh->FormattedSize,
+		mh->UnitSizeFactor);
+/*#endif */
+
+	blocks = mtd->size >> this->phys_erase_shift;
+	maxblocks = min(32768U, mtd->erasesize - psize);
+
+	if (mh->UnitSizeFactor == 0x00) {
+		/* Auto-determine UnitSizeFactor.  The constraints are:
+		   - There can be at most 32768 virtual blocks.
+		   - There can be at most (virtual block size - page size)
+		     virtual blocks (because MediaHeader+BBT must fit in 1).
+		*/
+		mh->UnitSizeFactor = 0xff;
+		while (blocks > maxblocks) {
+			blocks >>= 1;
+			maxblocks = min(32768U, (maxblocks << 1) + psize);
+			mh->UnitSizeFactor--;
+		}
+		printk(KERN_WARNING "UnitSizeFactor=0x00 detected.  Correct value is assumed to be 0x%02x.\n", mh->UnitSizeFactor);
+	}
+
+	/* NOTE: The lines below modify internal variables of the NAND and MTD
+	   layers; variables with have already been configured by nand_scan.
+	   Unfortunately, we didn't know before this point what these values
+	   should be.  Thus, this code is somewhat dependant on the exact
+	   implementation of the NAND layer.  */
+	if (mh->UnitSizeFactor != 0xff) {
+		this->bbt_erase_shift += (0xff - mh->UnitSizeFactor);
+		mtd->erasesize <<= (0xff - mh->UnitSizeFactor);
+		printk(KERN_INFO "Setting virtual erase size to %d\n", mtd->erasesize);
+		blocks = mtd->size >> this->bbt_erase_shift;
+		maxblocks = min(32768U, mtd->erasesize - psize);
+	}
+
+	if (blocks > maxblocks) {
+		printk(KERN_ERR "UnitSizeFactor of 0x%02x is inconsistent with device size.  Aborting.\n", mh->UnitSizeFactor);
+		goto out;
+	}
+
+	/* Skip past the media headers. */
+	offs = max(doc->mh0_page, doc->mh1_page);
+	offs <<= this->page_shift;
+	offs += mtd->erasesize;
+
+	/*parts[0].name = " DiskOnChip Boot / Media Header partition"; */
+	/*parts[0].offset = 0; */
+	/*parts[0].size = offs; */
+
+	parts[0].name = " DiskOnChip BDTL partition";
+	parts[0].offset = offs;
+	parts[0].size = (mh->NumEraseUnits - numheaders) << this->bbt_erase_shift;
+
+	offs += parts[0].size;
+	if (offs < mtd->size) {
+		parts[1].name = " DiskOnChip Remainder partition";
+		parts[1].offset = offs;
+		parts[1].size = mtd->size - offs;
+		ret = 2;
+		goto out;
+	}
+	ret = 1;
+out:
+	kfree(buf);
+	return ret;
+}
+
+/* This is a stripped-down copy of the code in inftlmount.c */
+static inline int __init inftl_partscan(struct mtd_info *mtd,
+				 struct mtd_partition *parts)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	int ret = 0;
+	u_char *buf;
+	struct INFTLMediaHeader *mh;
+	struct INFTLPartition *ip;
+	int numparts = 0;
+	int blocks;
+	int vshift, lastvunit = 0;
+	int i;
+	int end = mtd->size;
+
+	if (inftl_bbt_write)
+		end -= (INFTL_BBT_RESERVED_BLOCKS << this->phys_erase_shift);
+
+	buf = kmalloc(mtd->oobblock, GFP_KERNEL);
+	if (!buf) {
+		printk(KERN_ERR "DiskOnChip mediaheader kmalloc failed!\n");
+		return 0;
+	}
+
+	if (!find_media_headers(mtd, buf, "BNAND", 0)) goto out;
+	doc->mh1_page = doc->mh0_page + (4096 >> this->page_shift);
+	mh = (struct INFTLMediaHeader *) buf;
+
+	mh->NoOfBootImageBlocks = le32_to_cpu(mh->NoOfBootImageBlocks);
+	mh->NoOfBinaryPartitions = le32_to_cpu(mh->NoOfBinaryPartitions);
+	mh->NoOfBDTLPartitions = le32_to_cpu(mh->NoOfBDTLPartitions);
+	mh->BlockMultiplierBits = le32_to_cpu(mh->BlockMultiplierBits);
+	mh->FormatFlags = le32_to_cpu(mh->FormatFlags);
+	mh->PercentUsed = le32_to_cpu(mh->PercentUsed);
+
+/*#ifdef CONFIG_MTD_DEBUG_VERBOSE */
+/*	if (CONFIG_MTD_DEBUG_VERBOSE >= 2) */
+	printk(KERN_INFO "    bootRecordID          = %s\n"
+			 "    NoOfBootImageBlocks   = %d\n"
+			 "    NoOfBinaryPartitions  = %d\n"
+			 "    NoOfBDTLPartitions    = %d\n"
+			 "    BlockMultiplerBits    = %d\n"
+			 "    FormatFlgs            = %d\n"
+			 "    OsakVersion           = %d.%d.%d.%d\n"
+			 "    PercentUsed           = %d\n",
+		mh->bootRecordID, mh->NoOfBootImageBlocks,
+		mh->NoOfBinaryPartitions,
+		mh->NoOfBDTLPartitions,
+		mh->BlockMultiplierBits, mh->FormatFlags,
+		((unsigned char *) &mh->OsakVersion)[0] & 0xf,
+		((unsigned char *) &mh->OsakVersion)[1] & 0xf,
+		((unsigned char *) &mh->OsakVersion)[2] & 0xf,
+		((unsigned char *) &mh->OsakVersion)[3] & 0xf,
+		mh->PercentUsed);
+/*#endif */
+
+	vshift = this->phys_erase_shift + mh->BlockMultiplierBits;
+
+	blocks = mtd->size >> vshift;
+	if (blocks > 32768) {
+		printk(KERN_ERR "BlockMultiplierBits=%d is inconsistent with device size.  Aborting.\n", mh->BlockMultiplierBits);
+		goto out;
+	}
+
+	blocks = doc->chips_per_floor << (this->chip_shift - this->phys_erase_shift);
+	if (inftl_bbt_write && (blocks > mtd->erasesize)) {
+		printk(KERN_ERR "Writeable BBTs spanning more than one erase block are not yet supported.  FIX ME!\n");
+		goto out;
+	}
+
+	/* Scan the partitions */
+	for (i = 0; (i < 4); i++) {
+		ip = &(mh->Partitions[i]);
+		ip->virtualUnits = le32_to_cpu(ip->virtualUnits);
+		ip->firstUnit = le32_to_cpu(ip->firstUnit);
+		ip->lastUnit = le32_to_cpu(ip->lastUnit);
+		ip->flags = le32_to_cpu(ip->flags);
+		ip->spareUnits = le32_to_cpu(ip->spareUnits);
+		ip->Reserved0 = le32_to_cpu(ip->Reserved0);
+
+/*#ifdef CONFIG_MTD_DEBUG_VERBOSE */
+/*		if (CONFIG_MTD_DEBUG_VERBOSE >= 2) */
+		printk(KERN_INFO	"    PARTITION[%d] ->\n"
+			"        virtualUnits    = %d\n"
+			"        firstUnit       = %d\n"
+			"        lastUnit        = %d\n"
+			"        flags           = 0x%x\n"
+			"        spareUnits      = %d\n",
+			i, ip->virtualUnits, ip->firstUnit,
+			ip->lastUnit, ip->flags,
+			ip->spareUnits);
+/*#endif */
+
+/*
+		if ((i == 0) && (ip->firstUnit > 0)) {
+			parts[0].name = " DiskOnChip IPL / Media Header partition";
+			parts[0].offset = 0;
+			parts[0].size = mtd->erasesize * ip->firstUnit;
+			numparts = 1;
+		}
+*/
+
+		if (ip->flags & INFTL_BINARY)
+			parts[numparts].name = " DiskOnChip BDK partition";
+		else
+			parts[numparts].name = " DiskOnChip BDTL partition";
+		parts[numparts].offset = ip->firstUnit << vshift;
+		parts[numparts].size = (1 + ip->lastUnit - ip->firstUnit) << vshift;
+		numparts++;
+		if (ip->lastUnit > lastvunit) lastvunit = ip->lastUnit;
+		if (ip->flags & INFTL_LAST) break;
+	}
+	lastvunit++;
+	if ((lastvunit << vshift) < end) {
+		parts[numparts].name = " DiskOnChip Remainder partition";
+		parts[numparts].offset = lastvunit << vshift;
+		parts[numparts].size = end - parts[numparts].offset;
+		numparts++;
+	}
+	ret = numparts;
+out:
+	kfree(buf);
+	return ret;
+}
+
+static int __init nftl_scan_bbt(struct mtd_info *mtd)
+{
+	int ret, numparts;
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	struct mtd_partition parts[2];
+
+	memset((char *) parts, 0, sizeof(parts));
+	/* On NFTL, we have to find the media headers before we can read the
+	   BBTs, since they're stored in the media header eraseblocks. */
+	numparts = nftl_partscan(mtd, parts);
+	if (!numparts) return -EIO;
+	this->bbt_td->options = NAND_BBT_ABSPAGE | NAND_BBT_8BIT |
+				NAND_BBT_SAVECONTENT | NAND_BBT_WRITE |
+				NAND_BBT_VERSION;
+	this->bbt_td->veroffs = 7;
+	this->bbt_td->pages[0] = doc->mh0_page + 1;
+	if (doc->mh1_page != -1) {
+		this->bbt_md->options = NAND_BBT_ABSPAGE | NAND_BBT_8BIT |
+					NAND_BBT_SAVECONTENT | NAND_BBT_WRITE |
+					NAND_BBT_VERSION;
+		this->bbt_md->veroffs = 7;
+		this->bbt_md->pages[0] = doc->mh1_page + 1;
+	} else {
+		this->bbt_md = NULL;
+	}
+
+	/* It's safe to set bd=NULL below because NAND_BBT_CREATE is not set.
+	   At least as nand_bbt.c is currently written. */
+	if ((ret = nand_scan_bbt(mtd, NULL)))
+		return ret;
+	add_mtd_device(mtd);
+#ifdef CONFIG_MTD_PARTITIONS
+	if (!no_autopart)
+		add_mtd_partitions(mtd, parts, numparts);
+#endif
+	return 0;
+}
+
+static int __init inftl_scan_bbt(struct mtd_info *mtd)
+{
+	int ret, numparts;
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+	struct mtd_partition parts[5];
+
+	if (this->numchips > doc->chips_per_floor) {
+		printk(KERN_ERR "Multi-floor INFTL devices not yet supported.\n");
+		return -EIO;
+	}
+
+	if (DoC_is_MillenniumPlus(doc)) {
+		this->bbt_td->options = NAND_BBT_2BIT | NAND_BBT_ABSPAGE;
+		if (inftl_bbt_write)
+			this->bbt_td->options |= NAND_BBT_WRITE;
+		this->bbt_td->pages[0] = 2;
+		this->bbt_md = NULL;
+	} else {
+		this->bbt_td->options = NAND_BBT_LASTBLOCK | NAND_BBT_8BIT |
+					NAND_BBT_VERSION;
+		if (inftl_bbt_write)
+			this->bbt_td->options |= NAND_BBT_WRITE;
+		this->bbt_td->offs = 8;
+		this->bbt_td->len = 8;
+		this->bbt_td->veroffs = 7;
+		this->bbt_td->maxblocks = INFTL_BBT_RESERVED_BLOCKS;
+		this->bbt_td->reserved_block_code = 0x01;
+		this->bbt_td->pattern = "MSYS_BBT";
+
+		this->bbt_md->options = NAND_BBT_LASTBLOCK | NAND_BBT_8BIT |
+					NAND_BBT_VERSION;
+		if (inftl_bbt_write)
+			this->bbt_md->options |= NAND_BBT_WRITE;
+		this->bbt_md->offs = 8;
+		this->bbt_md->len = 8;
+		this->bbt_md->veroffs = 7;
+		this->bbt_md->maxblocks = INFTL_BBT_RESERVED_BLOCKS;
+		this->bbt_md->reserved_block_code = 0x01;
+		this->bbt_md->pattern = "TBB_SYSM";
+	}
+
+	/* It's safe to set bd=NULL below because NAND_BBT_CREATE is not set.
+	   At least as nand_bbt.c is currently written. */
+	if ((ret = nand_scan_bbt(mtd, NULL)))
+		return ret;
+	memset((char *) parts, 0, sizeof(parts));
+	numparts = inftl_partscan(mtd, parts);
+	/* At least for now, require the INFTL Media Header.  We could probably
+	   do without it for non-INFTL use, since all it gives us is
+	   autopartitioning, but I want to give it more thought. */
+	if (!numparts) return -EIO;
+	add_mtd_device(mtd);
+#ifdef CONFIG_MTD_PARTITIONS
+	if (!no_autopart)
+		add_mtd_partitions(mtd, parts, numparts);
+#endif
+	return 0;
+}
+
+static inline int __init doc2000_init(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+
+	this->write_byte = doc2000_write_byte;
+	this->read_byte = doc2000_read_byte;
+	this->write_buf = doc2000_writebuf;
+	this->read_buf = doc2000_readbuf;
+	this->verify_buf = doc2000_verifybuf;
+	this->scan_bbt = nftl_scan_bbt;
+
+	doc->CDSNControl = CDSN_CTRL_FLASH_IO | CDSN_CTRL_ECC_IO;
+	doc2000_count_chips(mtd);
+	mtd->name = "DiskOnChip 2000 (NFTL Model)";
+	return (4 * doc->chips_per_floor);
+}
+
+static inline int __init doc2001_init(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+
+	this->write_byte = doc2001_write_byte;
+	this->read_byte = doc2001_read_byte;
+	this->write_buf = doc2001_writebuf;
+	this->read_buf = doc2001_readbuf;
+	this->verify_buf = doc2001_verifybuf;
+
+	ReadDOC(doc->virtadr, ChipID);
+	ReadDOC(doc->virtadr, ChipID);
+	ReadDOC(doc->virtadr, ChipID);
+	if (ReadDOC(doc->virtadr, ChipID) != DOC_ChipID_DocMil) {
+		/* It's not a Millennium; it's one of the newer
+		   DiskOnChip 2000 units with a similar ASIC.
+		   Treat it like a Millennium, except that it
+		   can have multiple chips. */
+		doc2000_count_chips(mtd);
+		mtd->name = "DiskOnChip 2000 (INFTL Model)";
+		this->scan_bbt = inftl_scan_bbt;
+		return (4 * doc->chips_per_floor);
+	} else {
+		/* Bog-standard Millennium */
+		doc->chips_per_floor = 1;
+		mtd->name = "DiskOnChip Millennium";
+		this->scan_bbt = nftl_scan_bbt;
+		return 1;
+	}
+}
+
+static inline int __init doc2001plus_init(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+	struct doc_priv *doc = this->priv;
+
+	this->write_byte = NULL;
+	this->read_byte = doc2001plus_read_byte;
+	this->write_buf = doc2001plus_writebuf;
+	this->read_buf = doc2001plus_readbuf;
+	this->verify_buf = doc2001plus_verifybuf;
+	this->scan_bbt = inftl_scan_bbt;
+	this->hwcontrol = NULL;
+	this->select_chip = doc2001plus_select_chip;
+	this->cmdfunc = doc2001plus_command;
+	this->enable_hwecc = doc2001plus_enable_hwecc;
+
+	doc->chips_per_floor = 1;
+	mtd->name = "DiskOnChip Millennium Plus";
+
+	return 1;
+}
+
+static inline int __init doc_probe(unsigned long physadr)
+{
+	unsigned char ChipID;
+	struct mtd_info *mtd;
+	struct nand_chip *nand;
+	struct doc_priv *doc;
+	void __iomem *virtadr;
+	unsigned char save_control;
+	unsigned char tmp, tmpb, tmpc;
+	int reg, len, numchips;
+	int ret = 0;
+
+	virtadr = ioremap(physadr, DOC_IOREMAP_LEN);
+	if (!virtadr) {
+		printk(KERN_ERR "Diskonchip ioremap failed: 0x%x bytes at 0x%lx\n", DOC_IOREMAP_LEN, physadr);
+		return -EIO;
+	}
+
+	/* It's not possible to cleanly detect the DiskOnChip - the
+	 * bootup procedure will put the device into reset mode, and
+	 * it's not possible to talk to it without actually writing
+	 * to the DOCControl register. So we store the current contents
+	 * of the DOCControl register's location, in case we later decide
+	 * that it's not a DiskOnChip, and want to put it back how we
+	 * found it.
+	 */
+	save_control = ReadDOC(virtadr, DOCControl);
+
+	/* Reset the DiskOnChip ASIC */
+	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_RESET,
+		 virtadr, DOCControl);
+	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_RESET,
+		 virtadr, DOCControl);
+
+	/* Enable the DiskOnChip ASIC */
+	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_NORMAL,
+		 virtadr, DOCControl);
+	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_NORMAL,
+		 virtadr, DOCControl);
+
+	ChipID = ReadDOC(virtadr, ChipID);
+
+	switch(ChipID) {
+	case DOC_ChipID_Doc2k:
+		reg = DoC_2k_ECCStatus;
+		break;
+	case DOC_ChipID_DocMil:
+		reg = DoC_ECCConf;
+		break;
+	case DOC_ChipID_DocMilPlus16:
+	case DOC_ChipID_DocMilPlus32:
+	case 0:
+		/* Possible Millennium Plus, need to do more checks */
+		/* Possibly release from power down mode */
+		for (tmp = 0; (tmp < 4); tmp++)
+			ReadDOC(virtadr, Mplus_Power);
+
+		/* Reset the Millennium Plus ASIC */
+		tmp = DOC_MODE_RESET | DOC_MODE_MDWREN | DOC_MODE_RST_LAT |
+			DOC_MODE_BDECT;
+		WriteDOC(tmp, virtadr, Mplus_DOCControl);
+		WriteDOC(~tmp, virtadr, Mplus_CtrlConfirm);
+
+		mdelay(1);
+		/* Enable the Millennium Plus ASIC */
+		tmp = DOC_MODE_NORMAL | DOC_MODE_MDWREN | DOC_MODE_RST_LAT |
+			DOC_MODE_BDECT;
+		WriteDOC(tmp, virtadr, Mplus_DOCControl);
+		WriteDOC(~tmp, virtadr, Mplus_CtrlConfirm);
+		mdelay(1);
+
+		ChipID = ReadDOC(virtadr, ChipID);
+
+		switch (ChipID) {
+		case DOC_ChipID_DocMilPlus16:
+			reg = DoC_Mplus_Toggle;
+			break;
+		case DOC_ChipID_DocMilPlus32:
+			printk(KERN_ERR "DiskOnChip Millennium Plus 32MB is not supported, ignoring.\n");
+		default:
+			ret = -ENODEV;
+			goto notfound;
+		}
+		break;
+
+	default:
+		ret = -ENODEV;
+		goto notfound;
+	}
+	/* Check the TOGGLE bit in the ECC register */
+	tmp  = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
+	tmpb = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
+	tmpc = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
+	if ((tmp == tmpb) || (tmp != tmpc)) {
+		printk(KERN_WARNING "Possible DiskOnChip at 0x%lx failed TOGGLE test, dropping.\n", physadr);
+		ret = -ENODEV;
+		goto notfound;
+	}
+
+	for (mtd = doclist; mtd; mtd = doc->nextdoc) {
+		unsigned char oldval;
+		unsigned char newval;
+		nand = mtd->priv;
+		doc = nand->priv;
+		/* Use the alias resolution register to determine if this is
+		   in fact the same DOC aliased to a new address.  If writes
+		   to one chip's alias resolution register change the value on
+		   the other chip, they're the same chip. */
+		if (ChipID == DOC_ChipID_DocMilPlus16) {
+			oldval = ReadDOC(doc->virtadr, Mplus_AliasResolution);
+			newval = ReadDOC(virtadr, Mplus_AliasResolution);
+		} else {
+			oldval = ReadDOC(doc->virtadr, AliasResolution);
+			newval = ReadDOC(virtadr, AliasResolution);
+		}
+		if (oldval != newval)
+			continue;
+		if (ChipID == DOC_ChipID_DocMilPlus16) {
+			WriteDOC(~newval, virtadr, Mplus_AliasResolution);
+			oldval = ReadDOC(doc->virtadr, Mplus_AliasResolution);
+			WriteDOC(newval, virtadr, Mplus_AliasResolution); /* restore it */
+		} else {
+			WriteDOC(~newval, virtadr, AliasResolution);
+			oldval = ReadDOC(doc->virtadr, AliasResolution);
+			WriteDOC(newval, virtadr, AliasResolution); /* restore it */
+		}
+		newval = ~newval;
+		if (oldval == newval) {
+			printk(KERN_DEBUG "Found alias of DOC at 0x%lx to 0x%lx\n", doc->physadr, physadr);
+			goto notfound;
+		}
+	}
+
+	printk(KERN_NOTICE "DiskOnChip found at 0x%lx\n", physadr);
+
+	len = sizeof(struct mtd_info) +
+	      sizeof(struct nand_chip) +
+	      sizeof(struct doc_priv) +
+	      (2 * sizeof(struct nand_bbt_descr));
+	mtd =  kmalloc(len, GFP_KERNEL);
+	if (!mtd) {
+		printk(KERN_ERR "DiskOnChip kmalloc (%d bytes) failed!\n", len);
+		ret = -ENOMEM;
+		goto fail;
+	}
+	memset(mtd, 0, len);
+
+	nand			= (struct nand_chip *) (mtd + 1);
+	doc			= (struct doc_priv *) (nand + 1);
+	nand->bbt_td		= (struct nand_bbt_descr *) (doc + 1);
+	nand->bbt_md		= nand->bbt_td + 1;
+
+	mtd->priv		= nand;
+	mtd->owner		= THIS_MODULE;
+
+	nand->priv		= doc;
+	nand->select_chip	= doc200x_select_chip;
+	nand->hwcontrol		= doc200x_hwcontrol;
+	nand->dev_ready		= doc200x_dev_ready;
+	nand->waitfunc		= doc200x_wait;
+	nand->block_bad		= doc200x_block_bad;
+	nand->enable_hwecc	= doc200x_enable_hwecc;
+	nand->calculate_ecc	= doc200x_calculate_ecc;
+	nand->correct_data	= doc200x_correct_data;
+
+	nand->autooob		= &doc200x_oobinfo;
+	nand->eccmode		= NAND_ECC_HW6_512;
+	nand->options		= NAND_USE_FLASH_BBT | NAND_HWECC_SYNDROME;
+
+	doc->physadr		= physadr;
+	doc->virtadr		= virtadr;
+	doc->ChipID		= ChipID;
+	doc->curfloor		= -1;
+	doc->curchip		= -1;
+	doc->mh0_page		= -1;
+	doc->mh1_page		= -1;
+	doc->nextdoc		= doclist;
+
+	if (ChipID == DOC_ChipID_Doc2k)
+		numchips = doc2000_init(mtd);
+	else if (ChipID == DOC_ChipID_DocMilPlus16)
+		numchips = doc2001plus_init(mtd);
+	else
+		numchips = doc2001_init(mtd);
+
+	if ((ret = nand_scan(mtd, numchips))) {
+		/* DBB note: i believe nand_release is necessary here, as
+		   buffers may have been allocated in nand_base.  Check with
+		   Thomas. FIX ME! */
+		/* nand_release will call del_mtd_device, but we haven't yet
+		   added it.  This is handled without incident by
+		   del_mtd_device, as far as I can tell. */
+		nand_release(mtd);
+		kfree(mtd);
+		goto fail;
+	}
+
+	/* Success! */
+	doclist = mtd;
+	return 0;
+
+notfound:
+	/* Put back the contents of the DOCControl register, in case it's not
+	   actually a DiskOnChip.  */
+	WriteDOC(save_control, virtadr, DOCControl);
+fail:
+	iounmap(virtadr);
+	return ret;
+}
+
+static void release_nanddoc(void)
+{
+ 	struct mtd_info *mtd, *nextmtd;
+	struct nand_chip *nand;
+	struct doc_priv *doc;
+
+	for (mtd = doclist; mtd; mtd = nextmtd) {
+		nand = mtd->priv;
+		doc = nand->priv;
+
+		nextmtd = doc->nextdoc;
+		nand_release(mtd);
+		iounmap(doc->virtadr);
+		kfree(mtd);
+	}
+}
+
+static int __init init_nanddoc(void)
+{
+	int i, ret = 0;
+
+	/* We could create the decoder on demand, if memory is a concern.
+	 * This way we have it handy, if an error happens
+	 *
+	 * Symbolsize is 10 (bits)
+	 * Primitve polynomial is x^10+x^3+1
+	 * first consecutive root is 510
+	 * primitve element to generate roots = 1
+	 * generator polinomial degree = 4
+	 */
+	rs_decoder = init_rs(10, 0x409, FCR, 1, NROOTS);
+ 	if (!rs_decoder) {
+		printk (KERN_ERR "DiskOnChip: Could not create a RS decoder\n");
+		return -ENOMEM;
+	}
+
+	if (doc_config_location) {
+		printk(KERN_INFO "Using configured DiskOnChip probe address 0x%lx\n", doc_config_location);
+		ret = doc_probe(doc_config_location);
+		if (ret < 0)
+			goto outerr;
+	} else {
+		for (i=0; (doc_locations[i] != 0xffffffff); i++) {
+			doc_probe(doc_locations[i]);
+		}
+	}
+	/* No banner message any more. Print a message if no DiskOnChip
+	   found, so the user knows we at least tried. */
+	if (!doclist) {
+		printk(KERN_INFO "No valid DiskOnChip devices found\n");
+		ret = -ENODEV;
+		goto outerr;
+	}
+	return 0;
+outerr:
+	free_rs(rs_decoder);
+	return ret;
+}
+
+static void __exit cleanup_nanddoc(void)
+{
+	/* Cleanup the nand/DoC resources */
+	release_nanddoc();
+
+	/* Free the reed solomon resources */
+	if (rs_decoder) {
+		free_rs(rs_decoder);
+	}
+}
+
+module_init(init_nanddoc);
+module_exit(cleanup_nanddoc);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("David Woodhouse <dwmw2@infradead.org>");
+MODULE_DESCRIPTION("M-Systems DiskOnChip 2000, Millennium and Millennium Plus device driver\n");
+#endif
diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
new file mode 100644
index 0000000..4927231
--- /dev/null
+++ b/drivers/mtd/nand/nand.c
@@ -0,0 +1,247 @@
+/*
+ * (C) Copyright 2005
+ * 2N Telekomunikace, a.s. <www.2n.cz>
+ * Ladislav Michl <michl@2n.cz>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
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
+ */
+#include <common.h>
+#include <linux/mtd/nand.h>
+#include <linux/mtd/mtd.h>
+#include <init.h>
+#include <xfuncs.h>
+#include <driver.h>
+#include <malloc.h>
+#include <ioctl.h>
+#include <nand.h>
+#include <errno.h>
+
+static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count, ulong offset, ulong flags)
+{
+	struct mtd_info *info = cdev->priv;
+	size_t retlen;
+	int ret;
+
+	debug("nand_read: 0x%08x 0x%08x\n", offset, count);
+
+	ret = info->read(info, offset, count, &retlen, buf);
+
+	if(ret) {
+		printf("err %d\n", ret);
+		return ret;
+	}
+	return retlen;
+}
+
+#define NOTALIGNED(x) (x & (info->writesize - 1)) != 0
+
+static int all_ff(const void *buf, int len)
+{
+	int i;
+	const uint8_t *p = buf;
+
+	for (i = 0; i < len; i++)
+		if (p[i] != 0xFF)
+			return 0;
+	return 1;
+}
+
+static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count, ulong offset, ulong flags)
+{
+	struct mtd_info *info = cdev->priv;
+	size_t retlen, now;
+	int ret = 0;
+	void *wrbuf = NULL;
+	size_t count = _count;
+
+	if (NOTALIGNED(offset)) {
+		printf("offset 0x%08x not page aligned\n", offset);
+		return -EINVAL;
+	}
+
+	debug("write: 0x%08x 0x%08x\n", offset, count);
+
+	while (count) {
+		now = count > info->writesize ? info->writesize : count;
+
+		if (NOTALIGNED(now)) {
+			debug("not aligned: %d %d\n", info->writesize, (offset % info->writesize));
+			wrbuf = xmalloc(info->writesize);
+			memset(wrbuf, 0xff, info->writesize);
+			memcpy(wrbuf + (offset % info->writesize), buf, now);
+			if (!all_ff(wrbuf, info->writesize))
+				ret = info->write(info, offset & ~(info->writesize - 1),
+						info->writesize, &retlen, wrbuf);
+			free(wrbuf);
+		} else {
+			if (!all_ff(buf, info->writesize))
+				ret = info->write(info, offset, now, &retlen, buf);
+			debug("offset: 0x%08x now: 0x%08x retlen: 0x%08x\n", offset, now, retlen);
+		}
+		if (ret)
+			goto out;
+
+		offset += now;
+		count -= now;
+		buf += now;
+	}
+
+out:
+	return ret ? ret : _count;
+}
+
+static int nand_ioctl(struct cdev *cdev, int request, void *buf)
+{
+	struct mtd_info *info = cdev->priv;
+	struct mtd_info_user *user = buf;
+
+	switch (request) {
+	case MEMGETBADBLOCK:
+		debug("MEMGETBADBLOCK: 0x%08x\n", (off_t)buf);
+		return info->block_isbad(info, (off_t)buf);
+	case MEMSETBADBLOCK:
+		debug("MEMSETBADBLOCK: 0x%08x\n", (off_t)buf);
+		return info->block_markbad(info, (off_t)buf);
+	case MEMGETINFO:
+		user->type	= info->type;
+		user->flags	= info->flags;
+		user->size	= info->size;
+		user->erasesize	= info->erasesize;
+		user->oobsize	= info->oobsize;
+		/* The below fields are obsolete */
+		user->ecctype	= -1;
+		user->eccsize	= 0;
+		return 0;
+	}
+
+	return 0;
+}
+
+static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	struct mtd_info *info = cdev->priv;
+	struct erase_info erase;
+	int ret;
+
+	memset(&erase, 0, sizeof(erase));
+	erase.mtd = info;
+	erase.addr = offset;
+	erase.len = info->erasesize;
+
+	while (count > 0) {
+		debug("erase %d %d\n", erase.addr, erase.len);
+
+		ret = info->block_isbad(info, erase.addr);
+		if (ret > 0) {
+			printf("Skipping bad block at 0x%08x\n", erase.addr);
+		} else {
+			ret = info->erase(info, &erase);
+			if (ret)
+				return ret;
+		}
+
+		erase.addr += info->erasesize;
+		count -= count > info->erasesize ? info->erasesize : count;
+	}
+
+	return 0;
+}
+#if 0
+static char* mtd_get_size(struct device_d *, struct param_d *param)
+{
+	static char 
+}
+#endif
+
+static struct file_operations nand_ops = {
+	.read   = nand_read,
+	.write  = nand_write,
+	.ioctl  = nand_ioctl,
+	.lseek  = dev_lseek_default,
+	.erase  = nand_erase,
+};
+
+static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+{
+	struct mtd_info *info = cdev->priv;
+	struct nand_chip *chip = info->priv;
+	struct mtd_oob_ops ops;
+	int ret;
+
+	if (count < info->oobsize)
+		return -EINVAL;
+
+	ops.mode = MTD_OOB_RAW;
+	ops.ooboffs = 0;
+	ops.ooblen = info->oobsize;
+	ops.oobbuf = buf;
+	ops.datbuf = NULL;
+	ops.len = info->oobsize;
+
+	offset /= info->oobsize;
+	ret = info->read_oob(info, offset << chip->page_shift, &ops);
+	if (ret)
+		return ret;
+
+	return info->oobsize;
+}
+
+static struct file_operations nand_ops_oob = {
+	.read   = nand_read_oob,
+	.ioctl  = nand_ioctl,
+	.lseek  = dev_lseek_default,
+};
+
+int add_mtd_device(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	char str[16];
+
+	strcpy(mtd->class_dev.name, "nand");
+	register_device(&mtd->class_dev);
+
+	mtd->cdev.ops = &nand_ops;
+	mtd->cdev.size = mtd->size;
+	mtd->cdev.name = asprintf("nand%d", mtd->class_dev.id);
+	mtd->cdev.priv = mtd;
+	mtd->cdev.dev = &mtd->class_dev;
+
+	sprintf(str, "%u", mtd->size);
+	dev_add_param_fixed(&mtd->class_dev, "size", str);
+
+	devfs_create(&mtd->cdev);
+
+	mtd->cdev_oob.ops = &nand_ops_oob;
+	mtd->cdev_oob.size = (mtd->size >> chip->page_shift) * mtd->oobsize;
+	mtd->cdev_oob.name = asprintf("nand_oob%d", mtd->class_dev.id);
+	mtd->cdev_oob.priv = mtd;
+	mtd->cdev_oob.dev = &mtd->class_dev;
+	devfs_create(&mtd->cdev_oob);
+
+	return 0;
+}
+
+int del_mtd_device (struct mtd_info *mtd)
+{
+	unregister_device(&mtd->class_dev);
+	free(mtd->cdev_oob.name);
+	free(mtd->param_size.value);
+	free(mtd->cdev.name);
+	return 0;
+}
+
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
new file mode 100644
index 0000000..b75a450
--- /dev/null
+++ b/drivers/mtd/nand/nand_base.c
@@ -0,0 +1,2648 @@
+/*
+ *  drivers/mtd/nand.c
+ *
+ *  Overview:
+ *   This is the generic MTD driver for NAND flash devices. It should be
+ *   capable of working with almost all NAND chips currently available.
+ *   Basic support for AG-AND chips is provided.
+ *
+ *	Additional technical information is available on
+ *	http://www.linux-mtd.infradead.org/doc/nand.html
+ *
+ *  Copyright (C) 2000 Steven J. Hill (sjhill@realitydiluted.com)
+ *		  2002-2006 Thomas Gleixner (tglx@linutronix.de)
+ *
+ *  Credits:
+ *	David Woodhouse for adding multichip support
+ *
+ *	Aleph One Ltd. and Toby Churchill Ltd. for supporting the
+ *	rework for 2K page size chips
+ *
+ *  TODO:
+ *	Enable cached programming for 2k page size chips
+ *	Check, if mtd->ecctype should be set to MTD_ECC_HW
+ *	if we have HW ecc support.
+ *	The AG-AND chips have nice features for speed improvement,
+ *	which are not supported yet. Read / program 4 pages in one go.
+ *	BBT table is not serialized, has to be fixed
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <common.h>
+#include <errno.h>
+#include <clock.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <linux/err.h>
+#include <linux/mtd/nand_ecc.h>
+#include <asm/byteorder.h>
+#include <asm/io.h>
+#include <malloc.h>
+#include <module.h>
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+/* Define default oob placement schemes for large and small page devices */
+static struct nand_ecclayout nand_oob_8 = {
+	.eccbytes = 3,
+	.eccpos = {0, 1, 2},
+	.oobfree = {
+		{.offset = 3,
+		 .length = 2},
+		{.offset = 6,
+		 .length = 2}}
+};
+
+static struct nand_ecclayout nand_oob_16 = {
+	.eccbytes = 6,
+	.eccpos = {0, 1, 2, 3, 6, 7},
+	.oobfree = {
+		{.offset = 8,
+		 . length = 8}}
+};
+
+static struct nand_ecclayout nand_oob_64 = {
+	.eccbytes = 24,
+	.eccpos = {
+		   40, 41, 42, 43, 44, 45, 46, 47,
+		   48, 49, 50, 51, 52, 53, 54, 55,
+		   56, 57, 58, 59, 60, 61, 62, 63},
+	.oobfree = {
+		{.offset = 2,
+		 .length = 38}}
+};
+
+static int nand_get_device(struct nand_chip *chip, struct mtd_info *mtd,
+			   int new_state);
+
+static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
+			     struct mtd_oob_ops *ops);
+
+#define DEFINE_LED_TRIGGER(x)
+#define DEFINE_LED_TRIGGER_GLOBAL(x)
+#define led_trigger_register_simple(x, y) do {} while(0)
+#define led_trigger_unregister_simple(x) do {} while(0)
+#define led_trigger_event(x, y) do {} while(0)
+
+/*
+ * For devices which display every fart in the system on a separate LED. Is
+ * compiled away when LED support is disabled.
+ */
+DEFINE_LED_TRIGGER(nand_led_trigger);
+
+/**
+ * nand_release_device - [GENERIC] release chip
+ * @mtd:	MTD device structure
+ *
+ * Deselect, release chip lock and wake up anyone waiting on the device
+ */
+static void nand_release_device(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	/* De-select the NAND device */
+	chip->select_chip(mtd, -1);
+
+	/* Release the controller and the chip */
+	chip->controller->active = NULL;
+	chip->state = FL_READY;
+}
+
+/**
+ * nand_read_byte - [DEFAULT] read one byte from the chip
+ * @mtd:	MTD device structure
+ *
+ * Default read function for 8bit buswith
+ */
+static uint8_t nand_read_byte(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	return readb(chip->IO_ADDR_R);
+}
+
+/**
+ * nand_read_byte16 - [DEFAULT] read one byte endianess aware from the chip
+ * @mtd:	MTD device structure
+ *
+ * Default read function for 16bit buswith with
+ * endianess conversion
+ */
+static uint8_t nand_read_byte16(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	return (uint8_t) cpu_to_le16(readw(chip->IO_ADDR_R));
+}
+
+/**
+ * nand_read_word - [DEFAULT] read one word from the chip
+ * @mtd:	MTD device structure
+ *
+ * Default read function for 16bit buswith without
+ * endianess conversion
+ */
+static u16 nand_read_word(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	return readw(chip->IO_ADDR_R);
+}
+
+/**
+ * nand_select_chip - [DEFAULT] control CE line
+ * @mtd:	MTD device structure
+ * @chipnr:	chipnumber to select, -1 for deselect
+ *
+ * Default select function for 1 chip devices.
+ */
+static void nand_select_chip(struct mtd_info *mtd, int chipnr)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	switch (chipnr) {
+	case -1:
+		chip->cmd_ctrl(mtd, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
+		break;
+	case 0:
+		break;
+	default:
+		printf("%s: illegal chip number %d\n", chipnr);
+	}
+}
+
+/**
+ * nand_write_buf - [DEFAULT] write buffer to chip
+ * @mtd:	MTD device structure
+ * @buf:	data buffer
+ * @len:	number of bytes to write
+ *
+ * Default write function for 8bit buswith
+ */
+static void nand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
+{
+	int i;
+	struct nand_chip *chip = mtd->priv;
+
+	for (i = 0; i < len; i++)
+		writeb(buf[i], chip->IO_ADDR_W);
+}
+
+/**
+ * nand_read_buf - [DEFAULT] read chip data into buffer
+ * @mtd:	MTD device structure
+ * @buf:	buffer to store date
+ * @len:	number of bytes to read
+ *
+ * Default read function for 8bit buswith
+ */
+static void nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
+{
+	int i;
+	struct nand_chip *chip = mtd->priv;
+
+	for (i = 0; i < len; i++)
+		buf[i] = readb(chip->IO_ADDR_R);
+}
+
+/**
+ * nand_verify_buf - [DEFAULT] Verify chip data against buffer
+ * @mtd:	MTD device structure
+ * @buf:	buffer containing the data to compare
+ * @len:	number of bytes to compare
+ *
+ * Default verify function for 8bit buswith
+ */
+static int nand_verify_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
+{
+	int i;
+	struct nand_chip *chip = mtd->priv;
+
+	for (i = 0; i < len; i++)
+		if (buf[i] != readb(chip->IO_ADDR_R))
+			return -EFAULT;
+	return 0;
+}
+
+/**
+ * nand_write_buf16 - [DEFAULT] write buffer to chip
+ * @mtd:	MTD device structure
+ * @buf:	data buffer
+ * @len:	number of bytes to write
+ *
+ * Default write function for 16bit buswith
+ */
+static void nand_write_buf16(struct mtd_info *mtd, const uint8_t *buf, int len)
+{
+	int i;
+	struct nand_chip *chip = mtd->priv;
+	u16 *p = (u16 *) buf;
+	len >>= 1;
+
+	for (i = 0; i < len; i++)
+		writew(p[i], chip->IO_ADDR_W);
+
+}
+
+/**
+ * nand_read_buf16 - [DEFAULT] read chip data into buffer
+ * @mtd:	MTD device structure
+ * @buf:	buffer to store date
+ * @len:	number of bytes to read
+ *
+ * Default read function for 16bit buswith
+ */
+static void nand_read_buf16(struct mtd_info *mtd, uint8_t *buf, int len)
+{
+	int i;
+	struct nand_chip *chip = mtd->priv;
+	u16 *p = (u16 *) buf;
+	len >>= 1;
+
+	for (i = 0; i < len; i++)
+		p[i] = readw(chip->IO_ADDR_R);
+}
+
+/**
+ * nand_verify_buf16 - [DEFAULT] Verify chip data against buffer
+ * @mtd:	MTD device structure
+ * @buf:	buffer containing the data to compare
+ * @len:	number of bytes to compare
+ *
+ * Default verify function for 16bit buswith
+ */
+static int nand_verify_buf16(struct mtd_info *mtd, const uint8_t *buf, int len)
+{
+	int i;
+	struct nand_chip *chip = mtd->priv;
+	u16 *p = (u16 *) buf;
+	len >>= 1;
+
+	for (i = 0; i < len; i++)
+		if (p[i] != readw(chip->IO_ADDR_R))
+			return -EFAULT;
+
+	return 0;
+}
+
+/**
+ * nand_block_bad - [DEFAULT] Read bad block marker from the chip
+ * @mtd:	MTD device structure
+ * @ofs:	offset from device start
+ * @getchip:	0, if the chip is already selected
+ *
+ * Check, if the block is bad.
+ */
+static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
+{
+	int page, chipnr, res = 0;
+	struct nand_chip *chip = mtd->priv;
+	u16 bad;
+
+	page = (int)(ofs >> chip->page_shift) & chip->pagemask;
+
+	if (getchip) {
+		chipnr = (int)(ofs >> chip->chip_shift);
+
+		nand_get_device(chip, mtd, FL_READING);
+
+		/* Select the NAND device */
+		chip->select_chip(mtd, chipnr);
+	}
+
+	if (chip->options & NAND_BUSWIDTH_16) {
+		chip->cmdfunc(mtd, NAND_CMD_READOOB, chip->badblockpos & 0xFE,
+			      page);
+		bad = cpu_to_le16(chip->read_word(mtd));
+		if (chip->badblockpos & 0x1)
+			bad >>= 8;
+		if ((bad & 0xFF) != 0xff)
+			res = 1;
+	} else {
+		chip->cmdfunc(mtd, NAND_CMD_READOOB, chip->badblockpos, page);
+		if (chip->read_byte(mtd) != 0xff)
+			res = 1;
+	}
+
+	if (getchip)
+		nand_release_device(mtd);
+
+	return res;
+}
+
+/**
+ * nand_default_block_markbad - [DEFAULT] mark a block bad
+ * @mtd:	MTD device structure
+ * @ofs:	offset from device start
+ *
+ * This is the default implementation, which can be overridden by
+ * a hardware specific driver.
+*/
+static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
+{
+	struct nand_chip *chip = mtd->priv;
+	uint8_t buf[2] = { 0, 0 };
+	int block, ret;
+
+	/* Get block number */
+	block = (int)(ofs >> chip->bbt_erase_shift);
+	if (chip->bbt)
+		chip->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);
+
+	/* Do we have a flash based bad block table ? */
+	if (chip->options & NAND_USE_FLASH_BBT)
+		ret = nand_update_bbt(mtd, ofs);
+	else {
+		/* We write two bytes, so we dont have to mess with 16 bit
+		 * access
+		 */
+		nand_get_device(chip, mtd, FL_WRITING);
+		ofs += mtd->oobsize;
+		chip->ops.len = chip->ops.ooblen = 2;
+		chip->ops.datbuf = NULL;
+		chip->ops.oobbuf = buf;
+		chip->ops.ooboffs = chip->badblockpos & ~0x01;
+
+		ret = nand_do_write_oob(mtd, ofs, &chip->ops);
+		nand_release_device(mtd);
+	}
+	if (!ret)
+		mtd->ecc_stats.badblocks++;
+
+	return ret;
+}
+
+/**
+ * nand_check_wp - [GENERIC] check if the chip is write protected
+ * @mtd:	MTD device structure
+ * Check, if the device is write protected
+ *
+ * The function expects, that the device is already selected
+ */
+static int nand_check_wp(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	/* Check the WP bit */
+	chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
+	return (chip->read_byte(mtd) & NAND_STATUS_WP) ? 0 : 1;
+}
+
+/**
+ * nand_block_checkbad - [GENERIC] Check if a block is marked bad
+ * @mtd:	MTD device structure
+ * @ofs:	offset from device start
+ * @getchip:	0, if the chip is already selected
+ * @allowbbt:	1, if its allowed to access the bbt area
+ *
+ * Check, if the block is bad. Either by reading the bad block table or
+ * calling of the scan function.
+ */
+static int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
+			       int allowbbt)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	if (!chip->bbt)
+		return chip->block_bad(mtd, ofs, getchip);
+
+	/* Return info from the table */
+	return nand_isbad_bbt(mtd, ofs, allowbbt);
+}
+
+/*
+ * Wait for the ready pin, after a command
+ * The timeout is catched later.
+ */
+void nand_wait_ready(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+	uint64_t start = get_time_ns();
+
+	led_trigger_event(nand_led_trigger, LED_FULL);
+	/* wait until command is processed or timeout occures */
+	do {
+		if (chip->dev_ready(mtd))
+			break;
+	} while (!is_timeout(start, SECOND * 2));
+	led_trigger_event(nand_led_trigger, LED_OFF);
+}
+EXPORT_SYMBOL(nand_wait_ready);
+
+/**
+ * nand_command - [DEFAULT] Send command to NAND device
+ * @mtd:	MTD device structure
+ * @command:	the command to be sent
+ * @column:	the column address for this command, -1 if none
+ * @page_addr:	the page address for this command, -1 if none
+ *
+ * Send command to NAND device. This function is used for small page
+ * devices (256/512 Bytes per page)
+ */
+static void nand_command(struct mtd_info *mtd, unsigned int command,
+			 int column, int page_addr)
+{
+	register struct nand_chip *chip = mtd->priv;
+	int ctrl = NAND_CTRL_CLE | NAND_CTRL_CHANGE;
+
+	/*
+	 * Write out the command to the device.
+	 */
+	if (command == NAND_CMD_SEQIN) {
+		int readcmd;
+
+		if (column >= mtd->writesize) {
+			/* OOB area */
+			column -= mtd->writesize;
+			readcmd = NAND_CMD_READOOB;
+		} else if (column < 256) {
+			/* First 256 bytes --> READ0 */
+			readcmd = NAND_CMD_READ0;
+		} else {
+			column -= 256;
+			readcmd = NAND_CMD_READ1;
+		}
+		chip->cmd_ctrl(mtd, readcmd, ctrl);
+		ctrl &= ~NAND_CTRL_CHANGE;
+	}
+	chip->cmd_ctrl(mtd, command, ctrl);
+
+	/*
+	 * Address cycle, when necessary
+	 */
+	ctrl = NAND_CTRL_ALE | NAND_CTRL_CHANGE;
+	/* Serially input address */
+	if (column != -1) {
+		/* Adjust columns for 16 bit buswidth */
+		if (chip->options & NAND_BUSWIDTH_16)
+			column >>= 1;
+		chip->cmd_ctrl(mtd, column, ctrl);
+		ctrl &= ~NAND_CTRL_CHANGE;
+	}
+	if (page_addr != -1) {
+		chip->cmd_ctrl(mtd, page_addr, ctrl);
+		ctrl &= ~NAND_CTRL_CHANGE;
+		chip->cmd_ctrl(mtd, page_addr >> 8, ctrl);
+		/* One more address cycle for devices > 32MiB */
+		if (chip->chipsize > (32 << 20))
+			chip->cmd_ctrl(mtd, page_addr >> 16, ctrl);
+	}
+	chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
+
+	/*
+	 * program and erase have their own busy handlers
+	 * status and sequential in needs no delay
+	 */
+	switch (command) {
+
+	case NAND_CMD_PAGEPROG:
+	case NAND_CMD_ERASE1:
+	case NAND_CMD_ERASE2:
+	case NAND_CMD_SEQIN:
+	case NAND_CMD_STATUS:
+		return;
+
+	case NAND_CMD_RESET:
+		if (chip->dev_ready)
+			break;
+		udelay(chip->chip_delay);
+		chip->cmd_ctrl(mtd, NAND_CMD_STATUS,
+			       NAND_CTRL_CLE | NAND_CTRL_CHANGE);
+		chip->cmd_ctrl(mtd,
+			       NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
+		while (!(chip->read_byte(mtd) & NAND_STATUS_READY)) ;
+		return;
+
+		/* This applies to read commands */
+	default:
+		/*
+		 * If we don't have access to the busy pin, we apply the given
+		 * command delay
+		 */
+		if (!chip->dev_ready) {
+			udelay(chip->chip_delay);
+			return;
+		}
+	}
+	/* Apply this short delay always to ensure that we do wait tWB in
+	 * any case on any machine. */
+	ndelay(100);
+
+	nand_wait_ready(mtd);
+}
+
+/**
+ * nand_command_lp - [DEFAULT] Send command to NAND large page device
+ * @mtd:	MTD device structure
+ * @command:	the command to be sent
+ * @column:	the column address for this command, -1 if none
+ * @page_addr:	the page address for this command, -1 if none
+ *
+ * Send command to NAND device. This is the version for the new large page
+ * devices We dont have the separate regions as we have in the small page
+ * devices.  We must emulate NAND_CMD_READOOB to keep the code compatible.
+ */
+static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
+			    int column, int page_addr)
+{
+	register struct nand_chip *chip = mtd->priv;
+
+	/* Emulate NAND_CMD_READOOB */
+	if (command == NAND_CMD_READOOB) {
+		column += mtd->writesize;
+		command = NAND_CMD_READ0;
+	}
+
+	/* Command latch cycle */
+	chip->cmd_ctrl(mtd, command & 0xff,
+		       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
+
+	if (column != -1 || page_addr != -1) {
+		int ctrl = NAND_CTRL_CHANGE | NAND_NCE | NAND_ALE;
+
+		/* Serially input address */
+		if (column != -1) {
+			/* Adjust columns for 16 bit buswidth */
+			if (chip->options & NAND_BUSWIDTH_16)
+				column >>= 1;
+			chip->cmd_ctrl(mtd, column, ctrl);
+			ctrl &= ~NAND_CTRL_CHANGE;
+			chip->cmd_ctrl(mtd, column >> 8, ctrl);
+		}
+		if (page_addr != -1) {
+			chip->cmd_ctrl(mtd, page_addr, ctrl);
+			chip->cmd_ctrl(mtd, page_addr >> 8,
+				       NAND_NCE | NAND_ALE);
+			/* One more address cycle for devices > 128MiB */
+			if (chip->chipsize > (128 << 20))
+				chip->cmd_ctrl(mtd, page_addr >> 16,
+					       NAND_NCE | NAND_ALE);
+		}
+	}
+	chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
+
+	/*
+	 * program and erase have their own busy handlers
+	 * status, sequential in, and deplete1 need no delay
+	 */
+	switch (command) {
+
+	case NAND_CMD_CACHEDPROG:
+	case NAND_CMD_PAGEPROG:
+	case NAND_CMD_ERASE1:
+	case NAND_CMD_ERASE2:
+	case NAND_CMD_SEQIN:
+	case NAND_CMD_RNDIN:
+	case NAND_CMD_STATUS:
+	case NAND_CMD_DEPLETE1:
+		return;
+
+		/*
+		 * read error status commands require only a short delay
+		 */
+	case NAND_CMD_STATUS_ERROR:
+	case NAND_CMD_STATUS_ERROR0:
+	case NAND_CMD_STATUS_ERROR1:
+	case NAND_CMD_STATUS_ERROR2:
+	case NAND_CMD_STATUS_ERROR3:
+		udelay(chip->chip_delay);
+		return;
+
+	case NAND_CMD_RESET:
+		if (chip->dev_ready)
+			break;
+		udelay(chip->chip_delay);
+		chip->cmd_ctrl(mtd, NAND_CMD_STATUS,
+			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
+		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
+			       NAND_NCE | NAND_CTRL_CHANGE);
+		while (!(chip->read_byte(mtd) & NAND_STATUS_READY)) ;
+		return;
+
+	case NAND_CMD_RNDOUT:
+		/* No ready / busy check necessary */
+		chip->cmd_ctrl(mtd, NAND_CMD_RNDOUTSTART,
+			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
+		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
+			       NAND_NCE | NAND_CTRL_CHANGE);
+		return;
+
+	case NAND_CMD_READ0:
+		chip->cmd_ctrl(mtd, NAND_CMD_READSTART,
+			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
+		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
+			       NAND_NCE | NAND_CTRL_CHANGE);
+
+		/* This applies to read commands */
+	default:
+		/*
+		 * If we don't have access to the busy pin, we apply the given
+		 * command delay
+		 */
+		if (!chip->dev_ready) {
+			udelay(chip->chip_delay);
+			return;
+		}
+	}
+
+	/* Apply this short delay always to ensure that we do wait tWB in
+	 * any case on any machine. */
+	ndelay(100);
+
+	nand_wait_ready(mtd);
+}
+
+/**
+ * nand_get_device - [GENERIC] Get chip for selected access
+ * @chip:	the nand chip descriptor
+ * @mtd:	MTD device structure
+ * @new_state:	the state which is requested
+ *
+ * Get the device and lock it for exclusive access
+ */
+static int
+nand_get_device(struct nand_chip *chip, struct mtd_info *mtd, int new_state)
+{
+ retry:
+	/* Hardware controller shared among independend devices */
+	if (!chip->controller->active)
+		chip->controller->active = chip;
+
+	if (chip->controller->active == chip && chip->state == FL_READY) {
+		chip->state = new_state;
+		return 0;
+	}
+	if (new_state == FL_PM_SUSPENDED) {
+		return (chip->state == FL_PM_SUSPENDED) ? 0 : -EAGAIN;
+	}
+	goto retry;
+}
+
+/**
+ * nand_wait - [DEFAULT]  wait until the command is done
+ * @mtd:	MTD device structure
+ * @chip:	NAND chip structure
+ *
+ * Wait for command done. This applies to erase and program only
+ * Erase can take up to 400ms and program up to 20ms according to
+ * general NAND and SmartMedia specs
+ */
+static int nand_wait(struct mtd_info *mtd, struct nand_chip *chip)
+{
+
+	uint64_t start = get_time_ns();
+	uint64_t timeo;
+	int status, state = chip->state;
+
+	if (state == FL_ERASING)
+		timeo = 400 * MSECOND;
+	else
+		timeo = 20 * MSECOND;
+
+	led_trigger_event(nand_led_trigger, LED_FULL);
+
+	/* Apply this short delay always to ensure that we do wait tWB in
+	 * any case on any machine. */
+	ndelay(100);
+
+	if ((state == FL_ERASING) && (chip->options & NAND_IS_AND))
+		chip->cmdfunc(mtd, NAND_CMD_STATUS_MULTI, -1, -1);
+	else
+		chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
+
+	while (!is_timeout(start, timeo)) {
+		if (chip->dev_ready) {
+			if (chip->dev_ready(mtd))
+				break;
+		} else {
+			if (chip->read_byte(mtd) & NAND_STATUS_READY)
+				break;
+		}
+	}
+	led_trigger_event(nand_led_trigger, LED_OFF);
+
+	status = (int)chip->read_byte(mtd);
+	return status;
+}
+
+/**
+ * nand_read_page_raw - [Intern] read raw page data without ecc
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	buffer to store read data
+ */
+static int nand_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
+			      uint8_t *buf)
+{
+	chip->read_buf(mtd, buf, mtd->writesize);
+	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+	return 0;
+}
+
+/**
+ * nand_read_page_swecc - [REPLACABLE] software ecc based page read function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	buffer to store read data
+ */
+static int nand_read_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
+				uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	uint8_t *ecc_code = chip->buffers->ecccode;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	chip->ecc.read_page_raw(mtd, chip, buf);
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		ecc_code[i] = chip->oob_poi[eccpos[i]];
+
+	eccsteps = chip->ecc.steps;
+	p = buf;
+
+	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		int stat;
+
+		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
+		if (stat < 0)
+			mtd->ecc_stats.failed++;
+		else
+			mtd->ecc_stats.corrected += stat;
+	}
+	return 0;
+}
+
+/**
+ * nand_read_page_hwecc - [REPLACABLE] hardware ecc based page read function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	buffer to store read data
+ *
+ * Not for syndrome calculating ecc controllers which need a special oob layout
+ */
+static int nand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
+				uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	uint8_t *ecc_code = chip->buffers->ecccode;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		chip->ecc.hwctl(mtd, NAND_ECC_READ);
+		chip->read_buf(mtd, p, eccsize);
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+	}
+	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		ecc_code[i] = chip->oob_poi[eccpos[i]];
+
+	eccsteps = chip->ecc.steps;
+	p = buf;
+
+	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		int stat;
+
+		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
+		if (stat < 0)
+			mtd->ecc_stats.failed++;
+		else
+			mtd->ecc_stats.corrected += stat;
+	}
+	return 0;
+}
+
+/**
+ * nand_read_page_syndrome - [REPLACABLE] hardware ecc syndrom based page read
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	buffer to store read data
+ *
+ * The hw generator calculates the error syndrome automatically. Therefor
+ * we need a special oob layout and handling.
+ */
+static int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
+				   uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *p = buf;
+	uint8_t *oob = chip->oob_poi;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		int stat;
+
+		chip->ecc.hwctl(mtd, NAND_ECC_READ);
+		chip->read_buf(mtd, p, eccsize);
+
+		if (chip->ecc.prepad) {
+			chip->read_buf(mtd, oob, chip->ecc.prepad);
+			oob += chip->ecc.prepad;
+		}
+
+		chip->ecc.hwctl(mtd, NAND_ECC_READSYN);
+		chip->read_buf(mtd, oob, eccbytes);
+		stat = chip->ecc.correct(mtd, p, oob, NULL);
+
+		if (stat < 0)
+			mtd->ecc_stats.failed++;
+		else
+			mtd->ecc_stats.corrected += stat;
+
+		oob += eccbytes;
+
+		if (chip->ecc.postpad) {
+			chip->read_buf(mtd, oob, chip->ecc.postpad);
+			oob += chip->ecc.postpad;
+		}
+	}
+
+	/* Calculate remaining oob bytes */
+	i = mtd->oobsize - (oob - chip->oob_poi);
+	if (i)
+		chip->read_buf(mtd, oob, i);
+
+	return 0;
+}
+
+/**
+ * nand_transfer_oob - [Internal] Transfer oob to client buffer
+ * @chip:	nand chip structure
+ * @oob:	oob destination address
+ * @ops:	oob ops structure
+ * @len:	size of oob to transfer
+ */
+static uint8_t *nand_transfer_oob(struct nand_chip *chip, uint8_t *oob,
+				  struct mtd_oob_ops *ops, size_t len)
+{
+	switch(ops->mode) {
+
+	case MTD_OOB_PLACE:
+	case MTD_OOB_RAW:
+		memcpy(oob, chip->oob_poi + ops->ooboffs, len);
+		return oob + len;
+
+	case MTD_OOB_AUTO: {
+		struct nand_oobfree *free = chip->ecc.layout->oobfree;
+		uint32_t boffs = 0, roffs = ops->ooboffs;
+		size_t bytes = 0;
+
+		for(; free->length && len; free++, len -= bytes) {
+			/* Read request not from offset 0 ? */
+			if (unlikely(roffs)) {
+				if (roffs >= free->length) {
+					roffs -= free->length;
+					continue;
+				}
+				boffs = free->offset + roffs;
+				bytes = min_t(size_t, len,
+					      (free->length - roffs));
+				roffs = 0;
+			} else {
+				bytes = min_t(size_t, len, free->length);
+				boffs = free->offset;
+			}
+			memcpy(oob, chip->oob_poi + boffs, bytes);
+			oob += bytes;
+		}
+		return oob;
+	}
+	default:
+		BUG();
+	}
+	return NULL;
+}
+
+/**
+ * nand_do_read_ops - [Internal] Read data with ECC
+ *
+ * @mtd:	MTD device structure
+ * @from:	offset to read from
+ * @ops:	oob ops structure
+ *
+ * Internal function. Called with chip held.
+ */
+static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
+			    struct mtd_oob_ops *ops)
+{
+	int chipnr, page, realpage, col, bytes, aligned;
+	struct nand_chip *chip = mtd->priv;
+	struct mtd_ecc_stats stats;
+	int blkcheck = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
+	int sndcmd = 1;
+	int ret = 0;
+	uint32_t readlen = ops->len;
+	uint32_t oobreadlen = ops->ooblen;
+	uint8_t *bufpoi, *oob, *buf;
+
+	stats = mtd->ecc_stats;
+
+	chipnr = (int)(from >> chip->chip_shift);
+	chip->select_chip(mtd, chipnr);
+
+	realpage = (int)(from >> chip->page_shift);
+	page = realpage & chip->pagemask;
+
+	col = (int)(from & (mtd->writesize - 1));
+
+	buf = ops->datbuf;
+	oob = ops->oobbuf;
+
+	while(1) {
+		bytes = min(mtd->writesize - col, readlen);
+		aligned = (bytes == mtd->writesize);
+
+		/* Is the current page in the buffer ? */
+		if (realpage != chip->pagebuf || oob) {
+			bufpoi = aligned ? buf : chip->buffers->databuf;
+
+			if (likely(sndcmd)) {
+				chip->cmdfunc(mtd, NAND_CMD_READ0, 0x00, page);
+				sndcmd = 0;
+			}
+
+			/* Now read the page into the buffer */
+			if (unlikely(ops->mode == MTD_OOB_RAW))
+				ret = chip->ecc.read_page_raw(mtd, chip, bufpoi);
+			else
+				ret = chip->ecc.read_page(mtd, chip, bufpoi);
+			if (ret < 0)
+				break;
+
+			/* Transfer not aligned data */
+			if (!aligned) {
+				chip->pagebuf = realpage;
+				memcpy(buf, chip->buffers->databuf + col, bytes);
+			}
+
+			buf += bytes;
+
+			if (unlikely(oob)) {
+				/* Raw mode does data:oob:data:oob */
+				if (ops->mode != MTD_OOB_RAW) {
+					int toread = min(oobreadlen,
+						chip->ecc.layout->oobavail);
+					if (toread) {
+						oob = nand_transfer_oob(chip,
+							oob, ops, toread);
+						oobreadlen -= toread;
+					}
+				} else
+					buf = nand_transfer_oob(chip,
+						buf, ops, mtd->oobsize);
+			}
+
+			if (!(chip->options & NAND_NO_READRDY)) {
+				/*
+				 * Apply delay or wait for ready/busy pin. Do
+				 * this before the AUTOINCR check, so no
+				 * problems arise if a chip which does auto
+				 * increment is marked as NOAUTOINCR by the
+				 * board driver.
+				 */
+				if (!chip->dev_ready)
+					udelay(chip->chip_delay);
+				else
+					nand_wait_ready(mtd);
+			}
+		} else {
+			memcpy(buf, chip->buffers->databuf + col, bytes);
+			buf += bytes;
+		}
+
+		readlen -= bytes;
+
+		if (!readlen)
+			break;
+
+		/* For subsequent reads align to page boundary. */
+		col = 0;
+		/* Increment page address */
+		realpage++;
+
+		page = realpage & chip->pagemask;
+		/* Check, if we cross a chip boundary */
+		if (!page) {
+			chipnr++;
+			chip->select_chip(mtd, -1);
+			chip->select_chip(mtd, chipnr);
+		}
+
+		/* Check, if the chip supports auto page increment
+		 * or if we have hit a block boundary.
+		 */
+		if (!NAND_CANAUTOINCR(chip) || !(page & blkcheck))
+			sndcmd = 1;
+	}
+
+	ops->retlen = ops->len - (size_t) readlen;
+	if (oob)
+		ops->oobretlen = ops->ooblen - oobreadlen;
+
+	if (ret)
+		return ret;
+
+	if (mtd->ecc_stats.failed - stats.failed)
+		return -EBADMSG;
+
+	return 0;
+}
+
+/**
+ * nand_read - [MTD Interface] MTD compability function for nand_do_read_ecc
+ * @mtd:	MTD device structure
+ * @from:	offset to read from
+ * @len:	number of bytes to read
+ * @retlen:	pointer to variable to store the number of read bytes
+ * @buf:	the databuffer to put data
+ *
+ * Get hold of the chip and call nand_do_read
+ */
+static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
+		     size_t *retlen, uint8_t *buf)
+{
+	struct nand_chip *chip = mtd->priv;
+	int ret;
+
+	/* Do not allow reads past end of device */
+	if ((from + len) > mtd->size)
+		return -EINVAL;
+	if (!len)
+		return 0;
+
+	nand_get_device(chip, mtd, FL_READING);
+
+	chip->ops.len = len;
+	chip->ops.datbuf = buf;
+	chip->ops.oobbuf = NULL;
+
+	ret = nand_do_read_ops(mtd, from, &chip->ops);
+
+	*retlen = chip->ops.retlen;
+
+	nand_release_device(mtd);
+
+	return ret;
+}
+
+/**
+ * nand_read_oob_std - [REPLACABLE] the most common OOB data read function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @page:	page number to read
+ * @sndcmd:	flag whether to issue read command or not
+ */
+static int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
+			     int page, int sndcmd)
+{
+	if (sndcmd) {
+		chip->cmdfunc(mtd, NAND_CMD_READOOB, 0, page);
+		sndcmd = 0;
+	}
+	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
+	return sndcmd;
+}
+
+/**
+ * nand_read_oob_syndrome - [REPLACABLE] OOB data read function for HW ECC
+ *			    with syndromes
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @page:	page number to read
+ * @sndcmd:	flag whether to issue read command or not
+ */
+static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
+				  int page, int sndcmd)
+{
+	uint8_t *buf = chip->oob_poi;
+	int length = mtd->oobsize;
+	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
+	int eccsize = chip->ecc.size;
+	uint8_t *bufpoi = buf;
+	int i, toread, sndrnd = 0, pos;
+
+	chip->cmdfunc(mtd, NAND_CMD_READ0, chip->ecc.size, page);
+	for (i = 0; i < chip->ecc.steps; i++) {
+		if (sndrnd) {
+			pos = eccsize + i * (eccsize + chunk);
+			if (mtd->writesize > 512)
+				chip->cmdfunc(mtd, NAND_CMD_RNDOUT, pos, -1);
+			else
+				chip->cmdfunc(mtd, NAND_CMD_READ0, pos, page);
+		} else
+			sndrnd = 1;
+		toread = min_t(int, length, chunk);
+		chip->read_buf(mtd, bufpoi, toread);
+		bufpoi += toread;
+		length -= toread;
+	}
+	if (length > 0)
+		chip->read_buf(mtd, bufpoi, length);
+
+	return 1;
+}
+
+/**
+ * nand_write_oob_std - [REPLACABLE] the most common OOB data write function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @page:	page number to write
+ */
+static int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
+			      int page)
+{
+	int status = 0;
+	const uint8_t *buf = chip->oob_poi;
+	int length = mtd->oobsize;
+
+	chip->cmdfunc(mtd, NAND_CMD_SEQIN, mtd->writesize, page);
+	chip->write_buf(mtd, buf, length);
+	/* Send command to program the OOB data */
+	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+
+	status = chip->waitfunc(mtd, chip);
+
+	return status & NAND_STATUS_FAIL ? -EIO : 0;
+}
+
+/**
+ * nand_write_oob_syndrome - [REPLACABLE] OOB data write function for HW ECC
+ *			     with syndrome - only for large page flash !
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @page:	page number to write
+ */
+static int nand_write_oob_syndrome(struct mtd_info *mtd,
+				   struct nand_chip *chip, int page)
+{
+	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
+	int eccsize = chip->ecc.size, length = mtd->oobsize;
+	int i, len, pos, status = 0, sndcmd = 0, steps = chip->ecc.steps;
+	const uint8_t *bufpoi = chip->oob_poi;
+
+	/*
+	 * data-ecc-data-ecc ... ecc-oob
+	 * or
+	 * data-pad-ecc-pad-data-pad .... ecc-pad-oob
+	 */
+	if (!chip->ecc.prepad && !chip->ecc.postpad) {
+		pos = steps * (eccsize + chunk);
+		steps = 0;
+	} else
+		pos = eccsize;
+
+	chip->cmdfunc(mtd, NAND_CMD_SEQIN, pos, page);
+	for (i = 0; i < steps; i++) {
+		if (sndcmd) {
+			if (mtd->writesize <= 512) {
+				uint32_t fill = 0xFFFFFFFF;
+
+				len = eccsize;
+				while (len > 0) {
+					int num = min_t(int, len, 4);
+					chip->write_buf(mtd, (uint8_t *)&fill,
+							num);
+					len -= num;
+				}
+			} else {
+				pos = eccsize + i * (eccsize + chunk);
+				chip->cmdfunc(mtd, NAND_CMD_RNDIN, pos, -1);
+			}
+		} else
+			sndcmd = 1;
+		len = min_t(int, length, chunk);
+		chip->write_buf(mtd, bufpoi, len);
+		bufpoi += len;
+		length -= len;
+	}
+	if (length > 0)
+		chip->write_buf(mtd, bufpoi, length);
+
+	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+	status = chip->waitfunc(mtd, chip);
+
+	return status & NAND_STATUS_FAIL ? -EIO : 0;
+}
+
+/**
+ * nand_do_read_oob - [Intern] NAND read out-of-band
+ * @mtd:	MTD device structure
+ * @from:	offset to read from
+ * @ops:	oob operations description structure
+ *
+ * NAND read out-of-band data from the spare area
+ */
+static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
+			    struct mtd_oob_ops *ops)
+{
+	int page, realpage, chipnr, sndcmd = 1;
+	struct nand_chip *chip = mtd->priv;
+	int blkcheck = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
+	int readlen = ops->ooblen;
+	int len;
+	uint8_t *buf = ops->oobbuf;
+
+	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_read_oob: from = 0x%08Lx, len = %i\n",
+	      (unsigned long long)from, readlen);
+
+	if (ops->mode == MTD_OOB_AUTO)
+		len = chip->ecc.layout->oobavail;
+	else
+		len = mtd->oobsize;
+
+	if (unlikely(ops->ooboffs >= len)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
+			"Attempt to start read outside oob\n");
+		return -EINVAL;
+	}
+
+	/* Do not allow reads past end of device */
+	if (unlikely(from >= mtd->size ||
+		     ops->ooboffs + readlen > ((mtd->size >> chip->page_shift) -
+					(from >> chip->page_shift)) * len)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
+			"Attempt read beyond end of device\n");
+		return -EINVAL;
+	}
+
+	chipnr = (int)(from >> chip->chip_shift);
+	chip->select_chip(mtd, chipnr);
+
+	/* Shift to get page */
+	realpage = (int)(from >> chip->page_shift);
+	page = realpage & chip->pagemask;
+
+	while(1) {
+		sndcmd = chip->ecc.read_oob(mtd, chip, page, sndcmd);
+
+		len = min(len, readlen);
+		buf = nand_transfer_oob(chip, buf, ops, len);
+
+		if (!(chip->options & NAND_NO_READRDY)) {
+			/*
+			 * Apply delay or wait for ready/busy pin. Do this
+			 * before the AUTOINCR check, so no problems arise if a
+			 * chip which does auto increment is marked as
+			 * NOAUTOINCR by the board driver.
+			 */
+			if (!chip->dev_ready)
+				udelay(chip->chip_delay);
+			else
+				nand_wait_ready(mtd);
+		}
+
+		readlen -= len;
+		if (!readlen)
+			break;
+
+		/* Increment page address */
+		realpage++;
+
+		page = realpage & chip->pagemask;
+		/* Check, if we cross a chip boundary */
+		if (!page) {
+			chipnr++;
+			chip->select_chip(mtd, -1);
+			chip->select_chip(mtd, chipnr);
+		}
+
+		/* Check, if the chip supports auto page increment
+		 * or if we have hit a block boundary.
+		 */
+		if (!NAND_CANAUTOINCR(chip) || !(page & blkcheck))
+			sndcmd = 1;
+	}
+
+	ops->oobretlen = ops->ooblen;
+	return 0;
+}
+
+/**
+ * nand_read_oob - [MTD Interface] NAND read data and/or out-of-band
+ * @mtd:	MTD device structure
+ * @from:	offset to read from
+ * @ops:	oob operation description structure
+ *
+ * NAND read data and/or out-of-band data
+ */
+static int nand_read_oob(struct mtd_info *mtd, loff_t from,
+			 struct mtd_oob_ops *ops)
+{
+	struct nand_chip *chip = mtd->priv;
+	int ret = -ENOSYS;
+
+	ops->retlen = 0;
+
+	/* Do not allow reads past end of device */
+	if (ops->datbuf && (from + ops->len) > mtd->size) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
+		      "Attempt read beyond end of device\n");
+		return -EINVAL;
+	}
+
+	nand_get_device(chip, mtd, FL_READING);
+
+	switch(ops->mode) {
+	case MTD_OOB_PLACE:
+	case MTD_OOB_AUTO:
+	case MTD_OOB_RAW:
+		break;
+
+	default:
+		goto out;
+	}
+
+	if (!ops->datbuf)
+		ret = nand_do_read_oob(mtd, from, ops);
+	else
+		ret = nand_do_read_ops(mtd, from, ops);
+
+ out:
+	nand_release_device(mtd);
+	return ret;
+}
+
+
+/**
+ * nand_write_page_raw - [Intern] raw page write function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	data buffer
+ */
+static void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
+				const uint8_t *buf)
+{
+	chip->write_buf(mtd, buf, mtd->writesize);
+	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+}
+
+/**
+ * nand_write_page_swecc - [REPLACABLE] software ecc based page write function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	data buffer
+ */
+static void nand_write_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
+				  const uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	const uint8_t *p = buf;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	/* Software ecc calculation */
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		chip->oob_poi[eccpos[i]] = ecc_calc[i];
+
+	chip->ecc.write_page_raw(mtd, chip, buf);
+}
+
+/**
+ * nand_write_page_hwecc - [REPLACABLE] hardware ecc based page write function
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	data buffer
+ */
+static void nand_write_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
+				  const uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	const uint8_t *p = buf;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
+		chip->write_buf(mtd, p, eccsize);
+		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
+	}
+
+	for (i = 0; i < chip->ecc.total; i++)
+		chip->oob_poi[eccpos[i]] = ecc_calc[i];
+
+	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+}
+
+/**
+ * nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
+ * @mtd:	mtd info structure
+ * @chip:	nand chip info structure
+ * @buf:	data buffer
+ *
+ * The hw generator calculates the error syndrome automatically. Therefor
+ * we need a special oob layout and handling.
+ */
+static void nand_write_page_syndrome(struct mtd_info *mtd,
+				    struct nand_chip *chip, const uint8_t *buf)
+{
+	int i, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	const uint8_t *p = buf;
+	uint8_t *oob = chip->oob_poi;
+
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+
+		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
+		chip->write_buf(mtd, p, eccsize);
+
+		if (chip->ecc.prepad) {
+			chip->write_buf(mtd, oob, chip->ecc.prepad);
+			oob += chip->ecc.prepad;
+		}
+
+		chip->ecc.calculate(mtd, p, oob);
+		chip->write_buf(mtd, oob, eccbytes);
+		oob += eccbytes;
+
+		if (chip->ecc.postpad) {
+			chip->write_buf(mtd, oob, chip->ecc.postpad);
+			oob += chip->ecc.postpad;
+		}
+	}
+
+	/* Calculate remaining oob bytes */
+	i = mtd->oobsize - (oob - chip->oob_poi);
+	if (i)
+		chip->write_buf(mtd, oob, i);
+}
+
+/**
+ * nand_write_page - [REPLACEABLE] write one page
+ * @mtd:	MTD device structure
+ * @chip:	NAND chip descriptor
+ * @buf:	the data to write
+ * @page:	page number to write
+ * @cached:	cached programming
+ * @raw:	use _raw version of write_page
+ */
+static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
+			   const uint8_t *buf, int page, int cached, int raw)
+{
+	int status;
+
+	chip->cmdfunc(mtd, NAND_CMD_SEQIN, 0x00, page);
+
+	if (unlikely(raw))
+		chip->ecc.write_page_raw(mtd, chip, buf);
+	else
+		chip->ecc.write_page(mtd, chip, buf);
+
+	/*
+	 * Cached progamming disabled for now, Not sure if its worth the
+	 * trouble. The speed gain is not very impressive. (2.3->2.6Mib/s)
+	 */
+	cached = 0;
+
+	if (!cached || !(chip->options & NAND_CACHEPRG)) {
+
+		chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
+		status = chip->waitfunc(mtd, chip);
+		/*
+		 * See if operation failed and additional status checks are
+		 * available
+		 */
+		if ((status & NAND_STATUS_FAIL) && (chip->errstat))
+			status = chip->errstat(mtd, chip, FL_WRITING, status,
+					       page);
+
+		if (status & NAND_STATUS_FAIL) {
+			return -EIO;
+		}
+	} else {
+		chip->cmdfunc(mtd, NAND_CMD_CACHEDPROG, -1, -1);
+		status = chip->waitfunc(mtd, chip);
+	}
+
+#ifdef CONFIG_MTD_NAND_VERIFY_WRITE
+	/* Send command to read back the data */
+	chip->cmdfunc(mtd, NAND_CMD_READ0, 0, page);
+
+	if (chip->verify_buf(mtd, buf, mtd->writesize))
+		return -EIO;
+#endif
+	return 0;
+}
+
+/**
+ * nand_fill_oob - [Internal] Transfer client buffer to oob
+ * @chip:	nand chip structure
+ * @oob:	oob data buffer
+ * @ops:	oob ops structure
+ */
+static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob,
+				  struct mtd_oob_ops *ops)
+{
+	size_t len = ops->ooblen;
+
+	switch(ops->mode) {
+
+	case MTD_OOB_PLACE:
+	case MTD_OOB_RAW:
+		memcpy(chip->oob_poi + ops->ooboffs, oob, len);
+		return oob + len;
+
+	case MTD_OOB_AUTO: {
+		struct nand_oobfree *free = chip->ecc.layout->oobfree;
+		uint32_t boffs = 0, woffs = ops->ooboffs;
+		size_t bytes = 0;
+
+		for(; free->length && len; free++, len -= bytes) {
+			/* Write request not from offset 0 ? */
+			if (unlikely(woffs)) {
+				if (woffs >= free->length) {
+					woffs -= free->length;
+					continue;
+				}
+				boffs = free->offset + woffs;
+				bytes = min_t(size_t, len,
+					      (free->length - woffs));
+				woffs = 0;
+			} else {
+				bytes = min_t(size_t, len, free->length);
+				boffs = free->offset;
+			}
+			memcpy(chip->oob_poi + boffs, oob, bytes);
+			oob += bytes;
+		}
+		return oob;
+	}
+	default:
+		BUG();
+	}
+	return NULL;
+}
+
+#define NOTALIGNED(x)	(x & (chip->subpagesize - 1)) != 0
+
+/**
+ * nand_do_write_ops - [Internal] NAND write with ECC
+ * @mtd:	MTD device structure
+ * @to:		offset to write to
+ * @ops:	oob operations description structure
+ *
+ * NAND write with ECC
+ */
+static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
+			     struct mtd_oob_ops *ops)
+{
+	int chipnr, realpage, page, blockmask, column;
+	struct nand_chip *chip = mtd->priv;
+	uint32_t writelen = ops->len;
+	uint8_t *oob = ops->oobbuf;
+	uint8_t *buf = ops->datbuf;
+	int ret, subpage;
+
+	ops->retlen = 0;
+	if (!writelen)
+		return 0;
+
+	/* reject writes, which are not page aligned */
+	if (NOTALIGNED(to) || NOTALIGNED(ops->len)) {
+		printk(KERN_NOTICE "nand_write: "
+		       "Attempt to write not page aligned data\n");
+		return -EINVAL;
+	}
+
+	column = to & (mtd->writesize - 1);
+	subpage = column || (writelen & (mtd->writesize - 1));
+
+	if (subpage && oob)
+		return -EINVAL;
+
+	chipnr = (int)(to >> chip->chip_shift);
+	chip->select_chip(mtd, chipnr);
+
+	/* Check, if it is write protected */
+	if (nand_check_wp(mtd)) {
+		return -EIO;
+	}
+
+	realpage = (int)(to >> chip->page_shift);
+	page = realpage & chip->pagemask;
+	blockmask = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
+
+	/* Invalidate the page cache, when we write to the cached page */
+	if (to <= (chip->pagebuf << chip->page_shift) &&
+	    (chip->pagebuf << chip->page_shift) < (to + ops->len))
+		chip->pagebuf = -1;
+
+	/* If we're not given explicit OOB data, let it be 0xFF */
+	if (likely(!oob))
+		memset(chip->oob_poi, 0xff, mtd->oobsize);
+
+	while(1) {
+		int bytes = mtd->writesize;
+		int cached = writelen > bytes && page != blockmask;
+		uint8_t *wbuf = buf;
+
+		/* Partial page write ? */
+		if (unlikely(column || writelen < (mtd->writesize - 1))) {
+			cached = 0;
+			bytes = min_t(int, bytes - column, (int) writelen);
+			chip->pagebuf = -1;
+			memset(chip->buffers->databuf, 0xff, mtd->writesize);
+			memcpy(&chip->buffers->databuf[column], buf, bytes);
+			wbuf = chip->buffers->databuf;
+		}
+
+		if (unlikely(oob))
+			oob = nand_fill_oob(chip, oob, ops);
+
+		ret = chip->write_page(mtd, chip, wbuf, page, cached,
+				       (ops->mode == MTD_OOB_RAW));
+		if (ret)
+			break;
+
+		writelen -= bytes;
+		if (!writelen)
+			break;
+
+		column = 0;
+		buf += bytes;
+		realpage++;
+
+		page = realpage & chip->pagemask;
+		/* Check, if we cross a chip boundary */
+		if (!page) {
+			chipnr++;
+			chip->select_chip(mtd, -1);
+			chip->select_chip(mtd, chipnr);
+		}
+	}
+
+	ops->retlen = ops->len - writelen;
+	if (unlikely(oob))
+		ops->oobretlen = ops->ooblen;
+	return ret;
+}
+
+/**
+ * nand_write - [MTD Interface] NAND write with ECC
+ * @mtd:	MTD device structure
+ * @to:		offset to write to
+ * @len:	number of bytes to write
+ * @retlen:	pointer to variable to store the number of written bytes
+ * @buf:	the data to write
+ *
+ * NAND write with ECC
+ */
+static int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
+			  size_t *retlen, const uint8_t *buf)
+{
+	struct nand_chip *chip = mtd->priv;
+	int ret;
+
+	/* Do not allow reads past end of device */
+	if ((to + len) > mtd->size)
+		return -EINVAL;
+	if (!len)
+		return 0;
+
+	nand_get_device(chip, mtd, FL_WRITING);
+
+	chip->ops.len = len;
+	chip->ops.datbuf = (uint8_t *)buf;
+	chip->ops.oobbuf = NULL;
+
+	ret = nand_do_write_ops(mtd, to, &chip->ops);
+
+	*retlen = chip->ops.retlen;
+
+	nand_release_device(mtd);
+
+	return ret;
+}
+
+/**
+ * nand_do_write_oob - [MTD Interface] NAND write out-of-band
+ * @mtd:	MTD device structure
+ * @to:		offset to write to
+ * @ops:	oob operation description structure
+ *
+ * NAND write out-of-band
+ */
+static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
+			     struct mtd_oob_ops *ops)
+{
+	int chipnr, page, status, len;
+	struct nand_chip *chip = mtd->priv;
+
+	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_write_oob: to = 0x%08x, len = %i\n",
+	      (unsigned int)to, (int)ops->ooblen);
+
+	if (ops->mode == MTD_OOB_AUTO)
+		len = chip->ecc.layout->oobavail;
+	else
+		len = mtd->oobsize;
+
+	/* Do not allow write past end of page */
+	if ((ops->ooboffs + ops->ooblen) > len) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_write_oob: "
+		      "Attempt to write past end of page\n");
+		return -EINVAL;
+	}
+
+	if (unlikely(ops->ooboffs >= len)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
+			"Attempt to start write outside oob\n");
+		return -EINVAL;
+	}
+
+	/* Do not allow reads past end of device */
+	if (unlikely(to >= mtd->size ||
+		     ops->ooboffs + ops->ooblen >
+			((mtd->size >> chip->page_shift) -
+			 (to >> chip->page_shift)) * len)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
+			"Attempt write beyond end of device\n");
+		return -EINVAL;
+	}
+
+	chipnr = (int)(to >> chip->chip_shift);
+	chip->select_chip(mtd, chipnr);
+
+	/* Shift to get page */
+	page = (int)(to >> chip->page_shift);
+
+	/*
+	 * Reset the chip. Some chips (like the Toshiba TC5832DC found in one
+	 * of my DiskOnChip 2000 test units) will clear the whole data page too
+	 * if we don't do this. I have no clue why, but I seem to have 'fixed'
+	 * it in the doc2000 driver in August 1999.  dwmw2.
+	 */
+	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+
+	/* Check, if it is write protected */
+	if (nand_check_wp(mtd))
+		return -EROFS;
+
+	/* Invalidate the page cache, if we write to the cached page */
+	if (page == chip->pagebuf)
+		chip->pagebuf = -1;
+
+	memset(chip->oob_poi, 0xff, mtd->oobsize);
+	nand_fill_oob(chip, ops->oobbuf, ops);
+	status = chip->ecc.write_oob(mtd, chip, page & chip->pagemask);
+	memset(chip->oob_poi, 0xff, mtd->oobsize);
+
+	if (status)
+		return status;
+
+	ops->oobretlen = ops->ooblen;
+
+	return 0;
+}
+
+/**
+ * nand_write_oob - [MTD Interface] NAND write data and/or out-of-band
+ * @mtd:	MTD device structure
+ * @to:		offset to write to
+ * @ops:	oob operation description structure
+ */
+static int nand_write_oob(struct mtd_info *mtd, loff_t to,
+			  struct mtd_oob_ops *ops)
+{
+	struct nand_chip *chip = mtd->priv;
+	int ret = -ENOSYS;
+
+	ops->retlen = 0;
+
+	/* Do not allow writes past end of device */
+	if (ops->datbuf && (to + ops->len) > mtd->size) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
+		      "Attempt read beyond end of device\n");
+		return -EINVAL;
+	}
+
+	nand_get_device(chip, mtd, FL_WRITING);
+
+	switch(ops->mode) {
+	case MTD_OOB_PLACE:
+	case MTD_OOB_AUTO:
+	case MTD_OOB_RAW:
+		break;
+
+	default:
+		goto out;
+	}
+
+	if (!ops->datbuf)
+		ret = nand_do_write_oob(mtd, to, ops);
+	else
+		ret = nand_do_write_ops(mtd, to, ops);
+
+ out:
+	nand_release_device(mtd);
+	return ret;
+}
+
+/**
+ * single_erease_cmd - [GENERIC] NAND standard block erase command function
+ * @mtd:	MTD device structure
+ * @page:	the page address of the block which will be erased
+ *
+ * Standard erase command for NAND chips
+ */
+static void single_erase_cmd(struct mtd_info *mtd, int page)
+{
+	struct nand_chip *chip = mtd->priv;
+	/* Send commands to erase a block */
+	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page);
+	chip->cmdfunc(mtd, NAND_CMD_ERASE2, -1, -1);
+}
+
+/**
+ * multi_erease_cmd - [GENERIC] AND specific block erase command function
+ * @mtd:	MTD device structure
+ * @page:	the page address of the block which will be erased
+ *
+ * AND multi block erase command function
+ * Erase 4 consecutive blocks
+ */
+static void multi_erase_cmd(struct mtd_info *mtd, int page)
+{
+	struct nand_chip *chip = mtd->priv;
+	/* Send commands to erase a block */
+	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
+	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
+	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
+	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page);
+	chip->cmdfunc(mtd, NAND_CMD_ERASE2, -1, -1);
+}
+
+/**
+ * nand_erase - [MTD Interface] erase block(s)
+ * @mtd:	MTD device structure
+ * @instr:	erase instruction
+ *
+ * Erase one ore more blocks
+ */
+static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
+{
+	return nand_erase_nand(mtd, instr, 0);
+}
+
+#define BBT_PAGE_MASK	0xffffff3f
+/**
+ * nand_erase_nand - [Internal] erase block(s)
+ * @mtd:	MTD device structure
+ * @instr:	erase instruction
+ * @allowbbt:	allow erasing the bbt area
+ *
+ * Erase one ore more blocks
+ */
+int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
+		    int allowbbt)
+{
+	int page, len, status, pages_per_block, ret, chipnr;
+	struct nand_chip *chip = mtd->priv;
+	int rewrite_bbt[NAND_MAX_CHIPS]={0};
+	unsigned int bbt_masked_page = 0xffffffff;
+
+	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_erase: start = 0x%08x, len = %i\n",
+	      (unsigned int)instr->addr, (unsigned int)instr->len);
+
+	/* Start address must align on block boundary */
+	if (instr->addr & ((1 << chip->phys_erase_shift) - 1)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: Unaligned address\n");
+		return -EINVAL;
+	}
+
+	/* Length must align on block boundary */
+	if (instr->len & ((1 << chip->phys_erase_shift) - 1)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
+		      "Length not block aligned\n");
+		return -EINVAL;
+	}
+
+	/* Do not allow erase past end of device */
+	if ((instr->len + instr->addr) > mtd->size) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
+		      "Erase past end of device\n");
+		return -EINVAL;
+	}
+
+	instr->fail_addr = 0xffffffff;
+
+	/* Grab the lock and see if the device is available */
+	nand_get_device(chip, mtd, FL_ERASING);
+
+	/* Shift to get first page */
+	page = (int)(instr->addr >> chip->page_shift);
+	chipnr = (int)(instr->addr >> chip->chip_shift);
+
+	/* Calculate pages in each block */
+	pages_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
+
+	/* Select the NAND device */
+	chip->select_chip(mtd, chipnr);
+
+	/* Check, if it is write protected */
+	if (nand_check_wp(mtd)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
+		      "Device is write protected!!!\n");
+		instr->state = MTD_ERASE_FAILED;
+		goto erase_exit;
+	}
+
+	/*
+	 * If BBT requires refresh, set the BBT page mask to see if the BBT
+	 * should be rewritten. Otherwise the mask is set to 0xffffffff which
+	 * can not be matched. This is also done when the bbt is actually
+	 * erased to avoid recusrsive updates
+	 */
+	if (chip->options & BBT_AUTO_REFRESH && !allowbbt)
+		bbt_masked_page = chip->bbt_td->pages[chipnr] & BBT_PAGE_MASK;
+
+	/* Loop through the pages */
+	len = instr->len;
+
+	instr->state = MTD_ERASING;
+
+	while (len) {
+		/*
+		 * heck if we have a bad block, we do not erase bad blocks !
+		 */
+		if (nand_block_checkbad(mtd, ((loff_t) page) <<
+					chip->page_shift, 0, allowbbt)) {
+			printk(KERN_WARNING "nand_erase: attempt to erase a "
+			       "bad block at page 0x%08x\n", page);
+			instr->state = MTD_ERASE_FAILED;
+			goto erase_exit;
+		}
+
+		/*
+		 * Invalidate the page cache, if we erase the block which
+		 * contains the current cached page
+		 */
+		if (page <= chip->pagebuf && chip->pagebuf <
+		    (page + pages_per_block))
+			chip->pagebuf = -1;
+
+		chip->erase_cmd(mtd, page & chip->pagemask);
+
+		status = chip->waitfunc(mtd, chip);
+
+		/*
+		 * See if operation failed and additional status checks are
+		 * available
+		 */
+		if ((status & NAND_STATUS_FAIL) && (chip->errstat))
+			status = chip->errstat(mtd, chip, FL_ERASING,
+					       status, page);
+
+		/* See if block erase succeeded */
+		if (status & NAND_STATUS_FAIL) {
+			MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
+			      "Failed erase, page 0x%08x\n", page);
+			instr->state = MTD_ERASE_FAILED;
+			instr->fail_addr = (page << chip->page_shift);
+			goto erase_exit;
+		}
+
+		/*
+		 * If BBT requires refresh, set the BBT rewrite flag to the
+		 * page being erased
+		 */
+		if (bbt_masked_page != 0xffffffff &&
+		    (page & BBT_PAGE_MASK) == bbt_masked_page)
+			    rewrite_bbt[chipnr] = (page << chip->page_shift);
+
+		/* Increment page address and decrement length */
+		len -= (1 << chip->phys_erase_shift);
+		page += pages_per_block;
+
+		/* Check, if we cross a chip boundary */
+		if (len && !(page & chip->pagemask)) {
+			chipnr++;
+			chip->select_chip(mtd, -1);
+			chip->select_chip(mtd, chipnr);
+
+			/*
+			 * If BBT requires refresh and BBT-PERCHIP, set the BBT
+			 * page mask to see if this BBT should be rewritten
+			 */
+			if (bbt_masked_page != 0xffffffff &&
+			    (chip->bbt_td->options & NAND_BBT_PERCHIP))
+				bbt_masked_page = chip->bbt_td->pages[chipnr] &
+					BBT_PAGE_MASK;
+		}
+	}
+	instr->state = MTD_ERASE_DONE;
+
+ erase_exit:
+
+	ret = instr->state == MTD_ERASE_DONE ? 0 : -EIO;
+
+	/* Deselect and wake up anyone waiting on the device */
+	nand_release_device(mtd);
+
+	/* Do call back function */
+	if (!ret)
+		mtd_erase_callback(instr);
+
+	/*
+	 * If BBT requires refresh and erase was successful, rewrite any
+	 * selected bad block tables
+	 */
+	if (bbt_masked_page == 0xffffffff || ret)
+		return ret;
+
+	for (chipnr = 0; chipnr < chip->numchips; chipnr++) {
+		if (!rewrite_bbt[chipnr])
+			continue;
+		/* update the BBT for chip */
+		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase_nand: nand_update_bbt "
+		      "(%d:0x%0x 0x%0x)\n", chipnr, rewrite_bbt[chipnr],
+		      chip->bbt_td->pages[chipnr]);
+		nand_update_bbt(mtd, rewrite_bbt[chipnr]);
+	}
+
+	/* Return more or less happy */
+	return ret;
+}
+
+/**
+ * nand_sync - [MTD Interface] sync
+ * @mtd:	MTD device structure
+ *
+ * Sync is actually a wait for chip ready function
+ */
+static void nand_sync(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_sync: called\n");
+
+	/* Grab the lock and see if the device is available */
+	nand_get_device(chip, mtd, FL_SYNCING);
+	/* Release it and go back */
+	nand_release_device(mtd);
+}
+
+/**
+ * nand_block_isbad - [MTD Interface] Check if block at offset is bad
+ * @mtd:	MTD device structure
+ * @offs:	offset relative to mtd start
+ */
+static int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
+{
+	/* Check for invalid offset */
+	if (offs > mtd->size)
+		return -EINVAL;
+
+	return nand_block_checkbad(mtd, offs, 1, 0);
+}
+
+/**
+ * nand_block_markbad - [MTD Interface] Mark block at the given offset as bad
+ * @mtd:	MTD device structure
+ * @ofs:	offset relative to mtd start
+ */
+static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
+{
+	struct nand_chip *chip = mtd->priv;
+	int ret;
+
+	if ((ret = nand_block_isbad(mtd, ofs))) {
+		/* If it was bad already, return success and do nothing. */
+		if (ret > 0)
+			return 0;
+		return ret;
+	}
+
+	return chip->block_markbad(mtd, ofs);
+}
+
+/**
+ * nand_suspend - [MTD Interface] Suspend the NAND flash
+ * @mtd:	MTD device structure
+ */
+static int nand_suspend(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	return nand_get_device(chip, mtd, FL_PM_SUSPENDED);
+}
+
+/**
+ * nand_resume - [MTD Interface] Resume the NAND flash
+ * @mtd:	MTD device structure
+ */
+static void nand_resume(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	if (chip->state == FL_PM_SUSPENDED)
+		nand_release_device(mtd);
+	else
+		printk(KERN_ERR "nand_resume() called for a chip which is not "
+		       "in suspended state\n");
+}
+
+/*
+ * Set default functions
+ */
+static void nand_set_defaults(struct nand_chip *chip, int busw)
+{
+	/* check for proper chip_delay setup, set 20us if not */
+	if (!chip->chip_delay)
+		chip->chip_delay = 20;
+
+	/* check, if a user supplied command function given */
+	if (chip->cmdfunc == NULL)
+		chip->cmdfunc = nand_command;
+
+	/* check, if a user supplied wait function given */
+	if (chip->waitfunc == NULL)
+		chip->waitfunc = nand_wait;
+
+	if (!chip->select_chip)
+		chip->select_chip = nand_select_chip;
+	if (!chip->read_byte)
+		chip->read_byte = busw ? nand_read_byte16 : nand_read_byte;
+	if (!chip->read_word)
+		chip->read_word = nand_read_word;
+	if (!chip->block_bad)
+		chip->block_bad = nand_block_bad;
+	if (!chip->block_markbad)
+		chip->block_markbad = nand_default_block_markbad;
+	if (!chip->write_buf)
+		chip->write_buf = busw ? nand_write_buf16 : nand_write_buf;
+	if (!chip->read_buf)
+		chip->read_buf = busw ? nand_read_buf16 : nand_read_buf;
+	if (!chip->verify_buf)
+		chip->verify_buf = busw ? nand_verify_buf16 : nand_verify_buf;
+	if (!chip->scan_bbt)
+		chip->scan_bbt = nand_default_bbt;
+
+	if (!chip->controller) {
+		chip->controller = &chip->hwcontrol;
+	}
+
+}
+
+/*
+ * Get the flash and manufacturer id and lookup if the type is supported
+ */
+static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
+						  struct nand_chip *chip,
+						  int busw, int *maf_id)
+{
+	struct nand_flash_dev *type = NULL;
+	int i, dev_id, maf_idx;
+	int tmp_id, tmp_manf;
+
+	/* Select the device */
+	chip->select_chip(mtd, 0);
+
+	/* Send the command for reading device ID */
+	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
+
+	/* Read manufacturer and device IDs */
+	*maf_id = chip->read_byte(mtd);
+	dev_id = chip->read_byte(mtd);
+
+	/* Try again to make sure, as some systems the bus-hold or other
+	 * interface concerns can cause random data which looks like a
+	 * possibly credible NAND flash to appear. If the two results do
+	 * not match, ignore the device completely.
+	 */
+
+	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
+
+	/* Read manufacturer and device IDs */
+
+	tmp_manf = chip->read_byte(mtd);
+	tmp_id = chip->read_byte(mtd);
+
+	if (tmp_manf != *maf_id || tmp_id != dev_id) {
+		printk(KERN_INFO "%s: second ID read did not match "
+		       "%02x,%02x against %02x,%02x\n", __func__,
+		       *maf_id, dev_id, tmp_manf, tmp_id);
+		return ERR_PTR(-ENODEV);
+	}
+
+	/* Lookup the flash id */
+	for (i = 0; nand_flash_ids[i].name != NULL; i++) {
+		if (dev_id == nand_flash_ids[i].id) {
+			type =  &nand_flash_ids[i];
+			break;
+		}
+	}
+
+	if (!type)
+		return ERR_PTR(-ENODEV);
+
+	if (!mtd->name)
+		mtd->name = type->name;
+
+	chip->chipsize = type->chipsize << 20;
+
+	/* Newer devices have all the information in additional id bytes */
+	if (!type->pagesize) {
+		int extid;
+		/* The 3rd id byte holds MLC / multichip data */
+		chip->cellinfo = chip->read_byte(mtd);
+		/* The 4th id byte is the important one */
+		extid = chip->read_byte(mtd);
+		/* Calc pagesize */
+		mtd->writesize = 1024 << (extid & 0x3);
+		extid >>= 2;
+		/* Calc oobsize */
+		mtd->oobsize = (8 << (extid & 0x01)) * (mtd->writesize >> 9);
+		extid >>= 2;
+		/* Calc blocksize. Blocksize is multiples of 64KiB */
+		mtd->erasesize = (64 * 1024) << (extid & 0x03);
+		extid >>= 2;
+		/* Get buswidth information */
+		busw = (extid & 0x01) ? NAND_BUSWIDTH_16 : 0;
+
+	} else {
+		/*
+		 * Old devices have chip data hardcoded in the device id table
+		 */
+		mtd->erasesize = type->erasesize;
+		mtd->writesize = type->pagesize;
+		mtd->oobsize = mtd->writesize / 32;
+		busw = type->options & NAND_BUSWIDTH_16;
+	}
+
+	/* Try to identify manufacturer */
+	for (maf_idx = 0; nand_manuf_ids[maf_idx].id != 0x0; maf_idx++) {
+		if (nand_manuf_ids[maf_idx].id == *maf_id)
+			break;
+	}
+
+	/*
+	 * Check, if buswidth is correct. Hardware drivers should set
+	 * chip correct !
+	 */
+	if (busw != (chip->options & NAND_BUSWIDTH_16)) {
+		printk(KERN_INFO "NAND device: Manufacturer ID:"
+		       " 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id,
+		       dev_id, nand_manuf_ids[maf_idx].name, mtd->name);
+		printk(KERN_WARNING "NAND bus width %d instead %d bit\n",
+		       (chip->options & NAND_BUSWIDTH_16) ? 16 : 8,
+		       busw ? 16 : 8);
+		return ERR_PTR(-EINVAL);
+	}
+
+	/* Calculate the address shift from the page size */
+	chip->page_shift = ffs(mtd->writesize) - 1;
+	/* Convert chipsize to number of pages per chip -1. */
+	chip->pagemask = (chip->chipsize >> chip->page_shift) - 1;
+
+	chip->bbt_erase_shift = chip->phys_erase_shift =
+		ffs(mtd->erasesize) - 1;
+	chip->chip_shift = ffs(chip->chipsize) - 1;
+
+	/* Set the bad block position */
+	chip->badblockpos = mtd->writesize > 512 ?
+		NAND_LARGE_BADBLOCK_POS : NAND_SMALL_BADBLOCK_POS;
+
+	/* Get chip options, preserve non chip based options */
+	chip->options &= ~NAND_CHIPOPTIONS_MSK;
+	chip->options |= type->options & NAND_CHIPOPTIONS_MSK;
+
+	/*
+	 * Set chip as a default. Board drivers can override it, if necessary
+	 */
+	chip->options |= NAND_NO_AUTOINCR;
+
+	/* Check if chip is a not a samsung device. Do not clear the
+	 * options for chips which are not having an extended id.
+	 */
+	if (*maf_id != NAND_MFR_SAMSUNG && !type->pagesize)
+		chip->options &= ~NAND_SAMSUNG_LP_OPTIONS;
+
+	/* Check for AND chips with 4 page planes */
+	if (chip->options & NAND_4PAGE_ARRAY)
+		chip->erase_cmd = multi_erase_cmd;
+	else
+		chip->erase_cmd = single_erase_cmd;
+
+	/* Do not replace user supplied command function ! */
+	if (mtd->writesize > 512 && chip->cmdfunc == nand_command)
+		chip->cmdfunc = nand_command_lp;
+
+	printk(KERN_INFO "NAND device: Manufacturer ID:"
+	       " 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id, dev_id,
+	       nand_manuf_ids[maf_idx].name, type->name);
+
+	return type;
+}
+
+/**
+ * nand_scan_ident - [NAND Interface] Scan for the NAND device
+ * @mtd:	     MTD device structure
+ * @maxchips:	     Number of chips to scan for
+ *
+ * This is the first phase of the normal nand_scan() function. It
+ * reads the flash ID and sets up MTD fields accordingly.
+ *
+ * The mtd->owner field must be set to the module of the caller.
+ */
+int nand_scan_ident(struct mtd_info *mtd, int maxchips)
+{
+	int i, busw, nand_maf_id;
+	struct nand_chip *chip = mtd->priv;
+	struct nand_flash_dev *type;
+
+	/* Get buswidth to select the correct functions */
+	busw = chip->options & NAND_BUSWIDTH_16;
+	/* Set the default functions */
+	nand_set_defaults(chip, busw);
+
+	/* Read the flash type */
+	type = nand_get_flash_type(mtd, chip, busw, &nand_maf_id);
+
+	if (IS_ERR(type)) {
+		printk(KERN_WARNING "No NAND device found!!!\n");
+		chip->select_chip(mtd, -1);
+		return PTR_ERR(type);
+	}
+
+	/* Check for a chip array */
+	for (i = 1; i < maxchips; i++) {
+		chip->select_chip(mtd, i);
+		/* Send the command for reading device ID */
+		chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
+		/* Read manufacturer and device IDs */
+		if (nand_maf_id != chip->read_byte(mtd) ||
+		    type->id != chip->read_byte(mtd))
+			break;
+	}
+	if (i > 1)
+		printk(KERN_INFO "%d NAND chips detected\n", i);
+
+	/* Store the number of chips and calc total size for mtd */
+	chip->numchips = i;
+	mtd->size = i * chip->chipsize;
+
+	return 0;
+}
+
+
+/**
+ * nand_scan_tail - [NAND Interface] Scan for the NAND device
+ * @mtd:	    MTD device structure
+ * @maxchips:	    Number of chips to scan for
+ *
+ * This is the second phase of the normal nand_scan() function. It
+ * fills out all the uninitialized function pointers with the defaults
+ * and scans for a bad block table if appropriate.
+ */
+int nand_scan_tail(struct mtd_info *mtd)
+{
+	int i;
+	struct nand_chip *chip = mtd->priv;
+
+	if (!(chip->options & NAND_OWN_BUFFERS))
+		chip->buffers = kmalloc(sizeof(*chip->buffers), GFP_KERNEL);
+	if (!chip->buffers)
+		return -ENOMEM;
+
+	/* Set the internal oob buffer location, just after the page data */
+	chip->oob_poi = chip->buffers->databuf + mtd->writesize;
+
+	/*
+	 * If no default placement scheme is given, select an appropriate one
+	 */
+	if (!chip->ecc.layout) {
+		switch (mtd->oobsize) {
+		case 8:
+			chip->ecc.layout = &nand_oob_8;
+			break;
+		case 16:
+			chip->ecc.layout = &nand_oob_16;
+			break;
+		case 64:
+			chip->ecc.layout = &nand_oob_64;
+			break;
+		default:
+			printk(KERN_WARNING "No oob scheme defined for "
+			       "oobsize %d\n", mtd->oobsize);
+			BUG();
+		}
+	}
+
+	if (!chip->write_page)
+		chip->write_page = nand_write_page;
+
+	/*
+	 * check ECC mode, default to software if 3byte/512byte hardware ECC is
+	 * selected and we have 256 byte pagesize fallback to software ECC
+	 */
+	if (!chip->ecc.read_page_raw)
+		chip->ecc.read_page_raw = nand_read_page_raw;
+	if (!chip->ecc.write_page_raw)
+		chip->ecc.write_page_raw = nand_write_page_raw;
+
+	switch (chip->ecc.mode) {
+	case NAND_ECC_HW:
+		/* Use standard hwecc read page function ? */
+		if (!chip->ecc.read_page)
+			chip->ecc.read_page = nand_read_page_hwecc;
+		if (!chip->ecc.write_page)
+			chip->ecc.write_page = nand_write_page_hwecc;
+		if (!chip->ecc.read_oob)
+			chip->ecc.read_oob = nand_read_oob_std;
+		if (!chip->ecc.write_oob)
+			chip->ecc.write_oob = nand_write_oob_std;
+
+	case NAND_ECC_HW_SYNDROME:
+		if ((!chip->ecc.calculate || !chip->ecc.correct ||
+		     !chip->ecc.hwctl) &&
+		    (!chip->ecc.read_page ||
+		     chip->ecc.read_page == nand_read_page_hwecc ||
+		     !chip->ecc.write_page ||
+		     chip->ecc.write_page == nand_write_page_hwecc)) {
+			printk(KERN_WARNING "No ECC functions supplied, "
+			       "Hardware ECC not possible\n");
+			BUG();
+		}
+		/* Use standard syndrome read/write page function ? */
+		if (!chip->ecc.read_page)
+			chip->ecc.read_page = nand_read_page_syndrome;
+		if (!chip->ecc.write_page)
+			chip->ecc.write_page = nand_write_page_syndrome;
+		if (!chip->ecc.read_oob)
+			chip->ecc.read_oob = nand_read_oob_syndrome;
+		if (!chip->ecc.write_oob)
+			chip->ecc.write_oob = nand_write_oob_syndrome;
+
+		if (mtd->writesize >= chip->ecc.size)
+			break;
+		printk(KERN_WARNING "%d byte HW ECC not possible on "
+		       "%d byte page size, fallback to SW ECC\n",
+		       chip->ecc.size, mtd->writesize);
+		chip->ecc.mode = NAND_ECC_SOFT;
+
+	case NAND_ECC_SOFT:
+		chip->ecc.calculate = nand_calculate_ecc;
+		chip->ecc.correct = nand_correct_data;
+		chip->ecc.read_page = nand_read_page_swecc;
+		chip->ecc.write_page = nand_write_page_swecc;
+		chip->ecc.read_oob = nand_read_oob_std;
+		chip->ecc.write_oob = nand_write_oob_std;
+		chip->ecc.size = 256;
+		chip->ecc.bytes = 3;
+		break;
+
+	case NAND_ECC_NONE:
+		printk(KERN_WARNING "NAND_ECC_NONE selected by board driver. "
+		       "This is not recommended !!\n");
+		chip->ecc.read_page = nand_read_page_raw;
+		chip->ecc.write_page = nand_write_page_raw;
+		chip->ecc.read_oob = nand_read_oob_std;
+		chip->ecc.write_oob = nand_write_oob_std;
+		chip->ecc.size = mtd->writesize;
+		chip->ecc.bytes = 0;
+		break;
+
+	default:
+		printk(KERN_WARNING "Invalid NAND_ECC_MODE %d\n",
+		       chip->ecc.mode);
+		BUG();
+	}
+
+	/*
+	 * The number of bytes available for a client to place data into
+	 * the out of band area
+	 */
+	chip->ecc.layout->oobavail = 0;
+	for (i = 0; chip->ecc.layout->oobfree[i].length; i++)
+		chip->ecc.layout->oobavail +=
+			chip->ecc.layout->oobfree[i].length;
+	mtd->oobavail = chip->ecc.layout->oobavail;
+
+	/*
+	 * Set the number of read / write steps for one page depending on ECC
+	 * mode
+	 */
+	chip->ecc.steps = mtd->writesize / chip->ecc.size;
+	if(chip->ecc.steps * chip->ecc.size != mtd->writesize) {
+		printk(KERN_WARNING "Invalid ecc parameters\n");
+		BUG();
+	}
+	chip->ecc.total = chip->ecc.steps * chip->ecc.bytes;
+
+	/*
+	 * Allow subpage writes up to ecc.steps. Not possible for MLC
+	 * FLASH.
+	 */
+	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
+	    !(chip->cellinfo & NAND_CI_CELLTYPE_MSK)) {
+		switch(chip->ecc.steps) {
+		case 2:
+			mtd->subpage_sft = 1;
+			break;
+		case 4:
+		case 8:
+			mtd->subpage_sft = 2;
+			break;
+		}
+	}
+	chip->subpagesize = mtd->writesize >> mtd->subpage_sft;
+
+	/* Initialize state */
+	chip->state = FL_READY;
+
+	/* De-select the device */
+	chip->select_chip(mtd, -1);
+
+	/* Invalidate the pagebuffer reference */
+	chip->pagebuf = -1;
+
+	/* Fill in remaining MTD driver data */
+	mtd->type = MTD_NANDFLASH;
+	mtd->flags = MTD_CAP_NANDFLASH;
+	mtd->erase = nand_erase;
+	mtd->read = nand_read;
+	mtd->write = nand_write;
+	mtd->read_oob = nand_read_oob;
+	mtd->write_oob = nand_write_oob;
+	mtd->sync = nand_sync;
+	mtd->lock = NULL;
+	mtd->unlock = NULL;
+	mtd->suspend = nand_suspend;
+	mtd->resume = nand_resume;
+	mtd->block_isbad = nand_block_isbad;
+	mtd->block_markbad = nand_block_markbad;
+
+	/* propagate ecc.layout to mtd_info */
+	mtd->ecclayout = chip->ecc.layout;
+
+	/* Check, if we should skip the bad block table scan */
+	if (chip->options & NAND_SKIP_BBTSCAN)
+		return 0;
+
+	/* Build bad block table */
+	return chip->scan_bbt(mtd);
+}
+
+/**
+ * nand_scan - [NAND Interface] Scan for the NAND device
+ * @mtd:	MTD device structure
+ * @maxchips:	Number of chips to scan for
+ *
+ * This fills out all the uninitialized function pointers
+ * with the defaults.
+ * The flash ID is read and the mtd/chip structures are
+ * filled with the appropriate values.
+ * The mtd->owner field must be set to the module of the caller
+ *
+ */
+int nand_scan(struct mtd_info *mtd, int maxchips)
+{
+	int ret;
+
+	ret = nand_scan_ident(mtd, maxchips);
+	if (!ret)
+		ret = nand_scan_tail(mtd);
+	return ret;
+}
+
+/**
+ * nand_release - [NAND Interface] Free resources held by the NAND device
+ * @mtd:	MTD device structure
+*/
+void nand_release(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd->priv;
+
+	/* Deregister the device */
+	del_mtd_device(mtd);
+
+	/* Free bad block table memory */
+	kfree(chip->bbt);
+	if (!(chip->options & NAND_OWN_BUFFERS))
+		kfree(chip->buffers);
+}
+
+EXPORT_SYMBOL(nand_scan);
+EXPORT_SYMBOL(nand_scan_ident);
+EXPORT_SYMBOL(nand_scan_tail);
+EXPORT_SYMBOL(nand_release);
+
+#endif /* DOXYGEN_SHOULD_SKIP_THIS */
diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
new file mode 100644
index 0000000..4a6bf39
--- /dev/null
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -0,0 +1,1224 @@
+/*
+ *  drivers/mtd/nand_bbt.c
+ *
+ *  Overview:
+ *   Bad block table support for the NAND driver
+ *
+ *  Copyright (C) 2004 Thomas Gleixner (tglx@linutronix.de)
+ *
+ * $Id: nand_bbt.c,v 1.36 2005/11/07 11:14:30 gleixner Exp $
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * Description:
+ *
+ * When nand_scan_bbt is called, then it tries to find the bad block table
+ * depending on the options in the bbt descriptor(s). If a bbt is found
+ * then the contents are read and the memory based bbt is created. If a
+ * mirrored bbt is selected then the mirror is searched too and the
+ * versions are compared. If the mirror has a greater version number
+ * than the mirror bbt is used to build the memory based bbt.
+ * If the tables are not versioned, then we "or" the bad block information.
+ * If one of the bbt's is out of date or does not exist it is (re)created.
+ * If no bbt exists at all then the device is scanned for factory marked
+ * good / bad blocks and the bad block tables are created.
+ *
+ * For manufacturer created bbts like the one found on M-SYS DOC devices
+ * the bbt is searched and read but never created
+ *
+ * The autogenerated bad block table is located in the last good blocks
+ * of the device. The table is mirrored, so it can be updated eventually.
+ * The table is marked in the oob area with an ident pattern and a version
+ * number which indicates which of both tables is more up to date.
+ *
+ * The table uses 2 bits per block
+ * 11b: 	block is good
+ * 00b: 	block is factory marked bad
+ * 01b, 10b: 	block is marked bad due to wear
+ *
+ * The memory bad block table uses the following scheme:
+ * 00b:		block is good
+ * 01b:		block is marked bad due to wear
+ * 10b:		block is reserved (to protect the bbt area)
+ * 11b:		block is factory marked bad
+ *
+ * Multichip devices like DOC store the bad block info per floor.
+ *
+ * Following assumptions are made:
+ * - bbts start at a page boundary, if autolocated on a block boundary
+ * - the space necessary for a bbt in FLASH does not exceed a block boundary
+ *
+ */
+#include <common.h>
+#include <linux/types.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <linux/mtd/nand_ecc.h>
+#include <linux/bitops.h>
+#include <clock.h>
+#include <errno.h>
+#include <malloc.h>
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+
+/**
+ * check_pattern - [GENERIC] check if a pattern is in the buffer
+ * @buf:	the buffer to search
+ * @len:	the length of buffer to search
+ * @paglen:	the pagelength
+ * @td:		search pattern descriptor
+ *
+ * Check for a pattern at the given place. Used to search bad block
+ * tables and good / bad block identifiers.
+ * If the SCAN_EMPTY option is set then check, if all bytes except the
+ * pattern area contain 0xff
+ *
+*/
+static int check_pattern(uint8_t *buf, int len, int paglen, struct nand_bbt_descr *td)
+{
+	int i, end = 0;
+	uint8_t *p = buf;
+
+	end = paglen + td->offs;
+	if (td->options & NAND_BBT_SCANEMPTY) {
+		for (i = 0; i < end; i++) {
+			if (p[i] != 0xff)
+				return -1;
+		}
+	}
+	p += end;
+
+	/* Compare the pattern */
+	for (i = 0; i < td->len; i++) {
+		if (p[i] != td->pattern[i])
+			return -1;
+	}
+
+	if (td->options & NAND_BBT_SCANEMPTY) {
+		p += td->len;
+		end += td->len;
+		for (i = end; i < len; i++) {
+			if (*p++ != 0xff)
+				return -1;
+		}
+	}
+	return 0;
+}
+
+/**
+ * check_short_pattern - [GENERIC] check if a pattern is in the buffer
+ * @buf:	the buffer to search
+ * @td:		search pattern descriptor
+ *
+ * Check for a pattern at the given place. Used to search bad block
+ * tables and good / bad block identifiers. Same as check_pattern, but
+ * no optional empty check
+ *
+*/
+static int check_short_pattern(uint8_t *buf, struct nand_bbt_descr *td)
+{
+	int i;
+	uint8_t *p = buf;
+
+	/* Compare the pattern */
+	for (i = 0; i < td->len; i++) {
+		if (p[td->offs + i] != td->pattern[i])
+			return -1;
+	}
+	return 0;
+}
+
+/**
+ * read_bbt - [GENERIC] Read the bad block table starting from page
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @page:	the starting page
+ * @num:	the number of bbt descriptors to read
+ * @bits:	number of bits per block
+ * @offs:	offset in the memory table
+ * @reserved_block_code:	Pattern to identify reserved blocks
+ *
+ * Read the bad block table starting from page.
+ *
+ */
+static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
+		    int bits, int offs, int reserved_block_code)
+{
+	int res, i, j, act = 0;
+	struct nand_chip *this = mtd->priv;
+	size_t retlen, len, totlen;
+	loff_t from;
+	uint8_t msk = (uint8_t) ((1 << bits) - 1);
+
+	totlen = (num * bits) >> 3;
+	from = ((loff_t) page) << this->page_shift;
+
+	while (totlen) {
+		len = min(totlen, (size_t) (1 << this->bbt_erase_shift));
+		res = mtd->read(mtd, from, len, &retlen, buf);
+		if (res < 0) {
+			if (retlen != len) {
+				printk(KERN_INFO "nand_bbt: Error reading bad block table\n");
+				return res;
+			}
+			printk(KERN_WARNING "nand_bbt: ECC error while reading bad block table\n");
+		}
+
+		/* Analyse data */
+		for (i = 0; i < len; i++) {
+			uint8_t dat = buf[i];
+			for (j = 0; j < 8; j += bits, act += 2) {
+				uint8_t tmp = (dat >> j) & msk;
+				if (tmp == msk)
+					continue;
+				if (reserved_block_code && (tmp == reserved_block_code)) {
+					printk(KERN_DEBUG "nand_read_bbt: Reserved block at 0x%08x\n",
+					       ((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
+					this->bbt[offs + (act >> 3)] |= 0x2 << (act & 0x06);
+					mtd->ecc_stats.bbtblocks++;
+					continue;
+				}
+				/* Leave it for now, if its matured we can move this
+				 * message to MTD_DEBUG_LEVEL0 */
+				printk(KERN_DEBUG "nand_read_bbt: Bad block at 0x%08x\n",
+				       ((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
+				/* Factory marked bad or worn out ? */
+				if (tmp == 0)
+					this->bbt[offs + (act >> 3)] |= 0x3 << (act & 0x06);
+				else
+					this->bbt[offs + (act >> 3)] |= 0x1 << (act & 0x06);
+				mtd->ecc_stats.badblocks++;
+			}
+		}
+		totlen -= len;
+		from += len;
+	}
+	return 0;
+}
+
+/**
+ * read_abs_bbt - [GENERIC] Read the bad block table starting at a given page
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @td:		descriptor for the bad block table
+ * @chip:	read the table for a specific chip, -1 read all chips.
+ *		Applies only if NAND_BBT_PERCHIP option is set
+ *
+ * Read the bad block table for all chips starting at a given page
+ * We assume that the bbt bits are in consecutive order.
+*/
+static int read_abs_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *td, int chip)
+{
+	struct nand_chip *this = mtd->priv;
+	int res = 0, i;
+	int bits;
+
+	bits = td->options & NAND_BBT_NRBITS_MSK;
+	if (td->options & NAND_BBT_PERCHIP) {
+		int offs = 0;
+		for (i = 0; i < this->numchips; i++) {
+			if (chip == -1 || chip == i)
+				res = read_bbt (mtd, buf, td->pages[i], this->chipsize >> this->bbt_erase_shift, bits, offs, td->reserved_block_code);
+			if (res)
+				return res;
+			offs += this->chipsize >> (this->bbt_erase_shift + 2);
+		}
+	} else {
+		res = read_bbt (mtd, buf, td->pages[0], mtd->size >> this->bbt_erase_shift, bits, 0, td->reserved_block_code);
+		if (res)
+			return res;
+	}
+	return 0;
+}
+
+/*
+ * Scan read raw data from flash
+ */
+static int scan_read_raw(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
+			 size_t len)
+{
+	struct mtd_oob_ops ops;
+
+	ops.mode = MTD_OOB_RAW;
+	ops.ooboffs = 0;
+	ops.ooblen = mtd->oobsize;
+	ops.oobbuf = buf;
+	ops.datbuf = buf;
+	ops.len = len;
+
+	return mtd->read_oob(mtd, offs, &ops);
+}
+
+/*
+ * Scan write data with oob to flash
+ */
+static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
+			  uint8_t *buf, uint8_t *oob)
+{
+	struct mtd_oob_ops ops;
+
+	ops.mode = MTD_OOB_PLACE;
+	ops.ooboffs = 0;
+	ops.ooblen = mtd->oobsize;
+	ops.datbuf = buf;
+	ops.oobbuf = oob;
+	ops.len = len;
+
+	return mtd->write_oob(mtd, offs, &ops);
+}
+
+/**
+ * read_abs_bbts - [GENERIC] Read the bad block table(s) for all chips starting at a given page
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @td:		descriptor for the bad block table
+ * @md:		descriptor for the bad block table mirror
+ *
+ * Read the bad block table(s) for all chips starting at a given page
+ * We assume that the bbt bits are in consecutive order.
+ *
+*/
+static int read_abs_bbts(struct mtd_info *mtd, uint8_t *buf,
+			 struct nand_bbt_descr *td, struct nand_bbt_descr *md)
+{
+	struct nand_chip *this = mtd->priv;
+
+	/* Read the primary version, if available */
+	if (td->options & NAND_BBT_VERSION) {
+		scan_read_raw(mtd, buf, td->pages[0] << this->page_shift,
+			      mtd->writesize);
+		td->version[0] = buf[mtd->writesize + td->veroffs];
+		printk(KERN_DEBUG "Bad block table at page %d, version 0x%02X\n",
+		       td->pages[0], td->version[0]);
+	}
+
+	/* Read the mirror version, if available */
+	if (md && (md->options & NAND_BBT_VERSION)) {
+		scan_read_raw(mtd, buf, md->pages[0] << this->page_shift,
+			      mtd->writesize);
+		md->version[0] = buf[mtd->writesize + md->veroffs];
+		printk(KERN_DEBUG "Bad block table at page %d, version 0x%02X\n",
+		       md->pages[0], md->version[0]);
+	}
+	return 1;
+}
+
+/*
+ * Scan a given block full
+ */
+static int scan_block_full(struct mtd_info *mtd, struct nand_bbt_descr *bd,
+			   loff_t offs, uint8_t *buf, size_t readlen,
+			   int scanlen, int len)
+{
+	int ret, j;
+
+	ret = scan_read_raw(mtd, buf, offs, readlen);
+	if (ret)
+		return ret;
+
+	for (j = 0; j < len; j++, buf += scanlen) {
+		if (check_pattern(buf, scanlen, mtd->writesize, bd))
+			return 1;
+	}
+	return 0;
+}
+
+/*
+ * Scan a given block partially
+ */
+static int scan_block_fast(struct mtd_info *mtd, struct nand_bbt_descr *bd,
+			   loff_t offs, uint8_t *buf, int len)
+{
+	struct mtd_oob_ops ops;
+	int j, ret;
+
+	ops.ooblen = mtd->oobsize;
+	ops.oobbuf = buf;
+	ops.ooboffs = 0;
+	ops.datbuf = NULL;
+	ops.mode = MTD_OOB_PLACE;
+
+	for (j = 0; j < len; j++) {
+		/*
+		 * Read the full oob until read_oob is fixed to
+		 * handle single byte reads for 16 bit
+		 * buswidth
+		 */
+		ret = mtd->read_oob(mtd, offs, &ops);
+		if (ret)
+			return ret;
+
+		if (check_short_pattern(buf, bd))
+			return 1;
+
+		offs += mtd->writesize;
+	}
+	return 0;
+}
+
+/**
+ * create_bbt - [GENERIC] Create a bad block table by scanning the device
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @bd:		descriptor for the good/bad block search pattern
+ * @chip:	create the table for a specific chip, -1 read all chips.
+ *		Applies only if NAND_BBT_PERCHIP option is set
+ *
+ * Create a bad block table by scanning the device
+ * for the given good/bad block identify pattern
+ */
+static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
+	struct nand_bbt_descr *bd, int chip)
+{
+	struct nand_chip *this = mtd->priv;
+	int i, numblocks, len, scanlen;
+	int startblock;
+	loff_t from;
+	size_t readlen;
+
+	printk(KERN_INFO "Scanning device for bad blocks\n");
+
+	if (bd->options & NAND_BBT_SCANALLPAGES)
+		len = 1 << (this->bbt_erase_shift - this->page_shift);
+	else {
+		if (bd->options & NAND_BBT_SCAN2NDPAGE)
+			len = 2;
+		else
+			len = 1;
+	}
+
+	if (!(bd->options & NAND_BBT_SCANEMPTY)) {
+		/* We need only read few bytes from the OOB area */
+		scanlen = 0;
+		readlen = bd->len;
+	} else {
+		/* Full page content should be read */
+		scanlen = mtd->writesize + mtd->oobsize;
+		readlen = len * mtd->writesize;
+	}
+
+	if (chip == -1) {
+		/* Note that numblocks is 2 * (real numblocks) here, see i+=2
+		 * below as it makes shifting and masking less painful */
+		numblocks = mtd->size >> (this->bbt_erase_shift - 1);
+		startblock = 0;
+		from = 0;
+	} else {
+		if (chip >= this->numchips) {
+			printk(KERN_WARNING "create_bbt(): chipnr (%d) > available chips (%d)\n",
+			       chip + 1, this->numchips);
+			return -EINVAL;
+		}
+		numblocks = this->chipsize >> (this->bbt_erase_shift - 1);
+		startblock = chip * numblocks;
+		numblocks += startblock;
+		from = startblock << (this->bbt_erase_shift - 1);
+	}
+
+	for (i = startblock; i < numblocks;) {
+		int ret;
+
+		if (bd->options & NAND_BBT_SCANALLPAGES)
+			ret = scan_block_full(mtd, bd, from, buf, readlen,
+					      scanlen, len);
+		else
+			ret = scan_block_fast(mtd, bd, from, buf, len);
+
+		if (ret < 0)
+			return ret;
+
+		if (ret) {
+			this->bbt[i >> 3] |= 0x03 << (i & 0x6);
+			printk(KERN_WARNING "Bad eraseblock %d at 0x%08x\n",
+			       i >> 1, (unsigned int)from);
+			mtd->ecc_stats.badblocks++;
+		}
+
+		i += 2;
+		from += (1 << this->bbt_erase_shift);
+	}
+	return 0;
+}
+
+/**
+ * search_bbt - [GENERIC] scan the device for a specific bad block table
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @td:		descriptor for the bad block table
+ *
+ * Read the bad block table by searching for a given ident pattern.
+ * Search is preformed either from the beginning up or from the end of
+ * the device downwards. The search starts always at the start of a
+ * block.
+ * If the option NAND_BBT_PERCHIP is given, each chip is searched
+ * for a bbt, which contains the bad block information of this chip.
+ * This is necessary to provide support for certain DOC devices.
+ *
+ * The bbt ident pattern resides in the oob area of the first page
+ * in a block.
+ */
+static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *td)
+{
+	struct nand_chip *this = mtd->priv;
+	int i, chips;
+	int bits, startblock, block, dir;
+	int scanlen = mtd->writesize + mtd->oobsize;
+	int bbtblocks;
+	int blocktopage = this->bbt_erase_shift - this->page_shift;
+
+	/* Search direction top -> down ? */
+	if (td->options & NAND_BBT_LASTBLOCK) {
+		startblock = (mtd->size >> this->bbt_erase_shift) - 1;
+		dir = -1;
+	} else {
+		startblock = 0;
+		dir = 1;
+	}
+
+	/* Do we have a bbt per chip ? */
+	if (td->options & NAND_BBT_PERCHIP) {
+		chips = this->numchips;
+		bbtblocks = this->chipsize >> this->bbt_erase_shift;
+		startblock &= bbtblocks - 1;
+	} else {
+		chips = 1;
+		bbtblocks = mtd->size >> this->bbt_erase_shift;
+	}
+
+	/* Number of bits for each erase block in the bbt */
+	bits = td->options & NAND_BBT_NRBITS_MSK;
+
+	for (i = 0; i < chips; i++) {
+		/* Reset version information */
+		td->version[i] = 0;
+		td->pages[i] = -1;
+		/* Scan the maximum number of blocks */
+		for (block = 0; block < td->maxblocks; block++) {
+
+			int actblock = startblock + dir * block;
+			loff_t offs = actblock << this->bbt_erase_shift;
+
+			/* Read first page */
+			scan_read_raw(mtd, buf, offs, mtd->writesize);
+			if (!check_pattern(buf, scanlen, mtd->writesize, td)) {
+				td->pages[i] = actblock << blocktopage;
+				if (td->options & NAND_BBT_VERSION) {
+					td->version[i] = buf[mtd->writesize + td->veroffs];
+				}
+				break;
+			}
+		}
+		startblock += this->chipsize >> this->bbt_erase_shift;
+	}
+	/* Check, if we found a bbt for each requested chip */
+	for (i = 0; i < chips; i++) {
+		if (td->pages[i] == -1)
+			printk(KERN_WARNING "Bad block table not found for chip %d\n", i);
+		else
+			printk(KERN_DEBUG "Bad block table found at page %d, version 0x%02X\n", td->pages[i],
+			       td->version[i]);
+	}
+	return 0;
+}
+
+/**
+ * search_read_bbts - [GENERIC] scan the device for bad block table(s)
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @td:		descriptor for the bad block table
+ * @md:		descriptor for the bad block table mirror
+ *
+ * Search and read the bad block table(s)
+*/
+static int search_read_bbts(struct mtd_info *mtd, uint8_t * buf, struct nand_bbt_descr *td, struct nand_bbt_descr *md)
+{
+	/* Search the primary table */
+	search_bbt(mtd, buf, td);
+
+	/* Search the mirror table */
+	if (md)
+		search_bbt(mtd, buf, md);
+
+	/* Force result check */
+	return 1;
+}
+
+/**
+ * write_bbt - [GENERIC] (Re)write the bad block table
+ *
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @td:		descriptor for the bad block table
+ * @md:		descriptor for the bad block table mirror
+ * @chipsel:	selector for a specific chip, -1 for all
+ *
+ * (Re)write the bad block table
+ *
+*/
+static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
+		     struct nand_bbt_descr *td, struct nand_bbt_descr *md,
+		     int chipsel)
+{
+	struct nand_chip *this = mtd->priv;
+	struct erase_info einfo;
+	int i, j, res, chip = 0;
+	int bits, startblock, dir, page, offs, numblocks, sft, sftmsk;
+	int nrchips, bbtoffs, pageoffs, ooboffs;
+	uint8_t msk[4];
+	uint8_t rcode = td->reserved_block_code;
+	size_t retlen, len = 0;
+	loff_t to;
+	struct mtd_oob_ops ops;
+
+	ops.ooblen = mtd->oobsize;
+	ops.ooboffs = 0;
+	ops.datbuf = NULL;
+	ops.mode = MTD_OOB_PLACE;
+
+	if (!rcode)
+		rcode = 0xff;
+	/* Write bad block table per chip rather than per device ? */
+	if (td->options & NAND_BBT_PERCHIP) {
+		numblocks = (int)(this->chipsize >> this->bbt_erase_shift);
+		/* Full device write or specific chip ? */
+		if (chipsel == -1) {
+			nrchips = this->numchips;
+		} else {
+			nrchips = chipsel + 1;
+			chip = chipsel;
+		}
+	} else {
+		numblocks = (int)(mtd->size >> this->bbt_erase_shift);
+		nrchips = 1;
+	}
+
+	/* Loop through the chips */
+	for (; chip < nrchips; chip++) {
+
+		/* There was already a version of the table, reuse the page
+		 * This applies for absolute placement too, as we have the
+		 * page nr. in td->pages.
+		 */
+		if (td->pages[chip] != -1) {
+			page = td->pages[chip];
+			goto write;
+		}
+
+		/* Automatic placement of the bad block table */
+		/* Search direction top -> down ? */
+		if (td->options & NAND_BBT_LASTBLOCK) {
+			startblock = numblocks * (chip + 1) - 1;
+			dir = -1;
+		} else {
+			startblock = chip * numblocks;
+			dir = 1;
+		}
+
+		for (i = 0; i < td->maxblocks; i++) {
+			int block = startblock + dir * i;
+			/* Check, if the block is bad */
+			switch ((this->bbt[block >> 2] >>
+				 (2 * (block & 0x03))) & 0x03) {
+			case 0x01:
+			case 0x03:
+				continue;
+			}
+			page = block <<
+				(this->bbt_erase_shift - this->page_shift);
+			/* Check, if the block is used by the mirror table */
+			if (!md || md->pages[chip] != page)
+				goto write;
+		}
+		printk(KERN_ERR "No space left to write bad block table\n");
+		return -ENOSPC;
+	write:
+
+		/* Set up shift count and masks for the flash table */
+		bits = td->options & NAND_BBT_NRBITS_MSK;
+		msk[2] = ~rcode;
+		switch (bits) {
+		case 1: sft = 3; sftmsk = 0x07; msk[0] = 0x00; msk[1] = 0x01;
+			msk[3] = 0x01;
+			break;
+		case 2: sft = 2; sftmsk = 0x06; msk[0] = 0x00; msk[1] = 0x01;
+			msk[3] = 0x03;
+			break;
+		case 4: sft = 1; sftmsk = 0x04; msk[0] = 0x00; msk[1] = 0x0C;
+			msk[3] = 0x0f;
+			break;
+		case 8: sft = 0; sftmsk = 0x00; msk[0] = 0x00; msk[1] = 0x0F;
+			msk[3] = 0xff;
+			break;
+		default: return -EINVAL;
+		}
+
+		bbtoffs = chip * (numblocks >> 2);
+
+		to = ((loff_t) page) << this->page_shift;
+
+		/* Must we save the block contents ? */
+		if (td->options & NAND_BBT_SAVECONTENT) {
+			/* Make it block aligned */
+			to &= ~((loff_t) ((1 << this->bbt_erase_shift) - 1));
+			len = 1 << this->bbt_erase_shift;
+			res = mtd->read(mtd, to, len, &retlen, buf);
+			if (res < 0) {
+				if (retlen != len) {
+					printk(KERN_INFO "nand_bbt: Error "
+					       "reading block for writing "
+					       "the bad block table\n");
+					return res;
+				}
+				printk(KERN_WARNING "nand_bbt: ECC error "
+				       "while reading block for writing "
+				       "bad block table\n");
+			}
+			/* Read oob data */
+			ops.ooblen = (len >> this->page_shift) * mtd->oobsize;
+			ops.oobbuf = &buf[len];
+			res = mtd->read_oob(mtd, to + mtd->writesize, &ops);
+			if (res < 0 || ops.oobretlen != ops.ooblen)
+				goto outerr;
+
+			/* Calc the byte offset in the buffer */
+			pageoffs = page - (int)(to >> this->page_shift);
+			offs = pageoffs << this->page_shift;
+			/* Preset the bbt area with 0xff */
+			memset(&buf[offs], 0xff, (size_t) (numblocks >> sft));
+			ooboffs = len + (pageoffs * mtd->oobsize);
+
+		} else {
+			/* Calc length */
+			len = (size_t) (numblocks >> sft);
+			/* Make it page aligned ! */
+			len = (len + (mtd->writesize - 1)) &
+				~(mtd->writesize - 1);
+			/* Preset the buffer with 0xff */
+			memset(buf, 0xff, len +
+			       (len >> this->page_shift)* mtd->oobsize);
+			offs = 0;
+			ooboffs = len;
+			/* Pattern is located in oob area of first page */
+			memcpy(&buf[ooboffs + td->offs], td->pattern, td->len);
+		}
+
+		if (td->options & NAND_BBT_VERSION)
+			buf[ooboffs + td->veroffs] = td->version[chip];
+
+		/* walk through the memory table */
+		for (i = 0; i < numblocks;) {
+			uint8_t dat;
+			dat = this->bbt[bbtoffs + (i >> 2)];
+			for (j = 0; j < 4; j++, i++) {
+				int sftcnt = (i << (3 - sft)) & sftmsk;
+				/* Do not store the reserved bbt blocks ! */
+				buf[offs + (i >> sft)] &=
+					~(msk[dat & 0x03] << sftcnt);
+				dat >>= 2;
+			}
+		}
+
+		memset(&einfo, 0, sizeof(einfo));
+		einfo.mtd = mtd;
+		einfo.addr = (unsigned long)to;
+		einfo.len = 1 << this->bbt_erase_shift;
+		res = nand_erase_nand(mtd, &einfo, 1);
+		if (res < 0)
+			goto outerr;
+
+		res = scan_write_bbt(mtd, to, len, buf, &buf[len]);
+		if (res < 0)
+			goto outerr;
+
+		printk(KERN_DEBUG "Bad block table written to 0x%08x, version "
+		       "0x%02X\n", (unsigned int)to, td->version[chip]);
+
+		/* Mark it as used */
+		td->pages[chip] = page;
+	}
+	return 0;
+
+ outerr:
+	printk(KERN_WARNING
+	       "nand_bbt: Error while writing bad block table %d\n", res);
+	return res;
+}
+
+/**
+ * nand_memory_bbt - [GENERIC] create a memory based bad block table
+ * @mtd:	MTD device structure
+ * @bd:		descriptor for the good/bad block search pattern
+ *
+ * The function creates a memory based bbt by scanning the device
+ * for manufacturer / software marked good / bad blocks
+*/
+static inline int nand_memory_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
+{
+	struct nand_chip *this = mtd->priv;
+
+	bd->options &= ~NAND_BBT_SCANEMPTY;
+	return create_bbt(mtd, this->buffers->databuf, bd, -1);
+}
+
+/**
+ * check_create - [GENERIC] create and write bbt(s) if necessary
+ * @mtd:	MTD device structure
+ * @buf:	temporary buffer
+ * @bd:		descriptor for the good/bad block search pattern
+ *
+ * The function checks the results of the previous call to read_bbt
+ * and creates / updates the bbt(s) if necessary
+ * Creation is necessary if no bbt was found for the chip/device
+ * Update is necessary if one of the tables is missing or the
+ * version nr. of one table is less than the other
+*/
+static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *bd)
+{
+	int i, chips, writeops, chipsel, res;
+	struct nand_chip *this = mtd->priv;
+	struct nand_bbt_descr *td = this->bbt_td;
+	struct nand_bbt_descr *md = this->bbt_md;
+	struct nand_bbt_descr *rd, *rd2;
+
+	/* Do we have a bbt per chip ? */
+	if (td->options & NAND_BBT_PERCHIP)
+		chips = this->numchips;
+	else
+		chips = 1;
+
+	for (i = 0; i < chips; i++) {
+		writeops = 0;
+		rd = NULL;
+		rd2 = NULL;
+		/* Per chip or per device ? */
+		chipsel = (td->options & NAND_BBT_PERCHIP) ? i : -1;
+		/* Mirrored table avilable ? */
+		if (md) {
+			if (td->pages[i] == -1 && md->pages[i] == -1) {
+				writeops = 0x03;
+				goto create;
+			}
+
+			if (td->pages[i] == -1) {
+				rd = md;
+				td->version[i] = md->version[i];
+				writeops = 1;
+				goto writecheck;
+			}
+
+			if (md->pages[i] == -1) {
+				rd = td;
+				md->version[i] = td->version[i];
+				writeops = 2;
+				goto writecheck;
+			}
+
+			if (td->version[i] == md->version[i]) {
+				rd = td;
+				if (!(td->options & NAND_BBT_VERSION))
+					rd2 = md;
+				goto writecheck;
+			}
+
+			if (((int8_t) (td->version[i] - md->version[i])) > 0) {
+				rd = td;
+				md->version[i] = td->version[i];
+				writeops = 2;
+			} else {
+				rd = md;
+				td->version[i] = md->version[i];
+				writeops = 1;
+			}
+
+			goto writecheck;
+
+		} else {
+			if (td->pages[i] == -1) {
+				writeops = 0x01;
+				goto create;
+			}
+			rd = td;
+			goto writecheck;
+		}
+	create:
+		/* Create the bad block table by scanning the device ? */
+		if (!(td->options & NAND_BBT_CREATE))
+			continue;
+
+		/* Create the table in memory by scanning the chip(s) */
+		create_bbt(mtd, buf, bd, chipsel);
+
+		td->version[i] = 1;
+		if (md)
+			md->version[i] = 1;
+	writecheck:
+		/* read back first ? */
+		if (rd)
+			read_abs_bbt(mtd, buf, rd, chipsel);
+		/* If they weren't versioned, read both. */
+		if (rd2)
+			read_abs_bbt(mtd, buf, rd2, chipsel);
+
+		/* Write the bad block table to the device ? */
+		if ((writeops & 0x01) && (td->options & NAND_BBT_WRITE)) {
+			res = write_bbt(mtd, buf, td, md, chipsel);
+			if (res < 0)
+				return res;
+		}
+
+		/* Write the mirror bad block table to the device ? */
+		if ((writeops & 0x02) && md && (md->options & NAND_BBT_WRITE)) {
+			res = write_bbt(mtd, buf, md, td, chipsel);
+			if (res < 0)
+				return res;
+		}
+	}
+	return 0;
+}
+
+/**
+ * mark_bbt_regions - [GENERIC] mark the bad block table regions
+ * @mtd:	MTD device structure
+ * @td:		bad block table descriptor
+ *
+ * The bad block table regions are marked as "bad" to prevent
+ * accidental erasures / writes. The regions are identified by
+ * the mark 0x02.
+*/
+static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
+{
+	struct nand_chip *this = mtd->priv;
+	int i, j, chips, block, nrblocks, update;
+	uint8_t oldval, newval;
+
+	/* Do we have a bbt per chip ? */
+	if (td->options & NAND_BBT_PERCHIP) {
+		chips = this->numchips;
+		nrblocks = (int)(this->chipsize >> this->bbt_erase_shift);
+	} else {
+		chips = 1;
+		nrblocks = (int)(mtd->size >> this->bbt_erase_shift);
+	}
+
+	for (i = 0; i < chips; i++) {
+		if ((td->options & NAND_BBT_ABSPAGE) ||
+		    !(td->options & NAND_BBT_WRITE)) {
+			if (td->pages[i] == -1)
+				continue;
+			block = td->pages[i] >> (this->bbt_erase_shift - this->page_shift);
+			block <<= 1;
+			oldval = this->bbt[(block >> 3)];
+			newval = oldval | (0x2 << (block & 0x06));
+			this->bbt[(block >> 3)] = newval;
+			if ((oldval != newval) && td->reserved_block_code)
+				nand_update_bbt(mtd, block << (this->bbt_erase_shift - 1));
+			continue;
+		}
+		update = 0;
+		if (td->options & NAND_BBT_LASTBLOCK)
+			block = ((i + 1) * nrblocks) - td->maxblocks;
+		else
+			block = i * nrblocks;
+		block <<= 1;
+		for (j = 0; j < td->maxblocks; j++) {
+			oldval = this->bbt[(block >> 3)];
+			newval = oldval | (0x2 << (block & 0x06));
+			this->bbt[(block >> 3)] = newval;
+			if (oldval != newval)
+				update = 1;
+			block += 2;
+		}
+		/* If we want reserved blocks to be recorded to flash, and some
+		   new ones have been marked, then we need to update the stored
+		   bbts.  This should only happen once. */
+		if (update && td->reserved_block_code)
+			nand_update_bbt(mtd, (block - 2) << (this->bbt_erase_shift - 1));
+	}
+}
+
+/**
+ * nand_scan_bbt - [NAND Interface] scan, find, read and maybe create bad block table(s)
+ * @mtd:	MTD device structure
+ * @bd:		descriptor for the good/bad block search pattern
+ *
+ * The function checks, if a bad block table(s) is/are already
+ * available. If not it scans the device for manufacturer
+ * marked good / bad blocks and writes the bad block table(s) to
+ * the selected place.
+ *
+ * The bad block table memory is allocated here. It must be freed
+ * by calling the nand_free_bbt function.
+ *
+*/
+int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
+{
+	struct nand_chip *this = mtd->priv;
+	int len, res = 0;
+	uint8_t *buf;
+	struct nand_bbt_descr *td = this->bbt_td;
+	struct nand_bbt_descr *md = this->bbt_md;
+
+	len = mtd->size >> (this->bbt_erase_shift + 2);
+	/* Allocate memory (2bit per block) and clear the memory bad block table */
+	this->bbt = kzalloc(len, GFP_KERNEL);
+	if (!this->bbt) {
+		printk(KERN_ERR "nand_scan_bbt: Out of memory\n");
+		return -ENOMEM;
+	}
+
+	/* If no primary table decriptor is given, scan the device
+	 * to build a memory based bad block table
+	 */
+	if (!td) {
+		if ((res = nand_memory_bbt(mtd, bd))) {
+			printk(KERN_ERR "nand_bbt: Can't scan flash and build the RAM-based BBT\n");
+			kfree(this->bbt);
+			this->bbt = NULL;
+		}
+		return res;
+	}
+
+	/* Allocate a temporary buffer for one eraseblock incl. oob */
+	len = (1 << this->bbt_erase_shift);
+	len += (len >> this->page_shift) * mtd->oobsize;
+	buf = vmalloc(len);
+	if (!buf) {
+		printk(KERN_ERR "nand_bbt: Out of memory\n");
+		kfree(this->bbt);
+		this->bbt = NULL;
+		return -ENOMEM;
+	}
+
+	/* Is the bbt at a given page ? */
+	if (td->options & NAND_BBT_ABSPAGE) {
+		res = read_abs_bbts(mtd, buf, td, md);
+	} else {
+		/* Search the bad block table using a pattern in oob */
+		res = search_read_bbts(mtd, buf, td, md);
+	}
+
+	if (res)
+		res = check_create(mtd, buf, bd);
+
+	/* Prevent the bbt regions from erasing / writing */
+	mark_bbt_region(mtd, td);
+	if (md)
+		mark_bbt_region(mtd, md);
+
+	vfree(buf);
+	return res;
+}
+
+/**
+ * nand_update_bbt - [NAND Interface] update bad block table(s)
+ * @mtd:	MTD device structure
+ * @offs:	the offset of the newly marked block
+ *
+ * The function updates the bad block table(s)
+*/
+int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
+{
+	struct nand_chip *this = mtd->priv;
+	int len, res = 0, writeops = 0;
+	int chip, chipsel;
+	uint8_t *buf;
+	struct nand_bbt_descr *td = this->bbt_td;
+	struct nand_bbt_descr *md = this->bbt_md;
+
+	if (!this->bbt || !td)
+		return -EINVAL;
+
+	len = mtd->size >> (this->bbt_erase_shift + 2);
+	/* Allocate a temporary buffer for one eraseblock incl. oob */
+	len = (1 << this->bbt_erase_shift);
+	len += (len >> this->page_shift) * mtd->oobsize;
+	buf = kmalloc(len, GFP_KERNEL);
+	if (!buf) {
+		printk(KERN_ERR "nand_update_bbt: Out of memory\n");
+		return -ENOMEM;
+	}
+
+	writeops = md != NULL ? 0x03 : 0x01;
+
+	/* Do we have a bbt per chip ? */
+	if (td->options & NAND_BBT_PERCHIP) {
+		chip = (int)(offs >> this->chip_shift);
+		chipsel = chip;
+	} else {
+		chip = 0;
+		chipsel = -1;
+	}
+
+	td->version[chip]++;
+	if (md)
+		md->version[chip]++;
+
+	/* Write the bad block table to the device ? */
+	if ((writeops & 0x01) && (td->options & NAND_BBT_WRITE)) {
+		res = write_bbt(mtd, buf, td, md, chipsel);
+		if (res < 0)
+			goto out;
+	}
+	/* Write the mirror bad block table to the device ? */
+	if ((writeops & 0x02) && md && (md->options & NAND_BBT_WRITE)) {
+		res = write_bbt(mtd, buf, md, td, chipsel);
+	}
+
+ out:
+	kfree(buf);
+	return res;
+}
+
+/* Define some generic bad / good block scan pattern which are used
+ * while scanning a device for factory marked good / bad blocks. */
+static uint8_t scan_ff_pattern[] = { 0xff, 0xff };
+
+static struct nand_bbt_descr smallpage_memorybased = {
+	.options = NAND_BBT_SCAN2NDPAGE,
+	.offs = 5,
+	.len = 1,
+	.pattern = scan_ff_pattern
+};
+
+static struct nand_bbt_descr largepage_memorybased = {
+	.options = 0,
+	.offs = 0,
+	.len = 2,
+	.pattern = scan_ff_pattern
+};
+
+static struct nand_bbt_descr smallpage_flashbased = {
+	.options = NAND_BBT_SCAN2NDPAGE,
+	.offs = 5,
+	.len = 1,
+	.pattern = scan_ff_pattern
+};
+
+static struct nand_bbt_descr largepage_flashbased = {
+	.options = NAND_BBT_SCAN2NDPAGE,
+	.offs = 0,
+	.len = 2,
+	.pattern = scan_ff_pattern
+};
+
+static uint8_t scan_agand_pattern[] = { 0x1C, 0x71, 0xC7, 0x1C, 0x71, 0xC7 };
+
+static struct nand_bbt_descr agand_flashbased = {
+	.options = NAND_BBT_SCANEMPTY | NAND_BBT_SCANALLPAGES,
+	.offs = 0x20,
+	.len = 6,
+	.pattern = scan_agand_pattern
+};
+
+/* Generic flash bbt decriptors
+*/
+static uint8_t bbt_pattern[] = {'B', 'b', 't', '0' };
+static uint8_t mirror_pattern[] = {'1', 't', 'b', 'B' };
+
+static struct nand_bbt_descr bbt_main_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs =	8,
+	.len = 4,
+	.veroffs = 12,
+	.maxblocks = 4,
+	.pattern = bbt_pattern
+};
+
+static struct nand_bbt_descr bbt_mirror_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs =	8,
+	.len = 4,
+	.veroffs = 12,
+	.maxblocks = 4,
+	.pattern = mirror_pattern
+};
+
+/**
+ * nand_default_bbt - [NAND Interface] Select a default bad block table for the device
+ * @mtd:	MTD device structure
+ *
+ * This function selects the default bad block table
+ * support for the device and calls the nand_scan_bbt function
+ *
+*/
+int nand_default_bbt(struct mtd_info *mtd)
+{
+	struct nand_chip *this = mtd->priv;
+
+	/* Default for AG-AND. We must use a flash based
+	 * bad block table as the devices have factory marked
+	 * _good_ blocks. Erasing those blocks leads to loss
+	 * of the good / bad information, so we _must_ store
+	 * this information in a good / bad table during
+	 * startup
+	 */
+	if (this->options & NAND_IS_AND) {
+		/* Use the default pattern descriptors */
+		if (!this->bbt_td) {
+			this->bbt_td = &bbt_main_descr;
+			this->bbt_md = &bbt_mirror_descr;
+		}
+		this->options |= NAND_USE_FLASH_BBT;
+		return nand_scan_bbt(mtd, &agand_flashbased);
+	}
+
+	/* Is a flash based bad block table requested ? */
+	if (this->options & NAND_USE_FLASH_BBT) {
+		/* Use the default pattern descriptors */
+		if (!this->bbt_td) {
+			this->bbt_td = &bbt_main_descr;
+			this->bbt_md = &bbt_mirror_descr;
+		}
+		if (!this->badblock_pattern) {
+			this->badblock_pattern = (mtd->writesize > 512) ? &largepage_flashbased : &smallpage_flashbased;
+		}
+	} else {
+		this->bbt_td = NULL;
+		this->bbt_md = NULL;
+		if (!this->badblock_pattern) {
+			this->badblock_pattern = (mtd->writesize > 512) ?
+			    &largepage_memorybased : &smallpage_memorybased;
+		}
+	}
+	return nand_scan_bbt(mtd, this->badblock_pattern);
+}
+
+/**
+ * nand_isbad_bbt - [NAND Interface] Check if a block is bad
+ * @mtd:	MTD device structure
+ * @offs:	offset in the device
+ * @allowbbt:	allow access to bad block table region
+ *
+*/
+int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt)
+{
+	struct nand_chip *this = mtd->priv;
+	int block;
+	uint8_t res;
+
+	/* Get block number * 2 */
+	block = (int)(offs >> (this->bbt_erase_shift - 1));
+	res = (this->bbt[block >> 3] >> (block & 0x06)) & 0x03;
+
+	MTD_DEBUG(MTD_DEBUG_LEVEL2, "nand_isbad_bbt(): bbt info for offs 0x%08x: (block %d) 0x%02x\n",
+	      (unsigned int)offs, block >> 1, res);
+
+	switch ((int)res) {
+	case 0x00:
+		return 0;
+	case 0x01:
+		return 1;
+	case 0x02:
+		return allowbbt ? 0 : 1;
+	}
+	return 1;
+}
+
+EXPORT_SYMBOL(nand_scan_bbt);
+EXPORT_SYMBOL(nand_default_bbt);
+
+#endif /* DOXYGEN_SHOULD_SKIP_THIS */
diff --git a/drivers/mtd/nand/nand_ecc.c b/drivers/mtd/nand/nand_ecc.c
new file mode 100644
index 0000000..266d573
--- /dev/null
+++ b/drivers/mtd/nand/nand_ecc.c
@@ -0,0 +1,198 @@
+/*
+ * This file contains an ECC algorithm from Toshiba that detects and
+ * corrects 1 bit errors in a 256 byte block of data.
+ *
+ * drivers/mtd/nand/nand_ecc.c
+ *
+ * Copyright (C) 2000-2004 Steven J. Hill (sjhill@realitydiluted.com)
+ *                         Toshiba America Electronics Components, Inc.
+ *
+ * Copyright (C) 2006 Thomas Gleixner <tglx@linutronix.de>
+ *
+ * $Id: nand_ecc.c,v 1.15 2005/11/07 11:14:30 gleixner Exp $
+ *
+ * This file is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the
+ * Free Software Foundation; either version 2 or (at your option) any
+ * later version.
+ *
+ * This file is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
+ * for more details.
+ *
+ * You should have received a copy of the GNU General Public License along
+ * with this file; if not, write to the Free Software Foundation, Inc.,
+ * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
+ *
+ * As a special exception, if other files instantiate templates or use
+ * macros or inline functions from these files, or you compile these
+ * files and link them with other works to produce a work based on these
+ * files, these files do not by themselves cause the resulting work to be
+ * covered by the GNU General Public License. However the source code for
+ * these files must still be made available in accordance with section (3)
+ * of the GNU General Public License.
+ *
+ * This exception does not invalidate any other reasons why a work based on
+ * this file might be covered by the GNU General Public License.
+ */
+
+#include <linux/types.h>
+#include <common.h>
+#include <errno.h>
+#include <linux/mtd/nand_ecc.h>
+
+/*
+ * Pre-calculated 256-way 1 byte column parity
+ */
+static const u_char nand_ecc_precalc_table[] = {
+	0x00, 0x55, 0x56, 0x03, 0x59, 0x0c, 0x0f, 0x5a, 0x5a, 0x0f, 0x0c, 0x59, 0x03, 0x56, 0x55, 0x00,
+	0x65, 0x30, 0x33, 0x66, 0x3c, 0x69, 0x6a, 0x3f, 0x3f, 0x6a, 0x69, 0x3c, 0x66, 0x33, 0x30, 0x65,
+	0x66, 0x33, 0x30, 0x65, 0x3f, 0x6a, 0x69, 0x3c, 0x3c, 0x69, 0x6a, 0x3f, 0x65, 0x30, 0x33, 0x66,
+	0x03, 0x56, 0x55, 0x00, 0x5a, 0x0f, 0x0c, 0x59, 0x59, 0x0c, 0x0f, 0x5a, 0x00, 0x55, 0x56, 0x03,
+	0x69, 0x3c, 0x3f, 0x6a, 0x30, 0x65, 0x66, 0x33, 0x33, 0x66, 0x65, 0x30, 0x6a, 0x3f, 0x3c, 0x69,
+	0x0c, 0x59, 0x5a, 0x0f, 0x55, 0x00, 0x03, 0x56, 0x56, 0x03, 0x00, 0x55, 0x0f, 0x5a, 0x59, 0x0c,
+	0x0f, 0x5a, 0x59, 0x0c, 0x56, 0x03, 0x00, 0x55, 0x55, 0x00, 0x03, 0x56, 0x0c, 0x59, 0x5a, 0x0f,
+	0x6a, 0x3f, 0x3c, 0x69, 0x33, 0x66, 0x65, 0x30, 0x30, 0x65, 0x66, 0x33, 0x69, 0x3c, 0x3f, 0x6a,
+	0x6a, 0x3f, 0x3c, 0x69, 0x33, 0x66, 0x65, 0x30, 0x30, 0x65, 0x66, 0x33, 0x69, 0x3c, 0x3f, 0x6a,
+	0x0f, 0x5a, 0x59, 0x0c, 0x56, 0x03, 0x00, 0x55, 0x55, 0x00, 0x03, 0x56, 0x0c, 0x59, 0x5a, 0x0f,
+	0x0c, 0x59, 0x5a, 0x0f, 0x55, 0x00, 0x03, 0x56, 0x56, 0x03, 0x00, 0x55, 0x0f, 0x5a, 0x59, 0x0c,
+	0x69, 0x3c, 0x3f, 0x6a, 0x30, 0x65, 0x66, 0x33, 0x33, 0x66, 0x65, 0x30, 0x6a, 0x3f, 0x3c, 0x69,
+	0x03, 0x56, 0x55, 0x00, 0x5a, 0x0f, 0x0c, 0x59, 0x59, 0x0c, 0x0f, 0x5a, 0x00, 0x55, 0x56, 0x03,
+	0x66, 0x33, 0x30, 0x65, 0x3f, 0x6a, 0x69, 0x3c, 0x3c, 0x69, 0x6a, 0x3f, 0x65, 0x30, 0x33, 0x66,
+	0x65, 0x30, 0x33, 0x66, 0x3c, 0x69, 0x6a, 0x3f, 0x3f, 0x6a, 0x69, 0x3c, 0x66, 0x33, 0x30, 0x65,
+	0x00, 0x55, 0x56, 0x03, 0x59, 0x0c, 0x0f, 0x5a, 0x5a, 0x0f, 0x0c, 0x59, 0x03, 0x56, 0x55, 0x00
+};
+
+/**
+ * nand_calculate_ecc - [NAND Interface] Calculate 3-byte ECC for 256-byte block
+ * @mtd:	MTD block structure
+ * @dat:	raw data
+ * @ecc_code:	buffer for ECC
+ */
+int nand_calculate_ecc(struct mtd_info *mtd, const u_char *dat,
+		       u_char *ecc_code)
+{
+	uint8_t idx, reg1, reg2, reg3, tmp1, tmp2;
+	int i;
+
+	/* Initialize variables */
+	reg1 = reg2 = reg3 = 0;
+
+	/* Build up column parity */
+	for(i = 0; i < 256; i++) {
+		/* Get CP0 - CP5 from table */
+		idx = nand_ecc_precalc_table[*dat++];
+		reg1 ^= (idx & 0x3f);
+
+		/* All bit XOR = 1 ? */
+		if (idx & 0x40) {
+			reg3 ^= (uint8_t) i;
+			reg2 ^= ~((uint8_t) i);
+		}
+	}
+
+	/* Create non-inverted ECC code from line parity */
+	tmp1  = (reg3 & 0x80) >> 0; /* B7 -> B7 */
+	tmp1 |= (reg2 & 0x80) >> 1; /* B7 -> B6 */
+	tmp1 |= (reg3 & 0x40) >> 1; /* B6 -> B5 */
+	tmp1 |= (reg2 & 0x40) >> 2; /* B6 -> B4 */
+	tmp1 |= (reg3 & 0x20) >> 2; /* B5 -> B3 */
+	tmp1 |= (reg2 & 0x20) >> 3; /* B5 -> B2 */
+	tmp1 |= (reg3 & 0x10) >> 3; /* B4 -> B1 */
+	tmp1 |= (reg2 & 0x10) >> 4; /* B4 -> B0 */
+
+	tmp2  = (reg3 & 0x08) << 4; /* B3 -> B7 */
+	tmp2 |= (reg2 & 0x08) << 3; /* B3 -> B6 */
+	tmp2 |= (reg3 & 0x04) << 3; /* B2 -> B5 */
+	tmp2 |= (reg2 & 0x04) << 2; /* B2 -> B4 */
+	tmp2 |= (reg3 & 0x02) << 2; /* B1 -> B3 */
+	tmp2 |= (reg2 & 0x02) << 1; /* B1 -> B2 */
+	tmp2 |= (reg3 & 0x01) << 1; /* B0 -> B1 */
+	tmp2 |= (reg2 & 0x01) << 0; /* B7 -> B0 */
+
+	/* Calculate final ECC code */
+#ifdef CONFIG_MTD_NAND_ECC_SMC
+	ecc_code[0] = ~tmp2;
+	ecc_code[1] = ~tmp1;
+#else
+	ecc_code[0] = ~tmp1;
+	ecc_code[1] = ~tmp2;
+#endif
+	ecc_code[2] = ((~reg1) << 2) | 0x03;
+
+	return 0;
+}
+EXPORT_SYMBOL(nand_calculate_ecc);
+
+static inline int countbits(uint32_t byte)
+{
+	int res = 0;
+
+	for (;byte; byte >>= 1)
+		res += byte & 0x01;
+	return res;
+}
+
+/**
+ * nand_correct_data - [NAND Interface] Detect and correct bit error(s)
+ * @mtd:	MTD block structure
+ * @dat:	raw data read from the chip
+ * @read_ecc:	ECC from the chip
+ * @calc_ecc:	the ECC calculated from raw data
+ *
+ * Detect and correct a 1 bit error for 256 byte block
+ */
+int nand_correct_data(struct mtd_info *mtd, u_char *dat,
+		      u_char *read_ecc, u_char *calc_ecc)
+{
+	uint8_t s0, s1, s2;
+
+#ifdef CONFIG_MTD_NAND_ECC_SMC
+	s0 = calc_ecc[0] ^ read_ecc[0];
+	s1 = calc_ecc[1] ^ read_ecc[1];
+	s2 = calc_ecc[2] ^ read_ecc[2];
+#else
+	s1 = calc_ecc[0] ^ read_ecc[0];
+	s0 = calc_ecc[1] ^ read_ecc[1];
+	s2 = calc_ecc[2] ^ read_ecc[2];
+#endif
+	if ((s0 | s1 | s2) == 0)
+		return 0;
+
+	/* Check for a single bit error */
+	if( ((s0 ^ (s0 >> 1)) & 0x55) == 0x55 &&
+	    ((s1 ^ (s1 >> 1)) & 0x55) == 0x55 &&
+	    ((s2 ^ (s2 >> 1)) & 0x54) == 0x54) {
+
+		uint32_t byteoffs, bitnum;
+
+		byteoffs = (s1 << 0) & 0x80;
+		byteoffs |= (s1 << 1) & 0x40;
+		byteoffs |= (s1 << 2) & 0x20;
+		byteoffs |= (s1 << 3) & 0x10;
+
+		byteoffs |= (s0 >> 4) & 0x08;
+		byteoffs |= (s0 >> 3) & 0x04;
+		byteoffs |= (s0 >> 2) & 0x02;
+		byteoffs |= (s0 >> 1) & 0x01;
+
+		bitnum = (s2 >> 5) & 0x04;
+		bitnum |= (s2 >> 4) & 0x02;
+		bitnum |= (s2 >> 3) & 0x01;
+
+		dat[byteoffs] ^= (1 << bitnum);
+
+		return 1;
+	}
+
+	if(countbits(s0 | ((uint32_t)s1 << 8) | ((uint32_t)s2 <<16)) == 1)
+		return 1;
+
+	return -EBADMSG;
+}
+EXPORT_SYMBOL(nand_correct_data);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Steven J. Hill <sjhill@realitydiluted.com>");
+MODULE_DESCRIPTION("Generic NAND ECC support");
diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
new file mode 100644
index 0000000..f95975c
--- /dev/null
+++ b/drivers/mtd/nand/nand_ids.c
@@ -0,0 +1,153 @@
+/*
+ *  drivers/mtd/nandids.c
+ *
+ *  Copyright (C) 2002 Thomas Gleixner (tglx@linutronix.de)
+ *
+ * $Id: nand_ids.c,v 1.16 2005/11/07 11:14:31 gleixner Exp $
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <common.h>
+#include <linux/mtd/nand.h>
+/*
+*	Chip ID list
+*
+*	Name. ID code, pagesize, chipsize in MegaByte, eraseblock size,
+*	options
+*
+*	Pagesize; 0, 256, 512
+*	0	get this information from the extended chip ID
++	256	256 Byte page size
+*	512	512 Byte page size
+*/
+struct nand_flash_dev nand_flash_ids[] = {
+
+#ifdef CONFIG_MTD_NAND_MUSEUM_IDS
+	{"NAND 1MiB 5V 8-bit",		0x6e, 256, 1, 0x1000, 0},
+	{"NAND 2MiB 5V 8-bit",		0x64, 256, 2, 0x1000, 0},
+	{"NAND 4MiB 5V 8-bit",		0x6b, 512, 4, 0x2000, 0},
+	{"NAND 1MiB 3,3V 8-bit",	0xe8, 256, 1, 0x1000, 0},
+	{"NAND 1MiB 3,3V 8-bit",	0xec, 256, 1, 0x1000, 0},
+	{"NAND 2MiB 3,3V 8-bit",	0xea, 256, 2, 0x1000, 0},
+	{"NAND 4MiB 3,3V 8-bit",	0xd5, 512, 4, 0x2000, 0},
+	{"NAND 4MiB 3,3V 8-bit",	0xe3, 512, 4, 0x2000, 0},
+	{"NAND 4MiB 3,3V 8-bit",	0xe5, 512, 4, 0x2000, 0},
+	{"NAND 8MiB 3,3V 8-bit",	0xd6, 512, 8, 0x2000, 0},
+
+	{"NAND 8MiB 1,8V 8-bit",	0x39, 512, 8, 0x2000, 0},
+	{"NAND 8MiB 3,3V 8-bit",	0xe6, 512, 8, 0x2000, 0},
+	{"NAND 8MiB 1,8V 16-bit",	0x49, 512, 8, 0x2000, NAND_BUSWIDTH_16},
+	{"NAND 8MiB 3,3V 16-bit",	0x59, 512, 8, 0x2000, NAND_BUSWIDTH_16},
+#endif
+
+	{"NAND 16MiB 1,8V 8-bit",	0x33, 512, 16, 0x4000, 0},
+	{"NAND 16MiB 3,3V 8-bit",	0x73, 512, 16, 0x4000, 0},
+	{"NAND 16MiB 1,8V 16-bit",	0x43, 512, 16, 0x4000, NAND_BUSWIDTH_16},
+	{"NAND 16MiB 3,3V 16-bit",	0x53, 512, 16, 0x4000, NAND_BUSWIDTH_16},
+
+	{"NAND 32MiB 1,8V 8-bit",	0x35, 512, 32, 0x4000, 0},
+	{"NAND 32MiB 3,3V 8-bit",	0x75, 512, 32, 0x4000, 0},
+	{"NAND 32MiB 1,8V 16-bit",	0x45, 512, 32, 0x4000, NAND_BUSWIDTH_16},
+	{"NAND 32MiB 3,3V 16-bit",	0x55, 512, 32, 0x4000, NAND_BUSWIDTH_16},
+
+	{"NAND 64MiB 1,8V 8-bit",	0x36, 512, 64, 0x4000, 0},
+	{"NAND 64MiB 3,3V 8-bit",	0x76, 512, 64, 0x4000, 0},
+	{"NAND 64MiB 1,8V 16-bit",	0x46, 512, 64, 0x4000, NAND_BUSWIDTH_16},
+	{"NAND 64MiB 3,3V 16-bit",	0x56, 512, 64, 0x4000, NAND_BUSWIDTH_16},
+
+	{"NAND 128MiB 1,8V 8-bit",	0x78, 512, 128, 0x4000, 0},
+	{"NAND 128MiB 1,8V 8-bit",	0x39, 512, 128, 0x4000, 0},
+	{"NAND 128MiB 3,3V 8-bit",	0x79, 512, 128, 0x4000, 0},
+	{"NAND 128MiB 1,8V 16-bit",	0x72, 512, 128, 0x4000, NAND_BUSWIDTH_16},
+	{"NAND 128MiB 1,8V 16-bit",	0x49, 512, 128, 0x4000, NAND_BUSWIDTH_16},
+	{"NAND 128MiB 3,3V 16-bit",	0x74, 512, 128, 0x4000, NAND_BUSWIDTH_16},
+	{"NAND 128MiB 3,3V 16-bit",	0x59, 512, 128, 0x4000, NAND_BUSWIDTH_16},
+
+	{"NAND 256MiB 3,3V 8-bit",	0x71, 512, 256, 0x4000, 0},
+
+	/*
+	 * These are the new chips with large page size. The pagesize and the
+	 * erasesize is determined from the extended id bytes
+	 */
+#define LP_OPTIONS (NAND_SAMSUNG_LP_OPTIONS | NAND_NO_READRDY | NAND_NO_AUTOINCR)
+#define LP_OPTIONS16 (LP_OPTIONS | NAND_BUSWIDTH_16)
+
+	/*512 Megabit */
+	{"NAND 64MiB 1,8V 8-bit",	0xA2, 0,  64, 0, LP_OPTIONS},
+	{"NAND 64MiB 3,3V 8-bit",	0xF2, 0,  64, 0, LP_OPTIONS},
+	{"NAND 64MiB 1,8V 16-bit",	0xB2, 0,  64, 0, LP_OPTIONS16},
+	{"NAND 64MiB 3,3V 16-bit",	0xC2, 0,  64, 0, LP_OPTIONS16},
+
+	/* 1 Gigabit */
+	{"NAND 128MiB 1,8V 8-bit",	0xA1, 0, 128, 0, LP_OPTIONS},
+	{"NAND 128MiB 3,3V 8-bit",	0xF1, 0, 128, 0, LP_OPTIONS},
+	{"NAND 128MiB 1,8V 16-bit",	0xB1, 0, 128, 0, LP_OPTIONS16},
+	{"NAND 128MiB 3,3V 16-bit",	0xC1, 0, 128, 0, LP_OPTIONS16},
+
+	/* 2 Gigabit */
+	{"NAND 256MiB 1,8V 8-bit",	0xAA, 0, 256, 0, LP_OPTIONS},
+	{"NAND 256MiB 3,3V 8-bit",	0xDA, 0, 256, 0, LP_OPTIONS},
+	{"NAND 256MiB 1,8V 16-bit",	0xBA, 0, 256, 0, LP_OPTIONS16},
+	{"NAND 256MiB 3,3V 16-bit",	0xCA, 0, 256, 0, LP_OPTIONS16},
+
+	/* 4 Gigabit */
+	{"NAND 512MiB 1,8V 8-bit",	0xAC, 0, 512, 0, LP_OPTIONS},
+	{"NAND 512MiB 3,3V 8-bit",	0xDC, 0, 512, 0, LP_OPTIONS},
+	{"NAND 512MiB 1,8V 16-bit",	0xBC, 0, 512, 0, LP_OPTIONS16},
+	{"NAND 512MiB 3,3V 16-bit",	0xCC, 0, 512, 0, LP_OPTIONS16},
+
+	/* 8 Gigabit */
+	{"NAND 1GiB 1,8V 8-bit",	0xA3, 0, 1024, 0, LP_OPTIONS},
+	{"NAND 1GiB 3,3V 8-bit",	0xD3, 0, 1024, 0, LP_OPTIONS},
+	{"NAND 1GiB 1,8V 16-bit",	0xB3, 0, 1024, 0, LP_OPTIONS16},
+	{"NAND 1GiB 3,3V 16-bit",	0xC3, 0, 1024, 0, LP_OPTIONS16},
+
+	/* 16 Gigabit */
+	{"NAND 2GiB 1,8V 8-bit",	0xA5, 0, 2048, 0, LP_OPTIONS},
+	{"NAND 2GiB 3,3V 8-bit",	0xD5, 0, 2048, 0, LP_OPTIONS},
+	{"NAND 2GiB 1,8V 16-bit",	0xB5, 0, 2048, 0, LP_OPTIONS16},
+	{"NAND 2GiB 3,3V 16-bit",	0xC5, 0, 2048, 0, LP_OPTIONS16},
+
+	/*
+	 * Renesas AND 1 Gigabit. Those chips do not support extended id and
+	 * have a strange page/block layout !  The chosen minimum erasesize is
+	 * 4 * 2 * 2048 = 16384 Byte, as those chips have an array of 4 page
+	 * planes 1 block = 2 pages, but due to plane arrangement the blocks
+	 * 0-3 consists of page 0 + 4,1 + 5, 2 + 6, 3 + 7 Anyway JFFS2 would
+	 * increase the eraseblock size so we chose a combined one which can be
+	 * erased in one go There are more speed improvements for reads and
+	 * writes possible, but not implemented now
+	 */
+	{"AND 128MiB 3,3V 8-bit",	0x01, 2048, 128, 0x4000,
+	 NAND_IS_AND | NAND_NO_AUTOINCR |NAND_NO_READRDY | NAND_4PAGE_ARRAY |
+	 BBT_AUTO_REFRESH
+	},
+
+	{NULL,}
+};
+
+/*
+*	Manufacturer ID list
+*/
+struct nand_manufacturers nand_manuf_ids[] = {
+	{NAND_MFR_TOSHIBA, "Toshiba"},
+	{NAND_MFR_SAMSUNG, "Samsung"},
+	{NAND_MFR_FUJITSU, "Fujitsu"},
+	{NAND_MFR_NATIONAL, "National"},
+	{NAND_MFR_RENESAS, "Renesas"},
+	{NAND_MFR_STMICRO, "ST Micro"},
+	{NAND_MFR_HYNIX, "Hynix"},
+	{NAND_MFR_MICRON, "Micron"},
+	{NAND_MFR_AMD, "AMD"},
+	{0x0, "Unknown"}
+};
+
+EXPORT_SYMBOL(nand_manuf_ids);
+EXPORT_SYMBOL(nand_flash_ids);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Thomas Gleixner <tglx@linutronix.de>");
+MODULE_DESCRIPTION("Nand device & manufacturer IDs");
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
new file mode 100644
index 0000000..74cdf10
--- /dev/null
+++ b/drivers/mtd/nand/nand_imx.c
@@ -0,0 +1,1210 @@
+/*
+ * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
+ * Copyright 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ */
+
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/*
+ * MX21 Hardware contains a bug which causes HW ECC to fail for two
+ * consecutive read pages containing 1bit Errors (See MX21 Chip Erata,
+ * Erratum 16). Use software ECC for this chip.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <init.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <mach/generic.h>
+#include <mach/imx-nand.h>
+#include <mach/imx-regs.h>
+#include <asm/io.h>
+#include <errno.h>
+
+#define DVR_VER "2.0"
+
+#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
+#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
+
+/*
+ * Addresses for NFC registers
+ */
+#define NFC_BUF_SIZE		0xE00
+#define NFC_BUF_ADDR		0xE04
+#define NFC_FLASH_ADDR		0xE06
+#define NFC_FLASH_CMD		0xE08
+#define NFC_CONFIG		0xE0A
+#define NFC_ECC_STATUS_RESULT	0xE0C
+#define NFC_RSLTMAIN_AREA	0xE0E
+#define NFC_RSLTSPARE_AREA	0xE10
+#define NFC_SPAS		0xe10
+#define NFC_WRPROT		0xE12
+#define NFC_V1_UNLOCKSTART_BLKADDR	0xe14
+#define NFC_V1_UNLOCKEND_BLKADDR	0xe16
+#define NFC_V21_UNLOCKSTART_BLKADDR	0xe20
+#define NFC_V21_UNLOCKEND_BLKADDR	0xe22
+#define NFC_NF_WRPRST		0xE18
+#define NFC_CONFIG1		0xE1A
+#define NFC_CONFIG2		0xE1C
+
+/*
+ * Addresses for NFC RAM BUFFER Main area 0
+ */
+#define MAIN_AREA0		0x000
+#define MAIN_AREA1		0x200
+#define MAIN_AREA2		0x400
+#define MAIN_AREA3		0x600
+
+/*
+ * Addresses for NFC SPARE BUFFER Spare area 0
+ */
+#define SPARE_AREA0		0x800
+#define SPARE_AREA1		0x810
+#define SPARE_AREA2		0x820
+#define SPARE_AREA3		0x830
+
+/*
+ * Set INT to 0, FCMD to 1, rest to 0 in NFC_CONFIG2 Register for Command
+ * operation
+ */
+#define NFC_CMD            0x1
+
+/*
+ * Set INT to 0, FADD to 1, rest to 0 in NFC_CONFIG2 Register for Address
+ * operation
+ */
+#define NFC_ADDR           0x2
+
+/*
+ * Set INT to 0, FDI to 1, rest to 0 in NFC_CONFIG2 Register for Input
+ * operation
+ */
+#define NFC_INPUT          0x4
+
+/*
+ * Set INT to 0, FDO to 001, rest to 0 in NFC_CONFIG2 Register for Data Output
+ * operation
+ */
+#define NFC_OUTPUT         0x8
+
+/*
+ * Set INT to 0, FD0 to 010, rest to 0 in NFC_CONFIG2 Register for Read ID
+ * operation
+ */
+#define NFC_ID             0x10
+
+/*
+ * Set INT to 0, FDO to 100, rest to 0 in NFC_CONFIG2 Register for Read Status
+ * operation
+ */
+#define NFC_STATUS         0x20
+
+/*
+ * Set INT to 1, rest to 0 in NFC_CONFIG2 Register for Read Status
+ * operation
+ */
+#define NFC_INT            0x8000
+
+#define NFC_ECC_MODE        (1 << 0)
+#define NFC_SP_EN           (1 << 2)
+#define NFC_ECC_EN          (1 << 3)
+#define NFC_INT_MSK         (1 << 4)
+#define NFC_BIG             (1 << 5)
+#define NFC_RST             (1 << 6)
+#define NFC_CE              (1 << 7)
+#define NFC_ONE_CYCLE       (1 << 8)
+
+#define NFC_SPAS_16			 8
+#define NFC_SPAS_64			 32
+#define NFC_SPAS_128			 64
+#define NFC_SPAS_218			 109
+
+#ifdef CONFIG_NAND_IMX_BOOT
+#define __nand_boot_init __bare_init
+#else
+#define __nand_boot_init
+#endif
+
+struct imx_nand_host {
+	struct mtd_info		mtd;		
+	struct nand_chip	nand;
+	struct mtd_partition	*parts;
+	struct device_d		*dev;
+
+	void			*spare0;
+	void			*main_area0;
+	void			*main_area1;
+
+	void __iomem		*base;
+	void __iomem		*regs;
+	int			status_request;
+	struct clk		*clk;
+
+	int			pagesize_2k;
+	uint8_t			*data_buf;
+	unsigned int		buf_start;
+	int			spare_len;
+
+};
+
+/*
+ * OOB placement block for use with hardware ecc generation
+ */
+static struct nand_ecclayout nandv1_hw_eccoob_smallpage = {
+	.eccbytes = 5,
+	.eccpos = {6, 7, 8, 9, 10},
+	.oobfree = {{0, 5}, {12, 4}}
+};
+
+static struct nand_ecclayout nandv1_hw_eccoob_largepage = {
+	.eccbytes = 20,
+	.eccpos = {6, 7, 8, 9, 10, 22, 23, 24, 25, 26,
+		   38, 39, 40, 41, 42, 54, 55, 56, 57, 58},
+	.oobfree = {{2, 4}, {11, 10}, {27, 10}, {43, 10}, {59, 5}, }
+};
+
+/* OOB description for 512 byte pages with 16 byte OOB */
+static struct nand_ecclayout nandv2_hw_eccoob_smallpage = {
+	.eccbytes = 1 * 9,
+	.eccpos = {
+		7,  8,  9, 10, 11, 12, 13, 14, 15
+	},
+	.oobfree = {
+		{.offset = 0, .length = 5}
+	}
+};
+
+/* OOB description for 2048 byte pages with 64 byte OOB */
+static struct nand_ecclayout nandv2_hw_eccoob_largepage = {
+	.eccbytes = 4 * 9,
+	.eccpos = {
+		 7,  8,  9, 10, 11, 12, 13, 14, 15,
+		23, 24, 25, 26, 27, 28, 29, 30, 31,
+		39, 40, 41, 42, 43, 44, 45, 46, 47,
+		55, 56, 57, 58, 59, 60, 61, 62, 63
+	},
+	.oobfree = {
+		{.offset = 2, .length = 4},
+		{.offset = 16, .length = 7},
+		{.offset = 32, .length = 7},
+		{.offset = 48, .length = 7}
+	}
+};
+
+static void memcpy32(void *trg, const void *src, int size)
+{
+	int i;
+	unsigned int *t = trg;
+	unsigned const int *s = src;
+
+#ifdef CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS
+	if (!((unsigned long)trg & 0x3) && !((unsigned long)src & 0x3))
+		memcpy(trg, src, size);
+	else
+#endif
+	for (i = 0; i < (size >> 2); i++)
+		*t++ = *s++;
+}
+
+/*
+ * This function polls the NANDFC to wait for the basic operation to complete by
+ * checking the INT bit of config2 register.
+ *
+ * @param       max_retries     number of retry attempts (separated by 1 us)
+ * @param       param           parameter for debug
+ */
+static void __nand_boot_init wait_op_done(struct imx_nand_host *host)
+{
+	u32 tmp;
+	int i;
+
+	/* This is a timeout of roughly 15ms on my system. We
+	 * need about 2us, but be generous. Don't use udelay
+	 * here as we might be here from nand booting.
+	 */
+	for (i = 0; i < 100000; i++) {
+		if (readw(host->regs + NFC_CONFIG2) & NFC_INT) {
+			tmp = readw(host->regs + NFC_CONFIG2);
+			tmp  &= ~NFC_INT;
+			writew(tmp, host->regs + NFC_CONFIG2);
+			return;
+		}
+	}
+}
+
+/*
+ * This function issues the specified command to the NAND device and
+ * waits for completion.
+ *
+ * @param       cmd     command for NAND Flash
+ */
+static void __nand_boot_init send_cmd(struct imx_nand_host *host, u16 cmd)
+{
+	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x)\n", cmd);
+
+	writew(cmd, host->regs + NFC_FLASH_CMD);
+	writew(NFC_CMD, host->regs + NFC_CONFIG2);
+
+	if (cpu_is_mx21() && (cmd == NAND_CMD_RESET)) {
+		/* Reset completion is indicated by NFC_CONFIG2 */
+		/* being set to 0 */
+		int i;
+		for (i = 0; i < 100000; i++) {
+			if (readw(host->regs + NFC_CONFIG2) == 0) {
+				break;
+			}
+		}
+	} else
+		/* Wait for operation to complete */
+		wait_op_done(host);
+}
+
+/*
+ * This function sends an address (or partial address) to the
+ * NAND device.  The address is used to select the source/destination for
+ * a NAND command.
+ *
+ * @param       addr    address to be written to NFC.
+ * @param       islast  True if this is the last address cycle for command
+ */
+static void __nand_boot_init noinline send_addr(struct imx_nand_host *host, u16 addr)
+{
+	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);
+
+	writew(addr, host->regs + NFC_FLASH_ADDR);
+	writew(NFC_ADDR, host->regs + NFC_CONFIG2);
+
+	/* Wait for operation to complete */
+	wait_op_done(host);
+}
+
+/*
+ * This function requests the NANDFC to initate the transfer
+ * of data currently in the NANDFC RAM buffer to the NAND device.
+ *
+ * @param	buf_id	      Specify Internal RAM Buffer number (0-3)
+ * @param       spare_only    set true if only the spare area is transferred
+ */
+static void __nand_boot_init send_page(struct imx_nand_host *host,
+		unsigned int ops)
+{
+	int bufs, i;
+
+	if (nfc_is_v1() && host->pagesize_2k)
+		bufs = 4;
+	else
+		bufs = 1;
+
+	for (i = 0; i < bufs; i++) {
+		/* NANDFC buffer 0 is used for page read/write */
+		writew(i, host->regs + NFC_BUF_ADDR);
+
+		writew(ops, host->regs + NFC_CONFIG2);
+
+		/* Wait for operation to complete */
+		wait_op_done(host);
+	}
+}
+
+/*
+ * This function requests the NANDFC to perform a read of the
+ * NAND device ID.
+ */
+static void send_read_id(struct imx_nand_host *host)
+{
+	struct nand_chip *this = &host->nand;
+	u16 tmp;
+
+	/* NANDFC buffer 0 is used for device ID output */
+	writew(0x0, host->regs + NFC_BUF_ADDR);
+
+	/* Read ID into main buffer */
+	tmp = readw(host->regs + NFC_CONFIG1);
+	tmp &= ~NFC_SP_EN;
+	writew(tmp, host->regs + NFC_CONFIG1);
+
+	writew(NFC_ID, host->regs + NFC_CONFIG2);
+
+	/* Wait for operation to complete */
+	wait_op_done(host);
+
+	if (this->options & NAND_BUSWIDTH_16) {
+		volatile u16 *mainbuf = host->main_area0;
+
+		/*
+		 * Pack the every-other-byte result for 16-bit ID reads
+		 * into every-byte as the generic code expects and various
+		 * chips implement.
+		 */
+
+		mainbuf[0] = (mainbuf[0] & 0xff) | ((mainbuf[1] & 0xff) << 8);
+		mainbuf[1] = (mainbuf[2] & 0xff) | ((mainbuf[3] & 0xff) << 8);
+		mainbuf[2] = (mainbuf[4] & 0xff) | ((mainbuf[5] & 0xff) << 8);
+	}
+	memcpy32(host->data_buf, host->main_area0, 16);
+}
+
+/*
+ * This function requests the NANDFC to perform a read of the
+ * NAND device status and returns the current status.
+ *
+ * @return  device status
+ */
+static u16 get_dev_status(struct imx_nand_host *host)
+{
+	volatile u16 *mainbuf = host->main_area1;
+	u32 store;
+	u16 ret, tmp;
+	/* Issue status request to NAND device */
+
+	/* store the main area1 first word, later do recovery */
+	store = *((u32 *) mainbuf);
+	/*
+	 * NANDFC buffer 1 is used for device status to prevent
+	 * corruption of read/write buffer on status requests.
+	 */
+	writew(1, host->regs + NFC_BUF_ADDR);
+
+	/* Read status into main buffer */
+	tmp = readw(host->regs + NFC_CONFIG1);
+	tmp &= ~NFC_SP_EN;
+	writew(tmp, host->regs + NFC_CONFIG1);
+
+	writew(NFC_STATUS, host->regs + NFC_CONFIG2);
+
+	/* Wait for operation to complete */
+	wait_op_done(host);
+
+	/* Status is placed in first word of main buffer */
+	/* get status, then recovery area 1 data */
+	ret = mainbuf[0];
+	*((u32 *) mainbuf) = store;
+
+	return ret;
+}
+
+/*
+ * This function is used by upper layer to checks if device is ready
+ *
+ * @param       mtd     MTD structure for the NAND Flash
+ *
+ * @return  0 if device is busy else 1
+ */
+static int imx_nand_dev_ready(struct mtd_info *mtd)
+{
+	/*
+	 * NFC handles R/B internally.Therefore,this function
+	 * always returns status as ready.
+	 */
+	return 1;
+}
+
+static void imx_nand_enable_hwecc(struct mtd_info *mtd, int mode)
+{
+	/*
+	 * If HW ECC is enabled, we turn it on during init.  There is
+	 * no need to enable again here.
+	 */
+}
+
+static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
+				 u_char * read_ecc, u_char * calc_ecc)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+
+	/*
+	 * 1-Bit errors are automatically corrected in HW.  No need for
+	 * additional correction.  2-Bit errors cannot be corrected by
+	 * HW ECC, so we need to return failure
+	 */
+	u16 ecc_status = readw(host->regs + NFC_ECC_STATUS_RESULT);
+
+	if (((ecc_status & 0x3) == 2) || ((ecc_status >> 2) == 2)) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0,
+		      "MXC_NAND: HWECC uncorrectable 2-bit ECC error\n");
+		return -1;
+	}
+
+	return 0;
+}
+
+static int imx_nand_calculate_ecc(struct mtd_info *mtd, const u_char * dat,
+				  u_char * ecc_code)
+{
+	return 0;
+}
+
+/*
+ * This function reads byte from the NAND Flash
+ *
+ * @param       mtd     MTD structure for the NAND Flash
+ *
+ * @return    data read from the NAND Flash
+ */
+static u_char imx_nand_read_byte(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	u_char ret;
+
+	/* Check for status request */
+	if (host->status_request)
+		return get_dev_status(host) & 0xFF;
+
+	ret = *(uint8_t *)(host->data_buf + host->buf_start);
+	host->buf_start++;
+
+	return ret;
+}
+
+/*
+  * This function reads word from the NAND Flash
+  *
+  * @param       mtd     MTD structure for the NAND Flash
+  *
+  * @return    data read from the NAND Flash
+  */
+static u16 imx_nand_read_word(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	uint16_t ret;
+
+	ret = *(uint16_t *)(host->data_buf + host->buf_start);
+	host->buf_start += 2;
+
+	return ret;
+}
+
+/*
+ * This function writes data of length \b len to buffer \b buf. The data to be
+ * written on NAND Flash is first copied to RAMbuffer. After the Data Input
+ * Operation by the NFC, the data is written to NAND Flash
+ *
+ * @param       mtd     MTD structure for the NAND Flash
+ * @param       buf     data to be written to NAND Flash
+ * @param       len     number of bytes to be written
+ */
+static void imx_nand_write_buf(struct mtd_info *mtd,
+			       const u_char *buf, int len)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	u16 col = host->buf_start;
+	int n = mtd->oobsize + mtd->writesize - col;
+
+	n = min(n, len);
+	memcpy(host->data_buf + col, buf, n);
+
+	host->buf_start += n;
+}
+
+/*
+ * This function is used to read the data buffer from the NAND Flash. To
+ * read the data from NAND Flash first the data output cycle is initiated by
+ * the NFC, which copies the data to RAMbuffer. This data of length \b len is
+ * then copied to buffer \b buf.
+ *
+ * @param       mtd     MTD structure for the NAND Flash
+ * @param       buf     data to be read from NAND Flash
+ * @param       len     number of bytes to be read
+ */
+static void imx_nand_read_buf(struct mtd_info *mtd, u_char * buf, int len)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+	u16 col = host->buf_start;
+	int n = mtd->oobsize + mtd->writesize - col;
+
+	n = min(n, len);
+
+	memcpy(buf, host->data_buf + col, len);
+
+	host->buf_start += len;
+}
+
+/*
+ * Function to transfer data to/from spare area.
+ */
+static void copy_spare(struct mtd_info *mtd, int bfrom)
+{
+	struct nand_chip *this = mtd->priv;
+	struct imx_nand_host *host = this->priv;
+	u16 i, j;
+	u16 n = mtd->writesize >> 9;
+	u8 *d = host->data_buf + mtd->writesize;
+	u8 *s = host->spare0;
+	u16 t = host->spare_len;
+
+	j = (mtd->oobsize / n >> 1) << 1;
+
+	if (bfrom) {
+		for (i = 0; i < n - 1; i++)
+			memcpy32(d + i * j, s + i * t, j);
+
+		/* the last section */
+		memcpy32(d + i * j, s + i * t, mtd->oobsize - i * j);
+	} else {
+		for (i = 0; i < n - 1; i++)
+			memcpy32(&s[i * t], &d[i * j], j);
+
+		/* the last section */
+		memcpy32(&s[i * t], &d[i * j], mtd->oobsize - i * j);
+	}
+}
+
+/*
+ * This function is used by the upper layer to verify the data in NAND Flash
+ * with the data in the \b buf.
+ *
+ * @param       mtd     MTD structure for the NAND Flash
+ * @param       buf     data to be verified
+ * @param       len     length of the data to be verified
+ *
+ * @return      -EFAULT if error else 0
+ *
+ */
+static int
+imx_nand_verify_buf(struct mtd_info *mtd, const u_char * buf, int len)
+{
+	return -EFAULT;
+}
+
+/*
+ * This function is used by upper layer for select and deselect of the NAND
+ * chip
+ *
+ * @param       mtd     MTD structure for the NAND Flash
+ * @param       chip    val indicating select or deselect
+ */
+static void imx_nand_select_chip(struct mtd_info *mtd, int chip)
+{
+#ifdef CONFIG_MTD_NAND_MXC_FORCE_CE
+	u16 tmp;
+
+	if (chip > 0) {
+		MTD_DEBUG(MTD_DEBUG_LEVEL0,
+		      "ERROR:  Illegal chip select (chip = %d)\n", chip);
+		return;
+	}
+
+	if (chip == -1) {
+		tmp = readw(host->regs + NFC_CONFIG1);
+		tmp &= ~NFC_CE;
+		writew(tmp, host->regs + NFC_CONFIG1);
+		return;
+	}
+
+	tmp = readw(host->regs + NFC_CONFIG1);
+	tmp |= NFC_CE;
+	writew(tmp, host->regs + NFC_CONFIG1);
+#endif
+}
+
+static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+
+	/*
+	 * Write out column address, if necessary
+	 */
+	if (column != -1) {
+		/*
+		 * MXC NANDFC can only perform full page+spare or
+		 * spare-only read/write.  When the upper layers
+		 * layers perform a read/write buf operation,
+		 * we will used the saved column adress to index into
+		 * the full page.
+		 */
+		send_addr(host, 0);
+		if (host->pagesize_2k)
+			/* another col addr cycle for 2k page */
+			send_addr(host, 0);
+	}
+
+	/*
+	 * Write out page address, if necessary
+	 */
+	if (page_addr != -1) {
+		send_addr(host, (page_addr & 0xff));	/* paddr_0 - p_addr_7 */
+
+		if (host->pagesize_2k) {
+			send_addr(host, (page_addr >> 8) & 0xFF);
+			if (mtd->size >= 0x10000000) {
+				send_addr(host, (page_addr >> 16) & 0xff);
+			}
+		} else {
+			/* One more address cycle for higher density devices */
+			if (mtd->size >= 0x4000000) {
+				/* paddr_8 - paddr_15 */
+				send_addr(host, (page_addr >> 8) & 0xff);
+				send_addr(host, (page_addr >> 16) & 0xff);
+			} else
+				/* paddr_8 - paddr_15 */
+				send_addr(host, (page_addr >> 8) & 0xff);
+		}
+	}
+}
+
+/*
+ * This function is used by the upper layer to write command to NAND Flash for
+ * different operations to be carried out on NAND Flash
+ *
+ * @param       mtd             MTD structure for the NAND Flash
+ * @param       command         command for NAND Flash
+ * @param       column          column offset for the page read
+ * @param       page_addr       page to be read from NAND Flash
+ */
+static void imx_nand_command(struct mtd_info *mtd, unsigned command,
+			     int column, int page_addr)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct imx_nand_host *host = nand_chip->priv;
+
+	MTD_DEBUG(MTD_DEBUG_LEVEL3,
+	      "imx_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
+	      command, column, page_addr);
+
+	/*
+	 * Reset command state information
+	 */
+	host->status_request = 0;
+
+	/*
+	 * Command pre-processing step
+	 */
+	switch (command) {
+
+	case NAND_CMD_STATUS:
+		host->buf_start = 0;
+		host->status_request = 1;
+		send_cmd(host, command);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+		break;
+
+	case NAND_CMD_READ0:
+	case NAND_CMD_READOOB:
+		if (command == NAND_CMD_READ0)
+			host->buf_start = column;
+		else
+			host->buf_start = column + mtd->writesize;
+
+		command = NAND_CMD_READ0;
+
+		send_cmd(host, command);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+
+		if (host->pagesize_2k)
+			/* send read confirm command */
+			send_cmd(host, NAND_CMD_READSTART);
+
+		send_page(host, NFC_OUTPUT);
+
+		memcpy32(host->data_buf, host->main_area0, mtd->writesize);
+		copy_spare(mtd, 1);
+		break;
+
+	case NAND_CMD_SEQIN:
+		if (column >= mtd->writesize) {
+			if (host->pagesize_2k) {
+				/**
+				  * FIXME: before send SEQIN command for write
+				  * OOB, we must read one page out. For K9F1GXX
+				  * has no READ1 command to set current HW
+				  * pointer to spare area, we must write the
+				  * whole page including OOB together.
+				  */
+				/* call ourself to read a page */
+				imx_nand_command(mtd, NAND_CMD_READ0, 0,
+						 page_addr);
+			}
+			host->buf_start = column;
+
+			/* Set program pointer to spare region */
+			if (!host->pagesize_2k)
+				send_cmd(host, NAND_CMD_READOOB);
+		} else {
+			host->buf_start = column;
+
+			/* Set program pointer to page start */
+			if (!host->pagesize_2k)
+				send_cmd(host, NAND_CMD_READ0);
+		}
+		send_cmd(host, command);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+
+		break;
+
+	case NAND_CMD_PAGEPROG:
+		memcpy32(host->main_area0, host->data_buf, mtd->writesize);
+		copy_spare(mtd, 0);
+		send_page(host, NFC_INPUT);
+		send_cmd(host, command);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+		break;
+
+	case NAND_CMD_READID:
+		send_cmd(host, command);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+		host->buf_start = 0;
+		send_read_id(host);
+		break;
+
+	case NAND_CMD_ERASE1:
+	case NAND_CMD_ERASE2:
+	case NAND_CMD_RESET:
+		send_cmd(host, command);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+		break;
+	}
+}
+
+#ifdef CONFIG_MXC_NAND_LOW_LEVEL_ERASE
+static void imx_low_erase(struct mtd_info *mtd)
+{
+
+	struct nand_chip *this = mtd->priv;
+	unsigned int page_addr, addr;
+	u_char status;
+
+	MTD_DEBUG(MTD_DEBUG_LEVEL0, "MXC_ND : imx_low_erase:Erasing NAND\n");
+	for (addr = 0; addr < this->chipsize; addr += mtd->erasesize) {
+		page_addr = addr / mtd->writesize;
+		imx_nand_command(mtd, NAND_CMD_ERASE1, -1, page_addr);
+		imx_nand_command(mtd, NAND_CMD_ERASE2, -1, -1);
+		imx_nand_command(mtd, NAND_CMD_STATUS, -1, -1);
+		status = imx_nand_read_byte(mtd);
+		if (status & NAND_STATUS_FAIL) {
+			printk(KERN_ERR
+			       "ERASE FAILED(block = %d,status = 0x%x)\n",
+			       addr / mtd->erasesize, status);
+		}
+	}
+
+}
+#endif
+
+/*
+ * The generic flash bbt decriptors overlap with our ecc
+ * hardware, so define some i.MX specific ones.
+ */
+static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
+static uint8_t mirror_pattern[] = { '1', 't', 'b', 'B' };
+
+static struct nand_bbt_descr bbt_main_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs = 0,
+	.len = 4,
+	.veroffs = 4,
+	.maxblocks = 4,
+	.pattern = bbt_pattern,
+};
+
+static struct nand_bbt_descr bbt_mirror_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs = 0,
+	.len = 4,
+	.veroffs = 4,
+	.maxblocks = 4,
+	.pattern = mirror_pattern,
+};
+
+/*
+ * This function is called during the driver binding process.
+ *
+ * @param   pdev  the device structure used to store device specific
+ *                information that is used by the suspend, resume and
+ *                remove functions
+ *
+ * @return  The function always returns 0.
+ */
+
+static int __init imxnd_probe(struct device_d *dev)
+{
+	struct nand_chip *this;
+	struct mtd_info *mtd;
+	struct imx_nand_platform_data *pdata = dev->platform_data;
+	struct imx_nand_host *host;
+	struct nand_ecclayout *oob_smallpage, *oob_largepage;
+	u16 tmp;
+	int err = 0;
+
+#ifdef CONFIG_ARCH_IMX27
+	PCCR1 |= PCCR1_NFC_BAUDEN;
+#endif
+#ifdef CONFIG_ARCH_IMX21
+	PCCR0 |= PCCR0_NFC_EN;
+#endif
+	/* Allocate memory for MTD device structure and private data */
+	host = kzalloc(sizeof(struct imx_nand_host) + NAND_MAX_PAGESIZE +
+			NAND_MAX_OOBSIZE, GFP_KERNEL);
+	if (!host)
+		return -ENOMEM;
+
+	host->data_buf = (uint8_t *)(host + 1);
+	host->base = (void __iomem *)dev->map_base;
+
+	host->main_area0 = host->base;
+	host->main_area1 = host->base + 0x200;
+
+	if (nfc_is_v21()) {
+		host->regs = host->base + 0x1000;
+		host->spare0 = host->base + 0x1000;
+		host->spare_len = 64;
+		oob_smallpage = &nandv2_hw_eccoob_smallpage;
+		oob_largepage = &nandv2_hw_eccoob_largepage;
+	} else if (nfc_is_v1()) {
+		host->regs = host->base;
+		host->spare0 = host->base + 0x800;
+		host->spare_len = 16;
+		oob_smallpage = &nandv1_hw_eccoob_smallpage;
+		oob_largepage = &nandv1_hw_eccoob_largepage;
+	}
+
+	host->dev = dev;
+	/* structures must be linked */
+	this = &host->nand;
+	mtd = &host->mtd;
+	mtd->priv = this;
+
+	/* 50 us command delay time */
+	this->chip_delay = 5;
+
+	this->priv = host;
+	this->dev_ready = imx_nand_dev_ready;
+	this->cmdfunc = imx_nand_command;
+	this->select_chip = imx_nand_select_chip;
+	this->read_byte = imx_nand_read_byte;
+	this->read_word = imx_nand_read_word;
+	this->write_buf = imx_nand_write_buf;
+	this->read_buf = imx_nand_read_buf;
+	this->verify_buf = imx_nand_verify_buf;
+#if 0
+	host->clk = clk_get(&pdev->dev, "nfc_clk");
+	if (IS_ERR(host->clk))
+		goto eclk;
+
+	clk_enable(host->clk);
+#endif
+
+	tmp = readw(host->regs + NFC_CONFIG1);
+	tmp |= NFC_INT_MSK;
+	tmp &= ~NFC_SP_EN;
+	if (nfc_is_v21())
+		/* currently no support for 218 byte OOB with stronger ECC */
+		tmp |= NFC_ECC_MODE;
+	writew(tmp, host->regs + NFC_CONFIG1);
+
+	if (pdata->hw_ecc) {
+		this->ecc.calculate = imx_nand_calculate_ecc;
+		this->ecc.hwctl = imx_nand_enable_hwecc;
+		this->ecc.correct = imx_nand_correct_data;
+		this->ecc.mode = NAND_ECC_HW;
+		this->ecc.size = 512;
+		tmp = readw(host->regs + NFC_CONFIG1);
+		tmp |= NFC_ECC_EN;
+		writew(tmp, host->regs + NFC_CONFIG1);
+	} else {
+		this->ecc.size = 512;
+		this->ecc.mode = NAND_ECC_SOFT;
+		tmp = readw(host->regs + NFC_CONFIG1);
+		tmp &= ~NFC_ECC_EN;
+		writew(tmp, host->regs + NFC_CONFIG1);
+	}
+
+	/* Reset NAND */
+	this->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
+
+	/* preset operation */
+	/* Unlock the internal RAM Buffer */
+	writew(0x2, host->regs + NFC_CONFIG);
+
+	/* Blocks to be unlocked */
+	if (nfc_is_v21()) {
+		writew(0x0, host->regs + NFC_V21_UNLOCKSTART_BLKADDR);
+		writew(0xffff, host->regs + NFC_V21_UNLOCKEND_BLKADDR);
+		this->ecc.bytes = 9;
+	} else if (nfc_is_v1()) {
+		writew(0x0, host->regs + NFC_V1_UNLOCKSTART_BLKADDR);
+		writew(0x4000, host->regs + NFC_V1_UNLOCKEND_BLKADDR);
+		this->ecc.bytes = 3;
+	}
+
+	/* Unlock Block Command for given address range */
+	writew(0x4, host->regs + NFC_WRPROT);
+
+	this->ecc.layout = oob_smallpage;
+
+	/* NAND bus width determines access funtions used by upper layer */
+	if (pdata->width == 2) {
+		this->options |= NAND_BUSWIDTH_16;
+		this->ecc.layout = &nandv1_hw_eccoob_smallpage;
+		imx_nand_set_layout(0, 16);
+	}
+
+	if (pdata->flash_bbt) {
+		this->bbt_td = &bbt_main_descr;
+		this->bbt_md = &bbt_mirror_descr;
+		/* update flash based bbt */
+		this->options |= NAND_USE_FLASH_BBT;
+	}
+
+	/* first scan to find the device and get the page size */
+	if (nand_scan_ident(mtd, 1)) {
+		err = -ENXIO;
+		goto escan;
+	}
+
+	imx_nand_set_layout(mtd->writesize, pdata->width == 2 ? 16 : 8);
+
+	if (mtd->writesize == 2048) {
+		this->ecc.layout = oob_largepage;
+		host->pagesize_2k = 1;
+		if (nfc_is_v21()) {
+			tmp = readw(host->regs + NFC_SPAS);
+			tmp &= 0xff00;
+			tmp |= NFC_SPAS_64;
+			writew(tmp, host->regs + NFC_SPAS);
+		}
+	} else {
+		if (nfc_is_v21()) {
+			tmp = readw(host->regs + NFC_SPAS);
+			tmp &= 0xff00;
+			tmp |= NFC_SPAS_16;
+			writew(tmp, host->regs + NFC_SPAS);
+		}
+	}
+
+	/* second phase scan */
+	if (nand_scan_tail(mtd)) {
+		err = -ENXIO;
+		goto escan;
+	}
+
+	add_mtd_device(mtd);
+
+	dev->priv = host;
+
+	return 0;
+
+escan:
+	kfree(host);
+
+	return err;
+
+}
+
+static struct driver_d imx_nand_driver = {
+	.name  = "imx_nand",
+	.probe = imxnd_probe,
+};
+
+#ifdef CONFIG_NAND_IMX_BOOT
+
+static void __nand_boot_init nfc_addr(struct imx_nand_host *host, u32 offs)
+{
+	if (host->pagesize_2k) {
+		send_addr(host, offs & 0xff);
+		send_addr(host, offs & 0xff);
+		send_addr(host, (offs >> 11) & 0xff);
+		send_addr(host, (offs >> 19) & 0xff);
+		send_addr(host, (offs >> 27) & 0xff);
+	} else {
+		send_addr(host, offs & 0xff);
+		send_addr(host, (offs >> 9) & 0xff);
+		send_addr(host, (offs >> 17) & 0xff);
+		send_addr(host, (offs >> 25) & 0xff);
+	}
+}
+
+static void __nand_boot_init __memcpy32(void *trg, const void *src, int size)
+{
+	int i;
+	unsigned int *t = trg;
+	unsigned const int *s = src;
+
+	for (i = 0; i < (size >> 2); i++)
+		*t++ = *s++;
+}
+
+void __nand_boot_init imx_nand_load_image(void *dest, int size)
+{
+	struct imx_nand_host host;
+	u32 tmp, page, block, blocksize, pagesize;
+#ifdef CONFIG_ARCH_IMX21
+	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
+	if (tmp & (1 << 5))
+		host.pagesize_2k = 1;
+	else
+		host.pagesize_2k = 0;
+#endif
+#ifdef CONFIG_ARCH_IMX27
+	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
+	if (tmp & (1 << 5))
+		host.pagesize_2k = 1;
+	else
+		host.pagesize_2k = 0;
+#endif
+#ifdef CONFIG_ARCH_IMX31
+	tmp = readl(IMX_CCM_BASE + CCM_RCSR);
+	if (tmp & RCSR_NFMS)
+		host.pagesize_2k = 1;
+	else
+		host.pagesize_2k = 0;
+#endif
+#ifdef CONFIG_ARCH_IMX35
+	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
+		host.pagesize_2k = 1;
+	else
+		host.pagesize_2k = 0;
+#endif
+	if (host.pagesize_2k) {
+		pagesize = 2048;
+		blocksize = 128 * 1024;
+	} else {
+		pagesize = 512;
+		blocksize = 16 * 1024;
+	}
+
+	host.base = (void __iomem *)IMX_NFC_BASE;
+	if (nfc_is_v21()) {
+		host.regs = host.base + 0x1000;
+		host.spare0 = host.base + 0x1000;
+		host.spare_len = 64;
+	} else if (nfc_is_v1()) {
+		host.regs = host.base;
+		host.spare0 = host.base + 0x800;
+		host.spare_len = 16;
+	}
+
+	send_cmd(&host, NAND_CMD_RESET);
+
+	/* preset operation */
+	/* Unlock the internal RAM Buffer */
+	writew(0x2, host.regs + NFC_CONFIG);
+
+	/* Unlock Block Command for given address range */
+	writew(0x4, host.regs + NFC_WRPROT);
+
+	tmp = readw(host.regs + NFC_CONFIG1);
+	tmp |= NFC_ECC_EN;
+	if (nfc_is_v21())
+		/* currently no support for 218 byte OOB with stronger ECC */
+		tmp |= NFC_ECC_MODE;
+	tmp &= ~(NFC_SP_EN | NFC_INT_MSK);
+	writew(tmp, host.regs + NFC_CONFIG1);
+
+	if (nfc_is_v21()) {
+		if (host.pagesize_2k) {
+			tmp = readw(host.regs + NFC_SPAS);
+			tmp &= 0xff00;
+			tmp |= NFC_SPAS_64;
+			writew(tmp, host.regs + NFC_SPAS);
+		} else {
+			tmp = readw(host.regs + NFC_SPAS);
+			tmp &= 0xff00;
+			tmp |= NFC_SPAS_16;
+			writew(tmp, host.regs + NFC_SPAS);
+		}
+	}
+
+	block = page = 0;
+
+	while (1) {
+		page = 0;
+		while (page * pagesize < blocksize) {
+			debug("page: %d block: %d dest: %p src "
+					"0x%08x\n",
+					page, block, dest,
+					block * blocksize +
+					page * pagesize);
+
+			send_cmd(&host, NAND_CMD_READ0);
+			nfc_addr(&host, block * blocksize +
+					page * pagesize);
+			if (host.pagesize_2k)
+				send_cmd(&host, NAND_CMD_READSTART);
+			send_page(&host, NFC_OUTPUT);
+			page++;
+
+			if (host.pagesize_2k) {
+				if ((readw(host.spare0) & 0xff)
+						!= 0xff)
+					continue;
+			} else {
+				if ((readw(host.spare0 + 4) & 0xff00)
+						!= 0xff00)
+					continue;
+			}
+
+			__memcpy32(dest, host.base, pagesize);
+			dest += pagesize;
+			size -= pagesize;
+
+			if (size <= 0)
+				return;
+		}
+		block++;
+	}
+}
+#define CONFIG_NAND_IMX_BOOT_DEBUG
+#ifdef CONFIG_NAND_IMX_BOOT_DEBUG
+#include <command.h>
+
+static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
+{
+	void *dest;
+	int size;
+
+	if (argc < 3)
+		return COMMAND_ERROR_USAGE;
+
+	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
+	size = strtoul_suffix(argv[2], NULL, 0);
+
+	imx_nand_load_image(dest, size);
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_nand_boot_test_help[] =
+"Usage: nand_boot_test <dest> <size>\n"
+"This command loads the booloader from the NAND memory like the reset\n"
+"routine does. Its intended for development tests only";
+
+BAREBOX_CMD_START(nand_boot_test)
+	.cmd		= do_nand_boot_test,
+	.usage		= "load bootloader from NAND",
+	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
+BAREBOX_CMD_END
+#endif
+
+#endif /* CONFIG_NAND_IMX_BOOT */
+
+/*
+ * Main initialization routine
+ * @return  0 if successful; non-zero otherwise
+ */
+static int __init imx_nand_init(void)
+{
+	return register_driver(&imx_nand_driver);
+}
+
+device_initcall(imx_nand_init);
+
+MODULE_AUTHOR("Freescale Semiconductor, Inc.");
+MODULE_DESCRIPTION("MXC NAND MTD driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
new file mode 100644
index 0000000..c6647e5
--- /dev/null
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -0,0 +1,534 @@
+/**
+ * @file
+ * @brief Provide Generic GPMC NAND implementation for OMAP platforms
+ *
+ * FileName: arch/arm/mach-omap/gpmc_nand.c
+ *
+ * GPMC has a NAND controller inbuilt. This provides a generic implementation
+ * for board files to register a nand device. drivers/nand/nand_base.c takes
+ * care of identifing the type of device, size etc.
+ *
+ * A typical device registration is as follows:
+ *
+ * @code
+ * static struct device_d my_nand_device = {
+ *	.name = "gpmc_nand",
+ *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
+ *	.map_base = GPMC base address
+ *	.size = GPMC address map size.
+ *	.platform_data = platform data - required - explained below
+ * };
+ * platform data required:
+ * static struct gpmc_nand_platform_data nand_plat = {
+ *	.cs = give the chip select of the device
+ *	.device_width = what is the width of the device 8 or 16?
+ *	.max_timeout = delay desired for operation
+ *	.wait_mon_pin = do you use wait monitoring? if so wait pin
+ *	.plat_options = platform options.
+ *		NAND_HWECC_ENABLE/DISABLE - hw ecc enable/disable
+ *		NAND_WAITPOL_LOW/HIGH - wait pin polarity
+ *	.oob = if you would like to replace oob with a custom OOB.
+ *	.nand_setup  = if you would like a special setup function to be called
+ *	.priv = any params you'd like to save(e.g. like nand_setup to use)
+ *};
+ * then in your code, you'd device_register(&my_nand_device);
+ * @endcode
+ *
+ * Note:
+ * @li Enable CONFIG_NAND_OMAP_GPMC_HWECC in menuconfig to get H/w ECC support
+ * @li You may choose to register two "devices" for the same CS to get BOTH
+ * hwecc and swecc devices.
+ * @li You can choose to have your own OOB definition for compliance with ROM
+ * code organization - only if you dont want to use NAND's default oob layout.
+ * see GPMC_NAND_ECC_LP_x8_LAYOUT etc..
+ *
+ * @see gpmc_nand_platform_data
+ * @warning Remember to initialize GPMC before initializing the nand dev.
+ */
+/*
+ * (C) Copyright 2008
+ * Texas Instruments, <www.ti.com>
+ * Nishanth Menon <x0nishan@ti.com>
+ *
+ * Based on:
+ * drivers/mtd/nand/omap2.c from linux kernel
+ *
+ * Copyright (c) 2004 Texas Instruments, Jian Zhang <jzhang@ti.com>
+ * Copyright (c) 2004 Micron Technology Inc.
+ * Copyright (c) 2004 David Brownell
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <clock.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <linux/mtd/nand_ecc.h>
+#include <asm/io.h>
+#include <mach/silicon.h>
+#include <mach/gpmc.h>
+#include <mach/gpmc_nand.h>
+
+/* Enable me to get tons of debug messages -for use without jtag */
+#if 0
+#define gpmcnand_dbg(FORMAT, ARGS...) fprintf(stdout,\
+		"gpmc_nand:%s:%d:Entry:"FORMAT"\n",\
+		__func__, __LINE__, ARGS)
+#else
+#define gpmcnand_dbg(FORMAT, ARGS...)
+#endif
+#define gpmcnand_err(ARGS...) fprintf(stderr, "omapnand: " ARGS);
+
+/** internal structure maintained for nand information */
+struct gpmc_nand_info {
+	struct nand_hw_control controller;
+	struct device_d *pdev;
+	struct gpmc_nand_platform_data *pdata;
+	struct nand_chip nand;
+	struct mtd_info minfo;
+	int gpmc_cs;
+	void *gpmc_command;
+	void *gpmc_address;
+	void *gpmc_data;
+	unsigned long gpmc_base;
+	unsigned char wait_mon_mask;
+	uint64_t timeout;
+	unsigned inuse:1;
+	unsigned wait_pol:1;
+#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
+	unsigned char ecc_parity_pairs;
+	unsigned int ecc_config;
+#endif
+};
+
+/**
+ * @brief calls the platform specific dev_ready functionds
+ *
+ * @param mtd - mtd info structure
+ *
+ * @return
+ */
+static int omap_dev_ready(struct mtd_info *mtd)
+{
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	uint64_t start = get_time_ns();
+	unsigned long comp;
+
+	gpmcnand_dbg("mtd=%x", (unsigned int)mtd);
+	/* What do we mean by assert and de-assert? */
+	comp = (oinfo->wait_pol == NAND_WAITPOL_HIGH) ?
+	    oinfo->wait_mon_mask : 0x0;
+	while (1) {
+		/* Breakout condition */
+		if (is_timeout(start, oinfo->timeout)) {
+			gpmcnand_err("timedout\n");
+			return -ETIMEDOUT;
+		}
+		/* if the wait is released, we are good to go */
+		if (comp ==
+		    (readl(oinfo->gpmc_base + GPMC_STATUS) &&
+		     oinfo->wait_mon_mask))
+			break;
+	}
+	return 0;
+}
+
+/**
+ * @brief This function will enable or disable the Write Protect feature on
+ * NAND device. GPMC has a single WP bit for all CS devices..
+ *
+ * @param oinfo  omap nand info
+ * @param mode 0-disable else enable
+ *
+ * @return none
+ */
+static void gpmc_nand_wp(struct gpmc_nand_info *oinfo, int mode)
+{
+	unsigned long config = readl(oinfo->gpmc_base + GPMC_CFG);
+
+	gpmcnand_dbg("mode=%x", mode);
+	if (mode)
+		config &= ~(NAND_WP_BIT);	/* WP is ON */
+	else
+		config |= (NAND_WP_BIT);	/* WP is OFF */
+
+	writel(config, oinfo->gpmc_base + GPMC_CFG);
+}
+
+/**
+ * @brief respond to hw event change request
+ *
+ * MTD layer uses NAND_CTRL_CLE etc to control selection of the latch
+ * we hoodwink by changing the R and W registers according to the state
+ * we are requested.
+ *
+ * @param mtd - mtd info structure
+ * @param cmd command mtd layer is requesting
+ *
+ * @return none
+ */
+static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
+{
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	gpmcnand_dbg("mtd=%x nand=%x cmd=%x ctrl = %x", (unsigned int)mtd, nand,
+		  cmd, ctrl);
+	switch (ctrl) {
+	case NAND_CTRL_CHANGE | NAND_CTRL_CLE:
+		nand->IO_ADDR_W = oinfo->gpmc_command;
+		nand->IO_ADDR_R = oinfo->gpmc_data;
+		break;
+
+	case NAND_CTRL_CHANGE | NAND_CTRL_ALE:
+		nand->IO_ADDR_W = oinfo->gpmc_address;
+		nand->IO_ADDR_R = oinfo->gpmc_data;
+		break;
+
+	case NAND_CTRL_CHANGE | NAND_NCE:
+		nand->IO_ADDR_W = oinfo->gpmc_data;
+		nand->IO_ADDR_R = oinfo->gpmc_data;
+		break;
+	}
+
+	if (cmd != NAND_CMD_NONE)
+		writeb(cmd, nand->IO_ADDR_W);
+	return;
+}
+
+#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
+
+/**
+ * @brief This function will generate true ECC value, which can be used
+ * when correcting data read from NAND flash memory core
+ *
+ * @param ecc_buf buffer to store ecc code
+ *
+ * @return re-formatted ECC value
+ */
+static unsigned int gen_true_ecc(u8 *ecc_buf)
+{
+	gpmcnand_dbg("ecc_buf=%x 1, 2 3 = %x %x %x", (unsigned int)ecc_buf,
+		  ecc_buf[0], ecc_buf[1], ecc_buf[2]);
+	return ecc_buf[0] | (ecc_buf[1] << 16) | ((ecc_buf[2] & 0xF0) << 20) |
+	    ((ecc_buf[2] & 0x0F) << 8);
+}
+
+/**
+ * @brief Compares the ecc read from nand spare area with ECC
+ * registers values and corrects one bit error if it has occured
+ * Further details can be had from OMAP TRM and the following selected links:
+ * http://en.wikipedia.org/wiki/Hamming_code
+ * http://www.cs.utexas.edu/users/plaxton/c/337/05f/slides/ErrorCorrection-4.pdf
+ *
+ * @param mtd - mtd info structure
+ * @param dat  page data
+ * @param read_ecc ecc readback
+ * @param calc_ecc calculated ecc (from reg)
+ *
+ * @return 0 if data is OK or corrected, else returns -1
+ */
+static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
+			     uint8_t *read_ecc, uint8_t *calc_ecc)
+{
+	unsigned int orig_ecc, new_ecc, res, hm;
+	unsigned short parity_bits, byte;
+	unsigned char bit;
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+
+	gpmcnand_dbg("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
+		  (unsigned int)dat, (unsigned int)read_ecc,
+		  (unsigned int)calc_ecc);
+
+	/* Regenerate the orginal ECC */
+	orig_ecc = gen_true_ecc(read_ecc);
+	new_ecc = gen_true_ecc(calc_ecc);
+	/* Get the XOR of real ecc */
+	res = orig_ecc ^ new_ecc;
+	if (res) {
+		/* Get the hamming width */
+		hm = hweight32(res);
+		/* Single bit errors can be corrected! */
+		if (hm == oinfo->ecc_parity_pairs) {
+			/* Correctable data! */
+			parity_bits = res >> 16;
+			bit = (parity_bits & 0x7);
+			byte = (parity_bits >> 3) & 0x1FF;
+			/* Flip the bit to correct */
+			dat[byte] ^= (0x1 << bit);
+
+		} else if (hm == 1) {
+			gpmcnand_err("Ecc is wrong\n");
+			/* ECC itself is corrupted */
+			return 2;
+		} else {
+			gpmcnand_err("bad compare! failed\n");
+			/* detected 2 bit error */
+			return -1;
+		}
+	}
+	return 0;
+}
+
+/**
+ * @brief Using noninverted ECC can be considered ugly since writing a blank
+ * page ie. padding will clear the ECC bytes. This is no problem as long
+ * nobody is trying to write data on the seemingly unused page. Reading
+ * an erased page will produce an ECC mismatch between generated and read
+ * ECC bytes that has to be dealt with separately.
+ *
+ * @param mtd - mtd info structure
+ * @param dat data being written
+ * @param ecc_code ecc code returned back to nand layer
+ *
+ * @return 0
+ */
+static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
+			      uint8_t *ecc_code)
+{
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	unsigned int val;
+	gpmcnand_dbg("mtd=%x dat=%x ecc_code=%x", (unsigned int)mtd,
+		  (unsigned int)dat, (unsigned int)ecc_code);
+	debug("ecc 0 1 2 = %x %x %x", ecc_code[0], ecc_code[1], ecc_code[2]);
+
+	/* Since we smartly tell mtd driver to use eccsize of 512, only
+	 * ECC Reg1 will be used.. we just read that */
+	val = readl(oinfo->gpmc_base + GPMC_ECC1_RESULT);
+	ecc_code[0] = val & 0xFF;
+	ecc_code[1] = (val >> 16) & 0xFF;
+	ecc_code[2] = ((val >> 8) & 0x0f) | ((val >> 20) & 0xf0);
+
+	/* Stop reading anymore ECC vals and clear old results
+	 * enable will be called if more reads are required */
+	writel(0x000, oinfo->gpmc_base + GPMC_ECC_CONFIG);
+	return 0;
+}
+
+/*
+ * omap_enable_ecc - This function enables the hardware ecc functionality
+ * @param mtd - mtd info structure
+ * @param mode - Read/Write mode
+ */
+static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
+{
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	gpmcnand_dbg("mtd=%x mode=%x", (unsigned int)mtd, mode);
+	switch (mode) {
+	case NAND_ECC_READ:
+	case NAND_ECC_WRITE:
+		/* Clear the ecc result registers
+		 * select ecc reg as 1
+		 */
+		writel(0x101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
+		/* Size 0 = 0xFF, Size1 is 0xFF - both are 512 bytes
+		 * tell all regs to generate size0 sized regs
+		 * we just have a single ECC engine for all CS
+		 */
+		writel(0x3FCFF000, oinfo->gpmc_base +
+				GPMC_ECC_SIZE_CONFIG);
+		writel(oinfo->ecc_config, oinfo->gpmc_base +
+				GPMC_ECC_CONFIG);
+		break;
+	default:
+		gpmcnand_err("Error: Unrecognized Mode[%d]!\n", mode);
+		break;
+	}
+}
+#endif				/* CONFIG_NAND_OMAP_GPMC_HWECC */
+
+/**
+ * @brief nand device probe.
+ *
+ * @param pdev -matching device
+ *
+ * @return -failure reason or give 0
+ */
+static int gpmc_nand_probe(struct device_d *pdev)
+{
+	struct gpmc_nand_info *oinfo;
+	struct gpmc_nand_platform_data *pdata;
+	struct nand_chip *nand;
+	struct mtd_info *minfo;
+	unsigned long cs_base;
+	int err;
+
+	gpmcnand_dbg("pdev=%x", (unsigned int)pdev);
+	pdata = (struct gpmc_nand_platform_data *)pdev->platform_data;
+	if (pdata == NULL) {
+		gpmcnand_err("platform data missing\n");
+		return -ENODEV;
+	}
+
+	oinfo = calloc(1, sizeof(struct gpmc_nand_info));
+	if (!oinfo) {
+		gpmcnand_err("oinfo alloc failed!\n");
+		return -ENOMEM;
+	}
+
+	/* fill up my data structures */
+	oinfo->pdev = pdev;
+	oinfo->pdata = pdata;
+	pdev->platform_data = (void *)oinfo;
+
+	nand = &oinfo->nand;
+	nand->priv = (void *)oinfo;
+
+	minfo = &oinfo->minfo;
+	minfo->priv = (void *)nand;
+
+	if (pdata->cs >= GPMC_NUM_CS) {
+		gpmcnand_err("Invalid CS!\n");
+		err = -EINVAL;
+		goto out_release_mem;
+	}
+	/* Setup register specific data */
+	oinfo->gpmc_cs = pdata->cs;
+	oinfo->gpmc_base = pdev->map_base;
+	cs_base = oinfo->gpmc_base + GPMC_CONFIG1_0 +
+		(pdata->cs * GPMC_CONFIG_CS_SIZE);
+	oinfo->gpmc_command = (void *)(cs_base + GPMC_CS_NAND_COMMAND);
+	oinfo->gpmc_address = (void *)(cs_base + GPMC_CS_NAND_ADDRESS);
+	oinfo->gpmc_data = (void *)(cs_base + GPMC_CS_NAND_DATA);
+	oinfo->timeout = pdata->max_timeout;
+	debug("GPMC Details:\n"
+		"GPMC BASE=%x\n"
+		"CMD=%x\n"
+		"ADDRESS=%x\n"
+		"DATA=%x\n"
+		"CS_BASE=%x\n",
+		oinfo->gpmc_base, oinfo->gpmc_command,
+		oinfo->gpmc_address, oinfo->gpmc_data, cs_base);
+
+	/* If we are 16 bit dev, our gpmc config tells us that */
+	if ((readl(cs_base) & 0x3000) == 0x1000) {
+		debug("16 bit dev\n");
+		nand->options |= NAND_BUSWIDTH_16;
+	}
+
+	/* Same data register for in and out */
+	nand->IO_ADDR_W = nand->IO_ADDR_R = (void *)oinfo->gpmc_data;
+	/*
+	 * If RDY/BSY line is connected to OMAP then use the omap ready
+	 * function and the generic nand_wait function which reads the
+	 * status register after monitoring the RDY/BSY line. Otherwise
+	 * use a standard chip delay which is slightly more than tR
+	 * (AC Timing) of the NAND device and read the status register
+	 * until you get a failure or success
+	 */
+	if (pdata->wait_mon_pin > 4) {
+		gpmcnand_err("Invalid wait monitoring pin\n");
+		err = -EINVAL;
+		goto out_release_mem;
+	}
+	if (pdata->wait_mon_pin) {
+		/* Set up the wait monitoring mask
+		 * This is GPMC_STATUS reg relevant */
+		oinfo->wait_mon_mask = (0x1 << (pdata->wait_mon_pin - 1)) << 8;
+		oinfo->wait_pol = (pdata->plat_options & NAND_WAITPOL_MASK);
+		nand->dev_ready = omap_dev_ready;
+		nand->chip_delay = 0;
+	} else {
+		/* use the default nand_wait function */
+		nand->chip_delay = 50;
+	}
+
+	/* Use default cmdfunc */
+	/* nand cmd control */
+	nand->cmd_ctrl = omap_hwcontrol;
+
+	/* Dont do a bbt scan at the start */
+	nand->options |= NAND_SKIP_BBTSCAN;
+
+	/* State my controller */
+	nand->controller = &oinfo->controller;
+
+	/* if a different placement scheme is requested */
+	if (pdata->oob)
+		nand->ecc.layout = pdata->oob;
+
+#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
+	if (pdata->plat_options & NAND_HWECC_ENABLE) {
+		/* Program how many columns we expect+
+		 * enable the cs we want and enable the engine
+		 */
+		oinfo->ecc_config = (pdata->cs << 1) |
+		    ((nand->options & NAND_BUSWIDTH_16) ?
+		     (0x1 << 7) : 0x0) | 0x1;
+		nand->ecc.hwctl = omap_enable_hwecc;
+		nand->ecc.calculate = omap_calculate_ecc;
+		nand->ecc.correct = omap_correct_data;
+		nand->ecc.mode = NAND_ECC_HW;
+		nand->ecc.size = 512;
+		nand->ecc.bytes = 3;
+		nand->ecc.steps = nand->ecc.layout->eccbytes / nand->ecc.bytes;
+		oinfo->ecc_parity_pairs = 12;
+	} else
+#endif
+		nand->ecc.mode = NAND_ECC_SOFT;
+
+	/* All information is ready.. now lets call setup, if present */
+	if (pdata->nand_setup) {
+		err = pdata->nand_setup(pdata);
+		if (err) {
+			gpmcnand_err("pdataform setup failed\n");
+			goto out_release_mem;
+		}
+	}
+	/* Remove write protection */
+	gpmc_nand_wp(oinfo, 0);
+
+	/* we do not know what state of device we have is, so
+	 * Send a reset to the device
+	 * 8 bit write will work on 16 and 8 bit devices
+	 */
+	writeb(NAND_CMD_RESET, oinfo->gpmc_command);
+	mdelay(1);
+
+	/* In normal mode, we scan to get just the device
+	 * presence and then to get the device geometry
+	 */
+	if (nand_scan(minfo, 1)) {
+		gpmcnand_err("device scan failed\n");
+		err = -ENXIO;
+		goto out_release_mem;
+	}
+
+	/* We are all set to register with the system now! */
+	err = add_mtd_device(minfo);
+	if (err) {
+		gpmcnand_err("device registration failed\n");
+		goto out_release_mem;
+	}
+	return 0;
+
+out_release_mem:
+	if (oinfo)
+		free(oinfo);
+
+	gpmcnand_err("Failed!!\n");
+	return err;
+}
+
+/** GMPC nand driver -> device registered by platforms */
+static struct driver_d gpmc_nand_driver = {
+	.name = "gpmc_nand",
+	.probe = gpmc_nand_probe,
+};
+
+static int gpmc_nand_init(void)
+{
+	return register_driver(&gpmc_nand_driver);
+}
+
+device_initcall(gpmc_nand_init);
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
new file mode 100644
index 0000000..b989583
--- /dev/null
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -0,0 +1,525 @@
+/* linux/drivers/mtd/nand/s3c2410.c
+ *
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * Copyright �� 2004-2008 Simtec Electronics
+ *	http://armlinux.simtec.co.uk/
+ *	Ben Dooks <ben@simtec.co.uk>
+ *
+ * Samsung S3C2410 NAND driver
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
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+*/
+
+#include <config.h>
+#include <common.h>
+#include <driver.h>
+#include <malloc.h>
+#include <init.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/nand.h>
+#include <mach/s3c24xx-generic.h>
+#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c24x0-nand.h>
+#include <asm/io.h>
+#include <asm-generic/errno.h>
+
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+# define __nand_boot_init __bare_init
+# ifndef BOARD_DEFAULT_NAND_TIMING
+#  define BOARD_DEFAULT_NAND_TIMING 0x0737
+# endif
+#else
+# define __nand_boot_init
+#endif
+
+/**
+ * Define this symbol for testing purpose. It will add a command to read an
+ * image from the NAND like it the boot strap code will do.
+ */
+#define CONFIG_NAND_S3C24XX_BOOT_DEBUG
+
+/* NAND controller's register */
+
+#define NFCONF 0x00
+
+#ifdef CONFIG_CPU_S3C2410
+
+#define NFCMD 0x04
+#define NFADDR 0x08
+#define NFDATA 0x0c
+#define NFSTAT 0x10
+#define NFECC 0x14
+
+/* S3C2410 specific bits */
+#define NFSTAT_BUSY (1)
+#define NFCONF_nFCE (1 << 11)
+#define NFCONF_INITECC (1 << 12)
+#define NFCONF_EN (1 << 15)
+
+#endif	/* CONFIG_CPU_S3C2410 */
+
+#ifdef CONFIG_CPU_S3C2440
+
+#define NFCONT 0x04
+#define NFCMD 0x08
+#define NFADDR 0x0C
+#define NFDATA 0x10
+
+#define NFECC 0x1C
+#define NFSTAT 0x20
+
+/* S3C2440 specific bits */
+#define NFSTAT_BUSY (1)
+#define NFCONT_nFCE (1 << 1)
+#define NFCONF_INITECC (1 << 12)
+#define NFCONT_EN (1)
+
+#endif	/* CONFIG_CPU_S3C2440 */
+
+
+struct s3c24x0_nand_host {
+	struct mtd_info		mtd;
+	struct nand_chip	nand;
+	struct mtd_partition	*parts;
+	struct device_d		*dev;
+
+	unsigned long		base;
+};
+
+/**
+ * oob placement block for use with hardware ecc generation
+ */
+static struct nand_ecclayout nand_hw_eccoob = {
+	.eccbytes = 3,
+	.eccpos = { 0, 1, 2},
+	.oobfree = {
+		{
+			.offset = 8,
+			.length = 8
+		}
+	}
+};
+
+/* - Functions shared between the boot strap code and the regular driver - */
+
+/**
+ * Issue the specified command to the NAND device
+ * @param[in] host Base address of the NAND controller
+ * @param[in] cmd Command for NAND flash
+ */
+static void __nand_boot_init send_cmd(unsigned long host, uint8_t cmd)
+{
+	writeb(cmd, host + NFCMD);
+}
+
+/**
+ * Issue the specified address to the NAND device
+ * @param[in] host Base address of the NAND controller
+ * @param[in] addr Address for the NAND flash
+ */
+static void __nand_boot_init send_addr(unsigned long host, uint8_t addr)
+{
+	writeb(addr, host + NFADDR);
+}
+
+/**
+ * Enable the NAND flash access
+ * @param[in] host Base address of the NAND controller
+ */
+static void __nand_boot_init enable_cs(unsigned long host)
+{
+#ifdef CONFIG_CPU_S3C2410
+	writew(readw(host + NFCONF) & ~NFCONF_nFCE, host + NFCONF);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	writew(readw(host + NFCONT) & ~NFCONT_nFCE, host + NFCONT);
+#endif
+}
+
+/**
+ * Disable the NAND flash access
+ * @param[in] host Base address of the NAND controller
+ */
+static void __nand_boot_init disable_cs(unsigned long host)
+{
+#ifdef CONFIG_CPU_S3C2410
+	writew(readw(host + NFCONF) | NFCONF_nFCE, host + NFCONF);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	writew(readw(host + NFCONT) | NFCONT_nFCE, host + NFCONT);
+#endif
+}
+
+/**
+ * Enable the NAND flash controller
+ * @param[in] host Base address of the NAND controller
+ * @param[in] timing Timing to access the NAND memory
+ */
+static void __nand_boot_init enable_nand_controller(unsigned long host, uint32_t timing)
+{
+#ifdef CONFIG_CPU_S3C2410
+	writew(timing + NFCONF_EN + NFCONF_nFCE, host + NFCONF);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	writew(NFCONT_EN + NFCONT_nFCE, host + NFCONT);
+	writew(timing, host + NFCONF);
+#endif
+}
+
+/**
+ * Diable the NAND flash controller
+ * @param[in] host Base address of the NAND controller
+ */
+static void __nand_boot_init disable_nand_controller(unsigned long host)
+{
+#ifdef CONFIG_CPU_S3C2410
+	writew(NFCONF_nFCE, host + NFCONF);
+#endif
+#ifdef CONFIG_CPU_S3C2440
+	writew(NFCONT_nFCE, host + NFCONT);
+#endif
+}
+
+/* ----------------------------------------------------------------------- */
+
+/**
+ * Check the ECC and try to repair the data if possible
+ * @param[in] mtd_info FIXME
+ * @param[inout] dat Pointer to the data buffer that might contain a bit error
+ * @param[in] read_ecc ECC data from the OOB space
+ * @param[in] calc_ecc ECC data calculated from the data
+ * @return 0 no error, 1 repaired error, -1 no way...
+ *
+ * @note: Alsways 512 byte of data
+ */
+static int s3c2410_nand_correct_data(struct mtd_info *mtd, uint8_t *dat,
+				uint8_t *read_ecc, uint8_t *calc_ecc)
+{
+	unsigned int diff0, diff1, diff2;
+	unsigned int bit, byte;
+
+	diff0 = read_ecc[0] ^ calc_ecc[0];
+	diff1 = read_ecc[1] ^ calc_ecc[1];
+	diff2 = read_ecc[2] ^ calc_ecc[2];
+
+	if (diff0 == 0 && diff1 == 0 && diff2 == 0)
+		return 0;		/* ECC is ok */
+
+	/* sometimes people do not think about using the ECC, so check
+	 * to see if we have an 0xff,0xff,0xff read ECC and then ignore
+	 * the error, on the assumption that this is an un-eccd page.
+	 */
+	if (read_ecc[0] == 0xff && read_ecc[1] == 0xff && read_ecc[2] == 0xff
+		/* && info->platform->ignore_unset_ecc */)
+		return 0;
+
+	/* Can we correct this ECC (ie, one row and column change).
+	 * Note, this is similar to the 256 error code on smartmedia */
+
+	if (((diff0 ^ (diff0 >> 1)) & 0x55) == 0x55 &&
+	    ((diff1 ^ (diff1 >> 1)) & 0x55) == 0x55 &&
+	    ((diff2 ^ (diff2 >> 1)) & 0x55) == 0x55) {
+		/* calculate the bit position of the error */
+
+		bit  = ((diff2 >> 3) & 1) |
+		       ((diff2 >> 4) & 2) |
+		       ((diff2 >> 5) & 4);
+
+		/* calculate the byte position of the error */
+
+		byte = ((diff2 << 7) & 0x100) |
+		       ((diff1 << 0) & 0x80)  |
+		       ((diff1 << 1) & 0x40)  |
+		       ((diff1 << 2) & 0x20)  |
+		       ((diff1 << 3) & 0x10)  |
+		       ((diff0 >> 4) & 0x08)  |
+		       ((diff0 >> 3) & 0x04)  |
+		       ((diff0 >> 2) & 0x02)  |
+		       ((diff0 >> 1) & 0x01);
+
+		dat[byte] ^= (1 << bit);
+		return 1;
+	}
+
+	/* if there is only one bit difference in the ECC, then
+	 * one of only a row or column parity has changed, which
+	 * means the error is most probably in the ECC itself */
+
+	diff0 |= (diff1 << 8);
+	diff0 |= (diff2 << 16);
+
+	if ((diff0 & ~(1<<fls(diff0))) == 0)
+		return 1;
+
+	return -1;
+}
+
+static void s3c2410_nand_enable_hwecc(struct mtd_info *mtd, int mode)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct s3c24x0_nand_host *host = nand_chip->priv;
+
+	writel(readl(host->base + NFCONF) | NFCONF_INITECC , host->base + NFCONF);
+}
+
+static int s3c2410_nand_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat, uint8_t *ecc_code)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct s3c24x0_nand_host *host = nand_chip->priv;
+
+	ecc_code[0] = readb(host->base + NFECC);
+	ecc_code[1] = readb(host->base + NFECC + 1);
+	ecc_code[2] = readb(host->base + NFECC + 2);
+
+	return 0;
+}
+
+static void s3c24x0_nand_select_chip(struct mtd_info *mtd, int chip)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct s3c24x0_nand_host *host = nand_chip->priv;
+
+	if (chip == -1)
+		disable_cs(host->base);
+	else
+		enable_cs(host->base);
+}
+
+static int s3c24x0_nand_devready(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct s3c24x0_nand_host *host = nand_chip->priv;
+
+	return readw(host->base + NFSTAT) & NFSTAT_BUSY;
+}
+
+static void s3c24x0_nand_hwcontrol(struct mtd_info *mtd, int cmd,
+					unsigned int ctrl)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct s3c24x0_nand_host *host = nand_chip->priv;
+
+	if (cmd == NAND_CMD_NONE)
+		return;
+	/*
+	* If the CLE should be active, this call is a NAND command
+	*/
+	if (ctrl & NAND_CLE)
+		send_cmd(host->base, cmd);
+	/*
+	* If the ALE should be active, this call is a NAND address
+	*/
+	if (ctrl & NAND_ALE)
+		send_addr(host->base, cmd);
+}
+
+static int s3c24x0_nand_inithw(struct s3c24x0_nand_host *host)
+{
+	struct s3c24x0_nand_platform_data *pdata = host->dev->platform_data;
+	uint32_t tmp;
+
+	/* reset the NAND controller */
+	disable_nand_controller(host->base);
+
+	if (pdata != NULL)
+		tmp = pdata->nand_timing;
+	else
+		/* else slowest possible timing */
+		tmp = CALC_NFCONF_TIMING(4, 8, 8);
+
+	/* reenable the NAND controller */
+	enable_nand_controller(host->base, tmp);
+
+	return 0;
+}
+
+static int s3c24x0_nand_probe(struct device_d *dev)
+{
+	struct nand_chip *chip;
+	struct mtd_info *mtd;
+	struct s3c24x0_nand_host *host;
+	int ret;
+
+	/* Allocate memory for MTD device structure and private data */
+	host = kzalloc(sizeof(struct s3c24x0_nand_host), GFP_KERNEL);
+	if (!host)
+		return -ENOMEM;
+
+	host->dev = dev;
+	host->base = dev->map_base;
+
+	/* structures must be linked */
+	chip = &host->nand;
+	mtd = &host->mtd;
+	mtd->priv = chip;
+
+	/* init the default settings */
+#if 0
+	/* TODO: Will follow later */
+	init_nand_chip_bw8(chip);
+#endif
+	/* 50 us command delay time */
+	chip->chip_delay = 50;
+	chip->priv = host;
+
+	chip->IO_ADDR_R = chip->IO_ADDR_W = (void*)(dev->map_base + NFDATA);
+
+	chip->cmd_ctrl = s3c24x0_nand_hwcontrol;
+	chip->dev_ready = s3c24x0_nand_devready;
+	chip->select_chip = s3c24x0_nand_select_chip;
+
+	/* we are using the hardware ECC feature of this device */
+	chip->ecc.calculate = s3c2410_nand_calculate_ecc;
+	chip->ecc.correct = s3c2410_nand_correct_data;
+	chip->ecc.hwctl = s3c2410_nand_enable_hwecc;
+	chip->ecc.calculate = s3c2410_nand_calculate_ecc;
+
+	/* our hardware capabilities */
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.size = 512;
+	chip->ecc.bytes = 3;
+	chip->ecc.layout = &nand_hw_eccoob;
+
+	ret = s3c24x0_nand_inithw(host);
+	if (ret != 0)
+		goto on_error;
+
+	/* Scan to find existence of the device */
+	ret = nand_scan(mtd, 1);
+	if (ret != 0) {
+		ret = -ENXIO;
+		goto on_error;
+	}
+
+	return add_mtd_device(mtd);
+	
+on_error:
+	free(host);
+	return ret;
+}
+
+static struct driver_d s3c24x0_nand_driver = {
+	.name  = "s3c24x0_nand",
+	.probe = s3c24x0_nand_probe,
+};
+
+#ifdef CONFIG_S3C24XX_NAND_BOOT
+
+static void __nand_boot_init wait_for_completion(unsigned long host)
+{
+	while (!(readw(host + NFSTAT) & NFSTAT_BUSY))
+		;
+}
+
+static void __nand_boot_init nfc_addr(unsigned long host, uint32_t offs)
+{
+	send_addr(host, offs & 0xff);
+	send_addr(host, (offs >> 9) & 0xff);
+	send_addr(host, (offs >> 17) & 0xff);
+	send_addr(host, (offs >> 25) & 0xff);
+}
+
+/**
+ * Load a sequential count of blocks from the NAND into memory
+ * @param[out] dest Pointer to target area (in SDRAM)
+ * @param[in] size Bytes to read from NAND device
+ * @param[in] page Start page to read from
+ * @param[in] pagesize Size of each page in the NAND
+ *
+ * This function must be located in the first 4kiB of the barebox image
+ * (guess why). When this routine is running the SDRAM is up and running
+ * and it runs from the correct address (physical=linked address).
+ * TODO Could we access the platform data from the boardfile?
+ * Due to it makes no sense this function does not return in case of failure.
+ */
+void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, int pagesize)
+{
+	unsigned long host = S3C24X0_NAND_BASE;
+	int i;
+
+	/*
+	 * Reenable the NFC and use the default (but slow) access
+	 * timing or the board specific setting if provided.
+	 */
+	enable_nand_controller(host, BOARD_DEFAULT_NAND_TIMING);
+	enable_cs(host);
+
+	/* Reset the NAND device */
+	send_cmd(host, NAND_CMD_RESET);
+	wait_for_completion(host);
+	disable_cs(host);
+
+	do {
+		enable_cs(host);
+		send_cmd(host, NAND_CMD_READ0);
+		nfc_addr(host, page * pagesize);
+		wait_for_completion(host);
+		/* copy one page (do *not* use readsb() here!)*/
+		for (i = 0; i < pagesize; i++)
+			writeb(readb(host + NFDATA), (unsigned long)(dest + i));
+		disable_cs(host);
+
+		page++;
+		dest += pagesize;
+		size -= pagesize;
+	} while (size >= 0);
+
+	/* disable the controller again */
+	disable_nand_controller(host);
+}
+
+#ifdef CONFIG_NAND_S3C24XX_BOOT_DEBUG
+#include <command.h>
+
+static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
+{
+	void *dest;
+	int size, pagesize;
+
+	if (argc < 3)
+		return COMMAND_ERROR_USAGE;
+
+	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
+	size = strtoul_suffix(argv[2], NULL, 0);
+	pagesize = strtoul_suffix(argv[3], NULL, 0);
+
+	s3c24x0_nand_load_image(dest, size, 0, pagesize);
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_nand_boot_test_help[] =
+"Usage: nand_boot_test <dest> <size> <pagesize>\n";
+
+BAREBOX_CMD_START(nand_boot_test)
+	.cmd		= do_nand_boot_test,
+	.usage		= "load an image from NAND",
+	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
+BAREBOX_CMD_END
+#endif
+
+#endif /* CONFIG_S3C24XX_NAND_BOOT */
+
+/*
+ * Main initialization routine
+ * @return 0 if successful; non-zero otherwise
+ */
+static int __init s3c24x0_nand_init(void)
+{
+	return register_driver(&s3c24x0_nand_driver);
+}
+
+device_initcall(s3c24x0_nand_init);
diff --git a/drivers/mtd/nand/nand_util.c b/drivers/mtd/nand/nand_util.c
new file mode 100644
index 0000000..d57294e
--- /dev/null
+++ b/drivers/mtd/nand/nand_util.c
@@ -0,0 +1,858 @@
+/*
+ * drivers/nand/nand_util.c
+ *
+ * Copyright (C) 2006 by Weiss-Electronic GmbH.
+ * All rights reserved.
+ *
+ * @author:	Guido Classen <clagix@gmail.com>
+ * @descr:	NAND Flash support
+ * @references: borrowed heavily from Linux mtd-utils code:
+ *		flash_eraseall.c by Arcom Control System Ltd
+ *		nandwrite.c by Steven J. Hill (sjhill@realitydiluted.com)
+ *			       and Thomas Gleixner (tglx@linutronix.de)
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License version
+ * 2 as published by the Free Software Foundation.
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
+#include <command.h>
+#include <watchdog.h>
+#include <malloc.h>
+
+#include <nand.h>
+//#include <jffs2/jffs2.h>
+
+typedef struct erase_info erase_info_t;
+typedef struct mtd_info	  mtd_info_t;
+
+/* support only for native endian JFFS2 */
+#define cpu_to_je16(x) (x)
+#define cpu_to_je32(x) (x)
+
+/*****************************************************************************/
+static int nand_block_bad_scrub(struct mtd_info *mtd, loff_t ofs, int getchip)
+{
+	return 0;
+}
+
+/**
+ * nand_erase_opts: - erase NAND flash with support for various options
+ *		      (jffs2 formating)
+ *
+ * @param meminfo	NAND device to erase
+ * @param opts		options,  @see struct nand_erase_options
+ * @return		0 in case of success
+ *
+ * This code is ported from flash_eraseall.c from Linux mtd utils by
+ * Arcom Control System Ltd.
+ */
+int nand_erase_opts(nand_info_t *meminfo, const nand_erase_options_t *opts)
+{
+	struct jffs2_unknown_node cleanmarker;
+	int clmpos = 0;
+	int clmlen = 8;
+	erase_info_t erase;
+	ulong erase_length;
+	int isNAND;
+	int bbtest = 1;
+	int result;
+	int percent_complete = -1;
+	int (*nand_block_bad_old)(struct mtd_info *, loff_t, int) = NULL;
+	const char *mtd_device = meminfo->name;
+
+	memset(&erase, 0, sizeof(erase));
+
+	erase.mtd = meminfo;
+	erase.len  = meminfo->erasesize;
+	erase.addr = opts->offset;
+	erase_length = opts->length;
+
+	isNAND = meminfo->type == MTD_NANDFLASH ? 1 : 0;
+
+	if (opts->jffs2) {
+		cleanmarker.magic = cpu_to_je16 (JFFS2_MAGIC_BITMASK);
+		cleanmarker.nodetype = cpu_to_je16 (JFFS2_NODETYPE_CLEANMARKER);
+		if (isNAND) {
+			struct nand_oobinfo *oobinfo = &meminfo->oobinfo;
+
+			/* check for autoplacement */
+			if (oobinfo->useecc == MTD_NANDECC_AUTOPLACE) {
+				/* get the position of the free bytes */
+				if (!oobinfo->oobfree[0][1]) {
+					printf(" Eeep. Autoplacement selected "
+					       "and no empty space in oob\n");
+					return -1;
+				}
+				clmpos = oobinfo->oobfree[0][0];
+				clmlen = oobinfo->oobfree[0][1];
+				if (clmlen > 8)
+					clmlen = 8;
+			} else {
+				/* legacy mode */
+				switch (meminfo->oobsize) {
+				case 8:
+					clmpos = 6;
+					clmlen = 2;
+					break;
+				case 16:
+					clmpos = 8;
+					clmlen = 8;
+					break;
+				case 64:
+					clmpos = 16;
+					clmlen = 8;
+					break;
+				}
+			}
+
+			cleanmarker.totlen = cpu_to_je32(8);
+		} else {
+			cleanmarker.totlen =
+				cpu_to_je32(sizeof(struct jffs2_unknown_node));
+		}
+		cleanmarker.hdr_crc =  cpu_to_je32(
+			crc32_no_comp(0, (unsigned char *) &cleanmarker,
+				      sizeof(struct jffs2_unknown_node) - 4));
+	}
+
+	/* scrub option allows to erase badblock. To prevent internal
+	 * check from erase() method, set block check method to dummy
+	 * and disable bad block table while erasing.
+	 */
+	if (opts->scrub) {
+		struct nand_chip *priv_nand = meminfo->priv;
+
+		nand_block_bad_old = priv_nand->block_bad;
+		priv_nand->block_bad = nand_block_bad_scrub;
+		/* we don't need the bad block table anymore...
+		 * after scrub, there are no bad blocks left!
+		 */
+		if (priv_nand->bbt) {
+			kfree(priv_nand->bbt);
+		}
+		priv_nand->bbt = NULL;
+	}
+
+	for (;
+	     erase.addr < opts->offset + erase_length;
+	     erase.addr += meminfo->erasesize) {
+
+		WATCHDOG_RESET ();
+
+		if (!opts->scrub && bbtest) {
+			int ret = meminfo->block_isbad(meminfo, erase.addr);
+			if (ret > 0) {
+				if (!opts->quiet)
+					printf("\rSkipping bad block at  "
+					       "0x%08x                   "
+					       "                         \n",
+					       erase.addr);
+				continue;
+
+			} else if (ret < 0) {
+				printf("\n%s: MTD get bad block failed: %d\n",
+				       mtd_device,
+				       ret);
+				return -1;
+			}
+		}
+
+		result = meminfo->erase(meminfo, &erase);
+		if (result != 0) {
+			printf("\n%s: MTD Erase failure: %d\n",
+			       mtd_device, result);
+			continue;
+		}
+
+		/* format for JFFS2 ? */
+		if (opts->jffs2) {
+
+			/* write cleanmarker */
+			if (isNAND) {
+				size_t written;
+				result = meminfo->write_oob(meminfo,
+							    erase.addr + clmpos,
+							    clmlen,
+							    &written,
+							    (unsigned char *)
+							    &cleanmarker);
+				if (result != 0) {
+					printf("\n%s: MTD writeoob failure: %d\n",
+					       mtd_device, result);
+					continue;
+				}
+			} else {
+				printf("\n%s: this erase routine only supports"
+				       " NAND devices!\n",
+				       mtd_device);
+			}
+		}
+
+		if (!opts->quiet) {
+			int percent = (int)
+				((unsigned long long)
+				 (erase.addr+meminfo->erasesize-opts->offset)
+				 * 100 / erase_length);
+
+			/* output progress message only at whole percent
+			 * steps to reduce the number of messages printed
+			 * on (slow) serial consoles
+			 */
+			if (percent != percent_complete) {
+				percent_complete = percent;
+
+				printf("\rErasing at 0x%x -- %3d%% complete.",
+				       erase.addr, percent);
+
+				if (opts->jffs2 && result == 0)
+					printf(" Cleanmarker written at 0x%x.",
+					       erase.addr);
+			}
+		}
+	}
+	if (!opts->quiet)
+		printf("\n");
+
+	if (nand_block_bad_old) {
+		struct nand_chip *priv_nand = meminfo->priv;
+
+		priv_nand->block_bad = nand_block_bad_old;
+		priv_nand->scan_bbt(meminfo);
+	}
+
+	return 0;
+}
+
+#define MAX_PAGE_SIZE	2048
+#define MAX_OOB_SIZE	64
+
+/*
+ * buffer array used for writing data
+ */
+static unsigned char data_buf[MAX_PAGE_SIZE];
+static unsigned char oob_buf[MAX_OOB_SIZE];
+
+/* OOB layouts to pass into the kernel as default */
+static struct nand_oobinfo none_oobinfo = {
+	.useecc = MTD_NANDECC_OFF,
+};
+
+static struct nand_oobinfo jffs2_oobinfo = {
+	.useecc = MTD_NANDECC_PLACE,
+	.eccbytes = 6,
+	.eccpos = { 0, 1, 2, 3, 6, 7 }
+};
+
+static struct nand_oobinfo yaffs_oobinfo = {
+	.useecc = MTD_NANDECC_PLACE,
+	.eccbytes = 6,
+	.eccpos = { 8, 9, 10, 13, 14, 15}
+};
+
+static struct nand_oobinfo autoplace_oobinfo = {
+	.useecc = MTD_NANDECC_AUTOPLACE
+};
+
+/**
+ * nand_write_opts: - write image to NAND flash with support for various options
+ *
+ * @param meminfo	NAND device to erase
+ * @param opts		write options (@see nand_write_options)
+ * @return		0 in case of success
+ *
+ * This code is ported from nandwrite.c from Linux mtd utils by
+ * Steven J. Hill and Thomas Gleixner.
+ */
+int nand_write_opts(nand_info_t *meminfo, const nand_write_options_t *opts)
+{
+	int imglen = 0;
+	int pagelen;
+	int baderaseblock;
+	int blockstart = -1;
+	loff_t offs;
+	int readlen;
+	int oobinfochanged = 0;
+	int percent_complete = -1;
+	struct nand_oobinfo old_oobinfo;
+	ulong mtdoffset = opts->offset;
+	ulong erasesize_blockalign;
+	u_char *buffer = opts->buffer;
+	size_t written;
+	int result;
+
+	if (opts->pad && opts->writeoob) {
+		printf("Can't pad when oob data is present.\n");
+		return -1;
+	}
+
+	/* set erasesize to specified number of blocks - to match
+	 * jffs2 (virtual) block size */
+	if (opts->blockalign == 0) {
+		erasesize_blockalign = meminfo->erasesize;
+	} else {
+		erasesize_blockalign = meminfo->erasesize * opts->blockalign;
+	}
+
+	/* make sure device page sizes are valid */
+	if (!(meminfo->oobsize == 16 && meminfo->oobblock == 512)
+	    && !(meminfo->oobsize == 8 && meminfo->oobblock == 256)
+	    && !(meminfo->oobsize == 64 && meminfo->oobblock == 2048)) {
+		printf("Unknown flash (not normal NAND)\n");
+		return -1;
+	}
+
+	/* read the current oob info */
+	memcpy(&old_oobinfo, &meminfo->oobinfo, sizeof(old_oobinfo));
+
+	/* write without ecc? */
+	if (opts->noecc) {
+		memcpy(&meminfo->oobinfo, &none_oobinfo,
+		       sizeof(meminfo->oobinfo));
+		oobinfochanged = 1;
+	}
+
+	/* autoplace ECC? */
+	if (opts->autoplace && (old_oobinfo.useecc != MTD_NANDECC_AUTOPLACE)) {
+
+		memcpy(&meminfo->oobinfo, &autoplace_oobinfo,
+		       sizeof(meminfo->oobinfo));
+		oobinfochanged = 1;
+	}
+
+	/* force OOB layout for jffs2 or yaffs? */
+	if (opts->forcejffs2 || opts->forceyaffs) {
+		struct nand_oobinfo *oobsel =
+			opts->forcejffs2 ? &jffs2_oobinfo : &yaffs_oobinfo;
+
+		if (meminfo->oobsize == 8) {
+			if (opts->forceyaffs) {
+				printf("YAFSS cannot operate on "
+				       "256 Byte page size\n");
+				goto restoreoob;
+			}
+			/* Adjust number of ecc bytes */
+			jffs2_oobinfo.eccbytes = 3;
+		}
+
+		memcpy(&meminfo->oobinfo, oobsel, sizeof(meminfo->oobinfo));
+	}
+
+	/* get image length */
+	imglen = opts->length;
+	pagelen = meminfo->oobblock
+		+ ((opts->writeoob != 0) ? meminfo->oobsize : 0);
+
+	/* check, if file is pagealigned */
+	if ((!opts->pad) && ((imglen % pagelen) != 0)) {
+		printf("Input block length is not page aligned\n");
+		goto restoreoob;
+	}
+
+	/* check, if length fits into device */
+	if (((imglen / pagelen) * meminfo->oobblock)
+	     > (meminfo->size - opts->offset)) {
+		printf("Image %d bytes, NAND page %d bytes, "
+		       "OOB area %u bytes, device size %u bytes\n",
+		       imglen, pagelen, meminfo->oobblock, meminfo->size);
+		printf("Input block does not fit into device\n");
+		goto restoreoob;
+	}
+
+	if (!opts->quiet)
+		printf("\n");
+
+	/* get data from input and write to the device */
+	while (imglen && (mtdoffset < meminfo->size)) {
+
+		WATCHDOG_RESET ();
+
+		/*
+		 * new eraseblock, check for bad block(s). Stay in the
+		 * loop to be sure if the offset changes because of
+		 * a bad block, that the next block that will be
+		 * written to is also checked. Thus avoiding errors if
+		 * the block(s) after the skipped block(s) is also bad
+		 * (number of blocks depending on the blockalign
+		 */
+		while (blockstart != (mtdoffset & (~erasesize_blockalign+1))) {
+			blockstart = mtdoffset & (~erasesize_blockalign+1);
+			offs = blockstart;
+			baderaseblock = 0;
+
+			/* check all the blocks in an erase block for
+			 * bad blocks */
+			do {
+				int ret = meminfo->block_isbad(meminfo, offs);
+
+				if (ret < 0) {
+					printf("Bad block check failed\n");
+					goto restoreoob;
+				}
+				if (ret == 1) {
+					baderaseblock = 1;
+					if (!opts->quiet)
+						printf("\rBad block at 0x%lx "
+						       "in erase block from "
+						       "0x%x will be skipped\n",
+						       (long) offs,
+						       blockstart);
+				}
+
+				if (baderaseblock) {
+					mtdoffset = blockstart
+						+ erasesize_blockalign;
+				}
+				offs +=	 erasesize_blockalign
+					/ opts->blockalign;
+			} while (offs < blockstart + erasesize_blockalign);
+		}
+
+		readlen = meminfo->oobblock;
+		if (opts->pad && (imglen < readlen)) {
+			readlen = imglen;
+			memset(data_buf + readlen, 0xff,
+			       meminfo->oobblock - readlen);
+		}
+
+		/* read page data from input memory buffer */
+		memcpy(data_buf, buffer, readlen);
+		buffer += readlen;
+
+		if (opts->writeoob) {
+			/* read OOB data from input memory block, exit
+			 * on failure */
+			memcpy(oob_buf, buffer, meminfo->oobsize);
+			buffer += meminfo->oobsize;
+
+			/* write OOB data first, as ecc will be placed
+			 * in there*/
+			result = meminfo->write_oob(meminfo,
+						    mtdoffset,
+						    meminfo->oobsize,
+						    &written,
+						    (unsigned char *)
+						    &oob_buf);
+
+			if (result != 0) {
+				printf("\nMTD writeoob failure: %d\n",
+				       result);
+				goto restoreoob;
+			}
+			imglen -= meminfo->oobsize;
+		}
+
+		/* write out the page data */
+		result = meminfo->write(meminfo,
+					mtdoffset,
+					meminfo->oobblock,
+					&written,
+					(unsigned char *) &data_buf);
+
+		if (result != 0) {
+			printf("writing NAND page at offset 0x%lx failed\n",
+			       mtdoffset);
+			goto restoreoob;
+		}
+		imglen -= readlen;
+
+		if (!opts->quiet) {
+			int percent = (int)
+				((unsigned long long)
+				 (opts->length-imglen) * 100
+				 / opts->length);
+			/* output progress message only at whole percent
+			 * steps to reduce the number of messages printed
+			 * on (slow) serial consoles
+			 */
+			if (percent != percent_complete) {
+				printf("\rWriting data at 0x%x "
+				       "-- %3d%% complete.",
+				       mtdoffset, percent);
+				percent_complete = percent;
+			}
+		}
+
+		mtdoffset += meminfo->oobblock;
+	}
+
+	if (!opts->quiet)
+		printf("\n");
+
+restoreoob:
+	if (oobinfochanged) {
+		memcpy(&meminfo->oobinfo, &old_oobinfo,
+		       sizeof(meminfo->oobinfo));
+	}
+
+	if (imglen > 0) {
+		printf("Data did not fit into device, due to bad blocks\n");
+		return -1;
+	}
+
+	/* return happy */
+	return 0;
+}
+
+/**
+ * nand_read_opts: - read image from NAND flash with support for various options
+ *
+ * @param meminfo	NAND device to erase
+ * @param opts		read options (@see struct nand_read_options)
+ * @return		0 in case of success
+ *
+ */
+int nand_read_opts(nand_info_t *meminfo, const nand_read_options_t *opts)
+{
+	int imglen = opts->length;
+	int pagelen;
+	int baderaseblock;
+	int blockstart = -1;
+	int percent_complete = -1;
+	loff_t offs;
+	size_t readlen;
+	ulong mtdoffset = opts->offset;
+	u_char *buffer = opts->buffer;
+	int result;
+
+	/* make sure device page sizes are valid */
+	if (!(meminfo->oobsize == 16 && meminfo->oobblock == 512)
+	    && !(meminfo->oobsize == 8 && meminfo->oobblock == 256)
+	    && !(meminfo->oobsize == 64 && meminfo->oobblock == 2048)) {
+		printf("Unknown flash (not normal NAND)\n");
+		return -1;
+	}
+
+	pagelen = meminfo->oobblock
+		+ ((opts->readoob != 0) ? meminfo->oobsize : 0);
+
+	/* check, if length is not larger than device */
+	if (((imglen / pagelen) * meminfo->oobblock)
+	     > (meminfo->size - opts->offset)) {
+		printf("Image %d bytes, NAND page %d bytes, "
+		       "OOB area %u bytes, device size %u bytes\n",
+		       imglen, pagelen, meminfo->oobblock, meminfo->size);
+		printf("Input block is larger than device\n");
+		return -1;
+	}
+
+	if (!opts->quiet)
+		printf("\n");
+
+	/* get data from input and write to the device */
+	while (imglen && (mtdoffset < meminfo->size)) {
+
+		WATCHDOG_RESET ();
+
+		/*
+		 * new eraseblock, check for bad block(s). Stay in the
+		 * loop to be sure if the offset changes because of
+		 * a bad block, that the next block that will be
+		 * written to is also checked. Thus avoiding errors if
+		 * the block(s) after the skipped block(s) is also bad
+		 * (number of blocks depending on the blockalign
+		 */
+		while (blockstart != (mtdoffset & (~meminfo->erasesize+1))) {
+			blockstart = mtdoffset & (~meminfo->erasesize+1);
+			offs = blockstart;
+			baderaseblock = 0;
+
+			/* check all the blocks in an erase block for
+			 * bad blocks */
+			do {
+				int ret = meminfo->block_isbad(meminfo, offs);
+
+				if (ret < 0) {
+					printf("Bad block check failed\n");
+					return -1;
+				}
+				if (ret == 1) {
+					baderaseblock = 1;
+					if (!opts->quiet)
+						printf("\rBad block at 0x%lx "
+						       "in erase block from "
+						       "0x%x will be skipped\n",
+						       (long) offs,
+						       blockstart);
+				}
+
+				if (baderaseblock) {
+					mtdoffset = blockstart
+						+ meminfo->erasesize;
+				}
+				offs +=	 meminfo->erasesize;
+
+			} while (offs < blockstart + meminfo->erasesize);
+		}
+
+
+		/* read page data to memory buffer */
+		result = meminfo->read(meminfo,
+				       mtdoffset,
+				       meminfo->oobblock,
+				       &readlen,
+				       (unsigned char *) &data_buf);
+
+		if (result != 0) {
+			printf("reading NAND page at offset 0x%lx failed\n",
+			       mtdoffset);
+			return -1;
+		}
+
+		if (imglen < readlen) {
+			readlen = imglen;
+		}
+
+		memcpy(buffer, data_buf, readlen);
+		buffer += readlen;
+		imglen -= readlen;
+
+		if (opts->readoob) {
+			result = meminfo->read_oob(meminfo,
+						   mtdoffset,
+						   meminfo->oobsize,
+						   &readlen,
+						   (unsigned char *)
+						   &oob_buf);
+
+			if (result != 0) {
+				printf("\nMTD readoob failure: %d\n",
+				       result);
+				return -1;
+			}
+
+
+			if (imglen < readlen) {
+				readlen = imglen;
+			}
+
+			memcpy(buffer, oob_buf, readlen);
+
+			buffer += readlen;
+			imglen -= readlen;
+		}
+
+		if (!opts->quiet) {
+			int percent = (int)
+				((unsigned long long)
+				 (opts->length-imglen) * 100
+				 / opts->length);
+			/* output progress message only at whole percent
+			 * steps to reduce the number of messages printed
+			 * on (slow) serial consoles
+			 */
+			if (percent != percent_complete) {
+			if (!opts->quiet)
+				printf("\rReading data from 0x%x "
+				       "-- %3d%% complete.",
+				       mtdoffset, percent);
+				percent_complete = percent;
+			}
+		}
+
+		mtdoffset += meminfo->oobblock;
+	}
+
+	if (!opts->quiet)
+		printf("\n");
+
+	if (imglen > 0) {
+		printf("Could not read entire image due to bad blocks\n");
+		return -1;
+	}
+
+	/* return happy */
+	return 0;
+}
+
+/******************************************************************************
+ * Support for locking / unlocking operations of some NAND devices
+ *****************************************************************************/
+
+#define NAND_CMD_LOCK		0x2a
+#define NAND_CMD_LOCK_TIGHT	0x2c
+#define NAND_CMD_UNLOCK1	0x23
+#define NAND_CMD_UNLOCK2	0x24
+#define NAND_CMD_LOCK_STATUS	0x7a
+
+/**
+ * nand_lock: Set all pages of NAND flash chip to the LOCK or LOCK-TIGHT
+ *	      state
+ *
+ * @param meminfo	nand mtd instance
+ * @param tight		bring device in lock tight mode
+ *
+ * @return		0 on success, -1 in case of error
+ *
+ * The lock / lock-tight command only applies to the whole chip. To get some
+ * parts of the chip lock and others unlocked use the following sequence:
+ *
+ * - Lock all pages of the chip using nand_lock(mtd, 0) (or the lockpre pin)
+ * - Call nand_unlock() once for each consecutive area to be unlocked
+ * - If desired: Bring the chip to the lock-tight state using nand_lock(mtd, 1)
+ *
+ *   If the device is in lock-tight state software can't change the
+ *   current active lock/unlock state of all pages. nand_lock() / nand_unlock()
+ *   calls will fail. It is only posible to leave lock-tight state by
+ *   an hardware signal (low pulse on _WP pin) or by power down.
+ */
+int nand_lock(nand_info_t *meminfo, int tight)
+{
+	int ret = 0;
+	int status;
+	struct nand_chip *this = meminfo->priv;
+
+	/* select the NAND device */
+	this->select_chip(meminfo, 0);
+
+	this->cmdfunc(meminfo,
+		      (tight ? NAND_CMD_LOCK_TIGHT : NAND_CMD_LOCK),
+		      -1, -1);
+
+	/* call wait ready function */
+	status = this->waitfunc(meminfo, this, FL_WRITING);
+
+	/* see if device thinks it succeeded */
+	if (status & 0x01) {
+		ret = -1;
+	}
+
+	/* de-select the NAND device */
+	this->select_chip(meminfo, -1);
+	return ret;
+}
+
+/**
+ * nand_get_lock_status: - query current lock state from one page of NAND
+ *			   flash
+ *
+ * @param meminfo	nand mtd instance
+ * @param offset	page address to query (muss be page aligned!)
+ *
+ * @return		-1 in case of error
+ *			>0 lock status:
+ *			  bitfield with the following combinations:
+ *			  NAND_LOCK_STATUS_TIGHT: page in tight state
+ *			  NAND_LOCK_STATUS_LOCK:  page locked
+ *			  NAND_LOCK_STATUS_UNLOCK: page unlocked
+ *
+ */
+int nand_get_lock_status(nand_info_t *meminfo, ulong offset)
+{
+	int ret = 0;
+	int chipnr;
+	int page;
+	struct nand_chip *this = meminfo->priv;
+
+	/* select the NAND device */
+	chipnr = (int)(offset >> this->chip_shift);
+	this->select_chip(meminfo, chipnr);
+
+
+	if ((offset & (meminfo->oobblock - 1)) != 0) {
+		printf ("nand_get_lock_status: "
+			"Start address must be beginning of "
+			"nand page!\n");
+		ret = -1;
+		goto out;
+	}
+
+	/* check the Lock Status */
+	page = (int)(offset >> this->page_shift);
+	this->cmdfunc(meminfo, NAND_CMD_LOCK_STATUS, -1, page & this->pagemask);
+
+	ret = this->read_byte(meminfo) & (NAND_LOCK_STATUS_TIGHT
+					  | NAND_LOCK_STATUS_LOCK
+					  | NAND_LOCK_STATUS_UNLOCK);
+
+ out:
+	/* de-select the NAND device */
+	this->select_chip(meminfo, -1);
+	return ret;
+}
+
+/**
+ * nand_unlock: - Unlock area of NAND pages
+ *		  only one consecutive area can be unlocked at one time!
+ *
+ * @param meminfo	nand mtd instance
+ * @param start		start byte address
+ * @param length	number of bytes to unlock (must be a multiple of
+ *			page size nand->oobblock)
+ *
+ * @return		0 on success, -1 in case of error
+ */
+int nand_unlock(nand_info_t *meminfo, ulong start, ulong length)
+{
+	int ret = 0;
+	int chipnr;
+	int status;
+	int page;
+	struct nand_chip *this = meminfo->priv;
+	printf ("nand_unlock: start: %08x, length: %d!\n",
+		(int)start, (int)length);
+
+	/* select the NAND device */
+	chipnr = (int)(start >> this->chip_shift);
+	this->select_chip(meminfo, chipnr);
+
+	/* check the WP bit */
+	this->cmdfunc(meminfo, NAND_CMD_STATUS, -1, -1);
+	if ((this->read_byte(meminfo) & 0x80) == 0) {
+		printf ("nand_unlock: Device is write protected!\n");
+		ret = -1;
+		goto out;
+	}
+
+	if ((start & (meminfo->oobblock - 1)) != 0) {
+		printf ("nand_unlock: Start address must be beginning of "
+			"nand page!\n");
+		ret = -1;
+		goto out;
+	}
+
+	if (length == 0 || (length & (meminfo->oobblock - 1)) != 0) {
+		printf ("nand_unlock: Length must be a multiple of nand page "
+			"size!\n");
+		ret = -1;
+		goto out;
+	}
+
+	/* submit address of first page to unlock */
+	page = (int)(start >> this->page_shift);
+	this->cmdfunc(meminfo, NAND_CMD_UNLOCK1, -1, page & this->pagemask);
+
+	/* submit ADDRESS of LAST page to unlock */
+	page += (int)(length >> this->page_shift) - 1;
+	this->cmdfunc(meminfo, NAND_CMD_UNLOCK2, -1, page & this->pagemask);
+
+	/* call wait ready function */
+	status = this->waitfunc(meminfo, this, FL_WRITING);
+	/* see if device thinks it succeeded */
+	if (status & 0x01) {
+		/* there was an error */
+		ret = -1;
+		goto out;
+	}
+
+ out:
+	/* de-select the NAND device */
+	this->select_chip(meminfo, -1);
+	return ret;
+}
+
diff --git a/drivers/nand/Kconfig b/drivers/nand/Kconfig
deleted file mode 100644
index 031b94d..0000000
--- a/drivers/nand/Kconfig
+++ /dev/null
@@ -1,109 +0,0 @@
-menuconfig NAND
-	bool "NAND support                  "
-	select MTD_NAND_IDS
-	help
-	  This enables support for accessing all type of NAND flash
-	  devices. For further information see
-	  <http://www.linux-mtd.infradead.org/doc/nand.html>.
-
-if NAND
-
-config NAND_IMX
-	bool
-	prompt "i.MX NAND driver"
-	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35 || ARCH_IMX25
-
-config NAND_IMX_BOOT
-	bool
-	prompt "Support Starting barebox from NAND"
-	depends on NAND_IMX || NAND_IMX_V2
-
-config NAND_OMAP_GPMC
-	tristate "NAND Flash Support for GPMC based OMAP platforms"
-	depends on ((ARCH_OMAP2 || ARCH_OMAP3) && GPMC)
-	help
-	 Support for NAND flash using GPMC. GPMC is a common memory
-	 interface found on Texas Instrument's OMAP platforms
-
-config NAND_OMAP_GPMC_HWECC
-	bool "The Hardware ECC support"
-	depends on NAND && NAND_OMAP_GPMC
-	default n
-	help
-	 The ECC compuatation for the data to be written/read can be either by
-	 software or omap has Hw ecc engine which calculates it.
-
-config NAND_ATMEL
-	bool
-	prompt "Atmel (AT91SAM9xxx) NAND driver"
-	depends on ARCH_AT91
-
-config NAND_S3C24X0
-	bool
-	prompt "Samsung S3C24X0 NAND driver"
-	depends on ARCH_S3C24xx
-	help
-	  Add support for processor's NAND device controller.
-
-config MTD_NAND_VERIFY_WRITE
-	bool "Verify NAND page writes"
-	help
-	  This adds an extra check when data is written to the flash. The
-	  NAND flash device internally checks only bits transitioning
-	  from 1 to 0. There is a rare possibility that even though the
-	  device thinks the write was successful, a bit could have been
-	  flipped accidentally due to device wear or something else.
-
-config MTD_NAND_ECC_SMC
-	bool "NAND ECC Smart Media byte order"
-	default n
-	help
-	  Software ECC according to the Smart Media Specification.
-	  The original Linux implementation had byte 0 and 1 swapped.
-
-config MTD_NAND_MUSEUM_IDS
-	bool "Enable chip ids for obsolete ancient NAND devices"
-	depends on MTD_NAND
-	default n
-	help
-	  Enable this option only when your board has first generation
-	  NAND chips (page size 256 byte, erase size 4-8KiB). The IDs
-	  of these chips were reused by later, larger chips.
-
-config MTD_NAND_IDS
-	tristate
-
-config MTD_NAND_DISKONCHIP
-	tristate "DiskOnChip 2000, Millennium and Millennium Plus"
-	depends on EXPERIMENTAL && BROKEN
-	help
-	  This is a reimplementation of M-Systems DiskOnChip 2000,
-	  Millennium and Millennium Plus as a standard NAND device driver,
-	  as opposed to the earlier self-contained MTD device drivers.
-	  This should enable, among other things, proper JFFS2 operation on
-	  these devices.
-
-config MTD_NAND_DISKONCHIP_BBTWRITE
-	bool "Allow BBT writes on DiskOnChip Millennium and 2000TSOP"
-	depends on MTD_NAND_DISKONCHIP
-	help
-	  On DiskOnChip devices shipped with the INFTL filesystem (Millennium
-	  and 2000 TSOP/Alon), Linux reserves some space at the end of the
-	  device for the Bad Block Table (BBT).  If you have existing INFTL
-	  data on your device (created by non-Linux tools such as M-Systems'
-	  DOS drivers), your data might overlap the area Linux wants to use for
-	  the BBT.  If this is a concern for you, leave this option disabled and
-	  Linux will not write BBT data into this area.
-	  The downside of leaving this option disabled is that if bad blocks
-	  are detected by Linux, they will not be recorded in the BBT, which
-	  could cause future problems.
-	  Once you enable this option, new filesystems (INFTL or others, created
-	  in Linux or other operating systems) will not use the reserved area.
-	  The only reason not to enable this option is to prevent damage to
-	  preexisting filesystems.
-	  Even if you leave this disabled, you can enable BBT writes at module
-	  load time (assuming you build diskonchip as a module) with the module
-	  parameter "inftl_bbt_write=1".
-
-
-endif
diff --git a/drivers/nand/Makefile b/drivers/nand/Makefile
deleted file mode 100644
index 73f7346..0000000
--- a/drivers/nand/Makefile
+++ /dev/null
@@ -1,12 +0,0 @@
-
-# Generic NAND options
-obj-$(CONFIG_NAND)			+= nand.o nand_ecc.o
-obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
-obj-$(CONFIG_NAND)			+= nand_base.o nand_bbt.o
-
-obj-$(CONFIG_MTD_NAND_DISKONCHIP)	+= diskonchip.o
-obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
-obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o
-obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
-obj-$(CONFIG_NAND_S3C24X0)		+= nand_s3c2410.o
-#obj-$(CONFIG_NAND)			+= nand_util.o
diff --git a/drivers/nand/atmel_nand.c b/drivers/nand/atmel_nand.c
deleted file mode 100644
index c3669e5..0000000
--- a/drivers/nand/atmel_nand.c
+++ /dev/null
@@ -1,516 +0,0 @@
-/*
- *  Copyright (C) 2003 Rick Bronson
- *
- *  Derived from drivers/mtd/nand/autcpu12.c
- *	 Copyright (c) 2001 Thomas Gleixner (gleixner@autronix.de)
- *
- *  Derived from drivers/mtd/spia.c
- *	 Copyright (C) 2000 Steven J. Hill (sjhill@cotw.com)
- *
- *
- *  Add Hardware ECC support for AT91SAM9260 / AT91SAM9263
- *     Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright (C) 2007
- *
- *     Derived from Das barebox source code
- *     		(barebox-1.1.5/board/atmel/at91sam9263ek/nand.c)
- *     (C) Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas
- *
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- */
-
-#include <common.h>
-#include <driver.h>
-#include <malloc.h>
-#include <init.h>
-#include <gpio.h>
-
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-
-#include <asm/io.h>
-#include <mach/board.h>
-
-#include <errno.h>
-
-#ifdef CONFIG_MTD_NAND_ATMEL_ECC_HW
-#define hard_ecc	1
-#else
-#define hard_ecc	0
-#endif
-
-#ifdef CONFIG_MTD_NAND_ATMEL_ECC_NONE
-#define no_ecc		1
-#else
-#define no_ecc		0
-#endif
-
-/* Register access macros */
-#define ecc_readl(add, reg)				\
-	readl(add + ATMEL_ECC_##reg)
-#define ecc_writel(add, reg, value)			\
-	writel((value), add + ATMEL_ECC_##reg)
-
-#include "atmel_nand_ecc.h"	/* Hardware ECC registers */
-
-/* oob layout for large page size
- * bad block info is on bytes 0 and 1
- * the bytes have to be consecutives to avoid
- * several NAND_CMD_RNDOUT during read
- */
-static struct nand_ecclayout atmel_oobinfo_large = {
-	.eccbytes = 4,
-	.eccpos = {60, 61, 62, 63},
-	.oobfree = {
-		{2, 58}
-	},
-};
-
-/* oob layout for small page size
- * bad block info is on bytes 4 and 5
- * the bytes have to be consecutives to avoid
- * several NAND_CMD_RNDOUT during read
- */
-static struct nand_ecclayout atmel_oobinfo_small = {
-	.eccbytes = 4,
-	.eccpos = {0, 1, 2, 3},
-	.oobfree = {
-		{6, 10}
-	},
-};
-
-struct atmel_nand_host {
-	struct nand_chip	nand_chip;
-	struct mtd_info		mtd;
-	void __iomem		*io_base;
-	struct atmel_nand_data	*board;
-	struct device_d		*dev;
-	void __iomem		*ecc;
-};
-
-/*
- * Enable NAND.
- */
-static void atmel_nand_enable(struct atmel_nand_host *host)
-{
-	if (host->board->enable_pin)
-		gpio_set_value(host->board->enable_pin, 0);
-}
-
-/*
- * Disable NAND.
- */
-static void atmel_nand_disable(struct atmel_nand_host *host)
-{
-	if (host->board->enable_pin)
-		gpio_set_value(host->board->enable_pin, 1);
-}
-
-/*
- * Hardware specific access to control-lines
- */
-static void atmel_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct atmel_nand_host *host = nand_chip->priv;
-
-	if (ctrl & NAND_CTRL_CHANGE) {
-		if (ctrl & NAND_NCE)
-			atmel_nand_enable(host);
-		else
-			atmel_nand_disable(host);
-	}
-	if (cmd == NAND_CMD_NONE)
-		return;
-
-	if (ctrl & NAND_CLE)
-		writeb(cmd, host->io_base + (1 << host->board->cle));
-	else
-		writeb(cmd, host->io_base + (1 << host->board->ale));
-}
-
-/*
- * Read the Device Ready pin.
- */
-static int atmel_nand_device_ready(struct mtd_info *mtd)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct atmel_nand_host *host = nand_chip->priv;
-
-	return gpio_get_value(host->board->rdy_pin);
-}
-
-/*
- * Minimal-overhead PIO for data access.
- */
-static void atmel_read_buf(struct mtd_info *mtd, u8 *buf, int len)
-{
-	struct nand_chip	*nand_chip = mtd->priv;
-
-	readsb(nand_chip->IO_ADDR_R, buf, len);
-}
-
-static void atmel_read_buf16(struct mtd_info *mtd, u8 *buf, int len)
-{
-	struct nand_chip	*nand_chip = mtd->priv;
-
-	readsw(nand_chip->IO_ADDR_R, buf, len / 2);
-}
-
-static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
-{
-	struct nand_chip	*nand_chip = mtd->priv;
-
-	writesb(nand_chip->IO_ADDR_W, buf, len);
-}
-
-static void atmel_write_buf16(struct mtd_info *mtd, const u8 *buf, int len)
-{
-	struct nand_chip	*nand_chip = mtd->priv;
-
-	writesw(nand_chip->IO_ADDR_W, buf, len / 2);
-}
-
-/*
- * Calculate HW ECC
- *
- * function called after a write
- *
- * mtd:        MTD block structure
- * dat:        raw data (unused)
- * ecc_code:   buffer for ECC
- */
-static int atmel_nand_calculate(struct mtd_info *mtd,
-		const u_char *dat, unsigned char *ecc_code)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct atmel_nand_host *host = nand_chip->priv;
-/* 	uint32_t *eccpos = nand_chip->ecc.layout->eccpos; */
-	unsigned int ecc_value;
-
-	/* get the first 2 ECC bytes */
-	ecc_value = ecc_readl(host->ecc, PR);
-
-	ecc_code[0] = ecc_value & 0xFF;
-	ecc_code[1] = (ecc_value >> 8) & 0xFF;
-
-	/* get the last 2 ECC bytes */
-	ecc_value = ecc_readl(host->ecc, NPR) & ATMEL_ECC_NPARITY;
-
-	ecc_code[2] = ecc_value & 0xFF;
-	ecc_code[3] = (ecc_value >> 8) & 0xFF;
-
-	return 0;
-}
-
-/*
- * HW ECC read page function
- *
- * mtd:        mtd info structure
- * chip:       nand chip info structure
- * buf:        buffer to store read data
- */
-static int atmel_nand_read_page(struct mtd_info *mtd,
-		struct nand_chip *chip, uint8_t *buf)
-{
-	int eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-	uint8_t *p = buf;
-	uint8_t *oob = chip->oob_poi;
-	uint8_t *ecc_pos;
-	int stat;
-
-	/*
-	 * Errata: ALE is incorrectly wired up to the ECC controller
-	 * on the AP7000, so it will include the address cycles in the
-	 * ECC calculation.
-	 *
-	 * Workaround: Reset the parity registers before reading the
-	 * actual data.
-	 */
-#if 0
-	if (cpu_is_at32ap7000()) {
-		struct atmel_nand_host *host = chip->priv;
-		ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
-	}
-#endif
-
-	/* read the page */
-	chip->read_buf(mtd, p, eccsize);
-
-	/* move to ECC position if needed */
-	if (eccpos[0] != 0) {
-		/* This only works on large pages
-		 * because the ECC controller waits for
-		 * NAND_CMD_RNDOUTSTART after the
-		 * NAND_CMD_RNDOUT.
-		 * anyway, for small pages, the eccpos[0] == 0
-		 */
-		chip->cmdfunc(mtd, NAND_CMD_RNDOUT,
-				mtd->writesize + eccpos[0], -1);
-	}
-
-	/* the ECC controller needs to read the ECC just after the data */
-	ecc_pos = oob + eccpos[0];
-	chip->read_buf(mtd, ecc_pos, eccbytes);
-
-	/* check if there's an error */
-	stat = chip->ecc.correct(mtd, p, oob, NULL);
-
-	if (stat < 0)
-		mtd->ecc_stats.failed++;
-	else
-		mtd->ecc_stats.corrected += stat;
-
-	/* get back to oob start (end of page) */
-	chip->cmdfunc(mtd, NAND_CMD_RNDOUT, mtd->writesize, -1);
-
-	/* read the oob */
-	chip->read_buf(mtd, oob, mtd->oobsize);
-
-	return 0;
-}
-
-/*
- * HW ECC Correction
- *
- * function called after a read
- *
- * mtd:        MTD block structure
- * dat:        raw data read from the chip
- * read_ecc:   ECC from the chip (unused)
- * isnull:     unused
- *
- * Detect and correct a 1 bit error for a page
- */
-static int atmel_nand_correct(struct mtd_info *mtd, u_char *dat,
-		u_char *read_ecc, u_char *isnull)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct atmel_nand_host *host = nand_chip->priv;
-	unsigned int ecc_status;
-	unsigned int ecc_word, ecc_bit;
-
-	/* get the status from the Status Register */
-	ecc_status = ecc_readl(host->ecc, SR);
-
-	/* if there's no error */
-	if (likely(!(ecc_status & ATMEL_ECC_RECERR)))
-		return 0;
-
-	/* get error bit offset (4 bits) */
-	ecc_bit = ecc_readl(host->ecc, PR) & ATMEL_ECC_BITADDR;
-	/* get word address (12 bits) */
-	ecc_word = ecc_readl(host->ecc, PR) & ATMEL_ECC_WORDADDR;
-	ecc_word >>= 4;
-
-	/* if there are multiple errors */
-	if (ecc_status & ATMEL_ECC_MULERR) {
-		/* check if it is a freshly erased block
-		 * (filled with 0xff) */
-		if ((ecc_bit == ATMEL_ECC_BITADDR)
-				&& (ecc_word == (ATMEL_ECC_WORDADDR >> 4))) {
-			/* the block has just been erased, return OK */
-			return 0;
-		}
-		/* it doesn't seems to be a freshly
-		 * erased block.
-		 * We can't correct so many errors */
-		dev_dbg(host->dev, "atmel_nand : multiple errors detected."
-				" Unable to correct.\n");
-		return -EIO;
-	}
-
-	/* if there's a single bit error : we can correct it */
-	if (ecc_status & ATMEL_ECC_ECCERR) {
-		/* there's nothing much to do here.
-		 * the bit error is on the ECC itself.
-		 */
-		dev_dbg(host->dev, "atmel_nand : one bit error on ECC code."
-				" Nothing to correct\n");
-		return 0;
-	}
-
-	dev_dbg(host->dev, "atmel_nand : one bit error on data."
-			" (word offset in the page :"
-			" 0x%x bit offset : 0x%x)\n",
-			ecc_word, ecc_bit);
-	/* correct the error */
-	if (nand_chip->options & NAND_BUSWIDTH_16) {
-		/* 16 bits words */
-		((unsigned short *) dat)[ecc_word] ^= (1 << ecc_bit);
-	} else {
-		/* 8 bits words */
-		dat[ecc_word] ^= (1 << ecc_bit);
-	}
-	dev_dbg(host->dev, "atmel_nand : error corrected\n");
-	return 1;
-}
-
-/*
- * Enable HW ECC : unused on most chips
- */
-static void atmel_nand_hwctl(struct mtd_info *mtd, int mode)
-{
-#if 0
-	if (cpu_is_at32ap7000()) {
-		struct nand_chip *nand_chip = mtd->priv;
-		struct atmel_nand_host *host = nand_chip->priv;
-		ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
-	}
-#endif
-}
-
-/*
- * Probe for the NAND device.
- */
-static int __init atmel_nand_probe(struct device_d *dev)
-{
-	struct atmel_nand_data *pdata = dev->platform_data;
-	struct atmel_nand_host *host;
-	struct mtd_info *mtd;
-	struct nand_chip *nand_chip;
-	int res = 0;
-
-	/* Allocate memory for the device structure (and zero it) */
-	host = kzalloc(sizeof(struct atmel_nand_host), GFP_KERNEL);
-	if (!host)
-		return -ENOMEM;
-
-	host->io_base = (void __iomem *)dev->map_base;
-
-	mtd = &host->mtd;
-	nand_chip = &host->nand_chip;
-	host->board = pdata;
-	host->dev = dev;
-
-	nand_chip->priv = host;		/* link the private data structures */
-	mtd->priv = nand_chip;
-
-	/* Set address of NAND IO lines */
-	nand_chip->IO_ADDR_R = host->io_base;
-	nand_chip->IO_ADDR_W = host->io_base;
-	nand_chip->cmd_ctrl = atmel_nand_cmd_ctrl;
-
-	if (host->board->rdy_pin)
-		nand_chip->dev_ready = atmel_nand_device_ready;
-
-	nand_chip->ecc.mode = pdata->ecc_mode;
-
-	if (pdata->ecc_mode == NAND_ECC_HW) {
-		if (!pdata->ecc_base)
-			return -ENODEV;
-
-		host->ecc = pdata->ecc_base;
-
-		nand_chip->ecc.mode = NAND_ECC_HW;
-		nand_chip->ecc.calculate = atmel_nand_calculate;
-		nand_chip->ecc.correct = atmel_nand_correct;
-		nand_chip->ecc.hwctl = atmel_nand_hwctl;
-		nand_chip->ecc.read_page = atmel_nand_read_page;
-		nand_chip->ecc.bytes = 4;
-	}
-
-	nand_chip->chip_delay = 20;		/* 20us command delay time */
-
-	if (host->board->bus_width_16) {	/* 16-bit bus width */
-		nand_chip->options |= NAND_BUSWIDTH_16;
-		nand_chip->read_buf = atmel_read_buf16;
-		nand_chip->write_buf = atmel_write_buf16;
-	} else {
-		nand_chip->read_buf = atmel_read_buf;
-		nand_chip->write_buf = atmel_write_buf;
-	}
-
-	atmel_nand_enable(host);
-
-	if (host->board->det_pin) {
-		if (gpio_get_value(host->board->det_pin)) {
-			printk("No SmartMedia card inserted.\n");
-			res = ENXIO;
-			goto err_no_card;
-		}
-	}
-
-	/* first scan to find the device and get the page size */
-	if (nand_scan_ident(mtd, 1)) {
-		res = -ENXIO;
-		goto err_scan_ident;
-	}
-
-	if (nand_chip->ecc.mode == NAND_ECC_HW) {
-		/* ECC is calculated for the whole page (1 step) */
-		nand_chip->ecc.size = mtd->writesize;
-
-		/* set ECC page size and oob layout */
-		switch (mtd->writesize) {
-		case 512:
-			nand_chip->ecc.layout = &atmel_oobinfo_small;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_528);
-			break;
-		case 1024:
-			nand_chip->ecc.layout = &atmel_oobinfo_large;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_1056);
-			break;
-		case 2048:
-			nand_chip->ecc.layout = &atmel_oobinfo_large;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_2112);
-			break;
-		case 4096:
-			nand_chip->ecc.layout = &atmel_oobinfo_large;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_4224);
-			break;
-		default:
-			/* page size not handled by HW ECC */
-			/* switching back to soft ECC */
-			nand_chip->ecc.mode = NAND_ECC_SOFT;
-			nand_chip->ecc.calculate = NULL;
-			nand_chip->ecc.correct = NULL;
-			nand_chip->ecc.hwctl = NULL;
-			nand_chip->ecc.read_page = NULL;
-			nand_chip->ecc.postpad = 0;
-			nand_chip->ecc.prepad = 0;
-			nand_chip->ecc.bytes = 0;
-			break;
-		}
-	}
-
-	/* second phase scan */
-	if (nand_scan_tail(mtd)) {
-		res = -ENXIO;
-		goto err_scan_tail;
-	}
-
-	add_mtd_device(mtd);
-
-	if (!res)
-		return res;
-
-	nand_release(mtd);
-err_scan_tail:
-err_scan_ident:
-err_no_card:
-	atmel_nand_disable(host);
-	kfree(host);
-	return res;
-}
-
-static struct driver_d atmel_nand_driver = {
-	.name	= "atmel_nand",
-	.probe	= atmel_nand_probe,
-};
-
-static int __init atmel_nand_init(void)
-{
-	return register_driver(&atmel_nand_driver);
-}
-
-device_initcall(atmel_nand_init);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Rick Bronson");
-MODULE_DESCRIPTION("NAND/SmartMedia driver for AT91 / AVR32");
diff --git a/drivers/nand/atmel_nand_ecc.h b/drivers/nand/atmel_nand_ecc.h
deleted file mode 100644
index 578c776..0000000
--- a/drivers/nand/atmel_nand_ecc.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/*
- * Error Corrected Code Controller (ECC) - System peripherals regsters.
- * Based on AT91SAM9260 datasheet revision B.
- *
- * Copyright (C) 2007 Andrew Victor
- * Copyright (C) 2007 Atmel Corporation.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2 of the License, or (at your
- * option) any later version.
- */
-
-#ifndef ATMEL_NAND_ECC_H
-#define ATMEL_NAND_ECC_H
-
-#define ATMEL_ECC_CR		0x00			/* Control register */
-#define		ATMEL_ECC_RST		(1 << 0)		/* Reset parity */
-
-#define ATMEL_ECC_MR		0x04			/* Mode register */
-#define		ATMEL_ECC_PAGESIZE	(3 << 0)		/* Page Size */
-#define			ATMEL_ECC_PAGESIZE_528		(0)
-#define			ATMEL_ECC_PAGESIZE_1056		(1)
-#define			ATMEL_ECC_PAGESIZE_2112		(2)
-#define			ATMEL_ECC_PAGESIZE_4224		(3)
-
-#define ATMEL_ECC_SR		0x08			/* Status register */
-#define		ATMEL_ECC_RECERR		(1 << 0)		/* Recoverable Error */
-#define		ATMEL_ECC_ECCERR		(1 << 1)		/* ECC Single Bit Error */
-#define		ATMEL_ECC_MULERR		(1 << 2)		/* Multiple Errors */
-
-#define ATMEL_ECC_PR		0x0c			/* Parity register */
-#define		ATMEL_ECC_BITADDR	(0xf << 0)		/* Bit Error Address */
-#define		ATMEL_ECC_WORDADDR	(0xfff << 4)		/* Word Error Address */
-
-#define ATMEL_ECC_NPR		0x10			/* NParity register */
-#define		ATMEL_ECC_NPARITY	(0xffff << 0)		/* NParity */
-
-#endif
diff --git a/drivers/nand/diskonchip.c b/drivers/nand/diskonchip.c
deleted file mode 100644
index e762524..0000000
--- a/drivers/nand/diskonchip.c
+++ /dev/null
@@ -1,1787 +0,0 @@
-/*
- * drivers/mtd/nand/diskonchip.c
- *
- * (C) 2003 Red Hat, Inc.
- * (C) 2004 Dan Brown <dan_brown@ieee.org>
- * (C) 2004 Kalev Lember <kalev@smartlink.ee>
- *
- * Author: David Woodhouse <dwmw2@infradead.org>
- * Additional Diskonchip 2000 and Millennium support by Dan Brown <dan_brown@ieee.org>
- * Diskonchip Millennium Plus support by Kalev Lember <kalev@smartlink.ee>
- *
- * Error correction code lifted from the old docecc code
- * Author: Fabrice Bellard (fabrice.bellard@netgem.com)
- * Copyright (C) 2000 Netgem S.A.
- * converted to the generic Reed-Solomon library by Thomas Gleixner <tglx@linutronix.de>
- *
- * Interface to generic NAND code for M-Systems DiskOnChip devices
- *
- * $Id: diskonchip.c,v 1.45 2005/01/05 18:05:14 dwmw2 Exp $
- */
-
-#include <common.h>
-
-#if !defined(CFG_NAND_LEGACY)
-
-#include <linux/kernel.h>
-#include <linux/init.h>
-#include <linux/sched.h>
-#include <linux/delay.h>
-#include <linux/rslib.h>
-#include <linux/moduleparam.h>
-#include <asm/io.h>
-
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/doc2000.h>
-#include <linux/mtd/compatmac.h>
-#include <linux/mtd/partitions.h>
-#include <linux/mtd/inftl.h>
-
-/* Where to look for the devices? */
-#ifndef CONFIG_MTD_DISKONCHIP_PROBE_ADDRESS
-#define CONFIG_MTD_DISKONCHIP_PROBE_ADDRESS 0
-#endif
-
-static unsigned long __initdata doc_locations[] = {
-#if defined (__alpha__) || defined(__i386__) || defined(__x86_64__)
-#ifdef CONFIG_MTD_DISKONCHIP_PROBE_HIGH
-	0xfffc8000, 0xfffca000, 0xfffcc000, 0xfffce000,
-	0xfffd0000, 0xfffd2000, 0xfffd4000, 0xfffd6000,
-	0xfffd8000, 0xfffda000, 0xfffdc000, 0xfffde000,
-	0xfffe0000, 0xfffe2000, 0xfffe4000, 0xfffe6000,
-	0xfffe8000, 0xfffea000, 0xfffec000, 0xfffee000,
-#else /*  CONFIG_MTD_DOCPROBE_HIGH */
-	0xc8000, 0xca000, 0xcc000, 0xce000,
-	0xd0000, 0xd2000, 0xd4000, 0xd6000,
-	0xd8000, 0xda000, 0xdc000, 0xde000,
-	0xe0000, 0xe2000, 0xe4000, 0xe6000,
-	0xe8000, 0xea000, 0xec000, 0xee000,
-#endif /*  CONFIG_MTD_DOCPROBE_HIGH */
-#elif defined(__PPC__)
-	0xe4000000,
-#elif defined(CONFIG_MOMENCO_OCELOT)
-	0x2f000000,
-	0xff000000,
-#elif defined(CONFIG_MOMENCO_OCELOT_G) || defined (CONFIG_MOMENCO_OCELOT_C)
-	0xff000000,
-##else
-#warning Unknown architecture for DiskOnChip. No default probe locations defined
-#endif
-	0xffffffff };
-
-static struct mtd_info *doclist = NULL;
-
-struct doc_priv {
-	void __iomem *virtadr;
-	unsigned long physadr;
-	u_char ChipID;
-	u_char CDSNControl;
-	int chips_per_floor; /* The number of chips detected on each floor */
-	int curfloor;
-	int curchip;
-	int mh0_page;
-	int mh1_page;
-	struct mtd_info *nextdoc;
-};
-
-/* Max number of eraseblocks to scan (from start of device) for the (I)NFTL
-   MediaHeader.  The spec says to just keep going, I think, but that's just
-   silly. */
-#define MAX_MEDIAHEADER_SCAN 8
-
-/* This is the syndrome computed by the HW ecc generator upon reading an empty
-   page, one with all 0xff for data and stored ecc code. */
-static u_char empty_read_syndrome[6] = { 0x26, 0xff, 0x6d, 0x47, 0x73, 0x7a };
-/* This is the ecc value computed by the HW ecc generator upon writing an empty
-   page, one with all 0xff for data. */
-static u_char empty_write_ecc[6] = { 0x4b, 0x00, 0xe2, 0x0e, 0x93, 0xf7 };
-
-#define INFTL_BBT_RESERVED_BLOCKS 4
-
-#define DoC_is_MillenniumPlus(doc) ((doc)->ChipID == DOC_ChipID_DocMilPlus16 || (doc)->ChipID == DOC_ChipID_DocMilPlus32)
-#define DoC_is_Millennium(doc) ((doc)->ChipID == DOC_ChipID_DocMil)
-#define DoC_is_2000(doc) ((doc)->ChipID == DOC_ChipID_Doc2k)
-
-static void doc200x_hwcontrol(struct mtd_info *mtd, int cmd);
-static void doc200x_select_chip(struct mtd_info *mtd, int chip);
-
-static int debug=0;
-module_param(debug, int, 0);
-
-static int try_dword=1;
-module_param(try_dword, int, 0);
-
-static int no_ecc_failures=0;
-module_param(no_ecc_failures, int, 0);
-
-#ifdef CONFIG_MTD_PARTITIONS
-static int no_autopart=0;
-module_param(no_autopart, int, 0);
-#endif
-
-#ifdef CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE
-static int inftl_bbt_write=1;
-#else
-static int inftl_bbt_write=0;
-#endif
-module_param(inftl_bbt_write, int, 0);
-
-static unsigned long doc_config_location = CONFIG_MTD_DISKONCHIP_PROBE_ADDRESS;
-module_param(doc_config_location, ulong, 0);
-MODULE_PARM_DESC(doc_config_location, "Physical memory address at which to probe for DiskOnChip");
-
-
-/* Sector size for HW ECC */
-#define SECTOR_SIZE 512
-/* The sector bytes are packed into NB_DATA 10 bit words */
-#define NB_DATA (((SECTOR_SIZE + 1) * 8 + 6) / 10)
-/* Number of roots */
-#define NROOTS 4
-/* First consective root */
-#define FCR 510
-/* Number of symbols */
-#define NN 1023
-
-/* the Reed Solomon control structure */
-static struct rs_control *rs_decoder;
-
-/*
- * The HW decoder in the DoC ASIC's provides us a error syndrome,
- * which we must convert to a standard syndrom usable by the generic
- * Reed-Solomon library code.
- *
- * Fabrice Bellard figured this out in the old docecc code. I added
- * some comments, improved a minor bit and converted it to make use
- * of the generic Reed-Solomon libary. tglx
- */
-static int doc_ecc_decode (struct rs_control *rs, uint8_t *data, uint8_t *ecc)
-{
-	int i, j, nerr, errpos[8];
-	uint8_t parity;
-	uint16_t ds[4], s[5], tmp, errval[8], syn[4];
-
-	/* Convert the ecc bytes into words */
-	ds[0] = ((ecc[4] & 0xff) >> 0) | ((ecc[5] & 0x03) << 8);
-	ds[1] = ((ecc[5] & 0xfc) >> 2) | ((ecc[2] & 0x0f) << 6);
-	ds[2] = ((ecc[2] & 0xf0) >> 4) | ((ecc[3] & 0x3f) << 4);
-	ds[3] = ((ecc[3] & 0xc0) >> 6) | ((ecc[0] & 0xff) << 2);
-	parity = ecc[1];
-
-	/* Initialize the syndrom buffer */
-	for (i = 0; i < NROOTS; i++)
-		s[i] = ds[0];
-	/*
-	 *  Evaluate
-	 *  s[i] = ds[3]x^3 + ds[2]x^2 + ds[1]x^1 + ds[0]
-	 *  where x = alpha^(FCR + i)
-	 */
-	for(j = 1; j < NROOTS; j++) {
-		if(ds[j] == 0)
-			continue;
-		tmp = rs->index_of[ds[j]];
-		for(i = 0; i < NROOTS; i++)
-			s[i] ^= rs->alpha_to[rs_modnn(rs, tmp + (FCR + i) * j)];
-	}
-
-	/* Calc s[i] = s[i] / alpha^(v + i) */
-	for (i = 0; i < NROOTS; i++) {
-		if (syn[i])
- 			syn[i] = rs_modnn(rs, rs->index_of[s[i]] + (NN - FCR - i));
-	}
-	/* Call the decoder library */
-	nerr = decode_rs16(rs, NULL, NULL, 1019, syn, 0, errpos, 0, errval);
-
-	/* Incorrectable errors ? */
-	if (nerr < 0)
-		return nerr;
-
-	/*
-	 * Correct the errors. The bitpositions are a bit of magic,
-	 * but they are given by the design of the de/encoder circuit
-	 * in the DoC ASIC's.
-	 */
-	for(i = 0;i < nerr; i++) {
-		int index, bitpos, pos = 1015 - errpos[i];
-		uint8_t val;
-		if (pos >= NB_DATA && pos < 1019)
-			continue;
-		if (pos < NB_DATA) {
-			/* extract bit position (MSB first) */
-			pos = 10 * (NB_DATA - 1 - pos) - 6;
-			/* now correct the following 10 bits. At most two bytes
-			   can be modified since pos is even */
-			index = (pos >> 3) ^ 1;
-			bitpos = pos & 7;
-			if ((index >= 0 && index < SECTOR_SIZE) ||
-			    index == (SECTOR_SIZE + 1)) {
-				val = (uint8_t) (errval[i] >> (2 + bitpos));
-				parity ^= val;
-				if (index < SECTOR_SIZE)
-					data[index] ^= val;
-			}
-			index = ((pos >> 3) + 1) ^ 1;
-			bitpos = (bitpos + 10) & 7;
-			if (bitpos == 0)
-				bitpos = 8;
-			if ((index >= 0 && index < SECTOR_SIZE) ||
-			    index == (SECTOR_SIZE + 1)) {
-				val = (uint8_t)(errval[i] << (8 - bitpos));
-				parity ^= val;
-				if (index < SECTOR_SIZE)
-					data[index] ^= val;
-			}
-		}
-	}
-	/* If the parity is wrong, no rescue possible */
-	return parity ? -1 : nerr;
-}
-
-static void DoC_Delay(struct doc_priv *doc, unsigned short cycles)
-{
-	volatile char dummy;
-	int i;
-
-	for (i = 0; i < cycles; i++) {
-		if (DoC_is_Millennium(doc))
-			dummy = ReadDOC(doc->virtadr, NOP);
-		else if (DoC_is_MillenniumPlus(doc))
-			dummy = ReadDOC(doc->virtadr, Mplus_NOP);
-		else
-			dummy = ReadDOC(doc->virtadr, DOCStatus);
-	}
-
-}
-
-#define CDSN_CTRL_FR_B_MASK	(CDSN_CTRL_FR_B0 | CDSN_CTRL_FR_B1)
-
-/* DOC_WaitReady: Wait for RDY line to be asserted by the flash chip */
-static int _DoC_WaitReady(struct doc_priv *doc)
-{
-	void __iomem *docptr = doc->virtadr;
-	unsigned long timeo = jiffies + (HZ * 10);
-
-	if(debug) printk("_DoC_WaitReady...\n");
-	/* Out-of-line routine to wait for chip response */
-	if (DoC_is_MillenniumPlus(doc)) {
-		while ((ReadDOC(docptr, Mplus_FlashControl) & CDSN_CTRL_FR_B_MASK) != CDSN_CTRL_FR_B_MASK) {
-			if (time_after(jiffies, timeo)) {
-				printk("_DoC_WaitReady timed out.\n");
-				return -EIO;
-			}
-			udelay(1);
-			cond_resched();
-		}
-	} else {
-		while (!(ReadDOC(docptr, CDSNControl) & CDSN_CTRL_FR_B)) {
-			if (time_after(jiffies, timeo)) {
-				printk("_DoC_WaitReady timed out.\n");
-				return -EIO;
-			}
-			udelay(1);
-			cond_resched();
-		}
-	}
-
-	return 0;
-}
-
-static inline int DoC_WaitReady(struct doc_priv *doc)
-{
-	void __iomem *docptr = doc->virtadr;
-	int ret = 0;
-
-	if (DoC_is_MillenniumPlus(doc)) {
-		DoC_Delay(doc, 4);
-
-		if ((ReadDOC(docptr, Mplus_FlashControl) & CDSN_CTRL_FR_B_MASK) != CDSN_CTRL_FR_B_MASK)
-			/* Call the out-of-line routine to wait */
-			ret = _DoC_WaitReady(doc);
-	} else {
-		DoC_Delay(doc, 4);
-
-		if (!(ReadDOC(docptr, CDSNControl) & CDSN_CTRL_FR_B))
-			/* Call the out-of-line routine to wait */
-			ret = _DoC_WaitReady(doc);
-		DoC_Delay(doc, 2);
-	}
-
-	if(debug) printk("DoC_WaitReady OK\n");
-	return ret;
-}
-
-static void doc2000_write_byte(struct mtd_info *mtd, u_char datum)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	if(debug)printk("write_byte %02x\n", datum);
-	WriteDOC(datum, docptr, CDSNSlowIO);
-	WriteDOC(datum, docptr, 2k_CDSN_IO);
-}
-
-static u_char doc2000_read_byte(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	u_char ret;
-
-	ReadDOC(docptr, CDSNSlowIO);
-	DoC_Delay(doc, 2);
-	ret = ReadDOC(docptr, 2k_CDSN_IO);
-	if (debug) printk("read_byte returns %02x\n", ret);
-	return ret;
-}
-
-static void doc2000_writebuf(struct mtd_info *mtd,
-			     const u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-	if (debug)printk("writebuf of %d bytes: ", len);
-	for (i=0; i < len; i++) {
-		WriteDOC_(buf[i], docptr, DoC_2k_CDSN_IO + i);
-		if (debug && i < 16)
-			printk("%02x ", buf[i]);
-	}
-	if (debug) printk("\n");
-}
-
-static void doc2000_readbuf(struct mtd_info *mtd,
-			    u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
- 	int i;
-
-	if (debug)printk("readbuf of %d bytes: ", len);
-
-	for (i=0; i < len; i++) {
-		buf[i] = ReadDOC(docptr, 2k_CDSN_IO + i);
-	}
-}
-
-static void doc2000_readbuf_dword(struct mtd_info *mtd,
-			    u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
- 	int i;
-
-	if (debug) printk("readbuf_dword of %d bytes: ", len);
-
-	if (unlikely((((unsigned long)buf)|len) & 3)) {
-		for (i=0; i < len; i++) {
-			*(uint8_t *)(&buf[i]) = ReadDOC(docptr, 2k_CDSN_IO + i);
-		}
-	} else {
-		for (i=0; i < len; i+=4) {
-			*(uint32_t*)(&buf[i]) = readl(docptr + DoC_2k_CDSN_IO + i);
-		}
-	}
-}
-
-static int doc2000_verifybuf(struct mtd_info *mtd,
-			      const u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-
-	for (i=0; i < len; i++)
-		if (buf[i] != ReadDOC(docptr, 2k_CDSN_IO))
-			return -EFAULT;
-	return 0;
-}
-
-static uint16_t __init doc200x_ident_chip(struct mtd_info *mtd, int nr)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	uint16_t ret;
-
-	doc200x_select_chip(mtd, nr);
-	doc200x_hwcontrol(mtd, NAND_CTL_SETCLE);
-	this->write_byte(mtd, NAND_CMD_READID);
-	doc200x_hwcontrol(mtd, NAND_CTL_CLRCLE);
-	doc200x_hwcontrol(mtd, NAND_CTL_SETALE);
-	this->write_byte(mtd, 0);
-	doc200x_hwcontrol(mtd, NAND_CTL_CLRALE);
-
-	ret = this->read_byte(mtd) << 8;
-	ret |= this->read_byte(mtd);
-
-	if (doc->ChipID == DOC_ChipID_Doc2k && try_dword && !nr) {
-		/* First chip probe. See if we get same results by 32-bit access */
-		union {
-			uint32_t dword;
-			uint8_t byte[4];
-		} ident;
-		void __iomem *docptr = doc->virtadr;
-
-		doc200x_hwcontrol(mtd, NAND_CTL_SETCLE);
-		doc2000_write_byte(mtd, NAND_CMD_READID);
-		doc200x_hwcontrol(mtd, NAND_CTL_CLRCLE);
-		doc200x_hwcontrol(mtd, NAND_CTL_SETALE);
-		doc2000_write_byte(mtd, 0);
-		doc200x_hwcontrol(mtd, NAND_CTL_CLRALE);
-
-		ident.dword = readl(docptr + DoC_2k_CDSN_IO);
-		if (((ident.byte[0] << 8) | ident.byte[1]) == ret) {
-			printk(KERN_INFO "DiskOnChip 2000 responds to DWORD access\n");
-			this->read_buf = &doc2000_readbuf_dword;
-		}
-	}
-
-	return ret;
-}
-
-static void __init doc2000_count_chips(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	uint16_t mfrid;
-	int i;
-
-	/* Max 4 chips per floor on DiskOnChip 2000 */
-	doc->chips_per_floor = 4;
-
-	/* Find out what the first chip is */
-	mfrid = doc200x_ident_chip(mtd, 0);
-
-	/* Find how many chips in each floor. */
-	for (i = 1; i < 4; i++) {
-		if (doc200x_ident_chip(mtd, i) != mfrid)
-			break;
-	}
-	doc->chips_per_floor = i;
-	printk(KERN_DEBUG "Detected %d chips per floor.\n", i);
-}
-
-static int doc200x_wait(struct mtd_info *mtd, struct nand_chip *this, int state)
-{
-	struct doc_priv *doc = this->priv;
-
-	int status;
-
-	DoC_WaitReady(doc);
-	this->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
-	DoC_WaitReady(doc);
-	status = (int)this->read_byte(mtd);
-
-	return status;
-}
-
-static void doc2001_write_byte(struct mtd_info *mtd, u_char datum)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	WriteDOC(datum, docptr, CDSNSlowIO);
-	WriteDOC(datum, docptr, Mil_CDSN_IO);
-	WriteDOC(datum, docptr, WritePipeTerm);
-}
-
-static u_char doc2001_read_byte(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	/*ReadDOC(docptr, CDSNSlowIO); */
-	/* 11.4.5 -- delay twice to allow extended length cycle */
-	DoC_Delay(doc, 2);
-	ReadDOC(docptr, ReadPipeInit);
-	/*return ReadDOC(docptr, Mil_CDSN_IO); */
-	return ReadDOC(docptr, LastDataRead);
-}
-
-static void doc2001_writebuf(struct mtd_info *mtd,
-			     const u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-
-	for (i=0; i < len; i++)
-		WriteDOC_(buf[i], docptr, DoC_Mil_CDSN_IO + i);
-	/* Terminate write pipeline */
-	WriteDOC(0x00, docptr, WritePipeTerm);
-}
-
-static void doc2001_readbuf(struct mtd_info *mtd,
-			    u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-
-	/* Start read pipeline */
-	ReadDOC(docptr, ReadPipeInit);
-
-	for (i=0; i < len-1; i++)
-		buf[i] = ReadDOC(docptr, Mil_CDSN_IO + (i & 0xff));
-
-	/* Terminate read pipeline */
-	buf[i] = ReadDOC(docptr, LastDataRead);
-}
-
-static int doc2001_verifybuf(struct mtd_info *mtd,
-			     const u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-
-	/* Start read pipeline */
-	ReadDOC(docptr, ReadPipeInit);
-
-	for (i=0; i < len-1; i++)
-		if (buf[i] != ReadDOC(docptr, Mil_CDSN_IO)) {
-			ReadDOC(docptr, LastDataRead);
-			return i;
-		}
-	if (buf[i] != ReadDOC(docptr, LastDataRead))
-		return i;
-	return 0;
-}
-
-static u_char doc2001plus_read_byte(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	u_char ret;
-
-	ReadDOC(docptr, Mplus_ReadPipeInit);
-	ReadDOC(docptr, Mplus_ReadPipeInit);
-	ret = ReadDOC(docptr, Mplus_LastDataRead);
-	if (debug) printk("read_byte returns %02x\n", ret);
-	return ret;
-}
-
-static void doc2001plus_writebuf(struct mtd_info *mtd,
-			     const u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-
-	if (debug)printk("writebuf of %d bytes: ", len);
-	for (i=0; i < len; i++) {
-		WriteDOC_(buf[i], docptr, DoC_Mil_CDSN_IO + i);
-		if (debug && i < 16)
-			printk("%02x ", buf[i]);
-	}
-	if (debug) printk("\n");
-}
-
-static void doc2001plus_readbuf(struct mtd_info *mtd,
-			    u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-
-	if (debug)printk("readbuf of %d bytes: ", len);
-
-	/* Start read pipeline */
-	ReadDOC(docptr, Mplus_ReadPipeInit);
-	ReadDOC(docptr, Mplus_ReadPipeInit);
-
-	for (i=0; i < len-2; i++) {
-		buf[i] = ReadDOC(docptr, Mil_CDSN_IO);
-		if (debug && i < 16)
-			printk("%02x ", buf[i]);
-	}
-
-	/* Terminate read pipeline */
-	buf[len-2] = ReadDOC(docptr, Mplus_LastDataRead);
-	if (debug && i < 16)
-		printk("%02x ", buf[len-2]);
-	buf[len-1] = ReadDOC(docptr, Mplus_LastDataRead);
-	if (debug && i < 16)
-		printk("%02x ", buf[len-1]);
-	if (debug) printk("\n");
-}
-
-static int doc2001plus_verifybuf(struct mtd_info *mtd,
-			     const u_char *buf, int len)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-
-	if (debug)printk("verifybuf of %d bytes: ", len);
-
-	/* Start read pipeline */
-	ReadDOC(docptr, Mplus_ReadPipeInit);
-	ReadDOC(docptr, Mplus_ReadPipeInit);
-
-	for (i=0; i < len-2; i++)
-		if (buf[i] != ReadDOC(docptr, Mil_CDSN_IO)) {
-			ReadDOC(docptr, Mplus_LastDataRead);
-			ReadDOC(docptr, Mplus_LastDataRead);
-			return i;
-		}
-	if (buf[len-2] != ReadDOC(docptr, Mplus_LastDataRead))
-		return len-2;
-	if (buf[len-1] != ReadDOC(docptr, Mplus_LastDataRead))
-		return len-1;
-	return 0;
-}
-
-static void doc2001plus_select_chip(struct mtd_info *mtd, int chip)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int floor = 0;
-
-	if(debug)printk("select chip (%d)\n", chip);
-
-	if (chip == -1) {
-		/* Disable flash internally */
-		WriteDOC(0, docptr, Mplus_FlashSelect);
-		return;
-	}
-
-	floor = chip / doc->chips_per_floor;
-	chip -= (floor *  doc->chips_per_floor);
-
-	/* Assert ChipEnable and deassert WriteProtect */
-	WriteDOC((DOC_FLASH_CE), docptr, Mplus_FlashSelect);
-	this->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
-
-	doc->curchip = chip;
-	doc->curfloor = floor;
-}
-
-static void doc200x_select_chip(struct mtd_info *mtd, int chip)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int floor = 0;
-
-	if(debug)printk("select chip (%d)\n", chip);
-
-	if (chip == -1)
-		return;
-
-	floor = chip / doc->chips_per_floor;
-	chip -= (floor *  doc->chips_per_floor);
-
-	/* 11.4.4 -- deassert CE before changing chip */
-	doc200x_hwcontrol(mtd, NAND_CTL_CLRNCE);
-
-	WriteDOC(floor, docptr, FloorSelect);
-	WriteDOC(chip, docptr, CDSNDeviceSelect);
-
-	doc200x_hwcontrol(mtd, NAND_CTL_SETNCE);
-
-	doc->curchip = chip;
-	doc->curfloor = floor;
-}
-
-static void doc200x_hwcontrol(struct mtd_info *mtd, int cmd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	switch(cmd) {
-	case NAND_CTL_SETNCE:
-		doc->CDSNControl |= CDSN_CTRL_CE;
-		break;
-	case NAND_CTL_CLRNCE:
-		doc->CDSNControl &= ~CDSN_CTRL_CE;
-		break;
-	case NAND_CTL_SETCLE:
-		doc->CDSNControl |= CDSN_CTRL_CLE;
-		break;
-	case NAND_CTL_CLRCLE:
-		doc->CDSNControl &= ~CDSN_CTRL_CLE;
-		break;
-	case NAND_CTL_SETALE:
-		doc->CDSNControl |= CDSN_CTRL_ALE;
-		break;
-	case NAND_CTL_CLRALE:
-		doc->CDSNControl &= ~CDSN_CTRL_ALE;
-		break;
-	case NAND_CTL_SETWP:
-		doc->CDSNControl |= CDSN_CTRL_WP;
-		break;
-	case NAND_CTL_CLRWP:
-		doc->CDSNControl &= ~CDSN_CTRL_WP;
-		break;
-	}
-	if (debug)printk("hwcontrol(%d): %02x\n", cmd, doc->CDSNControl);
-	WriteDOC(doc->CDSNControl, docptr, CDSNControl);
-	/* 11.4.3 -- 4 NOPs after CSDNControl write */
-	DoC_Delay(doc, 4);
-}
-
-static void doc2001plus_command (struct mtd_info *mtd, unsigned command, int column, int page_addr)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	/*
-	 * Must terminate write pipeline before sending any commands
-	 * to the device.
-	 */
-	if (command == NAND_CMD_PAGEPROG) {
-		WriteDOC(0x00, docptr, Mplus_WritePipeTerm);
-		WriteDOC(0x00, docptr, Mplus_WritePipeTerm);
-	}
-
-	/*
-	 * Write out the command to the device.
-	 */
-	if (command == NAND_CMD_SEQIN) {
-		int readcmd;
-
-		if (column >= mtd->oobblock) {
-			/* OOB area */
-			column -= mtd->oobblock;
-			readcmd = NAND_CMD_READOOB;
-		} else if (column < 256) {
-			/* First 256 bytes --> READ0 */
-			readcmd = NAND_CMD_READ0;
-		} else {
-			column -= 256;
-			readcmd = NAND_CMD_READ1;
-		}
-		WriteDOC(readcmd, docptr, Mplus_FlashCmd);
-	}
-	WriteDOC(command, docptr, Mplus_FlashCmd);
-	WriteDOC(0, docptr, Mplus_WritePipeTerm);
-	WriteDOC(0, docptr, Mplus_WritePipeTerm);
-
-	if (column != -1 || page_addr != -1) {
-		/* Serially input address */
-		if (column != -1) {
-			/* Adjust columns for 16 bit buswidth */
-			if (this->options & NAND_BUSWIDTH_16)
-				column >>= 1;
-			WriteDOC(column, docptr, Mplus_FlashAddress);
-		}
-		if (page_addr != -1) {
-			WriteDOC((unsigned char) (page_addr & 0xff), docptr, Mplus_FlashAddress);
-			WriteDOC((unsigned char) ((page_addr >> 8) & 0xff), docptr, Mplus_FlashAddress);
-			/* One more address cycle for higher density devices */
-			if (this->chipsize & 0x0c000000) {
-				WriteDOC((unsigned char) ((page_addr >> 16) & 0x0f), docptr, Mplus_FlashAddress);
-				printk("high density\n");
-			}
-		}
-		WriteDOC(0, docptr, Mplus_WritePipeTerm);
-		WriteDOC(0, docptr, Mplus_WritePipeTerm);
-		/* deassert ALE */
-		if (command == NAND_CMD_READ0 || command == NAND_CMD_READ1 || command == NAND_CMD_READOOB || command == NAND_CMD_READID)
-			WriteDOC(0, docptr, Mplus_FlashControl);
-	}
-
-	/*
-	 * program and erase have their own busy handlers
-	 * status and sequential in needs no delay
-	*/
-	switch (command) {
-
-	case NAND_CMD_PAGEPROG:
-	case NAND_CMD_ERASE1:
-	case NAND_CMD_ERASE2:
-	case NAND_CMD_SEQIN:
-	case NAND_CMD_STATUS:
-		return;
-
-	case NAND_CMD_RESET:
-		if (this->dev_ready)
-			break;
-		udelay(this->chip_delay);
-		WriteDOC(NAND_CMD_STATUS, docptr, Mplus_FlashCmd);
-		WriteDOC(0, docptr, Mplus_WritePipeTerm);
-		WriteDOC(0, docptr, Mplus_WritePipeTerm);
-		while ( !(this->read_byte(mtd) & 0x40));
-		return;
-
-	/* This applies to read commands */
-	default:
-		/*
-		 * If we don't have access to the busy pin, we apply the given
-		 * command delay
-		*/
-		if (!this->dev_ready) {
-			udelay (this->chip_delay);
-			return;
-		}
-	}
-
-	/* Apply this short delay always to ensure that we do wait tWB in
-	 * any case on any machine. */
-	ndelay (100);
-	/* wait until command is processed */
-	while (!this->dev_ready(mtd));
-}
-
-static int doc200x_dev_ready(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	if (DoC_is_MillenniumPlus(doc)) {
-		/* 11.4.2 -- must NOP four times before checking FR/B# */
-		DoC_Delay(doc, 4);
-		if ((ReadDOC(docptr, Mplus_FlashControl) & CDSN_CTRL_FR_B_MASK) != CDSN_CTRL_FR_B_MASK) {
-			if(debug)
-				printk("not ready\n");
-			return 0;
-		}
-		if (debug)printk("was ready\n");
-		return 1;
-	} else {
-		/* 11.4.2 -- must NOP four times before checking FR/B# */
-		DoC_Delay(doc, 4);
-		if (!(ReadDOC(docptr, CDSNControl) & CDSN_CTRL_FR_B)) {
-			if(debug)
-				printk("not ready\n");
-			return 0;
-		}
-		/* 11.4.2 -- Must NOP twice if it's ready */
-		DoC_Delay(doc, 2);
-		if (debug)printk("was ready\n");
-		return 1;
-	}
-}
-
-static int doc200x_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
-{
-	/* This is our last resort if we couldn't find or create a BBT.  Just
-	   pretend all blocks are good. */
-	return 0;
-}
-
-static void doc200x_enable_hwecc(struct mtd_info *mtd, int mode)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	/* Prime the ECC engine */
-	switch(mode) {
-	case NAND_ECC_READ:
-		WriteDOC(DOC_ECC_RESET, docptr, ECCConf);
-		WriteDOC(DOC_ECC_EN, docptr, ECCConf);
-		break;
-	case NAND_ECC_WRITE:
-		WriteDOC(DOC_ECC_RESET, docptr, ECCConf);
-		WriteDOC(DOC_ECC_EN | DOC_ECC_RW, docptr, ECCConf);
-		break;
-	}
-}
-
-static void doc2001plus_enable_hwecc(struct mtd_info *mtd, int mode)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-
-	/* Prime the ECC engine */
-	switch(mode) {
-	case NAND_ECC_READ:
-		WriteDOC(DOC_ECC_RESET, docptr, Mplus_ECCConf);
-		WriteDOC(DOC_ECC_EN, docptr, Mplus_ECCConf);
-		break;
-	case NAND_ECC_WRITE:
-		WriteDOC(DOC_ECC_RESET, docptr, Mplus_ECCConf);
-		WriteDOC(DOC_ECC_EN | DOC_ECC_RW, docptr, Mplus_ECCConf);
-		break;
-	}
-}
-
-/* This code is only called on write */
-static int doc200x_calculate_ecc(struct mtd_info *mtd, const u_char *dat,
-				 unsigned char *ecc_code)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	int i;
-	int emptymatch = 1;
-
-	/* flush the pipeline */
-	if (DoC_is_2000(doc)) {
-		WriteDOC(doc->CDSNControl & ~CDSN_CTRL_FLASH_IO, docptr, CDSNControl);
-		WriteDOC(0, docptr, 2k_CDSN_IO);
-		WriteDOC(0, docptr, 2k_CDSN_IO);
-		WriteDOC(0, docptr, 2k_CDSN_IO);
-		WriteDOC(doc->CDSNControl, docptr, CDSNControl);
-	} else if (DoC_is_MillenniumPlus(doc)) {
-		WriteDOC(0, docptr, Mplus_NOP);
-		WriteDOC(0, docptr, Mplus_NOP);
-		WriteDOC(0, docptr, Mplus_NOP);
-	} else {
-		WriteDOC(0, docptr, NOP);
-		WriteDOC(0, docptr, NOP);
-		WriteDOC(0, docptr, NOP);
-	}
-
-	for (i = 0; i < 6; i++) {
-		if (DoC_is_MillenniumPlus(doc))
-			ecc_code[i] = ReadDOC_(docptr, DoC_Mplus_ECCSyndrome0 + i);
-		else
-			ecc_code[i] = ReadDOC_(docptr, DoC_ECCSyndrome0 + i);
-		if (ecc_code[i] != empty_write_ecc[i])
-			emptymatch = 0;
-	}
-	if (DoC_is_MillenniumPlus(doc))
-		WriteDOC(DOC_ECC_DIS, docptr, Mplus_ECCConf);
-	else
-		WriteDOC(DOC_ECC_DIS, docptr, ECCConf);
-#if 0
-	/* If emptymatch=1, we might have an all-0xff data buffer.  Check. */
-	if (emptymatch) {
-		/* Note: this somewhat expensive test should not be triggered
-		   often.  It could be optimized away by examining the data in
-		   the writebuf routine, and remembering the result. */
-		for (i = 0; i < 512; i++) {
-			if (dat[i] == 0xff) continue;
-			emptymatch = 0;
-			break;
-		}
-	}
-	/* If emptymatch still =1, we do have an all-0xff data buffer.
-	   Return all-0xff ecc value instead of the computed one, so
-	   it'll look just like a freshly-erased page. */
-	if (emptymatch) memset(ecc_code, 0xff, 6);
-#endif
-	return 0;
-}
-
-static int doc200x_correct_data(struct mtd_info *mtd, u_char *dat, u_char *read_ecc, u_char *calc_ecc)
-{
-	int i, ret = 0;
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	void __iomem *docptr = doc->virtadr;
-	volatile u_char dummy;
-	int emptymatch = 1;
-
-	/* flush the pipeline */
-	if (DoC_is_2000(doc)) {
-		dummy = ReadDOC(docptr, 2k_ECCStatus);
-		dummy = ReadDOC(docptr, 2k_ECCStatus);
-		dummy = ReadDOC(docptr, 2k_ECCStatus);
-	} else if (DoC_is_MillenniumPlus(doc)) {
-		dummy = ReadDOC(docptr, Mplus_ECCConf);
-		dummy = ReadDOC(docptr, Mplus_ECCConf);
-		dummy = ReadDOC(docptr, Mplus_ECCConf);
-	} else {
-		dummy = ReadDOC(docptr, ECCConf);
-		dummy = ReadDOC(docptr, ECCConf);
-		dummy = ReadDOC(docptr, ECCConf);
-	}
-
-	/* Error occured ? */
-	if (dummy & 0x80) {
-		for (i = 0; i < 6; i++) {
-			if (DoC_is_MillenniumPlus(doc))
-				calc_ecc[i] = ReadDOC_(docptr, DoC_Mplus_ECCSyndrome0 + i);
-			else
-				calc_ecc[i] = ReadDOC_(docptr, DoC_ECCSyndrome0 + i);
-			if (calc_ecc[i] != empty_read_syndrome[i])
-				emptymatch = 0;
-		}
-		/* If emptymatch=1, the read syndrome is consistent with an
-		   all-0xff data and stored ecc block.  Check the stored ecc. */
-		if (emptymatch) {
-			for (i = 0; i < 6; i++) {
-				if (read_ecc[i] == 0xff) continue;
-				emptymatch = 0;
-				break;
-			}
-		}
-		/* If emptymatch still =1, check the data block. */
-		if (emptymatch) {
-		/* Note: this somewhat expensive test should not be triggered
-		   often.  It could be optimized away by examining the data in
-		   the readbuf routine, and remembering the result. */
-			for (i = 0; i < 512; i++) {
-				if (dat[i] == 0xff) continue;
-				emptymatch = 0;
-				break;
-			}
-		}
-		/* If emptymatch still =1, this is almost certainly a freshly-
-		   erased block, in which case the ECC will not come out right.
-		   We'll suppress the error and tell the caller everything's
-		   OK.  Because it is. */
-		if (!emptymatch) ret = doc_ecc_decode (rs_decoder, dat, calc_ecc);
-		if (ret > 0)
-			printk(KERN_ERR "doc200x_correct_data corrected %d errors\n", ret);
-	}
-	if (DoC_is_MillenniumPlus(doc))
-		WriteDOC(DOC_ECC_DIS, docptr, Mplus_ECCConf);
-	else
-		WriteDOC(DOC_ECC_DIS, docptr, ECCConf);
-	if (no_ecc_failures && (ret == -1)) {
-		printk(KERN_ERR "suppressing ECC failure\n");
-		ret = 0;
-	}
-	return ret;
-}
-
-/*u_char mydatabuf[528]; */
-
-static struct nand_oobinfo doc200x_oobinfo = {
-	.useecc = MTD_NANDECC_AUTOPLACE,
-	.eccbytes = 6,
-	.eccpos = {0, 1, 2, 3, 4, 5},
-	.oobfree = { {8, 8} }
-};
-
-/* Find the (I)NFTL Media Header, and optionally also the mirror media header.
-   On sucessful return, buf will contain a copy of the media header for
-   further processing.  id is the string to scan for, and will presumably be
-   either "ANAND" or "BNAND".  If findmirror=1, also look for the mirror media
-   header.  The page #s of the found media headers are placed in mh0_page and
-   mh1_page in the DOC private structure. */
-static int __init find_media_headers(struct mtd_info *mtd, u_char *buf,
-				     const char *id, int findmirror)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	unsigned offs, end = (MAX_MEDIAHEADER_SCAN << this->phys_erase_shift);
-	int ret;
-	size_t retlen;
-
-	end = min(end, mtd->size); /* paranoia */
-	for (offs = 0; offs < end; offs += mtd->erasesize) {
-		ret = mtd->read(mtd, offs, mtd->oobblock, &retlen, buf);
-		if (retlen != mtd->oobblock) continue;
-		if (ret) {
-			printk(KERN_WARNING "ECC error scanning DOC at 0x%x\n",
-				offs);
-		}
-		if (memcmp(buf, id, 6)) continue;
-		printk(KERN_INFO "Found DiskOnChip %s Media Header at 0x%x\n", id, offs);
-		if (doc->mh0_page == -1) {
-			doc->mh0_page = offs >> this->page_shift;
-			if (!findmirror) return 1;
-			continue;
-		}
-		doc->mh1_page = offs >> this->page_shift;
-		return 2;
-	}
-	if (doc->mh0_page == -1) {
-		printk(KERN_WARNING "DiskOnChip %s Media Header not found.\n", id);
-		return 0;
-	}
-	/* Only one mediaheader was found.  We want buf to contain a
-	   mediaheader on return, so we'll have to re-read the one we found. */
-	offs = doc->mh0_page << this->page_shift;
-	ret = mtd->read(mtd, offs, mtd->oobblock, &retlen, buf);
-	if (retlen != mtd->oobblock) {
-		/* Insanity.  Give up. */
-		printk(KERN_ERR "Read DiskOnChip Media Header once, but can't reread it???\n");
-		return 0;
-	}
-	return 1;
-}
-
-static inline int __init nftl_partscan(struct mtd_info *mtd,
-				struct mtd_partition *parts)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	int ret = 0;
-	u_char *buf;
-	struct NFTLMediaHeader *mh;
-	const unsigned psize = 1 << this->page_shift;
-	unsigned blocks, maxblocks;
-	int offs, numheaders;
-
-	buf = kmalloc(mtd->oobblock, GFP_KERNEL);
-	if (!buf) {
-		printk(KERN_ERR "DiskOnChip mediaheader kmalloc failed!\n");
-		return 0;
-	}
-	if (!(numheaders=find_media_headers(mtd, buf, "ANAND", 1))) goto out;
-	mh = (struct NFTLMediaHeader *) buf;
-
-/*#ifdef CONFIG_MTD_DEBUG_VERBOSE */
-/*	if (CONFIG_MTD_DEBUG_VERBOSE >= 2) */
-	printk(KERN_INFO "    DataOrgID        = %s\n"
-			 "    NumEraseUnits    = %d\n"
-			 "    FirstPhysicalEUN = %d\n"
-			 "    FormattedSize    = %d\n"
-			 "    UnitSizeFactor   = %d\n",
-		mh->DataOrgID, mh->NumEraseUnits,
-		mh->FirstPhysicalEUN, mh->FormattedSize,
-		mh->UnitSizeFactor);
-/*#endif */
-
-	blocks = mtd->size >> this->phys_erase_shift;
-	maxblocks = min(32768U, mtd->erasesize - psize);
-
-	if (mh->UnitSizeFactor == 0x00) {
-		/* Auto-determine UnitSizeFactor.  The constraints are:
-		   - There can be at most 32768 virtual blocks.
-		   - There can be at most (virtual block size - page size)
-		     virtual blocks (because MediaHeader+BBT must fit in 1).
-		*/
-		mh->UnitSizeFactor = 0xff;
-		while (blocks > maxblocks) {
-			blocks >>= 1;
-			maxblocks = min(32768U, (maxblocks << 1) + psize);
-			mh->UnitSizeFactor--;
-		}
-		printk(KERN_WARNING "UnitSizeFactor=0x00 detected.  Correct value is assumed to be 0x%02x.\n", mh->UnitSizeFactor);
-	}
-
-	/* NOTE: The lines below modify internal variables of the NAND and MTD
-	   layers; variables with have already been configured by nand_scan.
-	   Unfortunately, we didn't know before this point what these values
-	   should be.  Thus, this code is somewhat dependant on the exact
-	   implementation of the NAND layer.  */
-	if (mh->UnitSizeFactor != 0xff) {
-		this->bbt_erase_shift += (0xff - mh->UnitSizeFactor);
-		mtd->erasesize <<= (0xff - mh->UnitSizeFactor);
-		printk(KERN_INFO "Setting virtual erase size to %d\n", mtd->erasesize);
-		blocks = mtd->size >> this->bbt_erase_shift;
-		maxblocks = min(32768U, mtd->erasesize - psize);
-	}
-
-	if (blocks > maxblocks) {
-		printk(KERN_ERR "UnitSizeFactor of 0x%02x is inconsistent with device size.  Aborting.\n", mh->UnitSizeFactor);
-		goto out;
-	}
-
-	/* Skip past the media headers. */
-	offs = max(doc->mh0_page, doc->mh1_page);
-	offs <<= this->page_shift;
-	offs += mtd->erasesize;
-
-	/*parts[0].name = " DiskOnChip Boot / Media Header partition"; */
-	/*parts[0].offset = 0; */
-	/*parts[0].size = offs; */
-
-	parts[0].name = " DiskOnChip BDTL partition";
-	parts[0].offset = offs;
-	parts[0].size = (mh->NumEraseUnits - numheaders) << this->bbt_erase_shift;
-
-	offs += parts[0].size;
-	if (offs < mtd->size) {
-		parts[1].name = " DiskOnChip Remainder partition";
-		parts[1].offset = offs;
-		parts[1].size = mtd->size - offs;
-		ret = 2;
-		goto out;
-	}
-	ret = 1;
-out:
-	kfree(buf);
-	return ret;
-}
-
-/* This is a stripped-down copy of the code in inftlmount.c */
-static inline int __init inftl_partscan(struct mtd_info *mtd,
-				 struct mtd_partition *parts)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	int ret = 0;
-	u_char *buf;
-	struct INFTLMediaHeader *mh;
-	struct INFTLPartition *ip;
-	int numparts = 0;
-	int blocks;
-	int vshift, lastvunit = 0;
-	int i;
-	int end = mtd->size;
-
-	if (inftl_bbt_write)
-		end -= (INFTL_BBT_RESERVED_BLOCKS << this->phys_erase_shift);
-
-	buf = kmalloc(mtd->oobblock, GFP_KERNEL);
-	if (!buf) {
-		printk(KERN_ERR "DiskOnChip mediaheader kmalloc failed!\n");
-		return 0;
-	}
-
-	if (!find_media_headers(mtd, buf, "BNAND", 0)) goto out;
-	doc->mh1_page = doc->mh0_page + (4096 >> this->page_shift);
-	mh = (struct INFTLMediaHeader *) buf;
-
-	mh->NoOfBootImageBlocks = le32_to_cpu(mh->NoOfBootImageBlocks);
-	mh->NoOfBinaryPartitions = le32_to_cpu(mh->NoOfBinaryPartitions);
-	mh->NoOfBDTLPartitions = le32_to_cpu(mh->NoOfBDTLPartitions);
-	mh->BlockMultiplierBits = le32_to_cpu(mh->BlockMultiplierBits);
-	mh->FormatFlags = le32_to_cpu(mh->FormatFlags);
-	mh->PercentUsed = le32_to_cpu(mh->PercentUsed);
-
-/*#ifdef CONFIG_MTD_DEBUG_VERBOSE */
-/*	if (CONFIG_MTD_DEBUG_VERBOSE >= 2) */
-	printk(KERN_INFO "    bootRecordID          = %s\n"
-			 "    NoOfBootImageBlocks   = %d\n"
-			 "    NoOfBinaryPartitions  = %d\n"
-			 "    NoOfBDTLPartitions    = %d\n"
-			 "    BlockMultiplerBits    = %d\n"
-			 "    FormatFlgs            = %d\n"
-			 "    OsakVersion           = %d.%d.%d.%d\n"
-			 "    PercentUsed           = %d\n",
-		mh->bootRecordID, mh->NoOfBootImageBlocks,
-		mh->NoOfBinaryPartitions,
-		mh->NoOfBDTLPartitions,
-		mh->BlockMultiplierBits, mh->FormatFlags,
-		((unsigned char *) &mh->OsakVersion)[0] & 0xf,
-		((unsigned char *) &mh->OsakVersion)[1] & 0xf,
-		((unsigned char *) &mh->OsakVersion)[2] & 0xf,
-		((unsigned char *) &mh->OsakVersion)[3] & 0xf,
-		mh->PercentUsed);
-/*#endif */
-
-	vshift = this->phys_erase_shift + mh->BlockMultiplierBits;
-
-	blocks = mtd->size >> vshift;
-	if (blocks > 32768) {
-		printk(KERN_ERR "BlockMultiplierBits=%d is inconsistent with device size.  Aborting.\n", mh->BlockMultiplierBits);
-		goto out;
-	}
-
-	blocks = doc->chips_per_floor << (this->chip_shift - this->phys_erase_shift);
-	if (inftl_bbt_write && (blocks > mtd->erasesize)) {
-		printk(KERN_ERR "Writeable BBTs spanning more than one erase block are not yet supported.  FIX ME!\n");
-		goto out;
-	}
-
-	/* Scan the partitions */
-	for (i = 0; (i < 4); i++) {
-		ip = &(mh->Partitions[i]);
-		ip->virtualUnits = le32_to_cpu(ip->virtualUnits);
-		ip->firstUnit = le32_to_cpu(ip->firstUnit);
-		ip->lastUnit = le32_to_cpu(ip->lastUnit);
-		ip->flags = le32_to_cpu(ip->flags);
-		ip->spareUnits = le32_to_cpu(ip->spareUnits);
-		ip->Reserved0 = le32_to_cpu(ip->Reserved0);
-
-/*#ifdef CONFIG_MTD_DEBUG_VERBOSE */
-/*		if (CONFIG_MTD_DEBUG_VERBOSE >= 2) */
-		printk(KERN_INFO	"    PARTITION[%d] ->\n"
-			"        virtualUnits    = %d\n"
-			"        firstUnit       = %d\n"
-			"        lastUnit        = %d\n"
-			"        flags           = 0x%x\n"
-			"        spareUnits      = %d\n",
-			i, ip->virtualUnits, ip->firstUnit,
-			ip->lastUnit, ip->flags,
-			ip->spareUnits);
-/*#endif */
-
-/*
-		if ((i == 0) && (ip->firstUnit > 0)) {
-			parts[0].name = " DiskOnChip IPL / Media Header partition";
-			parts[0].offset = 0;
-			parts[0].size = mtd->erasesize * ip->firstUnit;
-			numparts = 1;
-		}
-*/
-
-		if (ip->flags & INFTL_BINARY)
-			parts[numparts].name = " DiskOnChip BDK partition";
-		else
-			parts[numparts].name = " DiskOnChip BDTL partition";
-		parts[numparts].offset = ip->firstUnit << vshift;
-		parts[numparts].size = (1 + ip->lastUnit - ip->firstUnit) << vshift;
-		numparts++;
-		if (ip->lastUnit > lastvunit) lastvunit = ip->lastUnit;
-		if (ip->flags & INFTL_LAST) break;
-	}
-	lastvunit++;
-	if ((lastvunit << vshift) < end) {
-		parts[numparts].name = " DiskOnChip Remainder partition";
-		parts[numparts].offset = lastvunit << vshift;
-		parts[numparts].size = end - parts[numparts].offset;
-		numparts++;
-	}
-	ret = numparts;
-out:
-	kfree(buf);
-	return ret;
-}
-
-static int __init nftl_scan_bbt(struct mtd_info *mtd)
-{
-	int ret, numparts;
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	struct mtd_partition parts[2];
-
-	memset((char *) parts, 0, sizeof(parts));
-	/* On NFTL, we have to find the media headers before we can read the
-	   BBTs, since they're stored in the media header eraseblocks. */
-	numparts = nftl_partscan(mtd, parts);
-	if (!numparts) return -EIO;
-	this->bbt_td->options = NAND_BBT_ABSPAGE | NAND_BBT_8BIT |
-				NAND_BBT_SAVECONTENT | NAND_BBT_WRITE |
-				NAND_BBT_VERSION;
-	this->bbt_td->veroffs = 7;
-	this->bbt_td->pages[0] = doc->mh0_page + 1;
-	if (doc->mh1_page != -1) {
-		this->bbt_md->options = NAND_BBT_ABSPAGE | NAND_BBT_8BIT |
-					NAND_BBT_SAVECONTENT | NAND_BBT_WRITE |
-					NAND_BBT_VERSION;
-		this->bbt_md->veroffs = 7;
-		this->bbt_md->pages[0] = doc->mh1_page + 1;
-	} else {
-		this->bbt_md = NULL;
-	}
-
-	/* It's safe to set bd=NULL below because NAND_BBT_CREATE is not set.
-	   At least as nand_bbt.c is currently written. */
-	if ((ret = nand_scan_bbt(mtd, NULL)))
-		return ret;
-	add_mtd_device(mtd);
-#ifdef CONFIG_MTD_PARTITIONS
-	if (!no_autopart)
-		add_mtd_partitions(mtd, parts, numparts);
-#endif
-	return 0;
-}
-
-static int __init inftl_scan_bbt(struct mtd_info *mtd)
-{
-	int ret, numparts;
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-	struct mtd_partition parts[5];
-
-	if (this->numchips > doc->chips_per_floor) {
-		printk(KERN_ERR "Multi-floor INFTL devices not yet supported.\n");
-		return -EIO;
-	}
-
-	if (DoC_is_MillenniumPlus(doc)) {
-		this->bbt_td->options = NAND_BBT_2BIT | NAND_BBT_ABSPAGE;
-		if (inftl_bbt_write)
-			this->bbt_td->options |= NAND_BBT_WRITE;
-		this->bbt_td->pages[0] = 2;
-		this->bbt_md = NULL;
-	} else {
-		this->bbt_td->options = NAND_BBT_LASTBLOCK | NAND_BBT_8BIT |
-					NAND_BBT_VERSION;
-		if (inftl_bbt_write)
-			this->bbt_td->options |= NAND_BBT_WRITE;
-		this->bbt_td->offs = 8;
-		this->bbt_td->len = 8;
-		this->bbt_td->veroffs = 7;
-		this->bbt_td->maxblocks = INFTL_BBT_RESERVED_BLOCKS;
-		this->bbt_td->reserved_block_code = 0x01;
-		this->bbt_td->pattern = "MSYS_BBT";
-
-		this->bbt_md->options = NAND_BBT_LASTBLOCK | NAND_BBT_8BIT |
-					NAND_BBT_VERSION;
-		if (inftl_bbt_write)
-			this->bbt_md->options |= NAND_BBT_WRITE;
-		this->bbt_md->offs = 8;
-		this->bbt_md->len = 8;
-		this->bbt_md->veroffs = 7;
-		this->bbt_md->maxblocks = INFTL_BBT_RESERVED_BLOCKS;
-		this->bbt_md->reserved_block_code = 0x01;
-		this->bbt_md->pattern = "TBB_SYSM";
-	}
-
-	/* It's safe to set bd=NULL below because NAND_BBT_CREATE is not set.
-	   At least as nand_bbt.c is currently written. */
-	if ((ret = nand_scan_bbt(mtd, NULL)))
-		return ret;
-	memset((char *) parts, 0, sizeof(parts));
-	numparts = inftl_partscan(mtd, parts);
-	/* At least for now, require the INFTL Media Header.  We could probably
-	   do without it for non-INFTL use, since all it gives us is
-	   autopartitioning, but I want to give it more thought. */
-	if (!numparts) return -EIO;
-	add_mtd_device(mtd);
-#ifdef CONFIG_MTD_PARTITIONS
-	if (!no_autopart)
-		add_mtd_partitions(mtd, parts, numparts);
-#endif
-	return 0;
-}
-
-static inline int __init doc2000_init(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-
-	this->write_byte = doc2000_write_byte;
-	this->read_byte = doc2000_read_byte;
-	this->write_buf = doc2000_writebuf;
-	this->read_buf = doc2000_readbuf;
-	this->verify_buf = doc2000_verifybuf;
-	this->scan_bbt = nftl_scan_bbt;
-
-	doc->CDSNControl = CDSN_CTRL_FLASH_IO | CDSN_CTRL_ECC_IO;
-	doc2000_count_chips(mtd);
-	mtd->name = "DiskOnChip 2000 (NFTL Model)";
-	return (4 * doc->chips_per_floor);
-}
-
-static inline int __init doc2001_init(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-
-	this->write_byte = doc2001_write_byte;
-	this->read_byte = doc2001_read_byte;
-	this->write_buf = doc2001_writebuf;
-	this->read_buf = doc2001_readbuf;
-	this->verify_buf = doc2001_verifybuf;
-
-	ReadDOC(doc->virtadr, ChipID);
-	ReadDOC(doc->virtadr, ChipID);
-	ReadDOC(doc->virtadr, ChipID);
-	if (ReadDOC(doc->virtadr, ChipID) != DOC_ChipID_DocMil) {
-		/* It's not a Millennium; it's one of the newer
-		   DiskOnChip 2000 units with a similar ASIC.
-		   Treat it like a Millennium, except that it
-		   can have multiple chips. */
-		doc2000_count_chips(mtd);
-		mtd->name = "DiskOnChip 2000 (INFTL Model)";
-		this->scan_bbt = inftl_scan_bbt;
-		return (4 * doc->chips_per_floor);
-	} else {
-		/* Bog-standard Millennium */
-		doc->chips_per_floor = 1;
-		mtd->name = "DiskOnChip Millennium";
-		this->scan_bbt = nftl_scan_bbt;
-		return 1;
-	}
-}
-
-static inline int __init doc2001plus_init(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-	struct doc_priv *doc = this->priv;
-
-	this->write_byte = NULL;
-	this->read_byte = doc2001plus_read_byte;
-	this->write_buf = doc2001plus_writebuf;
-	this->read_buf = doc2001plus_readbuf;
-	this->verify_buf = doc2001plus_verifybuf;
-	this->scan_bbt = inftl_scan_bbt;
-	this->hwcontrol = NULL;
-	this->select_chip = doc2001plus_select_chip;
-	this->cmdfunc = doc2001plus_command;
-	this->enable_hwecc = doc2001plus_enable_hwecc;
-
-	doc->chips_per_floor = 1;
-	mtd->name = "DiskOnChip Millennium Plus";
-
-	return 1;
-}
-
-static inline int __init doc_probe(unsigned long physadr)
-{
-	unsigned char ChipID;
-	struct mtd_info *mtd;
-	struct nand_chip *nand;
-	struct doc_priv *doc;
-	void __iomem *virtadr;
-	unsigned char save_control;
-	unsigned char tmp, tmpb, tmpc;
-	int reg, len, numchips;
-	int ret = 0;
-
-	virtadr = ioremap(physadr, DOC_IOREMAP_LEN);
-	if (!virtadr) {
-		printk(KERN_ERR "Diskonchip ioremap failed: 0x%x bytes at 0x%lx\n", DOC_IOREMAP_LEN, physadr);
-		return -EIO;
-	}
-
-	/* It's not possible to cleanly detect the DiskOnChip - the
-	 * bootup procedure will put the device into reset mode, and
-	 * it's not possible to talk to it without actually writing
-	 * to the DOCControl register. So we store the current contents
-	 * of the DOCControl register's location, in case we later decide
-	 * that it's not a DiskOnChip, and want to put it back how we
-	 * found it.
-	 */
-	save_control = ReadDOC(virtadr, DOCControl);
-
-	/* Reset the DiskOnChip ASIC */
-	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_RESET,
-		 virtadr, DOCControl);
-	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_RESET,
-		 virtadr, DOCControl);
-
-	/* Enable the DiskOnChip ASIC */
-	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_NORMAL,
-		 virtadr, DOCControl);
-	WriteDOC(DOC_MODE_CLR_ERR | DOC_MODE_MDWREN | DOC_MODE_NORMAL,
-		 virtadr, DOCControl);
-
-	ChipID = ReadDOC(virtadr, ChipID);
-
-	switch(ChipID) {
-	case DOC_ChipID_Doc2k:
-		reg = DoC_2k_ECCStatus;
-		break;
-	case DOC_ChipID_DocMil:
-		reg = DoC_ECCConf;
-		break;
-	case DOC_ChipID_DocMilPlus16:
-	case DOC_ChipID_DocMilPlus32:
-	case 0:
-		/* Possible Millennium Plus, need to do more checks */
-		/* Possibly release from power down mode */
-		for (tmp = 0; (tmp < 4); tmp++)
-			ReadDOC(virtadr, Mplus_Power);
-
-		/* Reset the Millennium Plus ASIC */
-		tmp = DOC_MODE_RESET | DOC_MODE_MDWREN | DOC_MODE_RST_LAT |
-			DOC_MODE_BDECT;
-		WriteDOC(tmp, virtadr, Mplus_DOCControl);
-		WriteDOC(~tmp, virtadr, Mplus_CtrlConfirm);
-
-		mdelay(1);
-		/* Enable the Millennium Plus ASIC */
-		tmp = DOC_MODE_NORMAL | DOC_MODE_MDWREN | DOC_MODE_RST_LAT |
-			DOC_MODE_BDECT;
-		WriteDOC(tmp, virtadr, Mplus_DOCControl);
-		WriteDOC(~tmp, virtadr, Mplus_CtrlConfirm);
-		mdelay(1);
-
-		ChipID = ReadDOC(virtadr, ChipID);
-
-		switch (ChipID) {
-		case DOC_ChipID_DocMilPlus16:
-			reg = DoC_Mplus_Toggle;
-			break;
-		case DOC_ChipID_DocMilPlus32:
-			printk(KERN_ERR "DiskOnChip Millennium Plus 32MB is not supported, ignoring.\n");
-		default:
-			ret = -ENODEV;
-			goto notfound;
-		}
-		break;
-
-	default:
-		ret = -ENODEV;
-		goto notfound;
-	}
-	/* Check the TOGGLE bit in the ECC register */
-	tmp  = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
-	tmpb = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
-	tmpc = ReadDOC_(virtadr, reg) & DOC_TOGGLE_BIT;
-	if ((tmp == tmpb) || (tmp != tmpc)) {
-		printk(KERN_WARNING "Possible DiskOnChip at 0x%lx failed TOGGLE test, dropping.\n", physadr);
-		ret = -ENODEV;
-		goto notfound;
-	}
-
-	for (mtd = doclist; mtd; mtd = doc->nextdoc) {
-		unsigned char oldval;
-		unsigned char newval;
-		nand = mtd->priv;
-		doc = nand->priv;
-		/* Use the alias resolution register to determine if this is
-		   in fact the same DOC aliased to a new address.  If writes
-		   to one chip's alias resolution register change the value on
-		   the other chip, they're the same chip. */
-		if (ChipID == DOC_ChipID_DocMilPlus16) {
-			oldval = ReadDOC(doc->virtadr, Mplus_AliasResolution);
-			newval = ReadDOC(virtadr, Mplus_AliasResolution);
-		} else {
-			oldval = ReadDOC(doc->virtadr, AliasResolution);
-			newval = ReadDOC(virtadr, AliasResolution);
-		}
-		if (oldval != newval)
-			continue;
-		if (ChipID == DOC_ChipID_DocMilPlus16) {
-			WriteDOC(~newval, virtadr, Mplus_AliasResolution);
-			oldval = ReadDOC(doc->virtadr, Mplus_AliasResolution);
-			WriteDOC(newval, virtadr, Mplus_AliasResolution); /* restore it */
-		} else {
-			WriteDOC(~newval, virtadr, AliasResolution);
-			oldval = ReadDOC(doc->virtadr, AliasResolution);
-			WriteDOC(newval, virtadr, AliasResolution); /* restore it */
-		}
-		newval = ~newval;
-		if (oldval == newval) {
-			printk(KERN_DEBUG "Found alias of DOC at 0x%lx to 0x%lx\n", doc->physadr, physadr);
-			goto notfound;
-		}
-	}
-
-	printk(KERN_NOTICE "DiskOnChip found at 0x%lx\n", physadr);
-
-	len = sizeof(struct mtd_info) +
-	      sizeof(struct nand_chip) +
-	      sizeof(struct doc_priv) +
-	      (2 * sizeof(struct nand_bbt_descr));
-	mtd =  kmalloc(len, GFP_KERNEL);
-	if (!mtd) {
-		printk(KERN_ERR "DiskOnChip kmalloc (%d bytes) failed!\n", len);
-		ret = -ENOMEM;
-		goto fail;
-	}
-	memset(mtd, 0, len);
-
-	nand			= (struct nand_chip *) (mtd + 1);
-	doc			= (struct doc_priv *) (nand + 1);
-	nand->bbt_td		= (struct nand_bbt_descr *) (doc + 1);
-	nand->bbt_md		= nand->bbt_td + 1;
-
-	mtd->priv		= nand;
-	mtd->owner		= THIS_MODULE;
-
-	nand->priv		= doc;
-	nand->select_chip	= doc200x_select_chip;
-	nand->hwcontrol		= doc200x_hwcontrol;
-	nand->dev_ready		= doc200x_dev_ready;
-	nand->waitfunc		= doc200x_wait;
-	nand->block_bad		= doc200x_block_bad;
-	nand->enable_hwecc	= doc200x_enable_hwecc;
-	nand->calculate_ecc	= doc200x_calculate_ecc;
-	nand->correct_data	= doc200x_correct_data;
-
-	nand->autooob		= &doc200x_oobinfo;
-	nand->eccmode		= NAND_ECC_HW6_512;
-	nand->options		= NAND_USE_FLASH_BBT | NAND_HWECC_SYNDROME;
-
-	doc->physadr		= physadr;
-	doc->virtadr		= virtadr;
-	doc->ChipID		= ChipID;
-	doc->curfloor		= -1;
-	doc->curchip		= -1;
-	doc->mh0_page		= -1;
-	doc->mh1_page		= -1;
-	doc->nextdoc		= doclist;
-
-	if (ChipID == DOC_ChipID_Doc2k)
-		numchips = doc2000_init(mtd);
-	else if (ChipID == DOC_ChipID_DocMilPlus16)
-		numchips = doc2001plus_init(mtd);
-	else
-		numchips = doc2001_init(mtd);
-
-	if ((ret = nand_scan(mtd, numchips))) {
-		/* DBB note: i believe nand_release is necessary here, as
-		   buffers may have been allocated in nand_base.  Check with
-		   Thomas. FIX ME! */
-		/* nand_release will call del_mtd_device, but we haven't yet
-		   added it.  This is handled without incident by
-		   del_mtd_device, as far as I can tell. */
-		nand_release(mtd);
-		kfree(mtd);
-		goto fail;
-	}
-
-	/* Success! */
-	doclist = mtd;
-	return 0;
-
-notfound:
-	/* Put back the contents of the DOCControl register, in case it's not
-	   actually a DiskOnChip.  */
-	WriteDOC(save_control, virtadr, DOCControl);
-fail:
-	iounmap(virtadr);
-	return ret;
-}
-
-static void release_nanddoc(void)
-{
- 	struct mtd_info *mtd, *nextmtd;
-	struct nand_chip *nand;
-	struct doc_priv *doc;
-
-	for (mtd = doclist; mtd; mtd = nextmtd) {
-		nand = mtd->priv;
-		doc = nand->priv;
-
-		nextmtd = doc->nextdoc;
-		nand_release(mtd);
-		iounmap(doc->virtadr);
-		kfree(mtd);
-	}
-}
-
-static int __init init_nanddoc(void)
-{
-	int i, ret = 0;
-
-	/* We could create the decoder on demand, if memory is a concern.
-	 * This way we have it handy, if an error happens
-	 *
-	 * Symbolsize is 10 (bits)
-	 * Primitve polynomial is x^10+x^3+1
-	 * first consecutive root is 510
-	 * primitve element to generate roots = 1
-	 * generator polinomial degree = 4
-	 */
-	rs_decoder = init_rs(10, 0x409, FCR, 1, NROOTS);
- 	if (!rs_decoder) {
-		printk (KERN_ERR "DiskOnChip: Could not create a RS decoder\n");
-		return -ENOMEM;
-	}
-
-	if (doc_config_location) {
-		printk(KERN_INFO "Using configured DiskOnChip probe address 0x%lx\n", doc_config_location);
-		ret = doc_probe(doc_config_location);
-		if (ret < 0)
-			goto outerr;
-	} else {
-		for (i=0; (doc_locations[i] != 0xffffffff); i++) {
-			doc_probe(doc_locations[i]);
-		}
-	}
-	/* No banner message any more. Print a message if no DiskOnChip
-	   found, so the user knows we at least tried. */
-	if (!doclist) {
-		printk(KERN_INFO "No valid DiskOnChip devices found\n");
-		ret = -ENODEV;
-		goto outerr;
-	}
-	return 0;
-outerr:
-	free_rs(rs_decoder);
-	return ret;
-}
-
-static void __exit cleanup_nanddoc(void)
-{
-	/* Cleanup the nand/DoC resources */
-	release_nanddoc();
-
-	/* Free the reed solomon resources */
-	if (rs_decoder) {
-		free_rs(rs_decoder);
-	}
-}
-
-module_init(init_nanddoc);
-module_exit(cleanup_nanddoc);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("David Woodhouse <dwmw2@infradead.org>");
-MODULE_DESCRIPTION("M-Systems DiskOnChip 2000, Millennium and Millennium Plus device driver\n");
-#endif
diff --git a/drivers/nand/nand.c b/drivers/nand/nand.c
deleted file mode 100644
index 4927231..0000000
--- a/drivers/nand/nand.c
+++ /dev/null
@@ -1,247 +0,0 @@
-/*
- * (C) Copyright 2005
- * 2N Telekomunikace, a.s. <www.2n.cz>
- * Ladislav Michl <michl@2n.cz>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-#include <common.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/mtd.h>
-#include <init.h>
-#include <xfuncs.h>
-#include <driver.h>
-#include <malloc.h>
-#include <ioctl.h>
-#include <nand.h>
-#include <errno.h>
-
-static 	ssize_t nand_read(struct cdev *cdev, void* buf, size_t count, ulong offset, ulong flags)
-{
-	struct mtd_info *info = cdev->priv;
-	size_t retlen;
-	int ret;
-
-	debug("nand_read: 0x%08x 0x%08x\n", offset, count);
-
-	ret = info->read(info, offset, count, &retlen, buf);
-
-	if(ret) {
-		printf("err %d\n", ret);
-		return ret;
-	}
-	return retlen;
-}
-
-#define NOTALIGNED(x) (x & (info->writesize - 1)) != 0
-
-static int all_ff(const void *buf, int len)
-{
-	int i;
-	const uint8_t *p = buf;
-
-	for (i = 0; i < len; i++)
-		if (p[i] != 0xFF)
-			return 0;
-	return 1;
-}
-
-static ssize_t nand_write(struct cdev* cdev, const void *buf, size_t _count, ulong offset, ulong flags)
-{
-	struct mtd_info *info = cdev->priv;
-	size_t retlen, now;
-	int ret = 0;
-	void *wrbuf = NULL;
-	size_t count = _count;
-
-	if (NOTALIGNED(offset)) {
-		printf("offset 0x%08x not page aligned\n", offset);
-		return -EINVAL;
-	}
-
-	debug("write: 0x%08x 0x%08x\n", offset, count);
-
-	while (count) {
-		now = count > info->writesize ? info->writesize : count;
-
-		if (NOTALIGNED(now)) {
-			debug("not aligned: %d %d\n", info->writesize, (offset % info->writesize));
-			wrbuf = xmalloc(info->writesize);
-			memset(wrbuf, 0xff, info->writesize);
-			memcpy(wrbuf + (offset % info->writesize), buf, now);
-			if (!all_ff(wrbuf, info->writesize))
-				ret = info->write(info, offset & ~(info->writesize - 1),
-						info->writesize, &retlen, wrbuf);
-			free(wrbuf);
-		} else {
-			if (!all_ff(buf, info->writesize))
-				ret = info->write(info, offset, now, &retlen, buf);
-			debug("offset: 0x%08x now: 0x%08x retlen: 0x%08x\n", offset, now, retlen);
-		}
-		if (ret)
-			goto out;
-
-		offset += now;
-		count -= now;
-		buf += now;
-	}
-
-out:
-	return ret ? ret : _count;
-}
-
-static int nand_ioctl(struct cdev *cdev, int request, void *buf)
-{
-	struct mtd_info *info = cdev->priv;
-	struct mtd_info_user *user = buf;
-
-	switch (request) {
-	case MEMGETBADBLOCK:
-		debug("MEMGETBADBLOCK: 0x%08x\n", (off_t)buf);
-		return info->block_isbad(info, (off_t)buf);
-	case MEMSETBADBLOCK:
-		debug("MEMSETBADBLOCK: 0x%08x\n", (off_t)buf);
-		return info->block_markbad(info, (off_t)buf);
-	case MEMGETINFO:
-		user->type	= info->type;
-		user->flags	= info->flags;
-		user->size	= info->size;
-		user->erasesize	= info->erasesize;
-		user->oobsize	= info->oobsize;
-		/* The below fields are obsolete */
-		user->ecctype	= -1;
-		user->eccsize	= 0;
-		return 0;
-	}
-
-	return 0;
-}
-
-static ssize_t nand_erase(struct cdev *cdev, size_t count, unsigned long offset)
-{
-	struct mtd_info *info = cdev->priv;
-	struct erase_info erase;
-	int ret;
-
-	memset(&erase, 0, sizeof(erase));
-	erase.mtd = info;
-	erase.addr = offset;
-	erase.len = info->erasesize;
-
-	while (count > 0) {
-		debug("erase %d %d\n", erase.addr, erase.len);
-
-		ret = info->block_isbad(info, erase.addr);
-		if (ret > 0) {
-			printf("Skipping bad block at 0x%08x\n", erase.addr);
-		} else {
-			ret = info->erase(info, &erase);
-			if (ret)
-				return ret;
-		}
-
-		erase.addr += info->erasesize;
-		count -= count > info->erasesize ? info->erasesize : count;
-	}
-
-	return 0;
-}
-#if 0
-static char* mtd_get_size(struct device_d *, struct param_d *param)
-{
-	static char 
-}
-#endif
-
-static struct file_operations nand_ops = {
-	.read   = nand_read,
-	.write  = nand_write,
-	.ioctl  = nand_ioctl,
-	.lseek  = dev_lseek_default,
-	.erase  = nand_erase,
-};
-
-static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
-{
-	struct mtd_info *info = cdev->priv;
-	struct nand_chip *chip = info->priv;
-	struct mtd_oob_ops ops;
-	int ret;
-
-	if (count < info->oobsize)
-		return -EINVAL;
-
-	ops.mode = MTD_OOB_RAW;
-	ops.ooboffs = 0;
-	ops.ooblen = info->oobsize;
-	ops.oobbuf = buf;
-	ops.datbuf = NULL;
-	ops.len = info->oobsize;
-
-	offset /= info->oobsize;
-	ret = info->read_oob(info, offset << chip->page_shift, &ops);
-	if (ret)
-		return ret;
-
-	return info->oobsize;
-}
-
-static struct file_operations nand_ops_oob = {
-	.read   = nand_read_oob,
-	.ioctl  = nand_ioctl,
-	.lseek  = dev_lseek_default,
-};
-
-int add_mtd_device(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-	char str[16];
-
-	strcpy(mtd->class_dev.name, "nand");
-	register_device(&mtd->class_dev);
-
-	mtd->cdev.ops = &nand_ops;
-	mtd->cdev.size = mtd->size;
-	mtd->cdev.name = asprintf("nand%d", mtd->class_dev.id);
-	mtd->cdev.priv = mtd;
-	mtd->cdev.dev = &mtd->class_dev;
-
-	sprintf(str, "%u", mtd->size);
-	dev_add_param_fixed(&mtd->class_dev, "size", str);
-
-	devfs_create(&mtd->cdev);
-
-	mtd->cdev_oob.ops = &nand_ops_oob;
-	mtd->cdev_oob.size = (mtd->size >> chip->page_shift) * mtd->oobsize;
-	mtd->cdev_oob.name = asprintf("nand_oob%d", mtd->class_dev.id);
-	mtd->cdev_oob.priv = mtd;
-	mtd->cdev_oob.dev = &mtd->class_dev;
-	devfs_create(&mtd->cdev_oob);
-
-	return 0;
-}
-
-int del_mtd_device (struct mtd_info *mtd)
-{
-	unregister_device(&mtd->class_dev);
-	free(mtd->cdev_oob.name);
-	free(mtd->param_size.value);
-	free(mtd->cdev.name);
-	return 0;
-}
-
diff --git a/drivers/nand/nand_base.c b/drivers/nand/nand_base.c
deleted file mode 100644
index b75a450..0000000
--- a/drivers/nand/nand_base.c
+++ /dev/null
@@ -1,2648 +0,0 @@
-/*
- *  drivers/mtd/nand.c
- *
- *  Overview:
- *   This is the generic MTD driver for NAND flash devices. It should be
- *   capable of working with almost all NAND chips currently available.
- *   Basic support for AG-AND chips is provided.
- *
- *	Additional technical information is available on
- *	http://www.linux-mtd.infradead.org/doc/nand.html
- *
- *  Copyright (C) 2000 Steven J. Hill (sjhill@realitydiluted.com)
- *		  2002-2006 Thomas Gleixner (tglx@linutronix.de)
- *
- *  Credits:
- *	David Woodhouse for adding multichip support
- *
- *	Aleph One Ltd. and Toby Churchill Ltd. for supporting the
- *	rework for 2K page size chips
- *
- *  TODO:
- *	Enable cached programming for 2k page size chips
- *	Check, if mtd->ecctype should be set to MTD_ECC_HW
- *	if we have HW ecc support.
- *	The AG-AND chips have nice features for speed improvement,
- *	which are not supported yet. Read / program 4 pages in one go.
- *	BBT table is not serialized, has to be fixed
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- */
-#include <common.h>
-#include <errno.h>
-#include <clock.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <linux/err.h>
-#include <linux/mtd/nand_ecc.h>
-#include <asm/byteorder.h>
-#include <asm/io.h>
-#include <malloc.h>
-#include <module.h>
-
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
-/* Define default oob placement schemes for large and small page devices */
-static struct nand_ecclayout nand_oob_8 = {
-	.eccbytes = 3,
-	.eccpos = {0, 1, 2},
-	.oobfree = {
-		{.offset = 3,
-		 .length = 2},
-		{.offset = 6,
-		 .length = 2}}
-};
-
-static struct nand_ecclayout nand_oob_16 = {
-	.eccbytes = 6,
-	.eccpos = {0, 1, 2, 3, 6, 7},
-	.oobfree = {
-		{.offset = 8,
-		 . length = 8}}
-};
-
-static struct nand_ecclayout nand_oob_64 = {
-	.eccbytes = 24,
-	.eccpos = {
-		   40, 41, 42, 43, 44, 45, 46, 47,
-		   48, 49, 50, 51, 52, 53, 54, 55,
-		   56, 57, 58, 59, 60, 61, 62, 63},
-	.oobfree = {
-		{.offset = 2,
-		 .length = 38}}
-};
-
-static int nand_get_device(struct nand_chip *chip, struct mtd_info *mtd,
-			   int new_state);
-
-static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
-			     struct mtd_oob_ops *ops);
-
-#define DEFINE_LED_TRIGGER(x)
-#define DEFINE_LED_TRIGGER_GLOBAL(x)
-#define led_trigger_register_simple(x, y) do {} while(0)
-#define led_trigger_unregister_simple(x) do {} while(0)
-#define led_trigger_event(x, y) do {} while(0)
-
-/*
- * For devices which display every fart in the system on a separate LED. Is
- * compiled away when LED support is disabled.
- */
-DEFINE_LED_TRIGGER(nand_led_trigger);
-
-/**
- * nand_release_device - [GENERIC] release chip
- * @mtd:	MTD device structure
- *
- * Deselect, release chip lock and wake up anyone waiting on the device
- */
-static void nand_release_device(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	/* De-select the NAND device */
-	chip->select_chip(mtd, -1);
-
-	/* Release the controller and the chip */
-	chip->controller->active = NULL;
-	chip->state = FL_READY;
-}
-
-/**
- * nand_read_byte - [DEFAULT] read one byte from the chip
- * @mtd:	MTD device structure
- *
- * Default read function for 8bit buswith
- */
-static uint8_t nand_read_byte(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-	return readb(chip->IO_ADDR_R);
-}
-
-/**
- * nand_read_byte16 - [DEFAULT] read one byte endianess aware from the chip
- * @mtd:	MTD device structure
- *
- * Default read function for 16bit buswith with
- * endianess conversion
- */
-static uint8_t nand_read_byte16(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-	return (uint8_t) cpu_to_le16(readw(chip->IO_ADDR_R));
-}
-
-/**
- * nand_read_word - [DEFAULT] read one word from the chip
- * @mtd:	MTD device structure
- *
- * Default read function for 16bit buswith without
- * endianess conversion
- */
-static u16 nand_read_word(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-	return readw(chip->IO_ADDR_R);
-}
-
-/**
- * nand_select_chip - [DEFAULT] control CE line
- * @mtd:	MTD device structure
- * @chipnr:	chipnumber to select, -1 for deselect
- *
- * Default select function for 1 chip devices.
- */
-static void nand_select_chip(struct mtd_info *mtd, int chipnr)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	switch (chipnr) {
-	case -1:
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
-		break;
-	case 0:
-		break;
-	default:
-		printf("%s: illegal chip number %d\n", chipnr);
-	}
-}
-
-/**
- * nand_write_buf - [DEFAULT] write buffer to chip
- * @mtd:	MTD device structure
- * @buf:	data buffer
- * @len:	number of bytes to write
- *
- * Default write function for 8bit buswith
- */
-static void nand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
-{
-	int i;
-	struct nand_chip *chip = mtd->priv;
-
-	for (i = 0; i < len; i++)
-		writeb(buf[i], chip->IO_ADDR_W);
-}
-
-/**
- * nand_read_buf - [DEFAULT] read chip data into buffer
- * @mtd:	MTD device structure
- * @buf:	buffer to store date
- * @len:	number of bytes to read
- *
- * Default read function for 8bit buswith
- */
-static void nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
-{
-	int i;
-	struct nand_chip *chip = mtd->priv;
-
-	for (i = 0; i < len; i++)
-		buf[i] = readb(chip->IO_ADDR_R);
-}
-
-/**
- * nand_verify_buf - [DEFAULT] Verify chip data against buffer
- * @mtd:	MTD device structure
- * @buf:	buffer containing the data to compare
- * @len:	number of bytes to compare
- *
- * Default verify function for 8bit buswith
- */
-static int nand_verify_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
-{
-	int i;
-	struct nand_chip *chip = mtd->priv;
-
-	for (i = 0; i < len; i++)
-		if (buf[i] != readb(chip->IO_ADDR_R))
-			return -EFAULT;
-	return 0;
-}
-
-/**
- * nand_write_buf16 - [DEFAULT] write buffer to chip
- * @mtd:	MTD device structure
- * @buf:	data buffer
- * @len:	number of bytes to write
- *
- * Default write function for 16bit buswith
- */
-static void nand_write_buf16(struct mtd_info *mtd, const uint8_t *buf, int len)
-{
-	int i;
-	struct nand_chip *chip = mtd->priv;
-	u16 *p = (u16 *) buf;
-	len >>= 1;
-
-	for (i = 0; i < len; i++)
-		writew(p[i], chip->IO_ADDR_W);
-
-}
-
-/**
- * nand_read_buf16 - [DEFAULT] read chip data into buffer
- * @mtd:	MTD device structure
- * @buf:	buffer to store date
- * @len:	number of bytes to read
- *
- * Default read function for 16bit buswith
- */
-static void nand_read_buf16(struct mtd_info *mtd, uint8_t *buf, int len)
-{
-	int i;
-	struct nand_chip *chip = mtd->priv;
-	u16 *p = (u16 *) buf;
-	len >>= 1;
-
-	for (i = 0; i < len; i++)
-		p[i] = readw(chip->IO_ADDR_R);
-}
-
-/**
- * nand_verify_buf16 - [DEFAULT] Verify chip data against buffer
- * @mtd:	MTD device structure
- * @buf:	buffer containing the data to compare
- * @len:	number of bytes to compare
- *
- * Default verify function for 16bit buswith
- */
-static int nand_verify_buf16(struct mtd_info *mtd, const uint8_t *buf, int len)
-{
-	int i;
-	struct nand_chip *chip = mtd->priv;
-	u16 *p = (u16 *) buf;
-	len >>= 1;
-
-	for (i = 0; i < len; i++)
-		if (p[i] != readw(chip->IO_ADDR_R))
-			return -EFAULT;
-
-	return 0;
-}
-
-/**
- * nand_block_bad - [DEFAULT] Read bad block marker from the chip
- * @mtd:	MTD device structure
- * @ofs:	offset from device start
- * @getchip:	0, if the chip is already selected
- *
- * Check, if the block is bad.
- */
-static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
-{
-	int page, chipnr, res = 0;
-	struct nand_chip *chip = mtd->priv;
-	u16 bad;
-
-	page = (int)(ofs >> chip->page_shift) & chip->pagemask;
-
-	if (getchip) {
-		chipnr = (int)(ofs >> chip->chip_shift);
-
-		nand_get_device(chip, mtd, FL_READING);
-
-		/* Select the NAND device */
-		chip->select_chip(mtd, chipnr);
-	}
-
-	if (chip->options & NAND_BUSWIDTH_16) {
-		chip->cmdfunc(mtd, NAND_CMD_READOOB, chip->badblockpos & 0xFE,
-			      page);
-		bad = cpu_to_le16(chip->read_word(mtd));
-		if (chip->badblockpos & 0x1)
-			bad >>= 8;
-		if ((bad & 0xFF) != 0xff)
-			res = 1;
-	} else {
-		chip->cmdfunc(mtd, NAND_CMD_READOOB, chip->badblockpos, page);
-		if (chip->read_byte(mtd) != 0xff)
-			res = 1;
-	}
-
-	if (getchip)
-		nand_release_device(mtd);
-
-	return res;
-}
-
-/**
- * nand_default_block_markbad - [DEFAULT] mark a block bad
- * @mtd:	MTD device structure
- * @ofs:	offset from device start
- *
- * This is the default implementation, which can be overridden by
- * a hardware specific driver.
-*/
-static int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs)
-{
-	struct nand_chip *chip = mtd->priv;
-	uint8_t buf[2] = { 0, 0 };
-	int block, ret;
-
-	/* Get block number */
-	block = (int)(ofs >> chip->bbt_erase_shift);
-	if (chip->bbt)
-		chip->bbt[block >> 2] |= 0x01 << ((block & 0x03) << 1);
-
-	/* Do we have a flash based bad block table ? */
-	if (chip->options & NAND_USE_FLASH_BBT)
-		ret = nand_update_bbt(mtd, ofs);
-	else {
-		/* We write two bytes, so we dont have to mess with 16 bit
-		 * access
-		 */
-		nand_get_device(chip, mtd, FL_WRITING);
-		ofs += mtd->oobsize;
-		chip->ops.len = chip->ops.ooblen = 2;
-		chip->ops.datbuf = NULL;
-		chip->ops.oobbuf = buf;
-		chip->ops.ooboffs = chip->badblockpos & ~0x01;
-
-		ret = nand_do_write_oob(mtd, ofs, &chip->ops);
-		nand_release_device(mtd);
-	}
-	if (!ret)
-		mtd->ecc_stats.badblocks++;
-
-	return ret;
-}
-
-/**
- * nand_check_wp - [GENERIC] check if the chip is write protected
- * @mtd:	MTD device structure
- * Check, if the device is write protected
- *
- * The function expects, that the device is already selected
- */
-static int nand_check_wp(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-	/* Check the WP bit */
-	chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
-	return (chip->read_byte(mtd) & NAND_STATUS_WP) ? 0 : 1;
-}
-
-/**
- * nand_block_checkbad - [GENERIC] Check if a block is marked bad
- * @mtd:	MTD device structure
- * @ofs:	offset from device start
- * @getchip:	0, if the chip is already selected
- * @allowbbt:	1, if its allowed to access the bbt area
- *
- * Check, if the block is bad. Either by reading the bad block table or
- * calling of the scan function.
- */
-static int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
-			       int allowbbt)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	if (!chip->bbt)
-		return chip->block_bad(mtd, ofs, getchip);
-
-	/* Return info from the table */
-	return nand_isbad_bbt(mtd, ofs, allowbbt);
-}
-
-/*
- * Wait for the ready pin, after a command
- * The timeout is catched later.
- */
-void nand_wait_ready(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-	uint64_t start = get_time_ns();
-
-	led_trigger_event(nand_led_trigger, LED_FULL);
-	/* wait until command is processed or timeout occures */
-	do {
-		if (chip->dev_ready(mtd))
-			break;
-	} while (!is_timeout(start, SECOND * 2));
-	led_trigger_event(nand_led_trigger, LED_OFF);
-}
-EXPORT_SYMBOL(nand_wait_ready);
-
-/**
- * nand_command - [DEFAULT] Send command to NAND device
- * @mtd:	MTD device structure
- * @command:	the command to be sent
- * @column:	the column address for this command, -1 if none
- * @page_addr:	the page address for this command, -1 if none
- *
- * Send command to NAND device. This function is used for small page
- * devices (256/512 Bytes per page)
- */
-static void nand_command(struct mtd_info *mtd, unsigned int command,
-			 int column, int page_addr)
-{
-	register struct nand_chip *chip = mtd->priv;
-	int ctrl = NAND_CTRL_CLE | NAND_CTRL_CHANGE;
-
-	/*
-	 * Write out the command to the device.
-	 */
-	if (command == NAND_CMD_SEQIN) {
-		int readcmd;
-
-		if (column >= mtd->writesize) {
-			/* OOB area */
-			column -= mtd->writesize;
-			readcmd = NAND_CMD_READOOB;
-		} else if (column < 256) {
-			/* First 256 bytes --> READ0 */
-			readcmd = NAND_CMD_READ0;
-		} else {
-			column -= 256;
-			readcmd = NAND_CMD_READ1;
-		}
-		chip->cmd_ctrl(mtd, readcmd, ctrl);
-		ctrl &= ~NAND_CTRL_CHANGE;
-	}
-	chip->cmd_ctrl(mtd, command, ctrl);
-
-	/*
-	 * Address cycle, when necessary
-	 */
-	ctrl = NAND_CTRL_ALE | NAND_CTRL_CHANGE;
-	/* Serially input address */
-	if (column != -1) {
-		/* Adjust columns for 16 bit buswidth */
-		if (chip->options & NAND_BUSWIDTH_16)
-			column >>= 1;
-		chip->cmd_ctrl(mtd, column, ctrl);
-		ctrl &= ~NAND_CTRL_CHANGE;
-	}
-	if (page_addr != -1) {
-		chip->cmd_ctrl(mtd, page_addr, ctrl);
-		ctrl &= ~NAND_CTRL_CHANGE;
-		chip->cmd_ctrl(mtd, page_addr >> 8, ctrl);
-		/* One more address cycle for devices > 32MiB */
-		if (chip->chipsize > (32 << 20))
-			chip->cmd_ctrl(mtd, page_addr >> 16, ctrl);
-	}
-	chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
-
-	/*
-	 * program and erase have their own busy handlers
-	 * status and sequential in needs no delay
-	 */
-	switch (command) {
-
-	case NAND_CMD_PAGEPROG:
-	case NAND_CMD_ERASE1:
-	case NAND_CMD_ERASE2:
-	case NAND_CMD_SEQIN:
-	case NAND_CMD_STATUS:
-		return;
-
-	case NAND_CMD_RESET:
-		if (chip->dev_ready)
-			break;
-		udelay(chip->chip_delay);
-		chip->cmd_ctrl(mtd, NAND_CMD_STATUS,
-			       NAND_CTRL_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd,
-			       NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
-		while (!(chip->read_byte(mtd) & NAND_STATUS_READY)) ;
-		return;
-
-		/* This applies to read commands */
-	default:
-		/*
-		 * If we don't have access to the busy pin, we apply the given
-		 * command delay
-		 */
-		if (!chip->dev_ready) {
-			udelay(chip->chip_delay);
-			return;
-		}
-	}
-	/* Apply this short delay always to ensure that we do wait tWB in
-	 * any case on any machine. */
-	ndelay(100);
-
-	nand_wait_ready(mtd);
-}
-
-/**
- * nand_command_lp - [DEFAULT] Send command to NAND large page device
- * @mtd:	MTD device structure
- * @command:	the command to be sent
- * @column:	the column address for this command, -1 if none
- * @page_addr:	the page address for this command, -1 if none
- *
- * Send command to NAND device. This is the version for the new large page
- * devices We dont have the separate regions as we have in the small page
- * devices.  We must emulate NAND_CMD_READOOB to keep the code compatible.
- */
-static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
-			    int column, int page_addr)
-{
-	register struct nand_chip *chip = mtd->priv;
-
-	/* Emulate NAND_CMD_READOOB */
-	if (command == NAND_CMD_READOOB) {
-		column += mtd->writesize;
-		command = NAND_CMD_READ0;
-	}
-
-	/* Command latch cycle */
-	chip->cmd_ctrl(mtd, command & 0xff,
-		       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-
-	if (column != -1 || page_addr != -1) {
-		int ctrl = NAND_CTRL_CHANGE | NAND_NCE | NAND_ALE;
-
-		/* Serially input address */
-		if (column != -1) {
-			/* Adjust columns for 16 bit buswidth */
-			if (chip->options & NAND_BUSWIDTH_16)
-				column >>= 1;
-			chip->cmd_ctrl(mtd, column, ctrl);
-			ctrl &= ~NAND_CTRL_CHANGE;
-			chip->cmd_ctrl(mtd, column >> 8, ctrl);
-		}
-		if (page_addr != -1) {
-			chip->cmd_ctrl(mtd, page_addr, ctrl);
-			chip->cmd_ctrl(mtd, page_addr >> 8,
-				       NAND_NCE | NAND_ALE);
-			/* One more address cycle for devices > 128MiB */
-			if (chip->chipsize > (128 << 20))
-				chip->cmd_ctrl(mtd, page_addr >> 16,
-					       NAND_NCE | NAND_ALE);
-		}
-	}
-	chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
-
-	/*
-	 * program and erase have their own busy handlers
-	 * status, sequential in, and deplete1 need no delay
-	 */
-	switch (command) {
-
-	case NAND_CMD_CACHEDPROG:
-	case NAND_CMD_PAGEPROG:
-	case NAND_CMD_ERASE1:
-	case NAND_CMD_ERASE2:
-	case NAND_CMD_SEQIN:
-	case NAND_CMD_RNDIN:
-	case NAND_CMD_STATUS:
-	case NAND_CMD_DEPLETE1:
-		return;
-
-		/*
-		 * read error status commands require only a short delay
-		 */
-	case NAND_CMD_STATUS_ERROR:
-	case NAND_CMD_STATUS_ERROR0:
-	case NAND_CMD_STATUS_ERROR1:
-	case NAND_CMD_STATUS_ERROR2:
-	case NAND_CMD_STATUS_ERROR3:
-		udelay(chip->chip_delay);
-		return;
-
-	case NAND_CMD_RESET:
-		if (chip->dev_ready)
-			break;
-		udelay(chip->chip_delay);
-		chip->cmd_ctrl(mtd, NAND_CMD_STATUS,
-			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
-			       NAND_NCE | NAND_CTRL_CHANGE);
-		while (!(chip->read_byte(mtd) & NAND_STATUS_READY)) ;
-		return;
-
-	case NAND_CMD_RNDOUT:
-		/* No ready / busy check necessary */
-		chip->cmd_ctrl(mtd, NAND_CMD_RNDOUTSTART,
-			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
-			       NAND_NCE | NAND_CTRL_CHANGE);
-		return;
-
-	case NAND_CMD_READ0:
-		chip->cmd_ctrl(mtd, NAND_CMD_READSTART,
-			       NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
-		chip->cmd_ctrl(mtd, NAND_CMD_NONE,
-			       NAND_NCE | NAND_CTRL_CHANGE);
-
-		/* This applies to read commands */
-	default:
-		/*
-		 * If we don't have access to the busy pin, we apply the given
-		 * command delay
-		 */
-		if (!chip->dev_ready) {
-			udelay(chip->chip_delay);
-			return;
-		}
-	}
-
-	/* Apply this short delay always to ensure that we do wait tWB in
-	 * any case on any machine. */
-	ndelay(100);
-
-	nand_wait_ready(mtd);
-}
-
-/**
- * nand_get_device - [GENERIC] Get chip for selected access
- * @chip:	the nand chip descriptor
- * @mtd:	MTD device structure
- * @new_state:	the state which is requested
- *
- * Get the device and lock it for exclusive access
- */
-static int
-nand_get_device(struct nand_chip *chip, struct mtd_info *mtd, int new_state)
-{
- retry:
-	/* Hardware controller shared among independend devices */
-	if (!chip->controller->active)
-		chip->controller->active = chip;
-
-	if (chip->controller->active == chip && chip->state == FL_READY) {
-		chip->state = new_state;
-		return 0;
-	}
-	if (new_state == FL_PM_SUSPENDED) {
-		return (chip->state == FL_PM_SUSPENDED) ? 0 : -EAGAIN;
-	}
-	goto retry;
-}
-
-/**
- * nand_wait - [DEFAULT]  wait until the command is done
- * @mtd:	MTD device structure
- * @chip:	NAND chip structure
- *
- * Wait for command done. This applies to erase and program only
- * Erase can take up to 400ms and program up to 20ms according to
- * general NAND and SmartMedia specs
- */
-static int nand_wait(struct mtd_info *mtd, struct nand_chip *chip)
-{
-
-	uint64_t start = get_time_ns();
-	uint64_t timeo;
-	int status, state = chip->state;
-
-	if (state == FL_ERASING)
-		timeo = 400 * MSECOND;
-	else
-		timeo = 20 * MSECOND;
-
-	led_trigger_event(nand_led_trigger, LED_FULL);
-
-	/* Apply this short delay always to ensure that we do wait tWB in
-	 * any case on any machine. */
-	ndelay(100);
-
-	if ((state == FL_ERASING) && (chip->options & NAND_IS_AND))
-		chip->cmdfunc(mtd, NAND_CMD_STATUS_MULTI, -1, -1);
-	else
-		chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
-
-	while (!is_timeout(start, timeo)) {
-		if (chip->dev_ready) {
-			if (chip->dev_ready(mtd))
-				break;
-		} else {
-			if (chip->read_byte(mtd) & NAND_STATUS_READY)
-				break;
-		}
-	}
-	led_trigger_event(nand_led_trigger, LED_OFF);
-
-	status = (int)chip->read_byte(mtd);
-	return status;
-}
-
-/**
- * nand_read_page_raw - [Intern] read raw page data without ecc
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- */
-static int nand_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
-			      uint8_t *buf)
-{
-	chip->read_buf(mtd, buf, mtd->writesize);
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
-	return 0;
-}
-
-/**
- * nand_read_page_swecc - [REPLACABLE] software ecc based page read function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- */
-static int nand_read_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
-				uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *p = buf;
-	uint8_t *ecc_calc = chip->buffers->ecccalc;
-	uint8_t *ecc_code = chip->buffers->ecccode;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-
-	chip->ecc.read_page_raw(mtd, chip, buf);
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
-
-	for (i = 0; i < chip->ecc.total; i++)
-		ecc_code[i] = chip->oob_poi[eccpos[i]];
-
-	eccsteps = chip->ecc.steps;
-	p = buf;
-
-	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		int stat;
-
-		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
-		if (stat < 0)
-			mtd->ecc_stats.failed++;
-		else
-			mtd->ecc_stats.corrected += stat;
-	}
-	return 0;
-}
-
-/**
- * nand_read_page_hwecc - [REPLACABLE] hardware ecc based page read function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- *
- * Not for syndrome calculating ecc controllers which need a special oob layout
- */
-static int nand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
-				uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *p = buf;
-	uint8_t *ecc_calc = chip->buffers->ecccalc;
-	uint8_t *ecc_code = chip->buffers->ecccode;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		chip->ecc.hwctl(mtd, NAND_ECC_READ);
-		chip->read_buf(mtd, p, eccsize);
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
-	}
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
-
-	for (i = 0; i < chip->ecc.total; i++)
-		ecc_code[i] = chip->oob_poi[eccpos[i]];
-
-	eccsteps = chip->ecc.steps;
-	p = buf;
-
-	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		int stat;
-
-		stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
-		if (stat < 0)
-			mtd->ecc_stats.failed++;
-		else
-			mtd->ecc_stats.corrected += stat;
-	}
-	return 0;
-}
-
-/**
- * nand_read_page_syndrome - [REPLACABLE] hardware ecc syndrom based page read
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	buffer to store read data
- *
- * The hw generator calculates the error syndrome automatically. Therefor
- * we need a special oob layout and handling.
- */
-static int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
-				   uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *p = buf;
-	uint8_t *oob = chip->oob_poi;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		int stat;
-
-		chip->ecc.hwctl(mtd, NAND_ECC_READ);
-		chip->read_buf(mtd, p, eccsize);
-
-		if (chip->ecc.prepad) {
-			chip->read_buf(mtd, oob, chip->ecc.prepad);
-			oob += chip->ecc.prepad;
-		}
-
-		chip->ecc.hwctl(mtd, NAND_ECC_READSYN);
-		chip->read_buf(mtd, oob, eccbytes);
-		stat = chip->ecc.correct(mtd, p, oob, NULL);
-
-		if (stat < 0)
-			mtd->ecc_stats.failed++;
-		else
-			mtd->ecc_stats.corrected += stat;
-
-		oob += eccbytes;
-
-		if (chip->ecc.postpad) {
-			chip->read_buf(mtd, oob, chip->ecc.postpad);
-			oob += chip->ecc.postpad;
-		}
-	}
-
-	/* Calculate remaining oob bytes */
-	i = mtd->oobsize - (oob - chip->oob_poi);
-	if (i)
-		chip->read_buf(mtd, oob, i);
-
-	return 0;
-}
-
-/**
- * nand_transfer_oob - [Internal] Transfer oob to client buffer
- * @chip:	nand chip structure
- * @oob:	oob destination address
- * @ops:	oob ops structure
- * @len:	size of oob to transfer
- */
-static uint8_t *nand_transfer_oob(struct nand_chip *chip, uint8_t *oob,
-				  struct mtd_oob_ops *ops, size_t len)
-{
-	switch(ops->mode) {
-
-	case MTD_OOB_PLACE:
-	case MTD_OOB_RAW:
-		memcpy(oob, chip->oob_poi + ops->ooboffs, len);
-		return oob + len;
-
-	case MTD_OOB_AUTO: {
-		struct nand_oobfree *free = chip->ecc.layout->oobfree;
-		uint32_t boffs = 0, roffs = ops->ooboffs;
-		size_t bytes = 0;
-
-		for(; free->length && len; free++, len -= bytes) {
-			/* Read request not from offset 0 ? */
-			if (unlikely(roffs)) {
-				if (roffs >= free->length) {
-					roffs -= free->length;
-					continue;
-				}
-				boffs = free->offset + roffs;
-				bytes = min_t(size_t, len,
-					      (free->length - roffs));
-				roffs = 0;
-			} else {
-				bytes = min_t(size_t, len, free->length);
-				boffs = free->offset;
-			}
-			memcpy(oob, chip->oob_poi + boffs, bytes);
-			oob += bytes;
-		}
-		return oob;
-	}
-	default:
-		BUG();
-	}
-	return NULL;
-}
-
-/**
- * nand_do_read_ops - [Internal] Read data with ECC
- *
- * @mtd:	MTD device structure
- * @from:	offset to read from
- * @ops:	oob ops structure
- *
- * Internal function. Called with chip held.
- */
-static int nand_do_read_ops(struct mtd_info *mtd, loff_t from,
-			    struct mtd_oob_ops *ops)
-{
-	int chipnr, page, realpage, col, bytes, aligned;
-	struct nand_chip *chip = mtd->priv;
-	struct mtd_ecc_stats stats;
-	int blkcheck = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
-	int sndcmd = 1;
-	int ret = 0;
-	uint32_t readlen = ops->len;
-	uint32_t oobreadlen = ops->ooblen;
-	uint8_t *bufpoi, *oob, *buf;
-
-	stats = mtd->ecc_stats;
-
-	chipnr = (int)(from >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
-
-	realpage = (int)(from >> chip->page_shift);
-	page = realpage & chip->pagemask;
-
-	col = (int)(from & (mtd->writesize - 1));
-
-	buf = ops->datbuf;
-	oob = ops->oobbuf;
-
-	while(1) {
-		bytes = min(mtd->writesize - col, readlen);
-		aligned = (bytes == mtd->writesize);
-
-		/* Is the current page in the buffer ? */
-		if (realpage != chip->pagebuf || oob) {
-			bufpoi = aligned ? buf : chip->buffers->databuf;
-
-			if (likely(sndcmd)) {
-				chip->cmdfunc(mtd, NAND_CMD_READ0, 0x00, page);
-				sndcmd = 0;
-			}
-
-			/* Now read the page into the buffer */
-			if (unlikely(ops->mode == MTD_OOB_RAW))
-				ret = chip->ecc.read_page_raw(mtd, chip, bufpoi);
-			else
-				ret = chip->ecc.read_page(mtd, chip, bufpoi);
-			if (ret < 0)
-				break;
-
-			/* Transfer not aligned data */
-			if (!aligned) {
-				chip->pagebuf = realpage;
-				memcpy(buf, chip->buffers->databuf + col, bytes);
-			}
-
-			buf += bytes;
-
-			if (unlikely(oob)) {
-				/* Raw mode does data:oob:data:oob */
-				if (ops->mode != MTD_OOB_RAW) {
-					int toread = min(oobreadlen,
-						chip->ecc.layout->oobavail);
-					if (toread) {
-						oob = nand_transfer_oob(chip,
-							oob, ops, toread);
-						oobreadlen -= toread;
-					}
-				} else
-					buf = nand_transfer_oob(chip,
-						buf, ops, mtd->oobsize);
-			}
-
-			if (!(chip->options & NAND_NO_READRDY)) {
-				/*
-				 * Apply delay or wait for ready/busy pin. Do
-				 * this before the AUTOINCR check, so no
-				 * problems arise if a chip which does auto
-				 * increment is marked as NOAUTOINCR by the
-				 * board driver.
-				 */
-				if (!chip->dev_ready)
-					udelay(chip->chip_delay);
-				else
-					nand_wait_ready(mtd);
-			}
-		} else {
-			memcpy(buf, chip->buffers->databuf + col, bytes);
-			buf += bytes;
-		}
-
-		readlen -= bytes;
-
-		if (!readlen)
-			break;
-
-		/* For subsequent reads align to page boundary. */
-		col = 0;
-		/* Increment page address */
-		realpage++;
-
-		page = realpage & chip->pagemask;
-		/* Check, if we cross a chip boundary */
-		if (!page) {
-			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
-		}
-
-		/* Check, if the chip supports auto page increment
-		 * or if we have hit a block boundary.
-		 */
-		if (!NAND_CANAUTOINCR(chip) || !(page & blkcheck))
-			sndcmd = 1;
-	}
-
-	ops->retlen = ops->len - (size_t) readlen;
-	if (oob)
-		ops->oobretlen = ops->ooblen - oobreadlen;
-
-	if (ret)
-		return ret;
-
-	if (mtd->ecc_stats.failed - stats.failed)
-		return -EBADMSG;
-
-	return 0;
-}
-
-/**
- * nand_read - [MTD Interface] MTD compability function for nand_do_read_ecc
- * @mtd:	MTD device structure
- * @from:	offset to read from
- * @len:	number of bytes to read
- * @retlen:	pointer to variable to store the number of read bytes
- * @buf:	the databuffer to put data
- *
- * Get hold of the chip and call nand_do_read
- */
-static int nand_read(struct mtd_info *mtd, loff_t from, size_t len,
-		     size_t *retlen, uint8_t *buf)
-{
-	struct nand_chip *chip = mtd->priv;
-	int ret;
-
-	/* Do not allow reads past end of device */
-	if ((from + len) > mtd->size)
-		return -EINVAL;
-	if (!len)
-		return 0;
-
-	nand_get_device(chip, mtd, FL_READING);
-
-	chip->ops.len = len;
-	chip->ops.datbuf = buf;
-	chip->ops.oobbuf = NULL;
-
-	ret = nand_do_read_ops(mtd, from, &chip->ops);
-
-	*retlen = chip->ops.retlen;
-
-	nand_release_device(mtd);
-
-	return ret;
-}
-
-/**
- * nand_read_oob_std - [REPLACABLE] the most common OOB data read function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to read
- * @sndcmd:	flag whether to issue read command or not
- */
-static int nand_read_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
-			     int page, int sndcmd)
-{
-	if (sndcmd) {
-		chip->cmdfunc(mtd, NAND_CMD_READOOB, 0, page);
-		sndcmd = 0;
-	}
-	chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
-	return sndcmd;
-}
-
-/**
- * nand_read_oob_syndrome - [REPLACABLE] OOB data read function for HW ECC
- *			    with syndromes
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to read
- * @sndcmd:	flag whether to issue read command or not
- */
-static int nand_read_oob_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
-				  int page, int sndcmd)
-{
-	uint8_t *buf = chip->oob_poi;
-	int length = mtd->oobsize;
-	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
-	int eccsize = chip->ecc.size;
-	uint8_t *bufpoi = buf;
-	int i, toread, sndrnd = 0, pos;
-
-	chip->cmdfunc(mtd, NAND_CMD_READ0, chip->ecc.size, page);
-	for (i = 0; i < chip->ecc.steps; i++) {
-		if (sndrnd) {
-			pos = eccsize + i * (eccsize + chunk);
-			if (mtd->writesize > 512)
-				chip->cmdfunc(mtd, NAND_CMD_RNDOUT, pos, -1);
-			else
-				chip->cmdfunc(mtd, NAND_CMD_READ0, pos, page);
-		} else
-			sndrnd = 1;
-		toread = min_t(int, length, chunk);
-		chip->read_buf(mtd, bufpoi, toread);
-		bufpoi += toread;
-		length -= toread;
-	}
-	if (length > 0)
-		chip->read_buf(mtd, bufpoi, length);
-
-	return 1;
-}
-
-/**
- * nand_write_oob_std - [REPLACABLE] the most common OOB data write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to write
- */
-static int nand_write_oob_std(struct mtd_info *mtd, struct nand_chip *chip,
-			      int page)
-{
-	int status = 0;
-	const uint8_t *buf = chip->oob_poi;
-	int length = mtd->oobsize;
-
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, mtd->writesize, page);
-	chip->write_buf(mtd, buf, length);
-	/* Send command to program the OOB data */
-	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
-
-	status = chip->waitfunc(mtd, chip);
-
-	return status & NAND_STATUS_FAIL ? -EIO : 0;
-}
-
-/**
- * nand_write_oob_syndrome - [REPLACABLE] OOB data write function for HW ECC
- *			     with syndrome - only for large page flash !
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @page:	page number to write
- */
-static int nand_write_oob_syndrome(struct mtd_info *mtd,
-				   struct nand_chip *chip, int page)
-{
-	int chunk = chip->ecc.bytes + chip->ecc.prepad + chip->ecc.postpad;
-	int eccsize = chip->ecc.size, length = mtd->oobsize;
-	int i, len, pos, status = 0, sndcmd = 0, steps = chip->ecc.steps;
-	const uint8_t *bufpoi = chip->oob_poi;
-
-	/*
-	 * data-ecc-data-ecc ... ecc-oob
-	 * or
-	 * data-pad-ecc-pad-data-pad .... ecc-pad-oob
-	 */
-	if (!chip->ecc.prepad && !chip->ecc.postpad) {
-		pos = steps * (eccsize + chunk);
-		steps = 0;
-	} else
-		pos = eccsize;
-
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, pos, page);
-	for (i = 0; i < steps; i++) {
-		if (sndcmd) {
-			if (mtd->writesize <= 512) {
-				uint32_t fill = 0xFFFFFFFF;
-
-				len = eccsize;
-				while (len > 0) {
-					int num = min_t(int, len, 4);
-					chip->write_buf(mtd, (uint8_t *)&fill,
-							num);
-					len -= num;
-				}
-			} else {
-				pos = eccsize + i * (eccsize + chunk);
-				chip->cmdfunc(mtd, NAND_CMD_RNDIN, pos, -1);
-			}
-		} else
-			sndcmd = 1;
-		len = min_t(int, length, chunk);
-		chip->write_buf(mtd, bufpoi, len);
-		bufpoi += len;
-		length -= len;
-	}
-	if (length > 0)
-		chip->write_buf(mtd, bufpoi, length);
-
-	chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
-	status = chip->waitfunc(mtd, chip);
-
-	return status & NAND_STATUS_FAIL ? -EIO : 0;
-}
-
-/**
- * nand_do_read_oob - [Intern] NAND read out-of-band
- * @mtd:	MTD device structure
- * @from:	offset to read from
- * @ops:	oob operations description structure
- *
- * NAND read out-of-band data from the spare area
- */
-static int nand_do_read_oob(struct mtd_info *mtd, loff_t from,
-			    struct mtd_oob_ops *ops)
-{
-	int page, realpage, chipnr, sndcmd = 1;
-	struct nand_chip *chip = mtd->priv;
-	int blkcheck = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
-	int readlen = ops->ooblen;
-	int len;
-	uint8_t *buf = ops->oobbuf;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_read_oob: from = 0x%08Lx, len = %i\n",
-	      (unsigned long long)from, readlen);
-
-	if (ops->mode == MTD_OOB_AUTO)
-		len = chip->ecc.layout->oobavail;
-	else
-		len = mtd->oobsize;
-
-	if (unlikely(ops->ooboffs >= len)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
-			"Attempt to start read outside oob\n");
-		return -EINVAL;
-	}
-
-	/* Do not allow reads past end of device */
-	if (unlikely(from >= mtd->size ||
-		     ops->ooboffs + readlen > ((mtd->size >> chip->page_shift) -
-					(from >> chip->page_shift)) * len)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
-			"Attempt read beyond end of device\n");
-		return -EINVAL;
-	}
-
-	chipnr = (int)(from >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
-
-	/* Shift to get page */
-	realpage = (int)(from >> chip->page_shift);
-	page = realpage & chip->pagemask;
-
-	while(1) {
-		sndcmd = chip->ecc.read_oob(mtd, chip, page, sndcmd);
-
-		len = min(len, readlen);
-		buf = nand_transfer_oob(chip, buf, ops, len);
-
-		if (!(chip->options & NAND_NO_READRDY)) {
-			/*
-			 * Apply delay or wait for ready/busy pin. Do this
-			 * before the AUTOINCR check, so no problems arise if a
-			 * chip which does auto increment is marked as
-			 * NOAUTOINCR by the board driver.
-			 */
-			if (!chip->dev_ready)
-				udelay(chip->chip_delay);
-			else
-				nand_wait_ready(mtd);
-		}
-
-		readlen -= len;
-		if (!readlen)
-			break;
-
-		/* Increment page address */
-		realpage++;
-
-		page = realpage & chip->pagemask;
-		/* Check, if we cross a chip boundary */
-		if (!page) {
-			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
-		}
-
-		/* Check, if the chip supports auto page increment
-		 * or if we have hit a block boundary.
-		 */
-		if (!NAND_CANAUTOINCR(chip) || !(page & blkcheck))
-			sndcmd = 1;
-	}
-
-	ops->oobretlen = ops->ooblen;
-	return 0;
-}
-
-/**
- * nand_read_oob - [MTD Interface] NAND read data and/or out-of-band
- * @mtd:	MTD device structure
- * @from:	offset to read from
- * @ops:	oob operation description structure
- *
- * NAND read data and/or out-of-band data
- */
-static int nand_read_oob(struct mtd_info *mtd, loff_t from,
-			 struct mtd_oob_ops *ops)
-{
-	struct nand_chip *chip = mtd->priv;
-	int ret = -ENOSYS;
-
-	ops->retlen = 0;
-
-	/* Do not allow reads past end of device */
-	if (ops->datbuf && (from + ops->len) > mtd->size) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
-		      "Attempt read beyond end of device\n");
-		return -EINVAL;
-	}
-
-	nand_get_device(chip, mtd, FL_READING);
-
-	switch(ops->mode) {
-	case MTD_OOB_PLACE:
-	case MTD_OOB_AUTO:
-	case MTD_OOB_RAW:
-		break;
-
-	default:
-		goto out;
-	}
-
-	if (!ops->datbuf)
-		ret = nand_do_read_oob(mtd, from, ops);
-	else
-		ret = nand_do_read_ops(mtd, from, ops);
-
- out:
-	nand_release_device(mtd);
-	return ret;
-}
-
-
-/**
- * nand_write_page_raw - [Intern] raw page write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
- */
-static void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
-				const uint8_t *buf)
-{
-	chip->write_buf(mtd, buf, mtd->writesize);
-	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
-}
-
-/**
- * nand_write_page_swecc - [REPLACABLE] software ecc based page write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
- */
-static void nand_write_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
-				  const uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *ecc_calc = chip->buffers->ecccalc;
-	const uint8_t *p = buf;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-
-	/* Software ecc calculation */
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
-
-	for (i = 0; i < chip->ecc.total; i++)
-		chip->oob_poi[eccpos[i]] = ecc_calc[i];
-
-	chip->ecc.write_page_raw(mtd, chip, buf);
-}
-
-/**
- * nand_write_page_hwecc - [REPLACABLE] hardware ecc based page write function
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
- */
-static void nand_write_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
-				  const uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	uint8_t *ecc_calc = chip->buffers->ecccalc;
-	const uint8_t *p = buf;
-	uint32_t *eccpos = chip->ecc.layout->eccpos;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
-		chip->write_buf(mtd, p, eccsize);
-		chip->ecc.calculate(mtd, p, &ecc_calc[i]);
-	}
-
-	for (i = 0; i < chip->ecc.total; i++)
-		chip->oob_poi[eccpos[i]] = ecc_calc[i];
-
-	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
-}
-
-/**
- * nand_write_page_syndrome - [REPLACABLE] hardware ecc syndrom based page write
- * @mtd:	mtd info structure
- * @chip:	nand chip info structure
- * @buf:	data buffer
- *
- * The hw generator calculates the error syndrome automatically. Therefor
- * we need a special oob layout and handling.
- */
-static void nand_write_page_syndrome(struct mtd_info *mtd,
-				    struct nand_chip *chip, const uint8_t *buf)
-{
-	int i, eccsize = chip->ecc.size;
-	int eccbytes = chip->ecc.bytes;
-	int eccsteps = chip->ecc.steps;
-	const uint8_t *p = buf;
-	uint8_t *oob = chip->oob_poi;
-
-	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-
-		chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
-		chip->write_buf(mtd, p, eccsize);
-
-		if (chip->ecc.prepad) {
-			chip->write_buf(mtd, oob, chip->ecc.prepad);
-			oob += chip->ecc.prepad;
-		}
-
-		chip->ecc.calculate(mtd, p, oob);
-		chip->write_buf(mtd, oob, eccbytes);
-		oob += eccbytes;
-
-		if (chip->ecc.postpad) {
-			chip->write_buf(mtd, oob, chip->ecc.postpad);
-			oob += chip->ecc.postpad;
-		}
-	}
-
-	/* Calculate remaining oob bytes */
-	i = mtd->oobsize - (oob - chip->oob_poi);
-	if (i)
-		chip->write_buf(mtd, oob, i);
-}
-
-/**
- * nand_write_page - [REPLACEABLE] write one page
- * @mtd:	MTD device structure
- * @chip:	NAND chip descriptor
- * @buf:	the data to write
- * @page:	page number to write
- * @cached:	cached programming
- * @raw:	use _raw version of write_page
- */
-static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
-			   const uint8_t *buf, int page, int cached, int raw)
-{
-	int status;
-
-	chip->cmdfunc(mtd, NAND_CMD_SEQIN, 0x00, page);
-
-	if (unlikely(raw))
-		chip->ecc.write_page_raw(mtd, chip, buf);
-	else
-		chip->ecc.write_page(mtd, chip, buf);
-
-	/*
-	 * Cached progamming disabled for now, Not sure if its worth the
-	 * trouble. The speed gain is not very impressive. (2.3->2.6Mib/s)
-	 */
-	cached = 0;
-
-	if (!cached || !(chip->options & NAND_CACHEPRG)) {
-
-		chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
-		status = chip->waitfunc(mtd, chip);
-		/*
-		 * See if operation failed and additional status checks are
-		 * available
-		 */
-		if ((status & NAND_STATUS_FAIL) && (chip->errstat))
-			status = chip->errstat(mtd, chip, FL_WRITING, status,
-					       page);
-
-		if (status & NAND_STATUS_FAIL) {
-			return -EIO;
-		}
-	} else {
-		chip->cmdfunc(mtd, NAND_CMD_CACHEDPROG, -1, -1);
-		status = chip->waitfunc(mtd, chip);
-	}
-
-#ifdef CONFIG_MTD_NAND_VERIFY_WRITE
-	/* Send command to read back the data */
-	chip->cmdfunc(mtd, NAND_CMD_READ0, 0, page);
-
-	if (chip->verify_buf(mtd, buf, mtd->writesize))
-		return -EIO;
-#endif
-	return 0;
-}
-
-/**
- * nand_fill_oob - [Internal] Transfer client buffer to oob
- * @chip:	nand chip structure
- * @oob:	oob data buffer
- * @ops:	oob ops structure
- */
-static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob,
-				  struct mtd_oob_ops *ops)
-{
-	size_t len = ops->ooblen;
-
-	switch(ops->mode) {
-
-	case MTD_OOB_PLACE:
-	case MTD_OOB_RAW:
-		memcpy(chip->oob_poi + ops->ooboffs, oob, len);
-		return oob + len;
-
-	case MTD_OOB_AUTO: {
-		struct nand_oobfree *free = chip->ecc.layout->oobfree;
-		uint32_t boffs = 0, woffs = ops->ooboffs;
-		size_t bytes = 0;
-
-		for(; free->length && len; free++, len -= bytes) {
-			/* Write request not from offset 0 ? */
-			if (unlikely(woffs)) {
-				if (woffs >= free->length) {
-					woffs -= free->length;
-					continue;
-				}
-				boffs = free->offset + woffs;
-				bytes = min_t(size_t, len,
-					      (free->length - woffs));
-				woffs = 0;
-			} else {
-				bytes = min_t(size_t, len, free->length);
-				boffs = free->offset;
-			}
-			memcpy(chip->oob_poi + boffs, oob, bytes);
-			oob += bytes;
-		}
-		return oob;
-	}
-	default:
-		BUG();
-	}
-	return NULL;
-}
-
-#define NOTALIGNED(x)	(x & (chip->subpagesize - 1)) != 0
-
-/**
- * nand_do_write_ops - [Internal] NAND write with ECC
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @ops:	oob operations description structure
- *
- * NAND write with ECC
- */
-static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
-			     struct mtd_oob_ops *ops)
-{
-	int chipnr, realpage, page, blockmask, column;
-	struct nand_chip *chip = mtd->priv;
-	uint32_t writelen = ops->len;
-	uint8_t *oob = ops->oobbuf;
-	uint8_t *buf = ops->datbuf;
-	int ret, subpage;
-
-	ops->retlen = 0;
-	if (!writelen)
-		return 0;
-
-	/* reject writes, which are not page aligned */
-	if (NOTALIGNED(to) || NOTALIGNED(ops->len)) {
-		printk(KERN_NOTICE "nand_write: "
-		       "Attempt to write not page aligned data\n");
-		return -EINVAL;
-	}
-
-	column = to & (mtd->writesize - 1);
-	subpage = column || (writelen & (mtd->writesize - 1));
-
-	if (subpage && oob)
-		return -EINVAL;
-
-	chipnr = (int)(to >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
-
-	/* Check, if it is write protected */
-	if (nand_check_wp(mtd)) {
-		return -EIO;
-	}
-
-	realpage = (int)(to >> chip->page_shift);
-	page = realpage & chip->pagemask;
-	blockmask = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
-
-	/* Invalidate the page cache, when we write to the cached page */
-	if (to <= (chip->pagebuf << chip->page_shift) &&
-	    (chip->pagebuf << chip->page_shift) < (to + ops->len))
-		chip->pagebuf = -1;
-
-	/* If we're not given explicit OOB data, let it be 0xFF */
-	if (likely(!oob))
-		memset(chip->oob_poi, 0xff, mtd->oobsize);
-
-	while(1) {
-		int bytes = mtd->writesize;
-		int cached = writelen > bytes && page != blockmask;
-		uint8_t *wbuf = buf;
-
-		/* Partial page write ? */
-		if (unlikely(column || writelen < (mtd->writesize - 1))) {
-			cached = 0;
-			bytes = min_t(int, bytes - column, (int) writelen);
-			chip->pagebuf = -1;
-			memset(chip->buffers->databuf, 0xff, mtd->writesize);
-			memcpy(&chip->buffers->databuf[column], buf, bytes);
-			wbuf = chip->buffers->databuf;
-		}
-
-		if (unlikely(oob))
-			oob = nand_fill_oob(chip, oob, ops);
-
-		ret = chip->write_page(mtd, chip, wbuf, page, cached,
-				       (ops->mode == MTD_OOB_RAW));
-		if (ret)
-			break;
-
-		writelen -= bytes;
-		if (!writelen)
-			break;
-
-		column = 0;
-		buf += bytes;
-		realpage++;
-
-		page = realpage & chip->pagemask;
-		/* Check, if we cross a chip boundary */
-		if (!page) {
-			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
-		}
-	}
-
-	ops->retlen = ops->len - writelen;
-	if (unlikely(oob))
-		ops->oobretlen = ops->ooblen;
-	return ret;
-}
-
-/**
- * nand_write - [MTD Interface] NAND write with ECC
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @len:	number of bytes to write
- * @retlen:	pointer to variable to store the number of written bytes
- * @buf:	the data to write
- *
- * NAND write with ECC
- */
-static int nand_write(struct mtd_info *mtd, loff_t to, size_t len,
-			  size_t *retlen, const uint8_t *buf)
-{
-	struct nand_chip *chip = mtd->priv;
-	int ret;
-
-	/* Do not allow reads past end of device */
-	if ((to + len) > mtd->size)
-		return -EINVAL;
-	if (!len)
-		return 0;
-
-	nand_get_device(chip, mtd, FL_WRITING);
-
-	chip->ops.len = len;
-	chip->ops.datbuf = (uint8_t *)buf;
-	chip->ops.oobbuf = NULL;
-
-	ret = nand_do_write_ops(mtd, to, &chip->ops);
-
-	*retlen = chip->ops.retlen;
-
-	nand_release_device(mtd);
-
-	return ret;
-}
-
-/**
- * nand_do_write_oob - [MTD Interface] NAND write out-of-band
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @ops:	oob operation description structure
- *
- * NAND write out-of-band
- */
-static int nand_do_write_oob(struct mtd_info *mtd, loff_t to,
-			     struct mtd_oob_ops *ops)
-{
-	int chipnr, page, status, len;
-	struct nand_chip *chip = mtd->priv;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_write_oob: to = 0x%08x, len = %i\n",
-	      (unsigned int)to, (int)ops->ooblen);
-
-	if (ops->mode == MTD_OOB_AUTO)
-		len = chip->ecc.layout->oobavail;
-	else
-		len = mtd->oobsize;
-
-	/* Do not allow write past end of page */
-	if ((ops->ooboffs + ops->ooblen) > len) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_write_oob: "
-		      "Attempt to write past end of page\n");
-		return -EINVAL;
-	}
-
-	if (unlikely(ops->ooboffs >= len)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
-			"Attempt to start write outside oob\n");
-		return -EINVAL;
-	}
-
-	/* Do not allow reads past end of device */
-	if (unlikely(to >= mtd->size ||
-		     ops->ooboffs + ops->ooblen >
-			((mtd->size >> chip->page_shift) -
-			 (to >> chip->page_shift)) * len)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
-			"Attempt write beyond end of device\n");
-		return -EINVAL;
-	}
-
-	chipnr = (int)(to >> chip->chip_shift);
-	chip->select_chip(mtd, chipnr);
-
-	/* Shift to get page */
-	page = (int)(to >> chip->page_shift);
-
-	/*
-	 * Reset the chip. Some chips (like the Toshiba TC5832DC found in one
-	 * of my DiskOnChip 2000 test units) will clear the whole data page too
-	 * if we don't do this. I have no clue why, but I seem to have 'fixed'
-	 * it in the doc2000 driver in August 1999.  dwmw2.
-	 */
-	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
-
-	/* Check, if it is write protected */
-	if (nand_check_wp(mtd))
-		return -EROFS;
-
-	/* Invalidate the page cache, if we write to the cached page */
-	if (page == chip->pagebuf)
-		chip->pagebuf = -1;
-
-	memset(chip->oob_poi, 0xff, mtd->oobsize);
-	nand_fill_oob(chip, ops->oobbuf, ops);
-	status = chip->ecc.write_oob(mtd, chip, page & chip->pagemask);
-	memset(chip->oob_poi, 0xff, mtd->oobsize);
-
-	if (status)
-		return status;
-
-	ops->oobretlen = ops->ooblen;
-
-	return 0;
-}
-
-/**
- * nand_write_oob - [MTD Interface] NAND write data and/or out-of-band
- * @mtd:	MTD device structure
- * @to:		offset to write to
- * @ops:	oob operation description structure
- */
-static int nand_write_oob(struct mtd_info *mtd, loff_t to,
-			  struct mtd_oob_ops *ops)
-{
-	struct nand_chip *chip = mtd->priv;
-	int ret = -ENOSYS;
-
-	ops->retlen = 0;
-
-	/* Do not allow writes past end of device */
-	if (ops->datbuf && (to + ops->len) > mtd->size) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_read_oob: "
-		      "Attempt read beyond end of device\n");
-		return -EINVAL;
-	}
-
-	nand_get_device(chip, mtd, FL_WRITING);
-
-	switch(ops->mode) {
-	case MTD_OOB_PLACE:
-	case MTD_OOB_AUTO:
-	case MTD_OOB_RAW:
-		break;
-
-	default:
-		goto out;
-	}
-
-	if (!ops->datbuf)
-		ret = nand_do_write_oob(mtd, to, ops);
-	else
-		ret = nand_do_write_ops(mtd, to, ops);
-
- out:
-	nand_release_device(mtd);
-	return ret;
-}
-
-/**
- * single_erease_cmd - [GENERIC] NAND standard block erase command function
- * @mtd:	MTD device structure
- * @page:	the page address of the block which will be erased
- *
- * Standard erase command for NAND chips
- */
-static void single_erase_cmd(struct mtd_info *mtd, int page)
-{
-	struct nand_chip *chip = mtd->priv;
-	/* Send commands to erase a block */
-	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page);
-	chip->cmdfunc(mtd, NAND_CMD_ERASE2, -1, -1);
-}
-
-/**
- * multi_erease_cmd - [GENERIC] AND specific block erase command function
- * @mtd:	MTD device structure
- * @page:	the page address of the block which will be erased
- *
- * AND multi block erase command function
- * Erase 4 consecutive blocks
- */
-static void multi_erase_cmd(struct mtd_info *mtd, int page)
-{
-	struct nand_chip *chip = mtd->priv;
-	/* Send commands to erase a block */
-	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
-	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
-	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
-	chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page);
-	chip->cmdfunc(mtd, NAND_CMD_ERASE2, -1, -1);
-}
-
-/**
- * nand_erase - [MTD Interface] erase block(s)
- * @mtd:	MTD device structure
- * @instr:	erase instruction
- *
- * Erase one ore more blocks
- */
-static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
-{
-	return nand_erase_nand(mtd, instr, 0);
-}
-
-#define BBT_PAGE_MASK	0xffffff3f
-/**
- * nand_erase_nand - [Internal] erase block(s)
- * @mtd:	MTD device structure
- * @instr:	erase instruction
- * @allowbbt:	allow erasing the bbt area
- *
- * Erase one ore more blocks
- */
-int nand_erase_nand(struct mtd_info *mtd, struct erase_info *instr,
-		    int allowbbt)
-{
-	int page, len, status, pages_per_block, ret, chipnr;
-	struct nand_chip *chip = mtd->priv;
-	int rewrite_bbt[NAND_MAX_CHIPS]={0};
-	unsigned int bbt_masked_page = 0xffffffff;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_erase: start = 0x%08x, len = %i\n",
-	      (unsigned int)instr->addr, (unsigned int)instr->len);
-
-	/* Start address must align on block boundary */
-	if (instr->addr & ((1 << chip->phys_erase_shift) - 1)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: Unaligned address\n");
-		return -EINVAL;
-	}
-
-	/* Length must align on block boundary */
-	if (instr->len & ((1 << chip->phys_erase_shift) - 1)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
-		      "Length not block aligned\n");
-		return -EINVAL;
-	}
-
-	/* Do not allow erase past end of device */
-	if ((instr->len + instr->addr) > mtd->size) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
-		      "Erase past end of device\n");
-		return -EINVAL;
-	}
-
-	instr->fail_addr = 0xffffffff;
-
-	/* Grab the lock and see if the device is available */
-	nand_get_device(chip, mtd, FL_ERASING);
-
-	/* Shift to get first page */
-	page = (int)(instr->addr >> chip->page_shift);
-	chipnr = (int)(instr->addr >> chip->chip_shift);
-
-	/* Calculate pages in each block */
-	pages_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
-
-	/* Select the NAND device */
-	chip->select_chip(mtd, chipnr);
-
-	/* Check, if it is write protected */
-	if (nand_check_wp(mtd)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
-		      "Device is write protected!!!\n");
-		instr->state = MTD_ERASE_FAILED;
-		goto erase_exit;
-	}
-
-	/*
-	 * If BBT requires refresh, set the BBT page mask to see if the BBT
-	 * should be rewritten. Otherwise the mask is set to 0xffffffff which
-	 * can not be matched. This is also done when the bbt is actually
-	 * erased to avoid recusrsive updates
-	 */
-	if (chip->options & BBT_AUTO_REFRESH && !allowbbt)
-		bbt_masked_page = chip->bbt_td->pages[chipnr] & BBT_PAGE_MASK;
-
-	/* Loop through the pages */
-	len = instr->len;
-
-	instr->state = MTD_ERASING;
-
-	while (len) {
-		/*
-		 * heck if we have a bad block, we do not erase bad blocks !
-		 */
-		if (nand_block_checkbad(mtd, ((loff_t) page) <<
-					chip->page_shift, 0, allowbbt)) {
-			printk(KERN_WARNING "nand_erase: attempt to erase a "
-			       "bad block at page 0x%08x\n", page);
-			instr->state = MTD_ERASE_FAILED;
-			goto erase_exit;
-		}
-
-		/*
-		 * Invalidate the page cache, if we erase the block which
-		 * contains the current cached page
-		 */
-		if (page <= chip->pagebuf && chip->pagebuf <
-		    (page + pages_per_block))
-			chip->pagebuf = -1;
-
-		chip->erase_cmd(mtd, page & chip->pagemask);
-
-		status = chip->waitfunc(mtd, chip);
-
-		/*
-		 * See if operation failed and additional status checks are
-		 * available
-		 */
-		if ((status & NAND_STATUS_FAIL) && (chip->errstat))
-			status = chip->errstat(mtd, chip, FL_ERASING,
-					       status, page);
-
-		/* See if block erase succeeded */
-		if (status & NAND_STATUS_FAIL) {
-			MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase: "
-			      "Failed erase, page 0x%08x\n", page);
-			instr->state = MTD_ERASE_FAILED;
-			instr->fail_addr = (page << chip->page_shift);
-			goto erase_exit;
-		}
-
-		/*
-		 * If BBT requires refresh, set the BBT rewrite flag to the
-		 * page being erased
-		 */
-		if (bbt_masked_page != 0xffffffff &&
-		    (page & BBT_PAGE_MASK) == bbt_masked_page)
-			    rewrite_bbt[chipnr] = (page << chip->page_shift);
-
-		/* Increment page address and decrement length */
-		len -= (1 << chip->phys_erase_shift);
-		page += pages_per_block;
-
-		/* Check, if we cross a chip boundary */
-		if (len && !(page & chip->pagemask)) {
-			chipnr++;
-			chip->select_chip(mtd, -1);
-			chip->select_chip(mtd, chipnr);
-
-			/*
-			 * If BBT requires refresh and BBT-PERCHIP, set the BBT
-			 * page mask to see if this BBT should be rewritten
-			 */
-			if (bbt_masked_page != 0xffffffff &&
-			    (chip->bbt_td->options & NAND_BBT_PERCHIP))
-				bbt_masked_page = chip->bbt_td->pages[chipnr] &
-					BBT_PAGE_MASK;
-		}
-	}
-	instr->state = MTD_ERASE_DONE;
-
- erase_exit:
-
-	ret = instr->state == MTD_ERASE_DONE ? 0 : -EIO;
-
-	/* Deselect and wake up anyone waiting on the device */
-	nand_release_device(mtd);
-
-	/* Do call back function */
-	if (!ret)
-		mtd_erase_callback(instr);
-
-	/*
-	 * If BBT requires refresh and erase was successful, rewrite any
-	 * selected bad block tables
-	 */
-	if (bbt_masked_page == 0xffffffff || ret)
-		return ret;
-
-	for (chipnr = 0; chipnr < chip->numchips; chipnr++) {
-		if (!rewrite_bbt[chipnr])
-			continue;
-		/* update the BBT for chip */
-		MTD_DEBUG(MTD_DEBUG_LEVEL0, "nand_erase_nand: nand_update_bbt "
-		      "(%d:0x%0x 0x%0x)\n", chipnr, rewrite_bbt[chipnr],
-		      chip->bbt_td->pages[chipnr]);
-		nand_update_bbt(mtd, rewrite_bbt[chipnr]);
-	}
-
-	/* Return more or less happy */
-	return ret;
-}
-
-/**
- * nand_sync - [MTD Interface] sync
- * @mtd:	MTD device structure
- *
- * Sync is actually a wait for chip ready function
- */
-static void nand_sync(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "nand_sync: called\n");
-
-	/* Grab the lock and see if the device is available */
-	nand_get_device(chip, mtd, FL_SYNCING);
-	/* Release it and go back */
-	nand_release_device(mtd);
-}
-
-/**
- * nand_block_isbad - [MTD Interface] Check if block at offset is bad
- * @mtd:	MTD device structure
- * @offs:	offset relative to mtd start
- */
-static int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
-{
-	/* Check for invalid offset */
-	if (offs > mtd->size)
-		return -EINVAL;
-
-	return nand_block_checkbad(mtd, offs, 1, 0);
-}
-
-/**
- * nand_block_markbad - [MTD Interface] Mark block at the given offset as bad
- * @mtd:	MTD device structure
- * @ofs:	offset relative to mtd start
- */
-static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
-{
-	struct nand_chip *chip = mtd->priv;
-	int ret;
-
-	if ((ret = nand_block_isbad(mtd, ofs))) {
-		/* If it was bad already, return success and do nothing. */
-		if (ret > 0)
-			return 0;
-		return ret;
-	}
-
-	return chip->block_markbad(mtd, ofs);
-}
-
-/**
- * nand_suspend - [MTD Interface] Suspend the NAND flash
- * @mtd:	MTD device structure
- */
-static int nand_suspend(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	return nand_get_device(chip, mtd, FL_PM_SUSPENDED);
-}
-
-/**
- * nand_resume - [MTD Interface] Resume the NAND flash
- * @mtd:	MTD device structure
- */
-static void nand_resume(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	if (chip->state == FL_PM_SUSPENDED)
-		nand_release_device(mtd);
-	else
-		printk(KERN_ERR "nand_resume() called for a chip which is not "
-		       "in suspended state\n");
-}
-
-/*
- * Set default functions
- */
-static void nand_set_defaults(struct nand_chip *chip, int busw)
-{
-	/* check for proper chip_delay setup, set 20us if not */
-	if (!chip->chip_delay)
-		chip->chip_delay = 20;
-
-	/* check, if a user supplied command function given */
-	if (chip->cmdfunc == NULL)
-		chip->cmdfunc = nand_command;
-
-	/* check, if a user supplied wait function given */
-	if (chip->waitfunc == NULL)
-		chip->waitfunc = nand_wait;
-
-	if (!chip->select_chip)
-		chip->select_chip = nand_select_chip;
-	if (!chip->read_byte)
-		chip->read_byte = busw ? nand_read_byte16 : nand_read_byte;
-	if (!chip->read_word)
-		chip->read_word = nand_read_word;
-	if (!chip->block_bad)
-		chip->block_bad = nand_block_bad;
-	if (!chip->block_markbad)
-		chip->block_markbad = nand_default_block_markbad;
-	if (!chip->write_buf)
-		chip->write_buf = busw ? nand_write_buf16 : nand_write_buf;
-	if (!chip->read_buf)
-		chip->read_buf = busw ? nand_read_buf16 : nand_read_buf;
-	if (!chip->verify_buf)
-		chip->verify_buf = busw ? nand_verify_buf16 : nand_verify_buf;
-	if (!chip->scan_bbt)
-		chip->scan_bbt = nand_default_bbt;
-
-	if (!chip->controller) {
-		chip->controller = &chip->hwcontrol;
-	}
-
-}
-
-/*
- * Get the flash and manufacturer id and lookup if the type is supported
- */
-static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
-						  struct nand_chip *chip,
-						  int busw, int *maf_id)
-{
-	struct nand_flash_dev *type = NULL;
-	int i, dev_id, maf_idx;
-	int tmp_id, tmp_manf;
-
-	/* Select the device */
-	chip->select_chip(mtd, 0);
-
-	/* Send the command for reading device ID */
-	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
-
-	/* Read manufacturer and device IDs */
-	*maf_id = chip->read_byte(mtd);
-	dev_id = chip->read_byte(mtd);
-
-	/* Try again to make sure, as some systems the bus-hold or other
-	 * interface concerns can cause random data which looks like a
-	 * possibly credible NAND flash to appear. If the two results do
-	 * not match, ignore the device completely.
-	 */
-
-	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
-
-	/* Read manufacturer and device IDs */
-
-	tmp_manf = chip->read_byte(mtd);
-	tmp_id = chip->read_byte(mtd);
-
-	if (tmp_manf != *maf_id || tmp_id != dev_id) {
-		printk(KERN_INFO "%s: second ID read did not match "
-		       "%02x,%02x against %02x,%02x\n", __func__,
-		       *maf_id, dev_id, tmp_manf, tmp_id);
-		return ERR_PTR(-ENODEV);
-	}
-
-	/* Lookup the flash id */
-	for (i = 0; nand_flash_ids[i].name != NULL; i++) {
-		if (dev_id == nand_flash_ids[i].id) {
-			type =  &nand_flash_ids[i];
-			break;
-		}
-	}
-
-	if (!type)
-		return ERR_PTR(-ENODEV);
-
-	if (!mtd->name)
-		mtd->name = type->name;
-
-	chip->chipsize = type->chipsize << 20;
-
-	/* Newer devices have all the information in additional id bytes */
-	if (!type->pagesize) {
-		int extid;
-		/* The 3rd id byte holds MLC / multichip data */
-		chip->cellinfo = chip->read_byte(mtd);
-		/* The 4th id byte is the important one */
-		extid = chip->read_byte(mtd);
-		/* Calc pagesize */
-		mtd->writesize = 1024 << (extid & 0x3);
-		extid >>= 2;
-		/* Calc oobsize */
-		mtd->oobsize = (8 << (extid & 0x01)) * (mtd->writesize >> 9);
-		extid >>= 2;
-		/* Calc blocksize. Blocksize is multiples of 64KiB */
-		mtd->erasesize = (64 * 1024) << (extid & 0x03);
-		extid >>= 2;
-		/* Get buswidth information */
-		busw = (extid & 0x01) ? NAND_BUSWIDTH_16 : 0;
-
-	} else {
-		/*
-		 * Old devices have chip data hardcoded in the device id table
-		 */
-		mtd->erasesize = type->erasesize;
-		mtd->writesize = type->pagesize;
-		mtd->oobsize = mtd->writesize / 32;
-		busw = type->options & NAND_BUSWIDTH_16;
-	}
-
-	/* Try to identify manufacturer */
-	for (maf_idx = 0; nand_manuf_ids[maf_idx].id != 0x0; maf_idx++) {
-		if (nand_manuf_ids[maf_idx].id == *maf_id)
-			break;
-	}
-
-	/*
-	 * Check, if buswidth is correct. Hardware drivers should set
-	 * chip correct !
-	 */
-	if (busw != (chip->options & NAND_BUSWIDTH_16)) {
-		printk(KERN_INFO "NAND device: Manufacturer ID:"
-		       " 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id,
-		       dev_id, nand_manuf_ids[maf_idx].name, mtd->name);
-		printk(KERN_WARNING "NAND bus width %d instead %d bit\n",
-		       (chip->options & NAND_BUSWIDTH_16) ? 16 : 8,
-		       busw ? 16 : 8);
-		return ERR_PTR(-EINVAL);
-	}
-
-	/* Calculate the address shift from the page size */
-	chip->page_shift = ffs(mtd->writesize) - 1;
-	/* Convert chipsize to number of pages per chip -1. */
-	chip->pagemask = (chip->chipsize >> chip->page_shift) - 1;
-
-	chip->bbt_erase_shift = chip->phys_erase_shift =
-		ffs(mtd->erasesize) - 1;
-	chip->chip_shift = ffs(chip->chipsize) - 1;
-
-	/* Set the bad block position */
-	chip->badblockpos = mtd->writesize > 512 ?
-		NAND_LARGE_BADBLOCK_POS : NAND_SMALL_BADBLOCK_POS;
-
-	/* Get chip options, preserve non chip based options */
-	chip->options &= ~NAND_CHIPOPTIONS_MSK;
-	chip->options |= type->options & NAND_CHIPOPTIONS_MSK;
-
-	/*
-	 * Set chip as a default. Board drivers can override it, if necessary
-	 */
-	chip->options |= NAND_NO_AUTOINCR;
-
-	/* Check if chip is a not a samsung device. Do not clear the
-	 * options for chips which are not having an extended id.
-	 */
-	if (*maf_id != NAND_MFR_SAMSUNG && !type->pagesize)
-		chip->options &= ~NAND_SAMSUNG_LP_OPTIONS;
-
-	/* Check for AND chips with 4 page planes */
-	if (chip->options & NAND_4PAGE_ARRAY)
-		chip->erase_cmd = multi_erase_cmd;
-	else
-		chip->erase_cmd = single_erase_cmd;
-
-	/* Do not replace user supplied command function ! */
-	if (mtd->writesize > 512 && chip->cmdfunc == nand_command)
-		chip->cmdfunc = nand_command_lp;
-
-	printk(KERN_INFO "NAND device: Manufacturer ID:"
-	       " 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id, dev_id,
-	       nand_manuf_ids[maf_idx].name, type->name);
-
-	return type;
-}
-
-/**
- * nand_scan_ident - [NAND Interface] Scan for the NAND device
- * @mtd:	     MTD device structure
- * @maxchips:	     Number of chips to scan for
- *
- * This is the first phase of the normal nand_scan() function. It
- * reads the flash ID and sets up MTD fields accordingly.
- *
- * The mtd->owner field must be set to the module of the caller.
- */
-int nand_scan_ident(struct mtd_info *mtd, int maxchips)
-{
-	int i, busw, nand_maf_id;
-	struct nand_chip *chip = mtd->priv;
-	struct nand_flash_dev *type;
-
-	/* Get buswidth to select the correct functions */
-	busw = chip->options & NAND_BUSWIDTH_16;
-	/* Set the default functions */
-	nand_set_defaults(chip, busw);
-
-	/* Read the flash type */
-	type = nand_get_flash_type(mtd, chip, busw, &nand_maf_id);
-
-	if (IS_ERR(type)) {
-		printk(KERN_WARNING "No NAND device found!!!\n");
-		chip->select_chip(mtd, -1);
-		return PTR_ERR(type);
-	}
-
-	/* Check for a chip array */
-	for (i = 1; i < maxchips; i++) {
-		chip->select_chip(mtd, i);
-		/* Send the command for reading device ID */
-		chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
-		/* Read manufacturer and device IDs */
-		if (nand_maf_id != chip->read_byte(mtd) ||
-		    type->id != chip->read_byte(mtd))
-			break;
-	}
-	if (i > 1)
-		printk(KERN_INFO "%d NAND chips detected\n", i);
-
-	/* Store the number of chips and calc total size for mtd */
-	chip->numchips = i;
-	mtd->size = i * chip->chipsize;
-
-	return 0;
-}
-
-
-/**
- * nand_scan_tail - [NAND Interface] Scan for the NAND device
- * @mtd:	    MTD device structure
- * @maxchips:	    Number of chips to scan for
- *
- * This is the second phase of the normal nand_scan() function. It
- * fills out all the uninitialized function pointers with the defaults
- * and scans for a bad block table if appropriate.
- */
-int nand_scan_tail(struct mtd_info *mtd)
-{
-	int i;
-	struct nand_chip *chip = mtd->priv;
-
-	if (!(chip->options & NAND_OWN_BUFFERS))
-		chip->buffers = kmalloc(sizeof(*chip->buffers), GFP_KERNEL);
-	if (!chip->buffers)
-		return -ENOMEM;
-
-	/* Set the internal oob buffer location, just after the page data */
-	chip->oob_poi = chip->buffers->databuf + mtd->writesize;
-
-	/*
-	 * If no default placement scheme is given, select an appropriate one
-	 */
-	if (!chip->ecc.layout) {
-		switch (mtd->oobsize) {
-		case 8:
-			chip->ecc.layout = &nand_oob_8;
-			break;
-		case 16:
-			chip->ecc.layout = &nand_oob_16;
-			break;
-		case 64:
-			chip->ecc.layout = &nand_oob_64;
-			break;
-		default:
-			printk(KERN_WARNING "No oob scheme defined for "
-			       "oobsize %d\n", mtd->oobsize);
-			BUG();
-		}
-	}
-
-	if (!chip->write_page)
-		chip->write_page = nand_write_page;
-
-	/*
-	 * check ECC mode, default to software if 3byte/512byte hardware ECC is
-	 * selected and we have 256 byte pagesize fallback to software ECC
-	 */
-	if (!chip->ecc.read_page_raw)
-		chip->ecc.read_page_raw = nand_read_page_raw;
-	if (!chip->ecc.write_page_raw)
-		chip->ecc.write_page_raw = nand_write_page_raw;
-
-	switch (chip->ecc.mode) {
-	case NAND_ECC_HW:
-		/* Use standard hwecc read page function ? */
-		if (!chip->ecc.read_page)
-			chip->ecc.read_page = nand_read_page_hwecc;
-		if (!chip->ecc.write_page)
-			chip->ecc.write_page = nand_write_page_hwecc;
-		if (!chip->ecc.read_oob)
-			chip->ecc.read_oob = nand_read_oob_std;
-		if (!chip->ecc.write_oob)
-			chip->ecc.write_oob = nand_write_oob_std;
-
-	case NAND_ECC_HW_SYNDROME:
-		if ((!chip->ecc.calculate || !chip->ecc.correct ||
-		     !chip->ecc.hwctl) &&
-		    (!chip->ecc.read_page ||
-		     chip->ecc.read_page == nand_read_page_hwecc ||
-		     !chip->ecc.write_page ||
-		     chip->ecc.write_page == nand_write_page_hwecc)) {
-			printk(KERN_WARNING "No ECC functions supplied, "
-			       "Hardware ECC not possible\n");
-			BUG();
-		}
-		/* Use standard syndrome read/write page function ? */
-		if (!chip->ecc.read_page)
-			chip->ecc.read_page = nand_read_page_syndrome;
-		if (!chip->ecc.write_page)
-			chip->ecc.write_page = nand_write_page_syndrome;
-		if (!chip->ecc.read_oob)
-			chip->ecc.read_oob = nand_read_oob_syndrome;
-		if (!chip->ecc.write_oob)
-			chip->ecc.write_oob = nand_write_oob_syndrome;
-
-		if (mtd->writesize >= chip->ecc.size)
-			break;
-		printk(KERN_WARNING "%d byte HW ECC not possible on "
-		       "%d byte page size, fallback to SW ECC\n",
-		       chip->ecc.size, mtd->writesize);
-		chip->ecc.mode = NAND_ECC_SOFT;
-
-	case NAND_ECC_SOFT:
-		chip->ecc.calculate = nand_calculate_ecc;
-		chip->ecc.correct = nand_correct_data;
-		chip->ecc.read_page = nand_read_page_swecc;
-		chip->ecc.write_page = nand_write_page_swecc;
-		chip->ecc.read_oob = nand_read_oob_std;
-		chip->ecc.write_oob = nand_write_oob_std;
-		chip->ecc.size = 256;
-		chip->ecc.bytes = 3;
-		break;
-
-	case NAND_ECC_NONE:
-		printk(KERN_WARNING "NAND_ECC_NONE selected by board driver. "
-		       "This is not recommended !!\n");
-		chip->ecc.read_page = nand_read_page_raw;
-		chip->ecc.write_page = nand_write_page_raw;
-		chip->ecc.read_oob = nand_read_oob_std;
-		chip->ecc.write_oob = nand_write_oob_std;
-		chip->ecc.size = mtd->writesize;
-		chip->ecc.bytes = 0;
-		break;
-
-	default:
-		printk(KERN_WARNING "Invalid NAND_ECC_MODE %d\n",
-		       chip->ecc.mode);
-		BUG();
-	}
-
-	/*
-	 * The number of bytes available for a client to place data into
-	 * the out of band area
-	 */
-	chip->ecc.layout->oobavail = 0;
-	for (i = 0; chip->ecc.layout->oobfree[i].length; i++)
-		chip->ecc.layout->oobavail +=
-			chip->ecc.layout->oobfree[i].length;
-	mtd->oobavail = chip->ecc.layout->oobavail;
-
-	/*
-	 * Set the number of read / write steps for one page depending on ECC
-	 * mode
-	 */
-	chip->ecc.steps = mtd->writesize / chip->ecc.size;
-	if(chip->ecc.steps * chip->ecc.size != mtd->writesize) {
-		printk(KERN_WARNING "Invalid ecc parameters\n");
-		BUG();
-	}
-	chip->ecc.total = chip->ecc.steps * chip->ecc.bytes;
-
-	/*
-	 * Allow subpage writes up to ecc.steps. Not possible for MLC
-	 * FLASH.
-	 */
-	if (!(chip->options & NAND_NO_SUBPAGE_WRITE) &&
-	    !(chip->cellinfo & NAND_CI_CELLTYPE_MSK)) {
-		switch(chip->ecc.steps) {
-		case 2:
-			mtd->subpage_sft = 1;
-			break;
-		case 4:
-		case 8:
-			mtd->subpage_sft = 2;
-			break;
-		}
-	}
-	chip->subpagesize = mtd->writesize >> mtd->subpage_sft;
-
-	/* Initialize state */
-	chip->state = FL_READY;
-
-	/* De-select the device */
-	chip->select_chip(mtd, -1);
-
-	/* Invalidate the pagebuffer reference */
-	chip->pagebuf = -1;
-
-	/* Fill in remaining MTD driver data */
-	mtd->type = MTD_NANDFLASH;
-	mtd->flags = MTD_CAP_NANDFLASH;
-	mtd->erase = nand_erase;
-	mtd->read = nand_read;
-	mtd->write = nand_write;
-	mtd->read_oob = nand_read_oob;
-	mtd->write_oob = nand_write_oob;
-	mtd->sync = nand_sync;
-	mtd->lock = NULL;
-	mtd->unlock = NULL;
-	mtd->suspend = nand_suspend;
-	mtd->resume = nand_resume;
-	mtd->block_isbad = nand_block_isbad;
-	mtd->block_markbad = nand_block_markbad;
-
-	/* propagate ecc.layout to mtd_info */
-	mtd->ecclayout = chip->ecc.layout;
-
-	/* Check, if we should skip the bad block table scan */
-	if (chip->options & NAND_SKIP_BBTSCAN)
-		return 0;
-
-	/* Build bad block table */
-	return chip->scan_bbt(mtd);
-}
-
-/**
- * nand_scan - [NAND Interface] Scan for the NAND device
- * @mtd:	MTD device structure
- * @maxchips:	Number of chips to scan for
- *
- * This fills out all the uninitialized function pointers
- * with the defaults.
- * The flash ID is read and the mtd/chip structures are
- * filled with the appropriate values.
- * The mtd->owner field must be set to the module of the caller
- *
- */
-int nand_scan(struct mtd_info *mtd, int maxchips)
-{
-	int ret;
-
-	ret = nand_scan_ident(mtd, maxchips);
-	if (!ret)
-		ret = nand_scan_tail(mtd);
-	return ret;
-}
-
-/**
- * nand_release - [NAND Interface] Free resources held by the NAND device
- * @mtd:	MTD device structure
-*/
-void nand_release(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	/* Deregister the device */
-	del_mtd_device(mtd);
-
-	/* Free bad block table memory */
-	kfree(chip->bbt);
-	if (!(chip->options & NAND_OWN_BUFFERS))
-		kfree(chip->buffers);
-}
-
-EXPORT_SYMBOL(nand_scan);
-EXPORT_SYMBOL(nand_scan_ident);
-EXPORT_SYMBOL(nand_scan_tail);
-EXPORT_SYMBOL(nand_release);
-
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
diff --git a/drivers/nand/nand_bbt.c b/drivers/nand/nand_bbt.c
deleted file mode 100644
index 4a6bf39..0000000
--- a/drivers/nand/nand_bbt.c
+++ /dev/null
@@ -1,1224 +0,0 @@
-/*
- *  drivers/mtd/nand_bbt.c
- *
- *  Overview:
- *   Bad block table support for the NAND driver
- *
- *  Copyright (C) 2004 Thomas Gleixner (tglx@linutronix.de)
- *
- * $Id: nand_bbt.c,v 1.36 2005/11/07 11:14:30 gleixner Exp $
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * Description:
- *
- * When nand_scan_bbt is called, then it tries to find the bad block table
- * depending on the options in the bbt descriptor(s). If a bbt is found
- * then the contents are read and the memory based bbt is created. If a
- * mirrored bbt is selected then the mirror is searched too and the
- * versions are compared. If the mirror has a greater version number
- * than the mirror bbt is used to build the memory based bbt.
- * If the tables are not versioned, then we "or" the bad block information.
- * If one of the bbt's is out of date or does not exist it is (re)created.
- * If no bbt exists at all then the device is scanned for factory marked
- * good / bad blocks and the bad block tables are created.
- *
- * For manufacturer created bbts like the one found on M-SYS DOC devices
- * the bbt is searched and read but never created
- *
- * The autogenerated bad block table is located in the last good blocks
- * of the device. The table is mirrored, so it can be updated eventually.
- * The table is marked in the oob area with an ident pattern and a version
- * number which indicates which of both tables is more up to date.
- *
- * The table uses 2 bits per block
- * 11b: 	block is good
- * 00b: 	block is factory marked bad
- * 01b, 10b: 	block is marked bad due to wear
- *
- * The memory bad block table uses the following scheme:
- * 00b:		block is good
- * 01b:		block is marked bad due to wear
- * 10b:		block is reserved (to protect the bbt area)
- * 11b:		block is factory marked bad
- *
- * Multichip devices like DOC store the bad block info per floor.
- *
- * Following assumptions are made:
- * - bbts start at a page boundary, if autolocated on a block boundary
- * - the space necessary for a bbt in FLASH does not exceed a block boundary
- *
- */
-#include <common.h>
-#include <linux/types.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/nand_ecc.h>
-#include <linux/bitops.h>
-#include <clock.h>
-#include <errno.h>
-#include <malloc.h>
-
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
-/**
- * check_pattern - [GENERIC] check if a pattern is in the buffer
- * @buf:	the buffer to search
- * @len:	the length of buffer to search
- * @paglen:	the pagelength
- * @td:		search pattern descriptor
- *
- * Check for a pattern at the given place. Used to search bad block
- * tables and good / bad block identifiers.
- * If the SCAN_EMPTY option is set then check, if all bytes except the
- * pattern area contain 0xff
- *
-*/
-static int check_pattern(uint8_t *buf, int len, int paglen, struct nand_bbt_descr *td)
-{
-	int i, end = 0;
-	uint8_t *p = buf;
-
-	end = paglen + td->offs;
-	if (td->options & NAND_BBT_SCANEMPTY) {
-		for (i = 0; i < end; i++) {
-			if (p[i] != 0xff)
-				return -1;
-		}
-	}
-	p += end;
-
-	/* Compare the pattern */
-	for (i = 0; i < td->len; i++) {
-		if (p[i] != td->pattern[i])
-			return -1;
-	}
-
-	if (td->options & NAND_BBT_SCANEMPTY) {
-		p += td->len;
-		end += td->len;
-		for (i = end; i < len; i++) {
-			if (*p++ != 0xff)
-				return -1;
-		}
-	}
-	return 0;
-}
-
-/**
- * check_short_pattern - [GENERIC] check if a pattern is in the buffer
- * @buf:	the buffer to search
- * @td:		search pattern descriptor
- *
- * Check for a pattern at the given place. Used to search bad block
- * tables and good / bad block identifiers. Same as check_pattern, but
- * no optional empty check
- *
-*/
-static int check_short_pattern(uint8_t *buf, struct nand_bbt_descr *td)
-{
-	int i;
-	uint8_t *p = buf;
-
-	/* Compare the pattern */
-	for (i = 0; i < td->len; i++) {
-		if (p[td->offs + i] != td->pattern[i])
-			return -1;
-	}
-	return 0;
-}
-
-/**
- * read_bbt - [GENERIC] Read the bad block table starting from page
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @page:	the starting page
- * @num:	the number of bbt descriptors to read
- * @bits:	number of bits per block
- * @offs:	offset in the memory table
- * @reserved_block_code:	Pattern to identify reserved blocks
- *
- * Read the bad block table starting from page.
- *
- */
-static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
-		    int bits, int offs, int reserved_block_code)
-{
-	int res, i, j, act = 0;
-	struct nand_chip *this = mtd->priv;
-	size_t retlen, len, totlen;
-	loff_t from;
-	uint8_t msk = (uint8_t) ((1 << bits) - 1);
-
-	totlen = (num * bits) >> 3;
-	from = ((loff_t) page) << this->page_shift;
-
-	while (totlen) {
-		len = min(totlen, (size_t) (1 << this->bbt_erase_shift));
-		res = mtd->read(mtd, from, len, &retlen, buf);
-		if (res < 0) {
-			if (retlen != len) {
-				printk(KERN_INFO "nand_bbt: Error reading bad block table\n");
-				return res;
-			}
-			printk(KERN_WARNING "nand_bbt: ECC error while reading bad block table\n");
-		}
-
-		/* Analyse data */
-		for (i = 0; i < len; i++) {
-			uint8_t dat = buf[i];
-			for (j = 0; j < 8; j += bits, act += 2) {
-				uint8_t tmp = (dat >> j) & msk;
-				if (tmp == msk)
-					continue;
-				if (reserved_block_code && (tmp == reserved_block_code)) {
-					printk(KERN_DEBUG "nand_read_bbt: Reserved block at 0x%08x\n",
-					       ((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
-					this->bbt[offs + (act >> 3)] |= 0x2 << (act & 0x06);
-					mtd->ecc_stats.bbtblocks++;
-					continue;
-				}
-				/* Leave it for now, if its matured we can move this
-				 * message to MTD_DEBUG_LEVEL0 */
-				printk(KERN_DEBUG "nand_read_bbt: Bad block at 0x%08x\n",
-				       ((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
-				/* Factory marked bad or worn out ? */
-				if (tmp == 0)
-					this->bbt[offs + (act >> 3)] |= 0x3 << (act & 0x06);
-				else
-					this->bbt[offs + (act >> 3)] |= 0x1 << (act & 0x06);
-				mtd->ecc_stats.badblocks++;
-			}
-		}
-		totlen -= len;
-		from += len;
-	}
-	return 0;
-}
-
-/**
- * read_abs_bbt - [GENERIC] Read the bad block table starting at a given page
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @td:		descriptor for the bad block table
- * @chip:	read the table for a specific chip, -1 read all chips.
- *		Applies only if NAND_BBT_PERCHIP option is set
- *
- * Read the bad block table for all chips starting at a given page
- * We assume that the bbt bits are in consecutive order.
-*/
-static int read_abs_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *td, int chip)
-{
-	struct nand_chip *this = mtd->priv;
-	int res = 0, i;
-	int bits;
-
-	bits = td->options & NAND_BBT_NRBITS_MSK;
-	if (td->options & NAND_BBT_PERCHIP) {
-		int offs = 0;
-		for (i = 0; i < this->numchips; i++) {
-			if (chip == -1 || chip == i)
-				res = read_bbt (mtd, buf, td->pages[i], this->chipsize >> this->bbt_erase_shift, bits, offs, td->reserved_block_code);
-			if (res)
-				return res;
-			offs += this->chipsize >> (this->bbt_erase_shift + 2);
-		}
-	} else {
-		res = read_bbt (mtd, buf, td->pages[0], mtd->size >> this->bbt_erase_shift, bits, 0, td->reserved_block_code);
-		if (res)
-			return res;
-	}
-	return 0;
-}
-
-/*
- * Scan read raw data from flash
- */
-static int scan_read_raw(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
-			 size_t len)
-{
-	struct mtd_oob_ops ops;
-
-	ops.mode = MTD_OOB_RAW;
-	ops.ooboffs = 0;
-	ops.ooblen = mtd->oobsize;
-	ops.oobbuf = buf;
-	ops.datbuf = buf;
-	ops.len = len;
-
-	return mtd->read_oob(mtd, offs, &ops);
-}
-
-/*
- * Scan write data with oob to flash
- */
-static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
-			  uint8_t *buf, uint8_t *oob)
-{
-	struct mtd_oob_ops ops;
-
-	ops.mode = MTD_OOB_PLACE;
-	ops.ooboffs = 0;
-	ops.ooblen = mtd->oobsize;
-	ops.datbuf = buf;
-	ops.oobbuf = oob;
-	ops.len = len;
-
-	return mtd->write_oob(mtd, offs, &ops);
-}
-
-/**
- * read_abs_bbts - [GENERIC] Read the bad block table(s) for all chips starting at a given page
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @td:		descriptor for the bad block table
- * @md:		descriptor for the bad block table mirror
- *
- * Read the bad block table(s) for all chips starting at a given page
- * We assume that the bbt bits are in consecutive order.
- *
-*/
-static int read_abs_bbts(struct mtd_info *mtd, uint8_t *buf,
-			 struct nand_bbt_descr *td, struct nand_bbt_descr *md)
-{
-	struct nand_chip *this = mtd->priv;
-
-	/* Read the primary version, if available */
-	if (td->options & NAND_BBT_VERSION) {
-		scan_read_raw(mtd, buf, td->pages[0] << this->page_shift,
-			      mtd->writesize);
-		td->version[0] = buf[mtd->writesize + td->veroffs];
-		printk(KERN_DEBUG "Bad block table at page %d, version 0x%02X\n",
-		       td->pages[0], td->version[0]);
-	}
-
-	/* Read the mirror version, if available */
-	if (md && (md->options & NAND_BBT_VERSION)) {
-		scan_read_raw(mtd, buf, md->pages[0] << this->page_shift,
-			      mtd->writesize);
-		md->version[0] = buf[mtd->writesize + md->veroffs];
-		printk(KERN_DEBUG "Bad block table at page %d, version 0x%02X\n",
-		       md->pages[0], md->version[0]);
-	}
-	return 1;
-}
-
-/*
- * Scan a given block full
- */
-static int scan_block_full(struct mtd_info *mtd, struct nand_bbt_descr *bd,
-			   loff_t offs, uint8_t *buf, size_t readlen,
-			   int scanlen, int len)
-{
-	int ret, j;
-
-	ret = scan_read_raw(mtd, buf, offs, readlen);
-	if (ret)
-		return ret;
-
-	for (j = 0; j < len; j++, buf += scanlen) {
-		if (check_pattern(buf, scanlen, mtd->writesize, bd))
-			return 1;
-	}
-	return 0;
-}
-
-/*
- * Scan a given block partially
- */
-static int scan_block_fast(struct mtd_info *mtd, struct nand_bbt_descr *bd,
-			   loff_t offs, uint8_t *buf, int len)
-{
-	struct mtd_oob_ops ops;
-	int j, ret;
-
-	ops.ooblen = mtd->oobsize;
-	ops.oobbuf = buf;
-	ops.ooboffs = 0;
-	ops.datbuf = NULL;
-	ops.mode = MTD_OOB_PLACE;
-
-	for (j = 0; j < len; j++) {
-		/*
-		 * Read the full oob until read_oob is fixed to
-		 * handle single byte reads for 16 bit
-		 * buswidth
-		 */
-		ret = mtd->read_oob(mtd, offs, &ops);
-		if (ret)
-			return ret;
-
-		if (check_short_pattern(buf, bd))
-			return 1;
-
-		offs += mtd->writesize;
-	}
-	return 0;
-}
-
-/**
- * create_bbt - [GENERIC] Create a bad block table by scanning the device
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @bd:		descriptor for the good/bad block search pattern
- * @chip:	create the table for a specific chip, -1 read all chips.
- *		Applies only if NAND_BBT_PERCHIP option is set
- *
- * Create a bad block table by scanning the device
- * for the given good/bad block identify pattern
- */
-static int create_bbt(struct mtd_info *mtd, uint8_t *buf,
-	struct nand_bbt_descr *bd, int chip)
-{
-	struct nand_chip *this = mtd->priv;
-	int i, numblocks, len, scanlen;
-	int startblock;
-	loff_t from;
-	size_t readlen;
-
-	printk(KERN_INFO "Scanning device for bad blocks\n");
-
-	if (bd->options & NAND_BBT_SCANALLPAGES)
-		len = 1 << (this->bbt_erase_shift - this->page_shift);
-	else {
-		if (bd->options & NAND_BBT_SCAN2NDPAGE)
-			len = 2;
-		else
-			len = 1;
-	}
-
-	if (!(bd->options & NAND_BBT_SCANEMPTY)) {
-		/* We need only read few bytes from the OOB area */
-		scanlen = 0;
-		readlen = bd->len;
-	} else {
-		/* Full page content should be read */
-		scanlen = mtd->writesize + mtd->oobsize;
-		readlen = len * mtd->writesize;
-	}
-
-	if (chip == -1) {
-		/* Note that numblocks is 2 * (real numblocks) here, see i+=2
-		 * below as it makes shifting and masking less painful */
-		numblocks = mtd->size >> (this->bbt_erase_shift - 1);
-		startblock = 0;
-		from = 0;
-	} else {
-		if (chip >= this->numchips) {
-			printk(KERN_WARNING "create_bbt(): chipnr (%d) > available chips (%d)\n",
-			       chip + 1, this->numchips);
-			return -EINVAL;
-		}
-		numblocks = this->chipsize >> (this->bbt_erase_shift - 1);
-		startblock = chip * numblocks;
-		numblocks += startblock;
-		from = startblock << (this->bbt_erase_shift - 1);
-	}
-
-	for (i = startblock; i < numblocks;) {
-		int ret;
-
-		if (bd->options & NAND_BBT_SCANALLPAGES)
-			ret = scan_block_full(mtd, bd, from, buf, readlen,
-					      scanlen, len);
-		else
-			ret = scan_block_fast(mtd, bd, from, buf, len);
-
-		if (ret < 0)
-			return ret;
-
-		if (ret) {
-			this->bbt[i >> 3] |= 0x03 << (i & 0x6);
-			printk(KERN_WARNING "Bad eraseblock %d at 0x%08x\n",
-			       i >> 1, (unsigned int)from);
-			mtd->ecc_stats.badblocks++;
-		}
-
-		i += 2;
-		from += (1 << this->bbt_erase_shift);
-	}
-	return 0;
-}
-
-/**
- * search_bbt - [GENERIC] scan the device for a specific bad block table
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @td:		descriptor for the bad block table
- *
- * Read the bad block table by searching for a given ident pattern.
- * Search is preformed either from the beginning up or from the end of
- * the device downwards. The search starts always at the start of a
- * block.
- * If the option NAND_BBT_PERCHIP is given, each chip is searched
- * for a bbt, which contains the bad block information of this chip.
- * This is necessary to provide support for certain DOC devices.
- *
- * The bbt ident pattern resides in the oob area of the first page
- * in a block.
- */
-static int search_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *td)
-{
-	struct nand_chip *this = mtd->priv;
-	int i, chips;
-	int bits, startblock, block, dir;
-	int scanlen = mtd->writesize + mtd->oobsize;
-	int bbtblocks;
-	int blocktopage = this->bbt_erase_shift - this->page_shift;
-
-	/* Search direction top -> down ? */
-	if (td->options & NAND_BBT_LASTBLOCK) {
-		startblock = (mtd->size >> this->bbt_erase_shift) - 1;
-		dir = -1;
-	} else {
-		startblock = 0;
-		dir = 1;
-	}
-
-	/* Do we have a bbt per chip ? */
-	if (td->options & NAND_BBT_PERCHIP) {
-		chips = this->numchips;
-		bbtblocks = this->chipsize >> this->bbt_erase_shift;
-		startblock &= bbtblocks - 1;
-	} else {
-		chips = 1;
-		bbtblocks = mtd->size >> this->bbt_erase_shift;
-	}
-
-	/* Number of bits for each erase block in the bbt */
-	bits = td->options & NAND_BBT_NRBITS_MSK;
-
-	for (i = 0; i < chips; i++) {
-		/* Reset version information */
-		td->version[i] = 0;
-		td->pages[i] = -1;
-		/* Scan the maximum number of blocks */
-		for (block = 0; block < td->maxblocks; block++) {
-
-			int actblock = startblock + dir * block;
-			loff_t offs = actblock << this->bbt_erase_shift;
-
-			/* Read first page */
-			scan_read_raw(mtd, buf, offs, mtd->writesize);
-			if (!check_pattern(buf, scanlen, mtd->writesize, td)) {
-				td->pages[i] = actblock << blocktopage;
-				if (td->options & NAND_BBT_VERSION) {
-					td->version[i] = buf[mtd->writesize + td->veroffs];
-				}
-				break;
-			}
-		}
-		startblock += this->chipsize >> this->bbt_erase_shift;
-	}
-	/* Check, if we found a bbt for each requested chip */
-	for (i = 0; i < chips; i++) {
-		if (td->pages[i] == -1)
-			printk(KERN_WARNING "Bad block table not found for chip %d\n", i);
-		else
-			printk(KERN_DEBUG "Bad block table found at page %d, version 0x%02X\n", td->pages[i],
-			       td->version[i]);
-	}
-	return 0;
-}
-
-/**
- * search_read_bbts - [GENERIC] scan the device for bad block table(s)
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @td:		descriptor for the bad block table
- * @md:		descriptor for the bad block table mirror
- *
- * Search and read the bad block table(s)
-*/
-static int search_read_bbts(struct mtd_info *mtd, uint8_t * buf, struct nand_bbt_descr *td, struct nand_bbt_descr *md)
-{
-	/* Search the primary table */
-	search_bbt(mtd, buf, td);
-
-	/* Search the mirror table */
-	if (md)
-		search_bbt(mtd, buf, md);
-
-	/* Force result check */
-	return 1;
-}
-
-/**
- * write_bbt - [GENERIC] (Re)write the bad block table
- *
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @td:		descriptor for the bad block table
- * @md:		descriptor for the bad block table mirror
- * @chipsel:	selector for a specific chip, -1 for all
- *
- * (Re)write the bad block table
- *
-*/
-static int write_bbt(struct mtd_info *mtd, uint8_t *buf,
-		     struct nand_bbt_descr *td, struct nand_bbt_descr *md,
-		     int chipsel)
-{
-	struct nand_chip *this = mtd->priv;
-	struct erase_info einfo;
-	int i, j, res, chip = 0;
-	int bits, startblock, dir, page, offs, numblocks, sft, sftmsk;
-	int nrchips, bbtoffs, pageoffs, ooboffs;
-	uint8_t msk[4];
-	uint8_t rcode = td->reserved_block_code;
-	size_t retlen, len = 0;
-	loff_t to;
-	struct mtd_oob_ops ops;
-
-	ops.ooblen = mtd->oobsize;
-	ops.ooboffs = 0;
-	ops.datbuf = NULL;
-	ops.mode = MTD_OOB_PLACE;
-
-	if (!rcode)
-		rcode = 0xff;
-	/* Write bad block table per chip rather than per device ? */
-	if (td->options & NAND_BBT_PERCHIP) {
-		numblocks = (int)(this->chipsize >> this->bbt_erase_shift);
-		/* Full device write or specific chip ? */
-		if (chipsel == -1) {
-			nrchips = this->numchips;
-		} else {
-			nrchips = chipsel + 1;
-			chip = chipsel;
-		}
-	} else {
-		numblocks = (int)(mtd->size >> this->bbt_erase_shift);
-		nrchips = 1;
-	}
-
-	/* Loop through the chips */
-	for (; chip < nrchips; chip++) {
-
-		/* There was already a version of the table, reuse the page
-		 * This applies for absolute placement too, as we have the
-		 * page nr. in td->pages.
-		 */
-		if (td->pages[chip] != -1) {
-			page = td->pages[chip];
-			goto write;
-		}
-
-		/* Automatic placement of the bad block table */
-		/* Search direction top -> down ? */
-		if (td->options & NAND_BBT_LASTBLOCK) {
-			startblock = numblocks * (chip + 1) - 1;
-			dir = -1;
-		} else {
-			startblock = chip * numblocks;
-			dir = 1;
-		}
-
-		for (i = 0; i < td->maxblocks; i++) {
-			int block = startblock + dir * i;
-			/* Check, if the block is bad */
-			switch ((this->bbt[block >> 2] >>
-				 (2 * (block & 0x03))) & 0x03) {
-			case 0x01:
-			case 0x03:
-				continue;
-			}
-			page = block <<
-				(this->bbt_erase_shift - this->page_shift);
-			/* Check, if the block is used by the mirror table */
-			if (!md || md->pages[chip] != page)
-				goto write;
-		}
-		printk(KERN_ERR "No space left to write bad block table\n");
-		return -ENOSPC;
-	write:
-
-		/* Set up shift count and masks for the flash table */
-		bits = td->options & NAND_BBT_NRBITS_MSK;
-		msk[2] = ~rcode;
-		switch (bits) {
-		case 1: sft = 3; sftmsk = 0x07; msk[0] = 0x00; msk[1] = 0x01;
-			msk[3] = 0x01;
-			break;
-		case 2: sft = 2; sftmsk = 0x06; msk[0] = 0x00; msk[1] = 0x01;
-			msk[3] = 0x03;
-			break;
-		case 4: sft = 1; sftmsk = 0x04; msk[0] = 0x00; msk[1] = 0x0C;
-			msk[3] = 0x0f;
-			break;
-		case 8: sft = 0; sftmsk = 0x00; msk[0] = 0x00; msk[1] = 0x0F;
-			msk[3] = 0xff;
-			break;
-		default: return -EINVAL;
-		}
-
-		bbtoffs = chip * (numblocks >> 2);
-
-		to = ((loff_t) page) << this->page_shift;
-
-		/* Must we save the block contents ? */
-		if (td->options & NAND_BBT_SAVECONTENT) {
-			/* Make it block aligned */
-			to &= ~((loff_t) ((1 << this->bbt_erase_shift) - 1));
-			len = 1 << this->bbt_erase_shift;
-			res = mtd->read(mtd, to, len, &retlen, buf);
-			if (res < 0) {
-				if (retlen != len) {
-					printk(KERN_INFO "nand_bbt: Error "
-					       "reading block for writing "
-					       "the bad block table\n");
-					return res;
-				}
-				printk(KERN_WARNING "nand_bbt: ECC error "
-				       "while reading block for writing "
-				       "bad block table\n");
-			}
-			/* Read oob data */
-			ops.ooblen = (len >> this->page_shift) * mtd->oobsize;
-			ops.oobbuf = &buf[len];
-			res = mtd->read_oob(mtd, to + mtd->writesize, &ops);
-			if (res < 0 || ops.oobretlen != ops.ooblen)
-				goto outerr;
-
-			/* Calc the byte offset in the buffer */
-			pageoffs = page - (int)(to >> this->page_shift);
-			offs = pageoffs << this->page_shift;
-			/* Preset the bbt area with 0xff */
-			memset(&buf[offs], 0xff, (size_t) (numblocks >> sft));
-			ooboffs = len + (pageoffs * mtd->oobsize);
-
-		} else {
-			/* Calc length */
-			len = (size_t) (numblocks >> sft);
-			/* Make it page aligned ! */
-			len = (len + (mtd->writesize - 1)) &
-				~(mtd->writesize - 1);
-			/* Preset the buffer with 0xff */
-			memset(buf, 0xff, len +
-			       (len >> this->page_shift)* mtd->oobsize);
-			offs = 0;
-			ooboffs = len;
-			/* Pattern is located in oob area of first page */
-			memcpy(&buf[ooboffs + td->offs], td->pattern, td->len);
-		}
-
-		if (td->options & NAND_BBT_VERSION)
-			buf[ooboffs + td->veroffs] = td->version[chip];
-
-		/* walk through the memory table */
-		for (i = 0; i < numblocks;) {
-			uint8_t dat;
-			dat = this->bbt[bbtoffs + (i >> 2)];
-			for (j = 0; j < 4; j++, i++) {
-				int sftcnt = (i << (3 - sft)) & sftmsk;
-				/* Do not store the reserved bbt blocks ! */
-				buf[offs + (i >> sft)] &=
-					~(msk[dat & 0x03] << sftcnt);
-				dat >>= 2;
-			}
-		}
-
-		memset(&einfo, 0, sizeof(einfo));
-		einfo.mtd = mtd;
-		einfo.addr = (unsigned long)to;
-		einfo.len = 1 << this->bbt_erase_shift;
-		res = nand_erase_nand(mtd, &einfo, 1);
-		if (res < 0)
-			goto outerr;
-
-		res = scan_write_bbt(mtd, to, len, buf, &buf[len]);
-		if (res < 0)
-			goto outerr;
-
-		printk(KERN_DEBUG "Bad block table written to 0x%08x, version "
-		       "0x%02X\n", (unsigned int)to, td->version[chip]);
-
-		/* Mark it as used */
-		td->pages[chip] = page;
-	}
-	return 0;
-
- outerr:
-	printk(KERN_WARNING
-	       "nand_bbt: Error while writing bad block table %d\n", res);
-	return res;
-}
-
-/**
- * nand_memory_bbt - [GENERIC] create a memory based bad block table
- * @mtd:	MTD device structure
- * @bd:		descriptor for the good/bad block search pattern
- *
- * The function creates a memory based bbt by scanning the device
- * for manufacturer / software marked good / bad blocks
-*/
-static inline int nand_memory_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
-{
-	struct nand_chip *this = mtd->priv;
-
-	bd->options &= ~NAND_BBT_SCANEMPTY;
-	return create_bbt(mtd, this->buffers->databuf, bd, -1);
-}
-
-/**
- * check_create - [GENERIC] create and write bbt(s) if necessary
- * @mtd:	MTD device structure
- * @buf:	temporary buffer
- * @bd:		descriptor for the good/bad block search pattern
- *
- * The function checks the results of the previous call to read_bbt
- * and creates / updates the bbt(s) if necessary
- * Creation is necessary if no bbt was found for the chip/device
- * Update is necessary if one of the tables is missing or the
- * version nr. of one table is less than the other
-*/
-static int check_create(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *bd)
-{
-	int i, chips, writeops, chipsel, res;
-	struct nand_chip *this = mtd->priv;
-	struct nand_bbt_descr *td = this->bbt_td;
-	struct nand_bbt_descr *md = this->bbt_md;
-	struct nand_bbt_descr *rd, *rd2;
-
-	/* Do we have a bbt per chip ? */
-	if (td->options & NAND_BBT_PERCHIP)
-		chips = this->numchips;
-	else
-		chips = 1;
-
-	for (i = 0; i < chips; i++) {
-		writeops = 0;
-		rd = NULL;
-		rd2 = NULL;
-		/* Per chip or per device ? */
-		chipsel = (td->options & NAND_BBT_PERCHIP) ? i : -1;
-		/* Mirrored table avilable ? */
-		if (md) {
-			if (td->pages[i] == -1 && md->pages[i] == -1) {
-				writeops = 0x03;
-				goto create;
-			}
-
-			if (td->pages[i] == -1) {
-				rd = md;
-				td->version[i] = md->version[i];
-				writeops = 1;
-				goto writecheck;
-			}
-
-			if (md->pages[i] == -1) {
-				rd = td;
-				md->version[i] = td->version[i];
-				writeops = 2;
-				goto writecheck;
-			}
-
-			if (td->version[i] == md->version[i]) {
-				rd = td;
-				if (!(td->options & NAND_BBT_VERSION))
-					rd2 = md;
-				goto writecheck;
-			}
-
-			if (((int8_t) (td->version[i] - md->version[i])) > 0) {
-				rd = td;
-				md->version[i] = td->version[i];
-				writeops = 2;
-			} else {
-				rd = md;
-				td->version[i] = md->version[i];
-				writeops = 1;
-			}
-
-			goto writecheck;
-
-		} else {
-			if (td->pages[i] == -1) {
-				writeops = 0x01;
-				goto create;
-			}
-			rd = td;
-			goto writecheck;
-		}
-	create:
-		/* Create the bad block table by scanning the device ? */
-		if (!(td->options & NAND_BBT_CREATE))
-			continue;
-
-		/* Create the table in memory by scanning the chip(s) */
-		create_bbt(mtd, buf, bd, chipsel);
-
-		td->version[i] = 1;
-		if (md)
-			md->version[i] = 1;
-	writecheck:
-		/* read back first ? */
-		if (rd)
-			read_abs_bbt(mtd, buf, rd, chipsel);
-		/* If they weren't versioned, read both. */
-		if (rd2)
-			read_abs_bbt(mtd, buf, rd2, chipsel);
-
-		/* Write the bad block table to the device ? */
-		if ((writeops & 0x01) && (td->options & NAND_BBT_WRITE)) {
-			res = write_bbt(mtd, buf, td, md, chipsel);
-			if (res < 0)
-				return res;
-		}
-
-		/* Write the mirror bad block table to the device ? */
-		if ((writeops & 0x02) && md && (md->options & NAND_BBT_WRITE)) {
-			res = write_bbt(mtd, buf, md, td, chipsel);
-			if (res < 0)
-				return res;
-		}
-	}
-	return 0;
-}
-
-/**
- * mark_bbt_regions - [GENERIC] mark the bad block table regions
- * @mtd:	MTD device structure
- * @td:		bad block table descriptor
- *
- * The bad block table regions are marked as "bad" to prevent
- * accidental erasures / writes. The regions are identified by
- * the mark 0x02.
-*/
-static void mark_bbt_region(struct mtd_info *mtd, struct nand_bbt_descr *td)
-{
-	struct nand_chip *this = mtd->priv;
-	int i, j, chips, block, nrblocks, update;
-	uint8_t oldval, newval;
-
-	/* Do we have a bbt per chip ? */
-	if (td->options & NAND_BBT_PERCHIP) {
-		chips = this->numchips;
-		nrblocks = (int)(this->chipsize >> this->bbt_erase_shift);
-	} else {
-		chips = 1;
-		nrblocks = (int)(mtd->size >> this->bbt_erase_shift);
-	}
-
-	for (i = 0; i < chips; i++) {
-		if ((td->options & NAND_BBT_ABSPAGE) ||
-		    !(td->options & NAND_BBT_WRITE)) {
-			if (td->pages[i] == -1)
-				continue;
-			block = td->pages[i] >> (this->bbt_erase_shift - this->page_shift);
-			block <<= 1;
-			oldval = this->bbt[(block >> 3)];
-			newval = oldval | (0x2 << (block & 0x06));
-			this->bbt[(block >> 3)] = newval;
-			if ((oldval != newval) && td->reserved_block_code)
-				nand_update_bbt(mtd, block << (this->bbt_erase_shift - 1));
-			continue;
-		}
-		update = 0;
-		if (td->options & NAND_BBT_LASTBLOCK)
-			block = ((i + 1) * nrblocks) - td->maxblocks;
-		else
-			block = i * nrblocks;
-		block <<= 1;
-		for (j = 0; j < td->maxblocks; j++) {
-			oldval = this->bbt[(block >> 3)];
-			newval = oldval | (0x2 << (block & 0x06));
-			this->bbt[(block >> 3)] = newval;
-			if (oldval != newval)
-				update = 1;
-			block += 2;
-		}
-		/* If we want reserved blocks to be recorded to flash, and some
-		   new ones have been marked, then we need to update the stored
-		   bbts.  This should only happen once. */
-		if (update && td->reserved_block_code)
-			nand_update_bbt(mtd, (block - 2) << (this->bbt_erase_shift - 1));
-	}
-}
-
-/**
- * nand_scan_bbt - [NAND Interface] scan, find, read and maybe create bad block table(s)
- * @mtd:	MTD device structure
- * @bd:		descriptor for the good/bad block search pattern
- *
- * The function checks, if a bad block table(s) is/are already
- * available. If not it scans the device for manufacturer
- * marked good / bad blocks and writes the bad block table(s) to
- * the selected place.
- *
- * The bad block table memory is allocated here. It must be freed
- * by calling the nand_free_bbt function.
- *
-*/
-int nand_scan_bbt(struct mtd_info *mtd, struct nand_bbt_descr *bd)
-{
-	struct nand_chip *this = mtd->priv;
-	int len, res = 0;
-	uint8_t *buf;
-	struct nand_bbt_descr *td = this->bbt_td;
-	struct nand_bbt_descr *md = this->bbt_md;
-
-	len = mtd->size >> (this->bbt_erase_shift + 2);
-	/* Allocate memory (2bit per block) and clear the memory bad block table */
-	this->bbt = kzalloc(len, GFP_KERNEL);
-	if (!this->bbt) {
-		printk(KERN_ERR "nand_scan_bbt: Out of memory\n");
-		return -ENOMEM;
-	}
-
-	/* If no primary table decriptor is given, scan the device
-	 * to build a memory based bad block table
-	 */
-	if (!td) {
-		if ((res = nand_memory_bbt(mtd, bd))) {
-			printk(KERN_ERR "nand_bbt: Can't scan flash and build the RAM-based BBT\n");
-			kfree(this->bbt);
-			this->bbt = NULL;
-		}
-		return res;
-	}
-
-	/* Allocate a temporary buffer for one eraseblock incl. oob */
-	len = (1 << this->bbt_erase_shift);
-	len += (len >> this->page_shift) * mtd->oobsize;
-	buf = vmalloc(len);
-	if (!buf) {
-		printk(KERN_ERR "nand_bbt: Out of memory\n");
-		kfree(this->bbt);
-		this->bbt = NULL;
-		return -ENOMEM;
-	}
-
-	/* Is the bbt at a given page ? */
-	if (td->options & NAND_BBT_ABSPAGE) {
-		res = read_abs_bbts(mtd, buf, td, md);
-	} else {
-		/* Search the bad block table using a pattern in oob */
-		res = search_read_bbts(mtd, buf, td, md);
-	}
-
-	if (res)
-		res = check_create(mtd, buf, bd);
-
-	/* Prevent the bbt regions from erasing / writing */
-	mark_bbt_region(mtd, td);
-	if (md)
-		mark_bbt_region(mtd, md);
-
-	vfree(buf);
-	return res;
-}
-
-/**
- * nand_update_bbt - [NAND Interface] update bad block table(s)
- * @mtd:	MTD device structure
- * @offs:	the offset of the newly marked block
- *
- * The function updates the bad block table(s)
-*/
-int nand_update_bbt(struct mtd_info *mtd, loff_t offs)
-{
-	struct nand_chip *this = mtd->priv;
-	int len, res = 0, writeops = 0;
-	int chip, chipsel;
-	uint8_t *buf;
-	struct nand_bbt_descr *td = this->bbt_td;
-	struct nand_bbt_descr *md = this->bbt_md;
-
-	if (!this->bbt || !td)
-		return -EINVAL;
-
-	len = mtd->size >> (this->bbt_erase_shift + 2);
-	/* Allocate a temporary buffer for one eraseblock incl. oob */
-	len = (1 << this->bbt_erase_shift);
-	len += (len >> this->page_shift) * mtd->oobsize;
-	buf = kmalloc(len, GFP_KERNEL);
-	if (!buf) {
-		printk(KERN_ERR "nand_update_bbt: Out of memory\n");
-		return -ENOMEM;
-	}
-
-	writeops = md != NULL ? 0x03 : 0x01;
-
-	/* Do we have a bbt per chip ? */
-	if (td->options & NAND_BBT_PERCHIP) {
-		chip = (int)(offs >> this->chip_shift);
-		chipsel = chip;
-	} else {
-		chip = 0;
-		chipsel = -1;
-	}
-
-	td->version[chip]++;
-	if (md)
-		md->version[chip]++;
-
-	/* Write the bad block table to the device ? */
-	if ((writeops & 0x01) && (td->options & NAND_BBT_WRITE)) {
-		res = write_bbt(mtd, buf, td, md, chipsel);
-		if (res < 0)
-			goto out;
-	}
-	/* Write the mirror bad block table to the device ? */
-	if ((writeops & 0x02) && md && (md->options & NAND_BBT_WRITE)) {
-		res = write_bbt(mtd, buf, md, td, chipsel);
-	}
-
- out:
-	kfree(buf);
-	return res;
-}
-
-/* Define some generic bad / good block scan pattern which are used
- * while scanning a device for factory marked good / bad blocks. */
-static uint8_t scan_ff_pattern[] = { 0xff, 0xff };
-
-static struct nand_bbt_descr smallpage_memorybased = {
-	.options = NAND_BBT_SCAN2NDPAGE,
-	.offs = 5,
-	.len = 1,
-	.pattern = scan_ff_pattern
-};
-
-static struct nand_bbt_descr largepage_memorybased = {
-	.options = 0,
-	.offs = 0,
-	.len = 2,
-	.pattern = scan_ff_pattern
-};
-
-static struct nand_bbt_descr smallpage_flashbased = {
-	.options = NAND_BBT_SCAN2NDPAGE,
-	.offs = 5,
-	.len = 1,
-	.pattern = scan_ff_pattern
-};
-
-static struct nand_bbt_descr largepage_flashbased = {
-	.options = NAND_BBT_SCAN2NDPAGE,
-	.offs = 0,
-	.len = 2,
-	.pattern = scan_ff_pattern
-};
-
-static uint8_t scan_agand_pattern[] = { 0x1C, 0x71, 0xC7, 0x1C, 0x71, 0xC7 };
-
-static struct nand_bbt_descr agand_flashbased = {
-	.options = NAND_BBT_SCANEMPTY | NAND_BBT_SCANALLPAGES,
-	.offs = 0x20,
-	.len = 6,
-	.pattern = scan_agand_pattern
-};
-
-/* Generic flash bbt decriptors
-*/
-static uint8_t bbt_pattern[] = {'B', 'b', 't', '0' };
-static uint8_t mirror_pattern[] = {'1', 't', 'b', 'B' };
-
-static struct nand_bbt_descr bbt_main_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
-		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
-	.offs =	8,
-	.len = 4,
-	.veroffs = 12,
-	.maxblocks = 4,
-	.pattern = bbt_pattern
-};
-
-static struct nand_bbt_descr bbt_mirror_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
-		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
-	.offs =	8,
-	.len = 4,
-	.veroffs = 12,
-	.maxblocks = 4,
-	.pattern = mirror_pattern
-};
-
-/**
- * nand_default_bbt - [NAND Interface] Select a default bad block table for the device
- * @mtd:	MTD device structure
- *
- * This function selects the default bad block table
- * support for the device and calls the nand_scan_bbt function
- *
-*/
-int nand_default_bbt(struct mtd_info *mtd)
-{
-	struct nand_chip *this = mtd->priv;
-
-	/* Default for AG-AND. We must use a flash based
-	 * bad block table as the devices have factory marked
-	 * _good_ blocks. Erasing those blocks leads to loss
-	 * of the good / bad information, so we _must_ store
-	 * this information in a good / bad table during
-	 * startup
-	 */
-	if (this->options & NAND_IS_AND) {
-		/* Use the default pattern descriptors */
-		if (!this->bbt_td) {
-			this->bbt_td = &bbt_main_descr;
-			this->bbt_md = &bbt_mirror_descr;
-		}
-		this->options |= NAND_USE_FLASH_BBT;
-		return nand_scan_bbt(mtd, &agand_flashbased);
-	}
-
-	/* Is a flash based bad block table requested ? */
-	if (this->options & NAND_USE_FLASH_BBT) {
-		/* Use the default pattern descriptors */
-		if (!this->bbt_td) {
-			this->bbt_td = &bbt_main_descr;
-			this->bbt_md = &bbt_mirror_descr;
-		}
-		if (!this->badblock_pattern) {
-			this->badblock_pattern = (mtd->writesize > 512) ? &largepage_flashbased : &smallpage_flashbased;
-		}
-	} else {
-		this->bbt_td = NULL;
-		this->bbt_md = NULL;
-		if (!this->badblock_pattern) {
-			this->badblock_pattern = (mtd->writesize > 512) ?
-			    &largepage_memorybased : &smallpage_memorybased;
-		}
-	}
-	return nand_scan_bbt(mtd, this->badblock_pattern);
-}
-
-/**
- * nand_isbad_bbt - [NAND Interface] Check if a block is bad
- * @mtd:	MTD device structure
- * @offs:	offset in the device
- * @allowbbt:	allow access to bad block table region
- *
-*/
-int nand_isbad_bbt(struct mtd_info *mtd, loff_t offs, int allowbbt)
-{
-	struct nand_chip *this = mtd->priv;
-	int block;
-	uint8_t res;
-
-	/* Get block number * 2 */
-	block = (int)(offs >> (this->bbt_erase_shift - 1));
-	res = (this->bbt[block >> 3] >> (block & 0x06)) & 0x03;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL2, "nand_isbad_bbt(): bbt info for offs 0x%08x: (block %d) 0x%02x\n",
-	      (unsigned int)offs, block >> 1, res);
-
-	switch ((int)res) {
-	case 0x00:
-		return 0;
-	case 0x01:
-		return 1;
-	case 0x02:
-		return allowbbt ? 0 : 1;
-	}
-	return 1;
-}
-
-EXPORT_SYMBOL(nand_scan_bbt);
-EXPORT_SYMBOL(nand_default_bbt);
-
-#endif /* DOXYGEN_SHOULD_SKIP_THIS */
diff --git a/drivers/nand/nand_ecc.c b/drivers/nand/nand_ecc.c
deleted file mode 100644
index 266d573..0000000
--- a/drivers/nand/nand_ecc.c
+++ /dev/null
@@ -1,198 +0,0 @@
-/*
- * This file contains an ECC algorithm from Toshiba that detects and
- * corrects 1 bit errors in a 256 byte block of data.
- *
- * drivers/mtd/nand/nand_ecc.c
- *
- * Copyright (C) 2000-2004 Steven J. Hill (sjhill@realitydiluted.com)
- *                         Toshiba America Electronics Components, Inc.
- *
- * Copyright (C) 2006 Thomas Gleixner <tglx@linutronix.de>
- *
- * $Id: nand_ecc.c,v 1.15 2005/11/07 11:14:30 gleixner Exp $
- *
- * This file is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2 or (at your option) any
- * later version.
- *
- * This file is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
- * for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this file; if not, write to the Free Software Foundation, Inc.,
- * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
- *
- * As a special exception, if other files instantiate templates or use
- * macros or inline functions from these files, or you compile these
- * files and link them with other works to produce a work based on these
- * files, these files do not by themselves cause the resulting work to be
- * covered by the GNU General Public License. However the source code for
- * these files must still be made available in accordance with section (3)
- * of the GNU General Public License.
- *
- * This exception does not invalidate any other reasons why a work based on
- * this file might be covered by the GNU General Public License.
- */
-
-#include <linux/types.h>
-#include <common.h>
-#include <errno.h>
-#include <linux/mtd/nand_ecc.h>
-
-/*
- * Pre-calculated 256-way 1 byte column parity
- */
-static const u_char nand_ecc_precalc_table[] = {
-	0x00, 0x55, 0x56, 0x03, 0x59, 0x0c, 0x0f, 0x5a, 0x5a, 0x0f, 0x0c, 0x59, 0x03, 0x56, 0x55, 0x00,
-	0x65, 0x30, 0x33, 0x66, 0x3c, 0x69, 0x6a, 0x3f, 0x3f, 0x6a, 0x69, 0x3c, 0x66, 0x33, 0x30, 0x65,
-	0x66, 0x33, 0x30, 0x65, 0x3f, 0x6a, 0x69, 0x3c, 0x3c, 0x69, 0x6a, 0x3f, 0x65, 0x30, 0x33, 0x66,
-	0x03, 0x56, 0x55, 0x00, 0x5a, 0x0f, 0x0c, 0x59, 0x59, 0x0c, 0x0f, 0x5a, 0x00, 0x55, 0x56, 0x03,
-	0x69, 0x3c, 0x3f, 0x6a, 0x30, 0x65, 0x66, 0x33, 0x33, 0x66, 0x65, 0x30, 0x6a, 0x3f, 0x3c, 0x69,
-	0x0c, 0x59, 0x5a, 0x0f, 0x55, 0x00, 0x03, 0x56, 0x56, 0x03, 0x00, 0x55, 0x0f, 0x5a, 0x59, 0x0c,
-	0x0f, 0x5a, 0x59, 0x0c, 0x56, 0x03, 0x00, 0x55, 0x55, 0x00, 0x03, 0x56, 0x0c, 0x59, 0x5a, 0x0f,
-	0x6a, 0x3f, 0x3c, 0x69, 0x33, 0x66, 0x65, 0x30, 0x30, 0x65, 0x66, 0x33, 0x69, 0x3c, 0x3f, 0x6a,
-	0x6a, 0x3f, 0x3c, 0x69, 0x33, 0x66, 0x65, 0x30, 0x30, 0x65, 0x66, 0x33, 0x69, 0x3c, 0x3f, 0x6a,
-	0x0f, 0x5a, 0x59, 0x0c, 0x56, 0x03, 0x00, 0x55, 0x55, 0x00, 0x03, 0x56, 0x0c, 0x59, 0x5a, 0x0f,
-	0x0c, 0x59, 0x5a, 0x0f, 0x55, 0x00, 0x03, 0x56, 0x56, 0x03, 0x00, 0x55, 0x0f, 0x5a, 0x59, 0x0c,
-	0x69, 0x3c, 0x3f, 0x6a, 0x30, 0x65, 0x66, 0x33, 0x33, 0x66, 0x65, 0x30, 0x6a, 0x3f, 0x3c, 0x69,
-	0x03, 0x56, 0x55, 0x00, 0x5a, 0x0f, 0x0c, 0x59, 0x59, 0x0c, 0x0f, 0x5a, 0x00, 0x55, 0x56, 0x03,
-	0x66, 0x33, 0x30, 0x65, 0x3f, 0x6a, 0x69, 0x3c, 0x3c, 0x69, 0x6a, 0x3f, 0x65, 0x30, 0x33, 0x66,
-	0x65, 0x30, 0x33, 0x66, 0x3c, 0x69, 0x6a, 0x3f, 0x3f, 0x6a, 0x69, 0x3c, 0x66, 0x33, 0x30, 0x65,
-	0x00, 0x55, 0x56, 0x03, 0x59, 0x0c, 0x0f, 0x5a, 0x5a, 0x0f, 0x0c, 0x59, 0x03, 0x56, 0x55, 0x00
-};
-
-/**
- * nand_calculate_ecc - [NAND Interface] Calculate 3-byte ECC for 256-byte block
- * @mtd:	MTD block structure
- * @dat:	raw data
- * @ecc_code:	buffer for ECC
- */
-int nand_calculate_ecc(struct mtd_info *mtd, const u_char *dat,
-		       u_char *ecc_code)
-{
-	uint8_t idx, reg1, reg2, reg3, tmp1, tmp2;
-	int i;
-
-	/* Initialize variables */
-	reg1 = reg2 = reg3 = 0;
-
-	/* Build up column parity */
-	for(i = 0; i < 256; i++) {
-		/* Get CP0 - CP5 from table */
-		idx = nand_ecc_precalc_table[*dat++];
-		reg1 ^= (idx & 0x3f);
-
-		/* All bit XOR = 1 ? */
-		if (idx & 0x40) {
-			reg3 ^= (uint8_t) i;
-			reg2 ^= ~((uint8_t) i);
-		}
-	}
-
-	/* Create non-inverted ECC code from line parity */
-	tmp1  = (reg3 & 0x80) >> 0; /* B7 -> B7 */
-	tmp1 |= (reg2 & 0x80) >> 1; /* B7 -> B6 */
-	tmp1 |= (reg3 & 0x40) >> 1; /* B6 -> B5 */
-	tmp1 |= (reg2 & 0x40) >> 2; /* B6 -> B4 */
-	tmp1 |= (reg3 & 0x20) >> 2; /* B5 -> B3 */
-	tmp1 |= (reg2 & 0x20) >> 3; /* B5 -> B2 */
-	tmp1 |= (reg3 & 0x10) >> 3; /* B4 -> B1 */
-	tmp1 |= (reg2 & 0x10) >> 4; /* B4 -> B0 */
-
-	tmp2  = (reg3 & 0x08) << 4; /* B3 -> B7 */
-	tmp2 |= (reg2 & 0x08) << 3; /* B3 -> B6 */
-	tmp2 |= (reg3 & 0x04) << 3; /* B2 -> B5 */
-	tmp2 |= (reg2 & 0x04) << 2; /* B2 -> B4 */
-	tmp2 |= (reg3 & 0x02) << 2; /* B1 -> B3 */
-	tmp2 |= (reg2 & 0x02) << 1; /* B1 -> B2 */
-	tmp2 |= (reg3 & 0x01) << 1; /* B0 -> B1 */
-	tmp2 |= (reg2 & 0x01) << 0; /* B7 -> B0 */
-
-	/* Calculate final ECC code */
-#ifdef CONFIG_MTD_NAND_ECC_SMC
-	ecc_code[0] = ~tmp2;
-	ecc_code[1] = ~tmp1;
-#else
-	ecc_code[0] = ~tmp1;
-	ecc_code[1] = ~tmp2;
-#endif
-	ecc_code[2] = ((~reg1) << 2) | 0x03;
-
-	return 0;
-}
-EXPORT_SYMBOL(nand_calculate_ecc);
-
-static inline int countbits(uint32_t byte)
-{
-	int res = 0;
-
-	for (;byte; byte >>= 1)
-		res += byte & 0x01;
-	return res;
-}
-
-/**
- * nand_correct_data - [NAND Interface] Detect and correct bit error(s)
- * @mtd:	MTD block structure
- * @dat:	raw data read from the chip
- * @read_ecc:	ECC from the chip
- * @calc_ecc:	the ECC calculated from raw data
- *
- * Detect and correct a 1 bit error for 256 byte block
- */
-int nand_correct_data(struct mtd_info *mtd, u_char *dat,
-		      u_char *read_ecc, u_char *calc_ecc)
-{
-	uint8_t s0, s1, s2;
-
-#ifdef CONFIG_MTD_NAND_ECC_SMC
-	s0 = calc_ecc[0] ^ read_ecc[0];
-	s1 = calc_ecc[1] ^ read_ecc[1];
-	s2 = calc_ecc[2] ^ read_ecc[2];
-#else
-	s1 = calc_ecc[0] ^ read_ecc[0];
-	s0 = calc_ecc[1] ^ read_ecc[1];
-	s2 = calc_ecc[2] ^ read_ecc[2];
-#endif
-	if ((s0 | s1 | s2) == 0)
-		return 0;
-
-	/* Check for a single bit error */
-	if( ((s0 ^ (s0 >> 1)) & 0x55) == 0x55 &&
-	    ((s1 ^ (s1 >> 1)) & 0x55) == 0x55 &&
-	    ((s2 ^ (s2 >> 1)) & 0x54) == 0x54) {
-
-		uint32_t byteoffs, bitnum;
-
-		byteoffs = (s1 << 0) & 0x80;
-		byteoffs |= (s1 << 1) & 0x40;
-		byteoffs |= (s1 << 2) & 0x20;
-		byteoffs |= (s1 << 3) & 0x10;
-
-		byteoffs |= (s0 >> 4) & 0x08;
-		byteoffs |= (s0 >> 3) & 0x04;
-		byteoffs |= (s0 >> 2) & 0x02;
-		byteoffs |= (s0 >> 1) & 0x01;
-
-		bitnum = (s2 >> 5) & 0x04;
-		bitnum |= (s2 >> 4) & 0x02;
-		bitnum |= (s2 >> 3) & 0x01;
-
-		dat[byteoffs] ^= (1 << bitnum);
-
-		return 1;
-	}
-
-	if(countbits(s0 | ((uint32_t)s1 << 8) | ((uint32_t)s2 <<16)) == 1)
-		return 1;
-
-	return -EBADMSG;
-}
-EXPORT_SYMBOL(nand_correct_data);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Steven J. Hill <sjhill@realitydiluted.com>");
-MODULE_DESCRIPTION("Generic NAND ECC support");
diff --git a/drivers/nand/nand_ids.c b/drivers/nand/nand_ids.c
deleted file mode 100644
index f95975c..0000000
--- a/drivers/nand/nand_ids.c
+++ /dev/null
@@ -1,153 +0,0 @@
-/*
- *  drivers/mtd/nandids.c
- *
- *  Copyright (C) 2002 Thomas Gleixner (tglx@linutronix.de)
- *
- * $Id: nand_ids.c,v 1.16 2005/11/07 11:14:31 gleixner Exp $
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- */
-#include <common.h>
-#include <linux/mtd/nand.h>
-/*
-*	Chip ID list
-*
-*	Name. ID code, pagesize, chipsize in MegaByte, eraseblock size,
-*	options
-*
-*	Pagesize; 0, 256, 512
-*	0	get this information from the extended chip ID
-+	256	256 Byte page size
-*	512	512 Byte page size
-*/
-struct nand_flash_dev nand_flash_ids[] = {
-
-#ifdef CONFIG_MTD_NAND_MUSEUM_IDS
-	{"NAND 1MiB 5V 8-bit",		0x6e, 256, 1, 0x1000, 0},
-	{"NAND 2MiB 5V 8-bit",		0x64, 256, 2, 0x1000, 0},
-	{"NAND 4MiB 5V 8-bit",		0x6b, 512, 4, 0x2000, 0},
-	{"NAND 1MiB 3,3V 8-bit",	0xe8, 256, 1, 0x1000, 0},
-	{"NAND 1MiB 3,3V 8-bit",	0xec, 256, 1, 0x1000, 0},
-	{"NAND 2MiB 3,3V 8-bit",	0xea, 256, 2, 0x1000, 0},
-	{"NAND 4MiB 3,3V 8-bit",	0xd5, 512, 4, 0x2000, 0},
-	{"NAND 4MiB 3,3V 8-bit",	0xe3, 512, 4, 0x2000, 0},
-	{"NAND 4MiB 3,3V 8-bit",	0xe5, 512, 4, 0x2000, 0},
-	{"NAND 8MiB 3,3V 8-bit",	0xd6, 512, 8, 0x2000, 0},
-
-	{"NAND 8MiB 1,8V 8-bit",	0x39, 512, 8, 0x2000, 0},
-	{"NAND 8MiB 3,3V 8-bit",	0xe6, 512, 8, 0x2000, 0},
-	{"NAND 8MiB 1,8V 16-bit",	0x49, 512, 8, 0x2000, NAND_BUSWIDTH_16},
-	{"NAND 8MiB 3,3V 16-bit",	0x59, 512, 8, 0x2000, NAND_BUSWIDTH_16},
-#endif
-
-	{"NAND 16MiB 1,8V 8-bit",	0x33, 512, 16, 0x4000, 0},
-	{"NAND 16MiB 3,3V 8-bit",	0x73, 512, 16, 0x4000, 0},
-	{"NAND 16MiB 1,8V 16-bit",	0x43, 512, 16, 0x4000, NAND_BUSWIDTH_16},
-	{"NAND 16MiB 3,3V 16-bit",	0x53, 512, 16, 0x4000, NAND_BUSWIDTH_16},
-
-	{"NAND 32MiB 1,8V 8-bit",	0x35, 512, 32, 0x4000, 0},
-	{"NAND 32MiB 3,3V 8-bit",	0x75, 512, 32, 0x4000, 0},
-	{"NAND 32MiB 1,8V 16-bit",	0x45, 512, 32, 0x4000, NAND_BUSWIDTH_16},
-	{"NAND 32MiB 3,3V 16-bit",	0x55, 512, 32, 0x4000, NAND_BUSWIDTH_16},
-
-	{"NAND 64MiB 1,8V 8-bit",	0x36, 512, 64, 0x4000, 0},
-	{"NAND 64MiB 3,3V 8-bit",	0x76, 512, 64, 0x4000, 0},
-	{"NAND 64MiB 1,8V 16-bit",	0x46, 512, 64, 0x4000, NAND_BUSWIDTH_16},
-	{"NAND 64MiB 3,3V 16-bit",	0x56, 512, 64, 0x4000, NAND_BUSWIDTH_16},
-
-	{"NAND 128MiB 1,8V 8-bit",	0x78, 512, 128, 0x4000, 0},
-	{"NAND 128MiB 1,8V 8-bit",	0x39, 512, 128, 0x4000, 0},
-	{"NAND 128MiB 3,3V 8-bit",	0x79, 512, 128, 0x4000, 0},
-	{"NAND 128MiB 1,8V 16-bit",	0x72, 512, 128, 0x4000, NAND_BUSWIDTH_16},
-	{"NAND 128MiB 1,8V 16-bit",	0x49, 512, 128, 0x4000, NAND_BUSWIDTH_16},
-	{"NAND 128MiB 3,3V 16-bit",	0x74, 512, 128, 0x4000, NAND_BUSWIDTH_16},
-	{"NAND 128MiB 3,3V 16-bit",	0x59, 512, 128, 0x4000, NAND_BUSWIDTH_16},
-
-	{"NAND 256MiB 3,3V 8-bit",	0x71, 512, 256, 0x4000, 0},
-
-	/*
-	 * These are the new chips with large page size. The pagesize and the
-	 * erasesize is determined from the extended id bytes
-	 */
-#define LP_OPTIONS (NAND_SAMSUNG_LP_OPTIONS | NAND_NO_READRDY | NAND_NO_AUTOINCR)
-#define LP_OPTIONS16 (LP_OPTIONS | NAND_BUSWIDTH_16)
-
-	/*512 Megabit */
-	{"NAND 64MiB 1,8V 8-bit",	0xA2, 0,  64, 0, LP_OPTIONS},
-	{"NAND 64MiB 3,3V 8-bit",	0xF2, 0,  64, 0, LP_OPTIONS},
-	{"NAND 64MiB 1,8V 16-bit",	0xB2, 0,  64, 0, LP_OPTIONS16},
-	{"NAND 64MiB 3,3V 16-bit",	0xC2, 0,  64, 0, LP_OPTIONS16},
-
-	/* 1 Gigabit */
-	{"NAND 128MiB 1,8V 8-bit",	0xA1, 0, 128, 0, LP_OPTIONS},
-	{"NAND 128MiB 3,3V 8-bit",	0xF1, 0, 128, 0, LP_OPTIONS},
-	{"NAND 128MiB 1,8V 16-bit",	0xB1, 0, 128, 0, LP_OPTIONS16},
-	{"NAND 128MiB 3,3V 16-bit",	0xC1, 0, 128, 0, LP_OPTIONS16},
-
-	/* 2 Gigabit */
-	{"NAND 256MiB 1,8V 8-bit",	0xAA, 0, 256, 0, LP_OPTIONS},
-	{"NAND 256MiB 3,3V 8-bit",	0xDA, 0, 256, 0, LP_OPTIONS},
-	{"NAND 256MiB 1,8V 16-bit",	0xBA, 0, 256, 0, LP_OPTIONS16},
-	{"NAND 256MiB 3,3V 16-bit",	0xCA, 0, 256, 0, LP_OPTIONS16},
-
-	/* 4 Gigabit */
-	{"NAND 512MiB 1,8V 8-bit",	0xAC, 0, 512, 0, LP_OPTIONS},
-	{"NAND 512MiB 3,3V 8-bit",	0xDC, 0, 512, 0, LP_OPTIONS},
-	{"NAND 512MiB 1,8V 16-bit",	0xBC, 0, 512, 0, LP_OPTIONS16},
-	{"NAND 512MiB 3,3V 16-bit",	0xCC, 0, 512, 0, LP_OPTIONS16},
-
-	/* 8 Gigabit */
-	{"NAND 1GiB 1,8V 8-bit",	0xA3, 0, 1024, 0, LP_OPTIONS},
-	{"NAND 1GiB 3,3V 8-bit",	0xD3, 0, 1024, 0, LP_OPTIONS},
-	{"NAND 1GiB 1,8V 16-bit",	0xB3, 0, 1024, 0, LP_OPTIONS16},
-	{"NAND 1GiB 3,3V 16-bit",	0xC3, 0, 1024, 0, LP_OPTIONS16},
-
-	/* 16 Gigabit */
-	{"NAND 2GiB 1,8V 8-bit",	0xA5, 0, 2048, 0, LP_OPTIONS},
-	{"NAND 2GiB 3,3V 8-bit",	0xD5, 0, 2048, 0, LP_OPTIONS},
-	{"NAND 2GiB 1,8V 16-bit",	0xB5, 0, 2048, 0, LP_OPTIONS16},
-	{"NAND 2GiB 3,3V 16-bit",	0xC5, 0, 2048, 0, LP_OPTIONS16},
-
-	/*
-	 * Renesas AND 1 Gigabit. Those chips do not support extended id and
-	 * have a strange page/block layout !  The chosen minimum erasesize is
-	 * 4 * 2 * 2048 = 16384 Byte, as those chips have an array of 4 page
-	 * planes 1 block = 2 pages, but due to plane arrangement the blocks
-	 * 0-3 consists of page 0 + 4,1 + 5, 2 + 6, 3 + 7 Anyway JFFS2 would
-	 * increase the eraseblock size so we chose a combined one which can be
-	 * erased in one go There are more speed improvements for reads and
-	 * writes possible, but not implemented now
-	 */
-	{"AND 128MiB 3,3V 8-bit",	0x01, 2048, 128, 0x4000,
-	 NAND_IS_AND | NAND_NO_AUTOINCR |NAND_NO_READRDY | NAND_4PAGE_ARRAY |
-	 BBT_AUTO_REFRESH
-	},
-
-	{NULL,}
-};
-
-/*
-*	Manufacturer ID list
-*/
-struct nand_manufacturers nand_manuf_ids[] = {
-	{NAND_MFR_TOSHIBA, "Toshiba"},
-	{NAND_MFR_SAMSUNG, "Samsung"},
-	{NAND_MFR_FUJITSU, "Fujitsu"},
-	{NAND_MFR_NATIONAL, "National"},
-	{NAND_MFR_RENESAS, "Renesas"},
-	{NAND_MFR_STMICRO, "ST Micro"},
-	{NAND_MFR_HYNIX, "Hynix"},
-	{NAND_MFR_MICRON, "Micron"},
-	{NAND_MFR_AMD, "AMD"},
-	{0x0, "Unknown"}
-};
-
-EXPORT_SYMBOL(nand_manuf_ids);
-EXPORT_SYMBOL(nand_flash_ids);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Thomas Gleixner <tglx@linutronix.de>");
-MODULE_DESCRIPTION("Nand device & manufacturer IDs");
diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
deleted file mode 100644
index 74cdf10..0000000
--- a/drivers/nand/nand_imx.c
+++ /dev/null
@@ -1,1210 +0,0 @@
-/*
- * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
- * Copyright 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- */
-
-/*
- * The code contained herein is licensed under the GNU General Public
- * License. You may obtain a copy of the GNU General Public License
- * Version 2 or later at the following locations:
- *
- * http://www.opensource.org/licenses/gpl-license.html
- * http://www.gnu.org/copyleft/gpl.html
- */
-
-/*
- * MX21 Hardware contains a bug which causes HW ECC to fail for two
- * consecutive read pages containing 1bit Errors (See MX21 Chip Erata,
- * Erratum 16). Use software ECC for this chip.
- */
-
-#include <common.h>
-#include <driver.h>
-#include <malloc.h>
-#include <init.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <mach/generic.h>
-#include <mach/imx-nand.h>
-#include <mach/imx-regs.h>
-#include <asm/io.h>
-#include <errno.h>
-
-#define DVR_VER "2.0"
-
-#define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
-#define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
-
-/*
- * Addresses for NFC registers
- */
-#define NFC_BUF_SIZE		0xE00
-#define NFC_BUF_ADDR		0xE04
-#define NFC_FLASH_ADDR		0xE06
-#define NFC_FLASH_CMD		0xE08
-#define NFC_CONFIG		0xE0A
-#define NFC_ECC_STATUS_RESULT	0xE0C
-#define NFC_RSLTMAIN_AREA	0xE0E
-#define NFC_RSLTSPARE_AREA	0xE10
-#define NFC_SPAS		0xe10
-#define NFC_WRPROT		0xE12
-#define NFC_V1_UNLOCKSTART_BLKADDR	0xe14
-#define NFC_V1_UNLOCKEND_BLKADDR	0xe16
-#define NFC_V21_UNLOCKSTART_BLKADDR	0xe20
-#define NFC_V21_UNLOCKEND_BLKADDR	0xe22
-#define NFC_NF_WRPRST		0xE18
-#define NFC_CONFIG1		0xE1A
-#define NFC_CONFIG2		0xE1C
-
-/*
- * Addresses for NFC RAM BUFFER Main area 0
- */
-#define MAIN_AREA0		0x000
-#define MAIN_AREA1		0x200
-#define MAIN_AREA2		0x400
-#define MAIN_AREA3		0x600
-
-/*
- * Addresses for NFC SPARE BUFFER Spare area 0
- */
-#define SPARE_AREA0		0x800
-#define SPARE_AREA1		0x810
-#define SPARE_AREA2		0x820
-#define SPARE_AREA3		0x830
-
-/*
- * Set INT to 0, FCMD to 1, rest to 0 in NFC_CONFIG2 Register for Command
- * operation
- */
-#define NFC_CMD            0x1
-
-/*
- * Set INT to 0, FADD to 1, rest to 0 in NFC_CONFIG2 Register for Address
- * operation
- */
-#define NFC_ADDR           0x2
-
-/*
- * Set INT to 0, FDI to 1, rest to 0 in NFC_CONFIG2 Register for Input
- * operation
- */
-#define NFC_INPUT          0x4
-
-/*
- * Set INT to 0, FDO to 001, rest to 0 in NFC_CONFIG2 Register for Data Output
- * operation
- */
-#define NFC_OUTPUT         0x8
-
-/*
- * Set INT to 0, FD0 to 010, rest to 0 in NFC_CONFIG2 Register for Read ID
- * operation
- */
-#define NFC_ID             0x10
-
-/*
- * Set INT to 0, FDO to 100, rest to 0 in NFC_CONFIG2 Register for Read Status
- * operation
- */
-#define NFC_STATUS         0x20
-
-/*
- * Set INT to 1, rest to 0 in NFC_CONFIG2 Register for Read Status
- * operation
- */
-#define NFC_INT            0x8000
-
-#define NFC_ECC_MODE        (1 << 0)
-#define NFC_SP_EN           (1 << 2)
-#define NFC_ECC_EN          (1 << 3)
-#define NFC_INT_MSK         (1 << 4)
-#define NFC_BIG             (1 << 5)
-#define NFC_RST             (1 << 6)
-#define NFC_CE              (1 << 7)
-#define NFC_ONE_CYCLE       (1 << 8)
-
-#define NFC_SPAS_16			 8
-#define NFC_SPAS_64			 32
-#define NFC_SPAS_128			 64
-#define NFC_SPAS_218			 109
-
-#ifdef CONFIG_NAND_IMX_BOOT
-#define __nand_boot_init __bare_init
-#else
-#define __nand_boot_init
-#endif
-
-struct imx_nand_host {
-	struct mtd_info		mtd;		
-	struct nand_chip	nand;
-	struct mtd_partition	*parts;
-	struct device_d		*dev;
-
-	void			*spare0;
-	void			*main_area0;
-	void			*main_area1;
-
-	void __iomem		*base;
-	void __iomem		*regs;
-	int			status_request;
-	struct clk		*clk;
-
-	int			pagesize_2k;
-	uint8_t			*data_buf;
-	unsigned int		buf_start;
-	int			spare_len;
-
-};
-
-/*
- * OOB placement block for use with hardware ecc generation
- */
-static struct nand_ecclayout nandv1_hw_eccoob_smallpage = {
-	.eccbytes = 5,
-	.eccpos = {6, 7, 8, 9, 10},
-	.oobfree = {{0, 5}, {12, 4}}
-};
-
-static struct nand_ecclayout nandv1_hw_eccoob_largepage = {
-	.eccbytes = 20,
-	.eccpos = {6, 7, 8, 9, 10, 22, 23, 24, 25, 26,
-		   38, 39, 40, 41, 42, 54, 55, 56, 57, 58},
-	.oobfree = {{2, 4}, {11, 10}, {27, 10}, {43, 10}, {59, 5}, }
-};
-
-/* OOB description for 512 byte pages with 16 byte OOB */
-static struct nand_ecclayout nandv2_hw_eccoob_smallpage = {
-	.eccbytes = 1 * 9,
-	.eccpos = {
-		7,  8,  9, 10, 11, 12, 13, 14, 15
-	},
-	.oobfree = {
-		{.offset = 0, .length = 5}
-	}
-};
-
-/* OOB description for 2048 byte pages with 64 byte OOB */
-static struct nand_ecclayout nandv2_hw_eccoob_largepage = {
-	.eccbytes = 4 * 9,
-	.eccpos = {
-		 7,  8,  9, 10, 11, 12, 13, 14, 15,
-		23, 24, 25, 26, 27, 28, 29, 30, 31,
-		39, 40, 41, 42, 43, 44, 45, 46, 47,
-		55, 56, 57, 58, 59, 60, 61, 62, 63
-	},
-	.oobfree = {
-		{.offset = 2, .length = 4},
-		{.offset = 16, .length = 7},
-		{.offset = 32, .length = 7},
-		{.offset = 48, .length = 7}
-	}
-};
-
-static void memcpy32(void *trg, const void *src, int size)
-{
-	int i;
-	unsigned int *t = trg;
-	unsigned const int *s = src;
-
-#ifdef CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS
-	if (!((unsigned long)trg & 0x3) && !((unsigned long)src & 0x3))
-		memcpy(trg, src, size);
-	else
-#endif
-	for (i = 0; i < (size >> 2); i++)
-		*t++ = *s++;
-}
-
-/*
- * This function polls the NANDFC to wait for the basic operation to complete by
- * checking the INT bit of config2 register.
- *
- * @param       max_retries     number of retry attempts (separated by 1 us)
- * @param       param           parameter for debug
- */
-static void __nand_boot_init wait_op_done(struct imx_nand_host *host)
-{
-	u32 tmp;
-	int i;
-
-	/* This is a timeout of roughly 15ms on my system. We
-	 * need about 2us, but be generous. Don't use udelay
-	 * here as we might be here from nand booting.
-	 */
-	for (i = 0; i < 100000; i++) {
-		if (readw(host->regs + NFC_CONFIG2) & NFC_INT) {
-			tmp = readw(host->regs + NFC_CONFIG2);
-			tmp  &= ~NFC_INT;
-			writew(tmp, host->regs + NFC_CONFIG2);
-			return;
-		}
-	}
-}
-
-/*
- * This function issues the specified command to the NAND device and
- * waits for completion.
- *
- * @param       cmd     command for NAND Flash
- */
-static void __nand_boot_init send_cmd(struct imx_nand_host *host, u16 cmd)
-{
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x)\n", cmd);
-
-	writew(cmd, host->regs + NFC_FLASH_CMD);
-	writew(NFC_CMD, host->regs + NFC_CONFIG2);
-
-	if (cpu_is_mx21() && (cmd == NAND_CMD_RESET)) {
-		/* Reset completion is indicated by NFC_CONFIG2 */
-		/* being set to 0 */
-		int i;
-		for (i = 0; i < 100000; i++) {
-			if (readw(host->regs + NFC_CONFIG2) == 0) {
-				break;
-			}
-		}
-	} else
-		/* Wait for operation to complete */
-		wait_op_done(host);
-}
-
-/*
- * This function sends an address (or partial address) to the
- * NAND device.  The address is used to select the source/destination for
- * a NAND command.
- *
- * @param       addr    address to be written to NFC.
- * @param       islast  True if this is the last address cycle for command
- */
-static void __nand_boot_init noinline send_addr(struct imx_nand_host *host, u16 addr)
-{
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);
-
-	writew(addr, host->regs + NFC_FLASH_ADDR);
-	writew(NFC_ADDR, host->regs + NFC_CONFIG2);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-}
-
-/*
- * This function requests the NANDFC to initate the transfer
- * of data currently in the NANDFC RAM buffer to the NAND device.
- *
- * @param	buf_id	      Specify Internal RAM Buffer number (0-3)
- * @param       spare_only    set true if only the spare area is transferred
- */
-static void __nand_boot_init send_page(struct imx_nand_host *host,
-		unsigned int ops)
-{
-	int bufs, i;
-
-	if (nfc_is_v1() && host->pagesize_2k)
-		bufs = 4;
-	else
-		bufs = 1;
-
-	for (i = 0; i < bufs; i++) {
-		/* NANDFC buffer 0 is used for page read/write */
-		writew(i, host->regs + NFC_BUF_ADDR);
-
-		writew(ops, host->regs + NFC_CONFIG2);
-
-		/* Wait for operation to complete */
-		wait_op_done(host);
-	}
-}
-
-/*
- * This function requests the NANDFC to perform a read of the
- * NAND device ID.
- */
-static void send_read_id(struct imx_nand_host *host)
-{
-	struct nand_chip *this = &host->nand;
-	u16 tmp;
-
-	/* NANDFC buffer 0 is used for device ID output */
-	writew(0x0, host->regs + NFC_BUF_ADDR);
-
-	/* Read ID into main buffer */
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp &= ~NFC_SP_EN;
-	writew(tmp, host->regs + NFC_CONFIG1);
-
-	writew(NFC_ID, host->regs + NFC_CONFIG2);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-
-	if (this->options & NAND_BUSWIDTH_16) {
-		volatile u16 *mainbuf = host->main_area0;
-
-		/*
-		 * Pack the every-other-byte result for 16-bit ID reads
-		 * into every-byte as the generic code expects and various
-		 * chips implement.
-		 */
-
-		mainbuf[0] = (mainbuf[0] & 0xff) | ((mainbuf[1] & 0xff) << 8);
-		mainbuf[1] = (mainbuf[2] & 0xff) | ((mainbuf[3] & 0xff) << 8);
-		mainbuf[2] = (mainbuf[4] & 0xff) | ((mainbuf[5] & 0xff) << 8);
-	}
-	memcpy32(host->data_buf, host->main_area0, 16);
-}
-
-/*
- * This function requests the NANDFC to perform a read of the
- * NAND device status and returns the current status.
- *
- * @return  device status
- */
-static u16 get_dev_status(struct imx_nand_host *host)
-{
-	volatile u16 *mainbuf = host->main_area1;
-	u32 store;
-	u16 ret, tmp;
-	/* Issue status request to NAND device */
-
-	/* store the main area1 first word, later do recovery */
-	store = *((u32 *) mainbuf);
-	/*
-	 * NANDFC buffer 1 is used for device status to prevent
-	 * corruption of read/write buffer on status requests.
-	 */
-	writew(1, host->regs + NFC_BUF_ADDR);
-
-	/* Read status into main buffer */
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp &= ~NFC_SP_EN;
-	writew(tmp, host->regs + NFC_CONFIG1);
-
-	writew(NFC_STATUS, host->regs + NFC_CONFIG2);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-
-	/* Status is placed in first word of main buffer */
-	/* get status, then recovery area 1 data */
-	ret = mainbuf[0];
-	*((u32 *) mainbuf) = store;
-
-	return ret;
-}
-
-/*
- * This function is used by upper layer to checks if device is ready
- *
- * @param       mtd     MTD structure for the NAND Flash
- *
- * @return  0 if device is busy else 1
- */
-static int imx_nand_dev_ready(struct mtd_info *mtd)
-{
-	/*
-	 * NFC handles R/B internally.Therefore,this function
-	 * always returns status as ready.
-	 */
-	return 1;
-}
-
-static void imx_nand_enable_hwecc(struct mtd_info *mtd, int mode)
-{
-	/*
-	 * If HW ECC is enabled, we turn it on during init.  There is
-	 * no need to enable again here.
-	 */
-}
-
-static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
-				 u_char * read_ecc, u_char * calc_ecc)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct imx_nand_host *host = nand_chip->priv;
-
-	/*
-	 * 1-Bit errors are automatically corrected in HW.  No need for
-	 * additional correction.  2-Bit errors cannot be corrected by
-	 * HW ECC, so we need to return failure
-	 */
-	u16 ecc_status = readw(host->regs + NFC_ECC_STATUS_RESULT);
-
-	if (((ecc_status & 0x3) == 2) || ((ecc_status >> 2) == 2)) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0,
-		      "MXC_NAND: HWECC uncorrectable 2-bit ECC error\n");
-		return -1;
-	}
-
-	return 0;
-}
-
-static int imx_nand_calculate_ecc(struct mtd_info *mtd, const u_char * dat,
-				  u_char * ecc_code)
-{
-	return 0;
-}
-
-/*
- * This function reads byte from the NAND Flash
- *
- * @param       mtd     MTD structure for the NAND Flash
- *
- * @return    data read from the NAND Flash
- */
-static u_char imx_nand_read_byte(struct mtd_info *mtd)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct imx_nand_host *host = nand_chip->priv;
-	u_char ret;
-
-	/* Check for status request */
-	if (host->status_request)
-		return get_dev_status(host) & 0xFF;
-
-	ret = *(uint8_t *)(host->data_buf + host->buf_start);
-	host->buf_start++;
-
-	return ret;
-}
-
-/*
-  * This function reads word from the NAND Flash
-  *
-  * @param       mtd     MTD structure for the NAND Flash
-  *
-  * @return    data read from the NAND Flash
-  */
-static u16 imx_nand_read_word(struct mtd_info *mtd)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct imx_nand_host *host = nand_chip->priv;
-	uint16_t ret;
-
-	ret = *(uint16_t *)(host->data_buf + host->buf_start);
-	host->buf_start += 2;
-
-	return ret;
-}
-
-/*
- * This function writes data of length \b len to buffer \b buf. The data to be
- * written on NAND Flash is first copied to RAMbuffer. After the Data Input
- * Operation by the NFC, the data is written to NAND Flash
- *
- * @param       mtd     MTD structure for the NAND Flash
- * @param       buf     data to be written to NAND Flash
- * @param       len     number of bytes to be written
- */
-static void imx_nand_write_buf(struct mtd_info *mtd,
-			       const u_char *buf, int len)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct imx_nand_host *host = nand_chip->priv;
-	u16 col = host->buf_start;
-	int n = mtd->oobsize + mtd->writesize - col;
-
-	n = min(n, len);
-	memcpy(host->data_buf + col, buf, n);
-
-	host->buf_start += n;
-}
-
-/*
- * This function is used to read the data buffer from the NAND Flash. To
- * read the data from NAND Flash first the data output cycle is initiated by
- * the NFC, which copies the data to RAMbuffer. This data of length \b len is
- * then copied to buffer \b buf.
- *
- * @param       mtd     MTD structure for the NAND Flash
- * @param       buf     data to be read from NAND Flash
- * @param       len     number of bytes to be read
- */
-static void imx_nand_read_buf(struct mtd_info *mtd, u_char * buf, int len)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct imx_nand_host *host = nand_chip->priv;
-	u16 col = host->buf_start;
-	int n = mtd->oobsize + mtd->writesize - col;
-
-	n = min(n, len);
-
-	memcpy(buf, host->data_buf + col, len);
-
-	host->buf_start += len;
-}
-
-/*
- * Function to transfer data to/from spare area.
- */
-static void copy_spare(struct mtd_info *mtd, int bfrom)
-{
-	struct nand_chip *this = mtd->priv;
-	struct imx_nand_host *host = this->priv;
-	u16 i, j;
-	u16 n = mtd->writesize >> 9;
-	u8 *d = host->data_buf + mtd->writesize;
-	u8 *s = host->spare0;
-	u16 t = host->spare_len;
-
-	j = (mtd->oobsize / n >> 1) << 1;
-
-	if (bfrom) {
-		for (i = 0; i < n - 1; i++)
-			memcpy32(d + i * j, s + i * t, j);
-
-		/* the last section */
-		memcpy32(d + i * j, s + i * t, mtd->oobsize - i * j);
-	} else {
-		for (i = 0; i < n - 1; i++)
-			memcpy32(&s[i * t], &d[i * j], j);
-
-		/* the last section */
-		memcpy32(&s[i * t], &d[i * j], mtd->oobsize - i * j);
-	}
-}
-
-/*
- * This function is used by the upper layer to verify the data in NAND Flash
- * with the data in the \b buf.
- *
- * @param       mtd     MTD structure for the NAND Flash
- * @param       buf     data to be verified
- * @param       len     length of the data to be verified
- *
- * @return      -EFAULT if error else 0
- *
- */
-static int
-imx_nand_verify_buf(struct mtd_info *mtd, const u_char * buf, int len)
-{
-	return -EFAULT;
-}
-
-/*
- * This function is used by upper layer for select and deselect of the NAND
- * chip
- *
- * @param       mtd     MTD structure for the NAND Flash
- * @param       chip    val indicating select or deselect
- */
-static void imx_nand_select_chip(struct mtd_info *mtd, int chip)
-{
-#ifdef CONFIG_MTD_NAND_MXC_FORCE_CE
-	u16 tmp;
-
-	if (chip > 0) {
-		MTD_DEBUG(MTD_DEBUG_LEVEL0,
-		      "ERROR:  Illegal chip select (chip = %d)\n", chip);
-		return;
-	}
-
-	if (chip == -1) {
-		tmp = readw(host->regs + NFC_CONFIG1);
-		tmp &= ~NFC_CE;
-		writew(tmp, host->regs + NFC_CONFIG1);
-		return;
-	}
-
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp |= NFC_CE;
-	writew(tmp, host->regs + NFC_CONFIG1);
-#endif
-}
-
-static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct imx_nand_host *host = nand_chip->priv;
-
-	/*
-	 * Write out column address, if necessary
-	 */
-	if (column != -1) {
-		/*
-		 * MXC NANDFC can only perform full page+spare or
-		 * spare-only read/write.  When the upper layers
-		 * layers perform a read/write buf operation,
-		 * we will used the saved column adress to index into
-		 * the full page.
-		 */
-		send_addr(host, 0);
-		if (host->pagesize_2k)
-			/* another col addr cycle for 2k page */
-			send_addr(host, 0);
-	}
-
-	/*
-	 * Write out page address, if necessary
-	 */
-	if (page_addr != -1) {
-		send_addr(host, (page_addr & 0xff));	/* paddr_0 - p_addr_7 */
-
-		if (host->pagesize_2k) {
-			send_addr(host, (page_addr >> 8) & 0xFF);
-			if (mtd->size >= 0x10000000) {
-				send_addr(host, (page_addr >> 16) & 0xff);
-			}
-		} else {
-			/* One more address cycle for higher density devices */
-			if (mtd->size >= 0x4000000) {
-				/* paddr_8 - paddr_15 */
-				send_addr(host, (page_addr >> 8) & 0xff);
-				send_addr(host, (page_addr >> 16) & 0xff);
-			} else
-				/* paddr_8 - paddr_15 */
-				send_addr(host, (page_addr >> 8) & 0xff);
-		}
-	}
-}
-
-/*
- * This function is used by the upper layer to write command to NAND Flash for
- * different operations to be carried out on NAND Flash
- *
- * @param       mtd             MTD structure for the NAND Flash
- * @param       command         command for NAND Flash
- * @param       column          column offset for the page read
- * @param       page_addr       page to be read from NAND Flash
- */
-static void imx_nand_command(struct mtd_info *mtd, unsigned command,
-			     int column, int page_addr)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct imx_nand_host *host = nand_chip->priv;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL3,
-	      "imx_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
-	      command, column, page_addr);
-
-	/*
-	 * Reset command state information
-	 */
-	host->status_request = 0;
-
-	/*
-	 * Command pre-processing step
-	 */
-	switch (command) {
-
-	case NAND_CMD_STATUS:
-		host->buf_start = 0;
-		host->status_request = 1;
-		send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
-		break;
-
-	case NAND_CMD_READ0:
-	case NAND_CMD_READOOB:
-		if (command == NAND_CMD_READ0)
-			host->buf_start = column;
-		else
-			host->buf_start = column + mtd->writesize;
-
-		command = NAND_CMD_READ0;
-
-		send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
-
-		if (host->pagesize_2k)
-			/* send read confirm command */
-			send_cmd(host, NAND_CMD_READSTART);
-
-		send_page(host, NFC_OUTPUT);
-
-		memcpy32(host->data_buf, host->main_area0, mtd->writesize);
-		copy_spare(mtd, 1);
-		break;
-
-	case NAND_CMD_SEQIN:
-		if (column >= mtd->writesize) {
-			if (host->pagesize_2k) {
-				/**
-				  * FIXME: before send SEQIN command for write
-				  * OOB, we must read one page out. For K9F1GXX
-				  * has no READ1 command to set current HW
-				  * pointer to spare area, we must write the
-				  * whole page including OOB together.
-				  */
-				/* call ourself to read a page */
-				imx_nand_command(mtd, NAND_CMD_READ0, 0,
-						 page_addr);
-			}
-			host->buf_start = column;
-
-			/* Set program pointer to spare region */
-			if (!host->pagesize_2k)
-				send_cmd(host, NAND_CMD_READOOB);
-		} else {
-			host->buf_start = column;
-
-			/* Set program pointer to page start */
-			if (!host->pagesize_2k)
-				send_cmd(host, NAND_CMD_READ0);
-		}
-		send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
-
-		break;
-
-	case NAND_CMD_PAGEPROG:
-		memcpy32(host->main_area0, host->data_buf, mtd->writesize);
-		copy_spare(mtd, 0);
-		send_page(host, NFC_INPUT);
-		send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
-		break;
-
-	case NAND_CMD_READID:
-		send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
-		host->buf_start = 0;
-		send_read_id(host);
-		break;
-
-	case NAND_CMD_ERASE1:
-	case NAND_CMD_ERASE2:
-	case NAND_CMD_RESET:
-		send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
-		break;
-	}
-}
-
-#ifdef CONFIG_MXC_NAND_LOW_LEVEL_ERASE
-static void imx_low_erase(struct mtd_info *mtd)
-{
-
-	struct nand_chip *this = mtd->priv;
-	unsigned int page_addr, addr;
-	u_char status;
-
-	MTD_DEBUG(MTD_DEBUG_LEVEL0, "MXC_ND : imx_low_erase:Erasing NAND\n");
-	for (addr = 0; addr < this->chipsize; addr += mtd->erasesize) {
-		page_addr = addr / mtd->writesize;
-		imx_nand_command(mtd, NAND_CMD_ERASE1, -1, page_addr);
-		imx_nand_command(mtd, NAND_CMD_ERASE2, -1, -1);
-		imx_nand_command(mtd, NAND_CMD_STATUS, -1, -1);
-		status = imx_nand_read_byte(mtd);
-		if (status & NAND_STATUS_FAIL) {
-			printk(KERN_ERR
-			       "ERASE FAILED(block = %d,status = 0x%x)\n",
-			       addr / mtd->erasesize, status);
-		}
-	}
-
-}
-#endif
-
-/*
- * The generic flash bbt decriptors overlap with our ecc
- * hardware, so define some i.MX specific ones.
- */
-static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
-static uint8_t mirror_pattern[] = { '1', 't', 'b', 'B' };
-
-static struct nand_bbt_descr bbt_main_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
-		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
-	.offs = 0,
-	.len = 4,
-	.veroffs = 4,
-	.maxblocks = 4,
-	.pattern = bbt_pattern,
-};
-
-static struct nand_bbt_descr bbt_mirror_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
-		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
-	.offs = 0,
-	.len = 4,
-	.veroffs = 4,
-	.maxblocks = 4,
-	.pattern = mirror_pattern,
-};
-
-/*
- * This function is called during the driver binding process.
- *
- * @param   pdev  the device structure used to store device specific
- *                information that is used by the suspend, resume and
- *                remove functions
- *
- * @return  The function always returns 0.
- */
-
-static int __init imxnd_probe(struct device_d *dev)
-{
-	struct nand_chip *this;
-	struct mtd_info *mtd;
-	struct imx_nand_platform_data *pdata = dev->platform_data;
-	struct imx_nand_host *host;
-	struct nand_ecclayout *oob_smallpage, *oob_largepage;
-	u16 tmp;
-	int err = 0;
-
-#ifdef CONFIG_ARCH_IMX27
-	PCCR1 |= PCCR1_NFC_BAUDEN;
-#endif
-#ifdef CONFIG_ARCH_IMX21
-	PCCR0 |= PCCR0_NFC_EN;
-#endif
-	/* Allocate memory for MTD device structure and private data */
-	host = kzalloc(sizeof(struct imx_nand_host) + NAND_MAX_PAGESIZE +
-			NAND_MAX_OOBSIZE, GFP_KERNEL);
-	if (!host)
-		return -ENOMEM;
-
-	host->data_buf = (uint8_t *)(host + 1);
-	host->base = (void __iomem *)dev->map_base;
-
-	host->main_area0 = host->base;
-	host->main_area1 = host->base + 0x200;
-
-	if (nfc_is_v21()) {
-		host->regs = host->base + 0x1000;
-		host->spare0 = host->base + 0x1000;
-		host->spare_len = 64;
-		oob_smallpage = &nandv2_hw_eccoob_smallpage;
-		oob_largepage = &nandv2_hw_eccoob_largepage;
-	} else if (nfc_is_v1()) {
-		host->regs = host->base;
-		host->spare0 = host->base + 0x800;
-		host->spare_len = 16;
-		oob_smallpage = &nandv1_hw_eccoob_smallpage;
-		oob_largepage = &nandv1_hw_eccoob_largepage;
-	}
-
-	host->dev = dev;
-	/* structures must be linked */
-	this = &host->nand;
-	mtd = &host->mtd;
-	mtd->priv = this;
-
-	/* 50 us command delay time */
-	this->chip_delay = 5;
-
-	this->priv = host;
-	this->dev_ready = imx_nand_dev_ready;
-	this->cmdfunc = imx_nand_command;
-	this->select_chip = imx_nand_select_chip;
-	this->read_byte = imx_nand_read_byte;
-	this->read_word = imx_nand_read_word;
-	this->write_buf = imx_nand_write_buf;
-	this->read_buf = imx_nand_read_buf;
-	this->verify_buf = imx_nand_verify_buf;
-#if 0
-	host->clk = clk_get(&pdev->dev, "nfc_clk");
-	if (IS_ERR(host->clk))
-		goto eclk;
-
-	clk_enable(host->clk);
-#endif
-
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp |= NFC_INT_MSK;
-	tmp &= ~NFC_SP_EN;
-	if (nfc_is_v21())
-		/* currently no support for 218 byte OOB with stronger ECC */
-		tmp |= NFC_ECC_MODE;
-	writew(tmp, host->regs + NFC_CONFIG1);
-
-	if (pdata->hw_ecc) {
-		this->ecc.calculate = imx_nand_calculate_ecc;
-		this->ecc.hwctl = imx_nand_enable_hwecc;
-		this->ecc.correct = imx_nand_correct_data;
-		this->ecc.mode = NAND_ECC_HW;
-		this->ecc.size = 512;
-		tmp = readw(host->regs + NFC_CONFIG1);
-		tmp |= NFC_ECC_EN;
-		writew(tmp, host->regs + NFC_CONFIG1);
-	} else {
-		this->ecc.size = 512;
-		this->ecc.mode = NAND_ECC_SOFT;
-		tmp = readw(host->regs + NFC_CONFIG1);
-		tmp &= ~NFC_ECC_EN;
-		writew(tmp, host->regs + NFC_CONFIG1);
-	}
-
-	/* Reset NAND */
-	this->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
-
-	/* preset operation */
-	/* Unlock the internal RAM Buffer */
-	writew(0x2, host->regs + NFC_CONFIG);
-
-	/* Blocks to be unlocked */
-	if (nfc_is_v21()) {
-		writew(0x0, host->regs + NFC_V21_UNLOCKSTART_BLKADDR);
-		writew(0xffff, host->regs + NFC_V21_UNLOCKEND_BLKADDR);
-		this->ecc.bytes = 9;
-	} else if (nfc_is_v1()) {
-		writew(0x0, host->regs + NFC_V1_UNLOCKSTART_BLKADDR);
-		writew(0x4000, host->regs + NFC_V1_UNLOCKEND_BLKADDR);
-		this->ecc.bytes = 3;
-	}
-
-	/* Unlock Block Command for given address range */
-	writew(0x4, host->regs + NFC_WRPROT);
-
-	this->ecc.layout = oob_smallpage;
-
-	/* NAND bus width determines access funtions used by upper layer */
-	if (pdata->width == 2) {
-		this->options |= NAND_BUSWIDTH_16;
-		this->ecc.layout = &nandv1_hw_eccoob_smallpage;
-		imx_nand_set_layout(0, 16);
-	}
-
-	if (pdata->flash_bbt) {
-		this->bbt_td = &bbt_main_descr;
-		this->bbt_md = &bbt_mirror_descr;
-		/* update flash based bbt */
-		this->options |= NAND_USE_FLASH_BBT;
-	}
-
-	/* first scan to find the device and get the page size */
-	if (nand_scan_ident(mtd, 1)) {
-		err = -ENXIO;
-		goto escan;
-	}
-
-	imx_nand_set_layout(mtd->writesize, pdata->width == 2 ? 16 : 8);
-
-	if (mtd->writesize == 2048) {
-		this->ecc.layout = oob_largepage;
-		host->pagesize_2k = 1;
-		if (nfc_is_v21()) {
-			tmp = readw(host->regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_64;
-			writew(tmp, host->regs + NFC_SPAS);
-		}
-	} else {
-		if (nfc_is_v21()) {
-			tmp = readw(host->regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_16;
-			writew(tmp, host->regs + NFC_SPAS);
-		}
-	}
-
-	/* second phase scan */
-	if (nand_scan_tail(mtd)) {
-		err = -ENXIO;
-		goto escan;
-	}
-
-	add_mtd_device(mtd);
-
-	dev->priv = host;
-
-	return 0;
-
-escan:
-	kfree(host);
-
-	return err;
-
-}
-
-static struct driver_d imx_nand_driver = {
-	.name  = "imx_nand",
-	.probe = imxnd_probe,
-};
-
-#ifdef CONFIG_NAND_IMX_BOOT
-
-static void __nand_boot_init nfc_addr(struct imx_nand_host *host, u32 offs)
-{
-	if (host->pagesize_2k) {
-		send_addr(host, offs & 0xff);
-		send_addr(host, offs & 0xff);
-		send_addr(host, (offs >> 11) & 0xff);
-		send_addr(host, (offs >> 19) & 0xff);
-		send_addr(host, (offs >> 27) & 0xff);
-	} else {
-		send_addr(host, offs & 0xff);
-		send_addr(host, (offs >> 9) & 0xff);
-		send_addr(host, (offs >> 17) & 0xff);
-		send_addr(host, (offs >> 25) & 0xff);
-	}
-}
-
-static void __nand_boot_init __memcpy32(void *trg, const void *src, int size)
-{
-	int i;
-	unsigned int *t = trg;
-	unsigned const int *s = src;
-
-	for (i = 0; i < (size >> 2); i++)
-		*t++ = *s++;
-}
-
-void __nand_boot_init imx_nand_load_image(void *dest, int size)
-{
-	struct imx_nand_host host;
-	u32 tmp, page, block, blocksize, pagesize;
-#ifdef CONFIG_ARCH_IMX21
-	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
-	if (tmp & (1 << 5))
-		host.pagesize_2k = 1;
-	else
-		host.pagesize_2k = 0;
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	tmp = readl(IMX_SYSTEM_CTL_BASE + 0x14);
-	if (tmp & (1 << 5))
-		host.pagesize_2k = 1;
-	else
-		host.pagesize_2k = 0;
-#endif
-#ifdef CONFIG_ARCH_IMX31
-	tmp = readl(IMX_CCM_BASE + CCM_RCSR);
-	if (tmp & RCSR_NFMS)
-		host.pagesize_2k = 1;
-	else
-		host.pagesize_2k = 0;
-#endif
-#ifdef CONFIG_ARCH_IMX35
-	if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 8))
-		host.pagesize_2k = 1;
-	else
-		host.pagesize_2k = 0;
-#endif
-	if (host.pagesize_2k) {
-		pagesize = 2048;
-		blocksize = 128 * 1024;
-	} else {
-		pagesize = 512;
-		blocksize = 16 * 1024;
-	}
-
-	host.base = (void __iomem *)IMX_NFC_BASE;
-	if (nfc_is_v21()) {
-		host.regs = host.base + 0x1000;
-		host.spare0 = host.base + 0x1000;
-		host.spare_len = 64;
-	} else if (nfc_is_v1()) {
-		host.regs = host.base;
-		host.spare0 = host.base + 0x800;
-		host.spare_len = 16;
-	}
-
-	send_cmd(&host, NAND_CMD_RESET);
-
-	/* preset operation */
-	/* Unlock the internal RAM Buffer */
-	writew(0x2, host.regs + NFC_CONFIG);
-
-	/* Unlock Block Command for given address range */
-	writew(0x4, host.regs + NFC_WRPROT);
-
-	tmp = readw(host.regs + NFC_CONFIG1);
-	tmp |= NFC_ECC_EN;
-	if (nfc_is_v21())
-		/* currently no support for 218 byte OOB with stronger ECC */
-		tmp |= NFC_ECC_MODE;
-	tmp &= ~(NFC_SP_EN | NFC_INT_MSK);
-	writew(tmp, host.regs + NFC_CONFIG1);
-
-	if (nfc_is_v21()) {
-		if (host.pagesize_2k) {
-			tmp = readw(host.regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_64;
-			writew(tmp, host.regs + NFC_SPAS);
-		} else {
-			tmp = readw(host.regs + NFC_SPAS);
-			tmp &= 0xff00;
-			tmp |= NFC_SPAS_16;
-			writew(tmp, host.regs + NFC_SPAS);
-		}
-	}
-
-	block = page = 0;
-
-	while (1) {
-		page = 0;
-		while (page * pagesize < blocksize) {
-			debug("page: %d block: %d dest: %p src "
-					"0x%08x\n",
-					page, block, dest,
-					block * blocksize +
-					page * pagesize);
-
-			send_cmd(&host, NAND_CMD_READ0);
-			nfc_addr(&host, block * blocksize +
-					page * pagesize);
-			if (host.pagesize_2k)
-				send_cmd(&host, NAND_CMD_READSTART);
-			send_page(&host, NFC_OUTPUT);
-			page++;
-
-			if (host.pagesize_2k) {
-				if ((readw(host.spare0) & 0xff)
-						!= 0xff)
-					continue;
-			} else {
-				if ((readw(host.spare0 + 4) & 0xff00)
-						!= 0xff00)
-					continue;
-			}
-
-			__memcpy32(dest, host.base, pagesize);
-			dest += pagesize;
-			size -= pagesize;
-
-			if (size <= 0)
-				return;
-		}
-		block++;
-	}
-}
-#define CONFIG_NAND_IMX_BOOT_DEBUG
-#ifdef CONFIG_NAND_IMX_BOOT_DEBUG
-#include <command.h>
-
-static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
-{
-	void *dest;
-	int size;
-
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
-
-	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
-	size = strtoul_suffix(argv[2], NULL, 0);
-
-	imx_nand_load_image(dest, size);
-
-	return 0;
-}
-
-static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size>\n"
-"This command loads the booloader from the NAND memory like the reset\n"
-"routine does. Its intended for development tests only";
-
-BAREBOX_CMD_START(nand_boot_test)
-	.cmd		= do_nand_boot_test,
-	.usage		= "load bootloader from NAND",
-	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
-BAREBOX_CMD_END
-#endif
-
-#endif /* CONFIG_NAND_IMX_BOOT */
-
-/*
- * Main initialization routine
- * @return  0 if successful; non-zero otherwise
- */
-static int __init imx_nand_init(void)
-{
-	return register_driver(&imx_nand_driver);
-}
-
-device_initcall(imx_nand_init);
-
-MODULE_AUTHOR("Freescale Semiconductor, Inc.");
-MODULE_DESCRIPTION("MXC NAND MTD driver");
-MODULE_LICENSE("GPL");
diff --git a/drivers/nand/nand_omap_gpmc.c b/drivers/nand/nand_omap_gpmc.c
deleted file mode 100644
index c6647e5..0000000
--- a/drivers/nand/nand_omap_gpmc.c
+++ /dev/null
@@ -1,534 +0,0 @@
-/**
- * @file
- * @brief Provide Generic GPMC NAND implementation for OMAP platforms
- *
- * FileName: arch/arm/mach-omap/gpmc_nand.c
- *
- * GPMC has a NAND controller inbuilt. This provides a generic implementation
- * for board files to register a nand device. drivers/nand/nand_base.c takes
- * care of identifing the type of device, size etc.
- *
- * A typical device registration is as follows:
- *
- * @code
- * static struct device_d my_nand_device = {
- *	.name = "gpmc_nand",
- *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
- *	.map_base = GPMC base address
- *	.size = GPMC address map size.
- *	.platform_data = platform data - required - explained below
- * };
- * platform data required:
- * static struct gpmc_nand_platform_data nand_plat = {
- *	.cs = give the chip select of the device
- *	.device_width = what is the width of the device 8 or 16?
- *	.max_timeout = delay desired for operation
- *	.wait_mon_pin = do you use wait monitoring? if so wait pin
- *	.plat_options = platform options.
- *		NAND_HWECC_ENABLE/DISABLE - hw ecc enable/disable
- *		NAND_WAITPOL_LOW/HIGH - wait pin polarity
- *	.oob = if you would like to replace oob with a custom OOB.
- *	.nand_setup  = if you would like a special setup function to be called
- *	.priv = any params you'd like to save(e.g. like nand_setup to use)
- *};
- * then in your code, you'd device_register(&my_nand_device);
- * @endcode
- *
- * Note:
- * @li Enable CONFIG_NAND_OMAP_GPMC_HWECC in menuconfig to get H/w ECC support
- * @li You may choose to register two "devices" for the same CS to get BOTH
- * hwecc and swecc devices.
- * @li You can choose to have your own OOB definition for compliance with ROM
- * code organization - only if you dont want to use NAND's default oob layout.
- * see GPMC_NAND_ECC_LP_x8_LAYOUT etc..
- *
- * @see gpmc_nand_platform_data
- * @warning Remember to initialize GPMC before initializing the nand dev.
- */
-/*
- * (C) Copyright 2008
- * Texas Instruments, <www.ti.com>
- * Nishanth Menon <x0nishan@ti.com>
- *
- * Based on:
- * drivers/mtd/nand/omap2.c from linux kernel
- *
- * Copyright (c) 2004 Texas Instruments, Jian Zhang <jzhang@ti.com>
- * Copyright (c) 2004 Micron Technology Inc.
- * Copyright (c) 2004 David Brownell
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- */
-
-#include <common.h>
-#include <errno.h>
-#include <init.h>
-#include <driver.h>
-#include <malloc.h>
-#include <clock.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/nand_ecc.h>
-#include <asm/io.h>
-#include <mach/silicon.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
-
-/* Enable me to get tons of debug messages -for use without jtag */
-#if 0
-#define gpmcnand_dbg(FORMAT, ARGS...) fprintf(stdout,\
-		"gpmc_nand:%s:%d:Entry:"FORMAT"\n",\
-		__func__, __LINE__, ARGS)
-#else
-#define gpmcnand_dbg(FORMAT, ARGS...)
-#endif
-#define gpmcnand_err(ARGS...) fprintf(stderr, "omapnand: " ARGS);
-
-/** internal structure maintained for nand information */
-struct gpmc_nand_info {
-	struct nand_hw_control controller;
-	struct device_d *pdev;
-	struct gpmc_nand_platform_data *pdata;
-	struct nand_chip nand;
-	struct mtd_info minfo;
-	int gpmc_cs;
-	void *gpmc_command;
-	void *gpmc_address;
-	void *gpmc_data;
-	unsigned long gpmc_base;
-	unsigned char wait_mon_mask;
-	uint64_t timeout;
-	unsigned inuse:1;
-	unsigned wait_pol:1;
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
-	unsigned char ecc_parity_pairs;
-	unsigned int ecc_config;
-#endif
-};
-
-/**
- * @brief calls the platform specific dev_ready functionds
- *
- * @param mtd - mtd info structure
- *
- * @return
- */
-static int omap_dev_ready(struct mtd_info *mtd)
-{
-	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
-	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	uint64_t start = get_time_ns();
-	unsigned long comp;
-
-	gpmcnand_dbg("mtd=%x", (unsigned int)mtd);
-	/* What do we mean by assert and de-assert? */
-	comp = (oinfo->wait_pol == NAND_WAITPOL_HIGH) ?
-	    oinfo->wait_mon_mask : 0x0;
-	while (1) {
-		/* Breakout condition */
-		if (is_timeout(start, oinfo->timeout)) {
-			gpmcnand_err("timedout\n");
-			return -ETIMEDOUT;
-		}
-		/* if the wait is released, we are good to go */
-		if (comp ==
-		    (readl(oinfo->gpmc_base + GPMC_STATUS) &&
-		     oinfo->wait_mon_mask))
-			break;
-	}
-	return 0;
-}
-
-/**
- * @brief This function will enable or disable the Write Protect feature on
- * NAND device. GPMC has a single WP bit for all CS devices..
- *
- * @param oinfo  omap nand info
- * @param mode 0-disable else enable
- *
- * @return none
- */
-static void gpmc_nand_wp(struct gpmc_nand_info *oinfo, int mode)
-{
-	unsigned long config = readl(oinfo->gpmc_base + GPMC_CFG);
-
-	gpmcnand_dbg("mode=%x", mode);
-	if (mode)
-		config &= ~(NAND_WP_BIT);	/* WP is ON */
-	else
-		config |= (NAND_WP_BIT);	/* WP is OFF */
-
-	writel(config, oinfo->gpmc_base + GPMC_CFG);
-}
-
-/**
- * @brief respond to hw event change request
- *
- * MTD layer uses NAND_CTRL_CLE etc to control selection of the latch
- * we hoodwink by changing the R and W registers according to the state
- * we are requested.
- *
- * @param mtd - mtd info structure
- * @param cmd command mtd layer is requesting
- *
- * @return none
- */
-static void omap_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
-{
-	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
-	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	gpmcnand_dbg("mtd=%x nand=%x cmd=%x ctrl = %x", (unsigned int)mtd, nand,
-		  cmd, ctrl);
-	switch (ctrl) {
-	case NAND_CTRL_CHANGE | NAND_CTRL_CLE:
-		nand->IO_ADDR_W = oinfo->gpmc_command;
-		nand->IO_ADDR_R = oinfo->gpmc_data;
-		break;
-
-	case NAND_CTRL_CHANGE | NAND_CTRL_ALE:
-		nand->IO_ADDR_W = oinfo->gpmc_address;
-		nand->IO_ADDR_R = oinfo->gpmc_data;
-		break;
-
-	case NAND_CTRL_CHANGE | NAND_NCE:
-		nand->IO_ADDR_W = oinfo->gpmc_data;
-		nand->IO_ADDR_R = oinfo->gpmc_data;
-		break;
-	}
-
-	if (cmd != NAND_CMD_NONE)
-		writeb(cmd, nand->IO_ADDR_W);
-	return;
-}
-
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
-
-/**
- * @brief This function will generate true ECC value, which can be used
- * when correcting data read from NAND flash memory core
- *
- * @param ecc_buf buffer to store ecc code
- *
- * @return re-formatted ECC value
- */
-static unsigned int gen_true_ecc(u8 *ecc_buf)
-{
-	gpmcnand_dbg("ecc_buf=%x 1, 2 3 = %x %x %x", (unsigned int)ecc_buf,
-		  ecc_buf[0], ecc_buf[1], ecc_buf[2]);
-	return ecc_buf[0] | (ecc_buf[1] << 16) | ((ecc_buf[2] & 0xF0) << 20) |
-	    ((ecc_buf[2] & 0x0F) << 8);
-}
-
-/**
- * @brief Compares the ecc read from nand spare area with ECC
- * registers values and corrects one bit error if it has occured
- * Further details can be had from OMAP TRM and the following selected links:
- * http://en.wikipedia.org/wiki/Hamming_code
- * http://www.cs.utexas.edu/users/plaxton/c/337/05f/slides/ErrorCorrection-4.pdf
- *
- * @param mtd - mtd info structure
- * @param dat  page data
- * @param read_ecc ecc readback
- * @param calc_ecc calculated ecc (from reg)
- *
- * @return 0 if data is OK or corrected, else returns -1
- */
-static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
-			     uint8_t *read_ecc, uint8_t *calc_ecc)
-{
-	unsigned int orig_ecc, new_ecc, res, hm;
-	unsigned short parity_bits, byte;
-	unsigned char bit;
-	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
-	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-
-	gpmcnand_dbg("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
-		  (unsigned int)dat, (unsigned int)read_ecc,
-		  (unsigned int)calc_ecc);
-
-	/* Regenerate the orginal ECC */
-	orig_ecc = gen_true_ecc(read_ecc);
-	new_ecc = gen_true_ecc(calc_ecc);
-	/* Get the XOR of real ecc */
-	res = orig_ecc ^ new_ecc;
-	if (res) {
-		/* Get the hamming width */
-		hm = hweight32(res);
-		/* Single bit errors can be corrected! */
-		if (hm == oinfo->ecc_parity_pairs) {
-			/* Correctable data! */
-			parity_bits = res >> 16;
-			bit = (parity_bits & 0x7);
-			byte = (parity_bits >> 3) & 0x1FF;
-			/* Flip the bit to correct */
-			dat[byte] ^= (0x1 << bit);
-
-		} else if (hm == 1) {
-			gpmcnand_err("Ecc is wrong\n");
-			/* ECC itself is corrupted */
-			return 2;
-		} else {
-			gpmcnand_err("bad compare! failed\n");
-			/* detected 2 bit error */
-			return -1;
-		}
-	}
-	return 0;
-}
-
-/**
- * @brief Using noninverted ECC can be considered ugly since writing a blank
- * page ie. padding will clear the ECC bytes. This is no problem as long
- * nobody is trying to write data on the seemingly unused page. Reading
- * an erased page will produce an ECC mismatch between generated and read
- * ECC bytes that has to be dealt with separately.
- *
- * @param mtd - mtd info structure
- * @param dat data being written
- * @param ecc_code ecc code returned back to nand layer
- *
- * @return 0
- */
-static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
-			      uint8_t *ecc_code)
-{
-	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
-	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	unsigned int val;
-	gpmcnand_dbg("mtd=%x dat=%x ecc_code=%x", (unsigned int)mtd,
-		  (unsigned int)dat, (unsigned int)ecc_code);
-	debug("ecc 0 1 2 = %x %x %x", ecc_code[0], ecc_code[1], ecc_code[2]);
-
-	/* Since we smartly tell mtd driver to use eccsize of 512, only
-	 * ECC Reg1 will be used.. we just read that */
-	val = readl(oinfo->gpmc_base + GPMC_ECC1_RESULT);
-	ecc_code[0] = val & 0xFF;
-	ecc_code[1] = (val >> 16) & 0xFF;
-	ecc_code[2] = ((val >> 8) & 0x0f) | ((val >> 20) & 0xf0);
-
-	/* Stop reading anymore ECC vals and clear old results
-	 * enable will be called if more reads are required */
-	writel(0x000, oinfo->gpmc_base + GPMC_ECC_CONFIG);
-	return 0;
-}
-
-/*
- * omap_enable_ecc - This function enables the hardware ecc functionality
- * @param mtd - mtd info structure
- * @param mode - Read/Write mode
- */
-static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
-{
-	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
-	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	gpmcnand_dbg("mtd=%x mode=%x", (unsigned int)mtd, mode);
-	switch (mode) {
-	case NAND_ECC_READ:
-	case NAND_ECC_WRITE:
-		/* Clear the ecc result registers
-		 * select ecc reg as 1
-		 */
-		writel(0x101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
-		/* Size 0 = 0xFF, Size1 is 0xFF - both are 512 bytes
-		 * tell all regs to generate size0 sized regs
-		 * we just have a single ECC engine for all CS
-		 */
-		writel(0x3FCFF000, oinfo->gpmc_base +
-				GPMC_ECC_SIZE_CONFIG);
-		writel(oinfo->ecc_config, oinfo->gpmc_base +
-				GPMC_ECC_CONFIG);
-		break;
-	default:
-		gpmcnand_err("Error: Unrecognized Mode[%d]!\n", mode);
-		break;
-	}
-}
-#endif				/* CONFIG_NAND_OMAP_GPMC_HWECC */
-
-/**
- * @brief nand device probe.
- *
- * @param pdev -matching device
- *
- * @return -failure reason or give 0
- */
-static int gpmc_nand_probe(struct device_d *pdev)
-{
-	struct gpmc_nand_info *oinfo;
-	struct gpmc_nand_platform_data *pdata;
-	struct nand_chip *nand;
-	struct mtd_info *minfo;
-	unsigned long cs_base;
-	int err;
-
-	gpmcnand_dbg("pdev=%x", (unsigned int)pdev);
-	pdata = (struct gpmc_nand_platform_data *)pdev->platform_data;
-	if (pdata == NULL) {
-		gpmcnand_err("platform data missing\n");
-		return -ENODEV;
-	}
-
-	oinfo = calloc(1, sizeof(struct gpmc_nand_info));
-	if (!oinfo) {
-		gpmcnand_err("oinfo alloc failed!\n");
-		return -ENOMEM;
-	}
-
-	/* fill up my data structures */
-	oinfo->pdev = pdev;
-	oinfo->pdata = pdata;
-	pdev->platform_data = (void *)oinfo;
-
-	nand = &oinfo->nand;
-	nand->priv = (void *)oinfo;
-
-	minfo = &oinfo->minfo;
-	minfo->priv = (void *)nand;
-
-	if (pdata->cs >= GPMC_NUM_CS) {
-		gpmcnand_err("Invalid CS!\n");
-		err = -EINVAL;
-		goto out_release_mem;
-	}
-	/* Setup register specific data */
-	oinfo->gpmc_cs = pdata->cs;
-	oinfo->gpmc_base = pdev->map_base;
-	cs_base = oinfo->gpmc_base + GPMC_CONFIG1_0 +
-		(pdata->cs * GPMC_CONFIG_CS_SIZE);
-	oinfo->gpmc_command = (void *)(cs_base + GPMC_CS_NAND_COMMAND);
-	oinfo->gpmc_address = (void *)(cs_base + GPMC_CS_NAND_ADDRESS);
-	oinfo->gpmc_data = (void *)(cs_base + GPMC_CS_NAND_DATA);
-	oinfo->timeout = pdata->max_timeout;
-	debug("GPMC Details:\n"
-		"GPMC BASE=%x\n"
-		"CMD=%x\n"
-		"ADDRESS=%x\n"
-		"DATA=%x\n"
-		"CS_BASE=%x\n",
-		oinfo->gpmc_base, oinfo->gpmc_command,
-		oinfo->gpmc_address, oinfo->gpmc_data, cs_base);
-
-	/* If we are 16 bit dev, our gpmc config tells us that */
-	if ((readl(cs_base) & 0x3000) == 0x1000) {
-		debug("16 bit dev\n");
-		nand->options |= NAND_BUSWIDTH_16;
-	}
-
-	/* Same data register for in and out */
-	nand->IO_ADDR_W = nand->IO_ADDR_R = (void *)oinfo->gpmc_data;
-	/*
-	 * If RDY/BSY line is connected to OMAP then use the omap ready
-	 * function and the generic nand_wait function which reads the
-	 * status register after monitoring the RDY/BSY line. Otherwise
-	 * use a standard chip delay which is slightly more than tR
-	 * (AC Timing) of the NAND device and read the status register
-	 * until you get a failure or success
-	 */
-	if (pdata->wait_mon_pin > 4) {
-		gpmcnand_err("Invalid wait monitoring pin\n");
-		err = -EINVAL;
-		goto out_release_mem;
-	}
-	if (pdata->wait_mon_pin) {
-		/* Set up the wait monitoring mask
-		 * This is GPMC_STATUS reg relevant */
-		oinfo->wait_mon_mask = (0x1 << (pdata->wait_mon_pin - 1)) << 8;
-		oinfo->wait_pol = (pdata->plat_options & NAND_WAITPOL_MASK);
-		nand->dev_ready = omap_dev_ready;
-		nand->chip_delay = 0;
-	} else {
-		/* use the default nand_wait function */
-		nand->chip_delay = 50;
-	}
-
-	/* Use default cmdfunc */
-	/* nand cmd control */
-	nand->cmd_ctrl = omap_hwcontrol;
-
-	/* Dont do a bbt scan at the start */
-	nand->options |= NAND_SKIP_BBTSCAN;
-
-	/* State my controller */
-	nand->controller = &oinfo->controller;
-
-	/* if a different placement scheme is requested */
-	if (pdata->oob)
-		nand->ecc.layout = pdata->oob;
-
-#ifdef CONFIG_NAND_OMAP_GPMC_HWECC
-	if (pdata->plat_options & NAND_HWECC_ENABLE) {
-		/* Program how many columns we expect+
-		 * enable the cs we want and enable the engine
-		 */
-		oinfo->ecc_config = (pdata->cs << 1) |
-		    ((nand->options & NAND_BUSWIDTH_16) ?
-		     (0x1 << 7) : 0x0) | 0x1;
-		nand->ecc.hwctl = omap_enable_hwecc;
-		nand->ecc.calculate = omap_calculate_ecc;
-		nand->ecc.correct = omap_correct_data;
-		nand->ecc.mode = NAND_ECC_HW;
-		nand->ecc.size = 512;
-		nand->ecc.bytes = 3;
-		nand->ecc.steps = nand->ecc.layout->eccbytes / nand->ecc.bytes;
-		oinfo->ecc_parity_pairs = 12;
-	} else
-#endif
-		nand->ecc.mode = NAND_ECC_SOFT;
-
-	/* All information is ready.. now lets call setup, if present */
-	if (pdata->nand_setup) {
-		err = pdata->nand_setup(pdata);
-		if (err) {
-			gpmcnand_err("pdataform setup failed\n");
-			goto out_release_mem;
-		}
-	}
-	/* Remove write protection */
-	gpmc_nand_wp(oinfo, 0);
-
-	/* we do not know what state of device we have is, so
-	 * Send a reset to the device
-	 * 8 bit write will work on 16 and 8 bit devices
-	 */
-	writeb(NAND_CMD_RESET, oinfo->gpmc_command);
-	mdelay(1);
-
-	/* In normal mode, we scan to get just the device
-	 * presence and then to get the device geometry
-	 */
-	if (nand_scan(minfo, 1)) {
-		gpmcnand_err("device scan failed\n");
-		err = -ENXIO;
-		goto out_release_mem;
-	}
-
-	/* We are all set to register with the system now! */
-	err = add_mtd_device(minfo);
-	if (err) {
-		gpmcnand_err("device registration failed\n");
-		goto out_release_mem;
-	}
-	return 0;
-
-out_release_mem:
-	if (oinfo)
-		free(oinfo);
-
-	gpmcnand_err("Failed!!\n");
-	return err;
-}
-
-/** GMPC nand driver -> device registered by platforms */
-static struct driver_d gpmc_nand_driver = {
-	.name = "gpmc_nand",
-	.probe = gpmc_nand_probe,
-};
-
-static int gpmc_nand_init(void)
-{
-	return register_driver(&gpmc_nand_driver);
-}
-
-device_initcall(gpmc_nand_init);
diff --git a/drivers/nand/nand_s3c2410.c b/drivers/nand/nand_s3c2410.c
deleted file mode 100644
index b989583..0000000
--- a/drivers/nand/nand_s3c2410.c
+++ /dev/null
@@ -1,525 +0,0 @@
-/* linux/drivers/mtd/nand/s3c2410.c
- *
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
- *
- * Copyright �� 2004-2008 Simtec Electronics
- *	http://armlinux.simtec.co.uk/
- *	Ben Dooks <ben@simtec.co.uk>
- *
- * Samsung S3C2410 NAND driver
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
-
-#include <config.h>
-#include <common.h>
-#include <driver.h>
-#include <malloc.h>
-#include <init.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <mach/s3c24xx-generic.h>
-#include <mach/s3c24x0-iomap.h>
-#include <mach/s3c24x0-nand.h>
-#include <asm/io.h>
-#include <asm-generic/errno.h>
-
-#ifdef CONFIG_S3C24XX_NAND_BOOT
-# define __nand_boot_init __bare_init
-# ifndef BOARD_DEFAULT_NAND_TIMING
-#  define BOARD_DEFAULT_NAND_TIMING 0x0737
-# endif
-#else
-# define __nand_boot_init
-#endif
-
-/**
- * Define this symbol for testing purpose. It will add a command to read an
- * image from the NAND like it the boot strap code will do.
- */
-#define CONFIG_NAND_S3C24XX_BOOT_DEBUG
-
-/* NAND controller's register */
-
-#define NFCONF 0x00
-
-#ifdef CONFIG_CPU_S3C2410
-
-#define NFCMD 0x04
-#define NFADDR 0x08
-#define NFDATA 0x0c
-#define NFSTAT 0x10
-#define NFECC 0x14
-
-/* S3C2410 specific bits */
-#define NFSTAT_BUSY (1)
-#define NFCONF_nFCE (1 << 11)
-#define NFCONF_INITECC (1 << 12)
-#define NFCONF_EN (1 << 15)
-
-#endif	/* CONFIG_CPU_S3C2410 */
-
-#ifdef CONFIG_CPU_S3C2440
-
-#define NFCONT 0x04
-#define NFCMD 0x08
-#define NFADDR 0x0C
-#define NFDATA 0x10
-
-#define NFECC 0x1C
-#define NFSTAT 0x20
-
-/* S3C2440 specific bits */
-#define NFSTAT_BUSY (1)
-#define NFCONT_nFCE (1 << 1)
-#define NFCONF_INITECC (1 << 12)
-#define NFCONT_EN (1)
-
-#endif	/* CONFIG_CPU_S3C2440 */
-
-
-struct s3c24x0_nand_host {
-	struct mtd_info		mtd;
-	struct nand_chip	nand;
-	struct mtd_partition	*parts;
-	struct device_d		*dev;
-
-	unsigned long		base;
-};
-
-/**
- * oob placement block for use with hardware ecc generation
- */
-static struct nand_ecclayout nand_hw_eccoob = {
-	.eccbytes = 3,
-	.eccpos = { 0, 1, 2},
-	.oobfree = {
-		{
-			.offset = 8,
-			.length = 8
-		}
-	}
-};
-
-/* - Functions shared between the boot strap code and the regular driver - */
-
-/**
- * Issue the specified command to the NAND device
- * @param[in] host Base address of the NAND controller
- * @param[in] cmd Command for NAND flash
- */
-static void __nand_boot_init send_cmd(unsigned long host, uint8_t cmd)
-{
-	writeb(cmd, host + NFCMD);
-}
-
-/**
- * Issue the specified address to the NAND device
- * @param[in] host Base address of the NAND controller
- * @param[in] addr Address for the NAND flash
- */
-static void __nand_boot_init send_addr(unsigned long host, uint8_t addr)
-{
-	writeb(addr, host + NFADDR);
-}
-
-/**
- * Enable the NAND flash access
- * @param[in] host Base address of the NAND controller
- */
-static void __nand_boot_init enable_cs(unsigned long host)
-{
-#ifdef CONFIG_CPU_S3C2410
-	writew(readw(host + NFCONF) & ~NFCONF_nFCE, host + NFCONF);
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	writew(readw(host + NFCONT) & ~NFCONT_nFCE, host + NFCONT);
-#endif
-}
-
-/**
- * Disable the NAND flash access
- * @param[in] host Base address of the NAND controller
- */
-static void __nand_boot_init disable_cs(unsigned long host)
-{
-#ifdef CONFIG_CPU_S3C2410
-	writew(readw(host + NFCONF) | NFCONF_nFCE, host + NFCONF);
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	writew(readw(host + NFCONT) | NFCONT_nFCE, host + NFCONT);
-#endif
-}
-
-/**
- * Enable the NAND flash controller
- * @param[in] host Base address of the NAND controller
- * @param[in] timing Timing to access the NAND memory
- */
-static void __nand_boot_init enable_nand_controller(unsigned long host, uint32_t timing)
-{
-#ifdef CONFIG_CPU_S3C2410
-	writew(timing + NFCONF_EN + NFCONF_nFCE, host + NFCONF);
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	writew(NFCONT_EN + NFCONT_nFCE, host + NFCONT);
-	writew(timing, host + NFCONF);
-#endif
-}
-
-/**
- * Diable the NAND flash controller
- * @param[in] host Base address of the NAND controller
- */
-static void __nand_boot_init disable_nand_controller(unsigned long host)
-{
-#ifdef CONFIG_CPU_S3C2410
-	writew(NFCONF_nFCE, host + NFCONF);
-#endif
-#ifdef CONFIG_CPU_S3C2440
-	writew(NFCONT_nFCE, host + NFCONT);
-#endif
-}
-
-/* ----------------------------------------------------------------------- */
-
-/**
- * Check the ECC and try to repair the data if possible
- * @param[in] mtd_info FIXME
- * @param[inout] dat Pointer to the data buffer that might contain a bit error
- * @param[in] read_ecc ECC data from the OOB space
- * @param[in] calc_ecc ECC data calculated from the data
- * @return 0 no error, 1 repaired error, -1 no way...
- *
- * @note: Alsways 512 byte of data
- */
-static int s3c2410_nand_correct_data(struct mtd_info *mtd, uint8_t *dat,
-				uint8_t *read_ecc, uint8_t *calc_ecc)
-{
-	unsigned int diff0, diff1, diff2;
-	unsigned int bit, byte;
-
-	diff0 = read_ecc[0] ^ calc_ecc[0];
-	diff1 = read_ecc[1] ^ calc_ecc[1];
-	diff2 = read_ecc[2] ^ calc_ecc[2];
-
-	if (diff0 == 0 && diff1 == 0 && diff2 == 0)
-		return 0;		/* ECC is ok */
-
-	/* sometimes people do not think about using the ECC, so check
-	 * to see if we have an 0xff,0xff,0xff read ECC and then ignore
-	 * the error, on the assumption that this is an un-eccd page.
-	 */
-	if (read_ecc[0] == 0xff && read_ecc[1] == 0xff && read_ecc[2] == 0xff
-		/* && info->platform->ignore_unset_ecc */)
-		return 0;
-
-	/* Can we correct this ECC (ie, one row and column change).
-	 * Note, this is similar to the 256 error code on smartmedia */
-
-	if (((diff0 ^ (diff0 >> 1)) & 0x55) == 0x55 &&
-	    ((diff1 ^ (diff1 >> 1)) & 0x55) == 0x55 &&
-	    ((diff2 ^ (diff2 >> 1)) & 0x55) == 0x55) {
-		/* calculate the bit position of the error */
-
-		bit  = ((diff2 >> 3) & 1) |
-		       ((diff2 >> 4) & 2) |
-		       ((diff2 >> 5) & 4);
-
-		/* calculate the byte position of the error */
-
-		byte = ((diff2 << 7) & 0x100) |
-		       ((diff1 << 0) & 0x80)  |
-		       ((diff1 << 1) & 0x40)  |
-		       ((diff1 << 2) & 0x20)  |
-		       ((diff1 << 3) & 0x10)  |
-		       ((diff0 >> 4) & 0x08)  |
-		       ((diff0 >> 3) & 0x04)  |
-		       ((diff0 >> 2) & 0x02)  |
-		       ((diff0 >> 1) & 0x01);
-
-		dat[byte] ^= (1 << bit);
-		return 1;
-	}
-
-	/* if there is only one bit difference in the ECC, then
-	 * one of only a row or column parity has changed, which
-	 * means the error is most probably in the ECC itself */
-
-	diff0 |= (diff1 << 8);
-	diff0 |= (diff2 << 16);
-
-	if ((diff0 & ~(1<<fls(diff0))) == 0)
-		return 1;
-
-	return -1;
-}
-
-static void s3c2410_nand_enable_hwecc(struct mtd_info *mtd, int mode)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct s3c24x0_nand_host *host = nand_chip->priv;
-
-	writel(readl(host->base + NFCONF) | NFCONF_INITECC , host->base + NFCONF);
-}
-
-static int s3c2410_nand_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat, uint8_t *ecc_code)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct s3c24x0_nand_host *host = nand_chip->priv;
-
-	ecc_code[0] = readb(host->base + NFECC);
-	ecc_code[1] = readb(host->base + NFECC + 1);
-	ecc_code[2] = readb(host->base + NFECC + 2);
-
-	return 0;
-}
-
-static void s3c24x0_nand_select_chip(struct mtd_info *mtd, int chip)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct s3c24x0_nand_host *host = nand_chip->priv;
-
-	if (chip == -1)
-		disable_cs(host->base);
-	else
-		enable_cs(host->base);
-}
-
-static int s3c24x0_nand_devready(struct mtd_info *mtd)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct s3c24x0_nand_host *host = nand_chip->priv;
-
-	return readw(host->base + NFSTAT) & NFSTAT_BUSY;
-}
-
-static void s3c24x0_nand_hwcontrol(struct mtd_info *mtd, int cmd,
-					unsigned int ctrl)
-{
-	struct nand_chip *nand_chip = mtd->priv;
-	struct s3c24x0_nand_host *host = nand_chip->priv;
-
-	if (cmd == NAND_CMD_NONE)
-		return;
-	/*
-	* If the CLE should be active, this call is a NAND command
-	*/
-	if (ctrl & NAND_CLE)
-		send_cmd(host->base, cmd);
-	/*
-	* If the ALE should be active, this call is a NAND address
-	*/
-	if (ctrl & NAND_ALE)
-		send_addr(host->base, cmd);
-}
-
-static int s3c24x0_nand_inithw(struct s3c24x0_nand_host *host)
-{
-	struct s3c24x0_nand_platform_data *pdata = host->dev->platform_data;
-	uint32_t tmp;
-
-	/* reset the NAND controller */
-	disable_nand_controller(host->base);
-
-	if (pdata != NULL)
-		tmp = pdata->nand_timing;
-	else
-		/* else slowest possible timing */
-		tmp = CALC_NFCONF_TIMING(4, 8, 8);
-
-	/* reenable the NAND controller */
-	enable_nand_controller(host->base, tmp);
-
-	return 0;
-}
-
-static int s3c24x0_nand_probe(struct device_d *dev)
-{
-	struct nand_chip *chip;
-	struct mtd_info *mtd;
-	struct s3c24x0_nand_host *host;
-	int ret;
-
-	/* Allocate memory for MTD device structure and private data */
-	host = kzalloc(sizeof(struct s3c24x0_nand_host), GFP_KERNEL);
-	if (!host)
-		return -ENOMEM;
-
-	host->dev = dev;
-	host->base = dev->map_base;
-
-	/* structures must be linked */
-	chip = &host->nand;
-	mtd = &host->mtd;
-	mtd->priv = chip;
-
-	/* init the default settings */
-#if 0
-	/* TODO: Will follow later */
-	init_nand_chip_bw8(chip);
-#endif
-	/* 50 us command delay time */
-	chip->chip_delay = 50;
-	chip->priv = host;
-
-	chip->IO_ADDR_R = chip->IO_ADDR_W = (void*)(dev->map_base + NFDATA);
-
-	chip->cmd_ctrl = s3c24x0_nand_hwcontrol;
-	chip->dev_ready = s3c24x0_nand_devready;
-	chip->select_chip = s3c24x0_nand_select_chip;
-
-	/* we are using the hardware ECC feature of this device */
-	chip->ecc.calculate = s3c2410_nand_calculate_ecc;
-	chip->ecc.correct = s3c2410_nand_correct_data;
-	chip->ecc.hwctl = s3c2410_nand_enable_hwecc;
-	chip->ecc.calculate = s3c2410_nand_calculate_ecc;
-
-	/* our hardware capabilities */
-	chip->ecc.mode = NAND_ECC_HW;
-	chip->ecc.size = 512;
-	chip->ecc.bytes = 3;
-	chip->ecc.layout = &nand_hw_eccoob;
-
-	ret = s3c24x0_nand_inithw(host);
-	if (ret != 0)
-		goto on_error;
-
-	/* Scan to find existence of the device */
-	ret = nand_scan(mtd, 1);
-	if (ret != 0) {
-		ret = -ENXIO;
-		goto on_error;
-	}
-
-	return add_mtd_device(mtd);
-	
-on_error:
-	free(host);
-	return ret;
-}
-
-static struct driver_d s3c24x0_nand_driver = {
-	.name  = "s3c24x0_nand",
-	.probe = s3c24x0_nand_probe,
-};
-
-#ifdef CONFIG_S3C24XX_NAND_BOOT
-
-static void __nand_boot_init wait_for_completion(unsigned long host)
-{
-	while (!(readw(host + NFSTAT) & NFSTAT_BUSY))
-		;
-}
-
-static void __nand_boot_init nfc_addr(unsigned long host, uint32_t offs)
-{
-	send_addr(host, offs & 0xff);
-	send_addr(host, (offs >> 9) & 0xff);
-	send_addr(host, (offs >> 17) & 0xff);
-	send_addr(host, (offs >> 25) & 0xff);
-}
-
-/**
- * Load a sequential count of blocks from the NAND into memory
- * @param[out] dest Pointer to target area (in SDRAM)
- * @param[in] size Bytes to read from NAND device
- * @param[in] page Start page to read from
- * @param[in] pagesize Size of each page in the NAND
- *
- * This function must be located in the first 4kiB of the barebox image
- * (guess why). When this routine is running the SDRAM is up and running
- * and it runs from the correct address (physical=linked address).
- * TODO Could we access the platform data from the boardfile?
- * Due to it makes no sense this function does not return in case of failure.
- */
-void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page, int pagesize)
-{
-	unsigned long host = S3C24X0_NAND_BASE;
-	int i;
-
-	/*
-	 * Reenable the NFC and use the default (but slow) access
-	 * timing or the board specific setting if provided.
-	 */
-	enable_nand_controller(host, BOARD_DEFAULT_NAND_TIMING);
-	enable_cs(host);
-
-	/* Reset the NAND device */
-	send_cmd(host, NAND_CMD_RESET);
-	wait_for_completion(host);
-	disable_cs(host);
-
-	do {
-		enable_cs(host);
-		send_cmd(host, NAND_CMD_READ0);
-		nfc_addr(host, page * pagesize);
-		wait_for_completion(host);
-		/* copy one page (do *not* use readsb() here!)*/
-		for (i = 0; i < pagesize; i++)
-			writeb(readb(host + NFDATA), (unsigned long)(dest + i));
-		disable_cs(host);
-
-		page++;
-		dest += pagesize;
-		size -= pagesize;
-	} while (size >= 0);
-
-	/* disable the controller again */
-	disable_nand_controller(host);
-}
-
-#ifdef CONFIG_NAND_S3C24XX_BOOT_DEBUG
-#include <command.h>
-
-static int do_nand_boot_test(struct command *cmdtp, int argc, char *argv[])
-{
-	void *dest;
-	int size, pagesize;
-
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
-
-	dest = (void *)strtoul_suffix(argv[1], NULL, 0);
-	size = strtoul_suffix(argv[2], NULL, 0);
-	pagesize = strtoul_suffix(argv[3], NULL, 0);
-
-	s3c24x0_nand_load_image(dest, size, 0, pagesize);
-
-	return 0;
-}
-
-static const __maybe_unused char cmd_nand_boot_test_help[] =
-"Usage: nand_boot_test <dest> <size> <pagesize>\n";
-
-BAREBOX_CMD_START(nand_boot_test)
-	.cmd		= do_nand_boot_test,
-	.usage		= "load an image from NAND",
-	BAREBOX_CMD_HELP(cmd_nand_boot_test_help)
-BAREBOX_CMD_END
-#endif
-
-#endif /* CONFIG_S3C24XX_NAND_BOOT */
-
-/*
- * Main initialization routine
- * @return 0 if successful; non-zero otherwise
- */
-static int __init s3c24x0_nand_init(void)
-{
-	return register_driver(&s3c24x0_nand_driver);
-}
-
-device_initcall(s3c24x0_nand_init);
diff --git a/drivers/nand/nand_util.c b/drivers/nand/nand_util.c
deleted file mode 100644
index d57294e..0000000
--- a/drivers/nand/nand_util.c
+++ /dev/null
@@ -1,858 +0,0 @@
-/*
- * drivers/nand/nand_util.c
- *
- * Copyright (C) 2006 by Weiss-Electronic GmbH.
- * All rights reserved.
- *
- * @author:	Guido Classen <clagix@gmail.com>
- * @descr:	NAND Flash support
- * @references: borrowed heavily from Linux mtd-utils code:
- *		flash_eraseall.c by Arcom Control System Ltd
- *		nandwrite.c by Steven J. Hill (sjhill@realitydiluted.com)
- *			       and Thomas Gleixner (tglx@linutronix.de)
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version
- * 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-
-#include <common.h>
-#include <command.h>
-#include <watchdog.h>
-#include <malloc.h>
-
-#include <nand.h>
-//#include <jffs2/jffs2.h>
-
-typedef struct erase_info erase_info_t;
-typedef struct mtd_info	  mtd_info_t;
-
-/* support only for native endian JFFS2 */
-#define cpu_to_je16(x) (x)
-#define cpu_to_je32(x) (x)
-
-/*****************************************************************************/
-static int nand_block_bad_scrub(struct mtd_info *mtd, loff_t ofs, int getchip)
-{
-	return 0;
-}
-
-/**
- * nand_erase_opts: - erase NAND flash with support for various options
- *		      (jffs2 formating)
- *
- * @param meminfo	NAND device to erase
- * @param opts		options,  @see struct nand_erase_options
- * @return		0 in case of success
- *
- * This code is ported from flash_eraseall.c from Linux mtd utils by
- * Arcom Control System Ltd.
- */
-int nand_erase_opts(nand_info_t *meminfo, const nand_erase_options_t *opts)
-{
-	struct jffs2_unknown_node cleanmarker;
-	int clmpos = 0;
-	int clmlen = 8;
-	erase_info_t erase;
-	ulong erase_length;
-	int isNAND;
-	int bbtest = 1;
-	int result;
-	int percent_complete = -1;
-	int (*nand_block_bad_old)(struct mtd_info *, loff_t, int) = NULL;
-	const char *mtd_device = meminfo->name;
-
-	memset(&erase, 0, sizeof(erase));
-
-	erase.mtd = meminfo;
-	erase.len  = meminfo->erasesize;
-	erase.addr = opts->offset;
-	erase_length = opts->length;
-
-	isNAND = meminfo->type == MTD_NANDFLASH ? 1 : 0;
-
-	if (opts->jffs2) {
-		cleanmarker.magic = cpu_to_je16 (JFFS2_MAGIC_BITMASK);
-		cleanmarker.nodetype = cpu_to_je16 (JFFS2_NODETYPE_CLEANMARKER);
-		if (isNAND) {
-			struct nand_oobinfo *oobinfo = &meminfo->oobinfo;
-
-			/* check for autoplacement */
-			if (oobinfo->useecc == MTD_NANDECC_AUTOPLACE) {
-				/* get the position of the free bytes */
-				if (!oobinfo->oobfree[0][1]) {
-					printf(" Eeep. Autoplacement selected "
-					       "and no empty space in oob\n");
-					return -1;
-				}
-				clmpos = oobinfo->oobfree[0][0];
-				clmlen = oobinfo->oobfree[0][1];
-				if (clmlen > 8)
-					clmlen = 8;
-			} else {
-				/* legacy mode */
-				switch (meminfo->oobsize) {
-				case 8:
-					clmpos = 6;
-					clmlen = 2;
-					break;
-				case 16:
-					clmpos = 8;
-					clmlen = 8;
-					break;
-				case 64:
-					clmpos = 16;
-					clmlen = 8;
-					break;
-				}
-			}
-
-			cleanmarker.totlen = cpu_to_je32(8);
-		} else {
-			cleanmarker.totlen =
-				cpu_to_je32(sizeof(struct jffs2_unknown_node));
-		}
-		cleanmarker.hdr_crc =  cpu_to_je32(
-			crc32_no_comp(0, (unsigned char *) &cleanmarker,
-				      sizeof(struct jffs2_unknown_node) - 4));
-	}
-
-	/* scrub option allows to erase badblock. To prevent internal
-	 * check from erase() method, set block check method to dummy
-	 * and disable bad block table while erasing.
-	 */
-	if (opts->scrub) {
-		struct nand_chip *priv_nand = meminfo->priv;
-
-		nand_block_bad_old = priv_nand->block_bad;
-		priv_nand->block_bad = nand_block_bad_scrub;
-		/* we don't need the bad block table anymore...
-		 * after scrub, there are no bad blocks left!
-		 */
-		if (priv_nand->bbt) {
-			kfree(priv_nand->bbt);
-		}
-		priv_nand->bbt = NULL;
-	}
-
-	for (;
-	     erase.addr < opts->offset + erase_length;
-	     erase.addr += meminfo->erasesize) {
-
-		WATCHDOG_RESET ();
-
-		if (!opts->scrub && bbtest) {
-			int ret = meminfo->block_isbad(meminfo, erase.addr);
-			if (ret > 0) {
-				if (!opts->quiet)
-					printf("\rSkipping bad block at  "
-					       "0x%08x                   "
-					       "                         \n",
-					       erase.addr);
-				continue;
-
-			} else if (ret < 0) {
-				printf("\n%s: MTD get bad block failed: %d\n",
-				       mtd_device,
-				       ret);
-				return -1;
-			}
-		}
-
-		result = meminfo->erase(meminfo, &erase);
-		if (result != 0) {
-			printf("\n%s: MTD Erase failure: %d\n",
-			       mtd_device, result);
-			continue;
-		}
-
-		/* format for JFFS2 ? */
-		if (opts->jffs2) {
-
-			/* write cleanmarker */
-			if (isNAND) {
-				size_t written;
-				result = meminfo->write_oob(meminfo,
-							    erase.addr + clmpos,
-							    clmlen,
-							    &written,
-							    (unsigned char *)
-							    &cleanmarker);
-				if (result != 0) {
-					printf("\n%s: MTD writeoob failure: %d\n",
-					       mtd_device, result);
-					continue;
-				}
-			} else {
-				printf("\n%s: this erase routine only supports"
-				       " NAND devices!\n",
-				       mtd_device);
-			}
-		}
-
-		if (!opts->quiet) {
-			int percent = (int)
-				((unsigned long long)
-				 (erase.addr+meminfo->erasesize-opts->offset)
-				 * 100 / erase_length);
-
-			/* output progress message only at whole percent
-			 * steps to reduce the number of messages printed
-			 * on (slow) serial consoles
-			 */
-			if (percent != percent_complete) {
-				percent_complete = percent;
-
-				printf("\rErasing at 0x%x -- %3d%% complete.",
-				       erase.addr, percent);
-
-				if (opts->jffs2 && result == 0)
-					printf(" Cleanmarker written at 0x%x.",
-					       erase.addr);
-			}
-		}
-	}
-	if (!opts->quiet)
-		printf("\n");
-
-	if (nand_block_bad_old) {
-		struct nand_chip *priv_nand = meminfo->priv;
-
-		priv_nand->block_bad = nand_block_bad_old;
-		priv_nand->scan_bbt(meminfo);
-	}
-
-	return 0;
-}
-
-#define MAX_PAGE_SIZE	2048
-#define MAX_OOB_SIZE	64
-
-/*
- * buffer array used for writing data
- */
-static unsigned char data_buf[MAX_PAGE_SIZE];
-static unsigned char oob_buf[MAX_OOB_SIZE];
-
-/* OOB layouts to pass into the kernel as default */
-static struct nand_oobinfo none_oobinfo = {
-	.useecc = MTD_NANDECC_OFF,
-};
-
-static struct nand_oobinfo jffs2_oobinfo = {
-	.useecc = MTD_NANDECC_PLACE,
-	.eccbytes = 6,
-	.eccpos = { 0, 1, 2, 3, 6, 7 }
-};
-
-static struct nand_oobinfo yaffs_oobinfo = {
-	.useecc = MTD_NANDECC_PLACE,
-	.eccbytes = 6,
-	.eccpos = { 8, 9, 10, 13, 14, 15}
-};
-
-static struct nand_oobinfo autoplace_oobinfo = {
-	.useecc = MTD_NANDECC_AUTOPLACE
-};
-
-/**
- * nand_write_opts: - write image to NAND flash with support for various options
- *
- * @param meminfo	NAND device to erase
- * @param opts		write options (@see nand_write_options)
- * @return		0 in case of success
- *
- * This code is ported from nandwrite.c from Linux mtd utils by
- * Steven J. Hill and Thomas Gleixner.
- */
-int nand_write_opts(nand_info_t *meminfo, const nand_write_options_t *opts)
-{
-	int imglen = 0;
-	int pagelen;
-	int baderaseblock;
-	int blockstart = -1;
-	loff_t offs;
-	int readlen;
-	int oobinfochanged = 0;
-	int percent_complete = -1;
-	struct nand_oobinfo old_oobinfo;
-	ulong mtdoffset = opts->offset;
-	ulong erasesize_blockalign;
-	u_char *buffer = opts->buffer;
-	size_t written;
-	int result;
-
-	if (opts->pad && opts->writeoob) {
-		printf("Can't pad when oob data is present.\n");
-		return -1;
-	}
-
-	/* set erasesize to specified number of blocks - to match
-	 * jffs2 (virtual) block size */
-	if (opts->blockalign == 0) {
-		erasesize_blockalign = meminfo->erasesize;
-	} else {
-		erasesize_blockalign = meminfo->erasesize * opts->blockalign;
-	}
-
-	/* make sure device page sizes are valid */
-	if (!(meminfo->oobsize == 16 && meminfo->oobblock == 512)
-	    && !(meminfo->oobsize == 8 && meminfo->oobblock == 256)
-	    && !(meminfo->oobsize == 64 && meminfo->oobblock == 2048)) {
-		printf("Unknown flash (not normal NAND)\n");
-		return -1;
-	}
-
-	/* read the current oob info */
-	memcpy(&old_oobinfo, &meminfo->oobinfo, sizeof(old_oobinfo));
-
-	/* write without ecc? */
-	if (opts->noecc) {
-		memcpy(&meminfo->oobinfo, &none_oobinfo,
-		       sizeof(meminfo->oobinfo));
-		oobinfochanged = 1;
-	}
-
-	/* autoplace ECC? */
-	if (opts->autoplace && (old_oobinfo.useecc != MTD_NANDECC_AUTOPLACE)) {
-
-		memcpy(&meminfo->oobinfo, &autoplace_oobinfo,
-		       sizeof(meminfo->oobinfo));
-		oobinfochanged = 1;
-	}
-
-	/* force OOB layout for jffs2 or yaffs? */
-	if (opts->forcejffs2 || opts->forceyaffs) {
-		struct nand_oobinfo *oobsel =
-			opts->forcejffs2 ? &jffs2_oobinfo : &yaffs_oobinfo;
-
-		if (meminfo->oobsize == 8) {
-			if (opts->forceyaffs) {
-				printf("YAFSS cannot operate on "
-				       "256 Byte page size\n");
-				goto restoreoob;
-			}
-			/* Adjust number of ecc bytes */
-			jffs2_oobinfo.eccbytes = 3;
-		}
-
-		memcpy(&meminfo->oobinfo, oobsel, sizeof(meminfo->oobinfo));
-	}
-
-	/* get image length */
-	imglen = opts->length;
-	pagelen = meminfo->oobblock
-		+ ((opts->writeoob != 0) ? meminfo->oobsize : 0);
-
-	/* check, if file is pagealigned */
-	if ((!opts->pad) && ((imglen % pagelen) != 0)) {
-		printf("Input block length is not page aligned\n");
-		goto restoreoob;
-	}
-
-	/* check, if length fits into device */
-	if (((imglen / pagelen) * meminfo->oobblock)
-	     > (meminfo->size - opts->offset)) {
-		printf("Image %d bytes, NAND page %d bytes, "
-		       "OOB area %u bytes, device size %u bytes\n",
-		       imglen, pagelen, meminfo->oobblock, meminfo->size);
-		printf("Input block does not fit into device\n");
-		goto restoreoob;
-	}
-
-	if (!opts->quiet)
-		printf("\n");
-
-	/* get data from input and write to the device */
-	while (imglen && (mtdoffset < meminfo->size)) {
-
-		WATCHDOG_RESET ();
-
-		/*
-		 * new eraseblock, check for bad block(s). Stay in the
-		 * loop to be sure if the offset changes because of
-		 * a bad block, that the next block that will be
-		 * written to is also checked. Thus avoiding errors if
-		 * the block(s) after the skipped block(s) is also bad
-		 * (number of blocks depending on the blockalign
-		 */
-		while (blockstart != (mtdoffset & (~erasesize_blockalign+1))) {
-			blockstart = mtdoffset & (~erasesize_blockalign+1);
-			offs = blockstart;
-			baderaseblock = 0;
-
-			/* check all the blocks in an erase block for
-			 * bad blocks */
-			do {
-				int ret = meminfo->block_isbad(meminfo, offs);
-
-				if (ret < 0) {
-					printf("Bad block check failed\n");
-					goto restoreoob;
-				}
-				if (ret == 1) {
-					baderaseblock = 1;
-					if (!opts->quiet)
-						printf("\rBad block at 0x%lx "
-						       "in erase block from "
-						       "0x%x will be skipped\n",
-						       (long) offs,
-						       blockstart);
-				}
-
-				if (baderaseblock) {
-					mtdoffset = blockstart
-						+ erasesize_blockalign;
-				}
-				offs +=	 erasesize_blockalign
-					/ opts->blockalign;
-			} while (offs < blockstart + erasesize_blockalign);
-		}
-
-		readlen = meminfo->oobblock;
-		if (opts->pad && (imglen < readlen)) {
-			readlen = imglen;
-			memset(data_buf + readlen, 0xff,
-			       meminfo->oobblock - readlen);
-		}
-
-		/* read page data from input memory buffer */
-		memcpy(data_buf, buffer, readlen);
-		buffer += readlen;
-
-		if (opts->writeoob) {
-			/* read OOB data from input memory block, exit
-			 * on failure */
-			memcpy(oob_buf, buffer, meminfo->oobsize);
-			buffer += meminfo->oobsize;
-
-			/* write OOB data first, as ecc will be placed
-			 * in there*/
-			result = meminfo->write_oob(meminfo,
-						    mtdoffset,
-						    meminfo->oobsize,
-						    &written,
-						    (unsigned char *)
-						    &oob_buf);
-
-			if (result != 0) {
-				printf("\nMTD writeoob failure: %d\n",
-				       result);
-				goto restoreoob;
-			}
-			imglen -= meminfo->oobsize;
-		}
-
-		/* write out the page data */
-		result = meminfo->write(meminfo,
-					mtdoffset,
-					meminfo->oobblock,
-					&written,
-					(unsigned char *) &data_buf);
-
-		if (result != 0) {
-			printf("writing NAND page at offset 0x%lx failed\n",
-			       mtdoffset);
-			goto restoreoob;
-		}
-		imglen -= readlen;
-
-		if (!opts->quiet) {
-			int percent = (int)
-				((unsigned long long)
-				 (opts->length-imglen) * 100
-				 / opts->length);
-			/* output progress message only at whole percent
-			 * steps to reduce the number of messages printed
-			 * on (slow) serial consoles
-			 */
-			if (percent != percent_complete) {
-				printf("\rWriting data at 0x%x "
-				       "-- %3d%% complete.",
-				       mtdoffset, percent);
-				percent_complete = percent;
-			}
-		}
-
-		mtdoffset += meminfo->oobblock;
-	}
-
-	if (!opts->quiet)
-		printf("\n");
-
-restoreoob:
-	if (oobinfochanged) {
-		memcpy(&meminfo->oobinfo, &old_oobinfo,
-		       sizeof(meminfo->oobinfo));
-	}
-
-	if (imglen > 0) {
-		printf("Data did not fit into device, due to bad blocks\n");
-		return -1;
-	}
-
-	/* return happy */
-	return 0;
-}
-
-/**
- * nand_read_opts: - read image from NAND flash with support for various options
- *
- * @param meminfo	NAND device to erase
- * @param opts		read options (@see struct nand_read_options)
- * @return		0 in case of success
- *
- */
-int nand_read_opts(nand_info_t *meminfo, const nand_read_options_t *opts)
-{
-	int imglen = opts->length;
-	int pagelen;
-	int baderaseblock;
-	int blockstart = -1;
-	int percent_complete = -1;
-	loff_t offs;
-	size_t readlen;
-	ulong mtdoffset = opts->offset;
-	u_char *buffer = opts->buffer;
-	int result;
-
-	/* make sure device page sizes are valid */
-	if (!(meminfo->oobsize == 16 && meminfo->oobblock == 512)
-	    && !(meminfo->oobsize == 8 && meminfo->oobblock == 256)
-	    && !(meminfo->oobsize == 64 && meminfo->oobblock == 2048)) {
-		printf("Unknown flash (not normal NAND)\n");
-		return -1;
-	}
-
-	pagelen = meminfo->oobblock
-		+ ((opts->readoob != 0) ? meminfo->oobsize : 0);
-
-	/* check, if length is not larger than device */
-	if (((imglen / pagelen) * meminfo->oobblock)
-	     > (meminfo->size - opts->offset)) {
-		printf("Image %d bytes, NAND page %d bytes, "
-		       "OOB area %u bytes, device size %u bytes\n",
-		       imglen, pagelen, meminfo->oobblock, meminfo->size);
-		printf("Input block is larger than device\n");
-		return -1;
-	}
-
-	if (!opts->quiet)
-		printf("\n");
-
-	/* get data from input and write to the device */
-	while (imglen && (mtdoffset < meminfo->size)) {
-
-		WATCHDOG_RESET ();
-
-		/*
-		 * new eraseblock, check for bad block(s). Stay in the
-		 * loop to be sure if the offset changes because of
-		 * a bad block, that the next block that will be
-		 * written to is also checked. Thus avoiding errors if
-		 * the block(s) after the skipped block(s) is also bad
-		 * (number of blocks depending on the blockalign
-		 */
-		while (blockstart != (mtdoffset & (~meminfo->erasesize+1))) {
-			blockstart = mtdoffset & (~meminfo->erasesize+1);
-			offs = blockstart;
-			baderaseblock = 0;
-
-			/* check all the blocks in an erase block for
-			 * bad blocks */
-			do {
-				int ret = meminfo->block_isbad(meminfo, offs);
-
-				if (ret < 0) {
-					printf("Bad block check failed\n");
-					return -1;
-				}
-				if (ret == 1) {
-					baderaseblock = 1;
-					if (!opts->quiet)
-						printf("\rBad block at 0x%lx "
-						       "in erase block from "
-						       "0x%x will be skipped\n",
-						       (long) offs,
-						       blockstart);
-				}
-
-				if (baderaseblock) {
-					mtdoffset = blockstart
-						+ meminfo->erasesize;
-				}
-				offs +=	 meminfo->erasesize;
-
-			} while (offs < blockstart + meminfo->erasesize);
-		}
-
-
-		/* read page data to memory buffer */
-		result = meminfo->read(meminfo,
-				       mtdoffset,
-				       meminfo->oobblock,
-				       &readlen,
-				       (unsigned char *) &data_buf);
-
-		if (result != 0) {
-			printf("reading NAND page at offset 0x%lx failed\n",
-			       mtdoffset);
-			return -1;
-		}
-
-		if (imglen < readlen) {
-			readlen = imglen;
-		}
-
-		memcpy(buffer, data_buf, readlen);
-		buffer += readlen;
-		imglen -= readlen;
-
-		if (opts->readoob) {
-			result = meminfo->read_oob(meminfo,
-						   mtdoffset,
-						   meminfo->oobsize,
-						   &readlen,
-						   (unsigned char *)
-						   &oob_buf);
-
-			if (result != 0) {
-				printf("\nMTD readoob failure: %d\n",
-				       result);
-				return -1;
-			}
-
-
-			if (imglen < readlen) {
-				readlen = imglen;
-			}
-
-			memcpy(buffer, oob_buf, readlen);
-
-			buffer += readlen;
-			imglen -= readlen;
-		}
-
-		if (!opts->quiet) {
-			int percent = (int)
-				((unsigned long long)
-				 (opts->length-imglen) * 100
-				 / opts->length);
-			/* output progress message only at whole percent
-			 * steps to reduce the number of messages printed
-			 * on (slow) serial consoles
-			 */
-			if (percent != percent_complete) {
-			if (!opts->quiet)
-				printf("\rReading data from 0x%x "
-				       "-- %3d%% complete.",
-				       mtdoffset, percent);
-				percent_complete = percent;
-			}
-		}
-
-		mtdoffset += meminfo->oobblock;
-	}
-
-	if (!opts->quiet)
-		printf("\n");
-
-	if (imglen > 0) {
-		printf("Could not read entire image due to bad blocks\n");
-		return -1;
-	}
-
-	/* return happy */
-	return 0;
-}
-
-/******************************************************************************
- * Support for locking / unlocking operations of some NAND devices
- *****************************************************************************/
-
-#define NAND_CMD_LOCK		0x2a
-#define NAND_CMD_LOCK_TIGHT	0x2c
-#define NAND_CMD_UNLOCK1	0x23
-#define NAND_CMD_UNLOCK2	0x24
-#define NAND_CMD_LOCK_STATUS	0x7a
-
-/**
- * nand_lock: Set all pages of NAND flash chip to the LOCK or LOCK-TIGHT
- *	      state
- *
- * @param meminfo	nand mtd instance
- * @param tight		bring device in lock tight mode
- *
- * @return		0 on success, -1 in case of error
- *
- * The lock / lock-tight command only applies to the whole chip. To get some
- * parts of the chip lock and others unlocked use the following sequence:
- *
- * - Lock all pages of the chip using nand_lock(mtd, 0) (or the lockpre pin)
- * - Call nand_unlock() once for each consecutive area to be unlocked
- * - If desired: Bring the chip to the lock-tight state using nand_lock(mtd, 1)
- *
- *   If the device is in lock-tight state software can't change the
- *   current active lock/unlock state of all pages. nand_lock() / nand_unlock()
- *   calls will fail. It is only posible to leave lock-tight state by
- *   an hardware signal (low pulse on _WP pin) or by power down.
- */
-int nand_lock(nand_info_t *meminfo, int tight)
-{
-	int ret = 0;
-	int status;
-	struct nand_chip *this = meminfo->priv;
-
-	/* select the NAND device */
-	this->select_chip(meminfo, 0);
-
-	this->cmdfunc(meminfo,
-		      (tight ? NAND_CMD_LOCK_TIGHT : NAND_CMD_LOCK),
-		      -1, -1);
-
-	/* call wait ready function */
-	status = this->waitfunc(meminfo, this, FL_WRITING);
-
-	/* see if device thinks it succeeded */
-	if (status & 0x01) {
-		ret = -1;
-	}
-
-	/* de-select the NAND device */
-	this->select_chip(meminfo, -1);
-	return ret;
-}
-
-/**
- * nand_get_lock_status: - query current lock state from one page of NAND
- *			   flash
- *
- * @param meminfo	nand mtd instance
- * @param offset	page address to query (muss be page aligned!)
- *
- * @return		-1 in case of error
- *			>0 lock status:
- *			  bitfield with the following combinations:
- *			  NAND_LOCK_STATUS_TIGHT: page in tight state
- *			  NAND_LOCK_STATUS_LOCK:  page locked
- *			  NAND_LOCK_STATUS_UNLOCK: page unlocked
- *
- */
-int nand_get_lock_status(nand_info_t *meminfo, ulong offset)
-{
-	int ret = 0;
-	int chipnr;
-	int page;
-	struct nand_chip *this = meminfo->priv;
-
-	/* select the NAND device */
-	chipnr = (int)(offset >> this->chip_shift);
-	this->select_chip(meminfo, chipnr);
-
-
-	if ((offset & (meminfo->oobblock - 1)) != 0) {
-		printf ("nand_get_lock_status: "
-			"Start address must be beginning of "
-			"nand page!\n");
-		ret = -1;
-		goto out;
-	}
-
-	/* check the Lock Status */
-	page = (int)(offset >> this->page_shift);
-	this->cmdfunc(meminfo, NAND_CMD_LOCK_STATUS, -1, page & this->pagemask);
-
-	ret = this->read_byte(meminfo) & (NAND_LOCK_STATUS_TIGHT
-					  | NAND_LOCK_STATUS_LOCK
-					  | NAND_LOCK_STATUS_UNLOCK);
-
- out:
-	/* de-select the NAND device */
-	this->select_chip(meminfo, -1);
-	return ret;
-}
-
-/**
- * nand_unlock: - Unlock area of NAND pages
- *		  only one consecutive area can be unlocked at one time!
- *
- * @param meminfo	nand mtd instance
- * @param start		start byte address
- * @param length	number of bytes to unlock (must be a multiple of
- *			page size nand->oobblock)
- *
- * @return		0 on success, -1 in case of error
- */
-int nand_unlock(nand_info_t *meminfo, ulong start, ulong length)
-{
-	int ret = 0;
-	int chipnr;
-	int status;
-	int page;
-	struct nand_chip *this = meminfo->priv;
-	printf ("nand_unlock: start: %08x, length: %d!\n",
-		(int)start, (int)length);
-
-	/* select the NAND device */
-	chipnr = (int)(start >> this->chip_shift);
-	this->select_chip(meminfo, chipnr);
-
-	/* check the WP bit */
-	this->cmdfunc(meminfo, NAND_CMD_STATUS, -1, -1);
-	if ((this->read_byte(meminfo) & 0x80) == 0) {
-		printf ("nand_unlock: Device is write protected!\n");
-		ret = -1;
-		goto out;
-	}
-
-	if ((start & (meminfo->oobblock - 1)) != 0) {
-		printf ("nand_unlock: Start address must be beginning of "
-			"nand page!\n");
-		ret = -1;
-		goto out;
-	}
-
-	if (length == 0 || (length & (meminfo->oobblock - 1)) != 0) {
-		printf ("nand_unlock: Length must be a multiple of nand page "
-			"size!\n");
-		ret = -1;
-		goto out;
-	}
-
-	/* submit address of first page to unlock */
-	page = (int)(start >> this->page_shift);
-	this->cmdfunc(meminfo, NAND_CMD_UNLOCK1, -1, page & this->pagemask);
-
-	/* submit ADDRESS of LAST page to unlock */
-	page += (int)(length >> this->page_shift) - 1;
-	this->cmdfunc(meminfo, NAND_CMD_UNLOCK2, -1, page & this->pagemask);
-
-	/* call wait ready function */
-	status = this->waitfunc(meminfo, this, FL_WRITING);
-	/* see if device thinks it succeeded */
-	if (status & 0x01) {
-		/* there was an error */
-		ret = -1;
-		goto out;
-	}
-
- out:
-	/* de-select the NAND device */
-	this->select_chip(meminfo, -1);
-	return ret;
-}
-
-- 
1.7.1



--===============0114612343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0114612343==--
