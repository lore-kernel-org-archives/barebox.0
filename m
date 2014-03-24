Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBGZ-0002QL-UR
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:44 +0000
Received: by mail-la0-f50.google.com with SMTP id y1so4158229lam.9
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:14:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 00:13:54 +0400
Message-Id: <1395692034-5821-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
References: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 8/8] MIPS: boards: rename rzx50 -> ritmix-rzx50
To: barebox@lists.infradead.org

All MIPS board use <vendor>-<model> name template save Ritmix RZX-50.
This commit fixes this inconsistency.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards.dox                           |  2 +-
 arch/mips/Makefile                                 |  2 +-
 arch/mips/boards/ritmix-rzx50/Makefile             |  1 +
 .../ritmix-rzx50/include/board/board_pbl_start.h   | 43 ++++++++++++++++++++
 .../boards/ritmix-rzx50/include/board/debug_ll.h   | 23 +++++++++++
 arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox     | 46 ++++++++++++++++++++++
 arch/mips/boards/ritmix-rzx50/serial.c             | 27 +++++++++++++
 arch/mips/boards/rzx50/Makefile                    |  1 -
 .../boards/rzx50/include/board/board_pbl_start.h   | 43 --------------------
 arch/mips/boards/rzx50/include/board/debug_ll.h    | 23 -----------
 arch/mips/boards/rzx50/rzx50.dox                   | 46 ----------------------
 arch/mips/boards/rzx50/serial.c                    | 27 -------------
 arch/mips/configs/ritmix-rzx50_defconfig           | 39 ++++++++++++++++++
 arch/mips/configs/rzx50_defconfig                  | 39 ------------------
 arch/mips/mach-xburst/mach-xburst.dox              |  2 +-
 15 files changed, 182 insertions(+), 182 deletions(-)

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 9a14aee..42bc5e6 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -59,7 +59,7 @@ MIPS type:
 @li @subpage dlink_dir_320
 @li @subpage loongson_ls1b
 @li @subpage qemu_malta
-@li @subpage rzx50
+@li @subpage ritmix-rzx50
 
 */
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 8986fcf..e3d65c8 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -85,7 +85,7 @@ machine-$(CONFIG_MACH_MIPS_LOONGSON)	:= loongson
 board-$(CONFIG_BOARD_LOONGSON_TECH_LS1B)	:= loongson-ls1b
 
 machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
