Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DMa-0007Vj-3h
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 12:13:02 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 13 Feb 2020 13:12:50 +0100
Message-Id: <20200213121254.17491-4-rhi@pengutronix.de>
In-Reply-To: <20200213121254.17491-1-rhi@pengutronix.de>
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200213121254.17491-1-rhi@pengutronix.de>
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
Subject: [PATCH v3 3/7] include: add SPDX GPL-2.0-only license tags for files
 without licensing information
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

According to our /README, GPL-2.0-only applies for the whole project
except noted otherwise.

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/abort.h             | 1 +
 include/bbu.h               | 1 +
 include/block.h             | 1 +
 include/blspec.h            | 1 +
 include/boot.h              | 1 +
 include/bootchooser.h       | 1 +
 include/bootm.h             | 1 +
 include/bootsource.h        | 1 +
 include/bunzip2.h           | 1 +
 include/byteorder.h         | 1 +
 include/cache.h             | 1 +
 include/clock.h             | 1 +
 include/cmdlinepart.h       | 1 +
 include/complete.h          | 1 +
 include/console_countdown.h | 1 +
 include/crc.h               | 1 +
 include/crc7.h              | 1 +
 include/dirent.h            | 1 +
 include/dma-dir.h           | 1 +
 include/efi.h               | 1 +
 include/elf.h               | 1 +
 include/envfs.h             | 1 +
 include/errno.h             | 1 +
 include/fb.h                | 1 +
 include/fcntl.h             | 1 +
 include/fdt.h               | 1 +
 include/file-list.h         | 1 +
 include/filetype.h          | 1 +
 include/fs.h                | 1 +
 include/globalvar.h         | 1 +
 include/gpio.h              | 1 +
 include/gpio_keys.h         | 1 +
 include/gunzip.h            | 1 +
 include/image-metadata.h    | 1 +
 include/init.h              | 1 +
 include/io.h                | 1 +
 include/ioctl.h             | 1 +
 include/kallsyms.h          | 1 +
 include/kgdb.h              | 1 +
 include/led.h               | 1 +
 include/libbb.h             | 2 +-
 include/libfile.h           | 1 +
 include/libgen.h            | 1 +
 include/lzo.h               | 1 +
 include/magicvar.h          | 1 +
 include/malloc.h            | 1 +
 include/math.h              | 1 +
 include/memory.h            | 1 +
 include/memtest.h           | 1 +
 include/mmu.h               | 1 +
 include/module.h            | 1 +
 include/nand.h              | 1 +
 include/notifier.h          | 1 +
 include/of.h                | 1 +
 include/of_address.h        | 1 +
 include/of_device.h         | 1 +
 include/of_pci.h            | 1 +
 include/param.h             | 1 +
 include/parseopt.h          | 1 +
 include/partition.h         | 1 +
 include/phy-id-list.h       | 1 +
 include/pinctrl.h           | 1 +
 include/poweroff.h          | 1 +
 include/printk.h            | 1 +
 include/progress.h          | 1 +
 include/pwm.h               | 1 +
 include/qsort.h             | 1 +
 include/ratp.h              | 1 +
 include/ratp_bb.h           | 1 +
 include/readkey.h           | 1 +
 include/regmap.h            | 1 +
 include/regulator.h         | 1 +
 include/restart.h           | 1 +
 include/serdev.h            | 1 +
 include/sntp.h              | 1 +
 include/state.h             | 1 +
 include/stdio.h             | 1 +
 include/stdlib.h            | 1 +
 include/string.h            | 1 +
 include/stringlist.h        | 1 +
 include/twl6030_pwrbtn.h    | 1 +
 include/types.h             | 1 +
 include/ubiformat.h         | 1 +
 include/uncompress.h        | 1 +
 include/unistd.h            | 1 +
 include/usb_dfu_trailer.h   | 1 +
 include/wchar.h             | 1 +
 include/xfuncs.h            | 1 +
 88 files changed, 88 insertions(+), 1 deletion(-)

diff --git a/include/abort.h b/include/abort.h
index 89ee549e3452..039500b04d0b 100644
--- a/include/abort.h
+++ b/include/abort.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __ABORT_H
 #define __ABORT_H
 
diff --git a/include/bbu.h b/include/bbu.h
index 9da6785d2e67..3b9d2f4bf151 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_BBU_H
 #define __INCLUDE_BBU_H
 
