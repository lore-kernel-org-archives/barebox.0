Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUYi4-0004d5-IF
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 11:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 13:17:10 +0200
Message-Id: <1440587836-22105-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
References: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] restart: replace reset_cpu with registered restart
 handlers
To: Barebox List <barebox@lists.infradead.org>

This replaces the reset_cpu() function which every SoC or board must
provide with registered handlers. This makes it possible to have multiple
reset functions for boards which have multiple ways to reset the machine.
Also boards which have no way at all to reset the machine no longer
have to provide a dummy reset_cpu() function.

The problem this solves is that some machines have external PMICs or
similar to reset the system which have to be preferred over the
internal SoC reset, because the PMIC can reset not only the SoC but also
the external devices.

To pick the right way to reset a machine each handler has a priority. The
default priority is 100 and all currently existing restart handlers are
registered with this priority. of_get_restart_priority() allows to retrieve
the priority from the device tree which makes it possible for boards to
give certain restart handlers a higher priority in order to use this one
instead of the default one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c                             |   7 +-
 arch/arm/mach-at91/at91rm9200_time.c             |  14 ++-
 arch/arm/mach-at91/at91sam9_reset.S              |   4 +-
 arch/arm/mach-at91/at91sam9g45_reset.S           |   4 +-
 arch/arm/mach-at91/bootstrap.c                   |   3 +-
 arch/arm/mach-at91/setup.c                       |   9 ++
 arch/arm/mach-bcm2835/core.c                     |  21 +++--
 arch/arm/mach-clps711x/reset.c                   |  12 ++-
 arch/arm/mach-davinci/time.c                     |  14 ++-
 arch/arm/mach-digic/Makefile                     |   2 +-
 arch/arm/mach-digic/core.c                       |  25 -----
 arch/arm/mach-ep93xx/clocksource.c               |  19 ++--
 arch/arm/mach-highbank/reset.c                   |  14 ++-
 arch/arm/mach-mvebu/armada-370-xp.c              |   9 +-
 arch/arm/mach-mvebu/common.c                     |  13 ---
 arch/arm/mach-mvebu/dove.c                       |   9 +-
 arch/arm/mach-mvebu/include/mach/common.h        |   1 -
 arch/arm/mach-mvebu/kirkwood.c                   |   9 +-
 arch/arm/mach-mxs/soc-imx23.c                    |   8 +-
 arch/arm/mach-mxs/soc-imx28.c                    |   9 +-
 arch/arm/mach-netx/generic.c                     |  23 +++--
 arch/arm/mach-nomadik/reset.c                    |  15 ++-
 arch/arm/mach-omap/am33xx_generic.c              |   4 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h |   2 +-
 arch/arm/mach-omap/include/mach/omap3-generic.h  |   2 +-
 arch/arm/mach-omap/include/mach/omap4-generic.h  |   2 +-
 arch/arm/mach-omap/omap3_generic.c               |   5 +-
 arch/arm/mach-omap/omap4_generic.c               |   4 +-
 arch/arm/mach-omap/omap_generic.c                |  12 ++-
 arch/arm/mach-pxa/common.c                       |  14 ++-
 arch/arm/mach-rockchip/core.c                    |  16 +++-
 arch/arm/mach-samsung/generic.c                  |  15 ++-
 arch/arm/mach-socfpga/reset-manager.c            |  14 ++-
 arch/arm/mach-tegra/tegra20-pmc.c                |   8 +-
 arch/arm/mach-uemd/Makefile                      |   2 +-
 arch/arm/mach-uemd/reset.c                       |  24 -----
 arch/arm/mach-versatile/core.c                   |   7 +-
 arch/arm/mach-vexpress/reset.c                   |  15 ++-
 arch/arm/mach-zynq/zynq.c                        |  24 ++---
 arch/blackfin/lib/cpu.c                          |  11 ++-
 arch/blackfin/lib/traps.c                        |   5 +-
 arch/efi/efi/efi.c                               |  13 ++-
 arch/mips/lib/bootm.c                            |   3 +-
 arch/mips/mach-ar231x/ar231x_reset.c             |   8 +-
 arch/mips/mach-ath79/reset.c                     |  15 ++-
 arch/mips/mach-bcm47xx/reset.c                   |  16 +++-
 arch/mips/mach-loongson/loongson1_reset.c        |  15 ++-
 arch/mips/mach-malta/reset.c                     |  16 +++-
 arch/nios2/cpu/cpu.c                             |  12 ++-
 arch/openrisc/cpu/cpu.c                          |  11 ++-
 arch/ppc/lib/ppclinux.c                          |   3 +-
 arch/ppc/mach-mpc5xxx/cpu.c                      |  11 ++-
 arch/ppc/mach-mpc85xx/cpu.c                      |  14 ++-
 arch/sandbox/board/Makefile                      |   1 +
 arch/sandbox/mach-sandbox/include/mach/linux.h   |   1 +
 arch/sandbox/os/common.c                         |   6 +-
 arch/x86/mach-i386/Makefile                      |   2 -
 arch/x86/mach-i386/reset.c                       |  30 ------
 commands/reset.c                                 |   3 +-
 common/Makefile                                  |   1 +
 common/misc.c                                    |   3 +-
 common/restart.c                                 | 112 +++++++++++++++++++++++
 drivers/usb/gadget/f_fastboot.c                  |   3 +-
 drivers/watchdog/imxwd.c                         |  22 +++--
 drivers/watchdog/jz4740.c                        |  32 +++----
 include/common.h                                 |   1 -
 include/restart.h                                |  21 +++++
 67 files changed, 528 insertions(+), 277 deletions(-)
 delete mode 100644 arch/arm/mach-digic/core.c
 delete mode 100644 arch/arm/mach-uemd/reset.c
 delete mode 100644 arch/x86/mach-i386/reset.c
 create mode 100644 common/restart.c
 create mode 100644 include/restart.h

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 8327c3f..7bb9b43 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -16,6 +16,7 @@
 #include <libbb.h>
 #include <magicvar.h>
 #include <binfmt.h>
+#include <restart.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -111,7 +112,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 
 	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree);
 
-	reset_cpu(0);
+	restart_machine();
 
 	return -ERESTARTSYS;
 }
@@ -378,7 +379,7 @@ static int do_bootm_barebox(struct image_data *data)
 
 	start_linux(barebox, 0, 0, 0, data->oftree);
 
-	reset_cpu(0);
+	restart_machine();
 }
 
 static struct image_handler barebox_handler = {
@@ -518,7 +519,7 @@ static int do_bootm_aimage(struct image_data *data)
 
 		second();
 
-		reset_cpu(0);
+		restart_machine();
 	}
 
 	close(fd);
diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index ae0172b..fd11223 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -28,6 +28,7 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
+#include <restart.h>
 #include <mach/hardware.h>
 #include <mach/at91_tc.h>
 #include <mach/at91_st.h>
@@ -77,7 +78,7 @@ core_initcall(clocksource_init);
 /*
  * Reset the cpu through the reset controller
  */
