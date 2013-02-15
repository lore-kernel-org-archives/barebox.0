Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6GI4-0001Sp-0T
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:05:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 09:04:59 +0100
Message-Id: <1360915499-1659-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
References: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] nor flash: integrate into mtd
To: barebox@lists.infradead.org

CFI Flash is currently handled outside the mtd layer which makes it
a special case. Integrate it into mtd so that we get rid of this
special status.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/edb93xx_defconfig                |    1 +
 arch/arm/configs/eukrea_cpuimx27_defconfig        |    1 +
 arch/arm/configs/freescale_mx51_babbage_defconfig |    1 +
 arch/arm/configs/mmccpu_defconfig                 |    1 +
 arch/arm/configs/mx21ads_defconfig                |    1 +
 arch/arm/configs/mx27ads_defconfig                |    1 +
 arch/arm/configs/netx_nxdb500_defconfig           |    1 +
 arch/arm/configs/pcm027_defconfig                 |    1 +
 arch/arm/configs/pm9263_defconfig                 |    1 +
 arch/arm/configs/scb9328_defconfig                |    1 +
 arch/blackfin/configs/ipe337_defconfig            |    1 +
 arch/nios2/configs/generic_defconfig              |    1 +
 arch/ppc/configs/pcm030_defconfig                 |    1 +
 drivers/Kconfig                                   |    1 -
 drivers/Makefile                                  |    1 -
 drivers/mtd/Kconfig                               |    1 +
 drivers/mtd/Makefile                              |    1 +
 drivers/mtd/nor/Kconfig                           |   55 ++
 drivers/mtd/nor/Makefile                          |    4 +
 drivers/mtd/nor/cfi_flash.c                       | 1000 ++++++++++++++++++++
 drivers/mtd/nor/cfi_flash.h                       |  730 ++++++++++++++
 drivers/mtd/nor/cfi_flash_amd.c                   |  268 ++++++
 drivers/mtd/nor/cfi_flash_intel.c                 |  173 ++++
 drivers/nor/Kconfig                               |   59 --
 drivers/nor/Makefile                              |    4 -
 drivers/nor/cfi_flash.c                           | 1044 ---------------------
 drivers/nor/cfi_flash.h                           |  731 ---------------
 drivers/nor/cfi_flash_amd.c                       |  268 ------
 drivers/nor/cfi_flash_intel.c                     |  173 ----
 29 files changed, 2245 insertions(+), 2281 deletions(-)
 create mode 100644 drivers/mtd/nor/Kconfig
 create mode 100644 drivers/mtd/nor/Makefile
 create mode 100644 drivers/mtd/nor/cfi_flash.c
 create mode 100644 drivers/mtd/nor/cfi_flash.h
 create mode 100644 drivers/mtd/nor/cfi_flash_amd.c
 create mode 100644 drivers/mtd/nor/cfi_flash_intel.c
 delete mode 100644 drivers/nor/Kconfig
 delete mode 100644 drivers/nor/Makefile
 delete mode 100644 drivers/nor/cfi_flash.c
 delete mode 100644 drivers/nor/cfi_flash.h
 delete mode 100644 drivers/nor/cfi_flash_amd.c
 delete mode 100644 drivers/nor/cfi_flash_intel.c

diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index 363e511..86b1040 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -30,4 +30,5 @@ CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_EP93XX=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 880941d..bd0c470 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -46,6 +46,7 @@ CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_LP3972=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_AMD is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
index 0817cfa..97963c1 100644
--- a/arch/arm/configs/freescale_mx51_babbage_defconfig
+++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
@@ -55,6 +55,7 @@ CONFIG_NET_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MCI=y
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index 334c5e8..0e6914f 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -34,5 +34,6 @@ CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index 28ad013..dbc2962 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -35,6 +35,7 @@ CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_CS8900=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/mx27ads_defconfig
index 077e799..b3fdf84 100644
--- a/arch/arm/configs/mx27ads_defconfig
+++ b/arch/arm/configs/mx27ads_defconfig
@@ -33,6 +33,7 @@ CONFIG_NET_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SPI_IMX=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
index 6d32c56..8e7a0b3 100644
--- a/arch/arm/configs/netx_nxdb500_defconfig
+++ b/arch/arm/configs/netx_nxdb500_defconfig
@@ -26,5 +26,6 @@ CONFIG_NET_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_NETX=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/pcm027_defconfig
index ac9269d..f911951 100644
--- a/arch/arm/configs/pcm027_defconfig
+++ b/arch/arm/configs/pcm027_defconfig
@@ -54,6 +54,7 @@ CONFIG_FS_TFTP=y
 CONFIG_DRIVER_SERIAL_PXA=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_PXA=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index e223e77..c9a7141 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -33,6 +33,7 @@ CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_W1=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 818bbd0..21a2571 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -52,6 +52,7 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index d01c7e7..086a971 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -25,5 +25,6 @@ CONFIG_NET_PING=y
 CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_DRIVER_NET_SMC911X=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
index 5e27cc8..4189990 100644
--- a/arch/nios2/configs/generic_defconfig
+++ b/arch/nios2/configs/generic_defconfig
@@ -27,6 +27,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_NET=y
 CONFIG_NET_PING=y
 CONFIG_DRIVER_NET_TSE=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_FS_TFTP=y
 CONFIG_ZLIB=y
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index d2ff16c..9743841 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -36,6 +36,7 @@ CONFIG_FS_TFTP=y
 CONFIG_ARCH_MPC5XXX=y
 CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
 CONFIG_DRIVER_NET_MPC5200=y
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_ZLIB=y
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 988ec9e..2ae05c2 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -4,7 +4,6 @@ source "drivers/serial/Kconfig"
 source "drivers/net/Kconfig"
 source "drivers/spi/Kconfig"
 source "drivers/i2c/Kconfig"
-source "drivers/nor/Kconfig"
 source "drivers/mtd/Kconfig"
 source "drivers/ata/Kconfig"
 source "drivers/usb/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 1fddee0..f81bf99 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -3,7 +3,6 @@ obj-$(CONFIG_ARM_AMBA) += amba/
 obj-y	+= net/
 obj-y	+= serial/
 obj-y	+= mtd/
-obj-y	+= nor/
 obj-y	+= usb/
 obj-$(CONFIG_DISK) += ata/
 obj-$(CONFIG_SPI) += spi/
diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 9450f5d..e94e6b1 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -21,6 +21,7 @@ config MTD_RAW_DEVICE
 	prompt "mtdraw device to read/write both data+oob"
 
 source "drivers/mtd/devices/Kconfig"
+source "drivers/mtd/nor/Kconfig"
 source "drivers/mtd/nand/Kconfig"
 source "drivers/mtd/ubi/Kconfig"
 
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 4f97d9a..82b2cc9 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_NAND)			+= nand/
+obj-$(CONFIG_DRIVER_CFI)		+= nor/
 obj-$(CONFIG_UBI)			+= ubi/
 obj-y					+= devices/
 obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
