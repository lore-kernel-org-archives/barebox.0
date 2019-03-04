Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0lvO-0004tP-Ml
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:38:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 12:38:18 +0100
Message-Id: <20190304113823.21535-2-s.hauer@pengutronix.de>
In-Reply-To: <20190304113823.21535-1-s.hauer@pengutronix.de>
References: <20190304113823.21535-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] crc: import crc_itu_t() from kernel
To: Barebox List <barebox@lists.infradead.org>

Out cyc_crc16() function is the same function as crc_itu_t() in the
Linux kernel. Import and use crc_itu_t() from the Kernel for
consistency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig      |   2 +-
 common/Kconfig        |   2 +-
 common/ddr_spd.c      |   2 +-
 common/ratp/Kconfig   |   2 +-
 crypto/Kconfig        |   3 +-
 crypto/Makefile       |   2 +-
 crypto/crc-itu-t.c    |  60 ++++++++++++++++++++++++
 crypto/crc16.c        | 103 ------------------------------------------
 drivers/mci/Kconfig   |   2 +-
 drivers/mci/mci_spi.c |   4 +-
 include/crc.h         |  16 ++++++-
 lib/Kconfig           |   4 +-
 lib/ratp.c            |   4 +-
 lib/xymodem.c         |   2 +-
 14 files changed, 88 insertions(+), 120 deletions(-)
 create mode 100644 crypto/crc-itu-t.c
 delete mode 100644 crypto/crc16.c

diff --git a/commands/Kconfig b/commands/Kconfig
index c14332c9d7..4f5d84ac18 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -394,7 +394,7 @@ config CMD_GO
 
 config CMD_LOADB
 	depends on CONSOLE_FULL
-	select CRC16
+	select CRC_ITU_T
 	tristate
 	prompt "loadb"
 	help
diff --git a/common/Kconfig b/common/Kconfig
index 21b33f06f7..749bdcf271 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1229,4 +1229,4 @@ config HAS_DEBUG_LL
 
 config DDR_SPD
 	bool
-	select CRC16
+	select CRC_ITU_T
diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index 7e2945ed96..2110972f5b 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -51,7 +51,7 @@ uint32_t ddr3_spd_checksum_pass(const struct ddr3_spd_eeprom_s *spd)
 	 */
 
 	len = !(spd->info_size_crc & 0x80) ? 126 : 117;
-	csum16 = cyg_crc16((char *)spd, len);
+	csum16 = crc_itu_t(0, (char *)spd, len);
 
 	crc_lsb = (char) (csum16 & 0xff);
 	crc_msb = (char) (csum16 >> 8);
diff --git a/common/ratp/Kconfig b/common/ratp/Kconfig
index 25c931b978..30462c6c97 100644
--- a/common/ratp/Kconfig
+++ b/common/ratp/Kconfig
@@ -2,7 +2,7 @@
 config CONSOLE_RATP
 	bool
 	select RATP
-	select CRC16
+	select CRC_ITU_T
 	select POLLER
 	select CMDLINE_EDITING
 	depends on CONSOLE_FULL
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 6d65c24d4f..c06d3c054e 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -3,8 +3,7 @@ menu "Crypto support"
 config CRC32
 	bool
 
-config CRC16
-	default y
+config CRC_ITU_T
 	bool
 
 config CRC7
diff --git a/crypto/Makefile b/crypto/Makefile
index a7240d1d6e..0014b0f4ce 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_CRC32)	+= crc32.o
-obj-$(CONFIG_CRC16)	+= crc16.o
+obj-$(CONFIG_CRC_ITU_T)	+= crc-itu-t.o
 obj-$(CONFIG_CRC7)	+= crc7.o
 obj-$(CONFIG_DIGEST)	+= digest.o
 obj-$(CONFIG_DIGEST_CRC32_GENERIC)	+= crc32_digest.o
