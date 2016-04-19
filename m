Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDo-00032j-5Z
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:42 +0200
Message-Id: <1461051412-25711-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] include: move crc specific stuff to crc.h
To: Barebox List <barebox@lists.infradead.org>

We have a crc.h, so move our crc function prototypes there to further
cleanup common.h.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/geip-da923rc/product_data.c |   1 +
 commands/crc.c                              |   1 +
 common/environment.c                        |   1 +
 common/imx-bbu-nand-fcb.c                   |   1 +
 common/partitions/efi.c                     |   1 +
 common/state.c                              |   1 +
 common/uimage.c                             |   1 +
 crypto/crc32.c                              |   1 +
 drivers/mtd/ubi/ubi-barebox.h               |   3 +-
 drivers/mtd/ubi/ubi.h                       |   1 +
 fs/bpkfs.c                                  |   1 +
 fs/ubifs/ubifs.h                            |   1 +
 fs/uimagefs.c                               |   1 +
 include/common.h                            |   6 --
 include/crc.h                               | 102 +++-------------------------
 15 files changed, 22 insertions(+), 101 deletions(-)

diff --git a/arch/ppc/boards/geip-da923rc/product_data.c b/arch/ppc/boards/geip-da923rc/product_data.c
index 0c46006..eda10a4 100644
--- a/arch/ppc/boards/geip-da923rc/product_data.c
+++ b/arch/ppc/boards/geip-da923rc/product_data.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <crc.h>
 #include <i2c/i2c.h>
 #include <mach/immap_85xx.h>
 #include <mach/fsl_i2c.h>
diff --git a/commands/crc.c b/commands/crc.c
index 58b750e..066d91e 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <command.h>
 #include <fs.h>
+#include <crc.h>
 #include <getopt.h>
 #include <malloc.h>
 #include <libfile.h>
diff --git a/common/environment.c b/common/environment.c
index 9cf44a0..65404af 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -29,6 +29,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <crc.h>
 #include <fcntl.h>
 #include <envfs.h>
 #include <xfuncs.h>
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 04c6e60..1ffa79d 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -34,6 +34,7 @@
 #include <linux/mtd/nand.h>
 #include <linux/stat.h>
 #include <io.h>
+#include <crc.h>
 #include <mach/generic.h>
 #include <mtd/mtd-peb.h>
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index a9945dd..88734f1 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -17,6 +17,7 @@
 #include <init.h>
 #include <asm/unaligned.h>
 #include <dma.h>
+#include <crc.h>
 #include <linux/ctype.h>
 
 #include "efi.h"
diff --git a/common/state.c b/common/state.c
index b55b150..c763ca4 100644
--- a/common/state.c
+++ b/common/state.c
@@ -20,6 +20,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <fs.h>
+#include <crc.h>
 #include <init.h>
 #include <ioctl.h>
 #include <libbb.h>
diff --git a/common/uimage.c b/common/uimage.c
index 59d7b65..34daf70 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -21,6 +21,7 @@
 #include <image.h>
 #include <malloc.h>
 #include <errno.h>
+#include <crc.h>
 #include <libbb.h>
 #include <libfile.h>
 #include <uncompress.h>
diff --git a/crypto/crc32.c b/crypto/crc32.c
index 58637bd..3bff6fe 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -12,6 +12,7 @@
 #include <common.h>
 #include <xfuncs.h>
 #include <fs.h>
+#include <crc.h>
 #include <fcntl.h>
 #include <malloc.h>
 #include <linux/ctype.h>
diff --git a/drivers/mtd/ubi/ubi-barebox.h b/drivers/mtd/ubi/ubi-barebox.h
index ab970aa..557ad88 100644
--- a/drivers/mtd/ubi/ubi-barebox.h
+++ b/drivers/mtd/ubi/ubi-barebox.h
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <malloc.h>
+#include <crc.h>
 #include <asm-generic/div64.h>
 #include <errno.h>
 #include <linux/err.h>
@@ -26,7 +27,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/ubi.h>
 
-#define crc32(seed, data, length)  crc32_no_comp(seed, (unsigned char const *)data, length)
+#define crc32(seed, data, length)  crc32_no_comp(seed, (unsigned char * const)data, length)
 
 /* configurable */
 #define CONFIG_MTD_UBI_WL_THRESHOLD	4096
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index a8ed0d7..471d784 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -20,6 +20,7 @@
 
 #include <common.h>
 #include <malloc.h>
