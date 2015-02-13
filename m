Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM9Bj-0001Fu-Eg
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 05:53:17 +0000
Received: by mail-lb0-f173.google.com with SMTP id n10so13665736lbv.4
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 21:52:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 13 Feb 2015 08:53:11 +0300
Message-Id: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] MIPS Malta serial port fixups
To: barebox@lists.infradead.org

Yesterday I tested qemu-malta barebox on a real MIPS Malta board.
Barebox runs on real board with some limitations.
This patchseries fixes trivial serial port errors
found during barebox real board experiments.

real Malta pico-howto
=====================

There are several configurations for Malta board.
The Malta board at my disposal is a rather new board
with MIPS ROC-it2 system controller. But qemu emulates
the board with old GT64120 system controller.
So additional workaround is needed:
we have to disable GT64120 initialization in pbl and
change serial port base addresses; also PCI has to be disabled
in the .config.

Here is the patch:

diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
index 5c15372..7975044 100644
--- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
+++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
@@ -60,6 +60,7 @@ __start:
 	/* cpu specific setup ... */
 	/* ... absent */
 
+#if 0
 	/*
 	 * Load BAR registers of GT64120 as done by YAMON
 	 *
@@ -93,6 +94,7 @@ __start:
 	sw	t0, GT_PCI0M1LD_OFS(t1)
 	li	t0, GT_LD(0x1bdfffff)
 	sw	t0, GT_PCI0M1HD_OFS(t1)
+#endif
 
 	mips_nmon
 
diff --git a/arch/mips/boards/qemu-malta/include/board/debug_ll.h b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
index abeee53..e6ae9b5 100644
--- a/arch/mips/boards/qemu-malta/include/board/debug_ll.h
+++ b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
@@ -20,7 +20,7 @@
 
 #include <mach/hardware.h>
 
-#define DEBUG_LL_UART_ADDR	MALTA_PIIX4_UART0
+#define DEBUG_LL_UART_ADDR	0xbb0003f8
 #define DEBUG_LL_UART_SHIFT	0
 
 #define DEBUG_LL_UART_CLK       1843200
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 9b0c594..ece7555 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -19,7 +19,7 @@
 
 	uart0: serial@180003f8 {
 		compatible = "ns16550a";
-		reg = <0x180003f8 0x08>;
+		reg = <0x1b0003f8 0x08>;
 		reg-shift = <0>;
 		/* no matter for emulated port */
 		clock-frequency = <1843200>;

Using YAMON to run barebox
--------------------------

YAMON can be used to load barebox from tftp-server:

YAMON> setenv ipaddr 10.0.0.177
YAMON> setenv subnetmask 255.255.255.0
YAMON> ping 10.0.0.1
64 bytes ICMP-ECHO-REPLY user data received from 10.0.0.1
YAMON> fread tftp://10.0.0.1/antony/zbarebox.bin 0xa0100000
YAMON> go 0xa0100000

Please see http://www.jackslab.org/?p=274 for more YAMON usage examples.


Antony Pavlov (3):
  MIPS: qemu-malta_defconfig: set BAUDRATE=38400
  MIPS: qemu-malta: debug_ll: fix serial port speed
  MIPS: add gxemul-malta_defconfig

 Documentation/boards/mips/qemu-malta.rst           | 17 +++++--
 .../boards/qemu-malta/include/board/debug_ll.h     |  5 +-
 arch/mips/configs/gxemul-malta_defconfig           | 57 ++++++++++++++++++++++
 arch/mips/configs/qemu-malta_defconfig             |  4 +-
 4 files changed, 76 insertions(+), 7 deletions(-)
 create mode 100644 arch/mips/configs/gxemul-malta_defconfig

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