diff --git a/include/block.h b/include/block.h
index 91377679b0d4..bd87efdc62bc 100644
--- a/include/block.h
+++ b/include/block.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BLOCK_H
 #define __BLOCK_H
 
diff --git a/include/blspec.h b/include/blspec.h
index 7d911f030bfa..37076cd47c97 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LOADER_H__
 #define __LOADER_H__
 
diff --git a/include/boot.h b/include/boot.h
index 4f7612ab803d..4054c27d935a 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOT_H
 #define __BOOT_H
 
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 7822c01459e4..2cfd5b126ab9 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOTCHOOSER_H
 #define __BOOTCHOOSER_H
 
diff --git a/include/bootm.h b/include/bootm.h
index a041aa35b9a0..7782de7a476d 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOTM_H
 #define __BOOTM_H
 
diff --git a/include/bootsource.h b/include/bootsource.h
index 92f7f27cd4fa..32295ddd96ab 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOTSOURCE_H__
 #define __BOOTSOURCE_H__
 
diff --git a/include/bunzip2.h b/include/bunzip2.h
index 115272137a9c..55404ff846f6 100644
--- a/include/bunzip2.h
+++ b/include/bunzip2.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef DECOMPRESS_BUNZIP2_H
 #define DECOMPRESS_BUNZIP2_H
 
diff --git a/include/byteorder.h b/include/byteorder.h
index 4b255a5fab9b..c3cac85013ec 100644
--- a/include/byteorder.h
+++ b/include/byteorder.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BYTEORDER_H__
 #define __BYTEORDER_H__
 
diff --git a/include/cache.h b/include/cache.h
index 23841dcd06a2..37e008794bf2 100644
--- a/include/cache.h
+++ b/include/cache.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __CACHE_H
 #define __CACHE_H
 
diff --git a/include/clock.h b/include/clock.h
index 211748f3a0b9..d681bf630e88 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef CLOCK_H
 #define CLOCK_H
 
diff --git a/include/cmdlinepart.h b/include/cmdlinepart.h
index bf8cdfa62a6e..9f5bdf610a11 100644
--- a/include/cmdlinepart.h
+++ b/include/cmdlinepart.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __CMD_LINE_PART_H
 #define __CMD_LINE_PART_H
 
diff --git a/include/complete.h b/include/complete.h
index 491ba66cb442..763d256bf460 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __COMPLETE_
 #define __COMPLETE_
 
diff --git a/include/console_countdown.h b/include/console_countdown.h
index 88cadf11ec9b..df8da71e8bee 100644
--- a/include/console_countdown.h
+++ b/include/console_countdown.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __CONSOLE_COUNTDOWN_H
 #define __CONSOLE_COUNTDOWN_H
 
diff --git a/include/crc.h b/include/crc.h
index a67388f732e0..eb972705c21a 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_CRC_H
 #define __INCLUDE_CRC_H
 
diff --git a/include/crc7.h b/include/crc7.h
index 0c41cc341f09..27d2dae4223b 100644
--- a/include/crc7.h
+++ b/include/crc7.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _LINUX_CRC7_H
 #define _LINUX_CRC7_H
 #include <common.h>
diff --git a/include/dirent.h b/include/dirent.h
index 1df5d904520d..d7b5e78b2728 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __DIRENT_H
 #define __DIRENT_H
 
diff --git a/include/dma-dir.h b/include/dma-dir.h
index 970764c5b3c9..d3b1a27b4fbd 100644
--- a/include/dma-dir.h
+++ b/include/dma-dir.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __DMA_DIR_H
 #define __DMA_DIR_H
 
diff --git a/include/efi.h b/include/efi.h
index 43c05939513d..5698a8414586 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _LINUX_EFI_H
 #define _LINUX_EFI_H
 
diff --git a/include/elf.h b/include/elf.h
index 44be07f73a64..113728f08a28 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _LINUX_ELF_H
 #define _LINUX_ELF_H
 
diff --git a/include/envfs.h b/include/envfs.h
index c8fc3759c606..d4e2c6110e65 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _ENVFS_H
 #define _ENVFS_H
 
diff --git a/include/errno.h b/include/errno.h
index 496ccab0ee6d..50f00de5d636 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __ERRNO_H
 #define __ERRNO_H
 
diff --git a/include/fb.h b/include/fb.h
index 271b939968a2..e17d07ae0cd8 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FB_H
 #define __FB_H
 
diff --git a/include/fcntl.h b/include/fcntl.h
index 98020bdfb160..2e7c0eed3479 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FCNTL_H
 #define __FCNTL_H
 