diff --git a/crypto/crc-itu-t.c b/crypto/crc-itu-t.c
new file mode 100644
index 0000000000..64bccfb742
--- /dev/null
+++ b/crypto/crc-itu-t.c
@@ -0,0 +1,60 @@
+/*
+ *      crc-itu-t.c
+ *
+ * This source code is licensed under the GNU General Public License,
+ * Version 2. See the file COPYING for more details.
+ */
+
+#include <crc.h>
+
+/** CRC table for the CRC ITU-T V.41 0x1021 (x^16 + x^12 + x^15 + 1) */
+const u16 crc_itu_t_table[256] = {
+	0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
+	0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef,
+	0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6,
+	0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de,
+	0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485,
+	0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d,
+	0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4,
+	0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc,
+	0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823,
+	0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b,
+	0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12,
+	0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a,
+	0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41,
+	0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49,
+	0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70,
+	0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78,
+	0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f,
+	0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067,
+	0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e,
+	0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256,
+	0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d,
+	0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405,
+	0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c,
+	0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634,
+	0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab,
+	0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3,
+	0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a,
+	0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92,
+	0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9,
+	0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1,
+	0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8,
+	0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0
+};
+
+/**
+ * crc_itu_t - Compute the CRC-ITU-T for the data buffer
+ *
+ * @crc:     previous CRC value
+ * @buffer:  data pointer
+ * @len:     number of bytes in the buffer
+ *
+ * Returns the updated CRC value
+ */
+u16 crc_itu_t(u16 crc, const u8 *buffer, size_t len)
+{
+	while (len--)
+		crc = crc_itu_t_byte(crc, *buffer++);
+	return crc;
+}
diff --git a/crypto/crc16.c b/crypto/crc16.c
deleted file mode 100644
index 0b08e9ccde..0000000000
--- a/crypto/crc16.c
+++ /dev/null
@@ -1,103 +0,0 @@
-/*
- *==========================================================================
- *
- *      crc16.c
- *
- *      16 bit CRC with polynomial x^16+x^12+x^5+1
- *
- *==========================================================================
- *####ECOSGPLCOPYRIGHTBEGIN####
- * -------------------------------------------
- * This file is part of eCos, the Embedded Configurable Operating System.
- * Copyright (C) 1998, 1999, 2000, 2001, 2002 Red Hat, Inc.
- * Copyright (C) 2002 Gary Thomas
- *
- * eCos is free software; you can redistribute it and/or modify it under
- * the terms of the GNU General Public License as published by the Free
- * Software Foundation; either version 2 or (at your option) any later version.
- *
- * eCos is distributed in the hope that it will be useful, but WITHOUT ANY
- * WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
- * for more details.
- *
- * As a special exception, if other files instantiate templates or use macros
- * or inline functions from this file, or you compile this file and link it
- * with other works to produce a work based on this file, this file does not
- * by itself cause the resulting work to be covered by the GNU General Public
- * License. However the source code for this file must still be made available
- * in accordance with section (3) of the GNU General Public License.
- *
- * This exception does not invalidate any other reasons why a work based on
- * this file might be covered by the GNU General Public License.
- *
- * Alternative licenses for eCos may be arranged by contacting Red Hat, Inc.
- * at http: *sources.redhat.com/ecos/ecos-license/
- * -------------------------------------------
- *####ECOSGPLCOPYRIGHTEND####
- *==========================================================================
- *#####DESCRIPTIONBEGIN####
- *
- * Author(s):    gthomas
- * Contributors: gthomas,asl
- * Date:         2001-01-31
- * Purpose:
- * Description:
- *
- * This code is part of eCos (tm).
- *
- *####DESCRIPTIONEND####
- *
- *==========================================================================
- */
-
-#include "crc.h"
-
-/* Table of CRC constants - implements x^16+x^12+x^5+1 */
-static const uint16_t crc16_tab[] = {
-    0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
-    0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef,
-    0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6,
-    0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de,
-    0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485,
-    0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d,
-    0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4,
-    0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc,
-    0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823,
-    0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b,
-    0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12,
-    0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a,
-    0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41,
-    0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49,
-    0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70,
-    0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78,
-    0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f,
-    0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067,
-    0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e,
-    0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256,
-    0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d,
-    0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405,
-    0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c,
-    0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634,
-    0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab,
-    0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3,
-    0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a,
-    0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92,
-    0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9,
-    0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1,
-    0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8,
-    0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0,
-};
-
-uint16_t
-cyg_crc16(const unsigned char *buf, int len)
-{
-    int i;
-    uint16_t cksum;
-
-    cksum = 0;
-    for (i = 0;  i < len;  i++) {
-	cksum = crc16_tab[((cksum>>8) ^ *buf++) & 0xFF] ^ (cksum << 8);
-    }
-    return cksum;
-}
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 2075151d67..397dcf1377 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -141,7 +141,7 @@ config MCI_SPI
 
 config MMC_SPI_CRC_ON
 	bool "Enable CRC protection for transfers"