-void __noreturn reset_cpu (unsigned long ignored)
+static void __noreturn at91rm9200_restart_soc(struct restart_handler *rst)
 {
 	/*
 	 * Perform a hardware reset with the use of the Watchdog timer.
@@ -86,6 +87,13 @@ void __noreturn reset_cpu (unsigned long ignored)
 	at91_sys_write(AT91_ST_CR, AT91_ST_WDRST);
 
 	/* Not reached */
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(at91rm9200_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-at91/at91sam9_reset.S b/arch/arm/mach-at91/at91sam9_reset.S
index 3a3e77a..890545e 100644
--- a/arch/arm/mach-at91/at91sam9_reset.S
+++ b/arch/arm/mach-at91/at91sam9_reset.S
@@ -20,9 +20,9 @@
 
 			.arm
 
-			.globl	reset_cpu
+			.globl	restart_sam9
 
-reset_cpu:		ldr	r0, .at91_va_base_sdramc			@ preload constants
+restart_sam9:		ldr	r0, .at91_va_base_sdramc			@ preload constants
 			ldr	r1, .at91_va_base_rstc_cr
 
 			mov	r2, #1
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index e70d733..2cb113c 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -17,9 +17,9 @@
 
 			.arm
 
-			.globl	reset_cpu
+			.globl	restart_sam9g45
 
-reset_cpu:		ldr	r0, .at91_va_base_sdramc	@ preload constants
+restart_sam9g45:	ldr	r0, .at91_va_base_sdramc	@ preload constants
 			ldr	r1, .at91_va_base_rstc_cr
 
 			mov	r2, #1
diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
index 2d18dd6..1baf732 100644
--- a/arch/arm/mach-at91/bootstrap.c
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -9,6 +9,7 @@
 #include <mach/bootstrap.h>
 #include <linux/sizes.h>
 #include <malloc.h>
+#include <restart.h>
 #include <init.h>
 #include <menu.h>
 
@@ -145,7 +146,7 @@ static void boot_mmc_disk_action(struct menu *m, struct menu_entry *me)
 
 static void boot_reset_action(struct menu *m, struct menu_entry *me)
 {
-	reset_cpu(0);
+	restart_machine();
 }
 
 void at91_bootstrap_menu(void)
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 341979a..1fa50ac 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -8,6 +8,7 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
+#include <restart.h>
 
 #include <mach/hardware.h>
 #include <mach/cpu.h>
@@ -296,6 +297,9 @@ static int at91_detect(void)
 }
 postcore_initcall(at91_detect);
 
+void restart_sam9(struct restart_handler *rst);
+void restart_sam9g45(struct restart_handler *rst);
+
 static int at91_soc_device(void)
 {
 	struct device_d *dev;
@@ -304,6 +308,11 @@ static int at91_soc_device(void)
 	dev_add_param_fixed(dev, "name", (char*)at91_get_soc_type(&at91_soc_initdata));
 	dev_add_param_fixed(dev, "subname", (char*)at91_get_soc_subtype(&at91_soc_initdata));
 
+	if (IS_ENABLED(CONFIG_AT91SAM9_RESET))
+		restart_handler_register_fn(restart_sam9);
+	if (IS_ENABLED(CONFIG_AT91SAM9G45_RESET))
+		restart_handler_register_fn(restart_sam9g45);
+
 	return 0;
 }
 coredevice_initcall(at91_soc_device);
diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index 5d08012..64f3781 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -18,6 +18,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 
 #include <linux/clk.h>
 #include <linux/clkdev.h>
@@ -51,13 +52,6 @@ static int bcm2835_clk_init(void)
 }
 postcore_initcall(bcm2835_clk_init);
 
-static int bcm2835_dev_init(void)
-{
-	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
-	return 0;
-}
-coredevice_initcall(bcm2835_dev_init);
-
 void bcm2835_register_uart(void)
 {
 	amba_apb_device_add(NULL, "uart0-pl011", 0, BCM2835_UART0_BASE, 4096, NULL, 0);
@@ -72,7 +66,7 @@ void bcm2835_add_device_sdram(u32 size)
 }
 #define RESET_TIMEOUT 10
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn bcm2835_restart_soc(struct restart_handler *rst)
 {
 	uint32_t rstc;
 
@@ -82,6 +76,13 @@ void __noreturn reset_cpu(unsigned long addr)
 	writel(PM_PASSWORD | RESET_TIMEOUT, PM_WDOG);
 	writel(PM_PASSWORD | rstc, PM_RSTC);
 
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int bcm2835_dev_init(void)
+{
+	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
+	restart_handler_register_fn(bcm2835_restart_soc);
+	return 0;
+}
+coredevice_initcall(bcm2835_dev_init);
diff --git a/arch/arm/mach-clps711x/reset.c b/arch/arm/mach-clps711x/reset.c
index 859d8ae..03f40b7 100644
--- a/arch/arm/mach-clps711x/reset.c
+++ b/arch/arm/mach-clps711x/reset.c
@@ -8,8 +8,10 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn clps711x_restart_soc(struct restart_handler *rst)
 {
 	shutdown_barebox();
 
@@ -17,3 +19,11 @@ void __noreturn reset_cpu(unsigned long addr)
 
 	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(clps711x_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
index 60f0d19..4d1b570 100644
--- a/arch/arm/mach-davinci/time.c
+++ b/arch/arm/mach-davinci/time.c
@@ -12,6 +12,7 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
+#include <restart.h>
 #include <clock.h>
 
 #include <mach/time.h>
@@ -164,7 +165,7 @@ static int clocksource_init(void)
 core_initcall(clocksource_init);
 
 /* reset board using watchdog timer */
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn davinci_restart_soc(struct restart_handler *rst)
 {
 	u32 tgcr, wdtcr;
 	void __iomem *base;
@@ -204,6 +205,13 @@ void __noreturn reset_cpu(ulong addr)
 	wdtcr = 0x00004000;
 	__raw_writel(wdtcr, base + WDTCR);
 
-	unreachable();
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(davinci_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-digic/Makefile b/arch/arm/mach-digic/Makefile
index 820eb10..16a2186 100644
--- a/arch/arm/mach-digic/Makefile
+++ b/arch/arm/mach-digic/Makefile
@@ -1 +1 @@
-obj-y += core.o
+obj- := __dummy__.o
diff --git a/arch/arm/mach-digic/core.c b/arch/arm/mach-digic/core.c
deleted file mode 100644
index b1caec0..0000000
--- a/arch/arm/mach-digic/core.c
+++ /dev/null
@@ -1,25 +0,0 @@
-/*
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
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-
-void __noreturn reset_cpu(unsigned long ignored)
-{
-	pr_err("%s: unimplemented\n", __func__);
-	hang();
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index f396d0a..83c05ce 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -20,6 +20,7 @@
 #include <init.h>
 #include <clock.h>
 #include <io.h>
+#include <restart.h>
 #include <mach/ep93xx-regs.h>
 
 #define TIMER_CLKSEL		(1 << 3)
@@ -63,10 +64,8 @@ static int clocksource_init(void)
 
 core_initcall(clocksource_init);
 
-/*
- * Reset the cpu
- */
-void __noreturn reset_cpu(unsigned long addr)
+/* Reset the SoC */
+static void __noreturn ep92xx_restart_soc(struct restart_handler *rst)
 {
 	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
 	uint32_t value;
@@ -84,7 +83,13 @@ void __noreturn reset_cpu(unsigned long addr)
 	writel(value, &syscon->devicecfg);
 
 	/* Dying... */
-	while (1)
-		; /* noop */
+	hang();
+}
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(ep92xx_restart_soc);
+
+	return 0;
 }
-EXPORT_SYMBOL(reset_cpu);
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
index b9664e4..929ded5 100644
--- a/arch/arm/mach-highbank/reset.c
+++ b/arch/arm/mach-highbank/reset.c
@@ -6,17 +6,27 @@
 
 #include <common.h>
 #include <io.h>
+#include <restart.h>
+#include <init.h>
 
 #include <mach/devices.h>
 #include <mach/sysregs.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn highbank_restart_soc(struct restart_handler *rst)
 {
 	hingbank_set_pwr_hard_reset();
 	asm("	wfi");
 
-	while(1);
+	hang();
+}
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(highbank_restart_soc);
+
+	return 0;
 }
+coredevice_initcall(restart_register_feature);
 
 void __noreturn poweroff()
 {
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 2405629..c362cfd 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <restart.h>
 #include <of.h>
 #include <of_address.h>
 #include <asm/memory.h>
@@ -104,12 +105,12 @@ static int armada_370_xp_soc_id_fixup(void)
 	return 0;
 }
 
-static void __noreturn armada_370_xp_reset_cpu(unsigned long addr)
+static void __noreturn armada_370_xp_restart_soc(struct restart_handler *rst)
 {
 	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x60);
 	writel(0x1, ARMADA_370_XP_SYSCTL_BASE + 0x64);
-	while (1)
-		;
+
+	hang();
 }
 
 static int armada_xp_init_soc(struct device_node *root)
@@ -132,7 +133,7 @@ static int armada_370_xp_init_soc(struct device_node *root, void *context)
 	if (!of_machine_is_compatible("marvell,armada-370-xp"))
 		return 0;
 
-	mvebu_set_reset(armada_370_xp_reset_cpu);
+	restart_handler_register_fn(armada_370_xp_restart_soc);
 
 	barebox_set_model("Marvell Armada 370/XP");
 	barebox_set_hostname("armada");
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index 7d28d9c..cb40d0c 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -123,16 +123,3 @@ int mvebu_set_memory(u64 phys_base, u64 phys_size)
 
 	return 0;
 }
-
-static __noreturn void (*mvebu_reset_cpu)(unsigned long addr);
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	mvebu_reset_cpu(addr);
-}
-EXPORT_SYMBOL(reset_cpu);
-
-void mvebu_set_reset(void __noreturn (*reset)(unsigned long addr))
-{
-	mvebu_reset_cpu = reset;
-}
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index a7284fd..ba4af3a 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <restart.h>
 #include <asm/memory.h>
 #include <linux/mbus.h>
 #include <mach/dove-regs.h>