-board-$(CONFIG_BOARD_RZX50)	:= rzx50
+board-$(CONFIG_BOARD_RZX50)	:= ritmix-rzx50
 
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
diff --git a/arch/mips/boards/ritmix-rzx50/Makefile b/arch/mips/boards/ritmix-rzx50/Makefile
new file mode 100644
index 0000000..31c0629
--- /dev/null
+++ b/arch/mips/boards/ritmix-rzx50/Makefile
@@ -0,0 +1 @@
+obj-y += serial.o
diff --git a/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h b/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
new file mode 100644
index 0000000..fb914d9
--- /dev/null
+++ b/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
@@ -0,0 +1,43 @@
+/*
+ * Startup Code for Ritmix RZX-50 board
+ *
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm/pbl_macros.h>
+#include <mach/debug_ll.h>
+#include <asm/pbl_nmon.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	mips_disable_interrupts
+
+	/* CPU/SoC specific setup ... */
+	/* ... absent */
+
+	debug_ll_ns16550_init
+
+	debug_ll_ns16550_outc '.'
+	debug_ll_ns16550_outnl
+
+	mips_nmon
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h b/arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h
new file mode 100644
index 0000000..7ae0e2a
--- /dev/null
+++ b/arch/mips/boards/ritmix-rzx50/include/board/debug_ll.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
+#define __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
+
+#include <mach/debug_ll_jz4750d.h>
+
+#endif  /* __INCLUDE_RZX50_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox b/arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox
new file mode 100644
index 0000000..5ec8194
--- /dev/null
+++ b/arch/mips/boards/ritmix-rzx50/ritmix-rzx50.dox
@@ -0,0 +1,46 @@
+/** @page ritmix-rzx50 Ritmix RZX-50 game console
+
+Ritmix RZX-50 is a portable game console for the Russian market.
+
+The portable game console has
+@li Ingenic JZ4755 SoC;
+@li 64 MiB SDRAM;
+@li 4 GiB microSDHC card / 4 GiB NAND type Flash Memory;
+@li RS232 serial interface (LV-TTL levels on the board!);
+@li LCD display (480x272);
+@li Video out interface;
+@li 1xUSB interface;
+@li buttons.
+
+The game console uses U-Boot 1.1.6 as bootloader.
+
+barebox-rzx50 mini-howto:
+
+1. Connect to the game console's UART (see. http://a320.emulate.su/2012/01/19/uart-na-ritmix-rzx-50/);
+
+2. Unblock U-Boot console (see. http://a320.emulate.su/2012/01/25/rzx-50-dostup-k-konsoli-u-boot/); Please note that U-Boot's Zmodem support does not work;
+
+3. Boot Ritmix linux and login;
+
+4. Upload barebox.bin via Zmodem
+@verbatim
+  # cd /tmp
+  # rz
+@endverbatim
+
+5. Write barebox to onboard flash
+@verbatim
+  # dd if=barebox.bin of=/dev/mmcblk0 seek=1048576 bs=1 count=262144
+@endverbatim
+
+6. Reboot RZX-50, next in U-Boot console start barebox:
+@verbatim
+  CETUS # msc read 0xa0800000 0x100000 0x40000; g a0800000
+@endverbatim
+
+Ritmix RZX-50 links:
+@li http://www.ritmixrussia.ru/products/252/entertainment/game/rzx-50
+@li ftp://ftp.ingenic.cn/2soc/4755/JZ4755_ds.pdf
+@li ftp://ftp.ingenic.cn/3sw/01linux/01loader/u-boot/u-boot-1.1.6-jz-20110719-r1728-add-jz4770.patch.bz2
+
+*/
diff --git a/arch/mips/boards/ritmix-rzx50/serial.c b/arch/mips/boards/ritmix-rzx50/serial.c
new file mode 100644
index 0000000..f1e8da0
--- /dev/null
+++ b/arch/mips/boards/ritmix-rzx50/serial.c
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+
+static int rzx50_hostname_init(void)
+{
+	barebox_set_hostname("rzx50");
+
+	return 0;
+}
+console_initcall(rzx50_hostname_init);
diff --git a/arch/mips/boards/rzx50/Makefile b/arch/mips/boards/rzx50/Makefile
deleted file mode 100644
index 31c0629..0000000
--- a/arch/mips/boards/rzx50/Makefile
+++ /dev/null
@@ -1 +0,0 @@
-obj-y += serial.o
diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
deleted file mode 100644
index fb914d9..0000000
--- a/arch/mips/boards/rzx50/include/board/board_pbl_start.h
+++ /dev/null
@@ -1,43 +0,0 @@
-/*
- * Startup Code for Ritmix RZX-50 board
- *
- * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- */
-
-#include <asm/pbl_macros.h>
-#include <mach/debug_ll.h>
-#include <asm/pbl_nmon.h>
-
-	.macro	board_pbl_start
-	.set	push
-	.set	noreorder
-
-	mips_disable_interrupts
-
-	/* CPU/SoC specific setup ... */
-	/* ... absent */
-
-	debug_ll_ns16550_init
-
-	debug_ll_ns16550_outc '.'
-	debug_ll_ns16550_outnl
-
-	mips_nmon
-
-	copy_to_link_location	pbl_start
-
-	.set	pop
-	.endm
diff --git a/arch/mips/boards/rzx50/include/board/debug_ll.h b/arch/mips/boards/rzx50/include/board/debug_ll.h
deleted file mode 100644
index 7ae0e2a..0000000
--- a/arch/mips/boards/rzx50/include/board/debug_ll.h
+++ /dev/null
@@ -1,23 +0,0 @@
-/*
- * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#ifndef __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
-#define __INCLUDE_RZX50_BOARD_DEBUG_LL_H__
-
-#include <mach/debug_ll_jz4750d.h>
-
-#endif  /* __INCLUDE_RZX50_BOARD_DEBUG_LL_H__ */
diff --git a/arch/mips/boards/rzx50/rzx50.dox b/arch/mips/boards/rzx50/rzx50.dox
deleted file mode 100644
index 963473c..0000000
--- a/arch/mips/boards/rzx50/rzx50.dox
+++ /dev/null
@@ -1,46 +0,0 @@
-/** @page rzx50 Ritmix RZX-50 game console
-
-Ritmix RZX-50 is a portable game console for the Russian market.
-
-The portable game console has
-@li Ingenic JZ4755 SoC;
-@li 64 MiB SDRAM;
-@li 4 GiB microSDHC card / 4 GiB NAND type Flash Memory;
-@li RS232 serial interface (LV-TTL levels on the board!);
-@li LCD display (480x272);
-@li Video out interface;
-@li 1xUSB interface;
-@li buttons.
-
-The game console uses U-Boot 1.1.6 as bootloader.
-
-barebox-rzx50 mini-howto:
-
-1. Connect to the game console's UART (see. http://a320.emulate.su/2012/01/19/uart-na-ritmix-rzx-50/);
-
-2. Unblock U-Boot console (see. http://a320.emulate.su/2012/01/25/rzx-50-dostup-k-konsoli-u-boot/); Please note that U-Boot's Zmodem support does not work;
-
-3. Boot Ritmix linux and login;
-
-4. Upload barebox.bin via Zmodem
-@verbatim
-  # cd /tmp
-  # rz
-@endverbatim
-
-5. Write barebox to onboard flash
-@verbatim
-  # dd if=barebox.bin of=/dev/mmcblk0 seek=1048576 bs=1 count=262144
-@endverbatim
-
-6. Reboot RZX-50, next in U-Boot console start barebox:
-@verbatim
-  CETUS # msc read 0xa0800000 0x100000 0x40000; g a0800000
-@endverbatim
-
-Ritmix RZX-50 links:
-@li http://www.ritmixrussia.ru/products/252/entertainment/game/rzx-50
-@li ftp://ftp.ingenic.cn/2soc/4755/JZ4755_ds.pdf
-@li ftp://ftp.ingenic.cn/3sw/01linux/01loader/u-boot/u-boot-1.1.6-jz-20110719-r1728-add-jz4770.patch.bz2
-
-*/
diff --git a/arch/mips/boards/rzx50/serial.c b/arch/mips/boards/rzx50/serial.c
deleted file mode 100644
index f1e8da0..0000000
--- a/arch/mips/boards/rzx50/serial.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <init.h>
-
-static int rzx50_hostname_init(void)
-{
-	barebox_set_hostname("rzx50");
-
-	return 0;
-}
-console_initcall(rzx50_hostname_init);
diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
new file mode 100644
index 0000000..7691bae
--- /dev/null
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -0,0 +1,39 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="rzx50"
+CONFIG_MACH_MIPS_XBURST=y
+CONFIG_JZ4750D_DEBUG_LL_UART1=y
+CONFIG_PBL_IMAGE=y
+CONFIG_BAUDRATE=57600
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_OFDEVICE=y
+# CONFIG_SPI is not set
+CONFIG_SHA1=y
+CONFIG_SHA224=y
+CONFIG_SHA256=y
diff --git a/arch/mips/configs/rzx50_defconfig b/arch/mips/configs/rzx50_defconfig
deleted file mode 100644
index 7691bae..0000000
--- a/arch/mips/configs/rzx50_defconfig
+++ /dev/null
@@ -1,39 +0,0 @@
-CONFIG_BUILTIN_DTB=y
-CONFIG_BUILTIN_DTB_NAME="rzx50"
-CONFIG_MACH_MIPS_XBURST=y
-CONFIG_JZ4750D_DEBUG_LL_UART1=y
-CONFIG_PBL_IMAGE=y
-CONFIG_BAUDRATE=57600
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_HUSH_GETOPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_DEBUG_LL=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_LOADS=y
-CONFIG_CMD_SAVES=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_OFDEVICE=y
-# CONFIG_SPI is not set
-CONFIG_SHA1=y
-CONFIG_SHA224=y
-CONFIG_SHA256=y
diff --git a/arch/mips/mach-xburst/mach-xburst.dox b/arch/mips/mach-xburst/mach-xburst.dox
index a5e524d..052c05e 100644
--- a/arch/mips/mach-xburst/mach-xburst.dox
+++ b/arch/mips/mach-xburst/mach-xburst.dox
@@ -2,6 +2,6 @@
 
 @section xburst_boards XBurst-based boards
 
-@li @subpage rzx50
+@li @subpage ritmix-rzx50
 
 */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