diff --git a/include/fdt.h b/include/fdt.h
index 38a2d27b0207..232514c894c3 100644
--- a/include/fdt.h
+++ b/include/fdt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _FDT_H
 #define _FDT_H
 
diff --git a/include/file-list.h b/include/file-list.h
index 404d8d64bb4e..9a9edfa378f3 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FILE_LIST
 #define __FILE_LIST
 
diff --git a/include/filetype.h b/include/filetype.h
index db95fdaa0a5f..c3a5bdfbbea3 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FILE_TYPE_H
 #define __FILE_TYPE_H
 
diff --git a/include/fs.h b/include/fs.h
index 38debfc41beb..04ec1329e106 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FS_H
 #define __FS_H
 
diff --git a/include/globalvar.h b/include/globalvar.h
index 67391e2042f9..fc85e93e1431 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __GLOBALVAR_H
 #define __GLOBALVAR_H
 
diff --git a/include/gpio.h b/include/gpio.h
index 0c0c0337e01d..98c5b93ba2e6 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __GPIO_H
 #define __GPIO_H
 
diff --git a/include/gpio_keys.h b/include/gpio_keys.h
index f4a22e16dbc8..f12bed2a0b43 100644
--- a/include/gpio_keys.h
+++ b/include/gpio_keys.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _GPIO_KEYS_H
 #define _GPIO_KEYS_H
 
diff --git a/include/gunzip.h b/include/gunzip.h
index b9018941d15b..0a959d5eb7a5 100644
--- a/include/gunzip.h
+++ b/include/gunzip.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef GUNZIP_H
 #define GUNZIP_H
 
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 5904d95acd37..330ca3588a0c 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_IMAGE_METADTA_H
 #define __INCLUDE_IMAGE_METADTA_H
 
diff --git a/include/init.h b/include/init.h
index 527d49afecdb..d1cef14b0765 100644
--- a/include/init.h
+++ b/include/init.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _INIT_H
 #define _INIT_H
 
diff --git a/include/io.h b/include/io.h
index 8eb56b061f12..913002072240 100644
--- a/include/io.h
+++ b/include/io.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __IO_H
 #define __IO_H
 
diff --git a/include/ioctl.h b/include/ioctl.h
index 1ade20f90597..3290a52519e8 100644
--- a/include/ioctl.h
+++ b/include/ioctl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __IOCTL_H
 #define __IOCTL_H
 
diff --git a/include/kallsyms.h b/include/kallsyms.h
index 69b84d2c6c00..e0b3ff7cd503 100644
--- a/include/kallsyms.h
+++ b/include/kallsyms.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __KALLSYMS_H
 #define __KALLSYMS_H
 
diff --git a/include/kgdb.h b/include/kgdb.h
index f543cd6e1833..1f23833f92f1 100644
--- a/include/kgdb.h
+++ b/include/kgdb.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __KGDB_H__
 #define __KGDB_H__
 
diff --git a/include/led.h b/include/led.h
index 0ce857129d5b..6b6aff922a86 100644
--- a/include/led.h
+++ b/include/led.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LED_H
 #define __LED_H
 
diff --git a/include/libbb.h b/include/libbb.h
index d05c19063793..a3a13b41cea8 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -1,4 +1,4 @@
-
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LIBBB_H
 #define __LIBBB_H
 
diff --git a/include/libfile.h b/include/libfile.h
index f1d695187790..350ddddf701d 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LIBFILE_H
 #define __LIBFILE_H
 
diff --git a/include/libgen.h b/include/libgen.h
index 71f06eb6f665..6c0f039efaa2 100644
--- a/include/libgen.h
+++ b/include/libgen.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LIBGEN_H
 #define __LIBGEN_H
 
