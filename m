Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfzqL-0001Jb-78
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 21:15:55 +0000
Received: from cpe78cd8ec96008-cm78cd8ec96005.cpe.net.cable.rogers.com
 ([72.137.5.185]:42113 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TfzqJ-0004iz-DR
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 16:15:51 -0500
Date: Tue, 4 Dec 2012 16:15:48 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212041613380.5716@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Remove old, inaccurate "FileName:" cruft from ARM files
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


In addition, collapse adjacent comment blocks into one and remove
extraneous blank lines.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  pretty much based on what nishanth suggested, compile tested but
feel free to tweak.

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index ec26528..de8206b 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -23,8 +23,6 @@
 /**
  * @page ti_beagle Texas Instruments Beagle Board
  *
- * FileName: arch/arm/boards/omap/board-beagle.c
- *
  * Beagle Board from Texas Instruments as described here:
  * http://www.beagleboard.org
  *
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 692cf9a..8b8e0b2 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -23,8 +23,6 @@
 /**
  * @page ti_SDP3430 Texas Instruments SDP3430
  *
- * FileName: arch/arm/boards/omap/board-sdp343x.c
- *
  * SDP3430 from Texas Instruments as described here:
  * http://www.ti.com/omap3430_devplatform
  * This file provides initialization in two stages:
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 7d4a87f..d18cf39 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -2,8 +2,6 @@
  * @file
  * @brief Board Initialization routines for OMAP3EVM.
  *
- * FileName: arch/arm/boards/omap/board-omap3evm.c
- *
  * This board is based on OMAP3530.
  * More on OMAP3530 (including documentation can be found here):
  * http://focus.ti.com/docs/prod/folders/print/omap3530.html
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
index 6652242..e35db18 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
@@ -2,8 +2,6 @@
  * @file
  * @brief Board Initialization routines for the phyCARD-A-L1
  *
- * FileName: arch/arm/boards/phycard-a-l1/pca-a-l1.c
- *
  * This board is based on OMAP3530.
  * More on OMAP3530 (including documentation can be found here):
  * http://focus.ti.com/docs/prod/folders/print/omap3530.html
@@ -22,9 +20,7 @@
  * @li serial @ref serial_ns16550.c driver device definition
  *
  * Originally from arch/arm/boards/omap/board-beagle.c
- */
-
-/*
+ *
  * Copyright (C) 2011 Phytec Messtechnik GmbH - http://www.phytec.de/
  * Juergen Kilb <j.kilb@phytec.de>
  *
@@ -40,7 +36,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  * GNU General Public License for more details.
- *
  */

 #include <common.h>
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.h b/arch/arm/boards/phycard-a-l1/pca-a-l1.h
index 0441a00..f6f8996 100644
--- a/arch/arm/boards/phycard-a-l1/pca-a-l1.h
+++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.h
@@ -2,11 +2,8 @@
  * @file
  * @brief exported generic APIs which various board files implement
  *
- * FileName: arch/arm/boards/phycard-a-l1/board.h
- *
  * This file will not contain any board specific implementations.
- */
-/*
+ *
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Raghavendra KH <r-khandenahally@ti.com>
@@ -20,8 +17,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #ifndef __BOARD_OMAP_H_
 #define __BOARD_OMAP_H_

diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
index 129f91a..42cb1b4 100644
--- a/arch/arm/mach-omap/devices-gpmc-nand.c
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -2,10 +2,6 @@
  * @file
  * @brief GPMC specific NAND devices
  *
- * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
- *
- */
-/*
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -19,8 +15,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #include <common.h>
 #include <console.h>
 #include <init.h>
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 73d8c44..4cfb7cf 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -2,12 +2,8 @@
  * @file
  * @brief Provide Generic GPMC configuration option
  *
- * FileName: arch/arm/mach-omap/gpmc.c
- *
  * This file contains the generic GPMC implementation
  *
- */
-/*
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -21,8 +17,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #include <common.h>
 #include <clock.h>
 #include <init.h>
diff --git a/arch/arm/mach-omap/include/mach/clocks.h b/arch/arm/mach-omap/include/mach/clocks.h
index b2b0c99..cbadec7 100644
--- a/arch/arm/mach-omap/include/mach/clocks.h
+++ b/arch/arm/mach-omap/include/mach/clocks.h
@@ -2,13 +2,10 @@
  * @file
  * @brief Generic Clock wrapper header.
  *
- * FileName: include/asm-arm/arch-omap/clocks.h
- *
  * This includes each of the architecture Clock definitions under it.
  *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Richard Woodruff <r-woodruff2@ti.com>
@@ -22,8 +19,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #ifndef __OMAP_CLOCKS_H_
 #define __OMAP_CLOCKS_H_

diff --git a/arch/arm/mach-omap/include/mach/control.h b/arch/arm/mach-omap/include/mach/control.h
index 18064ba..e03d8d5 100644
--- a/arch/arm/mach-omap/include/mach/control.h
+++ b/arch/arm/mach-omap/include/mach/control.h
@@ -2,13 +2,10 @@
  * @file
  * @brief This file contains the Control register defines
  *
- * FileName: include/asm-arm/arch-omap/control.h
- *
  * Originally from Linux kernel:
  * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.0b.tar.gz
  * include/asm-arm/arch-omap/omap34xx.h
- */
-/*
+ *
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -25,7 +22,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #ifndef __ASM_ARCH_OMAP_CONTROL_H
diff --git a/arch/arm/mach-omap/include/mach/gpmc.h b/arch/arm/mach-omap/include/mach/gpmc.h
index 95c02db..957ff55 100644
--- a/arch/arm/mach-omap/include/mach/gpmc.h
+++ b/arch/arm/mach-omap/include/mach/gpmc.h
@@ -2,15 +2,11 @@
  * @file
  * @brief This file contains the GPMC's generic definitions
  *
- * FileName: include/asm-arm/arch-omap/gpmc.h
- *
  * OMAP's General Purpose Memory Controller(GPMC) provides features
  * allowing us to communicate with memory devices such as NOR, NAND,
  * OneNAND, SRAM etc.. This file defines certain generic parameters
  * allowing us to configure the same painlessly.
  *
- */
-/*
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -31,7 +27,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #ifndef __ASM_ARCH_OMAP_GPMC_H
diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index 582fb36..4a93465 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -2,14 +2,10 @@
  * @file
  * @brief This file contains exported structure for NAND
  *
- * FileName: include/asm-arm/arch-omap/gpmc_nand.h
- *
  * OMAP's General Purpose Memory Controller (GPMC) has a NAND controller
  * embedded. this file provides the platform data structure required to
  * hook on to it.
  *
- */
-/*
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
diff --git a/arch/arm/mach-omap/include/mach/intc.h b/arch/arm/mach-omap/include/mach/intc.h
index 950f714..6c53528 100644
--- a/arch/arm/mach-omap/include/mach/intc.h
+++ b/arch/arm/mach-omap/include/mach/intc.h
@@ -2,13 +2,10 @@
  * @file
  * @brief This file contains the Interrupt controller register defines
  *
- * FileName: include/asm-arm/arch-omap/intc.h
- *
  * Originally from Linux kernel:
  * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.0b.tar.gz
  * include/asm-arm/arch-omap/omap34xx.h
- */
-/*
+ *
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -25,7 +22,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #ifndef __ASM_ARCH_OMAP_INTC_H
diff --git a/arch/arm/mach-omap/include/mach/omap3-clock.h b/arch/arm/mach-omap/include/mach/omap3-clock.h
index 4f5a1d1..00ce6a5 100644
--- a/arch/arm/mach-omap/include/mach/omap3-clock.h
+++ b/arch/arm/mach-omap/include/mach/omap3-clock.h
@@ -2,12 +2,8 @@
  * @file
  * @brief Contains the PRM and CM definitions
  *
- * FileName: include/asm-arm/arch-omap/omap3-clock.h
- *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
  *
- */
-/*
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Richard Woodruff <r-woodruff2@ti.com>
@@ -21,8 +17,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #ifndef _OMAP343X_CLOCKS_H_
 #define _OMAP343X_CLOCKS_H_

diff --git a/arch/arm/mach-omap/include/mach/omap3-mux.h b/arch/arm/mach-omap/include/mach/omap3-mux.h
index 133bcf8..d6fb9c3 100644
--- a/arch/arm/mach-omap/include/mach/omap3-mux.h
+++ b/arch/arm/mach-omap/include/mach/omap3-mux.h
@@ -2,15 +2,12 @@
  * @file
  * @brief Mux Configuration Register defines for OMAP3
  *
- * FileName: include/asm-arm/arch-omap/omap3-mux.h
- *
  * This file defines the various Pin Mux registers
  * @see include/asm-arm/arch-omap/control.h
  * The @ref MUX_VAL macro uses the defines from this file
  *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Syed Mohammed Khasim <x0khasim@ti.com>
@@ -24,8 +21,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #ifndef _ASM_ARCH_OMAP3_MUX_H_
 #define _ASM_ARCH_OMAP3_MUX_H_

diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 33e449b..a655729 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -4,15 +4,12 @@
  * the TI OMAP34XX. For more info on OMAP34XX,
  * See http://focus.ti.com/pdfs/wtbu/swpu114g.pdf
  *
- * FileName: include/asm-arm/arch-omap/omap3-silicon.h
- *
  * OMAP34XX base address defines go here.
  *
  * Originally from Linux kernel:
  * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.0b.tar.gz
  * include/asm-arm/arch-omap/omap3-silicon.h
- */
-/*
+ *
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -29,7 +26,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #ifndef __ASM_ARCH_OMAP3_H
diff --git a/arch/arm/mach-omap/include/mach/omap3-smx.h b/arch/arm/mach-omap/include/mach/omap3-smx.h
index 436e9af..f7fa4d2 100644
--- a/arch/arm/mach-omap/include/mach/omap3-smx.h
+++ b/arch/arm/mach-omap/include/mach/omap3-smx.h
@@ -2,13 +2,10 @@
  * @file
  * @brief This file contains the SMX specific register definitions
  *
- * FileName: include/asm-arm/arch-omap/omap3-smx.h
- *
  * Originally from Linux kernel:
  * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.0b.tar.gz
  * include/asm-arm/arch-omap/omap34xx.h
- */
-/*
+ *
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -25,7 +22,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #ifndef __ASM_ARCH_OMAP_SMX_H
diff --git a/arch/arm/mach-omap/include/mach/omap_hsmmc.h b/arch/arm/mach-omap/include/mach/omap_hsmmc.h
index a15f8e6..2055ccc 100644
--- a/arch/arm/mach-omap/include/mach/omap_hsmmc.h
+++ b/arch/arm/mach-omap/include/mach/omap_hsmmc.h
@@ -2,13 +2,10 @@
  * @file
  * @brief This file contains exported structure for OMAP hsmmc
  *
- * FileName: include/asm-arm/arch-omap/omap_hsmmc.h
- *
  * OMAP3 and OMAP4 has a MMC/SD controller embedded.
  * This file provides the platform data structure required to
  * addapt to platform specialities.
- */
-/*
+ *
  * (C) Copyright 2011
  * Phytec Messtechnik GmbH, <www.phytec.de>
  * Juergen Kilb <j.kilb@phytec.de>
diff --git a/arch/arm/mach-omap/include/mach/sdrc.h b/arch/arm/mach-omap/include/mach/sdrc.h
index 406dc32..73031b9 100644
--- a/arch/arm/mach-omap/include/mach/sdrc.h
+++ b/arch/arm/mach-omap/include/mach/sdrc.h
@@ -2,11 +2,8 @@
  * @file
  * @brief This file contains the SDRC specific register definitions
  *
- * FileName: include/asm-arm/arch-omap/sdrc.h
- *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  *
@@ -22,8 +19,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- *
  */

 #ifndef _ASM_ARCH_SDRC_H
diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index 5d9b870..e54791d 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -3,13 +3,10 @@
  * @brief This file defines the macros apis which are useful for most OMAP
  * platforms.
  *
- * FileName: include/asm-arm/arch-omap/sys_info.h
- *
  * These are implemented by the System specific code in omapX-generic.c
  *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Richard Woodruff <r-woodruff2@ti.com>
@@ -23,7 +20,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #ifndef __ASM_ARCH_SYS_INFO_H_
diff --git a/arch/arm/mach-omap/include/mach/syslib.h b/arch/arm/mach-omap/include/mach/syslib.h
index ab88dcf..fe8d71d 100644
--- a/arch/arm/mach-omap/include/mach/syslib.h
+++ b/arch/arm/mach-omap/include/mach/syslib.h
@@ -2,13 +2,10 @@
  * @file
  * @brief These Apis are OMAP independent support functions
  *
- * FileName: include/asm-arm/arch-omap/syslib.h
- *
  * Implemented by arch/arm/mach-omap/syslib.c
  *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2004-2008
  * Texas Instruments, <www.ti.com>
  * Richard Woodruff <r-woodruff2@ti.com>
@@ -22,8 +19,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #ifndef __ASM_ARCH_OMAP_SYSLIB_H_
 #define __ASM_ARCH_OMAP_SYSLIB_H_
 #include <io.h>
diff --git a/arch/arm/mach-omap/include/mach/timers.h b/arch/arm/mach-omap/include/mach/timers.h
index e8dad9a..2df507d 100644
--- a/arch/arm/mach-omap/include/mach/timers.h
+++ b/arch/arm/mach-omap/include/mach/timers.h
@@ -7,8 +7,6 @@
  * Originally from Linux kernel:
  * http://linux.omap.com/pub/kernel/3430zoom/linux-ldp-v1.0b.tar.gz
  *
- */
-/*
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -25,8 +23,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #ifndef __ASM_ARCH_GPT_H
 #define __ASM_ARCH_GPT_H

diff --git a/arch/arm/mach-omap/include/mach/wdt.h b/arch/arm/mach-omap/include/mach/wdt.h
index e359e8b..10cb1f4 100644
--- a/arch/arm/mach-omap/include/mach/wdt.h
+++ b/arch/arm/mach-omap/include/mach/wdt.h
@@ -2,10 +2,6 @@
  * @file
  * @brief This file contains the Watchdog timer specific register definitions
  *
- * FileName: include/asm-arm/arch-omap/wdt.h
- *
- */
-/*
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -19,8 +15,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #ifndef __ASM_ARCH_OMAP_WDT_H
 #define __ASM_ARCH_OMAP_WDT_H

diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index cfac7bc..975bf45 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -2,8 +2,6 @@
  * @file
  * @brief OMAP DPLL and various clock configuration
  *
- * FileName: arch/arm/mach-omap/omap3_clock.c
- *
  * @ref prcm_init This is the second level clock init for PRCM as defined in
  * clocks.h -- called from SRAM, or Flash (using temp SRAM stack).
  *
@@ -16,8 +14,7 @@
  * should be used, functions cannot use global variables/switch constructs.
  *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Richard Woodruff <r-woodruff2@ti.com>
@@ -31,7 +28,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #include <common.h>
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index c3e4086..ea55efd 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -2,8 +2,6 @@
  * @file
  * @brief Provide Architecture level Initialization
  *
- * FileName: arch/arm/mach-omap/omap3_core.S
- *
  * This provides OMAP3 Architecture initialization. Among these,
  * @li OMAP ROM Code is located in SRAM, we can piggy back on
  * the same addresses
@@ -12,8 +10,6 @@
  * functions.
  * @li Call architecture initialization function a_init
  *
- */
-/*
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -27,7 +23,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #include <config.h>
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 1e1308e..68d73e3 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -2,8 +2,6 @@
  * @file
  * @brief Provide Generic implementations for OMAP3 architecture
  *
- * FileName: arch/arm/mach-omap/omap3_generic.c
- *
  * This file contains the generic implementations of various OMAP3
  * relevant functions
  * For more info on OMAP34XX, see http://focus.ti.com/pdfs/wtbu/swpu114g.pdf
@@ -12,8 +10,7 @@
  * The implemented functions are present in sys_info.h
  *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Richard Woodruff <r-woodruff2@ti.com>
@@ -28,8 +25,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
+
 #include <common.h>
 #include <init.h>
 #include <io.h>
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/arch/arm/mach-omap/s32k_clksource.c
index 6ce0c64..2cfcfa9 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/arch/arm/mach-omap/s32k_clksource.c
@@ -2,14 +2,10 @@
  * @file
  * @brief Provide @ref clocksource functionality for OMAP
  *
- * FileName: arch/arm/mach-omap/s32k_clksource.c
- *
  * @ref clocksource provides a neat architecture. all we do is
  * To loop in with Sync 32Khz clock ticking away at 32768hz on OMAP.
  * Sync 32Khz clock is an always ON clock.
  *
- */
-/*
  * (C) Copyright 2008
  * Texas Instruments, <www.ti.com>
  * Nishanth Menon <x0nishan@ti.com>
@@ -23,7 +19,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #include <common.h>
diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
index 01b5cf2..42da348 100644
--- a/arch/arm/mach-omap/syslib.c
+++ b/arch/arm/mach-omap/syslib.c
@@ -2,14 +2,11 @@
  * @file
  * @brief Provide OMAP independent utility APIs
  *
- * FileName: arch/arm/mach-omap/syslib.c
- *
  * Provide APIs which can be used from platform/architecture code
  * to operate on
  *
  * Originally from http://linux.omap.com/pub/bootloader/3430sdp/u-boot-v1.tar.gz
- */
-/*
+ *
  * (C) Copyright 2006-2008
  * Texas Instruments, <www.ti.com>
  * Richard Woodruff <r-woodruff2@ti.com>
@@ -23,7 +20,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */

 #include <config.h>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
