Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grsLP-0007KU-19
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 22:40:35 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Thu,  7 Feb 2019 23:39:06 +0100
Message-Id: <20190207223906.24394-6-rohieb@rohieb.name>
In-Reply-To: <20190207223906.24394-1-rohieb@rohieb.name>
References: <20190207223906.24394-1-rohieb@rohieb.name>
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
Subject: [PATCH 6/6] include: spi: add SPDX GPL-2.0-only license tags for
 files without licensing information
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de, Roland Hieber <rohieb@rohieb.name>

According to our /README, GPL-2.0-only applies for the whole project
except noted otherwise.

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 include/spi/eeprom.h  | 1 +
 include/spi/flash.h   | 1 +
 include/spi/imx-spi.h | 1 +
 include/spi/spi.h     | 1 +
 4 files changed, 4 insertions(+)

diff --git a/include/spi/eeprom.h b/include/spi/eeprom.h
index 15495e59f5..410ecea19c 100644
--- a/include/spi/eeprom.h
+++ b/include/spi/eeprom.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _SPI_EEPROM_H
 #define _SPI_EEPROM_H
 
 /*
  * Put one of these structures in platform_data for SPI EEPROMS handled
  * by the "at25" driver.  On SPI, most EEPROMS understand the same core
  * command set.  If you need to support EEPROMs that don't yet fit, add
  * flags to support those protocol options.  These values all come from
  * the chip datasheets.
  */
 struct spi_eeprom {
 	char		name[10];
 	u16		page_size;		/* for writes */
 	u16		flags;
 #define	EE_ADDR1	0x0001			/*  8 bit addrs */
diff --git a/include/spi/flash.h b/include/spi/flash.h
index c1204e7e61..796d649d9a 100644
--- a/include/spi/flash.h
+++ b/include/spi/flash.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef LINUX_SPI_FLASH_H
 #define LINUX_SPI_FLASH_H
 
 struct mtd_partition;
 
 /**
  * struct flash_platform_data: board-specific flash data
  * @name: optional flash device name (eg, as used with mtdparts=)
  * @parts: optional array of mtd_partitions for static partitioning
  * @nr_parts: number of mtd_partitions for static partitoning
  * @type: optional flash device type (e.g. m25p80 vs m25p64), for use
  *	with chips that can't be queried for JEDEC or other IDs
  *
  * Board init code (in arch/.../mach-xxx/board-yyy.c files) can
  * provide information about SPI flash parts (such as DataFlash) to
diff --git a/include/spi/imx-spi.h b/include/spi/imx-spi.h
index a592573e62..568795188c 100644
--- a/include/spi/imx-spi.h
+++ b/include/spi/imx-spi.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __SPI_IMX_SPI_H
 #define __SPI_IMX_SPI_H
 
 #define CSPI_0_0_RXDATA		0x00
 #define CSPI_0_0_TXDATA		0x04
 #define CSPI_0_0_CTRL		0x08
 #define CSPI_0_0_INT		0x0C
 #define CSPI_0_0_DMA		0x18
 #define CSPI_0_0_STAT		0x0C
 #define CSPI_0_0_PERIOD		0x14
 #define CSPI_0_0_TEST		0x10
 #define CSPI_0_0_RESET		0x1C
 
 #define CSPI_0_0_CTRL_ENABLE		(1 << 10)
 #define CSPI_0_0_CTRL_MASTER		(1 << 11)
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 620e5e57b4..f827f80ff7 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_SPI_H
 #define __INCLUDE_SPI_H
 
 #include <driver.h>
 #include <linux/string.h>
 
 struct spi_board_info {
 	char	*name;
 	int 	max_speed_hz;
 	int	bus_num;
 	int	chip_select;
 
 	/* mode becomes spi_device.mode, and is essential for chips
 	 * where the default of SPI_CS_HIGH = 0 is wrong.
 	 */
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