@@ -68,13 +69,13 @@ static inline void dove_memory_find(unsigned long *phys_base,
 	}
 }
 
-static void __noreturn dove_reset_cpu(unsigned long addr)
+static void __noreturn dove_restart_soc(struct restart_handler *rst)
 {
 	/* enable and assert RSTOUTn */
 	writel(SOFT_RESET_OUT_EN, DOVE_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
 	writel(SOFT_RESET_EN, DOVE_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
-	while (1)
-		;
+
+	hang();
 }
 
 static int dove_init_soc(struct device_node *root, void *context)
@@ -84,7 +85,7 @@ static int dove_init_soc(struct device_node *root, void *context)
 	if (!of_machine_is_compatible("marvell,dove"))
 		return 0;
 
-	mvebu_set_reset(dove_reset_cpu);
+	restart_handler_register_fn(dove_restart_soc);
 
 	barebox_set_model("Marvell Dove");
 	barebox_set_hostname("dove");
diff --git a/arch/arm/mach-mvebu/include/mach/common.h b/arch/arm/mach-mvebu/include/mach/common.h
index 5ce33fd..602af8f 100644
--- a/arch/arm/mach-mvebu/include/mach/common.h
+++ b/arch/arm/mach-mvebu/include/mach/common.h
@@ -21,6 +21,5 @@
 #define MVEBU_REMAP_INT_REG_BASE	0xf1000000
 
 int mvebu_set_memory(u64 phys_base, u64 phys_size);
-void mvebu_set_reset(void __noreturn (*reset)(unsigned long addr));
 
 #endif
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 19c6f07..72a6b0d 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -16,6 +16,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <restart.h>
 #include <asm/memory.h>
 #include <linux/mbus.h>
 #include <mach/kirkwood-regs.h>
@@ -43,12 +44,12 @@ static inline void kirkwood_memory_find(unsigned long *phys_base,
 	}
 }
 
-static void __noreturn kirkwood_reset_cpu(unsigned long addr)
+static void __noreturn kirkwood_restart_soc(struct restart_handler *rst)
 {
 	writel(SOFT_RESET_OUT_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_RSTOUT_MASK);
 	writel(SOFT_RESET_EN, KIRKWOOD_BRIDGE_BASE + BRIDGE_SYS_SOFT_RESET);
-	for(;;)
-		;
+
+	hang();
 }
 
 static int kirkwood_init_soc(struct device_node *root, void *context)
@@ -58,7 +59,7 @@ static int kirkwood_init_soc(struct device_node *root, void *context)
 	if (!of_machine_is_compatible("marvell,kirkwood"))
 		return 0;
 
-	mvebu_set_reset(kirkwood_reset_cpu);
+	restart_handler_register_fn(kirkwood_restart_soc);
 
 	barebox_set_model("Marvell Kirkwood");
 	barebox_set_hostname("kirkwood");
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index 339c577..d471c8e 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/imx23-regs.h>
 #include <io.h>
 
@@ -23,18 +24,16 @@
 # define HW_CLKCTRL_RESET_CHIP (1 << 1)
 
 /* Reset the full i.MX23 SoC via a chipset feature */
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn imx23_restart_soc(struct restart_handler *rst)
 {
 	u32 reg;
 
 	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_RESET);
 	writel(reg | HW_CLKCTRL_RESET_CHIP, IMX_CCM_BASE + HW_CLKCTRL_RESET);
 
-	while (1)
-		;
+	hang();
 	/*NOTREACHED*/
 }
-EXPORT_SYMBOL(reset_cpu);
 
 static int imx23_devices_init(void)
 {
@@ -46,6 +45,7 @@ static int imx23_devices_init(void)
 	add_generic_device("imx23-gpio", 0, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx23-gpio", 1, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx23-gpio", 2, NULL, IMX_IOMUXC_BASE, 0x2000, IORESOURCE_MEM, NULL);
+	restart_handler_register_fn(imx23_restart_soc);
 
 	return 0;
 }
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index b4ec38d..dc6020a 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/imx28-regs.h>
 #include <io.h>
 
@@ -24,18 +25,16 @@
 #define HW_CLKCTRL_WDOG_POR_DISABLE (1 << 5)
 
 /* Reset the full i.MX28 SoC via a chipset feature */
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn imx28_restart_soc(struct restart_handler *rst)
 {
 	u32 reg;
 
 	reg = readl(IMX_CCM_BASE + HW_CLKCTRL_RESET);
 	writel(reg | HW_CLKCTRL_RESET_CHIP, IMX_CCM_BASE + HW_CLKCTRL_RESET);
 
-	while (1)
-		;
+	hang();
 	/*NOTREACHED*/
 }
-EXPORT_SYMBOL(reset_cpu);
 
 static int imx28_init(void)
 {
@@ -50,6 +49,8 @@ static int imx28_init(void)
 		HW_CLKCTRL_WDOG_POR_DISABLE;
 	writel(reg, IMX_CCM_BASE + HW_CLKCTRL_RESET);
 
+	restart_handler_register_fn(imx28_restart_soc);
+
 	return 0;
 }
 postcore_initcall(imx28_init);
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 6127dde..6c3b953 100644
--- a/arch/arm/mach-netx/generic.c
+++ b/arch/arm/mach-netx/generic.c
@@ -15,8 +15,10 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <command.h>
 #include <io.h>