diff --git a/drivers/mtd/nor/Kconfig b/drivers/mtd/nor/Kconfig
new file mode 100644
index 0000000..591d1ac
--- /dev/null
+++ b/drivers/mtd/nor/Kconfig
@@ -0,0 +1,55 @@
+menuconfig DRIVER_CFI
+	bool "CFI NOR flash support"
+	help
+	  If you have NOR Flash devices connected to your system and wish
+	  to use them say yes here.
+
+if DRIVER_CFI
+
+config DRIVER_CFI_INTEL
+	default y
+	depends on DRIVER_CFI
+	bool "Support Intel flash chips"
+
+config DRIVER_CFI_AMD
+	default y
+	depends on DRIVER_CFI
+	bool "support AMD flash chips"
+
+config DRIVER_CFI_BANK_WIDTH_1
+	bool "Support 8-bit buswidth"
+	depends on DRIVER_CFI
+	default y
+	help
+	  If you wish to support CFI devices on a physical bus which is
+	  8 bits wide, say 'Y'.
+
+config DRIVER_CFI_BANK_WIDTH_2
+	bool "Support 16-bit buswidth"
+	depends on DRIVER_CFI
+	default y
+	help
+	  If you wish to support CFI devices on a physical bus which is
+	  16 bits wide, say 'Y'.
+
+config DRIVER_CFI_BANK_WIDTH_4
+	bool "Support 32-bit buswidth"
+	depends on DRIVER_CFI
+	default y
+	help
+	  If you wish to support CFI devices on a physical bus which is
+	  32 bits wide, say 'Y'.
+
+config DRIVER_CFI_BANK_WIDTH_8
+	bool "Support 64-bit buswidth"
+	depends on DRIVER_CFI
+	default n
+	help
+	  If you wish to support CFI devices on a physical bus which is
+	  64 bits wide, say 'Y'.
+
+config CFI_BUFFER_WRITE
+	bool "use cfi driver with buffer write"
+	depends on DRIVER_CFI || DRIVER_CFI
+
+endif
diff --git a/drivers/mtd/nor/Makefile b/drivers/mtd/nor/Makefile
new file mode 100644
index 0000000..d255043
--- /dev/null
+++ b/drivers/mtd/nor/Makefile
@@ -0,0 +1,4 @@
+obj-$(CONFIG_DRIVER_CFI) += cfi_flash.o
+obj-$(CONFIG_DRIVER_CFI_INTEL) += cfi_flash_intel.o
+obj-$(CONFIG_DRIVER_CFI_AMD) += cfi_flash_amd.o
+
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
new file mode 100644
index 0000000..76fed02
--- /dev/null
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -0,0 +1,1000 @@
+/*
+ * (C) Copyright 2002-2004
+ * Brad Kemp, Seranoa Networks, Brad.Kemp@seranoa.com
+ *
+ * Copyright (C) 2003 Arabella Software Ltd.
+ * Yuli Barcohen <yuli@arabellasw.com>
+ *
+ * Copyright (C) 2004
+ * Ed Okerson
+ *
+ * Copyright (C) 2006
+ * Tolunay Orkun <listmember@orkun.us>
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
+ *
+ */
+
+/* The DEBUG define must be before common to enable debugging */
+/* #define DEBUG	*/
+
+#include <common.h>
+#include <asm/byteorder.h>
+#include <environment.h>
+#include <clock.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+#include <errno.h>
+#include <progress.h>
+#include "cfi_flash.h"
+
+/*
+ * This file implements a Common Flash Interface (CFI) driver for barebox.
+ * The width of the port and the width of the chips are determined at initialization.
+ * These widths are used to calculate the address for access CFI data structures.
+ *
+ * References
+ * JEDEC Standard JESD68 - Common Flash Interface (CFI)
+ * JEDEC Standard JEP137-A Common Flash Interface (CFI) ID Codes
+ * Intel Application Note 646 Common Flash Interface (CFI) and Command Sets
+ * Intel 290667-008 3 Volt Intel StrataFlash Memory datasheet
+ * AMD CFI Specification, Release 2.0 December 1, 2001
+ * AMD/Spansion Application Note: Migration from Single-byte to Three-byte
+ *   Device IDs, Publication Number 25538 Revision A, November 8, 2001
+ *
+ */
+
+static uint flash_offset_cfi[2]={FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT};
+
+/*
+ * Check if chip width is defined. If not, start detecting with 8bit.
+ */
+#ifndef CFG_FLASH_CFI_WIDTH
+#define CFG_FLASH_CFI_WIDTH	FLASH_CFI_8BIT
+#endif
+
+
+/*
+ * Functions
+ */
+
+static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
+{
+	if (bankwidth_is_1(info)) {
+		*cword = c;
+		return;
+	}
+
+#ifdef __BIG_ENDIAN
+	*cword = (*cword << 8) | c;
+#elif defined __LITTLE_ENDIAN
+
+	if (bankwidth_is_2(info))
+		*cword = (*cword >> 8) | (u16)c << 8;
+	else if (bankwidth_is_4(info))
+		*cword = (*cword >> 8) | (u32)c << 24;
+	else if (bankwidth_is_8(info))
+		*cword = (*cword >> 8) | (u64)c << 56;
+#else
+#error "could not determine byte order"
+#endif
+}
+
+static int flash_write_cfiword (struct flash_info *info, ulong dest,
+				cfiword_t cword)
+{
+	void *dstaddr = (void *)dest;
+	int flag;
+
+	/* Check if Flash is (sufficiently) erased */
+	if (bankwidth_is_1(info))
+		flag = ((flash_read8(dstaddr) & cword) == cword);
+	else if (bankwidth_is_2(info))
+		flag = ((flash_read16(dstaddr) & cword) == cword);
+	else if (bankwidth_is_4(info))
+		flag = ((flash_read32(dstaddr) & cword) == cword);
+	else if (bankwidth_is_8(info))
+		flag = ((flash_read64(dstaddr) & cword) == cword);
+	else
+		return 2;
+
+	if (!flag)
+		return 2;
+
+	info->cfi_cmd_set->flash_prepare_write(info);
+
+	flash_write_word(info, cword, (void *)dest);
+
+	return flash_status_check (info, find_sector (info, dest),
+					info->write_tout, "write");
+}
+
+#ifdef DEBUG
+/*
+ * Debug support
+ */
+void print_longlong (char *str, unsigned long long data)
+{
+	int i;
+	char *cp;
+
+	cp = (unsigned char *) &data;
+	for (i = 0; i < 8; i++)
+		sprintf (&str[i * 2], "%2.2x", *cp++);
+}
+
+static void flash_printqry (struct cfi_qry *qry)
+{
+	u8 *p = (u8 *)qry;
+	int x, y;
+	unsigned char c;
+
+	for (x = 0; x < sizeof(struct cfi_qry); x += 16) {
+		debug("%02x : ", x);
+		for (y = 0; y < 16; y++)
+			debug("%2.2x ", p[x + y]);
+		debug(" ");
+		for (y = 0; y < 16; y++) {
+			c = p[x + y];
+			if (c >= 0x20 && c <= 0x7e)
+				debug("%c", c);
+			else
+				debug(".");
+		}
+		debug("\n");
+	}
+}
+#endif
+
+/*
+ * read a character at a port width address
+ */
+uchar flash_read_uchar (struct flash_info *info, uint offset)
+{
+	uchar *cp = flash_make_addr(info, 0, offset);
+#if defined __LITTLE_ENDIAN
+	return flash_read8(cp);
+#else
+	return flash_read8(cp + info->portwidth - 1);
+#endif
+}
+
+/*
+ * read a long word by picking the least significant byte of each maximum
+ * port size word. Swap for ppc format.
+ */
+static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint offset)
+{
+	uchar *addr;
+	ulong retval;
+
+#ifdef DEBUG
+	int x;
+#endif
+	addr = flash_make_addr (info, sect, offset);
+
+#ifdef DEBUG
+	debug ("long addr is at %p info->portwidth = %d\n", addr,
+	       info->portwidth);
+	for (x = 0; x < 4 * info->portwidth; x++) {
+		debug ("addr[%x] = 0x%x\n", x, flash_read8(addr + x));
+	}
+#endif
+#if defined __LITTLE_ENDIAN
+	retval = ((flash_read8(addr) << 16) |
+		  (flash_read8(addr + info->portwidth) << 24) |
+		  (flash_read8(addr + 2 * info->portwidth)) |
+		  (flash_read8(addr + 3 * info->portwidth) << 8));
+#else
+	retval = ((flash_read8(addr + 2 * info->portwidth - 1) << 24) |
+		  (flash_read8(addr + info->portwidth - 1) << 16) |
+		  (flash_read8(addr + 4 * info->portwidth - 1) << 8) |
+		  (flash_read8(addr + 3 * info->portwidth - 1)));
+#endif
+	return retval;
+}
+
+/*
+ * detect if flash is compatible with the Common Flash Interface (CFI)
+ * http://www.jedec.org/download/search/jesd68.pdf
+ *
+*/
+u32 jedec_read_mfr(struct flash_info *info)
+{
+	int bank = 0;
+	uchar mfr;
+
+	/* According to JEDEC "Standard Manufacturer's Identification Code"
+	 * (http://www.jedec.org/download/search/jep106W.pdf)
+	 * several first banks can contain 0x7f instead of actual ID
+	 */
+	do {
+		mfr = flash_read_uchar (info,
+				(bank << 8) | FLASH_OFFSET_MANUFACTURER_ID);
+		bank++;
+	} while (mfr == FLASH_ID_CONTINUATION);
+
+	return mfr;
+}
+
+static void flash_read_cfi (struct flash_info *info, void *buf,
+		unsigned int start, size_t len)
+{
+	u8 *p = buf;
+	unsigned int i;
+
+	for (i = 0; i < len; i++)
+		p[i] = flash_read_uchar(info, start + i);
+}
+
+static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
+{
+	int cfi_offset;
+	debug ("flash detect cfi\n");
+
+	for (info->portwidth = CFG_FLASH_CFI_WIDTH;
+	     info->portwidth <= FLASH_CFI_64BIT; info->portwidth <<= 1) {
+		for (info->chipwidth = FLASH_CFI_BY8;
+		     info->chipwidth <= info->portwidth;
+		     info->chipwidth <<= 1) {
+			flash_write_cmd (info, 0, 0, AMD_CMD_RESET);
+			flash_write_cmd (info, 0, 0, FLASH_CMD_RESET);
+			for (cfi_offset=0; cfi_offset < sizeof(flash_offset_cfi)/sizeof(uint); cfi_offset++) {
+				flash_write_cmd (info, 0, flash_offset_cfi[cfi_offset], FLASH_CMD_CFI);
+				if (flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP, 'Q')
+				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 1, 'R')
+				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 2, 'Y')) {
+					flash_read_cfi(info, qry, FLASH_OFFSET_CFI_RESP,
+						       sizeof(struct cfi_qry));
+					info->interface = le16_to_cpu(qry->interface_desc);
+
+					info->cfi_offset=flash_offset_cfi[cfi_offset];
+					debug ("device interface is %d\n",
+						info->interface);
+					debug ("found port %d chip %d ",
+						info->portwidth, info->chipwidth);
+					debug ("port %d bits chip %d bits\n",
+						info->portwidth << CFI_FLASH_SHIFT_WIDTH,
+						info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
+					return 1;
+				}
+			}
+		}
+	}
+	debug ("not found\n");
+	return 0;
+}
+
+/*
+ * The following code cannot be run from FLASH!
+ */
+static ulong flash_get_size (struct flash_info *info)
+{
+	int i, j;
+	flash_sect_t sect_cnt;
+	unsigned long sector;
+	unsigned long tmp;
+	int size_ratio;
+	uchar num_erase_regions;
+	int erase_region_size;
+	int erase_region_count;
+	int cur_offset = 0;
+	struct cfi_qry qry;
+	unsigned long base = (unsigned long)info->base;
+
+	memset(&qry, 0, sizeof(qry));
+
+	info->ext_addr = 0;
+	info->cfi_version = 0;
+#ifdef CFG_FLASH_PROTECTION
+	info->legacy_unlock = 0;
+#endif
+
+	/* first only malloc space for the first sector */
+	info->start = xmalloc(sizeof(ulong));
+
+	info->start[0] = base;
+	info->protect = 0;
+
+	if (flash_detect_cfi (info, &qry)) {
+		info->vendor = le16_to_cpu(qry.p_id);
+		info->ext_addr = le16_to_cpu(qry.p_adr);
+		num_erase_regions = qry.num_erase_regions;
+
+		if (info->ext_addr) {
+			info->cfi_version = (ushort) flash_read_uchar (info,
+						info->ext_addr + 3) << 8;
+			info->cfi_version |= (ushort) flash_read_uchar (info,
+						info->ext_addr + 4);
+		}
+
+#ifdef DEBUG
+		flash_printqry (&qry);
+#endif
+
+		switch (info->vendor) {
+#ifdef CONFIG_DRIVER_CFI_INTEL
+		case CFI_CMDSET_INTEL_EXTENDED:
+		case CFI_CMDSET_INTEL_STANDARD:
+			info->cfi_cmd_set = &cfi_cmd_set_intel;
+			break;
+#endif
+#ifdef CONFIG_DRIVER_CFI_AMD
+		case CFI_CMDSET_AMD_STANDARD:
+		case CFI_CMDSET_AMD_EXTENDED:
+			info->cfi_cmd_set = &cfi_cmd_set_amd;
+			break;
+#endif
+		default:
+			printf("unsupported vendor\n");
+			return 0;
+		}
+		info->cfi_cmd_set->flash_read_jedec_ids (info);
+		flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
+
+		info->cfi_cmd_set->flash_fixup (info, &qry);
+
+		debug ("manufacturer is %d\n", info->vendor);
+		debug ("manufacturer id is 0x%x\n", info->manufacturer_id);
+		debug ("device id is 0x%x\n", info->device_id);
+		debug ("device id2 is 0x%x\n", info->device_id2);
+		debug ("cfi version is 0x%04x\n", info->cfi_version);
+
+		size_ratio = info->portwidth / info->chipwidth;
+		/* if the chip is x8/x16 reduce the ratio by half */
+		if ((info->interface == FLASH_CFI_X8X16)
+		    && (info->chipwidth == FLASH_CFI_BY8)) {
+			size_ratio >>= 1;
+		}
+		debug ("size_ratio %d port %d bits chip %d bits\n",
+		       size_ratio, info->portwidth << CFI_FLASH_SHIFT_WIDTH,
+		       info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
+		debug ("found %d erase regions\n", num_erase_regions);
+		info->eraseregions = xzalloc(sizeof(*(info->eraseregions)) * num_erase_regions);
+		info->numeraseregions = num_erase_regions;
+		sect_cnt = 0;
+		sector = base;
+
+		for (i = 0; i < num_erase_regions; i++) {
+			struct mtd_erase_region_info *region = &info->eraseregions[i];
+
+			if (i > NUM_ERASE_REGIONS) {
+				printf ("%d erase regions found, only %d used\n",
+					num_erase_regions, NUM_ERASE_REGIONS);
+				break;
+			}
+
+			tmp = le32_to_cpu(qry.erase_region_info[i]);
+			debug("erase region %u: 0x%08lx\n", i, tmp);
+
+			erase_region_count = (tmp & 0xffff) + 1;
+			tmp >>= 16;
+			erase_region_size =
+				(tmp & 0xffff) ? ((tmp & 0xffff) * 256) : 128;
+			debug ("erase_region_count = %d erase_region_size = %d\n",
+				erase_region_count, erase_region_size);
+
+			region->offset = cur_offset;
+			region->erasesize = erase_region_size;
+			region->numblocks = erase_region_count;
+			cur_offset += erase_region_size * erase_region_count;
+
+			/* increase the space malloced for the sector start addresses */
+			info->start = xrealloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
+			info->protect = xrealloc(info->protect, sizeof(uchar) * (erase_region_count + sect_cnt));
+
+			for (j = 0; j < erase_region_count; j++) {
+				info->start[sect_cnt] = sector;
+				sector += (erase_region_size * size_ratio);
+
+				/*
+				 * Only read protection status from supported devices (intel...)
+				 */
+				switch (info->vendor) {
+				case CFI_CMDSET_INTEL_EXTENDED:
+				case CFI_CMDSET_INTEL_STANDARD:
+					info->protect[sect_cnt] =
+						flash_isset (info, sect_cnt,
+							     FLASH_OFFSET_PROTECT,
+							     FLASH_STATUS_PROTECT);
+					break;
+				default:
+					info->protect[sect_cnt] = 0; /* default: not protected */
+				}
+
+				sect_cnt++;
+			}
+		}
+
+		info->sector_count = sect_cnt;
+		/* multiply the size by the number of chips */
+		info->size = (1 << qry.dev_size) * size_ratio;
+		info->buffer_size = (1 << le16_to_cpu(qry.max_buf_write_size));
+		info->erase_blk_tout = 1 << (qry.block_erase_timeout_typ +
+					     qry.block_erase_timeout_max);
+		info->buffer_write_tout = 1 << (qry.buf_write_timeout_typ +
+						qry.buf_write_timeout_max);
+		info->write_tout = 1 << (qry.word_write_timeout_typ +
+					 qry.word_write_timeout_max);
+		info->flash_id = FLASH_MAN_CFI;
+		if ((info->interface == FLASH_CFI_X8X16) && (info->chipwidth == FLASH_CFI_BY8)) {
+			info->portwidth >>= 1;	/* XXX - Need to test on x8/x16 in parallel. */
+		}
+		flash_write_cmd (info, 0, 0, info->cmd_reset);
+	}
+
+	return info->size;
+}
+
+/* loop through the sectors from the highest address
+ * when the passed address is greater or equal to the sector address
+ * we have a match
+ */
+flash_sect_t find_sector (struct flash_info *info, ulong addr)
+{
+	flash_sect_t sector;
+
+	for (sector = info->sector_count - 1; sector >= 0; sector--) {
+		if (addr >= info->start[sector])
+			break;
+	}
+	return sector;
+}
+
+static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset)
+{
+        unsigned long start, end;
+        int i, ret = 0;
+
+	debug("%s: erase 0x%08llx (size %zu)\n", __func__, offset, count);
+
+        start = find_sector(finfo, (unsigned long)finfo->base + offset);
+        end   = find_sector(finfo, (unsigned long)finfo->base + offset +
+			count - 1);
+
+        for (i = start; i <= end; i++) {
+                ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
+                if (ret)
+                        goto out;
+
+		if (ctrlc()) {
+			ret = -EINTR;
+			goto out;
+		}
+        }
+out:
+        return ret;
+}
+
+/*
+ * Copy memory to flash, returns:
+ * 0 - OK
+ * 1 - write timeout
+ * 2 - Flash not erased
+ */
+static int write_buff (struct flash_info *info, const uchar * src, ulong addr, ulong cnt)
+{
+	ulong wp;
+	uchar *p;
+	int aln;
+	cfiword_t cword;
+	int i, rc;
+
+#ifdef CONFIG_CFI_BUFFER_WRITE
+	int buffered_size;
+#endif
+	/* get lower aligned address */
+	wp = (addr & ~(info->portwidth - 1));
+
+	/* handle unaligned start */
+	if ((aln = addr - wp) != 0) {
+		cword = 0;
+		p = (uchar*)wp;
+		for (i = 0; i < aln; ++i)
+			flash_add_byte (info, &cword, flash_read8(p + i));
+
+		for (; (i < info->portwidth) && (cnt > 0); i++) {
+			flash_add_byte (info, &cword, *src++);
+			cnt--;
+		}
+		for (; (cnt == 0) && (i < info->portwidth); ++i)
+			flash_add_byte (info, &cword, flash_read8(p + i));
+
+		rc = flash_write_cfiword (info, wp, cword);
+		if (rc != 0)
+			return rc;
+
+		wp += i;
+	}
+
+	/* handle the aligned part */
+#ifdef CONFIG_CFI_BUFFER_WRITE
+	buffered_size = (info->portwidth / info->chipwidth);
+	buffered_size *= info->buffer_size;
+	while (cnt >= info->portwidth) {
+		/* prohibit buffer write when buffer_size is 1 */
+		if (info->buffer_size == 1) {
+			cword = 0;
+			for (i = 0; i < info->portwidth; i++)
+				flash_add_byte (info, &cword, *src++);
+			if ((rc = flash_write_cfiword (info, wp, cword)) != 0)
+				return rc;
+			wp += info->portwidth;
+			cnt -= info->portwidth;
+			continue;
+		}
+
+		/* write buffer until next buffered_size aligned boundary */
+		i = buffered_size - (wp % buffered_size);
+		if (i > cnt)
+			i = cnt;
+		if ((rc = info->cfi_cmd_set->flash_write_cfibuffer (info, wp, src, i)) != ERR_OK)
+			return rc;
+		i -= i & (info->portwidth - 1);
+		wp += i;
+		src += i;
+		cnt -= i;
+	}
+#else
+	while (cnt >= info->portwidth) {
+		cword = 0;
+		for (i = 0; i < info->portwidth; i++) {
+			flash_add_byte (info, &cword, *src++);
+		}
+		if ((rc = flash_write_cfiword (info, wp, cword)) != 0)
+			return rc;
+		wp += info->portwidth;
+		cnt -= info->portwidth;
+	}
+#endif /* CONFIG_CFI_BUFFER_WRITE */
+	if (cnt == 0) {
+		return 0;
+	}
+
+	/*
+	 * handle unaligned tail bytes
+	 */
+	cword = 0;
+	p = (uchar*)wp;
+	for (i = 0; (i < info->portwidth) && (cnt > 0); ++i) {
+		flash_add_byte (info, &cword, *src++);
+		--cnt;
+	}
+	for (; i < info->portwidth; ++i) {
+		flash_add_byte (info, &cword, flash_read8(p + i));
+	}
+
+	return flash_write_cfiword (info, wp, cword);
+}
+
+static int flash_real_protect (struct flash_info *info, long sector, int prot)
+{
+	int retcode = 0;
+
+	retcode = info->cfi_cmd_set->flash_real_protect(info, sector, prot);
+
+	if (retcode)
+		return retcode;
+
+	if ((retcode =
+	     flash_status_check (info, sector, info->erase_blk_tout,
+				      prot ? "protect" : "unprotect")) == 0) {
+
+		info->protect[sector] = prot;
+
+		/*
+		 * On some of Intel's flash chips (marked via legacy_unlock)
+		 * unprotect unprotects all locking.
+		 */
+		if ((prot == 0) && (info->legacy_unlock)) {
+			flash_sect_t i;
+
+			for (i = 0; i < info->sector_count; i++) {
+				if (info->protect[i])
+					flash_real_protect (info, i, 1);
+			}
+		}
+	}
+	return retcode;
+}
+
+static int cfi_mtd_protect(struct flash_info *finfo, loff_t offset, size_t len, int prot)
+{
+	unsigned long start, end;
+	int i, ret = 0;
+
+	start = find_sector(finfo, (unsigned long)finfo->base + offset);
+	end   = find_sector(finfo, (unsigned long)finfo->base + offset + len - 1);
+
+	for (i = start; i <= end; i++) {
+		ret = flash_real_protect (finfo, i, prot);
+		if (ret)
+			goto out;
+	}
+out:
+	return ret;
+}
+
+static int cfi_mtd_lock(struct mtd_info *mtd, loff_t offset, size_t len)
+{
+	struct flash_info *finfo = container_of(mtd, struct flash_info, mtd);
+
+	return cfi_mtd_protect(finfo, offset, len, 1);
+}
+
+static int cfi_mtd_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
+{
+	struct flash_info *finfo = container_of(mtd, struct flash_info, mtd);
+
+	return cfi_mtd_protect(finfo, offset, len, 0);
+}
+
+static void cfi_info (struct device_d* dev)
+{
+        struct flash_info *info = (struct flash_info *)dev->priv;
+	int i;
+
+	if (info->flash_id != FLASH_MAN_CFI) {
+		puts ("missing or unknown FLASH type\n");
+		return;
+	}
+
+	printf ("CFI conformant FLASH (%d x %d)",
+		(info->portwidth << 3), (info->chipwidth << 3));
+	printf ("  Size: %ld MB in %d Sectors\n",
+		info->size >> 20, info->sector_count);
+	printf ("  ");
+	switch (info->vendor) {
+		case CFI_CMDSET_INTEL_STANDARD:
+			printf ("Intel Standard");
+			break;
+		case CFI_CMDSET_INTEL_EXTENDED:
+			printf ("Intel Extended");
+			break;
+		case CFI_CMDSET_AMD_STANDARD:
+			printf ("AMD Standard");
+			break;
+		case CFI_CMDSET_AMD_EXTENDED:
+			printf ("AMD Extended");
+			break;
+		default:
+			printf ("Unknown (%d)", info->vendor);
+			break;
+	}
+	printf (" command set, Manufacturer ID: 0x%02X, Device ID: 0x%02X",
+		info->manufacturer_id, info->device_id);
+	if (info->device_id == 0x7E) {
+		printf("%04X", info->device_id2);
+	}
+	printf ("\n  Erase timeout: %ld ms, write timeout: %ld us\n",
+		info->erase_blk_tout,
+		info->write_tout);
+	if (info->buffer_size > 1) {
+		printf ("  Buffer write timeout: %ld us, buffer size: %d bytes\n",
+		info->buffer_write_tout,
+		info->buffer_size);
+	}
+
+	puts ("\n  Sector Start Addresses:");
+	for (i = 0; i < info->sector_count; ++i) {
+		if ((i % 5) == 0)
+			printf ("\n");
+#ifdef CFG_FLASH_EMPTY_INFO
+	{
+		int k;
+		int size;
+		int erased;
+		volatile unsigned long *flash;
+
+		/*
+		 * Check if whole sector is erased
+		 */
+		if (i != (info->sector_count - 1))
+			size = info->start[i + 1] - info->start[i];
+		else
+			size = info->start[0] + info->size - info->start[i];
+		erased = 1;
+		flash = (volatile unsigned long *) info->start[i];
+		size = size >> 2;	/* divide by 4 for longword access */
+		for (k = 0; k < size; k++) {
+			if (*flash++ != 0xffffffff) {
+				erased = 0;
+				break;
+			}
+		}
+
+		/* print empty and read-only info */
+		printf ("  %08lX %c %s ",
+			info->start[i],
+			erased ? 'E' : ' ',
+			info->protect[i] ? "RO" : "  ");
+	}
+#else	/* ! CFG_FLASH_EMPTY_INFO */
+		printf ("  %08lX   %s ",
+			info->start[i],
+			info->protect[i] ? "RO" : "  ");
+#endif
+	}
+	putchar('\n');
+	return;
+}
+
+#if 0
+/*
+ * flash_read_user_serial - read the OneTimeProgramming cells
+ */
+static void flash_read_user_serial (struct flash_info *info, void *buffer, int offset,
+			     int len)
+{
+	uchar *src;
+	uchar *dst;
+
+	dst = buffer;
+	src = flash_make_addr (info, 0, FLASH_OFFSET_USER_PROTECTION);
+	flash_write_cmd (info, 0, 0, FLASH_CMD_READ_ID);
+	memcpy (dst, src + offset, len);
+	flash_write_cmd (info, 0, 0, info->cmd_reset);
+}
+
+/*
+ * flash_read_factory_serial - read the device Id from the protection area
+ */
+static void flash_read_factory_serial (struct flash_info *info, void *buffer, int offset,
+				int len)
+{
+	uchar *src;
+
+	src = flash_make_addr (info, 0, FLASH_OFFSET_INTEL_PROTECTION);
+	flash_write_cmd (info, 0, 0, FLASH_CMD_READ_ID);
+	memcpy (buffer, src + offset, len);
+	flash_write_cmd (info, 0, 0, info->cmd_reset);
+}
+
+#endif
+
+int flash_status_check (struct flash_info *info, flash_sect_t sector,
+			       uint64_t tout, char *prompt)
+{
+	return info->cfi_cmd_set->flash_status_check(info, sector, tout, prompt);
+}
+
+/*
+ *  wait for XSR.7 to be set. Time out with an error if it does not.
+ *  This routine does not set the flash to read-array mode.
+ */
+int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
+			       uint64_t tout, char *prompt)
+{
+	uint64_t start;
+
+        tout *= 1000000;
+
+	/* Wait for command completion */
+	start = get_time_ns();
+	while (info->cfi_cmd_set->flash_is_busy (info, sector)) {
+		if (is_timeout(start, tout)) {
+			printf ("Flash %s timeout at address %lx data %lx\n",
+				prompt, info->start[sector],
+				flash_read_long (info, sector, 0));
+			flash_write_cmd (info, sector, 0, info->cmd_reset);
+			return ERR_TIMOUT;
+		}
+		udelay (1);		/* also triggers watchdog */
+	}
+	return ERR_OK;
+}
+
+/*
+ * make a proper sized command based on the port and chip widths
+ */
+void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf)
+{
+	cfiword_t result = 0;
+	int i = info->portwidth / info->chipwidth;
+
+	while (i--)
+		result = (result << (8 * info->chipwidth)) | cmd;
+	*cmdbuf = result;
+}
+
+/*
+ * Write a proper sized command to the correct address
+ */
+void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
+				uint offset, u32 cmd)
+{
+
+	uchar *addr;
+	cfiword_t cword;
+
+	addr = flash_make_addr (info, sect, offset);
+	flash_make_cmd (info, cmd, &cword);
+
+	debug("%s: %p %lX %X => %p " CFI_WORD_FMT "\n", __func__,
+			info, sect, offset, addr, cword);
+
+	flash_write_word(info, cword, addr);
+}
+
+int flash_isequal(struct flash_info *info, flash_sect_t sect,
+				uint offset, u32 cmd)
+{
+	void *addr;
+	cfiword_t cword;
+	int retval;
+
+	addr = flash_make_addr (info, sect, offset);
+	flash_make_cmd (info, cmd, &cword);
+
+	debug ("is= cmd %x(%c) addr %p ", cmd, cmd, addr);
+	if (bankwidth_is_1(info)) {
+		debug ("is= %x %x\n", flash_read8(addr), (u8)cword);
+		retval = (flash_read8(addr) == cword);
+	} else if (bankwidth_is_2(info)) {
+		debug ("is= %4.4x %4.4x\n", flash_read16(addr), (u16)cword);
+		retval = (flash_read16(addr) == cword);
+	} else if (bankwidth_is_4(info)) {
+		debug ("is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
+		retval = (flash_read32(addr) == cword);
+	} else if (bankwidth_is_8(info)) {
+#ifdef DEBUG
+		{
+			char str1[20];
+			char str2[20];
+
+			print_longlong (str1, flash_read32(addr));
+			print_longlong (str2, cword);
+			debug ("is= %s %s\n", str1, str2);
+		}
+#endif
+		retval = (flash_read64(addr) == cword);
+	} else
+		retval = 0;
+
+	return retval;
+}
+
+int flash_isset(struct flash_info *info, flash_sect_t sect,
+				uint offset, u32 cmd)
+{
+	void *addr = flash_make_addr (info, sect, offset);
+	cfiword_t cword;
+	int retval;
+
+	flash_make_cmd (info, cmd, &cword);
+	if (bankwidth_is_1(info)) {
+		retval = ((flash_read8(addr) & cword) == cword);
+	} else if (bankwidth_is_2(info)) {
+		retval = ((flash_read16(addr) & cword) == cword);
+	} else if (bankwidth_is_4(info)) {
+		retval = ((flash_read32(addr) & cword) == cword);
+	} else if (bankwidth_is_8(info)) {
+		retval = ((flash_read64(addr) & cword) == cword);
+	} else
+		retval = 0;
+
+	return retval;
+}
+
+static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
+		size_t *retlen, u_char *buf)
+{
+	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
+
+	memcpy(buf, info->base + from, len);
+	*retlen = len;
+
+	return 0;
+}
+
+static int cfi_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
+		size_t *retlen, const u_char *buf)
+{
+	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
+	int ret;
+
+	ret = write_buff(info, buf, (unsigned long)info->base + to, len);
+	*retlen = len;
+
+        return ret;
+}
+
+static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
+{
+	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
+	int ret;
+
+	ret = cfi_erase(info, instr->len, instr->addr);
+
+	if (ret) {
+		instr->state = MTD_ERASE_FAILED;
+		return -EIO;
+	}
+
+	instr->state = MTD_ERASE_DONE;
+	mtd_erase_callback(instr);
+
+	return 0;
+}
+
+static void cfi_init_mtd(struct flash_info *info)
+{
+	struct mtd_info *mtd = &info->mtd;
+
+	mtd->read = cfi_mtd_read;
+	mtd->write = cfi_mtd_write;
+	mtd->erase = cfi_mtd_erase;
+	mtd->lock = cfi_mtd_lock;
+	mtd->unlock = cfi_mtd_unlock;
+	mtd->size = info->size;
+	mtd->erasesize = info->eraseregions[1].erasesize; /* FIXME */
+	mtd->writesize = 1;
+	mtd->subpage_sft = 0;
+	mtd->eraseregions = info->eraseregions;
+	mtd->numeraseregions = info->numeraseregions;
+	mtd->flags = MTD_CAP_NORFLASH;
+	mtd->type = MTD_NORFLASH;
+
+	add_mtd_device(mtd, "nor");
+}
+
+static int cfi_probe (struct device_d *dev)
+{
+	struct flash_info *info = xzalloc(sizeof(*info));
+
+	dev->priv = (void *)info;
+
+	/* Init: no FLASHes known */
+	info->flash_id = FLASH_UNKNOWN;
+	info->cmd_reset = FLASH_CMD_RESET;
+	info->base = dev_request_mem_region(dev, 0);
+	info->size = flash_get_size(info);
+
+	if (info->flash_id == FLASH_UNKNOWN) {
+		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
+			dev->resource[0].start, info->size, info->size << 20);
+		return -ENODEV;
+	}
+
+	dev_info(dev, "found cfi flash at %p, size %ld\n",
+			info->base, info->size);
+
+	cfi_init_mtd(info);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id cfi_dt_ids[] = {
+	{
+		.compatible = "cfi-flash",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d cfi_driver = {
+	.name    = "cfi_flash",
+	.probe   = cfi_probe,
+	.info    = cfi_info,
+	.of_compatible = DRV_OF_COMPAT(cfi_dt_ids),
+};
+
+static int cfi_init(void)
+{
+	return platform_driver_register(&cfi_driver);
+}
+
+device_initcall(cfi_init);
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
new file mode 100644
index 0000000..bcf5c40
--- /dev/null
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -0,0 +1,730 @@
+#ifndef __CFI_FLASH_H
+#define __CFI_FLASH_H
+
+/*
+ * (C) Copyright 2000-2005
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
+ */
+
+#include <driver.h>
+#include <asm/byteorder.h>
+#include <io.h>
+#include <linux/mtd/mtd.h>
+
+typedef unsigned long flash_sect_t;
+
+#if   defined(CONFIG_DRIVER_CFI_BANK_WIDTH_8)
+typedef u64 cfiword_t;
+#define CFI_WORD_FMT	"0x%016llx"
+#elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_4)
+typedef u32 cfiword_t;
+#define CFI_WORD_FMT	"0x%08x"
+#elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_2)
+typedef u16 cfiword_t;
+#define CFI_WORD_FMT	"0x%04x"
+#else
+typedef u8 cfiword_t;
+#define CFI_WORD_FMT	"0x%02x"
+#endif
+
+struct cfi_cmd_set;
+
+/*-----------------------------------------------------------------------
+ * FLASH Info: contains chip specific data, per FLASH bank
+ */
+
+struct flash_info {
+	struct driver_d driver;
+	ulong	size;			/* total bank size in bytes		*/
+	ushort	sector_count;		/* number of erase units		*/
+	ulong	flash_id;		/* combined device & manufacturer code	*/
+	ulong	*start;			/* physical sector start addresses	*/
+	uchar	*protect;		/* sector protection status		*/
+
+	uchar	portwidth;		/* the width of the port		*/
+	uchar	chipwidth;		/* the width of the chip		*/
+	ushort	buffer_size;		/* # of bytes in write buffer		*/
+	ulong	erase_blk_tout;		/* maximum block erase timeout		*/
+	ulong	write_tout;		/* maximum write timeout		*/
+	ulong	buffer_write_tout;	/* maximum buffer write timeout		*/
+	ushort	vendor;			/* the primary vendor id		*/
+	ushort	cmd_reset;		/* vendor specific reset command	*/
+	ushort	interface;		/* used for x8/x16 adjustments		*/
+	ushort	legacy_unlock;		/* support Intel legacy (un)locking	*/
+	uchar	manufacturer_id;	/* manufacturer id			*/
+	ushort	device_id;		/* device id				*/
+	ushort	device_id2;		/* extended device id			*/
+	ushort	ext_addr;		/* extended query table address		*/
+	ushort	cfi_version;		/* cfi version				*/
+	ushort	cfi_offset;		/* offset for cfi query 		*/
+	ulong	addr_unlock1;		/* unlock address 1 for AMD flash roms	*/
+	ulong	addr_unlock2;		/* unlock address 2 for AMD flash roms	*/
+	struct cfi_cmd_set *cfi_cmd_set;
+	struct mtd_info mtd;
+	int numeraseregions;
+	struct mtd_erase_region_info *eraseregions;
+	void *base;
+};
+
+#define NUM_ERASE_REGIONS	4 /* max. number of erase regions */
+
+/* CFI standard query structure */
+struct cfi_qry {
+	u8	qry[3];
+	u16	p_id;
+	u16	p_adr;
+	u16	a_id;
+	u16	a_adr;
+	u8	vcc_min;
+	u8	vcc_max;
+	u8	vpp_min;
+	u8	vpp_max;
+	u8	word_write_timeout_typ;
+	u8	buf_write_timeout_typ;
+	u8	block_erase_timeout_typ;
+	u8	chip_erase_timeout_typ;
+	u8	word_write_timeout_max;
+	u8	buf_write_timeout_max;
+	u8	block_erase_timeout_max;
+	u8	chip_erase_timeout_max;
+	u8	dev_size;
+	u16	interface_desc;
+	u16	max_buf_write_size;
+	u8	num_erase_regions;
+	u32	erase_region_info[NUM_ERASE_REGIONS];
+} __attribute__((packed));
+
+struct cfi_pri_hdr {
+	u8	pri[3];
+	u8	major_version;
+	u8	minor_version;
+} __attribute__((packed));
+
+
+struct cfi_cmd_set {
+	int (*flash_write_cfibuffer) (struct flash_info *info, ulong dest, const uchar * cp, int len);
+	int (*flash_erase_one) (struct flash_info *info, long sect);
+	int (*flash_is_busy) (struct flash_info *info, flash_sect_t sect);
+	void (*flash_read_jedec_ids) (struct flash_info *info);
+	void (*flash_prepare_write) (struct flash_info *info);
+	int (*flash_status_check) (struct flash_info *info, flash_sect_t sector, uint64_t tout, char *prompt);
+	int (*flash_real_protect) (struct flash_info *info, long sector, int prot);
+	void (*flash_fixup) (struct flash_info *info, struct cfi_qry *qry);
+};
+
+extern struct cfi_cmd_set cfi_cmd_set_intel;
+extern struct cfi_cmd_set cfi_cmd_set_amd;
+
+#define FLASH_CMD_CFI			0x98
+#define FLASH_CMD_READ_ID		0x90
+#define FLASH_CMD_RESET			0xff
+#define FLASH_CMD_BLOCK_ERASE		0x20
+#define FLASH_CMD_ERASE_CONFIRM		0xD0
+#define FLASH_CMD_WRITE			0x40
+#define FLASH_CMD_PROTECT		0x60
+#define FLASH_CMD_PROTECT_SET		0x01
+#define FLASH_CMD_PROTECT_CLEAR		0xD0
+#define FLASH_CMD_CLEAR_STATUS		0x50
+#define FLASH_CMD_WRITE_TO_BUFFER	0xE8
+#define FLASH_CMD_WRITE_BUFFER_CONFIRM	0xD0
+
+#define FLASH_STATUS_DONE		0x80
+#define FLASH_STATUS_ESS		0x40
+#define FLASH_STATUS_ECLBS		0x20
+#define FLASH_STATUS_PSLBS		0x10
+#define FLASH_STATUS_VPENS		0x08
+#define FLASH_STATUS_PSS		0x04
+#define FLASH_STATUS_DPS		0x02
+#define FLASH_STATUS_R			0x01
+#define FLASH_STATUS_PROTECT		0x01
+
+#define FLASH_ID_CONTINUATION		0x7F
+
+#define AMD_CMD_RESET			0xF0
+#define AMD_CMD_WRITE			0xA0
+#define AMD_CMD_ERASE_START		0x80
+#define AMD_CMD_ERASE_SECTOR		0x30
+#define AMD_CMD_UNLOCK_START		0xAA
+#define AMD_CMD_UNLOCK_ACK		0x55
+#define AMD_CMD_WRITE_TO_BUFFER		0x25
+#define AMD_CMD_WRITE_BUFFER_CONFIRM	0x29
+
+#define AMD_STATUS_TOGGLE		0x40
+#define AMD_STATUS_ERROR		0x20
+
+#define ATM_CMD_UNLOCK_SECT		0x70
+#define ATM_CMD_SOFTLOCK_START		0x80
+#define ATM_CMD_LOCK_SECT		0x40
+
+#define FLASH_OFFSET_MANUFACTURER_ID	0x00
+#define FLASH_OFFSET_DEVICE_ID		0x01
+#define FLASH_OFFSET_DEVICE_ID2		0x0E
+#define FLASH_OFFSET_DEVICE_ID3		0x0F
+#define FLASH_OFFSET_CFI		0x55
+#define FLASH_OFFSET_CFI_ALT		0x555
+#define FLASH_OFFSET_CFI_RESP		0x10
+#define FLASH_OFFSET_PRIMARY_VENDOR	0x13
+#define FLASH_OFFSET_EXT_QUERY_T_P_ADDR	0x15	/* extended query table primary addr */
+#define FLASH_OFFSET_WTOUT		0x1F
+#define FLASH_OFFSET_WBTOUT		0x20
+#define FLASH_OFFSET_ETOUT		0x21
+#define FLASH_OFFSET_CETOUT		0x22
+#define FLASH_OFFSET_WMAX_TOUT		0x23
+#define FLASH_OFFSET_WBMAX_TOUT		0x24
+#define FLASH_OFFSET_EMAX_TOUT		0x25
+#define FLASH_OFFSET_CEMAX_TOUT		0x26
+#define FLASH_OFFSET_SIZE		0x27
+#define FLASH_OFFSET_INTERFACE		0x28
+#define FLASH_OFFSET_BUFFER_SIZE	0x2A
+#define FLASH_OFFSET_NUM_ERASE_REGIONS	0x2C
+#define FLASH_OFFSET_ERASE_REGIONS	0x2D
+#define FLASH_OFFSET_PROTECT		0x02
+#define FLASH_OFFSET_USER_PROTECTION	0x85
+#define FLASH_OFFSET_INTEL_PROTECTION	0x81
+
+#define CFI_CMDSET_NONE			0
+#define CFI_CMDSET_INTEL_EXTENDED	1
+#define CFI_CMDSET_AMD_STANDARD		2
+#define CFI_CMDSET_INTEL_STANDARD	3
+#define CFI_CMDSET_AMD_EXTENDED		4
+#define CFI_CMDSET_MITSU_STANDARD	256
+#define CFI_CMDSET_MITSU_EXTENDED	257
+#define CFI_CMDSET_SST			258
+
+#ifdef CFG_FLASH_CFI_AMD_RESET /* needed for STM_ID_29W320DB on UC100 */
+# undef  FLASH_CMD_RESET
+# define FLASH_CMD_RESET	AMD_CMD_RESET /* use AMD-Reset instead */
+#endif
+
+/*
+ * Values for the width of the port
+ */
+#define FLASH_CFI_8BIT		0x01
+#define FLASH_CFI_16BIT		0x02
+#define FLASH_CFI_32BIT		0x04
+#define FLASH_CFI_64BIT		0x08
+/*
+ * Values for the width of the chip
+ */
+#define FLASH_CFI_BY8		0x01
+#define FLASH_CFI_BY16		0x02
+#define FLASH_CFI_BY32		0x04
+#define FLASH_CFI_BY64		0x08
+/* convert between bit value and numeric value */
+#define CFI_FLASH_SHIFT_WIDTH	3
+/*
+ * Values for the flash device interface
+ */
+#define FLASH_CFI_X8		0x00
+#define FLASH_CFI_X16		0x01
+#define FLASH_CFI_X8X16		0x02
+#define FLASH_CFI_X16X32	0x05
+
+/* convert between bit value and numeric value */
+#define CFI_FLASH_SHIFT_WIDTH	3
+/* Prototypes */
+
+int flash_isset(struct flash_info *info, flash_sect_t sect,
+				uint offset, u32 cmd);
+void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
+				uint offset, u32 cmd);
+flash_sect_t find_sector (struct flash_info *info, ulong addr);
+int flash_status_check (struct flash_info *info, flash_sect_t sector,
+			       uint64_t tout, char *prompt);
+int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
+			       uint64_t tout, char *prompt);
+
+int flash_isequal(struct flash_info *info, flash_sect_t sect,
+				uint offset, u32 cmd);
+void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf);
+
+static inline void flash_write8(u8 value, void *addr)
+{
+	cpu_writeb(value, addr);
+}
+
+static inline void flash_write16(u16 value, void *addr)
+{
+	cpu_writew(value, addr);
+}
+
+static inline void flash_write32(u32 value, void *addr)
+{
+	cpu_writel(value, addr);
+}
+
+static inline void flash_write64(u64 value, void *addr)
+{
+	memcpy((void *)addr, &value, 8);
+}
+
+static inline u8 flash_read8(void *addr)
+{
+	return cpu_readb(addr);
+}
+
+static inline u16 flash_read16(void *addr)
+{
+	return cpu_readw(addr);
+}
+
+static inline u32 flash_read32(void *addr)
+{
+	return cpu_readl(addr);
+}
+
+static inline u64 flash_read64(void *addr)
+{
+	/* No architectures currently implement readq() */
+	return *(volatile u64 *)addr;
+}
+
+/*
+ * create an address based on the offset and the port width
+ */
+static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
+{
+	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
+}
+
+uchar flash_read_uchar (struct flash_info *info, uint offset);
+u32 jedec_read_mfr(struct flash_info *info);
+
+#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_1
+#define bankwidth_is_1(info) (info->portwidth == 1)
+#else
+#define bankwidth_is_1(info) 0
+#endif
+
+#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_2
+#define bankwidth_is_2(info) (info->portwidth == 2)
+#else
+#define bankwidth_is_2(info) 0
+#endif
+
+#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_4
+#define bankwidth_is_4(info) (info->portwidth == 4)
+#else
+#define bankwidth_is_4(info) 0
+#endif
+
+#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_8
+#define bankwidth_is_8(info) (info->portwidth == 8)
+#else
+#define bankwidth_is_8(info) 0
+#endif
+
+static inline void flash_write_word(struct flash_info *info, cfiword_t datum, void *addr)
+{
+	if (bankwidth_is_1(info)) {
+		debug("fw addr %p val %02x\n", addr, (u8)datum);
+		flash_write8(datum, addr);
+	} else if (bankwidth_is_2(info)) {
+		debug("fw addr %p val %04x\n", addr, (u16)datum);
+		flash_write16(datum, addr);
+	} else if (bankwidth_is_4(info)) {
+		debug("fw addr %p val %08x\n", addr, (u32)datum);
+		flash_write32(datum, addr);
+	} else if (bankwidth_is_8(info)) {
+		flash_write64(datum, addr);
+	}
+}
+
+extern void flash_print_info (struct flash_info *);
+extern int flash_sect_erase (ulong addr_first, ulong addr_last);
+extern int flash_sect_protect (int flag, ulong addr_first, ulong addr_last);
+
+/* common/flash.c */
+extern void flash_protect (int flag, ulong from, ulong to, struct flash_info *info);
+extern int flash_write (char *, ulong, ulong);
+extern struct flash_info *addr2info (ulong);
+//extern int write_buff (flash_info_t *info, const uchar *src, ulong addr, ulong cnt);
+
+/* board/?/flash.c */
+#if defined(CFG_FLASH_PROTECTION)
+extern int flash_real_protect(struct flash_info *info, long sector, int prot);
+extern void flash_read_user_serial(struct flash_info *info, void * buffer, int offset, int len);
+extern void flash_read_factory_serial(struct flash_info *info, void * buffer, int offset, int len);
+#endif	/* CFG_FLASH_PROTECTION */
+
+/*-----------------------------------------------------------------------
+ * return codes from flash_write():
+ */
+#define ERR_OK				0
+#define ERR_TIMOUT			1
+#define ERR_NOT_ERASED			2
+#define ERR_PROTECTED			4
+#define ERR_INVAL			8
+#define ERR_ALIGN			16
+#define ERR_UNKNOWN_FLASH_VENDOR	32
+#define ERR_UNKNOWN_FLASH_TYPE		64
+#define ERR_PROG_ERROR			128
+
+/*-----------------------------------------------------------------------
+ * Protection Flags for flash_protect():
+ */
+#define FLAG_PROTECT_SET	0x01
+#define FLAG_PROTECT_CLEAR	0x02
+
+/*-----------------------------------------------------------------------
+ * Device IDs
+ */
+
+#define AMD_MANUFACT	0x00010001	/* AMD	   manuf. ID in D23..D16, D7..D0 */
+#define FUJ_MANUFACT	0x00040004	/* FUJITSU manuf. ID in D23..D16, D7..D0 */
+#define ATM_MANUFACT	0x001F001F	/* ATMEL */
+#define STM_MANUFACT	0x00200020	/* STM (Thomson) manuf. ID in D23.. -"- */
+#define SST_MANUFACT	0x00BF00BF	/* SST	   manuf. ID in D23..D16, D7..D0 */
+#define MT_MANUFACT	0x00890089	/* MT	   manuf. ID in D23..D16, D7..D0 */
+#define INTEL_MANUFACT	0x00890089	/* INTEL   manuf. ID in D23..D16, D7..D0 */
+#define INTEL_ALT_MANU	0x00B000B0	/* alternate INTEL namufacturer ID	*/
+#define MX_MANUFACT	0x00C200C2	/* MXIC	   manuf. ID in D23..D16, D7..D0 */
+#define TOSH_MANUFACT	0x00980098	/* TOSHIBA manuf. ID in D23..D16, D7..D0 */
+#define MT2_MANUFACT	0x002C002C	/* alternate MICRON manufacturer ID*/
+#define EXCEL_MANUFACT	0x004A004A	/* Excel Semiconductor			*/
+
+					/* Micron Technologies (INTEL compat.)	*/
+#define MT_ID_28F400_T	0x44704470	/* 28F400B3 ID ( 4 M, top boot sector)	*/
+#define MT_ID_28F400_B	0x44714471	/* 28F400B3 ID ( 4 M, bottom boot sect) */
+
+#define AMD_ID_LV040B	0x4F		/* 29LV040B ID				*/
+					/* 4 Mbit, 512K x 8,			*/
+					/* 8 64K x 8 uniform sectors		*/
+#define AMD_ID_F033C	0xA3		/* 29LV033C ID				*/
+					/* 32 Mbit, 4Mbits x 8,			*/
+					/* 64 64K x 8 uniform sectors		*/
+#define AMD_ID_F065D	0x93		/* 29LV065D ID				*/
+					/* 64 Mbit, 8Mbits x 8,			*/
+					/* 126 64K x 8 uniform sectors		*/
+#define ATM_ID_LV040	0x13		/* 29LV040B ID				*/
+					/* 4 Mbit, 512K x 8,			*/
+					/* 8 64K x 8 uniform sectors		*/
+#define AMD_ID_F040B	0xA4		/* 29F040B ID				*/
+					/* 4 Mbit, 512K x 8,			*/
+					/* 8 64K x 8 uniform sectors		*/
+#define STM_ID_M29W040B 0xE3		/* M29W040B ID				*/
+					/* 4 Mbit, 512K x 8,			*/
+					/* 8 64K x 8 uniform sectors		*/
+#define AMD_ID_F080B	0xD5		/* 29F080  ID  ( 1 M)			*/
+					/* 8 Mbit, 512K x 16,			*/
+					/* 8 64K x 16 uniform sectors		*/
+#define AMD_ID_F016D	0xAD		/* 29F016  ID  ( 2 M x 8)		*/
+#define AMD_ID_F032B	0x41		/* 29F032  ID  ( 4 M x 8)		*/
+#define AMD_ID_LV116DT	0xC7		/* 29LV116DT   ( 2 M x 8, top boot sect) */
+#define AMD_ID_LV116DB	0x4C		/* 29LV116DB   ( 2 M x 8, bottom boot sect) */
+#define AMD_ID_LV016B	0xc8		/* 29LV016 ID  ( 2 M x 8)		*/
+
+#define AMD_ID_PL160CB	0x22452245	/* 29PL160CB ID (16 M, bottom boot sect */
+
+#define AMD_ID_LV400T	0x22B922B9	/* 29LV400T ID ( 4 M, top boot sector)	*/
+#define AMD_ID_LV400B	0x22BA22BA	/* 29LV400B ID ( 4 M, bottom boot sect) */
+
+#define AMD_ID_LV033C	0xA3		/* 29LV033C ID ( 4 M x 8)		*/
+#define AMD_ID_LV065D	0x93		/* 29LV065D ID ( 8 M x 8)		*/
+
+#define AMD_ID_LV800T	0x22DA22DA	/* 29LV800T ID ( 8 M, top boot sector)	*/
+#define AMD_ID_LV800B	0x225B225B	/* 29LV800B ID ( 8 M, bottom boot sect) */
+
+#define AMD_ID_LV160T	0x22C422C4	/* 29LV160T ID (16 M, top boot sector)	*/
+#define AMD_ID_LV160B	0x22492249	/* 29LV160B ID (16 M, bottom boot sect) */
+
+#define AMD_ID_DL163T	0x22282228	/* 29DL163T ID (16 M, top boot sector)	*/
+#define AMD_ID_DL163B	0x222B222B	/* 29DL163B ID (16 M, bottom boot sect) */
+
+#define AMD_ID_LV320T	0x22F622F6	/* 29LV320T ID (32 M, top boot sector)	*/
+#define MX_ID_LV320T	0x22A722A7	/* 29LV320T by Macronix, AMD compatible */
+#define AMD_ID_LV320B	0x22F922F9	/* 29LV320B ID (32 M, bottom boot sect) */
+#define MX_ID_LV320B	0x22A822A8	/* 29LV320B by Macronix, AMD compatible */
+
+#define AMD_ID_DL322T	0x22552255	/* 29DL322T ID (32 M, top boot sector)	*/
+#define AMD_ID_DL322B	0x22562256	/* 29DL322B ID (32 M, bottom boot sect) */
+#define AMD_ID_DL323T	0x22502250	/* 29DL323T ID (32 M, top boot sector)	*/
+#define AMD_ID_DL323B	0x22532253	/* 29DL323B ID (32 M, bottom boot sect) */
+#define AMD_ID_DL324T	0x225C225C	/* 29DL324T ID (32 M, top boot sector)	*/
+#define AMD_ID_DL324B	0x225F225F	/* 29DL324B ID (32 M, bottom boot sect) */
+
+#define AMD_ID_DL640	0x227E227E	/* 29DL640D ID (64 M, dual boot sectors)*/
+#define AMD_ID_MIRROR	0x227E227E	/* 1st ID word for MirrorBit family */
+#define AMD_ID_DL640G_2 0x22022202	/* 2nd ID word for AM29DL640G  at 0x38 */
+#define AMD_ID_DL640G_3 0x22012201	/* 3rd ID word for AM29DL640G  at 0x3c */
+#define AMD_ID_LV640U_2 0x220C220C	/* 2nd ID word for AM29LV640M  at 0x38 */
+#define AMD_ID_LV640U_3 0x22012201	/* 3rd ID word for AM29LV640M  at 0x3c */
+#define AMD_ID_LV640MT_2 0x22102210	/* 2nd ID word for AM29LV640MT at 0x38 */
+#define AMD_ID_LV640MT_3 0x22012201	/* 3rd ID word for AM29LV640MT at 0x3c */
+#define AMD_ID_LV640MB_2 0x22102210	/* 2nd ID word for AM29LV640MB at 0x38 */
+#define AMD_ID_LV640MB_3 0x22002200	/* 3rd ID word for AM29LV640MB at 0x3c */
+#define AMD_ID_LV128U_2 0x22122212	/* 2nd ID word for AM29LV128M  at 0x38 */
+#define AMD_ID_LV128U_3 0x22002200	/* 3rd ID word for AM29LV128M  at 0x3c */
+#define AMD_ID_LV256U_2 0x22122212	/* 2nd ID word for AM29LV256M  at 0x38 */
+#define AMD_ID_LV256U_3 0x22012201	/* 3rd ID word for AM29LV256M  at 0x3c */
+#define AMD_ID_GL064M_2 0x22132213	/* 2nd ID word for S29GL064M-R6 */
+#define AMD_ID_GL064M_3 0x22012201	/* 3rd ID word for S29GL064M-R6 */
+#define AMD_ID_GL064MT_2 0x22102210	/* 2nd ID word for S29GL064M-R3 (top boot sector) */
+#define AMD_ID_GL064MT_3 0x22012201	/* 3rd ID word for S29GL064M-R3 (top boot sector) */
+#define AMD_ID_GL128N_2	0x22212221	/* 2nd ID word for S29GL128N */
+#define AMD_ID_GL128N_3	0x22012201	/* 3rd ID word for S29GL128N */
+
+
+#define AMD_ID_LV320B_2 0x221A221A	/* 2d ID word for AM29LV320MB at 0x38 */
+#define AMD_ID_LV320B_3 0x22002200	/* 3d ID word for AM29LV320MB at 0x3c */
+
+#define AMD_ID_LV640U	0x22D722D7	/* 29LV640U ID (64 M, uniform sectors)	*/
+#define AMD_ID_LV650U	0x22D722D7	/* 29LV650U ID (64 M, uniform sectors)	*/
+
+#define ATM_ID_BV1614	0x000000C0	/* 49BV1614  ID */
+#define ATM_ID_BV1614A	0x000000C8	/* 49BV1614A ID */
+#define ATM_ID_BV6416	0x000000D6	/* 49BV6416  ID */
+
+#define FUJI_ID_29F800BA  0x22582258	/* MBM29F800BA ID  (8M) */
+#define FUJI_ID_29F800TA  0x22D622D6	/* MBM29F800TA ID  (8M) */
+#define FUJI_ID_29LV650UE 0x22d722d7	/* MBM29LV650UE/651UE ID (8M = 128 x 32kWord) */
+
+#define SST_ID_xF200A	0x27892789	/* 39xF200A ID ( 2M = 128K x 16 )	*/
+#define SST_ID_xF400A	0x27802780	/* 39xF400A ID ( 4M = 256K x 16 )	*/
+#define SST_ID_xF800A	0x27812781	/* 39xF800A ID ( 8M = 512K x 16 )	*/
+#define SST_ID_xF160A	0x27822782	/* 39xF800A ID (16M =	1M x 16 )	*/
+#define SST_ID_xF1601	0x234B234B	/* 39xF1601 ID (16M =	1M x 16 )	*/
+#define SST_ID_xF1602	0x234A234A	/* 39xF1602 ID (16M =	1M x 16 )	*/
+#define SST_ID_xF3201	0x235B235B	/* 39xF3201 ID (32M =	2M x 16 )	*/
+#define SST_ID_xF3202	0x235A235A	/* 39xF3202 ID (32M =	2M x 16 )	*/
+#define SST_ID_xF6401	0x236B236B	/* 39xF6401 ID (64M =	4M x 16 )	*/
+#define SST_ID_xF6402	0x236A236A	/* 39xF6402 ID (64M =	4M x 16 )	*/
+#define SST_ID_xF020	0xBFD6BFD6	/* 39xF020 ID (256KB = 2Mbit x 8)	*/
+#define SST_ID_xF040	0xBFD7BFD7	/* 39xF040 ID (512KB = 4Mbit x 8)	*/
+
+#define STM_ID_F040B	0xE2		/* M29F040B ID ( 4M = 512K x 8	)	*/
+					/* 8 64K x 8 uniform sectors		*/
+
+#define STM_ID_x800AB	0x005B005B	/* M29W800AB ID (8M = 512K x 16 )	*/
+#define STM_ID_29W320DT 0x22CA22CA	/* M29W320DT ID (32 M, top boot sector) */
+#define STM_ID_29W320DB 0x22CB22CB	/* M29W320DB ID (32 M, bottom boot sect)	*/
+#define STM_ID_29W040B	0x00E300E3	/* M29W040B ID (4M = 512K x 8)	*/
+#define FLASH_PSD4256GV 0x00E9		/* PSD4256 Flash and CPLD combination	*/
+
+#define INTEL_ID_28F016S    0x66a066a0	/* 28F016S[VS] ID (16M = 512k x 16)	*/
+#define INTEL_ID_28F800B3T  0x88928892	/*  8M = 512K x 16 top boot sector	*/
+#define INTEL_ID_28F800B3B  0x88938893	/*  8M = 512K x 16 bottom boot sector	*/
+#define INTEL_ID_28F160B3T  0x88908890	/*  16M = 1M x 16 top boot sector	*/
+#define INTEL_ID_28F160B3B  0x88918891	/*  16M = 1M x 16 bottom boot sector	*/
+#define INTEL_ID_28F320B3T  0x88968896	/*  32M = 2M x 16 top boot sector	*/
+#define INTEL_ID_28F320B3B  0x88978897	/*  32M = 2M x 16 bottom boot sector	*/
+#define INTEL_ID_28F640B3T  0x88988898	/*  64M = 4M x 16 top boot sector	*/
+#define INTEL_ID_28F640B3B  0x88998899	/*  64M = 4M x 16 bottom boot sector	*/
+#define INTEL_ID_28F160F3B  0x88F488F4	/*  16M = 1M x 16 bottom boot sector	*/
+
+#define INTEL_ID_28F800C3T  0x88C088C0	/*  8M = 512K x 16 top boot sector	*/
+#define INTEL_ID_28F800C3B  0x88C188C1	/*  8M = 512K x 16 bottom boot sector	*/
+#define INTEL_ID_28F160C3T  0x88C288C2	/*  16M = 1M x 16 top boot sector	*/
+#define INTEL_ID_28F160C3B  0x88C388C3	/*  16M = 1M x 16 bottom boot sector	*/
+#define INTEL_ID_28F320C3T  0x88C488C4	/*  32M = 2M x 16 top boot sector	*/
+#define INTEL_ID_28F320C3B  0x88C588C5	/*  32M = 2M x 16 bottom boot sector	*/
+#define INTEL_ID_28F640C3T  0x88CC88CC	/*  64M = 4M x 16 top boot sector	*/
+#define INTEL_ID_28F640C3B  0x88CD88CD	/*  64M = 4M x 16 bottom boot sector	*/
+
+#define INTEL_ID_28F128J3   0x89188918	/*  16M = 8M x 16 x 128 */
+#define INTEL_ID_28F320J5   0x00140014	/*  32M = 128K x  32	*/
+#define INTEL_ID_28F640J5   0x00150015	/*  64M = 128K x  64	*/
+#define INTEL_ID_28F320J3A  0x00160016	/*  32M = 128K x  32	*/
+#define INTEL_ID_28F640J3A  0x00170017	/*  64M = 128K x  64	*/
+#define INTEL_ID_28F128J3A  0x00180018	/* 128M = 128K x 128	*/
+#define INTEL_ID_28F256J3A  0x001D001D	/* 256M = 128K x 256	*/
+#define INTEL_ID_28F256L18T 0x880D880D	/* 256M = 128K x 255 + 32k x 4 */
+#define INTEL_ID_28F64K3    0x88018801	/*  64M =  32K x 255 + 32k x 4 */
+#define INTEL_ID_28F128K3   0x88028802	/* 128M =  64K x 255 + 32k x 4 */
+#define INTEL_ID_28F256K3   0x88038803	/* 256M = 128K x 255 + 32k x 4 */
+#define INTEL_ID_28F64P30T  0x88178817	/*  64M =  32K x 255 + 32k x 4 */
+#define INTEL_ID_28F64P30B  0x881A881A	/*  64M =  32K x 255 + 32k x 4 */
+#define INTEL_ID_28F128P30T 0x88188818	/* 128M =  64K x 255 + 32k x 4 */
+#define INTEL_ID_28F128P30B 0x881B881B	/* 128M =  64K x 255 + 32k x 4 */
+#define INTEL_ID_28F256P30T 0x88198819	/* 256M = 128K x 255 + 32k x 4 */
+#define INTEL_ID_28F256P30B 0x881C881C	/* 256M = 128K x 255 + 32k x 4 */
+
+#define INTEL_ID_28F160S3   0x00D000D0	/*  16M = 512K x  32 (64kB x 32)	*/
+#define INTEL_ID_28F320S3   0x00D400D4	/*  32M = 512K x  64 (64kB x 64)	*/
+
+/* Note that the Sharp 28F016SC is compatible with the Intel E28F016SC */
+#define SHARP_ID_28F016SCL  0xAAAAAAAA	/* LH28F016SCT-L95 2Mx8, 32 64k blocks	*/
+#define SHARP_ID_28F016SCZ  0xA0A0A0A0	/* LH28F016SCT-Z4  2Mx8, 32 64k blocks	*/
+#define SHARP_ID_28F008SC   0xA6A6A6A6	/* LH28F008SCT-L12 1Mx8, 16 64k blocks	*/
+					/* LH28F008SCR-L85 1Mx8, 16 64k blocks	*/
+
+#define TOSH_ID_FVT160	0xC2		/* TC58FVT160 ID (16 M, top )		*/
+#define TOSH_ID_FVB160	0x43		/* TC58FVT160 ID (16 M, bottom )	*/
+
+/*-----------------------------------------------------------------------
+ * Internal FLASH identification codes
+ *
+ * Be careful when adding new type! Odd numbers are "bottom boot sector" types!
+ */
+
+#define FLASH_AM040	0x0001		/* AMD Am29F040B, Am29LV040B		*/
+					/* Bright Micro BM29F040		*/
+					/* Fujitsu MBM29F040A			*/
+					/* STM M29W040B				*/
+					/* SGS Thomson M29F040B			*/
+					/* 8 64K x 8 uniform sectors		*/
+#define FLASH_AM400T	0x0002		/* AMD AM29LV400			*/
+#define FLASH_AM400B	0x0003
+#define FLASH_AM800T	0x0004		/* AMD AM29LV800			*/
+#define FLASH_AM800B	0x0005
+#define FLASH_AM116DT	0x0026		/* AMD AM29LV116DT (2Mx8bit) */
+#define FLASH_AM116DB	0x0027		/* AMD AM29LV116DB (2Mx8bit) */
+#define FLASH_AM160T	0x0006		/* AMD AM29LV160			*/
+#define FLASH_AM160LV	0x0046		/* AMD29LV160DB (2M = 2Mx8bit ) */
+#define FLASH_AM160B	0x0007
+#define FLASH_AM320T	0x0008		/* AMD AM29LV320			*/
+#define FLASH_AM320B	0x0009
+
+#define FLASH_AM080	0x000A		/* AMD Am29F080B			*/
+					/* 16 64K x 8 uniform sectors		*/
+
+#define FLASH_AMDL322T	0x0010		/* AMD AM29DL322			*/
+#define FLASH_AMDL322B	0x0011
+#define FLASH_AMDL323T	0x0012		/* AMD AM29DL323			*/
+#define FLASH_AMDL323B	0x0013
+#define FLASH_AMDL324T	0x0014		/* AMD AM29DL324			*/
+#define FLASH_AMDL324B	0x0015
+
+#define FLASH_AMDLV033C 0x0018
+#define FLASH_AMDLV065D 0x001A
+
+#define FLASH_AMDL640	0x0016		/* AMD AM29DL640D			*/
+#define FLASH_AMD016	0x0018		/* AMD AM29F016D			*/
+#define FLASH_AMDL640MB 0x0019		/* AMD AM29LV640MB (64M, bottom boot sect)*/
+#define FLASH_AMDL640MT 0x001A		/* AMD AM29LV640MT (64M, top boot sect) */
+
+#define FLASH_SST200A	0x0040		/* SST 39xF200A ID (  2M = 128K x 16 )	*/
+#define FLASH_SST400A	0x0042		/* SST 39xF400A ID (  4M = 256K x 16 )	*/
+#define FLASH_SST800A	0x0044		/* SST 39xF800A ID (  8M = 512K x 16 )	*/
+#define FLASH_SST160A	0x0046		/* SST 39xF160A ID ( 16M =   1M x 16 )	*/
+#define FLASH_SST320	0x0048		/* SST 39xF160A ID ( 16M =   1M x 16 )	*/
+#define FLASH_SST640	0x004A		/* SST 39xF160A ID ( 16M =   1M x 16 )	*/
+#define FLASH_SST020	0x0024		/* SST 39xF020 ID (256KB = 2Mbit x 8 )	*/
+#define FLASH_SST040	0x000E		/* SST 39xF040 ID (512KB = 4Mbit x 8 )	*/
+
+#define FLASH_STM800AB	0x0051		/* STM M29WF800AB  (  8M = 512K x 16 )	*/
+#define FLASH_STMW320DT 0x0052		/* STM M29W320DT   (32 M, top boot sector)	*/
+#define FLASH_STMW320DB 0x0053		/* STM M29W320DB   (32 M, bottom boot sect)*/
+#define FLASH_STM320DB	0x00CB		/* STM M29W320DB (4M = 64K x 64, bottom)*/
+#define FLASH_STM800DT	0x00D7		/* STM M29W800DT (1M = 64K x 16, top)	*/
+#define FLASH_STM800DB	0x005B		/* STM M29W800DB (1M = 64K x 16, bottom)*/
+
+#define FLASH_28F400_T	0x0062		/* MT  28F400B3 ID (  4M = 256K x 16 )	*/
+#define FLASH_28F400_B	0x0063		/* MT  28F400B3 ID (  4M = 256K x 16 )	*/
+
+#define FLASH_INTEL800T 0x0074		/* INTEL 28F800B3T (  8M = 512K x 16 )	*/
+#define FLASH_INTEL800B 0x0075		/* INTEL 28F800B3B (  8M = 512K x 16 )	*/
+#define FLASH_INTEL160T 0x0076		/* INTEL 28F160B3T ( 16M =  1 M x 16 )	*/
+#define FLASH_INTEL160B 0x0077		/* INTEL 28F160B3B ( 16M =  1 M x 16 )	*/
+#define FLASH_INTEL320T 0x0078		/* INTEL 28F320B3T ( 32M =  2 M x 16 )	*/
+#define FLASH_INTEL320B 0x0079		/* INTEL 28F320B3B ( 32M =  2 M x 16 )	*/
+#define FLASH_INTEL640T 0x007A		/* INTEL 28F320B3T ( 64M =  4 M x 16 )	*/
+#define FLASH_INTEL640B 0x007B		/* INTEL 28F320B3B ( 64M =  4 M x 16 )	*/
+
+#define FLASH_28F008S5	0x0080		/* Intel 28F008S5  (  1M =  64K x 16 )	*/
+#define FLASH_28F016SV	0x0081		/* Intel 28F016SV  ( 16M = 512k x 32 )	*/
+#define FLASH_28F800_B	0x0083		/* Intel E28F800B  (  1M = ? )		*/
+#define FLASH_AM29F800B 0x0084		/* AMD Am29F800BB  (  1M = ? )		*/
+#define FLASH_28F320J5	0x0085		/* Intel 28F320J5  (  4M = 128K x 32 )	*/
+#define FLASH_28F160S3	0x0086		/* Intel 28F160S3  ( 16M = 512K x 32 )	*/
+#define FLASH_28F320S3	0x0088		/* Intel 28F320S3  ( 32M = 512K x 64 )	*/
+#define FLASH_AM640U	0x0090		/* AMD Am29LV640U  ( 64M = 4M x 16 )	*/
+#define FLASH_AM033C	0x0091		/* AMD AM29LV033   ( 32M = 4M x 8 )	*/
+#define FLASH_LH28F016SCT 0x0092	/* Sharp 28F016SCT ( 8 Meg Flash SIMM ) */
+#define FLASH_28F160F3B 0x0093		/* Intel 28F160F3B ( 16M = 1M x 16 )	*/
+#define FLASH_AM065D	0x0093
+
+#define FLASH_28F640J5	0x0099		/* INTEL 28F640J5  ( 64M = 128K x  64)	*/
+
+#define FLASH_28F800C3T 0x009A		/* Intel 28F800C3T (  8M = 512K x 16 )	*/
+#define FLASH_28F800C3B 0x009B		/* Intel 28F800C3B (  8M = 512K x 16 )	*/
+#define FLASH_28F160C3T 0x009C		/* Intel 28F160C3T ( 16M = 1M x 16 )	*/
+#define FLASH_28F160C3B 0x009D		/* Intel 28F160C3B ( 16M = 1M x 16 )	*/
+#define FLASH_28F320C3T 0x009E		/* Intel 28F320C3T ( 32M = 2M x 16 )	*/
+#define FLASH_28F320C3B 0x009F		/* Intel 28F320C3B ( 32M = 2M x 16 )	*/
+#define FLASH_28F640C3T 0x00A0		/* Intel 28F640C3T ( 64M = 4M x 16 )	*/
+#define FLASH_28F640C3B 0x00A1		/* Intel 28F640C3B ( 64M = 4M x 16 )	*/
+#define FLASH_AMLV320U	0x00A2		/* AMD 29LV320M	   ( 32M = 2M x 16 )	*/
+
+#define FLASH_AM033	0x00A3		/* AMD AmL033C90V1   (32M = 4M x 8)	*/
+#define FLASH_AM065	0x0093		/* AMD AmL065DU12RI  (64M = 8M x 8)	*/
+#define FLASH_AT040	0x00A5		/* Amtel AT49LV040   (4M = 512K x 8)	*/
+
+#define FLASH_AMLV640U	0x00A4		/* AMD 29LV640M	   ( 64M = 4M x 16 )	*/
+#define FLASH_AMLV128U	0x00A6		/* AMD 29LV128M	   ( 128M = 8M x 16 )	*/
+#define FLASH_AMLV320B	0x00A7		/* AMD 29LV320MB   ( 32M = 2M x 16 )	*/
+#define FLASH_AMLV320T	0x00A8		/* AMD 29LV320MT   ( 32M = 2M x 16 )	*/
+#define FLASH_AMLV256U	0x00AA		/* AMD 29LV256M	   ( 256M = 16M x 16 )	*/
+#define FLASH_MXLV320B	0x00AB		/* MX  29LV320MB   ( 32M = 2M x 16 )	*/
+#define FLASH_MXLV320T	0x00AC		/* MX  29LV320MT   ( 32M = 2M x 16 )	*/
+#define FLASH_28F256L18T 0x00B0		/* Intel 28F256L18T 256M = 128K x 255 + 32k x 4 */
+#define FLASH_AMDL163T	0x00B2		/* AMD AM29DL163T (2M x 16 )			*/
+#define FLASH_AMDL163B	0x00B3
+#define FLASH_28F64K3	0x00B4		/* Intel 28F64K3   (  64M)		*/
+#define FLASH_28F128K3	0x00B6		/* Intel 28F128K3  ( 128M = 8M x 16 )	*/
+#define FLASH_28F256K3	0x00B8		/* Intel 28F256K3  ( 256M = 16M x 16 )	*/
+
+#define FLASH_28F320J3A 0x00C0		/* INTEL 28F320J3A ( 32M = 128K x  32)	*/
+#define FLASH_28F640J3A 0x00C2		/* INTEL 28F640J3A ( 64M = 128K x  64)	*/
+#define FLASH_28F128J3A 0x00C4		/* INTEL 28F128J3A (128M = 128K x 128)	*/
+#define FLASH_28F256J3A 0x00C6		/* INTEL 28F256J3A (256M = 128K x 256)	*/
+
+#define FLASH_FUJLV650	0x00D0		/* Fujitsu MBM 29LV650UE/651UE		*/
+#define FLASH_MT28S4M16LC 0x00E1	/* Micron MT28S4M16LC			*/
+#define FLASH_S29GL064M 0x00F0		/* Spansion S29GL064M-R6		*/
+#define FLASH_S29GL128N 0x00F1		/* Spansion S29GL128N			*/
+
+#define FLASH_UNKNOWN	0xFFFF		/* unknown flash type			*/
+
+
+/* manufacturer offsets
+ */
+#define FLASH_MAN_AMD	0x00000000	/* AMD					*/
+#define FLASH_MAN_FUJ	0x00010000	/* Fujitsu				*/
+#define FLASH_MAN_BM	0x00020000	/* Bright Microelectronics		*/
+#define FLASH_MAN_MX	0x00030000	/* MXIC					*/
+#define FLASH_MAN_STM	0x00040000
+#define FLASH_MAN_TOSH	0x00050000	/* Toshiba				*/
+#define FLASH_MAN_EXCEL 0x00060000	/* Excel Semiconductor			*/
+#define FLASH_MAN_SST	0x00100000
+#define FLASH_MAN_INTEL 0x00300000
+#define FLASH_MAN_MT	0x00400000
+#define FLASH_MAN_SHARP 0x00500000
+#define FLASH_MAN_ATM	0x00600000
+#define FLASH_MAN_CFI	0x01000000
+
+
+#define FLASH_TYPEMASK	0x0000FFFF	/* extract FLASH type	information	*/
+#define FLASH_VENDMASK	0xFFFF0000	/* extract FLASH vendor information	*/
+
+#define FLASH_AMD_COMP	0x000FFFFF	/* Up to this ID, FLASH is compatible	*/
+					/* with AMD, Fujitsu and SST		*/
+					/* (JEDEC standard commands ?)		*/
+
+#define FLASH_BTYPE	0x0001		/* mask for bottom boot sector type	*/
+
+/*-----------------------------------------------------------------------
+ * Timeout constants:
+ *
+ * We can't find any specifications for maximum chip erase times,
+ * so these values are guestimates.
+ */
+#define FLASH_ERASE_TIMEOUT	120000	/* timeout for erasing in ms		*/
+#define FLASH_WRITE_TIMEOUT	500	/* timeout for writes  in ms		*/
+
+#endif /* __CFI_FLASH_H */
+
diff --git a/drivers/mtd/nor/cfi_flash_amd.c b/drivers/mtd/nor/cfi_flash_amd.c
new file mode 100644
index 0000000..45c59b9
--- /dev/null
+++ b/drivers/mtd/nor/cfi_flash_amd.c
@@ -0,0 +1,268 @@
+#include <common.h>
+#include <stdio.h>
+#include "cfi_flash.h"
+
+/*-----------------------------------------------------------------------
+ * Reverse the order of the erase regions in the CFI QRY structure.
+ * This is needed for chips that are either a) correctly detected as
+ * top-boot, or b) buggy.
+ */
+static void cfi_reverse_geometry(struct cfi_qry *qry)
+{
+	unsigned int i, j;
+	u32 tmp;
+
+	for (i = 0, j = qry->num_erase_regions - 1; i < j; i++, j--) {
+		tmp = qry->erase_region_info[i];
+		qry->erase_region_info[i] = qry->erase_region_info[j];
+		qry->erase_region_info[j] = tmp;
+	}
+}
+
+static void flash_unlock_seq (struct flash_info *info)
+{
+	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_UNLOCK_START);
+	flash_write_cmd (info, 0, info->addr_unlock2, AMD_CMD_UNLOCK_ACK);
+}
+
+/*
+ * read jedec ids from device and set corresponding fields in info struct
+ *
+ * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
+ *
+*/
+static void amd_read_jedec_ids (struct flash_info *info)
+{
+	info->cmd_reset		= AMD_CMD_RESET;
+	info->manufacturer_id = 0;
+	info->device_id       = 0;
+	info->device_id2      = 0;
+
+	/* calculate command offsets as in the Linux driver */
+	info->addr_unlock1 = 0x555;
+	info->addr_unlock2 = 0x2AA;
+
+	/*
+	 * modify the unlock address if we are in compatibility mode
+	 */
+	if (	/* x8/x16 in x8 mode */
+		((info->chipwidth == FLASH_CFI_BY8) &&
+			(info->interface == FLASH_CFI_X8X16)) ||
+		/* x16/x32 in x16 mode */
+		((info->chipwidth == FLASH_CFI_BY16) &&
+			(info->interface == FLASH_CFI_X16X32)))
+	{
+		info->addr_unlock1 = 0xaaa;
+		info->addr_unlock2 = 0x555;
+	}
+
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
+	flash_unlock_seq(info);
+	flash_write_cmd(info, 0, info->addr_unlock1, FLASH_CMD_READ_ID);
+	udelay(1000); /* some flash are slow to respond */
+
+	info->manufacturer_id = jedec_read_mfr(info);
+	info->device_id = flash_read_uchar (info,
+					FLASH_OFFSET_DEVICE_ID);
+	if (info->device_id == 0x7E) {
+		/* AMD 3-byte (expanded) device ids */
+		info->device_id2 = flash_read_uchar (info,
+					FLASH_OFFSET_DEVICE_ID2);
+		info->device_id2 <<= 8;
+		info->device_id2 |= flash_read_uchar (info,
+					FLASH_OFFSET_DEVICE_ID3);
+	}
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
+}
+
+static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
+{
+	void *addr;
+	cfiword_t cword;
+	int retval;
+
+	addr = flash_make_addr (info, sect, offset);
+	flash_make_cmd (info, cmd, &cword);
+	if (bankwidth_is_1(info)) {
+		retval = flash_read8(addr) != flash_read8(addr);
+	} else if (bankwidth_is_2(info)) {
+		retval = flash_read16(addr) != flash_read16(addr);
+	} else if (bankwidth_is_4(info)) {
+		retval = flash_read32(addr) != flash_read32(addr);
+	} else if (bankwidth_is_8(info)) {
+		retval = ( (flash_read32( addr ) != flash_read32( addr )) ||
+			   (flash_read32(addr+4) != flash_read32(addr+4)) );
+	} else
+		retval = 0;
+
+	return retval;
+}
+
+/*
+ * flash_is_busy - check to see if the flash is busy
+ * This routine checks the status of the chip and returns true if the chip is busy
+ */
+static int amd_flash_is_busy (struct flash_info *info, flash_sect_t sect)
+{
+	return flash_toggle (info, sect, 0, AMD_STATUS_TOGGLE);
+}
+
+static int amd_flash_erase_one (struct flash_info *info, long sect)
+{
+	flash_unlock_seq(info);
+	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_ERASE_START);
+	flash_unlock_seq(info);
+	flash_write_cmd (info, sect, 0, AMD_CMD_ERASE_SECTOR);
+
+	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
+}
+
+static void amd_flash_prepare_write(struct flash_info *info)
+{
+	flash_unlock_seq(info);
+	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_WRITE);
+}
+
+#ifdef CONFIG_CFI_BUFFER_WRITE
+static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
+				  int len)
+{
+	flash_sect_t sector;
+	int cnt;
+	int retcode;
+	void *src = (void*)cp;
+	void *dst = (void *)dest;
+	cfiword_t cword;
+
+	sector = find_sector (info, dest);
+
+	flash_unlock_seq(info);
+	flash_make_cmd (info, AMD_CMD_WRITE_TO_BUFFER, &cword);
+	flash_write_word(info, cword, (void *)dest);
+
+	if (bankwidth_is_1(info)) {
+		cnt = len;
+		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
+		while (cnt-- > 0) {
+			flash_write8(flash_read8(src), dst);
+			src += 1, dst += 1;
+		}
+	} else if (bankwidth_is_2(info)) {
+		cnt = len >> 1;
+		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
+		while (cnt-- > 0) {
+			flash_write16(flash_read16(src), dst);
+			src += 2, dst += 2;
+		}
+	} else if (bankwidth_is_4(info)) {
+		cnt = len >> 2;
+		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
+		while (cnt-- > 0) {
+			flash_write32(flash_read32(src), dst);
+			src += 4, dst += 4;
+		}
+	} else if (bankwidth_is_8(info)) {
+		cnt = len >> 3;
+		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
+		while (cnt-- > 0) {
+			flash_write64(flash_read64(src), dst);
+			src += 8, dst += 8;
+		}
+	}
+
+	flash_write_cmd (info, sector, 0, AMD_CMD_WRITE_BUFFER_CONFIRM);
+	retcode = flash_status_check (info, sector, info->buffer_write_tout,
+					   "buffer write");
+	return retcode;
+}
+#else
+#define amd_flash_write_cfibuffer NULL
+#endif /* CONFIG_CFI_BUFFER_WRITE */
+
+static int amd_flash_real_protect (struct flash_info *info, long sector, int prot)
+{
+	if (info->manufacturer_id != (uchar)ATM_MANUFACT)
+		return 0;
+
+	if (prot) {
+		flash_unlock_seq (info);
+		flash_write_cmd (info, 0, info->addr_unlock1,
+				 ATM_CMD_SOFTLOCK_START);
+		flash_unlock_seq (info);
+		flash_write_cmd (info, sector, 0, ATM_CMD_LOCK_SECT);
+	} else {
+		flash_write_cmd (info, 0, info->addr_unlock1,
+				 AMD_CMD_UNLOCK_START);
+		if (info->device_id == ATM_ID_BV6416)
+			flash_write_cmd (info, sector, 0,
+					 ATM_CMD_UNLOCK_SECT);
+	}
+
+	return 0;
+}
+
+/*
+ * Manufacturer-specific quirks. Add workarounds for geometry
+ * reversal, etc. here.
+ */
+static void flash_fixup_amd (struct flash_info *info, struct cfi_qry *qry)
+{
+	/* check if flash geometry needs reversal */
+	if (qry->num_erase_regions > 1) {
+		/* reverse geometry if top boot part */
+		if (info->cfi_version < 0x3131) {
+			/* CFI < 1.1, try to guess from device id */
+			if ((info->device_id & 0x80) != 0)
+				cfi_reverse_geometry(qry);
+		} else if (flash_read_uchar(info, info->ext_addr + 0xf) == 3) {
+			/* CFI >= 1.1, deduct from top/bottom flag */
+			/* note: ext_addr is valid since cfi_version > 0 */
+			cfi_reverse_geometry(qry);
+		}
+	}
+}
+
+static void flash_fixup_atmel(struct flash_info *info, struct cfi_qry *qry)
+{
+	int reverse_geometry = 0;
+
+	/* Check the "top boot" bit in the PRI */
+	if (info->ext_addr && !(flash_read_uchar(info, info->ext_addr + 6) & 1))
+		reverse_geometry = 1;
+
+	/* AT49BV6416(T) list the erase regions in the wrong order.
+	 * However, the device ID is identical with the non-broken
+	 * AT49BV642D since u-boot only reads the low byte (they
+	 * differ in the high byte.) So leave out this fixup for now.
+	 */
+	if (info->device_id == 0xd6 || info->device_id == 0xd2)
+		reverse_geometry = !reverse_geometry;
+
+	if (reverse_geometry)
+		cfi_reverse_geometry(qry);
+}
+
+static void amd_flash_fixup(struct flash_info *info, struct cfi_qry *qry)
+{
+	/* Do manufacturer-specific fixups */
+	switch (info->manufacturer_id) {
+	case 0x0001:
+		flash_fixup_amd(info, qry);
+		break;
+	case 0x001f:
+		flash_fixup_atmel(info, qry);
+		break;
+        }
+}
+
+struct cfi_cmd_set cfi_cmd_set_amd = {
+	.flash_write_cfibuffer = amd_flash_write_cfibuffer,
+	.flash_erase_one = amd_flash_erase_one,
+	.flash_is_busy = amd_flash_is_busy,
+	.flash_read_jedec_ids = amd_read_jedec_ids,
+	.flash_prepare_write = amd_flash_prepare_write,
+	.flash_status_check = flash_generic_status_check,
+	.flash_real_protect = amd_flash_real_protect,
+	.flash_fixup = amd_flash_fixup,
+};
+
diff --git a/drivers/mtd/nor/cfi_flash_intel.c b/drivers/mtd/nor/cfi_flash_intel.c
new file mode 100644
index 0000000..32e581a
--- /dev/null
+++ b/drivers/mtd/nor/cfi_flash_intel.c
@@ -0,0 +1,173 @@
+#include <common.h>
+#include "cfi_flash.h"
+
+/*
+ * read jedec ids from device and set corresponding fields in info struct
+ *
+ * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
+ *
+*/
+static void intel_read_jedec_ids (struct flash_info *info)
+{
+	info->cmd_reset		= FLASH_CMD_RESET;
+	info->manufacturer_id = 0;
+	info->device_id       = 0;
+	info->device_id2      = 0;
+
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
+	flash_write_cmd(info, 0, 0, FLASH_CMD_READ_ID);
+	udelay(1000); /* some flash are slow to respond */
+
+	info->manufacturer_id = jedec_read_mfr(info);
+	info->device_id = flash_read_uchar (info,
+					FLASH_OFFSET_DEVICE_ID);
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
+}
+
+/*
+ * flash_is_busy - check to see if the flash is busy
+ * This routine checks the status of the chip and returns true if the chip is busy
+ */
+static int intel_flash_is_busy (struct flash_info *info, flash_sect_t sect)
+{
+	return !flash_isset (info, sect, 0, FLASH_STATUS_DONE);
+}
+
+static int intel_flash_erase_one (struct flash_info *info, long sect)
+{
+	flash_write_cmd (info, sect, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd (info, sect, 0, FLASH_CMD_BLOCK_ERASE);
+	flash_write_cmd (info, sect, 0, FLASH_CMD_ERASE_CONFIRM);
+
+	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
+}
+
+static void intel_flash_prepare_write(struct flash_info *info)
+{
+	flash_write_cmd (info, 0, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd (info, 0, 0, FLASH_CMD_WRITE);
+}
+
+#ifdef CONFIG_CFI_BUFFER_WRITE
+static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
+				  int len)
+{
+	flash_sect_t sector;
+	int cnt;
+	int retcode;
+	void *src = (void*)cp;
+	void *dst = (void *)dest;
+	/* reduce width due to possible alignment problems */
+	const unsigned long ptr = (unsigned long)dest | (unsigned long)cp | info->portwidth;
+	const int width = ptr & -ptr;
+
+	sector = find_sector (info, dest);
+	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_TO_BUFFER);
+
+	retcode = flash_generic_status_check (info, sector, info->buffer_write_tout,
+					   "write to buffer");
+	if (retcode != ERR_OK)
+		return retcode;
+
+	/* reduce the number of loops by the width of the port	*/
+	cnt = len / width;
+
+	flash_write_cmd(info, sector, 0, cnt - 1);
+	while (cnt-- > 0) {
+		switch (width) {
+		case 1:
+			flash_write8(flash_read8(src), dst);
+			src += 1, dst += 1;
+			break;
+		case 2:
+			flash_write16(flash_read16(src), dst);
+			src += 2, dst += 2;
+			break;
+		case 4:
+			flash_write32(flash_read32(src), dst);
+			src += 4, dst += 4;
+			break;
+		case 8:
+			flash_write64(flash_read64(src), dst);
+			src += 8, dst += 8;
+			break;
+		}
+	}
+
+	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_BUFFER_CONFIRM);
+	retcode = flash_status_check (info, sector,
+					   info->buffer_write_tout,
+					   "buffer write");
+	return retcode;
+}
+#else
+#define intel_flash_write_cfibuffer NULL
+#endif /* CONFIG_CFI_BUFFER_WRITE */
+
+static int intel_flash_status_check (struct flash_info *info, flash_sect_t sector,
+				    uint64_t tout, char *prompt)
+{
+	int retcode;
+
+	retcode = flash_generic_status_check (info, sector, tout, prompt);
+
+	if ((retcode == ERR_OK)
+	    && !flash_isequal (info, sector, 0, FLASH_STATUS_DONE)) {
+		retcode = ERR_INVAL;
+		printf ("Flash %s error at address %lx\n", prompt,
+			info->start[sector]);
+		if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS | FLASH_STATUS_PSLBS)) {
+			puts ("Command Sequence Error.\n");
+		} else if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS)) {
+			puts ("Block Erase Error.\n");
+			retcode = ERR_NOT_ERASED;
+		} else if (flash_isset (info, sector, 0, FLASH_STATUS_PSLBS)) {
+			puts ("Locking Error\n");
+		}
+		if (flash_isset (info, sector, 0, FLASH_STATUS_DPS)) {
+			puts ("Block locked.\n");
+			retcode = ERR_PROTECTED;
+		}
+		if (flash_isset (info, sector, 0, FLASH_STATUS_VPENS))
+			puts ("Vpp Low Error.\n");
+	}
+	flash_write_cmd (info, sector, 0, info->cmd_reset);
+
+	return retcode;
+}
+
+static int intel_flash_real_protect (struct flash_info *info, long sector, int prot)
+{
+	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
+	if (prot)
+		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_SET);
+	else
+		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
+
+	return 0;
+}
+
+static void intel_flash_fixup (struct flash_info *info, struct cfi_qry *qry)
+{
+#ifdef CFG_FLASH_PROTECTION
+	/* read legacy lock/unlock bit from intel flash */
+	if (info->ext_addr) {
+		info->legacy_unlock = flash_read_uchar (info,
+				info->ext_addr + 5) & 0x08;
+	}
+#endif
+}
+
+struct cfi_cmd_set cfi_cmd_set_intel = {
+	.flash_write_cfibuffer = intel_flash_write_cfibuffer,
+	.flash_erase_one = intel_flash_erase_one,
+	.flash_is_busy = intel_flash_is_busy,
+	.flash_read_jedec_ids = intel_read_jedec_ids,
+	.flash_prepare_write = intel_flash_prepare_write,
+	.flash_status_check = intel_flash_status_check,
+	.flash_real_protect = intel_flash_real_protect,
+	.flash_fixup = intel_flash_fixup,
+};
+
diff --git a/drivers/nor/Kconfig b/drivers/nor/Kconfig
deleted file mode 100644
index c8ce24f..0000000
--- a/drivers/nor/Kconfig
+++ /dev/null
@@ -1,59 +0,0 @@
-menu "flash drivers"
-
-menuconfig DRIVER_CFI
-	bool "CFI"
-	help
-	  If you have NOR Flash devices connected to your system and wish
-	  to use them say yes here.
-
-if DRIVER_CFI
-
-config DRIVER_CFI_INTEL
-	default y
-	depends on DRIVER_CFI
-	bool "Support Intel flash chips"
-
-config DRIVER_CFI_AMD
-	default y
-	depends on DRIVER_CFI
-	bool "support AMD flash chips"
-
-config DRIVER_CFI_BANK_WIDTH_1
-	bool "Support 8-bit buswidth"
-	depends on DRIVER_CFI
-	default y
-	help
-	  If you wish to support CFI devices on a physical bus which is
-	  8 bits wide, say 'Y'.
-
-config DRIVER_CFI_BANK_WIDTH_2
-	bool "Support 16-bit buswidth"
-	depends on DRIVER_CFI
-	default y
-	help
-	  If you wish to support CFI devices on a physical bus which is
-	  16 bits wide, say 'Y'.
-
-config DRIVER_CFI_BANK_WIDTH_4
-	bool "Support 32-bit buswidth"
-	depends on DRIVER_CFI
-	default y
-	help
-	  If you wish to support CFI devices on a physical bus which is
-	  32 bits wide, say 'Y'.
-
-config DRIVER_CFI_BANK_WIDTH_8
-	bool "Support 64-bit buswidth"
-	depends on DRIVER_CFI
-	default n
-	help
-	  If you wish to support CFI devices on a physical bus which is
-	  64 bits wide, say 'Y'.
-
-config CFI_BUFFER_WRITE
-	bool "use cfi driver with buffer write"
-	depends on DRIVER_CFI || DRIVER_CFI
-
-endif
-
-endmenu
diff --git a/drivers/nor/Makefile b/drivers/nor/Makefile
deleted file mode 100644
index d255043..0000000
--- a/drivers/nor/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-obj-$(CONFIG_DRIVER_CFI) += cfi_flash.o
-obj-$(CONFIG_DRIVER_CFI_INTEL) += cfi_flash_intel.o
-obj-$(CONFIG_DRIVER_CFI_AMD) += cfi_flash_amd.o
-
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
deleted file mode 100644
index 637f98b..0000000
--- a/drivers/nor/cfi_flash.c
+++ /dev/null
@@ -1,1044 +0,0 @@
-/*
- * (C) Copyright 2002-2004
- * Brad Kemp, Seranoa Networks, Brad.Kemp@seranoa.com
- *
- * Copyright (C) 2003 Arabella Software Ltd.
- * Yuli Barcohen <yuli@arabellasw.com>
- *
- * Copyright (C) 2004
- * Ed Okerson
- *
- * Copyright (C) 2006
- * Tolunay Orkun <listmember@orkun.us>
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- *
- */
-
-/* The DEBUG define must be before common to enable debugging */
-/* #define DEBUG	*/
-
-#include <common.h>
-#include <asm/byteorder.h>
-#include <environment.h>
-#include <clock.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include <errno.h>
-#include <progress.h>
-#include "cfi_flash.h"
-
-/*
- * This file implements a Common Flash Interface (CFI) driver for barebox.
- * The width of the port and the width of the chips are determined at initialization.
- * These widths are used to calculate the address for access CFI data structures.
- *
- * References
- * JEDEC Standard JESD68 - Common Flash Interface (CFI)
- * JEDEC Standard JEP137-A Common Flash Interface (CFI) ID Codes
- * Intel Application Note 646 Common Flash Interface (CFI) and Command Sets
- * Intel 290667-008 3 Volt Intel StrataFlash Memory datasheet
- * AMD CFI Specification, Release 2.0 December 1, 2001
- * AMD/Spansion Application Note: Migration from Single-byte to Three-byte
- *   Device IDs, Publication Number 25538 Revision A, November 8, 2001
- *
- */
-
-static uint flash_offset_cfi[2]={FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT};
-
-/*
- * Check if chip width is defined. If not, start detecting with 8bit.
- */
-#ifndef CFG_FLASH_CFI_WIDTH
-#define CFG_FLASH_CFI_WIDTH	FLASH_CFI_8BIT
-#endif
-
-
-/*
- * Functions
- */
-
-static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
-{
-	if (bankwidth_is_1(info)) {
-		*cword = c;
-		return;
-	}
-
-#ifdef __BIG_ENDIAN
-	*cword = (*cword << 8) | c;
-#elif defined __LITTLE_ENDIAN
-
-	if (bankwidth_is_2(info))
-		*cword = (*cword >> 8) | (u16)c << 8;
-	else if (bankwidth_is_4(info))
-		*cword = (*cword >> 8) | (u32)c << 24;
-	else if (bankwidth_is_8(info))
-		*cword = (*cword >> 8) | (u64)c << 56;
-#else
-#error "could not determine byte order"
-#endif
-}
-
-static int flash_write_cfiword (struct flash_info *info, ulong dest,
-				cfiword_t cword)
-{
-	void *dstaddr = (void *)dest;
-	int flag;
-
-	/* Check if Flash is (sufficiently) erased */
-	if (bankwidth_is_1(info))
-		flag = ((flash_read8(dstaddr) & cword) == cword);
-	else if (bankwidth_is_2(info))
-		flag = ((flash_read16(dstaddr) & cword) == cword);
-	else if (bankwidth_is_4(info))
-		flag = ((flash_read32(dstaddr) & cword) == cword);
-	else if (bankwidth_is_8(info))
-		flag = ((flash_read64(dstaddr) & cword) == cword);
-	else
-		return 2;
-
-	if (!flag)
-		return 2;
-
-	info->cfi_cmd_set->flash_prepare_write(info);
-
-	flash_write_word(info, cword, (void *)dest);
-
-	return flash_status_check (info, find_sector (info, dest),
-					info->write_tout, "write");
-}
-
-#ifdef DEBUG
-/*
- * Debug support
- */
-void print_longlong (char *str, unsigned long long data)
-{
-	int i;
-	char *cp;
-
-	cp = (unsigned char *) &data;
-	for (i = 0; i < 8; i++)
-		sprintf (&str[i * 2], "%2.2x", *cp++);
-}
-
-static void flash_printqry (struct cfi_qry *qry)
-{
-	u8 *p = (u8 *)qry;
-	int x, y;
-	unsigned char c;
-
-	for (x = 0; x < sizeof(struct cfi_qry); x += 16) {
-		debug("%02x : ", x);
-		for (y = 0; y < 16; y++)
-			debug("%2.2x ", p[x + y]);
-		debug(" ");
-		for (y = 0; y < 16; y++) {
-			c = p[x + y];
-			if (c >= 0x20 && c <= 0x7e)
-				debug("%c", c);
-			else
-				debug(".");
-		}
-		debug("\n");
-	}
-}
-#endif
-
-/*
- * read a character at a port width address
- */
-uchar flash_read_uchar (struct flash_info *info, uint offset)
-{
-	uchar *cp = flash_make_addr(info, 0, offset);
-#if defined __LITTLE_ENDIAN
-	return flash_read8(cp);
-#else
-	return flash_read8(cp + info->portwidth - 1);
-#endif
-}
-
-/*
- * read a long word by picking the least significant byte of each maximum
- * port size word. Swap for ppc format.
- */
-static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint offset)
-{
-	uchar *addr;
-	ulong retval;
-
-#ifdef DEBUG
-	int x;
-#endif
-	addr = flash_make_addr (info, sect, offset);
-
-#ifdef DEBUG
-	debug ("long addr is at %p info->portwidth = %d\n", addr,
-	       info->portwidth);
-	for (x = 0; x < 4 * info->portwidth; x++) {
-		debug ("addr[%x] = 0x%x\n", x, flash_read8(addr + x));
-	}
-#endif
-#if defined __LITTLE_ENDIAN
-	retval = ((flash_read8(addr) << 16) |
-		  (flash_read8(addr + info->portwidth) << 24) |
-		  (flash_read8(addr + 2 * info->portwidth)) |
-		  (flash_read8(addr + 3 * info->portwidth) << 8));
-#else
-	retval = ((flash_read8(addr + 2 * info->portwidth - 1) << 24) |
-		  (flash_read8(addr + info->portwidth - 1) << 16) |
-		  (flash_read8(addr + 4 * info->portwidth - 1) << 8) |
-		  (flash_read8(addr + 3 * info->portwidth - 1)));
-#endif
-	return retval;
-}
-
-/*
- * detect if flash is compatible with the Common Flash Interface (CFI)
- * http://www.jedec.org/download/search/jesd68.pdf
- *
-*/
-u32 jedec_read_mfr(struct flash_info *info)
-{
-	int bank = 0;
-	uchar mfr;
-
-	/* According to JEDEC "Standard Manufacturer's Identification Code"
-	 * (http://www.jedec.org/download/search/jep106W.pdf)
-	 * several first banks can contain 0x7f instead of actual ID
-	 */
-	do {
-		mfr = flash_read_uchar (info,
-				(bank << 8) | FLASH_OFFSET_MANUFACTURER_ID);
-		bank++;
-	} while (mfr == FLASH_ID_CONTINUATION);
-
-	return mfr;
-}
-
-static void flash_read_cfi (struct flash_info *info, void *buf,
-		unsigned int start, size_t len)
-{
-	u8 *p = buf;
-	unsigned int i;
-
-	for (i = 0; i < len; i++)
-		p[i] = flash_read_uchar(info, start + i);
-}
-
-static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
-{
-	int cfi_offset;
-	debug ("flash detect cfi\n");
-
-	for (info->portwidth = CFG_FLASH_CFI_WIDTH;
-	     info->portwidth <= FLASH_CFI_64BIT; info->portwidth <<= 1) {
-		for (info->chipwidth = FLASH_CFI_BY8;
-		     info->chipwidth <= info->portwidth;
-		     info->chipwidth <<= 1) {
-			flash_write_cmd (info, 0, 0, AMD_CMD_RESET);
-			flash_write_cmd (info, 0, 0, FLASH_CMD_RESET);
-			for (cfi_offset=0; cfi_offset < sizeof(flash_offset_cfi)/sizeof(uint); cfi_offset++) {
-				flash_write_cmd (info, 0, flash_offset_cfi[cfi_offset], FLASH_CMD_CFI);
-				if (flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP, 'Q')
-				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 1, 'R')
-				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 2, 'Y')) {
-					flash_read_cfi(info, qry, FLASH_OFFSET_CFI_RESP,
-						       sizeof(struct cfi_qry));
-					info->interface = le16_to_cpu(qry->interface_desc);
-
-					info->cfi_offset=flash_offset_cfi[cfi_offset];
-					debug ("device interface is %d\n",
-						info->interface);
-					debug ("found port %d chip %d ",
-						info->portwidth, info->chipwidth);
-					debug ("port %d bits chip %d bits\n",
-						info->portwidth << CFI_FLASH_SHIFT_WIDTH,
-						info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
-					return 1;
-				}
-			}
-		}
-	}
-	debug ("not found\n");
-	return 0;
-}
-
-/*
- * The following code cannot be run from FLASH!
- */
-static ulong flash_get_size (struct flash_info *info)
-{
-	int i, j;
-	flash_sect_t sect_cnt;
-	unsigned long sector;
-	unsigned long tmp;
-	int size_ratio;
-	uchar num_erase_regions;
-	int erase_region_size;
-	int erase_region_count;
-	int cur_offset = 0;
-	struct cfi_qry qry;
-	unsigned long base = (unsigned long)info->base;
-
-	memset(&qry, 0, sizeof(qry));
-
-	info->ext_addr = 0;
-	info->cfi_version = 0;
-#ifdef CFG_FLASH_PROTECTION
-	info->legacy_unlock = 0;
-#endif
-
-	/* first only malloc space for the first sector */
-	info->start = xmalloc(sizeof(ulong));
-
-	info->start[0] = base;
-	info->protect = 0;
-
-	if (flash_detect_cfi (info, &qry)) {
-		info->vendor = le16_to_cpu(qry.p_id);
-		info->ext_addr = le16_to_cpu(qry.p_adr);
-		num_erase_regions = qry.num_erase_regions;
-
-		if (info->ext_addr) {
-			info->cfi_version = (ushort) flash_read_uchar (info,
-						info->ext_addr + 3) << 8;
-			info->cfi_version |= (ushort) flash_read_uchar (info,
-						info->ext_addr + 4);
-		}
-
-#ifdef DEBUG
-		flash_printqry (&qry);
-#endif
-
-		switch (info->vendor) {
-#ifdef CONFIG_DRIVER_CFI_INTEL
-		case CFI_CMDSET_INTEL_EXTENDED:
-		case CFI_CMDSET_INTEL_STANDARD:
-			info->cfi_cmd_set = &cfi_cmd_set_intel;
-			break;
-#endif
-#ifdef CONFIG_DRIVER_CFI_AMD
-		case CFI_CMDSET_AMD_STANDARD:
-		case CFI_CMDSET_AMD_EXTENDED:
-			info->cfi_cmd_set = &cfi_cmd_set_amd;
-			break;
-#endif
-		default:
-			printf("unsupported vendor\n");
-			return 0;
-		}
-		info->cfi_cmd_set->flash_read_jedec_ids (info);
-		flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
-
-		info->cfi_cmd_set->flash_fixup (info, &qry);
-
-		debug ("manufacturer is %d\n", info->vendor);
-		debug ("manufacturer id is 0x%x\n", info->manufacturer_id);
-		debug ("device id is 0x%x\n", info->device_id);
-		debug ("device id2 is 0x%x\n", info->device_id2);
-		debug ("cfi version is 0x%04x\n", info->cfi_version);
-
-		size_ratio = info->portwidth / info->chipwidth;
-		/* if the chip is x8/x16 reduce the ratio by half */
-		if ((info->interface == FLASH_CFI_X8X16)
-		    && (info->chipwidth == FLASH_CFI_BY8)) {
-			size_ratio >>= 1;
-		}
-		debug ("size_ratio %d port %d bits chip %d bits\n",
-		       size_ratio, info->portwidth << CFI_FLASH_SHIFT_WIDTH,
-		       info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
-		debug ("found %d erase regions\n", num_erase_regions);
-		info->eraseregions = xzalloc(sizeof(*(info->eraseregions)) * num_erase_regions);
-		info->numeraseregions = num_erase_regions;
-		sect_cnt = 0;
-		sector = base;
-
-		for (i = 0; i < num_erase_regions; i++) {
-			struct mtd_erase_region_info *region = &info->eraseregions[i];
-
-			if (i > NUM_ERASE_REGIONS) {
-				printf ("%d erase regions found, only %d used\n",
-					num_erase_regions, NUM_ERASE_REGIONS);
-				break;
-			}
-
-			tmp = le32_to_cpu(qry.erase_region_info[i]);
-			debug("erase region %u: 0x%08lx\n", i, tmp);
-
-			erase_region_count = (tmp & 0xffff) + 1;
-			tmp >>= 16;
-			erase_region_size =
-				(tmp & 0xffff) ? ((tmp & 0xffff) * 256) : 128;
-			debug ("erase_region_count = %d erase_region_size = %d\n",
-				erase_region_count, erase_region_size);
-
-			region->offset = cur_offset;
-			region->erasesize = erase_region_size;
-			region->numblocks = erase_region_count;
-			cur_offset += erase_region_size * erase_region_count;
-
-			/* increase the space malloced for the sector start addresses */
-			info->start = xrealloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
-			info->protect = xrealloc(info->protect, sizeof(uchar) * (erase_region_count + sect_cnt));
-
-			for (j = 0; j < erase_region_count; j++) {
-				info->start[sect_cnt] = sector;
-				sector += (erase_region_size * size_ratio);
-
-				/*
-				 * Only read protection status from supported devices (intel...)
-				 */
-				switch (info->vendor) {
-				case CFI_CMDSET_INTEL_EXTENDED:
-				case CFI_CMDSET_INTEL_STANDARD:
-					info->protect[sect_cnt] =
-						flash_isset (info, sect_cnt,
-							     FLASH_OFFSET_PROTECT,
-							     FLASH_STATUS_PROTECT);
-					break;
-				default:
-					info->protect[sect_cnt] = 0; /* default: not protected */
-				}
-
-				sect_cnt++;
-			}
-		}
-
-		info->sector_count = sect_cnt;
-		/* multiply the size by the number of chips */
-		info->size = (1 << qry.dev_size) * size_ratio;
-		info->buffer_size = (1 << le16_to_cpu(qry.max_buf_write_size));
-		info->erase_blk_tout = 1 << (qry.block_erase_timeout_typ +
-					     qry.block_erase_timeout_max);
-		info->buffer_write_tout = 1 << (qry.buf_write_timeout_typ +
-						qry.buf_write_timeout_max);
-		info->write_tout = 1 << (qry.word_write_timeout_typ +
-					 qry.word_write_timeout_max);
-		info->flash_id = FLASH_MAN_CFI;
-		if ((info->interface == FLASH_CFI_X8X16) && (info->chipwidth == FLASH_CFI_BY8)) {
-			info->portwidth >>= 1;	/* XXX - Need to test on x8/x16 in parallel. */
-		}
-		flash_write_cmd (info, 0, 0, info->cmd_reset);
-	}
-
-	return info->size;
-}
-
-/* loop through the sectors from the highest address
- * when the passed address is greater or equal to the sector address
- * we have a match
- */
-flash_sect_t find_sector (struct flash_info *info, ulong addr)
-{
-	flash_sect_t sector;
-
-	for (sector = info->sector_count - 1; sector >= 0; sector--) {
-		if (addr >= info->start[sector])
-			break;
-	}
-	return sector;
-}
-
-static int __cfi_erase(struct cdev *cdev, size_t count, loff_t offset,
-		int verbose)
-{
-        struct flash_info *finfo = (struct flash_info *)cdev->priv;
-        unsigned long start, end;
-        int i, ret = 0;
-
-	debug("%s: erase 0x%08llx (size %zu)\n", __func__, offset, count);
-
-        start = find_sector(finfo, (unsigned long)finfo->base + offset);
-        end   = find_sector(finfo, (unsigned long)finfo->base + offset +
-			count - 1);
-
-	if (verbose)
-		init_progression_bar(end - start);
-
-        for (i = start; i <= end; i++) {
-                ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
-                if (ret)
-                        goto out;
-
-		if (ctrlc()) {
-			ret = -EINTR;
-			goto out;
-		}
-
-		if (verbose)
-			show_progress(i - start);
-        }
-out:
-	if (verbose)
-	        putchar('\n');
-        return ret;
-}
-
-static int cfi_erase(struct cdev *cdev, size_t count, loff_t offset)
-{
-	return __cfi_erase(cdev, count, offset, 1);
-}
-
-/*
- * Copy memory to flash, returns:
- * 0 - OK
- * 1 - write timeout
- * 2 - Flash not erased
- */
-static int write_buff (struct flash_info *info, const uchar * src, ulong addr, ulong cnt)
-{
-	ulong wp;
-	uchar *p;
-	int aln;
-	cfiword_t cword;
-	int i, rc;
-
-#ifdef CONFIG_CFI_BUFFER_WRITE
-	int buffered_size;
-#endif
-	/* get lower aligned address */
-	wp = (addr & ~(info->portwidth - 1));
-
-	/* handle unaligned start */
-	if ((aln = addr - wp) != 0) {
-		cword = 0;
-		p = (uchar*)wp;
-		for (i = 0; i < aln; ++i)
-			flash_add_byte (info, &cword, flash_read8(p + i));
-
-		for (; (i < info->portwidth) && (cnt > 0); i++) {
-			flash_add_byte (info, &cword, *src++);
-			cnt--;
-		}
-		for (; (cnt == 0) && (i < info->portwidth); ++i)
-			flash_add_byte (info, &cword, flash_read8(p + i));
-
-		rc = flash_write_cfiword (info, wp, cword);
-		if (rc != 0)
-			return rc;
-
-		wp += i;
-	}
-
-	/* handle the aligned part */
-#ifdef CONFIG_CFI_BUFFER_WRITE
-	buffered_size = (info->portwidth / info->chipwidth);
-	buffered_size *= info->buffer_size;
-	while (cnt >= info->portwidth) {
-		/* prohibit buffer write when buffer_size is 1 */
-		if (info->buffer_size == 1) {
-			cword = 0;
-			for (i = 0; i < info->portwidth; i++)
-				flash_add_byte (info, &cword, *src++);
-			if ((rc = flash_write_cfiword (info, wp, cword)) != 0)
-				return rc;
-			wp += info->portwidth;
-			cnt -= info->portwidth;
-			continue;
-		}
-
-		/* write buffer until next buffered_size aligned boundary */
-		i = buffered_size - (wp % buffered_size);
-		if (i > cnt)
-			i = cnt;
-		if ((rc = info->cfi_cmd_set->flash_write_cfibuffer (info, wp, src, i)) != ERR_OK)
-			return rc;
-		i -= i & (info->portwidth - 1);
-		wp += i;
-		src += i;
-		cnt -= i;
-	}
-#else
-	while (cnt >= info->portwidth) {
-		cword = 0;
-		for (i = 0; i < info->portwidth; i++) {
-			flash_add_byte (info, &cword, *src++);
-		}
-		if ((rc = flash_write_cfiword (info, wp, cword)) != 0)
-			return rc;
-		wp += info->portwidth;
-		cnt -= info->portwidth;
-	}
-#endif /* CONFIG_CFI_BUFFER_WRITE */
-	if (cnt == 0) {
-		return 0;
-	}
-
-	/*
-	 * handle unaligned tail bytes
-	 */
-	cword = 0;
-	p = (uchar*)wp;
-	for (i = 0; (i < info->portwidth) && (cnt > 0); ++i) {
-		flash_add_byte (info, &cword, *src++);
-		--cnt;
-	}
-	for (; i < info->portwidth; ++i) {
-		flash_add_byte (info, &cword, flash_read8(p + i));
-	}
-
-	return flash_write_cfiword (info, wp, cword);
-}
-
-static int flash_real_protect (struct flash_info *info, long sector, int prot)
-{
-	int retcode = 0;
-
-	retcode = info->cfi_cmd_set->flash_real_protect(info, sector, prot);
-
-	if (retcode)
-		return retcode;
-
-	if ((retcode =
-	     flash_status_check (info, sector, info->erase_blk_tout,
-				      prot ? "protect" : "unprotect")) == 0) {
-
-		info->protect[sector] = prot;
-
-		/*
-		 * On some of Intel's flash chips (marked via legacy_unlock)
-		 * unprotect unprotects all locking.
-		 */
-		if ((prot == 0) && (info->legacy_unlock)) {
-			flash_sect_t i;
-
-			for (i = 0; i < info->sector_count; i++) {
-				if (info->protect[i])
-					flash_real_protect (info, i, 1);
-			}
-		}
-	}
-	return retcode;
-}
-
-static int cfi_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
-{
-	struct flash_info *finfo = (struct flash_info *)cdev->priv;
-	unsigned long start, end;
-	int i, ret = 0;
-	const char *action = (prot? "protect" : "unprotect");
-
-	printf("%s: %s 0x%p (size %zu)\n", __func__,
-	       action, finfo->base + offset, count);
-
-	start = find_sector(finfo, (unsigned long)finfo->base + offset);
-	end   = find_sector(finfo, (unsigned long)finfo->base + offset + count - 1);
-
-	for (i = start; i <= end; i++) {
-		ret = flash_real_protect (finfo, i, prot);
-		if (ret)
-			goto out;
-	}
-out:
-	putchar('\n');
-	return ret;
-}
-
-static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
-{
-        struct flash_info *finfo = (struct flash_info *)cdev->priv;
-        int ret;
-
-	debug("cfi_write: buf=0x%p addr=0x%p count=0x%08zx\n",
-			buf, finfo->base + offset, count);
-
-	ret = write_buff(finfo, buf, (unsigned long)finfo->base + offset, count);
-	return ret == 0 ? count : -1;
-}
-
-static void cfi_info (struct device_d* dev)
-{
-        struct flash_info *info = (struct flash_info *)dev->priv;
-	int i;
-
-	if (info->flash_id != FLASH_MAN_CFI) {
-		puts ("missing or unknown FLASH type\n");
-		return;
-	}
-
-	printf ("CFI conformant FLASH (%d x %d)",
-		(info->portwidth << 3), (info->chipwidth << 3));
-	printf ("  Size: %ld MB in %d Sectors\n",
-		info->size >> 20, info->sector_count);
-	printf ("  ");
-	switch (info->vendor) {
-		case CFI_CMDSET_INTEL_STANDARD:
-			printf ("Intel Standard");
-			break;
-		case CFI_CMDSET_INTEL_EXTENDED:
-			printf ("Intel Extended");
-			break;
-		case CFI_CMDSET_AMD_STANDARD:
-			printf ("AMD Standard");
-			break;
-		case CFI_CMDSET_AMD_EXTENDED:
-			printf ("AMD Extended");
-			break;
-		default:
-			printf ("Unknown (%d)", info->vendor);
-			break;
-	}
-	printf (" command set, Manufacturer ID: 0x%02X, Device ID: 0x%02X",
-		info->manufacturer_id, info->device_id);
-	if (info->device_id == 0x7E) {
-		printf("%04X", info->device_id2);
-	}
-	printf ("\n  Erase timeout: %ld ms, write timeout: %ld us\n",
-		info->erase_blk_tout,
-		info->write_tout);
-	if (info->buffer_size > 1) {
-		printf ("  Buffer write timeout: %ld us, buffer size: %d bytes\n",
-		info->buffer_write_tout,
-		info->buffer_size);
-	}
-
-	puts ("\n  Sector Start Addresses:");
-	for (i = 0; i < info->sector_count; ++i) {
-		if ((i % 5) == 0)
-			printf ("\n");
-#ifdef CFG_FLASH_EMPTY_INFO
-	{
-		int k;
-		int size;
-		int erased;
-		volatile unsigned long *flash;
-
-		/*
-		 * Check if whole sector is erased
-		 */
-		if (i != (info->sector_count - 1))
-			size = info->start[i + 1] - info->start[i];
-		else
-			size = info->start[0] + info->size - info->start[i];
-		erased = 1;
-		flash = (volatile unsigned long *) info->start[i];
-		size = size >> 2;	/* divide by 4 for longword access */
-		for (k = 0; k < size; k++) {
-			if (*flash++ != 0xffffffff) {
-				erased = 0;
-				break;
-			}
-		}
-
-		/* print empty and read-only info */
-		printf ("  %08lX %c %s ",
-			info->start[i],
-			erased ? 'E' : ' ',
-			info->protect[i] ? "RO" : "  ");
-	}
-#else	/* ! CFG_FLASH_EMPTY_INFO */
-		printf ("  %08lX   %s ",
-			info->start[i],
-			info->protect[i] ? "RO" : "  ");
-#endif
-	}
-	putchar('\n');
-	return;
-}
-
-#if 0
-/*
- * flash_read_user_serial - read the OneTimeProgramming cells
- */
-static void flash_read_user_serial (struct flash_info *info, void *buffer, int offset,
-			     int len)
-{
-	uchar *src;
-	uchar *dst;
-
-	dst = buffer;
-	src = flash_make_addr (info, 0, FLASH_OFFSET_USER_PROTECTION);
-	flash_write_cmd (info, 0, 0, FLASH_CMD_READ_ID);
-	memcpy (dst, src + offset, len);
-	flash_write_cmd (info, 0, 0, info->cmd_reset);
-}
-
-/*
- * flash_read_factory_serial - read the device Id from the protection area
- */
-static void flash_read_factory_serial (struct flash_info *info, void *buffer, int offset,
-				int len)
-{
-	uchar *src;
-
-	src = flash_make_addr (info, 0, FLASH_OFFSET_INTEL_PROTECTION);
-	flash_write_cmd (info, 0, 0, FLASH_CMD_READ_ID);
-	memcpy (buffer, src + offset, len);
-	flash_write_cmd (info, 0, 0, info->cmd_reset);
-}
-
-#endif
-
-int flash_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt)
-{
-	return info->cfi_cmd_set->flash_status_check(info, sector, tout, prompt);
-}
-
-/*
- *  wait for XSR.7 to be set. Time out with an error if it does not.
- *  This routine does not set the flash to read-array mode.
- */
-int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt)
-{
-	uint64_t start;
-
-        tout *= 1000000;
-
-	/* Wait for command completion */
-	start = get_time_ns();
-	while (info->cfi_cmd_set->flash_is_busy (info, sector)) {
-		if (is_timeout(start, tout)) {
-			printf ("Flash %s timeout at address %lx data %lx\n",
-				prompt, info->start[sector],
-				flash_read_long (info, sector, 0));
-			flash_write_cmd (info, sector, 0, info->cmd_reset);
-			return ERR_TIMOUT;
-		}
-		udelay (1);		/* also triggers watchdog */
-	}
-	return ERR_OK;
-}
-
-/*
- * make a proper sized command based on the port and chip widths
- */
-void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf)
-{
-	cfiword_t result = 0;
-	int i = info->portwidth / info->chipwidth;
-
-	while (i--)
-		result = (result << (8 * info->chipwidth)) | cmd;
-	*cmdbuf = result;
-}
-
-/*
- * Write a proper sized command to the correct address
- */
-void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd)
-{
-
-	uchar *addr;
-	cfiword_t cword;
-
-	addr = flash_make_addr (info, sect, offset);
-	flash_make_cmd (info, cmd, &cword);
-
-	debug("%s: %p %lX %X => %p " CFI_WORD_FMT "\n", __func__,
-			info, sect, offset, addr, cword);
-
-	flash_write_word(info, cword, addr);
-}
-
-int flash_isequal(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd)
-{
-	void *addr;
-	cfiword_t cword;
-	int retval;
-
-	addr = flash_make_addr (info, sect, offset);
-	flash_make_cmd (info, cmd, &cword);
-
-	debug ("is= cmd %x(%c) addr %p ", cmd, cmd, addr);
-	if (bankwidth_is_1(info)) {
-		debug ("is= %x %x\n", flash_read8(addr), (u8)cword);
-		retval = (flash_read8(addr) == cword);
-	} else if (bankwidth_is_2(info)) {
-		debug ("is= %4.4x %4.4x\n", flash_read16(addr), (u16)cword);
-		retval = (flash_read16(addr) == cword);
-	} else if (bankwidth_is_4(info)) {
-		debug ("is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
-		retval = (flash_read32(addr) == cword);
-	} else if (bankwidth_is_8(info)) {
-#ifdef DEBUG
-		{
-			char str1[20];
-			char str2[20];
-
-			print_longlong (str1, flash_read32(addr));
-			print_longlong (str2, cword);
-			debug ("is= %s %s\n", str1, str2);
-		}
-#endif
-		retval = (flash_read64(addr) == cword);
-	} else
-		retval = 0;
-
-	return retval;
-}
-
-int flash_isset(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd)
-{
-	void *addr = flash_make_addr (info, sect, offset);
-	cfiword_t cword;
-	int retval;
-
-	flash_make_cmd (info, cmd, &cword);
-	if (bankwidth_is_1(info)) {
-		retval = ((flash_read8(addr) & cword) == cword);
-	} else if (bankwidth_is_2(info)) {
-		retval = ((flash_read16(addr) & cword) == cword);
-	} else if (bankwidth_is_4(info)) {
-		retval = ((flash_read32(addr) & cword) == cword);
-	} else if (bankwidth_is_8(info)) {
-		retval = ((flash_read64(addr) & cword) == cword);
-	} else
-		retval = 0;
-
-	return retval;
-}
-
-struct file_operations cfi_ops = {
-	.read    = mem_read,
-	.write   = cfi_write,
-	.lseek  = dev_lseek_default,
-	.erase   = cfi_erase,
-	.protect = cfi_protect,
-	.memmap  = generic_memmap_ro,
-};
-
-static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
-		size_t *retlen, u_char *buf)
-{
-	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
-
-	memcpy(buf, info->base + from, len);
-	*retlen = len;
-
-	return 0;
-}
-
-static int cfi_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
-		size_t *retlen, const u_char *buf)
-{
-	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
-	int ret;
-
-	ret = write_buff(info, buf, (unsigned long)info->base + to, len);
-	*retlen = len;
-
-        return ret;
-}
-
-static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
-{
-	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
-	struct cdev *cdev = &info->cdev;
-	int ret;
-
-	ret = __cfi_erase(cdev, instr->len, instr->addr, 0);
-
-	if (ret) {
-		instr->state = MTD_ERASE_FAILED;
-		return -EIO;
-	}
-
-	instr->state = MTD_ERASE_DONE;
-	mtd_erase_callback(instr);
-
-	return 0;
-}
-
-static void cfi_init_mtd(struct flash_info *info)
-{
-	struct mtd_info *mtd = &info->mtd;
-
-	mtd->read = cfi_mtd_read;
-	mtd->write = cfi_mtd_write;
-	mtd->erase = cfi_mtd_erase;
-	mtd->size = info->size;
-	mtd->name = info->cdev.name;
-	mtd->erasesize = info->eraseregions[1].erasesize; /* FIXME */
-	mtd->writesize = 1;
-	mtd->subpage_sft = 0;
-	mtd->eraseregions = info->eraseregions;
-	mtd->numeraseregions = info->numeraseregions;
-	mtd->flags = MTD_CAP_NORFLASH;
-	info->cdev.mtd = mtd;
-}
-
-static int cfi_probe (struct device_d *dev)
-{
-	struct flash_info *info = xzalloc(sizeof(*info));
-	int cfinum;
-
-	dev->priv = (void *)info;
-
-	/* Init: no FLASHes known */
-	info->flash_id = FLASH_UNKNOWN;
-	info->cmd_reset = FLASH_CMD_RESET;
-	info->base = dev_request_mem_region(dev, 0);
-	info->size = flash_get_size(info);
-
-	if (info->flash_id == FLASH_UNKNOWN) {
-		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
-			dev->resource[0].start, info->size, info->size << 20);
-		return -ENODEV;
-	}
-
-	dev_info(dev, "found cfi flash at %p, size %ld\n",
-			info->base, info->size);
-
-	if (dev->id < 0)
-		cfinum = cdev_find_free_index("nor");
-	else
-		cfinum = dev->id;
-
-	info->cdev.name = asprintf("nor%d", cfinum);
-	info->cdev.size = info->size;
-	info->cdev.dev = dev;
-	info->cdev.ops = &cfi_ops;
-	info->cdev.priv = info;
-
-	if (IS_ENABLED(CONFIG_PARTITION_NEED_MTD))
-		cfi_init_mtd(info);
-
-	devfs_create(&info->cdev);
-
-	if (dev->device_node)
-		of_parse_partitions(info->cdev.name, dev->device_node);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id cfi_dt_ids[] = {
-	{
-		.compatible = "cfi-flash",
-	}, {
-		/* sentinel */
-	}
-};
-
-static struct driver_d cfi_driver = {
-	.name    = "cfi_flash",
-	.probe   = cfi_probe,
-	.info    = cfi_info,
-	.of_compatible = DRV_OF_COMPAT(cfi_dt_ids),
-};
-
-static int cfi_init(void)
-{
-	return platform_driver_register(&cfi_driver);
-}
-
-device_initcall(cfi_init);
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
deleted file mode 100644
index 944cdde..0000000
--- a/drivers/nor/cfi_flash.h
+++ /dev/null
@@ -1,731 +0,0 @@
-#ifndef __CFI_FLASH_H
-#define __CFI_FLASH_H
-
-/*
- * (C) Copyright 2000-2005
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
- * GNU General Public License for more details.
- *
- */
-
-#include <driver.h>
-#include <asm/byteorder.h>
-#include <io.h>
-#include <linux/mtd/mtd.h>
-
-typedef unsigned long flash_sect_t;
-
-#if   defined(CONFIG_DRIVER_CFI_BANK_WIDTH_8)
-typedef u64 cfiword_t;
-#define CFI_WORD_FMT	"0x%016llx"
-#elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_4)
-typedef u32 cfiword_t;
-#define CFI_WORD_FMT	"0x%08x"
-#elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_2)
-typedef u16 cfiword_t;
-#define CFI_WORD_FMT	"0x%04x"
-#else
-typedef u8 cfiword_t;
-#define CFI_WORD_FMT	"0x%02x"
-#endif
-
-struct cfi_cmd_set;
-
-/*-----------------------------------------------------------------------
- * FLASH Info: contains chip specific data, per FLASH bank
- */
-
-struct flash_info {
-	struct driver_d driver;
-	ulong	size;			/* total bank size in bytes		*/
-	ushort	sector_count;		/* number of erase units		*/
-	ulong	flash_id;		/* combined device & manufacturer code	*/
-	ulong	*start;			/* physical sector start addresses	*/
-	uchar	*protect;		/* sector protection status		*/
-
-	uchar	portwidth;		/* the width of the port		*/
-	uchar	chipwidth;		/* the width of the chip		*/
-	ushort	buffer_size;		/* # of bytes in write buffer		*/
-	ulong	erase_blk_tout;		/* maximum block erase timeout		*/
-	ulong	write_tout;		/* maximum write timeout		*/
-	ulong	buffer_write_tout;	/* maximum buffer write timeout		*/
-	ushort	vendor;			/* the primary vendor id		*/
-	ushort	cmd_reset;		/* vendor specific reset command	*/
-	ushort	interface;		/* used for x8/x16 adjustments		*/
-	ushort	legacy_unlock;		/* support Intel legacy (un)locking	*/
-	uchar	manufacturer_id;	/* manufacturer id			*/
-	ushort	device_id;		/* device id				*/
-	ushort	device_id2;		/* extended device id			*/
-	ushort	ext_addr;		/* extended query table address		*/
-	ushort	cfi_version;		/* cfi version				*/
-	ushort	cfi_offset;		/* offset for cfi query 		*/
-	ulong	addr_unlock1;		/* unlock address 1 for AMD flash roms	*/
-	ulong	addr_unlock2;		/* unlock address 2 for AMD flash roms	*/
-	struct cfi_cmd_set *cfi_cmd_set;
-	struct cdev cdev;
-	struct mtd_info mtd;
-	int numeraseregions;
-	struct mtd_erase_region_info *eraseregions;
-	void *base;
-};
-
-#define NUM_ERASE_REGIONS	4 /* max. number of erase regions */
-
-/* CFI standard query structure */
-struct cfi_qry {
-	u8	qry[3];
-	u16	p_id;
-	u16	p_adr;
-	u16	a_id;
-	u16	a_adr;
-	u8	vcc_min;
-	u8	vcc_max;
-	u8	vpp_min;
-	u8	vpp_max;
-	u8	word_write_timeout_typ;
-	u8	buf_write_timeout_typ;
-	u8	block_erase_timeout_typ;
-	u8	chip_erase_timeout_typ;
-	u8	word_write_timeout_max;
-	u8	buf_write_timeout_max;
-	u8	block_erase_timeout_max;
-	u8	chip_erase_timeout_max;
-	u8	dev_size;
-	u16	interface_desc;
-	u16	max_buf_write_size;
-	u8	num_erase_regions;
-	u32	erase_region_info[NUM_ERASE_REGIONS];
-} __attribute__((packed));
-
-struct cfi_pri_hdr {
-	u8	pri[3];
-	u8	major_version;
-	u8	minor_version;
-} __attribute__((packed));
-
-
-struct cfi_cmd_set {
-	int (*flash_write_cfibuffer) (struct flash_info *info, ulong dest, const uchar * cp, int len);
-	int (*flash_erase_one) (struct flash_info *info, long sect);
-	int (*flash_is_busy) (struct flash_info *info, flash_sect_t sect);
-	void (*flash_read_jedec_ids) (struct flash_info *info);
-	void (*flash_prepare_write) (struct flash_info *info);
-	int (*flash_status_check) (struct flash_info *info, flash_sect_t sector, uint64_t tout, char *prompt);
-	int (*flash_real_protect) (struct flash_info *info, long sector, int prot);
-	void (*flash_fixup) (struct flash_info *info, struct cfi_qry *qry);
-};
-
-extern struct cfi_cmd_set cfi_cmd_set_intel;
-extern struct cfi_cmd_set cfi_cmd_set_amd;
-
-#define FLASH_CMD_CFI			0x98
-#define FLASH_CMD_READ_ID		0x90
-#define FLASH_CMD_RESET			0xff
-#define FLASH_CMD_BLOCK_ERASE		0x20
-#define FLASH_CMD_ERASE_CONFIRM		0xD0
-#define FLASH_CMD_WRITE			0x40
-#define FLASH_CMD_PROTECT		0x60
-#define FLASH_CMD_PROTECT_SET		0x01
-#define FLASH_CMD_PROTECT_CLEAR		0xD0
-#define FLASH_CMD_CLEAR_STATUS		0x50
-#define FLASH_CMD_WRITE_TO_BUFFER	0xE8
-#define FLASH_CMD_WRITE_BUFFER_CONFIRM	0xD0
-
-#define FLASH_STATUS_DONE		0x80
-#define FLASH_STATUS_ESS		0x40
-#define FLASH_STATUS_ECLBS		0x20
-#define FLASH_STATUS_PSLBS		0x10
-#define FLASH_STATUS_VPENS		0x08
-#define FLASH_STATUS_PSS		0x04
-#define FLASH_STATUS_DPS		0x02
-#define FLASH_STATUS_R			0x01
-#define FLASH_STATUS_PROTECT		0x01
-
-#define FLASH_ID_CONTINUATION		0x7F
-
-#define AMD_CMD_RESET			0xF0
-#define AMD_CMD_WRITE			0xA0
-#define AMD_CMD_ERASE_START		0x80
-#define AMD_CMD_ERASE_SECTOR		0x30
-#define AMD_CMD_UNLOCK_START		0xAA
-#define AMD_CMD_UNLOCK_ACK		0x55
-#define AMD_CMD_WRITE_TO_BUFFER		0x25
-#define AMD_CMD_WRITE_BUFFER_CONFIRM	0x29
-
-#define AMD_STATUS_TOGGLE		0x40
-#define AMD_STATUS_ERROR		0x20
-
-#define ATM_CMD_UNLOCK_SECT		0x70
-#define ATM_CMD_SOFTLOCK_START		0x80
-#define ATM_CMD_LOCK_SECT		0x40
-
-#define FLASH_OFFSET_MANUFACTURER_ID	0x00
-#define FLASH_OFFSET_DEVICE_ID		0x01
-#define FLASH_OFFSET_DEVICE_ID2		0x0E
-#define FLASH_OFFSET_DEVICE_ID3		0x0F
-#define FLASH_OFFSET_CFI		0x55
-#define FLASH_OFFSET_CFI_ALT		0x555
-#define FLASH_OFFSET_CFI_RESP		0x10
-#define FLASH_OFFSET_PRIMARY_VENDOR	0x13
-#define FLASH_OFFSET_EXT_QUERY_T_P_ADDR	0x15	/* extended query table primary addr */
-#define FLASH_OFFSET_WTOUT		0x1F
-#define FLASH_OFFSET_WBTOUT		0x20
-#define FLASH_OFFSET_ETOUT		0x21
-#define FLASH_OFFSET_CETOUT		0x22
-#define FLASH_OFFSET_WMAX_TOUT		0x23
-#define FLASH_OFFSET_WBMAX_TOUT		0x24
-#define FLASH_OFFSET_EMAX_TOUT		0x25
-#define FLASH_OFFSET_CEMAX_TOUT		0x26
-#define FLASH_OFFSET_SIZE		0x27
-#define FLASH_OFFSET_INTERFACE		0x28
-#define FLASH_OFFSET_BUFFER_SIZE	0x2A
-#define FLASH_OFFSET_NUM_ERASE_REGIONS	0x2C
-#define FLASH_OFFSET_ERASE_REGIONS	0x2D
-#define FLASH_OFFSET_PROTECT		0x02
-#define FLASH_OFFSET_USER_PROTECTION	0x85
-#define FLASH_OFFSET_INTEL_PROTECTION	0x81
-
-#define CFI_CMDSET_NONE			0
-#define CFI_CMDSET_INTEL_EXTENDED	1
-#define CFI_CMDSET_AMD_STANDARD		2
-#define CFI_CMDSET_INTEL_STANDARD	3
-#define CFI_CMDSET_AMD_EXTENDED		4
-#define CFI_CMDSET_MITSU_STANDARD	256
-#define CFI_CMDSET_MITSU_EXTENDED	257
-#define CFI_CMDSET_SST			258
-
-#ifdef CFG_FLASH_CFI_AMD_RESET /* needed for STM_ID_29W320DB on UC100 */
-# undef  FLASH_CMD_RESET
-# define FLASH_CMD_RESET	AMD_CMD_RESET /* use AMD-Reset instead */
-#endif
-
-/*
- * Values for the width of the port
- */
-#define FLASH_CFI_8BIT		0x01
-#define FLASH_CFI_16BIT		0x02
-#define FLASH_CFI_32BIT		0x04
-#define FLASH_CFI_64BIT		0x08
-/*
- * Values for the width of the chip
- */
-#define FLASH_CFI_BY8		0x01
-#define FLASH_CFI_BY16		0x02
-#define FLASH_CFI_BY32		0x04
-#define FLASH_CFI_BY64		0x08
-/* convert between bit value and numeric value */
-#define CFI_FLASH_SHIFT_WIDTH	3
-/*
- * Values for the flash device interface
- */
-#define FLASH_CFI_X8		0x00
-#define FLASH_CFI_X16		0x01
-#define FLASH_CFI_X8X16		0x02
-#define FLASH_CFI_X16X32	0x05
-
-/* convert between bit value and numeric value */
-#define CFI_FLASH_SHIFT_WIDTH	3
-/* Prototypes */
-
-int flash_isset(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd);
-void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd);
-flash_sect_t find_sector (struct flash_info *info, ulong addr);
-int flash_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt);
-int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt);
-
-int flash_isequal(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd);
-void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf);
-
-static inline void flash_write8(u8 value, void *addr)
-{
-	cpu_writeb(value, addr);
-}
-
-static inline void flash_write16(u16 value, void *addr)
-{
-	cpu_writew(value, addr);
-}
-
-static inline void flash_write32(u32 value, void *addr)
-{
-	cpu_writel(value, addr);
-}
-
-static inline void flash_write64(u64 value, void *addr)
-{
-	memcpy((void *)addr, &value, 8);
-}
-
-static inline u8 flash_read8(void *addr)
-{
-	return cpu_readb(addr);
-}
-
-static inline u16 flash_read16(void *addr)
-{
-	return cpu_readw(addr);
-}
-
-static inline u32 flash_read32(void *addr)
-{
-	return cpu_readl(addr);
-}
-
-static inline u64 flash_read64(void *addr)
-{
-	/* No architectures currently implement readq() */
-	return *(volatile u64 *)addr;
-}
-
-/*
- * create an address based on the offset and the port width
- */
-static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
-{
-	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
-}
-
-uchar flash_read_uchar (struct flash_info *info, uint offset);
-u32 jedec_read_mfr(struct flash_info *info);
-
-#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_1
-#define bankwidth_is_1(info) (info->portwidth == 1)
-#else
-#define bankwidth_is_1(info) 0
-#endif
-
-#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_2
-#define bankwidth_is_2(info) (info->portwidth == 2)
-#else
-#define bankwidth_is_2(info) 0
-#endif
-
-#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_4
-#define bankwidth_is_4(info) (info->portwidth == 4)
-#else
-#define bankwidth_is_4(info) 0
-#endif
-
-#ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_8
-#define bankwidth_is_8(info) (info->portwidth == 8)
-#else
-#define bankwidth_is_8(info) 0
-#endif
-
-static inline void flash_write_word(struct flash_info *info, cfiword_t datum, void *addr)
-{
-	if (bankwidth_is_1(info)) {
-		debug("fw addr %p val %02x\n", addr, (u8)datum);
-		flash_write8(datum, addr);
-	} else if (bankwidth_is_2(info)) {
-		debug("fw addr %p val %04x\n", addr, (u16)datum);
-		flash_write16(datum, addr);
-	} else if (bankwidth_is_4(info)) {
-		debug("fw addr %p val %08x\n", addr, (u32)datum);
-		flash_write32(datum, addr);
-	} else if (bankwidth_is_8(info)) {
-		flash_write64(datum, addr);
-	}
-}
-
-extern void flash_print_info (struct flash_info *);
-extern int flash_sect_erase (ulong addr_first, ulong addr_last);
-extern int flash_sect_protect (int flag, ulong addr_first, ulong addr_last);
-
-/* common/flash.c */
-extern void flash_protect (int flag, ulong from, ulong to, struct flash_info *info);
-extern int flash_write (char *, ulong, ulong);
-extern struct flash_info *addr2info (ulong);
-//extern int write_buff (flash_info_t *info, const uchar *src, ulong addr, ulong cnt);
-
-/* board/?/flash.c */
-#if defined(CFG_FLASH_PROTECTION)
-extern int flash_real_protect(struct flash_info *info, long sector, int prot);
-extern void flash_read_user_serial(struct flash_info *info, void * buffer, int offset, int len);
-extern void flash_read_factory_serial(struct flash_info *info, void * buffer, int offset, int len);
-#endif	/* CFG_FLASH_PROTECTION */
-
-/*-----------------------------------------------------------------------
- * return codes from flash_write():
- */
-#define ERR_OK				0
-#define ERR_TIMOUT			1
-#define ERR_NOT_ERASED			2
-#define ERR_PROTECTED			4
-#define ERR_INVAL			8
-#define ERR_ALIGN			16
-#define ERR_UNKNOWN_FLASH_VENDOR	32
-#define ERR_UNKNOWN_FLASH_TYPE		64
-#define ERR_PROG_ERROR			128
-
-/*-----------------------------------------------------------------------
- * Protection Flags for flash_protect():
- */
-#define FLAG_PROTECT_SET	0x01
-#define FLAG_PROTECT_CLEAR	0x02
-
-/*-----------------------------------------------------------------------
- * Device IDs
- */
-
-#define AMD_MANUFACT	0x00010001	/* AMD	   manuf. ID in D23..D16, D7..D0 */
-#define FUJ_MANUFACT	0x00040004	/* FUJITSU manuf. ID in D23..D16, D7..D0 */
-#define ATM_MANUFACT	0x001F001F	/* ATMEL */
-#define STM_MANUFACT	0x00200020	/* STM (Thomson) manuf. ID in D23.. -"- */
-#define SST_MANUFACT	0x00BF00BF	/* SST	   manuf. ID in D23..D16, D7..D0 */
-#define MT_MANUFACT	0x00890089	/* MT	   manuf. ID in D23..D16, D7..D0 */
-#define INTEL_MANUFACT	0x00890089	/* INTEL   manuf. ID in D23..D16, D7..D0 */
-#define INTEL_ALT_MANU	0x00B000B0	/* alternate INTEL namufacturer ID	*/
-#define MX_MANUFACT	0x00C200C2	/* MXIC	   manuf. ID in D23..D16, D7..D0 */
-#define TOSH_MANUFACT	0x00980098	/* TOSHIBA manuf. ID in D23..D16, D7..D0 */
-#define MT2_MANUFACT	0x002C002C	/* alternate MICRON manufacturer ID*/
-#define EXCEL_MANUFACT	0x004A004A	/* Excel Semiconductor			*/
-
-					/* Micron Technologies (INTEL compat.)	*/
-#define MT_ID_28F400_T	0x44704470	/* 28F400B3 ID ( 4 M, top boot sector)	*/
-#define MT_ID_28F400_B	0x44714471	/* 28F400B3 ID ( 4 M, bottom boot sect) */
-
-#define AMD_ID_LV040B	0x4F		/* 29LV040B ID				*/
-					/* 4 Mbit, 512K x 8,			*/
-					/* 8 64K x 8 uniform sectors		*/
-#define AMD_ID_F033C	0xA3		/* 29LV033C ID				*/
-					/* 32 Mbit, 4Mbits x 8,			*/
-					/* 64 64K x 8 uniform sectors		*/
-#define AMD_ID_F065D	0x93		/* 29LV065D ID				*/
-					/* 64 Mbit, 8Mbits x 8,			*/
-					/* 126 64K x 8 uniform sectors		*/
-#define ATM_ID_LV040	0x13		/* 29LV040B ID				*/
-					/* 4 Mbit, 512K x 8,			*/
-					/* 8 64K x 8 uniform sectors		*/
-#define AMD_ID_F040B	0xA4		/* 29F040B ID				*/
-					/* 4 Mbit, 512K x 8,			*/
-					/* 8 64K x 8 uniform sectors		*/
-#define STM_ID_M29W040B 0xE3		/* M29W040B ID				*/
-					/* 4 Mbit, 512K x 8,			*/
-					/* 8 64K x 8 uniform sectors		*/
-#define AMD_ID_F080B	0xD5		/* 29F080  ID  ( 1 M)			*/
-					/* 8 Mbit, 512K x 16,			*/
-					/* 8 64K x 16 uniform sectors		*/
-#define AMD_ID_F016D	0xAD		/* 29F016  ID  ( 2 M x 8)		*/
-#define AMD_ID_F032B	0x41		/* 29F032  ID  ( 4 M x 8)		*/
-#define AMD_ID_LV116DT	0xC7		/* 29LV116DT   ( 2 M x 8, top boot sect) */
-#define AMD_ID_LV116DB	0x4C		/* 29LV116DB   ( 2 M x 8, bottom boot sect) */
-#define AMD_ID_LV016B	0xc8		/* 29LV016 ID  ( 2 M x 8)		*/
-
-#define AMD_ID_PL160CB	0x22452245	/* 29PL160CB ID (16 M, bottom boot sect */
-
-#define AMD_ID_LV400T	0x22B922B9	/* 29LV400T ID ( 4 M, top boot sector)	*/
-#define AMD_ID_LV400B	0x22BA22BA	/* 29LV400B ID ( 4 M, bottom boot sect) */
-
-#define AMD_ID_LV033C	0xA3		/* 29LV033C ID ( 4 M x 8)		*/
-#define AMD_ID_LV065D	0x93		/* 29LV065D ID ( 8 M x 8)		*/
-
-#define AMD_ID_LV800T	0x22DA22DA	/* 29LV800T ID ( 8 M, top boot sector)	*/
-#define AMD_ID_LV800B	0x225B225B	/* 29LV800B ID ( 8 M, bottom boot sect) */
-
-#define AMD_ID_LV160T	0x22C422C4	/* 29LV160T ID (16 M, top boot sector)	*/
-#define AMD_ID_LV160B	0x22492249	/* 29LV160B ID (16 M, bottom boot sect) */
-
-#define AMD_ID_DL163T	0x22282228	/* 29DL163T ID (16 M, top boot sector)	*/
-#define AMD_ID_DL163B	0x222B222B	/* 29DL163B ID (16 M, bottom boot sect) */
-
-#define AMD_ID_LV320T	0x22F622F6	/* 29LV320T ID (32 M, top boot sector)	*/
-#define MX_ID_LV320T	0x22A722A7	/* 29LV320T by Macronix, AMD compatible */
-#define AMD_ID_LV320B	0x22F922F9	/* 29LV320B ID (32 M, bottom boot sect) */
-#define MX_ID_LV320B	0x22A822A8	/* 29LV320B by Macronix, AMD compatible */
-
-#define AMD_ID_DL322T	0x22552255	/* 29DL322T ID (32 M, top boot sector)	*/
-#define AMD_ID_DL322B	0x22562256	/* 29DL322B ID (32 M, bottom boot sect) */
-#define AMD_ID_DL323T	0x22502250	/* 29DL323T ID (32 M, top boot sector)	*/
-#define AMD_ID_DL323B	0x22532253	/* 29DL323B ID (32 M, bottom boot sect) */
-#define AMD_ID_DL324T	0x225C225C	/* 29DL324T ID (32 M, top boot sector)	*/
-#define AMD_ID_DL324B	0x225F225F	/* 29DL324B ID (32 M, bottom boot sect) */
-
-#define AMD_ID_DL640	0x227E227E	/* 29DL640D ID (64 M, dual boot sectors)*/
-#define AMD_ID_MIRROR	0x227E227E	/* 1st ID word for MirrorBit family */
-#define AMD_ID_DL640G_2 0x22022202	/* 2nd ID word for AM29DL640G  at 0x38 */
-#define AMD_ID_DL640G_3 0x22012201	/* 3rd ID word for AM29DL640G  at 0x3c */
-#define AMD_ID_LV640U_2 0x220C220C	/* 2nd ID word for AM29LV640M  at 0x38 */
-#define AMD_ID_LV640U_3 0x22012201	/* 3rd ID word for AM29LV640M  at 0x3c */
-#define AMD_ID_LV640MT_2 0x22102210	/* 2nd ID word for AM29LV640MT at 0x38 */
-#define AMD_ID_LV640MT_3 0x22012201	/* 3rd ID word for AM29LV640MT at 0x3c */
-#define AMD_ID_LV640MB_2 0x22102210	/* 2nd ID word for AM29LV640MB at 0x38 */
-#define AMD_ID_LV640MB_3 0x22002200	/* 3rd ID word for AM29LV640MB at 0x3c */
-#define AMD_ID_LV128U_2 0x22122212	/* 2nd ID word for AM29LV128M  at 0x38 */
-#define AMD_ID_LV128U_3 0x22002200	/* 3rd ID word for AM29LV128M  at 0x3c */
-#define AMD_ID_LV256U_2 0x22122212	/* 2nd ID word for AM29LV256M  at 0x38 */
-#define AMD_ID_LV256U_3 0x22012201	/* 3rd ID word for AM29LV256M  at 0x3c */
-#define AMD_ID_GL064M_2 0x22132213	/* 2nd ID word for S29GL064M-R6 */
-#define AMD_ID_GL064M_3 0x22012201	/* 3rd ID word for S29GL064M-R6 */
-#define AMD_ID_GL064MT_2 0x22102210	/* 2nd ID word for S29GL064M-R3 (top boot sector) */
-#define AMD_ID_GL064MT_3 0x22012201	/* 3rd ID word for S29GL064M-R3 (top boot sector) */
-#define AMD_ID_GL128N_2	0x22212221	/* 2nd ID word for S29GL128N */
-#define AMD_ID_GL128N_3	0x22012201	/* 3rd ID word for S29GL128N */
-
-
-#define AMD_ID_LV320B_2 0x221A221A	/* 2d ID word for AM29LV320MB at 0x38 */
-#define AMD_ID_LV320B_3 0x22002200	/* 3d ID word for AM29LV320MB at 0x3c */
-
-#define AMD_ID_LV640U	0x22D722D7	/* 29LV640U ID (64 M, uniform sectors)	*/
-#define AMD_ID_LV650U	0x22D722D7	/* 29LV650U ID (64 M, uniform sectors)	*/
-
-#define ATM_ID_BV1614	0x000000C0	/* 49BV1614  ID */
-#define ATM_ID_BV1614A	0x000000C8	/* 49BV1614A ID */
-#define ATM_ID_BV6416	0x000000D6	/* 49BV6416  ID */
-
-#define FUJI_ID_29F800BA  0x22582258	/* MBM29F800BA ID  (8M) */
-#define FUJI_ID_29F800TA  0x22D622D6	/* MBM29F800TA ID  (8M) */
-#define FUJI_ID_29LV650UE 0x22d722d7	/* MBM29LV650UE/651UE ID (8M = 128 x 32kWord) */
-
-#define SST_ID_xF200A	0x27892789	/* 39xF200A ID ( 2M = 128K x 16 )	*/
-#define SST_ID_xF400A	0x27802780	/* 39xF400A ID ( 4M = 256K x 16 )	*/
-#define SST_ID_xF800A	0x27812781	/* 39xF800A ID ( 8M = 512K x 16 )	*/
-#define SST_ID_xF160A	0x27822782	/* 39xF800A ID (16M =	1M x 16 )	*/
-#define SST_ID_xF1601	0x234B234B	/* 39xF1601 ID (16M =	1M x 16 )	*/
-#define SST_ID_xF1602	0x234A234A	/* 39xF1602 ID (16M =	1M x 16 )	*/
-#define SST_ID_xF3201	0x235B235B	/* 39xF3201 ID (32M =	2M x 16 )	*/
-#define SST_ID_xF3202	0x235A235A	/* 39xF3202 ID (32M =	2M x 16 )	*/
-#define SST_ID_xF6401	0x236B236B	/* 39xF6401 ID (64M =	4M x 16 )	*/
-#define SST_ID_xF6402	0x236A236A	/* 39xF6402 ID (64M =	4M x 16 )	*/
-#define SST_ID_xF020	0xBFD6BFD6	/* 39xF020 ID (256KB = 2Mbit x 8)	*/
-#define SST_ID_xF040	0xBFD7BFD7	/* 39xF040 ID (512KB = 4Mbit x 8)	*/
-
-#define STM_ID_F040B	0xE2		/* M29F040B ID ( 4M = 512K x 8	)	*/
-					/* 8 64K x 8 uniform sectors		*/
-
-#define STM_ID_x800AB	0x005B005B	/* M29W800AB ID (8M = 512K x 16 )	*/
-#define STM_ID_29W320DT 0x22CA22CA	/* M29W320DT ID (32 M, top boot sector) */
-#define STM_ID_29W320DB 0x22CB22CB	/* M29W320DB ID (32 M, bottom boot sect)	*/
-#define STM_ID_29W040B	0x00E300E3	/* M29W040B ID (4M = 512K x 8)	*/
-#define FLASH_PSD4256GV 0x00E9		/* PSD4256 Flash and CPLD combination	*/
-
-#define INTEL_ID_28F016S    0x66a066a0	/* 28F016S[VS] ID (16M = 512k x 16)	*/
-#define INTEL_ID_28F800B3T  0x88928892	/*  8M = 512K x 16 top boot sector	*/
-#define INTEL_ID_28F800B3B  0x88938893	/*  8M = 512K x 16 bottom boot sector	*/
-#define INTEL_ID_28F160B3T  0x88908890	/*  16M = 1M x 16 top boot sector	*/
-#define INTEL_ID_28F160B3B  0x88918891	/*  16M = 1M x 16 bottom boot sector	*/
-#define INTEL_ID_28F320B3T  0x88968896	/*  32M = 2M x 16 top boot sector	*/
-#define INTEL_ID_28F320B3B  0x88978897	/*  32M = 2M x 16 bottom boot sector	*/
-#define INTEL_ID_28F640B3T  0x88988898	/*  64M = 4M x 16 top boot sector	*/
-#define INTEL_ID_28F640B3B  0x88998899	/*  64M = 4M x 16 bottom boot sector	*/
-#define INTEL_ID_28F160F3B  0x88F488F4	/*  16M = 1M x 16 bottom boot sector	*/
-
-#define INTEL_ID_28F800C3T  0x88C088C0	/*  8M = 512K x 16 top boot sector	*/
-#define INTEL_ID_28F800C3B  0x88C188C1	/*  8M = 512K x 16 bottom boot sector	*/
-#define INTEL_ID_28F160C3T  0x88C288C2	/*  16M = 1M x 16 top boot sector	*/
-#define INTEL_ID_28F160C3B  0x88C388C3	/*  16M = 1M x 16 bottom boot sector	*/
-#define INTEL_ID_28F320C3T  0x88C488C4	/*  32M = 2M x 16 top boot sector	*/
-#define INTEL_ID_28F320C3B  0x88C588C5	/*  32M = 2M x 16 bottom boot sector	*/
-#define INTEL_ID_28F640C3T  0x88CC88CC	/*  64M = 4M x 16 top boot sector	*/
-#define INTEL_ID_28F640C3B  0x88CD88CD	/*  64M = 4M x 16 bottom boot sector	*/
-
-#define INTEL_ID_28F128J3   0x89188918	/*  16M = 8M x 16 x 128 */
-#define INTEL_ID_28F320J5   0x00140014	/*  32M = 128K x  32	*/
-#define INTEL_ID_28F640J5   0x00150015	/*  64M = 128K x  64	*/
-#define INTEL_ID_28F320J3A  0x00160016	/*  32M = 128K x  32	*/
-#define INTEL_ID_28F640J3A  0x00170017	/*  64M = 128K x  64	*/
-#define INTEL_ID_28F128J3A  0x00180018	/* 128M = 128K x 128	*/
-#define INTEL_ID_28F256J3A  0x001D001D	/* 256M = 128K x 256	*/
-#define INTEL_ID_28F256L18T 0x880D880D	/* 256M = 128K x 255 + 32k x 4 */
-#define INTEL_ID_28F64K3    0x88018801	/*  64M =  32K x 255 + 32k x 4 */
-#define INTEL_ID_28F128K3   0x88028802	/* 128M =  64K x 255 + 32k x 4 */
-#define INTEL_ID_28F256K3   0x88038803	/* 256M = 128K x 255 + 32k x 4 */
-#define INTEL_ID_28F64P30T  0x88178817	/*  64M =  32K x 255 + 32k x 4 */
-#define INTEL_ID_28F64P30B  0x881A881A	/*  64M =  32K x 255 + 32k x 4 */
-#define INTEL_ID_28F128P30T 0x88188818	/* 128M =  64K x 255 + 32k x 4 */
-#define INTEL_ID_28F128P30B 0x881B881B	/* 128M =  64K x 255 + 32k x 4 */
-#define INTEL_ID_28F256P30T 0x88198819	/* 256M = 128K x 255 + 32k x 4 */
-#define INTEL_ID_28F256P30B 0x881C881C	/* 256M = 128K x 255 + 32k x 4 */
-
-#define INTEL_ID_28F160S3   0x00D000D0	/*  16M = 512K x  32 (64kB x 32)	*/
-#define INTEL_ID_28F320S3   0x00D400D4	/*  32M = 512K x  64 (64kB x 64)	*/
-
-/* Note that the Sharp 28F016SC is compatible with the Intel E28F016SC */
-#define SHARP_ID_28F016SCL  0xAAAAAAAA	/* LH28F016SCT-L95 2Mx8, 32 64k blocks	*/
-#define SHARP_ID_28F016SCZ  0xA0A0A0A0	/* LH28F016SCT-Z4  2Mx8, 32 64k blocks	*/
-#define SHARP_ID_28F008SC   0xA6A6A6A6	/* LH28F008SCT-L12 1Mx8, 16 64k blocks	*/
-					/* LH28F008SCR-L85 1Mx8, 16 64k blocks	*/
-
-#define TOSH_ID_FVT160	0xC2		/* TC58FVT160 ID (16 M, top )		*/
-#define TOSH_ID_FVB160	0x43		/* TC58FVT160 ID (16 M, bottom )	*/
-
-/*-----------------------------------------------------------------------
- * Internal FLASH identification codes
- *
- * Be careful when adding new type! Odd numbers are "bottom boot sector" types!
- */
-
-#define FLASH_AM040	0x0001		/* AMD Am29F040B, Am29LV040B		*/
-					/* Bright Micro BM29F040		*/
-					/* Fujitsu MBM29F040A			*/
-					/* STM M29W040B				*/
-					/* SGS Thomson M29F040B			*/
-					/* 8 64K x 8 uniform sectors		*/
-#define FLASH_AM400T	0x0002		/* AMD AM29LV400			*/
-#define FLASH_AM400B	0x0003
-#define FLASH_AM800T	0x0004		/* AMD AM29LV800			*/
-#define FLASH_AM800B	0x0005
-#define FLASH_AM116DT	0x0026		/* AMD AM29LV116DT (2Mx8bit) */
-#define FLASH_AM116DB	0x0027		/* AMD AM29LV116DB (2Mx8bit) */
-#define FLASH_AM160T	0x0006		/* AMD AM29LV160			*/
-#define FLASH_AM160LV	0x0046		/* AMD29LV160DB (2M = 2Mx8bit ) */
-#define FLASH_AM160B	0x0007
-#define FLASH_AM320T	0x0008		/* AMD AM29LV320			*/
-#define FLASH_AM320B	0x0009
-
-#define FLASH_AM080	0x000A		/* AMD Am29F080B			*/
-					/* 16 64K x 8 uniform sectors		*/
-
-#define FLASH_AMDL322T	0x0010		/* AMD AM29DL322			*/
-#define FLASH_AMDL322B	0x0011
-#define FLASH_AMDL323T	0x0012		/* AMD AM29DL323			*/
-#define FLASH_AMDL323B	0x0013
-#define FLASH_AMDL324T	0x0014		/* AMD AM29DL324			*/
-#define FLASH_AMDL324B	0x0015
-
-#define FLASH_AMDLV033C 0x0018
-#define FLASH_AMDLV065D 0x001A
-
-#define FLASH_AMDL640	0x0016		/* AMD AM29DL640D			*/
-#define FLASH_AMD016	0x0018		/* AMD AM29F016D			*/
-#define FLASH_AMDL640MB 0x0019		/* AMD AM29LV640MB (64M, bottom boot sect)*/
-#define FLASH_AMDL640MT 0x001A		/* AMD AM29LV640MT (64M, top boot sect) */
-
-#define FLASH_SST200A	0x0040		/* SST 39xF200A ID (  2M = 128K x 16 )	*/
-#define FLASH_SST400A	0x0042		/* SST 39xF400A ID (  4M = 256K x 16 )	*/
-#define FLASH_SST800A	0x0044		/* SST 39xF800A ID (  8M = 512K x 16 )	*/
-#define FLASH_SST160A	0x0046		/* SST 39xF160A ID ( 16M =   1M x 16 )	*/
-#define FLASH_SST320	0x0048		/* SST 39xF160A ID ( 16M =   1M x 16 )	*/
-#define FLASH_SST640	0x004A		/* SST 39xF160A ID ( 16M =   1M x 16 )	*/
-#define FLASH_SST020	0x0024		/* SST 39xF020 ID (256KB = 2Mbit x 8 )	*/
-#define FLASH_SST040	0x000E		/* SST 39xF040 ID (512KB = 4Mbit x 8 )	*/
-
-#define FLASH_STM800AB	0x0051		/* STM M29WF800AB  (  8M = 512K x 16 )	*/
-#define FLASH_STMW320DT 0x0052		/* STM M29W320DT   (32 M, top boot sector)	*/
-#define FLASH_STMW320DB 0x0053		/* STM M29W320DB   (32 M, bottom boot sect)*/
-#define FLASH_STM320DB	0x00CB		/* STM M29W320DB (4M = 64K x 64, bottom)*/
-#define FLASH_STM800DT	0x00D7		/* STM M29W800DT (1M = 64K x 16, top)	*/
-#define FLASH_STM800DB	0x005B		/* STM M29W800DB (1M = 64K x 16, bottom)*/
-
-#define FLASH_28F400_T	0x0062		/* MT  28F400B3 ID (  4M = 256K x 16 )	*/
-#define FLASH_28F400_B	0x0063		/* MT  28F400B3 ID (  4M = 256K x 16 )	*/
-
-#define FLASH_INTEL800T 0x0074		/* INTEL 28F800B3T (  8M = 512K x 16 )	*/
-#define FLASH_INTEL800B 0x0075		/* INTEL 28F800B3B (  8M = 512K x 16 )	*/
-#define FLASH_INTEL160T 0x0076		/* INTEL 28F160B3T ( 16M =  1 M x 16 )	*/
-#define FLASH_INTEL160B 0x0077		/* INTEL 28F160B3B ( 16M =  1 M x 16 )	*/
-#define FLASH_INTEL320T 0x0078		/* INTEL 28F320B3T ( 32M =  2 M x 16 )	*/
-#define FLASH_INTEL320B 0x0079		/* INTEL 28F320B3B ( 32M =  2 M x 16 )	*/
-#define FLASH_INTEL640T 0x007A		/* INTEL 28F320B3T ( 64M =  4 M x 16 )	*/
-#define FLASH_INTEL640B 0x007B		/* INTEL 28F320B3B ( 64M =  4 M x 16 )	*/
-
-#define FLASH_28F008S5	0x0080		/* Intel 28F008S5  (  1M =  64K x 16 )	*/
-#define FLASH_28F016SV	0x0081		/* Intel 28F016SV  ( 16M = 512k x 32 )	*/
-#define FLASH_28F800_B	0x0083		/* Intel E28F800B  (  1M = ? )		*/
-#define FLASH_AM29F800B 0x0084		/* AMD Am29F800BB  (  1M = ? )		*/
-#define FLASH_28F320J5	0x0085		/* Intel 28F320J5  (  4M = 128K x 32 )	*/
-#define FLASH_28F160S3	0x0086		/* Intel 28F160S3  ( 16M = 512K x 32 )	*/
-#define FLASH_28F320S3	0x0088		/* Intel 28F320S3  ( 32M = 512K x 64 )	*/
-#define FLASH_AM640U	0x0090		/* AMD Am29LV640U  ( 64M = 4M x 16 )	*/
-#define FLASH_AM033C	0x0091		/* AMD AM29LV033   ( 32M = 4M x 8 )	*/
-#define FLASH_LH28F016SCT 0x0092	/* Sharp 28F016SCT ( 8 Meg Flash SIMM ) */
-#define FLASH_28F160F3B 0x0093		/* Intel 28F160F3B ( 16M = 1M x 16 )	*/
-#define FLASH_AM065D	0x0093
-
-#define FLASH_28F640J5	0x0099		/* INTEL 28F640J5  ( 64M = 128K x  64)	*/
-
-#define FLASH_28F800C3T 0x009A		/* Intel 28F800C3T (  8M = 512K x 16 )	*/
-#define FLASH_28F800C3B 0x009B		/* Intel 28F800C3B (  8M = 512K x 16 )	*/
-#define FLASH_28F160C3T 0x009C		/* Intel 28F160C3T ( 16M = 1M x 16 )	*/
-#define FLASH_28F160C3B 0x009D		/* Intel 28F160C3B ( 16M = 1M x 16 )	*/
-#define FLASH_28F320C3T 0x009E		/* Intel 28F320C3T ( 32M = 2M x 16 )	*/
-#define FLASH_28F320C3B 0x009F		/* Intel 28F320C3B ( 32M = 2M x 16 )	*/
-#define FLASH_28F640C3T 0x00A0		/* Intel 28F640C3T ( 64M = 4M x 16 )	*/
-#define FLASH_28F640C3B 0x00A1		/* Intel 28F640C3B ( 64M = 4M x 16 )	*/
-#define FLASH_AMLV320U	0x00A2		/* AMD 29LV320M	   ( 32M = 2M x 16 )	*/
-
-#define FLASH_AM033	0x00A3		/* AMD AmL033C90V1   (32M = 4M x 8)	*/
-#define FLASH_AM065	0x0093		/* AMD AmL065DU12RI  (64M = 8M x 8)	*/
-#define FLASH_AT040	0x00A5		/* Amtel AT49LV040   (4M = 512K x 8)	*/
-
-#define FLASH_AMLV640U	0x00A4		/* AMD 29LV640M	   ( 64M = 4M x 16 )	*/
-#define FLASH_AMLV128U	0x00A6		/* AMD 29LV128M	   ( 128M = 8M x 16 )	*/
-#define FLASH_AMLV320B	0x00A7		/* AMD 29LV320MB   ( 32M = 2M x 16 )	*/
-#define FLASH_AMLV320T	0x00A8		/* AMD 29LV320MT   ( 32M = 2M x 16 )	*/
-#define FLASH_AMLV256U	0x00AA		/* AMD 29LV256M	   ( 256M = 16M x 16 )	*/
-#define FLASH_MXLV320B	0x00AB		/* MX  29LV320MB   ( 32M = 2M x 16 )	*/
-#define FLASH_MXLV320T	0x00AC		/* MX  29LV320MT   ( 32M = 2M x 16 )	*/
-#define FLASH_28F256L18T 0x00B0		/* Intel 28F256L18T 256M = 128K x 255 + 32k x 4 */
-#define FLASH_AMDL163T	0x00B2		/* AMD AM29DL163T (2M x 16 )			*/
-#define FLASH_AMDL163B	0x00B3
-#define FLASH_28F64K3	0x00B4		/* Intel 28F64K3   (  64M)		*/
-#define FLASH_28F128K3	0x00B6		/* Intel 28F128K3  ( 128M = 8M x 16 )	*/
-#define FLASH_28F256K3	0x00B8		/* Intel 28F256K3  ( 256M = 16M x 16 )	*/
-
-#define FLASH_28F320J3A 0x00C0		/* INTEL 28F320J3A ( 32M = 128K x  32)	*/
-#define FLASH_28F640J3A 0x00C2		/* INTEL 28F640J3A ( 64M = 128K x  64)	*/
-#define FLASH_28F128J3A 0x00C4		/* INTEL 28F128J3A (128M = 128K x 128)	*/
-#define FLASH_28F256J3A 0x00C6		/* INTEL 28F256J3A (256M = 128K x 256)	*/
-
-#define FLASH_FUJLV650	0x00D0		/* Fujitsu MBM 29LV650UE/651UE		*/
-#define FLASH_MT28S4M16LC 0x00E1	/* Micron MT28S4M16LC			*/
-#define FLASH_S29GL064M 0x00F0		/* Spansion S29GL064M-R6		*/
-#define FLASH_S29GL128N 0x00F1		/* Spansion S29GL128N			*/
-
-#define FLASH_UNKNOWN	0xFFFF		/* unknown flash type			*/
-
-
-/* manufacturer offsets
- */
-#define FLASH_MAN_AMD	0x00000000	/* AMD					*/
-#define FLASH_MAN_FUJ	0x00010000	/* Fujitsu				*/
-#define FLASH_MAN_BM	0x00020000	/* Bright Microelectronics		*/
-#define FLASH_MAN_MX	0x00030000	/* MXIC					*/
-#define FLASH_MAN_STM	0x00040000
-#define FLASH_MAN_TOSH	0x00050000	/* Toshiba				*/
-#define FLASH_MAN_EXCEL 0x00060000	/* Excel Semiconductor			*/
-#define FLASH_MAN_SST	0x00100000
-#define FLASH_MAN_INTEL 0x00300000
-#define FLASH_MAN_MT	0x00400000
-#define FLASH_MAN_SHARP 0x00500000
-#define FLASH_MAN_ATM	0x00600000
-#define FLASH_MAN_CFI	0x01000000
-
-
-#define FLASH_TYPEMASK	0x0000FFFF	/* extract FLASH type	information	*/
-#define FLASH_VENDMASK	0xFFFF0000	/* extract FLASH vendor information	*/
-
-#define FLASH_AMD_COMP	0x000FFFFF	/* Up to this ID, FLASH is compatible	*/
-					/* with AMD, Fujitsu and SST		*/
-					/* (JEDEC standard commands ?)		*/
-
-#define FLASH_BTYPE	0x0001		/* mask for bottom boot sector type	*/
-
-/*-----------------------------------------------------------------------
- * Timeout constants:
- *
- * We can't find any specifications for maximum chip erase times,
- * so these values are guestimates.
- */
-#define FLASH_ERASE_TIMEOUT	120000	/* timeout for erasing in ms		*/
-#define FLASH_WRITE_TIMEOUT	500	/* timeout for writes  in ms		*/
-
-#endif /* __CFI_FLASH_H */
-
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
deleted file mode 100644
index 45c59b9..0000000
--- a/drivers/nor/cfi_flash_amd.c
+++ /dev/null
@@ -1,268 +0,0 @@
-#include <common.h>
-#include <stdio.h>
-#include "cfi_flash.h"
-
-/*-----------------------------------------------------------------------
- * Reverse the order of the erase regions in the CFI QRY structure.
- * This is needed for chips that are either a) correctly detected as
- * top-boot, or b) buggy.
- */
-static void cfi_reverse_geometry(struct cfi_qry *qry)
-{
-	unsigned int i, j;
-	u32 tmp;
-
-	for (i = 0, j = qry->num_erase_regions - 1; i < j; i++, j--) {
-		tmp = qry->erase_region_info[i];
-		qry->erase_region_info[i] = qry->erase_region_info[j];
-		qry->erase_region_info[j] = tmp;
-	}
-}
-
-static void flash_unlock_seq (struct flash_info *info)
-{
-	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_UNLOCK_START);
-	flash_write_cmd (info, 0, info->addr_unlock2, AMD_CMD_UNLOCK_ACK);
-}
-
-/*
- * read jedec ids from device and set corresponding fields in info struct
- *
- * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
- *
-*/
-static void amd_read_jedec_ids (struct flash_info *info)
-{
-	info->cmd_reset		= AMD_CMD_RESET;
-	info->manufacturer_id = 0;
-	info->device_id       = 0;
-	info->device_id2      = 0;
-
-	/* calculate command offsets as in the Linux driver */
-	info->addr_unlock1 = 0x555;
-	info->addr_unlock2 = 0x2AA;
-
-	/*
-	 * modify the unlock address if we are in compatibility mode
-	 */
-	if (	/* x8/x16 in x8 mode */
-		((info->chipwidth == FLASH_CFI_BY8) &&
-			(info->interface == FLASH_CFI_X8X16)) ||
-		/* x16/x32 in x16 mode */
-		((info->chipwidth == FLASH_CFI_BY16) &&
-			(info->interface == FLASH_CFI_X16X32)))
-	{
-		info->addr_unlock1 = 0xaaa;
-		info->addr_unlock2 = 0x555;
-	}
-
-	flash_write_cmd(info, 0, 0, info->cmd_reset);
-	flash_unlock_seq(info);
-	flash_write_cmd(info, 0, info->addr_unlock1, FLASH_CMD_READ_ID);
-	udelay(1000); /* some flash are slow to respond */
-
-	info->manufacturer_id = jedec_read_mfr(info);
-	info->device_id = flash_read_uchar (info,
-					FLASH_OFFSET_DEVICE_ID);
-	if (info->device_id == 0x7E) {
-		/* AMD 3-byte (expanded) device ids */
-		info->device_id2 = flash_read_uchar (info,
-					FLASH_OFFSET_DEVICE_ID2);
-		info->device_id2 <<= 8;
-		info->device_id2 |= flash_read_uchar (info,
-					FLASH_OFFSET_DEVICE_ID3);
-	}
-	flash_write_cmd(info, 0, 0, info->cmd_reset);
-}
-
-static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
-{
-	void *addr;
-	cfiword_t cword;
-	int retval;
-
-	addr = flash_make_addr (info, sect, offset);
-	flash_make_cmd (info, cmd, &cword);
-	if (bankwidth_is_1(info)) {
-		retval = flash_read8(addr) != flash_read8(addr);
-	} else if (bankwidth_is_2(info)) {
-		retval = flash_read16(addr) != flash_read16(addr);
-	} else if (bankwidth_is_4(info)) {
-		retval = flash_read32(addr) != flash_read32(addr);
-	} else if (bankwidth_is_8(info)) {
-		retval = ( (flash_read32( addr ) != flash_read32( addr )) ||
-			   (flash_read32(addr+4) != flash_read32(addr+4)) );
-	} else
-		retval = 0;
-
-	return retval;
-}
-
-/*
- * flash_is_busy - check to see if the flash is busy
- * This routine checks the status of the chip and returns true if the chip is busy
- */
-static int amd_flash_is_busy (struct flash_info *info, flash_sect_t sect)
-{
-	return flash_toggle (info, sect, 0, AMD_STATUS_TOGGLE);
-}
-
-static int amd_flash_erase_one (struct flash_info *info, long sect)
-{
-	flash_unlock_seq(info);
-	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_ERASE_START);
-	flash_unlock_seq(info);
-	flash_write_cmd (info, sect, 0, AMD_CMD_ERASE_SECTOR);
-
-	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
-}
-
-static void amd_flash_prepare_write(struct flash_info *info)
-{
-	flash_unlock_seq(info);
-	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_WRITE);
-}
-
-#ifdef CONFIG_CFI_BUFFER_WRITE
-static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
-				  int len)
-{
-	flash_sect_t sector;
-	int cnt;
-	int retcode;
-	void *src = (void*)cp;
-	void *dst = (void *)dest;
-	cfiword_t cword;
-
-	sector = find_sector (info, dest);
-
-	flash_unlock_seq(info);
-	flash_make_cmd (info, AMD_CMD_WRITE_TO_BUFFER, &cword);
-	flash_write_word(info, cword, (void *)dest);
-
-	if (bankwidth_is_1(info)) {
-		cnt = len;
-		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
-		while (cnt-- > 0) {
-			flash_write8(flash_read8(src), dst);
-			src += 1, dst += 1;
-		}
-	} else if (bankwidth_is_2(info)) {
-		cnt = len >> 1;
-		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
-		while (cnt-- > 0) {
-			flash_write16(flash_read16(src), dst);
-			src += 2, dst += 2;
-		}
-	} else if (bankwidth_is_4(info)) {
-		cnt = len >> 2;
-		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
-		while (cnt-- > 0) {
-			flash_write32(flash_read32(src), dst);
-			src += 4, dst += 4;
-		}
-	} else if (bankwidth_is_8(info)) {
-		cnt = len >> 3;
-		flash_write_cmd(info, sector, 0, (u32)cnt - 1);
-		while (cnt-- > 0) {
-			flash_write64(flash_read64(src), dst);
-			src += 8, dst += 8;
-		}
-	}
-
-	flash_write_cmd (info, sector, 0, AMD_CMD_WRITE_BUFFER_CONFIRM);
-	retcode = flash_status_check (info, sector, info->buffer_write_tout,
-					   "buffer write");
-	return retcode;
-}
-#else
-#define amd_flash_write_cfibuffer NULL
-#endif /* CONFIG_CFI_BUFFER_WRITE */
-
-static int amd_flash_real_protect (struct flash_info *info, long sector, int prot)
-{
-	if (info->manufacturer_id != (uchar)ATM_MANUFACT)
-		return 0;
-
-	if (prot) {
-		flash_unlock_seq (info);
-		flash_write_cmd (info, 0, info->addr_unlock1,
-				 ATM_CMD_SOFTLOCK_START);
-		flash_unlock_seq (info);
-		flash_write_cmd (info, sector, 0, ATM_CMD_LOCK_SECT);
-	} else {
-		flash_write_cmd (info, 0, info->addr_unlock1,
-				 AMD_CMD_UNLOCK_START);
-		if (info->device_id == ATM_ID_BV6416)
-			flash_write_cmd (info, sector, 0,
-					 ATM_CMD_UNLOCK_SECT);
-	}
-
-	return 0;
-}
-
-/*
- * Manufacturer-specific quirks. Add workarounds for geometry
- * reversal, etc. here.
- */
-static void flash_fixup_amd (struct flash_info *info, struct cfi_qry *qry)
-{
-	/* check if flash geometry needs reversal */
-	if (qry->num_erase_regions > 1) {
-		/* reverse geometry if top boot part */
-		if (info->cfi_version < 0x3131) {
-			/* CFI < 1.1, try to guess from device id */
-			if ((info->device_id & 0x80) != 0)
-				cfi_reverse_geometry(qry);
-		} else if (flash_read_uchar(info, info->ext_addr + 0xf) == 3) {
-			/* CFI >= 1.1, deduct from top/bottom flag */
-			/* note: ext_addr is valid since cfi_version > 0 */
-			cfi_reverse_geometry(qry);
-		}
-	}
-}
-
-static void flash_fixup_atmel(struct flash_info *info, struct cfi_qry *qry)
-{
-	int reverse_geometry = 0;
-
-	/* Check the "top boot" bit in the PRI */
-	if (info->ext_addr && !(flash_read_uchar(info, info->ext_addr + 6) & 1))
-		reverse_geometry = 1;
-
-	/* AT49BV6416(T) list the erase regions in the wrong order.
-	 * However, the device ID is identical with the non-broken
-	 * AT49BV642D since u-boot only reads the low byte (they
-	 * differ in the high byte.) So leave out this fixup for now.
-	 */
-	if (info->device_id == 0xd6 || info->device_id == 0xd2)
-		reverse_geometry = !reverse_geometry;
-
-	if (reverse_geometry)
-		cfi_reverse_geometry(qry);
-}
-
-static void amd_flash_fixup(struct flash_info *info, struct cfi_qry *qry)
-{
-	/* Do manufacturer-specific fixups */
-	switch (info->manufacturer_id) {
-	case 0x0001:
-		flash_fixup_amd(info, qry);
-		break;
-	case 0x001f:
-		flash_fixup_atmel(info, qry);
-		break;
-        }
-}
-
-struct cfi_cmd_set cfi_cmd_set_amd = {
-	.flash_write_cfibuffer = amd_flash_write_cfibuffer,
-	.flash_erase_one = amd_flash_erase_one,
-	.flash_is_busy = amd_flash_is_busy,
-	.flash_read_jedec_ids = amd_read_jedec_ids,
-	.flash_prepare_write = amd_flash_prepare_write,
-	.flash_status_check = flash_generic_status_check,
-	.flash_real_protect = amd_flash_real_protect,
-	.flash_fixup = amd_flash_fixup,
-};
-
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
deleted file mode 100644
index 32e581a..0000000
--- a/drivers/nor/cfi_flash_intel.c
+++ /dev/null
@@ -1,173 +0,0 @@
-#include <common.h>
-#include "cfi_flash.h"
-
-/*
- * read jedec ids from device and set corresponding fields in info struct
- *
- * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
- *
-*/
-static void intel_read_jedec_ids (struct flash_info *info)
-{
-	info->cmd_reset		= FLASH_CMD_RESET;
-	info->manufacturer_id = 0;
-	info->device_id       = 0;
-	info->device_id2      = 0;
-
-	flash_write_cmd(info, 0, 0, info->cmd_reset);
-	flash_write_cmd(info, 0, 0, FLASH_CMD_READ_ID);
-	udelay(1000); /* some flash are slow to respond */
-
-	info->manufacturer_id = jedec_read_mfr(info);
-	info->device_id = flash_read_uchar (info,
-					FLASH_OFFSET_DEVICE_ID);
-	flash_write_cmd(info, 0, 0, info->cmd_reset);
-}
-
-/*
- * flash_is_busy - check to see if the flash is busy
- * This routine checks the status of the chip and returns true if the chip is busy
- */
-static int intel_flash_is_busy (struct flash_info *info, flash_sect_t sect)
-{
-	return !flash_isset (info, sect, 0, FLASH_STATUS_DONE);
-}
-
-static int intel_flash_erase_one (struct flash_info *info, long sect)
-{
-	flash_write_cmd (info, sect, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, sect, 0, FLASH_CMD_BLOCK_ERASE);
-	flash_write_cmd (info, sect, 0, FLASH_CMD_ERASE_CONFIRM);
-
-	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
-}
-
-static void intel_flash_prepare_write(struct flash_info *info)
-{
-	flash_write_cmd (info, 0, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, 0, 0, FLASH_CMD_WRITE);
-}
-
-#ifdef CONFIG_CFI_BUFFER_WRITE
-static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
-				  int len)
-{
-	flash_sect_t sector;
-	int cnt;
-	int retcode;
-	void *src = (void*)cp;
-	void *dst = (void *)dest;
-	/* reduce width due to possible alignment problems */
-	const unsigned long ptr = (unsigned long)dest | (unsigned long)cp | info->portwidth;
-	const int width = ptr & -ptr;
-
-	sector = find_sector (info, dest);
-	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_TO_BUFFER);
-
-	retcode = flash_generic_status_check (info, sector, info->buffer_write_tout,
-					   "write to buffer");
-	if (retcode != ERR_OK)
-		return retcode;
-
-	/* reduce the number of loops by the width of the port	*/
-	cnt = len / width;
-
-	flash_write_cmd(info, sector, 0, cnt - 1);
-	while (cnt-- > 0) {
-		switch (width) {
-		case 1:
-			flash_write8(flash_read8(src), dst);
-			src += 1, dst += 1;
-			break;
-		case 2:
-			flash_write16(flash_read16(src), dst);
-			src += 2, dst += 2;
-			break;
-		case 4:
-			flash_write32(flash_read32(src), dst);
-			src += 4, dst += 4;
-			break;
-		case 8:
-			flash_write64(flash_read64(src), dst);
-			src += 8, dst += 8;
-			break;
-		}
-	}
-
-	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_BUFFER_CONFIRM);
-	retcode = flash_status_check (info, sector,
-					   info->buffer_write_tout,
-					   "buffer write");
-	return retcode;
-}
-#else
-#define intel_flash_write_cfibuffer NULL
-#endif /* CONFIG_CFI_BUFFER_WRITE */
-
-static int intel_flash_status_check (struct flash_info *info, flash_sect_t sector,
-				    uint64_t tout, char *prompt)
-{
-	int retcode;
-
-	retcode = flash_generic_status_check (info, sector, tout, prompt);
-
-	if ((retcode == ERR_OK)
-	    && !flash_isequal (info, sector, 0, FLASH_STATUS_DONE)) {
-		retcode = ERR_INVAL;
-		printf ("Flash %s error at address %lx\n", prompt,
-			info->start[sector]);
-		if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS | FLASH_STATUS_PSLBS)) {
-			puts ("Command Sequence Error.\n");
-		} else if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS)) {
-			puts ("Block Erase Error.\n");
-			retcode = ERR_NOT_ERASED;
-		} else if (flash_isset (info, sector, 0, FLASH_STATUS_PSLBS)) {
-			puts ("Locking Error\n");
-		}
-		if (flash_isset (info, sector, 0, FLASH_STATUS_DPS)) {
-			puts ("Block locked.\n");
-			retcode = ERR_PROTECTED;
-		}
-		if (flash_isset (info, sector, 0, FLASH_STATUS_VPENS))
-			puts ("Vpp Low Error.\n");
-	}
-	flash_write_cmd (info, sector, 0, info->cmd_reset);
-
-	return retcode;
-}
-
-static int intel_flash_real_protect (struct flash_info *info, long sector, int prot)
-{
-	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
-	if (prot)
-		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_SET);
-	else
-		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
-
-	return 0;
-}
-
-static void intel_flash_fixup (struct flash_info *info, struct cfi_qry *qry)
-{
-#ifdef CFG_FLASH_PROTECTION
-	/* read legacy lock/unlock bit from intel flash */
-	if (info->ext_addr) {
-		info->legacy_unlock = flash_read_uchar (info,
-				info->ext_addr + 5) & 0x08;
-	}
-#endif
-}
-
-struct cfi_cmd_set cfi_cmd_set_intel = {
-	.flash_write_cfibuffer = intel_flash_write_cfibuffer,
-	.flash_erase_one = intel_flash_erase_one,
-	.flash_is_busy = intel_flash_is_busy,
-	.flash_read_jedec_ids = intel_read_jedec_ids,
-	.flash_prepare_write = intel_flash_prepare_write,
-	.flash_status_check = intel_flash_status_check,
-	.flash_real_protect = intel_flash_real_protect,
-	.flash_fixup = intel_flash_fixup,
-};
-
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