diff --git a/include/lzo.h b/include/lzo.h
index 6c34be13efd8..f46f38b0edcf 100644
--- a/include/lzo.h
+++ b/include/lzo.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LZO_H__
 #define __LZO_H__
 /*
diff --git a/include/magicvar.h b/include/magicvar.h
index bb5bd2591fb2..9fb89a84cca3 100644
--- a/include/magicvar.h
+++ b/include/magicvar.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MAGIC_VARS_H
 #define __MAGIC_VARS_H
 
diff --git a/include/malloc.h b/include/malloc.h
index 0d3c9e97a0b9..971fc4058bc6 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MALLOC_H
 #define __MALLOC_H
 
diff --git a/include/math.h b/include/math.h
index 5648e3f9c120..1e59a8479ef5 100644
--- a/include/math.h
+++ b/include/math.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /* math.h - interface to shell math "library" -- this allows shells to share
  *          the implementation of arithmetic $((...)) expansions.
  *
diff --git a/include/memory.h b/include/memory.h
index 73ee7661ef3e..906d9f7b2689 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MEM_MALLOC_H
 #define __MEM_MALLOC_H
 
diff --git a/include/memtest.h b/include/memtest.h
index 0100a6c58cd9..df0a391cc3c2 100644
--- a/include/memtest.h
+++ b/include/memtest.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MEMTEST_H
 #define __MEMTEST_H
 
diff --git a/include/mmu.h b/include/mmu.h
index 66b246f6d270..2e23853df353 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MMU_H
 #define __MMU_H
 
diff --git a/include/module.h b/include/module.h
index 460a34fe2b63..abf740a789b7 100644
--- a/include/module.h
+++ b/include/module.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MODULE_H
 #define __MODULE_H
 
diff --git a/include/nand.h b/include/nand.h
index fb3b5a108810..f0114a227d45 100644
--- a/include/nand.h
+++ b/include/nand.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __NAND_H__
 #define __NAND_H__
 
diff --git a/include/notifier.h b/include/notifier.h
index e0df3e666bb5..432b66c4ca5a 100644
--- a/include/notifier.h
+++ b/include/notifier.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __NOTIFIER_H
 #define __NOTIFIER_H
 
diff --git a/include/of.h b/include/of.h
index 67601ce80cad..8d6c018b73ec 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_H
 #define __OF_H
 
diff --git a/include/of_address.h b/include/of_address.h
index 350ecaec827a..66117b1fa7f8 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_ADDRESS_H
 #define __OF_ADDRESS_H
 
diff --git a/include/of_device.h b/include/of_device.h
index 54410ad12f55..244f5fcbbb11 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_DEVICE_H
 #define __OF_DEVICE_H
 
diff --git a/include/of_pci.h b/include/of_pci.h
index c95cb0135ae0..c78715093660 100644
--- a/include/of_pci.h
+++ b/include/of_pci.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_PCI_H
 #define __OF_PCI_H
 
diff --git a/include/param.h b/include/param.h
index d75f50ea3e60..2d68338bb30b 100644
--- a/include/param.h
+++ b/include/param.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef PARAM_H
 #define PARAM_H
 
diff --git a/include/parseopt.h b/include/parseopt.h
index 273a371ac342..5a40bdc219fe 100644
--- a/include/parseopt.h
+++ b/include/parseopt.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PARSEOPT_H__
 #define __PARSEOPT_H__
 void parseopt_llu_suffix(const char *options, const char *opt,
diff --git a/include/partition.h b/include/partition.h
index 32570530eb99..373134afad25 100644
--- a/include/partition.h
+++ b/include/partition.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PARTITION_H
 #define __PARTITION_H
 
diff --git a/include/phy-id-list.h b/include/phy-id-list.h
index a6070a0248f5..f770c775b8fe 100644
--- a/include/phy-id-list.h
+++ b/include/phy-id-list.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * List of all Etherenet PHY IDs that is not found in any .h files in
  * include/linux
diff --git a/include/pinctrl.h b/include/pinctrl.h
index 7d8716996dab..0fd7f491189c 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef PINCTRL_H
 #define PINCTRL_H
 
diff --git a/include/poweroff.h b/include/poweroff.h
index ae9557db5d63..217b68cdf966 100644
--- a/include/poweroff.h
+++ b/include/poweroff.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_POWEROFF_H
 #define __INCLUDE_POWEROFF_H
 
diff --git a/include/printk.h b/include/printk.h
index b0d5d09f835d..6a027175abfe 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PRINTK_H
 #define __PRINTK_H
 
diff --git a/include/progress.h b/include/progress.h
index 5c4dd1e77549..75aa9c4f8616 100644
--- a/include/progress.h
+++ b/include/progress.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PROGRSS_H
 #define __PROGRSS_H
 
diff --git a/include/pwm.h b/include/pwm.h
index 911c760839fa..dcc81af867e8 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PWM_H
 #define __PWM_H
 
diff --git a/include/qsort.h b/include/qsort.h
index d279dc281075..f8d889ea1ea6 100644
--- a/include/qsort.h
+++ b/include/qsort.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __QSORT_H
 #define __QSORT_H
 
diff --git a/include/ratp.h b/include/ratp.h
index d2a81923579d..effa288b4220 100644
--- a/include/ratp.h
+++ b/include/ratp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __RATP_H
 #define __RATP_H
 
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index b6699979b6b0..a4f28c642ca0 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __RATP_BB_H
 #define __RATP_BB_H
 
diff --git a/include/readkey.h b/include/readkey.h
index ed1cd1542d6f..fdb96426e082 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef READKEY_H
 #define READKEY_H
 
diff --git a/include/regmap.h b/include/regmap.h
index 09b7b57d52f3..8528f810797c 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __REGMAP_H
 #define __REGMAP_H
 
diff --git a/include/regulator.h b/include/regulator.h
index a445c5c3d10a..d01535df5207 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __REGULATOR_H
 #define __REGULATOR_H
 
diff --git a/include/restart.h b/include/restart.h
index 79b57c8e11bf..7ec0910e9404 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_RESTART_H
 #define __INCLUDE_RESTART_H
 
diff --git a/include/serdev.h b/include/serdev.h
index 29030538e5e7..0d020b8e82c2 100644
--- a/include/serdev.h
+++ b/include/serdev.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _SERDEV_H_
 #define _SERDEV_H_
 
diff --git a/include/sntp.h b/include/sntp.h
index bfcfcfa8c837..05cad129cd1d 100644
--- a/include/sntp.h
+++ b/include/sntp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __SNTP_H
 #define __SNTP_H
 
diff --git a/include/state.h b/include/state.h
index d98b781c2089..be1b592576c1 100644
--- a/include/state.h
+++ b/include/state.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STATE_H
 #define __STATE_H
 
diff --git a/include/stdio.h b/include/stdio.h
index 46e277889d68..1cb11e88deea 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STDIO_H
 #define __STDIO_H
 
diff --git a/include/stdlib.h b/include/stdlib.h
index ee3f2299688d..d4056087243d 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STDLIB_H
 #define __STDLIB_H
 
diff --git a/include/string.h b/include/string.h
index 8c63f22491aa..120a613d4688 100644
--- a/include/string.h
+++ b/include/string.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STRING_H
 #define __STRING_H
 
diff --git a/include/stringlist.h b/include/stringlist.h
index e85500a99485..5cd452ca5fa4 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STRINGLIST_H
 #define __STRINGLIST_H
 
diff --git a/include/twl6030_pwrbtn.h b/include/twl6030_pwrbtn.h
index c4e13d1f1de0..4c8e16625638 100644
--- a/include/twl6030_pwrbtn.h
+++ b/include/twl6030_pwrbtn.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _TWL6030_PWRBTN_H
 #define _TWL6030_PWRBTN_H
 
diff --git a/include/types.h b/include/types.h
index 0bfe3b9a0b7e..a6739394e0c8 100644
--- a/include/types.h
+++ b/include/types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __TYPES_H
 #define __TYPES_H
 
diff --git a/include/ubiformat.h b/include/ubiformat.h
index 8a7a16ac18d8..eca62ae6dba4 100644
--- a/include/ubiformat.h
+++ b/include/ubiformat.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __UBIFORMAT_H
 #define __UBIFORMAT_H
 
diff --git a/include/uncompress.h b/include/uncompress.h
index d146c9076809..4bdb03d4f5b6 100644
--- a/include/uncompress.h
+++ b/include/uncompress.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __UNCOMPRESS_H
 #define __UNCOMPRESS_H
 
diff --git a/include/unistd.h b/include/unistd.h
index f392e6dd6cbd..06ce3558099f 100644
--- a/include/unistd.h
+++ b/include/unistd.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __UNISTD_H
 #define __UNISTD_H
 
diff --git a/include/usb_dfu_trailer.h b/include/usb_dfu_trailer.h
index 2cf66a590c43..64b84072755d 100644
--- a/include/usb_dfu_trailer.h
+++ b/include/usb_dfu_trailer.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _USB_DFU_TRAILER_H
 #define _USB_DFU_TRAILER_H
 
diff --git a/include/wchar.h b/include/wchar.h
index adb4f373e950..b601cc62079b 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __WCHAR_H
 #define __WCHAR_H
 
diff --git a/include/xfuncs.h b/include/xfuncs.h
index e3f120a04092..a9132d378722 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __XFUNCS_H
 #define __XFUNCS_H
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