+#include <restart.h>
 #include <mach/netx-regs.h>
 #include "eth_firmware.h"
 
@@ -134,17 +136,24 @@ failure:
 	return COMMAND_ERROR_USAGE;
 }
 
-void __noreturn reset_cpu(unsigned long addr)
+BAREBOX_CMD_START(loadxc)
+	.cmd		= do_loadxc,
+	BAREBOX_CMD_DESC("load XMAC/XPEC engine with ethernet firmware")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+BAREBOX_CMD_END
+
+static void __noreturn netx_restart_soc(struct restart_handler *rst)
 {
 	SYSTEM_REG(SYSTEM_RES_CR) = 0x01000008;
 
 	/* Not reached */
-	while (1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(netx_restart_soc);
 
-BAREBOX_CMD_START(loadxc)
-	.cmd		= do_loadxc,
-	BAREBOX_CMD_DESC("load XMAC/XPEC engine with ethernet firmware")
-	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-BAREBOX_CMD_END
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-nomadik/reset.c b/arch/arm/mach-nomadik/reset.c
index bb5696a..8bdaada 100644
--- a/arch/arm/mach-nomadik/reset.c
+++ b/arch/arm/mach-nomadik/reset.c
@@ -15,10 +15,12 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <io.h>
+#include <restart.h>
 #include <mach/hardware.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn nomadik_restart_soc(struct restart_handler *rst)
 {
 	void __iomem *src_rstsr = (void *)(NOMADIK_SRC_BASE + 0x18);
 
@@ -28,6 +30,13 @@ void __noreturn reset_cpu(unsigned long addr)
 	writel(1, src_rstsr);
 
 	/* Not reached */
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(nomadik_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 7ce32f0..849c5dd 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -28,11 +28,11 @@
 #include <mach/gpmc.h>
 #include <reset_source.h>
 
-void __noreturn am33xx_reset_cpu(unsigned long addr)
+void __noreturn am33xx_restart_soc(struct restart_handler *rst)
 {
 	writel(AM33XX_PRM_RSTCTRL_RESET, AM33XX_PRM_RSTCTRL);
 
-	while (1);
+	hang();
 }
 
 /**
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index 03418b0..c8e28a3 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -28,7 +28,7 @@ u32 am33xx_running_in_flash(void);
 u32 am33xx_running_in_sram(void);
 u32 am33xx_running_in_sdram(void);
 
-void __noreturn am33xx_reset_cpu(unsigned long addr);
+void __noreturn am33xx_restart_soc(struct restart_handler *rst);
 
 void am33xx_enable_per_clocks(void);
 int am33xx_init(void);
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
index ab53b98..9b02129 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -24,7 +24,7 @@ u32 omap3_running_in_flash(void);
 u32 omap3_running_in_sram(void);
 u32 omap3_running_in_sdram(void);
 
-void __noreturn omap3_reset_cpu(unsigned long addr);
+void __noreturn omap3_restart_soc(struct restart_handler *rst);
 
 int omap3_init(void);
 int omap3_devices_init(void);
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
index e246e36..a2c0065 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -18,7 +18,7 @@ static inline void omap4_save_bootinfo(uint32_t *info)
 	memcpy((void *)OMAP44XX_SRAM_SCRATCH_SPACE, info, 3 * sizeof(uint32_t));
 }
 
-void __noreturn omap4_reset_cpu(unsigned long addr);
+void __noreturn omap4_restart_soc(struct restart_handler *rst);
 
 int omap4_init(void);
 int omap4_devices_init(void);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 0f2e9ce..cec2b48 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -52,13 +52,12 @@
  *
  * @return void
  */
-void __noreturn omap3_reset_cpu(unsigned long addr)
+void __noreturn omap3_restart_soc(struct restart_handler *rst)
 {
 	writel(OMAP3_PRM_RSTCTRL_RESET, OMAP3_PRM_REG(RSTCTRL));
 
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
 
 /**
  * @brief Low level CPU type
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 0b683da..e33c80c 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -34,11 +34,11 @@
 #define EMIF_L3_CONFIG_VAL_SYS_10_LL_0		0x0A0000FF
 #define EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0	0x0A300000
 
-void __noreturn omap4_reset_cpu(unsigned long addr)
+void __noreturn omap4_restart_soc(struct restart_handler *rst)
 {
 	writel(OMAP44XX_PRM_RSTCTRL_RESET, OMAP44XX_PRM_RSTCTRL);
 
-	while (1);
+	hang();
 }
 
 void omap4_set_warmboot_order(u32 *device_list)
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 334cf8d..8a74975 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -18,6 +18,7 @@
 #include <boot.h>
 #include <init.h>
 #include <io.h>
+#include <restart.h>
 #include <fs.h>
 #include <malloc.h>
 #include <libfile.h>
@@ -150,16 +151,17 @@ static int omap_env_init(void)
 late_initcall(omap_env_init);
 #endif
 
-void __noreturn reset_cpu(unsigned long addr)
+static int restart_register_feature(void)
 {
 	if (cpu_is_omap3())
-		omap3_reset_cpu(addr);
+		restart_handler_register_fn(omap3_restart_soc);
 	if (cpu_is_omap4())
-		omap4_reset_cpu(addr);
+		restart_handler_register_fn(omap4_restart_soc);
 	if (cpu_is_am33xx())
-		am33xx_reset_cpu(addr);
-	while (1);
+		restart_handler_register_fn(am33xx_restart_soc);
+	return 0;
 }
+coredevice_initcall(restart_register_feature);
 
 static int omap_soc_from_dt(void)
 {
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 2c27d81..c0281d6 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -16,6 +16,8 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/pxa-regs.h>
 #include <asm/io.h>
 
@@ -29,7 +31,7 @@
 
 extern void pxa_clear_reset_source(void);
 
-void reset_cpu(ulong addr)
+static void __noreturn pxa_restart_soc(struct restart_handler *rst)
 {
 	/* Clear last reset source */
 	pxa_clear_reset_source();
@@ -39,5 +41,13 @@ void reset_cpu(ulong addr)
 	writel(OSSR_M3, OSSR);
 	writel(readl(OSCR) + 368640, OSMR3);  /* ... in 100 ms */
 
-	while (1);
+	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(pxa_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-rockchip/core.c b/arch/arm/mach-rockchip/core.c
index bab06df..2428fee 100644
--- a/arch/arm/mach-rockchip/core.c
+++ b/arch/arm/mach-rockchip/core.c
@@ -13,16 +13,24 @@
 
 #include <asm/io.h>
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/rockchip-regs.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn rockchip_restart_soc(struct restart_handler *rst)
 {
 	/* Map bootrom from address 0 */
 	writel(RK_SOC_CON0_REMAP << 16, RK_GRF_BASE + RK_GRF_SOC_CON0);
 	/* Reset */
 	writel(0xeca8, RK_CRU_BASE + RK_CRU_GLB_SRST_SND);
 
-	while (1)
-		;
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(rockchip_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 75965d7..4f13fce 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -21,6 +21,7 @@
 #include <config.h>
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
 #include <mach/s3c-generic.h>
@@ -29,7 +30,7 @@
 #define S3C_WTDAT (S3C_WATCHDOG_BASE + 0x04)
 #define S3C_WTCNT (S3C_WATCHDOG_BASE + 0x08)
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn samsung_restart_soc(struct restart_handler *rst)
 {
 	/* Disable watchdog */
 	writew(0x0000, S3C_WTCON);
@@ -41,7 +42,13 @@ void __noreturn reset_cpu(unsigned long addr)
 	writew(0x0021, S3C_WTCON);
 
 	/* loop forever and wait for reset to happen */
-	while(1)
-		;
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(samsung_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-socfpga/reset-manager.c b/arch/arm/mach-socfpga/reset-manager.c
index a9e7e14..04522da 100644
--- a/arch/arm/mach-socfpga/reset-manager.c
+++ b/arch/arm/mach-socfpga/reset-manager.c
@@ -17,6 +17,8 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/socfpga-regs.h>
 #include <mach/reset-manager.h>
 
@@ -38,7 +40,7 @@ void watchdog_disable(void)
 }
 
 /* Write the reset manager register to cause reset */
-void reset_cpu(ulong addr)
+static void __noreturn socfpga_restart_soc(struct restart_handler *rst)
 {
 	/* request a warm reset */
 	writel((1 << RSTMGR_CTRL_SWWARMRSTREQ_LSB),
@@ -47,5 +49,13 @@ void reset_cpu(ulong addr)
 	 * infinite loop here as watchdog will trigger and reset
 	 * the processor
 	 */
-	while (1);
+	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(socfpga_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index eaa5ac7..71a9f14 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -36,13 +36,12 @@ static void __iomem *pmc_base;
 static int tegra_num_powerdomains;
 
 /* main SoC reset trigger */
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn tegra20_restart_soc(struct restart_handler *rst)
 {
 	writel(PMC_CNTRL_MAIN_RST, pmc_base + PMC_CNTRL);
 
-	unreachable();
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
 
 static int tegra_powergate_set(int id, bool new_state)
 {
@@ -219,7 +218,7 @@ static int tegra20_pmc_probe(struct device_d *dev)
 static int do_tegrarcm(int argc, char *argv[])
 {
 	writel(2, pmc_base + PMC_SCRATCH(0));
-	reset_cpu(0);
+	restart_machine();
 
 	return 0;
 }
@@ -244,6 +243,7 @@ static struct driver_d tegra20_pmc_driver = {
 
 static int tegra20_pmc_init(void)
 {
+	restart_handler_register_fn(tegra20_restart_soc);
 	return platform_driver_register(&tegra20_pmc_driver);
 }
 coredevice_initcall(tegra20_pmc_init);
diff --git a/arch/arm/mach-uemd/Makefile b/arch/arm/mach-uemd/Makefile
index f3cc668..16a2186 100644
--- a/arch/arm/mach-uemd/Makefile
+++ b/arch/arm/mach-uemd/Makefile
@@ -1 +1 @@
-obj-y += reset.o
+obj- := __dummy__.o
diff --git a/arch/arm/mach-uemd/reset.c b/arch/arm/mach-uemd/reset.c
deleted file mode 100644
index 00ae0be..0000000
--- a/arch/arm/mach-uemd/reset.c
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
-
-void __noreturn reset_cpu(ulong addr)
-{
-	hang();
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index c671aa6..7c6e952 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -26,6 +26,7 @@
 #include <init.h>
 #include <clock.h>
 #include <debug_ll.h>
+#include <restart.h>
 #include <linux/sizes.h>
 
 #include <linux/clkdev.h>
@@ -184,7 +185,7 @@ void versatile_register_uart(unsigned id)
 	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
 }
 
-void __noreturn reset_cpu (unsigned long ignored)
+static void versatile_reset_soc(struct restart_handler *rst)
 {
 	u32 val;
 
@@ -195,9 +196,8 @@ void __noreturn reset_cpu (unsigned long ignored)
 	__raw_writel(val, VERSATILE_SYS_RESETCTL);
 	__raw_writel(0, VERSATILE_SYS_LOCK);
 
-	while(1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
 
 static int versatile_init(void)
 {
@@ -205,6 +205,7 @@ static int versatile_init(void)
 	amba_apb_device_add(NULL, "pl061_gpio", 1, 0x101e5000, 4096, NULL, 0);
 	amba_apb_device_add(NULL, "pl061_gpio", 2, 0x101e6000, 4096, NULL, 0);
 	amba_apb_device_add(NULL, "pl061_gpio", 3, 0x101e7000, 4096, NULL, 0);
+	restart_handler_register_fn(versatile_reset_soc);
 	return 0;
 }
 coredevice_initcall(versatile_init);
diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
index ad6e06f..3164ae3 100644
--- a/arch/arm/mach-vexpress/reset.c
+++ b/arch/arm/mach-vexpress/reset.c
@@ -6,17 +6,26 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <linux/amba/sp805.h>
 
 #include <mach/devices.h>
 
 void __iomem *v2m_wdt_base;
 
-void reset_cpu(ulong addr)
+static void vexpress_reset_soc(struct restart_handler *rst)
 {
 	writel(LOAD_MIN, v2m_wdt_base + WDTLOAD);
 	writeb(RESET_ENABLE, v2m_wdt_base + WDTCONTROL);
 
-	while (1)
-		;
+	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(vexpress_reset_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index bd29e13..a0a8d0d 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -17,8 +17,19 @@
 #include <asm-generic/io.h>
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/zynq7000-regs.h>
 
+static void __noreturn zynq_restart_soc(struct restart_handler *rst)
+{
+	/* write unlock key to slcr */
+	writel(0xDF0D, ZYNQ_SLCR_UNLOCK);
+	/* reset */
+	writel(0x1, ZYNQ_PSS_RST_CTRL);
+
+	hang();
+}
+
 static int zynq_init(void)
 {
 	u32 val;
@@ -40,17 +51,8 @@ static int zynq_init(void)
 	add_generic_device("zynq-clock", 0, NULL, ZYNQ_SLCR_BASE, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("smp_twd", 0, NULL, CORTEXA9_SCU_TIMER_BASE_ADDR,
 				0x4000, IORESOURCE_MEM, NULL);
+	restart_handler_register_fn(zynq_restart_soc);
+
 	return 0;
 }
 postcore_initcall(zynq_init);
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	/* write unlock key to slcr */
-	writel(0xDF0D, ZYNQ_SLCR_UNLOCK);
-	/* reset */
-	writel(0x1, ZYNQ_PSS_RST_CTRL);
-
-	while (1)
-		;
-}
diff --git a/arch/blackfin/lib/cpu.c b/arch/blackfin/lib/cpu.c
index 9d4c6e3..deff370 100644
--- a/arch/blackfin/lib/cpu.c
+++ b/arch/blackfin/lib/cpu.c
@@ -27,8 +27,9 @@
 #include <asm/entry.h>
 #include <asm/cpu.h>
 #include <init.h>
+#include <restart.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn blackfin_restart_cpu(struct restart_handler *rst)
 {
 	icache_disable();
 
@@ -41,9 +42,15 @@ void __noreturn reset_cpu(unsigned long addr)
 	);
 
 	/* Not reached */
-	while (1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(blackfin_restart_cpu, NULL, RESET_SCOPE_CPU);
+}
+coredevice_initcall(restart_register_feature);
+
 void icache_disable(void)
 {
 #ifdef __ADSPBF537__
diff --git a/arch/blackfin/lib/traps.c b/arch/blackfin/lib/traps.c
index c2dda73..2111d25 100644
--- a/arch/blackfin/lib/traps.c
+++ b/arch/blackfin/lib/traps.c
@@ -30,6 +30,7 @@
  */
 
 #include <common.h>
+#include <restart.h>
 #include <linux/types.h>
 #include <asm/system.h>
 #include <asm/traps.h>
@@ -91,7 +92,7 @@ void trap_c (struct pt_regs *regs)
 
 	printf("\nPlease reset the board\n");
 
-	reset_cpu(0);
+	restart_machine();
 }
 
 void blackfin_irq_panic(int reason, struct pt_regs *regs)
@@ -101,6 +102,6 @@ void blackfin_irq_panic(int reason, struct pt_regs *regs)
 	printf("Unhandled IRQ or exceptions!\n");
 	printf("Please reset the board \n");
 
-	reset_cpu(0);
+	restart_machine();
 }
 
diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index d3f520f..719d721 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -24,6 +24,7 @@
 #include <command.h>
 #include <magicvar.h>
 #include <init.h>
+#include <restart.h>
 #include <driver.h>
 #include <ns16550.h>
 #include <io.h>
@@ -273,13 +274,21 @@ static int efi_console_init(void)
 }
 console_initcall(efi_console_init);
 
-void reset_cpu(unsigned long addr)
+static void __noreturn efi_restart_system(struct restart_handler *rst)
 {
 	RT->reset_system(EFI_RESET_WARM, EFI_SUCCESS, 0, NULL);
 
-	while(1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(efi_restart_system, NULL, RESET_SCOPE_MACHINE);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
+
 extern char image_base[];
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 0e03aa9..84f72f5 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -5,6 +5,7 @@
 #include <fs.h>
 #include <errno.h>
 #include <binfmt.h>
+#include <restart.h>
 
 #include <asm/byteorder.h>
 
@@ -20,7 +21,7 @@ static int do_bootm_barebox(struct image_data *data)
 
 	barebox();
 
-	reset_cpu(0);
+	restart_machine();
 }
 
 static struct image_handler barebox_handler = {
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index 0788add..318f772 100644
--- a/arch/mips/mach-ar231x/ar231x_reset.c
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -10,6 +10,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
+#include <restart.h>
 #include <linux/err.h>
 
 #include <mach/ar2312_regs.h>
@@ -17,16 +18,16 @@
 
 static void __iomem *reset_base;
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn ar2312x_restart_soc(struct restart_handler *rst)
 {
 	printf("reseting cpu\n");
 	__raw_writel(0x10000,
 		(char *)KSEG1ADDR(AR2312_WD_TIMER));
 	__raw_writel(AR2312_WD_CTRL_RESET,
 		(char *)KSEG1ADDR(AR2312_WD_CTRL));
-	unreachable();
+
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
 
 static u32 ar231x_reset_readl(void)
 {
@@ -69,6 +70,7 @@ static struct driver_d ar231x_reset_driver = {
 
 static int ar231x_reset_init(void)
 {
+	restart_handler_register_fn(ar2312x_restart_soc);
 	return platform_driver_register(&ar231x_reset_driver);
 }
 coredevice_initcall(ar231x_reset_init);
diff --git a/arch/mips/mach-ath79/reset.c b/arch/mips/mach-ath79/reset.c
index a0e9b34..0665788 100644
--- a/arch/mips/mach-ath79/reset.c
+++ b/arch/mips/mach-ath79/reset.c
@@ -16,9 +16,11 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/ath79.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn ath79_restart_soc(struct restart_handler *rst)
 {
 	ath79_reset_wr(AR933X_RESET_REG_RESET_MODULE, AR71XX_RESET_FULL_CHIP);
 	/*
@@ -26,7 +28,14 @@ void __noreturn reset_cpu(ulong addr)
 	 * pulling the reset pin. The system will reboot with PLL disabled.
 	 * Always zero when read.
 	 */
-	unreachable();
+	hang();
 	/*NOTREACHED*/
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(ath79_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
index 00aee19..6287adb 100644
--- a/arch/mips/mach-bcm47xx/reset.c
+++ b/arch/mips/mach-bcm47xx/reset.c
@@ -17,12 +17,22 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn bcm47xx_restart_soc(struct restart_handler *rst)
 {
 	__raw_writel(GORESET, (char *)SOFTRES_REG);
-	while (1);
+
+	hang();
 	/*NOTREACHED*/
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(bcm47xx_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
index 8975392..7a8f1d6 100644
--- a/arch/mips/mach-loongson/loongson1_reset.c
+++ b/arch/mips/mach-loongson/loongson1_reset.c
@@ -14,14 +14,23 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/loongson1.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn longhorn_restart_soc(struct restart_handler *rst)
 {
 	__raw_writel(0x1, LS1X_WDT_EN);
 	__raw_writel(0x1, LS1X_WDT_SET);
 	__raw_writel(0x1, LS1X_WDT_TIMER);
 
-	unreachable();
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(longhorn_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
index f1dc68a..ff29cd5 100644
--- a/arch/mips/mach-malta/reset.c
+++ b/arch/mips/mach-malta/reset.c
@@ -22,12 +22,22 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn malta_restart_soc(struct restart_handler *rst)
 {
 	__raw_writel(GORESET, (char *)SOFTRES_REG);
-	while (1);
+
+	hang();
 	/*NOTREACHED*/
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(malta_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/nios2/cpu/cpu.c b/arch/nios2/cpu/cpu.c
index fdbe9f9..b2164af 100644
--- a/arch/nios2/cpu/cpu.c
+++ b/arch/nios2/cpu/cpu.c
@@ -18,14 +18,22 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 #include <asm/system.h>
 
-void __noreturn reset_cpu(ulong ignored)
+static void __noreturn nios2_restart_soc(struct restart_handler *rst)
 {
 	/* indirect call to go beyond 256MB limitation of toolchain */
 	nios2_callr(RESET_ADDR);
 
 	/* Not reached */
-	while (1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(nios2_restart_soc);
+}
+coredevice_initcall(restart_register_feature);
+
diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
index d73a418..d52b021 100644
--- a/arch/openrisc/cpu/cpu.c
+++ b/arch/openrisc/cpu/cpu.c
@@ -19,6 +19,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <asm/system.h>
 #include <asm/openrisc_exc.h>
 
@@ -29,11 +30,17 @@ int cleanup_before_linux(void)
 
 extern void __reset(void);
 
-void __noreturn reset_cpu(ulong ignored)
+static void __noreturn openrisc_restart_cpu(struct restart_handler *rst)
 {
 	__reset();
 	/* not reached, __reset does not return */
 
 	/* Not reached */
-	while (1);
+	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(openrisc_restart_cpu, NULL, RESET_SCOPE_CPU);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index e25efec..409c0cf 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -10,6 +10,7 @@
 #include <asm/processor.h>
 #include <boot.h>
 #include <errno.h>
+#include <restart.h>
 #include <fs.h>
 
 static int bootm_relocate_fdt(void *addr, struct image_data *data)
@@ -87,7 +88,7 @@ static int do_bootm_linux(struct image_data *data)
 	 */
 	kernel(data->oftree, kernel, 0, 0, 0);
 
-	reset_cpu(0);
+	restart_machine();
 
 error:
 	return -1;
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 3f826e4..33835e7 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -31,6 +31,7 @@
 #include <types.h>
 #include <errno.h>
 #include <of.h>
+#include <restart.h>
 #include <mach/clock.h>
 
 int checkcpu (void)
@@ -59,7 +60,7 @@ int checkcpu (void)
 
 /* ------------------------------------------------------------------------- */
 
-void __noreturn reset_cpu (unsigned long addr)
+static void __noreturn mpc5xxx_restart_soc(struct restart_handler *rst)
 {
 	ulong msr;
 	/* Interrupts and MMU off */
@@ -71,9 +72,15 @@ void __noreturn reset_cpu (unsigned long addr)
 	/* Charge the watchdog timer */
 	*(vu_long *)(MPC5XXX_GPT0_COUNTER) = 0x0001000f;
 	*(vu_long *)(MPC5XXX_GPT0_ENABLE) = 0x9004; /* wden|ce|timer_ms */
-	while(1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(mpc5xxx_restart_soc);
+}
+coredevice_initcall(restart_register_feature);
+
 /* ------------------------------------------------------------------------- */
 
 #ifdef CONFIG_OFTREE
diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/ppc/mach-mpc85xx/cpu.c
index 7c183c1..42464e8 100644
--- a/arch/ppc/mach-mpc85xx/cpu.c
+++ b/arch/ppc/mach-mpc85xx/cpu.c
@@ -26,12 +26,13 @@
 #include <common.h>
 #include <memory.h>
 #include <init.h>
+#include <restart.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm-generic/memory_layout.h>
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn mpc85xx_restart_soc(struct restart_handler *rst)
 {
 	void __iomem *regs = (void __iomem *)MPC85xx_GUTS_ADDR;
 
@@ -39,10 +40,17 @@ void __noreturn reset_cpu(unsigned long addr)
 	out_be32(regs + MPC85xx_GUTS_RSTCR_OFFSET, 0x2);  /* HRESET_REQ */
 	udelay(100);
 
-	while (1)
-		;
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_handler_register_fn(mpc85xx_restart_soc);
+
+	return 0;
+}
+coredevice_initcall(restart_register_feature);
+
 long int initdram(int board_type)
 {
 	phys_size_t dram_size = 0;
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 4601163..333638c 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -4,5 +4,6 @@ obj-y += hostfile.o
 obj-y += console.o
 obj-y += devices.o
 obj-y += dtb.o
+obj-y += restart.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 990173e..3fa581e 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -15,6 +15,7 @@ int linux_read_nonblock(int fd, void *buf, size_t count);
 ssize_t linux_write(int fd, const void *buf, size_t count);
 off_t linux_lseek(int fildes, off_t offset);
 int linux_tstc(int fd);
+void __noreturn linux_exit(void);
 
 int linux_execve(const char * filename, char *const argv[], char *const envp[]);
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index d627391..bbcb872 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -115,7 +115,7 @@ uint64_t linux_get_time(void)
 	return now;
 }
 
-void __attribute__((noreturn)) reset_cpu(unsigned long addr)
+void __noreturn linux_exit(void)
 {
 	cookmode();
 	exit(0);
@@ -133,7 +133,7 @@ int linux_read(int fd, void *buf, size_t count)
 
 		if (ret == 0) {
 			printf("read on fd %d returned 0, device gone? - exiting\n", fd);
-			reset_cpu(0);
+			linux_exit();
 		} else if (ret == -1) {
 			if (errno == EAGAIN)
 				return -errno;
@@ -141,7 +141,7 @@ int linux_read(int fd, void *buf, size_t count)
 				continue;
 			else {
 				printf("read on fd %d returned -1, errno %d - exiting\n", fd, errno);
-				reset_cpu(0);
+				linux_exit();
 			}
 		}
 	} while (ret <= 0);
diff --git a/arch/x86/mach-i386/Makefile b/arch/x86/mach-i386/Makefile
index e46aa5b..225b481 100644
--- a/arch/x86/mach-i386/Makefile
+++ b/arch/x86/mach-i386/Makefile
@@ -1,4 +1,2 @@
-obj-y += reset.o
-
 # reference clocksource
 obj-y += pit_timer.o
diff --git a/arch/x86/mach-i386/reset.c b/arch/x86/mach-i386/reset.c
deleted file mode 100644
index 65f7d35..0000000
--- a/arch/x86/mach-i386/reset.c
+++ /dev/null
@@ -1,30 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- *
- */
-
-/**
- * @file
- * @brief Resetting an x86 CPU
- */
-
-#include <common.h>
-
-void __noreturn reset_cpu(unsigned long addr)
-{
-	/** How to reset the machine? */
-	while(1)
-		;
-}
-EXPORT_SYMBOL(reset_cpu);
diff --git a/commands/reset.c b/commands/reset.c
index 4f42b91..8300480 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -21,6 +21,7 @@
 #include <command.h>
 #include <complete.h>
 #include <getopt.h>
+#include <restart.h>
 
 static int cmd_reset(int argc, char *argv[])
 {
@@ -39,7 +40,7 @@ static int cmd_reset(int argc, char *argv[])
 	if (shutdown_flag)
 		shutdown_barebox();
 
-	reset_cpu(0);
+	restart_machine();
 
 	/* Not reached */
 	return 1;
diff --git a/common/Makefile b/common/Makefile
index ed131c8..1e7a081 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -8,6 +8,7 @@ obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
 obj-y				+= resource.o
 obj-y				+= bootsource.o
+obj-y				+= restart.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_BANNER)		+= version.o
 obj-$(CONFIG_BAREBOX_UPDATE)	+= bbu.o
diff --git a/common/misc.c b/common/misc.c
index 6da71c7..5532349 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -24,6 +24,7 @@
 #include <environment.h>
 #include <led.h>
 #include <of.h>
+#include <restart.h>
 
 int errno;
 EXPORT_SYMBOL(errno);
@@ -206,7 +207,7 @@ void __noreturn panic(const char *fmt, ...)
 		hang();
 	} else {
 		udelay(100000);	/* allow messages to go out */
-		reset_cpu(0);
+		restart_machine();
 	}
 }
 EXPORT_SYMBOL(panic);
diff --git a/common/restart.c b/common/restart.c
new file mode 100644
index 0000000..8fd5ffd
--- /dev/null
+++ b/common/restart.c
@@ -0,0 +1,112 @@
+/*
+ * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#define pr_fmt(fmt) "restart: " fmt
+
+#include <common.h>
+#include <restart.h>
+#include <malloc.h>
+#include <of.h>
+
+static LIST_HEAD(restart_handler_list);
+
+/**
+ * restart_handler_register() - register a handler for restarting the system
+ * @rst:	The handler struct
+ *
+ * This adds @rst to the list of registered restart handlers.
+ *
+ * return: 0 for success or negative error code
+ */
+int restart_handler_register(struct restart_handler *rst)
+{
+	if (!rst->name)
+		rst->name = RESTART_DEFAULT_NAME;
+	if (!rst->priority)
+		rst->priority = RESTART_DEFAULT_PRIORITY;
+
+	list_add_tail(&rst->list, &restart_handler_list);
+
+	pr_debug("registering restart handler \"%s\" with priority %d\n",
+			rst->name, rst->priority);
+
+	return 0;
+}
+
+/**
+ * restart_handler_register_fn() - register a handler function
+ * @restart_fn:	The restart function
+ *
+ * convenience wrapper for restart_handler_register() to register a handler
+ * with given function and default values otherwise.
+ *
+ * return: 0 for success or negative error code
+ */
+int restart_handler_register_fn(void (*restart_fn)(struct restart_handler *))
+{
+	struct restart_handler *rst;
+	int ret;
+
+	rst = xzalloc(sizeof(*rst));
+
+	rst->restart = restart_fn;
+
+	ret = restart_handler_register(rst);
+
+	if (ret)
+		free(rst);
+
+	return ret;
+}
+
+/**
+ * restart_machine() - reset the whole system
+ */
+void __noreturn restart_machine(void)
+{
+	struct restart_handler *rst = NULL, *tmp;
+	unsigned int priority = 0;
+
+	list_for_each_entry(tmp, &restart_handler_list, list) {
+		if (tmp->priority > priority) {
+			priority = tmp->priority;
+			rst = tmp;
+		}
+	}
+
+	if (rst) {
+		pr_debug("%s: using restart handler %s\n", __func__, rst->name);
+		console_flush();
+		rst->restart(rst);
+	}
+
+	hang();
+}
+
+/**
+ * of_get_restart_priority() - get the desired restart priority from device tree
+ * @node:	The device_node to read the property from
+ *
+ * return: The priority
+ */
+unsigned int of_get_restart_priority(struct device_node *node)
+{
+	unsigned int priority = RESTART_DEFAULT_PRIORITY;
+
+	of_property_read_u32(node, "restart-priority", &priority);
+
+	return priority;
+}
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 76879db..bf28f7c 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -31,6 +31,7 @@
 #include <progress.h>
 #include <environment.h>
 #include <globalvar.h>
+#include <restart.h>
 #include <usb/ch9.h>
 #include <usb/gadget.h>
 #include <usb/fastboot.h>
@@ -520,7 +521,7 @@ static int fastboot_tx_print(struct f_fastboot *f_fb, const char *fmt, ...)
 
 static void compl_do_reset(struct usb_ep *ep, struct usb_request *req)
 {
-	reset_cpu(0);
+	restart_machine();
 }
 
 static void cb_reboot(struct usb_ep *ep, struct usb_request *req, const char *cmd)
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 9f09f6e..4621d41 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -18,6 +18,7 @@
 #include <of.h>
 #include <errno.h>
 #include <malloc.h>
+#include <restart.h>
 #include <watchdog.h>
 #include <reset_source.h>
 
@@ -33,6 +34,7 @@ struct imx_wd {
 	void __iomem *base;
 	struct device_d *dev;
 	const struct imx_wd_ops *ops;
+	struct restart_handler restart;
 };
 
 #define to_imx_wd(h) container_of(h, struct imx_wd, wd)
@@ -121,12 +123,11 @@ static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	return priv->ops->set_timeout(priv, timeout);
 }
 
-static struct imx_wd *reset_wd;
-
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
 {
-	if (reset_wd)
-		reset_wd->ops->set_timeout(reset_wd, -1);
+	struct imx_wd *priv = container_of(rst, struct imx_wd, restart);
+
+	priv->ops->set_timeout(priv, -1);
 
 	mdelay(1000);
 
@@ -187,9 +188,6 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
 	priv->dev = dev;
 
-	if (!reset_wd)
-		reset_wd = priv;
-
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
 		ret = watchdog_register(&priv->wd);
 		if (ret)
@@ -206,14 +204,18 @@ static int imx_wd_probe(struct device_d *dev)
 
 	dev->priv = priv;
 
+	priv->restart.name = "imxwd";
+	priv->restart.restart = imxwd_force_soc_reset;
+
+	restart_handler_register(&priv->restart);
+
 	return 0;
 
 error_unregister:
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX))
 		watchdog_deregister(&priv->wd);
 on_error:
-	if (reset_wd && reset_wd != priv)
-		free(priv);
+	free(priv);
 	return ret;
 }
 
diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
index 8ac51e0..fa7d1f7 100644
--- a/drivers/watchdog/jz4740.c
+++ b/drivers/watchdog/jz4740.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <io.h>
 
 #define JZ_REG_WDT_TIMER_DATA     0x0
@@ -42,30 +43,25 @@ struct jz4740_wdt_drvdata {
 	void __iomem *base;
 };
 
-static struct jz4740_wdt_drvdata *reset_wd;
-
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn jz4740_reset_soc(struct restart_handler *rst)
 {
-	if (reset_wd) {
-		void __iomem *base = reset_wd->base;
+	struct jz4740_wdt_drvdata *priv = ctx;
+	void __iomem *base = priv->base;
 
-		writew(JZ_WDT_CLOCK_DIV_4 | JZ_WDT_CLOCK_EXT,
-				base + JZ_REG_WDT_TIMER_CONTROL);
-		writew(0, base + JZ_REG_WDT_TIMER_COUNTER);
+	writew(JZ_WDT_CLOCK_DIV_4 | JZ_WDT_CLOCK_EXT,
+			base + JZ_REG_WDT_TIMER_CONTROL);
+	writew(0, base + JZ_REG_WDT_TIMER_COUNTER);
 
-		/* reset after 4ms */
-		writew(JZ_EXTAL / 1000, base + JZ_REG_WDT_TIMER_DATA);
+	/* reset after 4ms */
+	writew(JZ_EXTAL / 1000, base + JZ_REG_WDT_TIMER_DATA);
 
-		/* start wdt */
-		writeb(0x1, base + JZ_REG_WDT_COUNTER_ENABLE);
+	/* start wdt */
+	writeb(0x1, base + JZ_REG_WDT_COUNTER_ENABLE);
 
-		mdelay(1000);
-	} else
-		pr_err("%s: can't reset cpu\n", __func__);
+	mdelay(1000);
 
 	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
 
 static int jz4740_wdt_probe(struct device_d *dev)
 {
@@ -78,11 +74,9 @@ static int jz4740_wdt_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	if (!reset_wd)
-		reset_wd = priv;
-
 	dev->priv = priv;
 
+	restart_handler_register_fn(jz4740_reset_soc);
 	return 0;
 }
 
diff --git a/include/common.h b/include/common.h
index 6b9dd4d..553a7f4 100644
--- a/include/common.h
+++ b/include/common.h
@@ -67,7 +67,6 @@ int	readline	(const char *prompt, char *buf, int len);
 long	get_ram_size  (volatile long *, long);
 
 /* $(CPU)/cpu.c */
-void __noreturn reset_cpu(unsigned long addr);
 void __noreturn poweroff(void);
 
 /* lib_$(ARCH)/time.c */
diff --git a/include/restart.h b/include/restart.h
new file mode 100644
index 0000000..79b57c8
--- /dev/null
+++ b/include/restart.h
@@ -0,0 +1,21 @@
+#ifndef __INCLUDE_RESTART_H
+#define __INCLUDE_RESTART_H
+
+void __noreturn restart_machine(void);
+
+struct restart_handler {
+	void (*restart)(struct restart_handler *);
+	int priority;
+	const char *name;
+	struct list_head list;
+};
+
+int restart_handler_register(struct restart_handler *);
+int restart_handler_register_fn(void (*restart_fn)(struct restart_handler *));
+
+#define RESTART_DEFAULT_PRIORITY 100
+#define RESTART_DEFAULT_NAME "default"
+
+unsigned int of_get_restart_priority(struct device_node *node);
+
+#endif /* __INCLUDE_RESTART_H */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