-	select CRC16
+	select CRC_ITU_T
 	depends on MCI_SPI
 	help
 	  Enable CRC protection for transfers
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 011947c8c1..42072da58a 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -166,7 +166,7 @@ static uint mmc_spi_readdata(struct mmc_spi_host *host, void *xbuf,
 			mmc_spi_readbytes(host, bsize, buf);
 			mmc_spi_readbytes(host, 2, &crc);
 #ifdef CONFIG_MMC_SPI_CRC_ON
-			if (be16_to_cpu(cyg_crc16(buf, bsize)) != crc) {
+			if (be16_to_cpu(crc_itu_t(0, buf, bsize)) != crc) {
 				dev_dbg(host->dev, "%s: CRC error\n", __func__);
 				r1 = R1_SPI_COM_CRC;
 				break;
@@ -197,7 +197,7 @@ static uint mmc_spi_writedata(struct mmc_spi_host *host, const void *xbuf,
 
 	while (bcnt--) {
 #ifdef CONFIG_MMC_SPI_CRC_ON
-		crc = be16_to_cpu(cyg_crc16((u8 *)buf, bsize));
+		crc = be16_to_cpu(crc_itu_t(0, (u8 *)buf, bsize));
 #endif
 		mmc_spi_writebytes(host, 2, tok);
 		mmc_spi_writebytes(host, bsize, (void *)buf);
diff --git a/include/crc.h b/include/crc.h
index 847a0a4b64..317f6f5494 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -3,8 +3,20 @@
 
 #include <linux/types.h>
 
-/* 16 bit CRC with polynomial x^16+x^12+x^5+1 */
-extern uint16_t cyg_crc16(const unsigned char *s, int len);
+/*
+ * Implements the standard CRC ITU-T V.41:
+ *   Width 16
+ *   Poly  0x1021 (x^16 + x^12 + x^15 + 1)
+ *   Init  0
+ */
+extern u16 const crc_itu_t_table[256];
+
+extern u16 crc_itu_t(u16 crc, const u8 *buffer, size_t len);
+
+static inline u16 crc_itu_t_byte(u16 crc, const u8 data)
+{
+	return (crc << 8) ^ crc_itu_t_table[((crc >> 8) ^ data) & 0xff];
+}
 
 uint32_t crc32(uint32_t, const void *, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
diff --git a/lib/Kconfig b/lib/Kconfig
index e048aded8b..ecf578a34e 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -79,7 +79,7 @@ config QSORT
 
 config XYMODEM
 	bool
-	select CRC16
+	select CRC_ITU_T
 
 config LIBSCAN
 	bool
@@ -94,7 +94,7 @@ config STMP_DEVICE
 	bool
 
 config RATP
-	select CRC16
+	select CRC_ITU_T
 	bool "RATP protocol support"
 	help
 	  Reliable Asynchronous Transfer Protocol (RATP) is a protocol for reliably
diff --git a/lib/ratp.c b/lib/ratp.c
index 7801cae519..8167c5bd4c 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -315,7 +315,7 @@ static int ratp_recv_pkt_data(struct ratp_internal *ri, void *data, uint8_t len,
 			return ret;
 	}
 
-	crc_expect = cyg_crc16(data, len);
+	crc_expect = crc_itu_t(0, data, len);
 
 	crc_read = get_unaligned_be16(data + len);
 
@@ -419,7 +419,7 @@ static int ratp_send_next_data(struct ratp_internal *ri)
 	pktlen = sizeof(struct ratp_header);
 	if (len > 1) {
 		pktlen += len + 2;
-		crc = cyg_crc16(data, len);
+		crc = crc_itu_t(0, data, len);
 		put_unaligned_be16(crc, data + len);
 	} else if (len == 1) {
 		control |= RATP_CONTROL_SO;
diff --git a/lib/xymodem.c b/lib/xymodem.c
index 9e4ce58b60..136741ab4a 100644
--- a/lib/xymodem.c
+++ b/lib/xymodem.c
@@ -210,7 +210,7 @@ static int check_crc(unsigned char *buf, int len, int crc, int crc_mode)
 			crc8 += buf[i];
 		return crc8 == crc ? 0 : -EBADMSG;
 	case CRC_CRC16:
-		crc16 = cyg_crc16(buf, len);
+		crc16 = crc_itu_t(0, buf, len);
 		xy_dbg("crc16: received = %x, calculated=%x\n", crc, crc16);
 		return crc16 == crc ? 0 : -EBADMSG;
 	case CRC_NONE:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
