Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVFoC-0003Ds-Pa
 for barebox@lists.infradead.org; Wed, 02 Apr 2014 07:42:05 +0000
Received: by mail-la0-f50.google.com with SMTP id pv20so3673105lab.9
 for <barebox@lists.infradead.org>; Wed, 02 Apr 2014 00:41:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  2 Apr 2014 11:41:31 +0400
Message-Id: <1396424491-1651-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: qemu-malta: add CBUS UART support
To: barebox@lists.infradead.org

This patch adds CBUS UART dts support;
also it adds the necessary macros for DEBUG_LL.

qemu-malta supports three serial interfaces:

  * two ports are provided by the FDC37M817
    Super I/O; this chip is connected via LPC bus
    to Intel 82371EB (PIIX4E) South Bridge;

  * the third serial port is provided by
    the discrete TI 16C550C (CBUS UART);
    this chip is connected via CBUS directly
    to the board's GT64120 North Bridge.

See Malta User's Manual (MD00048) for details.

CBUS UART Instructions for use:

  1. Enable CONFIG_CONSOLE_ACTIVATE_ALL in .config
     (or disable uart0 in dts) and compile barebox;

  2. run qemu:

     qemu-system-mips -nographic -nodefaults \
        -monitor null -M malta -m 256 \
        -serial null -serial null -serial stdio \
        -bios barebox-flash-image

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/qemu-malta.dts                 | 8 ++++++++
 arch/mips/mach-malta/include/mach/hardware.h | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index b6b69c4..67fe591 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -25,6 +25,14 @@
 		clock-frequency = <1843200>;
 	};
 
+	uart2: serial@bf000900 {
+		compatible = "ns16550a";
+		reg = <0xbf000900 0x40>;
+		reg-shift = <3>;
+		/* no matter for emulated port */
+		clock-frequency = <1843200>;
+	};
+
 	nor0: flash@be000000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index 9345a67..ba28cb8 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -20,6 +20,9 @@
 
 #define MALTA_PIIX4_UART0	0xb80003f8
 
+#define MALTA_CBUS_UART	0xbf000900
+#define MALTA_CBUS_UART_SHIFT	3
+
 /*
  * Reset register.
  */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
