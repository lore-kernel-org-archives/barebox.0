Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2jF-0005ER-EE
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:24:39 +0000
Received: by mail-pg0-x243.google.com with SMTP id w20so11322778pgc.1
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 06:24:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Mar 2017 06:23:47 -0700
Message-Id: <20170323132358.8539-4-andrew.smirnov@gmail.com>
In-Reply-To: <20170323132358.8539-1-andrew.smirnov@gmail.com>
References: <20170323132358.8539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/14] at91sam9x5ek: Add preliminary device tree support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add basic code to build and pass board device tree blob to Barebox
initialization code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/lowlevel.c | 7 ++++++-
 arch/arm/configs/at91sam9x5ek_defconfig | 2 ++
 arch/arm/dts/Makefile                   | 2 ++
 arch/arm/dts/at91sam9x5ek.dts           | 9 +++++++++
 arch/arm/mach-at91/Kconfig              | 1 +
 5 files changed, 20 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/at91sam9x5ek.dts

diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 9b5c926..acf80d7 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -6,11 +6,16 @@
 #include <io.h>
 #include <debug_ll.h>
 
+extern char __dtb_at91sam9x5ek_start[];
 
 ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 {
+	void *fdt;
+
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), NULL);
+	fdt = __dtb_at91sam9x5ek_start - get_runtime_offset();
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), fdt);
 }
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index d6f18b2..0691145 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -51,6 +51,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
@@ -74,6 +75,7 @@ CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
+CONFIG_MFD_SYSCON=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 70359d8..c9a0946 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -89,5 +89,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-spu3-rev-a.dtb.o	\
 	vf610-zii-scu4-aib-rev-c.dtb.o
 
+pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
+
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
new file mode 100644
index 0000000..db1bd67
--- /dev/null
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -0,0 +1,9 @@
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/at91.h>
+
+#include <arm/at91sam9x5.dtsi>
+#include <arm/at91sam9x5_lcd.dtsi>
+#include <arm/at91sam9x5dm.dtsi>
+#include <arm/at91sam9x5ek.dtsi>
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 67238f8..2870bf3 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -180,6 +180,7 @@ config ARCH_AT91SAM9G45
 config ARCH_AT91SAM9X5
 	bool "AT91SAM9X5"
 	select SOC_AT91SAM9X5
+	select OFDEVICE
 
 config ARCH_AT91SAM9N12
 	bool "AT91SAM9N12"
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