+#include <crc.h>
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/rbtree.h>
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 1e2619e..309a122 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -14,6 +14,7 @@
 #include <fcntl.h>
 #include <malloc.h>
 #include <init.h>
+#include <crc.h>
 #include <linux/stat.h>
 #include <linux/err.h>
 #include <bpkfs.h>
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 75e54e7..d2dcf7e 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -34,6 +34,7 @@
 #else
 #include <common.h>
 #include <lzo.h>
+#include <crc.h>
 #include <linux/fs.h>
 #include <linux/sched.h>
 #include <linux/ctype.h>
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 3fdc5bd..c2e34a7 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -17,6 +17,7 @@
 #include <uimagefs.h>
 #include <libbb.h>
 #include <rtc.h>
+#include <crc.h>
 #include <libfile.h>
 
 static bool uimagefs_is_data_file(struct uimagefs_handle_data *d)
diff --git a/include/common.h b/include/common.h
index ea349be..54120c4 100644
--- a/include/common.h
+++ b/include/common.h
@@ -69,12 +69,6 @@ long	get_ram_size  (volatile long *, long);
 /* $(CPU)/cpu.c */
 void __noreturn poweroff(void);
 
-/* lib_generic/crc32.c */
-uint32_t crc32(uint32_t, const void*, unsigned int);
-uint32_t crc32_no_comp(uint32_t, const void*, unsigned int);
-int file_crc(char *filename, ulong start, ulong size, ulong *crc,
-		    ulong *total);
-
 /* common/console.c */
 int	ctrlc (void);
 
diff --git a/include/crc.h b/include/crc.h
index 4290f41..847a0a4 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -1,100 +1,14 @@
-/*
- *==========================================================================
- *
- *      crc.h
- *
- *      Interface for the CRC algorithms.
- *
- *==========================================================================
- *####ECOSGPLCOPYRIGHTBEGIN####
- * -------------------------------------------
- * This file is part of eCos, the Embedded Configurable Operating System.
- * Copyright (C) 2002 Andrew Lunn
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
- * You should have received a copy of the GNU General Public License along
- * with eCos; if not, write to the Free Software Foundation, Inc.,
- * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
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
- * Author(s):    Andrew Lunn
- * Contributors: Andrew Lunn
- * Date:         2002-08-06
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
-#ifndef _SERVICES_CRC_CRC_H_
-#define _SERVICES_CRC_CRC_H_
+#ifndef __INCLUDE_CRC_H
+#define __INCLUDE_CRC_H
 
 #include <linux/types.h>
 
-#ifndef __externC
-# ifdef __cplusplus
-#  define __externC extern "C"
-# else
-#  define __externC extern
-# endif
-#endif
-
-/* Compute a CRC, using the POSIX 1003 definition */
-extern uint32_t
-cyg_posix_crc32(unsigned char *s, int len);
-
-/* Gary S. Brown's 32 bit CRC */
-
-extern uint32_t
-cyg_crc32(unsigned char *s, int len);
-
-/* Gary S. Brown's 32 bit CRC, but accumulate the result from a */
-/* previous CRC calculation */
-
-extern uint32_t
-cyg_crc32_accumulate(uint32_t crc, unsigned char *s, int len);
-
-/* Ethernet FCS Algorithm */
-
-extern uint32_t
-cyg_ether_crc32(unsigned char *s, int len);
-
-/* Ethernet FCS algorithm, but accumulate the result from a previous */
-/* CRC calculation. */
-
-extern uint32_t
-cyg_ether_crc32_accumulate(uint32_t crc, unsigned char *s, int len);
-
 /* 16 bit CRC with polynomial x^16+x^12+x^5+1 */
-
 extern uint16_t cyg_crc16(const unsigned char *s, int len);
 
-#endif /* _SERVICES_CRC_CRC_H_ */
+uint32_t crc32(uint32_t, const void *, unsigned int);
+uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
+int file_crc(char *filename, unsigned long start, unsigned long size,
+	     unsigned long *crc, unsigned long *total);
+
+#endif /* __INCLUDE_CRC_H */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
