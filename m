Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsHM-0002WN-MQ
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:16:22 +0000
Received: by mail-la0-f54.google.com with SMTP id hz20so571196lab.13
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:15:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 01:15:25 +0400
Message-Id: <1406582130-10116-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
References: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 06/11] ARM: DIGIC: add Canon PowerShot A1100 IS support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/Makefile               |  1 +
 arch/arm/boards/canon-a1100/Makefile   |  1 +
 arch/arm/boards/canon-a1100/lowlevel.c | 23 ++++++++++++++++++++++
 arch/arm/dts/canon-a1100.dts           | 35 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-digic/Kconfig            |  7 +++++++
 5 files changed, 67 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2ed3730..c60da81 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
 obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
+obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_NITROGEN6X)			+= boundarydevices-nitrogen6x/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
diff --git a/arch/arm/boards/canon-a1100/Makefile b/arch/arm/boards/canon-a1100/Makefile
new file mode 100644
index 0000000..b08c4a9
--- /dev/null
+++ b/arch/arm/boards/canon-a1100/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/canon-a1100/lowlevel.c b/arch/arm/boards/canon-a1100/lowlevel.c
new file mode 100644
index 0000000..bbae825
--- /dev/null
+++ b/arch/arm/boards/canon-a1100/lowlevel.c
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
+	barebox_arm_entry(0x0, SZ_64M, 0);
+}
diff --git a/arch/arm/dts/canon-a1100.dts b/arch/arm/dts/canon-a1100.dts
new file mode 100644
index 0000000..a88eacf
--- /dev/null
+++ b/arch/arm/dts/canon-a1100.dts
@@ -0,0 +1,35 @@
+/dts-v1/;
+
+/include/ "digic4.dtsi"
+
+/ {
+	model = "Canon PowerShot A1100 IS";
+	compatible = "canon,a1100";
+
+	memory {
+		reg = <0x00000000 0x04000000>;
+	};
+
+	flash@f8000000 {
+		compatible = "cfi-flash";
+		reg = <0xf8000000 0x08000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		direct_print {
+			label = "direct-print (blue)";
+			gpios = <&gpio 51 0>;
+		};
+
+		auto_focus {
+			label = "auto-focus (red)";
+			gpios = <&gpio 55 0>;
+		};
+	};
+};
+
+&timer2 {
+        status = "okay";
+};
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
index 49ce44a..d25c3b3 100644
--- a/arch/arm/mach-digic/Kconfig
+++ b/arch/arm/mach-digic/Kconfig
@@ -3,6 +3,13 @@ if ARCH_DIGIC
 choice
 	prompt "camera type"
 
+config MACH_CANON_A1100
+	bool "Canon PowerShot A1100 IS"
+
 endchoice
 
+config ARCH_TEXT_BASE
+	hex
+	default 0x00001900 if MACH_CANON_A1100
+
 endif
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
