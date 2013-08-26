Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDouM-0004du-Mf
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 05:00:08 +0000
Received: by mail-la0-f44.google.com with SMTP id eo20so2013255lab.31
 for <barebox@lists.infradead.org>; Sun, 25 Aug 2013 21:59:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 26 Aug 2013 08:57:16 +0400
Message-Id: <1377493037-2229-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 7/8] ARM: DIGIC: add Canon EOS 600D support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/Makefile                |  1 +
 arch/arm/boards/canon-600d/Makefile     |  1 +
 arch/arm/boards/canon-600d/env/bin/init | 17 +++++++++++++++++
 arch/arm/boards/canon-600d/env/bin/zup  | 11 +++++++++++
 arch/arm/boards/canon-600d/lowlevel.c   | 23 +++++++++++++++++++++++
 arch/arm/dts/canon-600d.dts             | 21 +++++++++++++++++++++
 arch/arm/mach-digic/Kconfig             |  5 +++++
 7 files changed, 79 insertions(+)
 create mode 100644 arch/arm/boards/canon-600d/Makefile
 create mode 100644 arch/arm/boards/canon-600d/env/bin/init
 create mode 100644 arch/arm/boards/canon-600d/env/bin/zup
 create mode 100644 arch/arm/boards/canon-600d/lowlevel.c
 create mode 100644 arch/arm/dts/canon-600d.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 76f21be..bb95428 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
 obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
+obj-$(CONFIG_MACH_CANON_600D)			+= canon-600d/
 obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
diff --git a/arch/arm/boards/canon-600d/Makefile b/arch/arm/boards/canon-600d/Makefile
new file mode 100644
index 0000000..b08c4a9
--- /dev/null
+++ b/arch/arm/boards/canon-600d/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/canon-600d/env/bin/init b/arch/arm/boards/canon-600d/env/bin/init
new file mode 100644
index 0000000..478fd23
--- /dev/null
+++ b/arch/arm/boards/canon-600d/env/bin/init
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+export PATH=/env/bin
+
+# use "direct print" led (blue)
+LED=0
+
+DELAY=300
+
+md 0xF7FFFFF0+0x20
+
+for i in 1 2 3; do
+	led $LED 1
+	msleep $DELAY
+	led $LED 0
+	msleep $DELAY
+done
diff --git a/arch/arm/boards/canon-600d/env/bin/zup b/arch/arm/boards/canon-600d/env/bin/zup
new file mode 100644
index 0000000..84bfd2f
--- /dev/null
+++ b/arch/arm/boards/canon-600d/env/bin/zup
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+# on Canon PowerShot A1100 IS we can use 0x400000
+LOADADDR=0x400000
+IMGNAME=zbarebox.bin
+
+loady
+if [ -e $IMGNAME ]; then
+	memcpy -s $IMGNAME 0 $LOADADDR
+	go $LOADADDR
+fi
diff --git a/arch/arm/boards/canon-600d/lowlevel.c b/arch/arm/boards/canon-600d/lowlevel.c
new file mode 100644
index 0000000..a588880
--- /dev/null
+++ b/arch/arm/boards/canon-600d/lowlevel.c
@@ -0,0 +1,23 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	/* FIXME: can we determine RAM size using CP15 register?
+	 *
+	 * see http://chdk.setepontos.com/index.php?topic=5980.90
+	 *
+	 * http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0363e/Bgbcdeca.html
+	 * 4.2.19. c6, MPU memory region programming registers
+	 *
+	 * But the 'cpuinfo' command says that the Protection
+	 * unit is disabled.
+	 * The Control Register value (mrc    p15, 0, %0, c0, c1, 4)
+	 * is 0x00051078.
+	 */
+	barebox_arm_entry(0x0, SZ_256M, 0);
+}
diff --git a/arch/arm/dts/canon-600d.dts b/arch/arm/dts/canon-600d.dts
new file mode 100644
index 0000000..ee1fa4e
--- /dev/null
+++ b/arch/arm/dts/canon-600d.dts
@@ -0,0 +1,21 @@
+/dts-v1/;
+
+/include/ "digic4.dtsi"
+
+/ {
+	model = "Canon EOS 600D";
+	compatible = "canon,eos600d";
+
+	memory {
+		reg = <0x00000000 0x10000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		sd_slot {
+			label = "sd-card activity led (red)";
+			gpios = <&gpio 77 0>;
+		};
+	};
+};
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
index b3de2d9..31c4a90 100644
--- a/arch/arm/mach-digic/Kconfig
+++ b/arch/arm/mach-digic/Kconfig
@@ -7,11 +7,16 @@ config MACH_CANON_A1100
 	bool "Canon PowerShot A1100 IS"
 	select DIGIC_CSRC_TIMER
 
+config MACH_CANON_600D
+	bool "Canon EOS 600D"
+	select DIGIC_CSRC_DUMMY
+
 endchoice
 
 config ARCH_TEXT_BASE
 	hex
 	default 0x00001900 if MACH_CANON_A1100
+	default 0x00800000 if MACH_CANON_600D
 
 
 config DIGIC_CSRC_TIMER
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
