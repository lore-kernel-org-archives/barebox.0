Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6z31-0002Rw-0M
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 10:34:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002E1-H8
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z6z2d-0002j1-9E
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 12:33:27 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 22 Jun 2015 12:33:21 +0200
Message-Id: <1434969204-11433-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
References: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/6] System restart: add a scope value to the system restart
 feature
To: barebox@lists.infradead.org

Some systems have more than one feature to restart it. Maybe these restarts
features are all equal or it is very important which restart feauture is used
to restart the system in a reliable manner. For example if external
devices must be reset in conjunction with the SoC some SoC's internal
restart features cannot be used. Then an external restart feature must
be forced instead by using the restart feature with the wider scope.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/system-reset.rst              | 41 +++++++++++
 arch/arm/lib/bootm.c                             |  7 +-
 arch/arm/mach-at91/at91rm9200_time.c             | 12 ++-
 arch/arm/mach-bcm2835/core.c                     | 12 ++-
 arch/arm/mach-clps711x/reset.c                   | 10 ++-
 arch/arm/mach-davinci/time.c                     | 12 ++-
 arch/arm/mach-digic/core.c                       | 11 ++-
 arch/arm/mach-ep93xx/clocksource.c               | 17 +++--
 arch/arm/mach-highbank/reset.c                   | 12 ++-
 arch/arm/mach-mvebu/armada-370-xp.c              |  9 ++-
 arch/arm/mach-mvebu/common.c                     | 13 ----
 arch/arm/mach-mvebu/dove.c                       |  9 ++-
 arch/arm/mach-mvebu/include/mach/common.h        |  1 -
 arch/arm/mach-mvebu/kirkwood.c                   |  9 ++-
 arch/arm/mach-mxs/soc-imx23.c                    | 13 +++-
 arch/arm/mach-mxs/soc-imx28.c                    | 13 +++-
 arch/arm/mach-netx/generic.c                     | 12 ++-
 arch/arm/mach-nomadik/reset.c                    | 13 +++-
 arch/arm/mach-omap/am33xx_generic.c              |  5 +-
 arch/arm/mach-omap/include/mach/am33xx-generic.h |  2 +-
 arch/arm/mach-omap/include/mach/omap3-generic.h  |  2 +-
 arch/arm/mach-omap/include/mach/omap4-generic.h  |  2 +-
 arch/arm/mach-omap/omap3_generic.c               |  5 +-
 arch/arm/mach-omap/omap4_generic.c               |  4 +-
 arch/arm/mach-omap/omap_generic.c                | 12 +--
 arch/arm/mach-pxa/common.c                       | 12 ++-
 arch/arm/mach-rockchip/core.c                    | 14 +++-
 arch/arm/mach-samsung/generic.c                  | 13 +++-
 arch/arm/mach-socfpga/reset-manager.c            | 12 ++-
 arch/arm/mach-tegra/tegra20-pmc.c                |  7 +-
 arch/arm/mach-uemd/reset.c                       | 11 ++-
 arch/arm/mach-versatile/core.c                   |  7 +-
 arch/arm/mach-vexpress/reset.c                   | 13 +++-
 arch/arm/mach-zynq/zynq.c                        | 12 ++-
 arch/blackfin/lib/cpu.c                          | 11 ++-
 arch/efi/efi/efi.c                               | 11 ++-
 arch/mips/mach-ar231x/ar231x_reset.c             |  8 +-
 arch/mips/mach-ath79/reset.c                     | 13 +++-
 arch/mips/mach-bcm47xx/reset.c                   | 14 +++-
 arch/mips/mach-loongson/loongson1_reset.c        | 13 +++-
 arch/mips/mach-malta/reset.c                     | 14 +++-
 arch/nios2/cpu/cpu.c                             | 12 ++-
 arch/openrisc/cpu/cpu.c                          | 11 ++-
 arch/ppc/mach-mpc5xxx/cpu.c                      | 11 ++-
 arch/ppc/mach-mpc85xx/cpu.c                      | 12 ++-
 arch/sandbox/os/common.c                         | 10 ++-
 arch/x86/mach-i386/reset.c                       | 14 +++-
 commands/reset.c                                 |  3 +-
 common/Makefile                                  |  1 +
 common/misc.c                                    |  3 +-
 common/restart.c                                 | 93 ++++++++++++++++++++++++
 drivers/usb/gadget/f_fastboot.c                  |  3 +-
 drivers/watchdog/imxwd.c                         | 24 +++---
 drivers/watchdog/jz4740.c                        | 33 ++++-----
 include/common.h                                 |  1 -
 include/restart.h                                | 22 ++++++
 56 files changed, 524 insertions(+), 172 deletions(-)
 create mode 100644 common/restart.c
 create mode 100644 include/restart.h

diff --git a/Documentation/user/system-reset.rst b/Documentation/user/system-reset.rst
index e902026..c1c1bec 100644
--- a/Documentation/user/system-reset.rst
+++ b/Documentation/user/system-reset.rst
@@ -3,6 +3,11 @@
 System Restart
 --------------
 
+.. _system_reset_pitfalls:
+
+Common Pitfalls
+~~~~~~~~~~~~~~~
+
 When running the reset command barebox restarts the SoC somehow. Restart can
 be done in software, but a more reliable way is to use a hard reset line, which
 really resets the whole machine.
@@ -63,3 +68,39 @@ detect the :ref:`reset_reason` anymore. From the SoC point of view it is always
 a POR when the PMIC handles the system reset. If you are in luck the PMIC
 instead can provide this information if you depend on it. Refer
 :ref:`reset_reason_scope` for further information.
+
+Handling the system restart from the developers point of view
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+Sometimes more than one system restart feature is available on a machine and
+due to 'some reasons' all these unit's drivers must be enabled at run-time
+(maybe they are MFDs (e.g. multi function devices) or you want to run one
+binary barebox on more than one machine). In such a case more than one driver
+registers its system reset feature at run-time. So a mechanism is required
+in order to let barebox selects the 'correct' one to trigger a system restart.
+
+Barebox can handle and use one system restart feature only. If the available
+system restart features are equivalent it doesn't matter which one barebox
+selects to trigger a system restart. But if your machine depends on a specific
+system restart feature you must ensure it will be used all the time to get a
+reliable system restart.
+
+To handle this, registering system restart features are handled by their scope.
+Due to the listed issues in :ref:`system_reset_pitfalls` all the (mostly) built-in
+watchdog units will register their system restart feature with a limited scope.
+And will still be used by barebox to restart the system if no alternative is
+available.
+If your machine has special requirements to restart the system and a more reliable
+system restart feature is on hand it must register its system restart feature
+with a wider scope. Barebox will then prefer the wider scope feature to restart
+the system.
+
+Here the list of defined scopes (defined in file ``include/fscope.h``):
+
+* ``FEATURE_SCOPE_UNKNOWN``: last resort to restart a machine and might be used
+  as a fall-back only.
+* ``FEATURE_SCOPE_CPU``: this restart feature is able to restart the core CPU only.
+* ``FEATURE_SCOPE_SOC``: this restart feature is able to restart the whole SoC,
+  including the core CPU.
+* ``FEATURE_SCOPE_MACHINE``: this restart feature is able to restart the whole machine,
+  including the SoC and the core CPU.
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
index ae0172b..be53b0c 100644
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
+static void __noreturn at91rm9200_restart_soc(struct device_d *dev)
 {
 	/*
 	 * Perform a hardware reset with the use of the Watchdog timer.
@@ -86,6 +87,11 @@ void __noreturn reset_cpu (unsigned long ignored)
 	at91_sys_write(AT91_ST_CR, AT91_ST_WDRST);
 
 	/* Not reached */
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(at91rm9200_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index 5d08012..79f3f48 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -18,6 +18,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 
 #include <linux/clk.h>
 #include <linux/clkdev.h>
@@ -72,7 +73,7 @@ void bcm2835_add_device_sdram(u32 size)
 }
 #define RESET_TIMEOUT 10
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn bcm2835_restart_soc(struct device_d *dev)
 {
 	uint32_t rstc;
 
@@ -82,6 +83,11 @@ void __noreturn reset_cpu(unsigned long addr)
 	writel(PM_PASSWORD | RESET_TIMEOUT, PM_WDOG);
 	writel(PM_PASSWORD | rstc, PM_RSTC);
 
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(bcm2835_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-clps711x/reset.c b/arch/arm/mach-clps711x/reset.c
index 67c9c8b..6ba73cc 100644
--- a/arch/arm/mach-clps711x/reset.c
+++ b/arch/arm/mach-clps711x/reset.c
@@ -8,8 +8,10 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn clps711x_restart_soc(struct device_d *dev)
 {
 	arch_shutdown();
 
@@ -17,3 +19,9 @@ void __noreturn reset_cpu(unsigned long addr)
 
 	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(clps711x_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
index 60f0d19..2c0ab8c 100644
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
+static void __noreturn davinci_restart_soc(struct device_d *dev)
 {
 	u32 tgcr, wdtcr;
 	void __iomem *base;
@@ -204,6 +205,11 @@ void __noreturn reset_cpu(ulong addr)
 	wdtcr = 0x00004000;
 	__raw_writel(wdtcr, base + WDTCR);
 
-	unreachable();
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(davinci_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-digic/core.c b/arch/arm/mach-digic/core.c
index b1caec0..321459f 100644
--- a/arch/arm/mach-digic/core.c
+++ b/arch/arm/mach-digic/core.c
@@ -16,10 +16,17 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 
-void __noreturn reset_cpu(unsigned long ignored)
+static void __noreturn digic_restart_soc(struct device_d *dev)
 {
 	pr_err("%s: unimplemented\n", __func__);
 	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(digic_restart_soc, NULL, FEATURE_SCOPE_UNKNOWN);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index f396d0a..4e1bc7b 100644
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
+static void __noreturn ep92xx_restart_soc(struct device_d *dev)
 {
 	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
 	uint32_t value;
@@ -84,7 +83,11 @@ void __noreturn reset_cpu(unsigned long addr)
 	writel(value, &syscon->devicecfg);
 
 	/* Dying... */
-	while (1)
-		; /* noop */
+	hang();
+}
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(ep92xx_restart_soc, NULL, FEATURE_SCOPE_SOC);
 }
-EXPORT_SYMBOL(reset_cpu);
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
index b9664e4..3dd46af 100644
--- a/arch/arm/mach-highbank/reset.c
+++ b/arch/arm/mach-highbank/reset.c
@@ -6,17 +6,25 @@
 
 #include <common.h>
 #include <io.h>
+#include <restart.h>
+#include <init.h>
 
 #include <mach/devices.h>
 #include <mach/sysregs.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn highbank_restart_soc(struct device_d *dev)
 {
 	hingbank_set_pwr_hard_reset();
 	asm("	wfi");
 
-	while(1);
+	hang();
+}
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(highbank_restart_soc, NULL, FEATURE_SCOPE_SOC);
 }
+coredevice_initcall(restart_register_feature);
 
 void __noreturn poweroff()
 {
diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 2405629..342a995 100644
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
+static void __noreturn armada_370_xp_restart_soc(struct device_d *dev)
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
+	restart_add_scope(armada_370_xp_restart_soc, NULL, FEATURE_SCOPE_SOC);
 
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
index a7284fd..0efd6e3 100644
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
+static void __noreturn dove_restart_soc(struct device_d *dev)
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
+	restart_add_scope(dove_restart_soc, NULL, FEATURE_SCOPE_SOC);
 
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
index 19c6f07..18f7e29 100644
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
+static void __noreturn kirkwood_restart_soc(struct device_d *dev)
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
+	restart_add_scope(kirkwood_restart_soc, NULL, FEATURE_SCOPE_SOC);
 
 	barebox_set_model("Marvell Kirkwood");
 	barebox_set_hostname("kirkwood");
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index 339c577..06e68e9 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/imx23-regs.h>
 #include <io.h>
 
@@ -23,18 +24,22 @@
 # define HW_CLKCTRL_RESET_CHIP (1 << 1)
 
 /* Reset the full i.MX23 SoC via a chipset feature */
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn imx23_restart_soc(struct device_d *dev)
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
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(imx23_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
 
 static int imx23_devices_init(void)
 {
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index b4ec38d..d4883f4 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/imx28-regs.h>
 #include <io.h>
 
@@ -24,18 +25,22 @@
 #define HW_CLKCTRL_WDOG_POR_DISABLE (1 << 5)
 
 /* Reset the full i.MX28 SoC via a chipset feature */
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn imx28_restart_soc(struct device_d *dev)
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
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(imx28_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
 
 static int imx28_init(void)
 {
diff --git a/arch/arm/mach-netx/generic.c b/arch/arm/mach-netx/generic.c
index 6127dde..7f5239a 100644
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
 
@@ -134,14 +136,20 @@ failure:
 	return COMMAND_ERROR_USAGE;
 }
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn netx_restart_soc(struct device_d *dev)
 {
 	SYSTEM_REG(SYSTEM_RES_CR) = 0x01000008;
 
 	/* Not reached */
-	while (1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_add_scope(netx_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
+
 
 BAREBOX_CMD_START(loadxc)
 	.cmd		= do_loadxc,
diff --git a/arch/arm/mach-nomadik/reset.c b/arch/arm/mach-nomadik/reset.c
index bb5696a..440312b 100644
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
+static void __noreturn nomadik_restart_soc(struct device_d *dev)
 {
 	void __iomem *src_rstsr = (void *)(NOMADIK_SRC_BASE + 0x18);
 
@@ -28,6 +30,11 @@ void __noreturn reset_cpu(unsigned long addr)
 	writel(1, src_rstsr);
 
 	/* Not reached */
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(nomadik_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 655bea6..b2c515f 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -27,12 +27,13 @@
 #include <mach/am33xx-generic.h>
 #include <mach/gpmc.h>
 #include <reset_source.h>
+#include <restart.h>
 
-void __noreturn am33xx_reset_cpu(unsigned long addr)
+void __noreturn am33xx_restart_soc(struct device_d *dev)
 {
 	writel(AM33XX_PRM_RSTCTRL_RESET, AM33XX_PRM_RSTCTRL);
 
-	while (1);
+	hang();
 }
 
 /**
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index 03418b0..22e2647 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -28,7 +28,7 @@ u32 am33xx_running_in_flash(void);
 u32 am33xx_running_in_sram(void);
 u32 am33xx_running_in_sdram(void);
 
-void __noreturn am33xx_reset_cpu(unsigned long addr);
+void __noreturn am33xx_restart_soc(struct device_d *dev);
 
 void am33xx_enable_per_clocks(void);
 int am33xx_init(void);
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
index 7db0838..945fe25 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -24,7 +24,7 @@ u32 omap3_running_in_flash(void);
 u32 omap3_running_in_sram(void);
 u32 omap3_running_in_sdram(void);
 
-void __noreturn omap3_reset_cpu(unsigned long addr);
+void __noreturn omap3_restart_soc(struct device_d *dev);
 
 int omap3_init(void);
 int omap3_devices_init(void);
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
index e246e36..dff3330 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -18,7 +18,7 @@ static inline void omap4_save_bootinfo(uint32_t *info)
 	memcpy((void *)OMAP44XX_SRAM_SCRATCH_SPACE, info, 3 * sizeof(uint32_t));
 }
 
-void __noreturn omap4_reset_cpu(unsigned long addr);
+void __noreturn omap4_restart_soc(struct device_d *dev);
 
 int omap4_init(void);
 int omap4_devices_init(void);
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index dbb0b5f..88455ce 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -52,13 +52,12 @@
  *
  * @return void
  */
-void __noreturn omap3_reset_cpu(unsigned long addr)
+void __noreturn omap3_restart_soc(struct device_d *dev)
 {
 	writel(OMAP3_PRM_RSTCTRL_RESET, OMAP3_PRM_REG(RSTCTRL));
 
-	while (1);
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
 
 /**
  * @brief Low level CPU type
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 0b683da..2388d89 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -34,11 +34,11 @@
 #define EMIF_L3_CONFIG_VAL_SYS_10_LL_0		0x0A0000FF
 #define EMIF_L3_CONFIG_VAL_SYS_10_MPU_3_LL_0	0x0A300000
 
-void __noreturn omap4_reset_cpu(unsigned long addr)
+void __noreturn omap4_restart_soc(struct device_d *dev)
 {
 	writel(OMAP44XX_PRM_RSTCTRL_RESET, OMAP44XX_PRM_RSTCTRL);
 
-	while (1);
+	hang;
 }
 
 void omap4_set_warmboot_order(u32 *device_list)
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 334cf8d..75feea0 100644
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
+		restart_add_scope(omap3_restart_soc, NULL, FEATURE_SCOPE_SOC);
 	if (cpu_is_omap4())
-		omap4_reset_cpu(addr);
+		restart_add_scope(omap4_restart_soc, NULL, FEATURE_SCOPE_SOC);
 	if (cpu_is_am33xx())
-		am33xx_reset_cpu(addr);
-	while (1);
+		restart_add_scope(am33xx_restart_soc, NULL, FEATURE_SCOPE_SOC);
+	return 0;
 }
+coredevice_initcall(restart_register_feature);
 
 static int omap_soc_from_dt(void)
 {
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 2c27d81..74cafac 100644
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
+static void __noreturn pxa_restart_soc(struct device_d *dev)
 {
 	/* Clear last reset source */
 	pxa_clear_reset_source();
@@ -39,5 +41,11 @@ void reset_cpu(ulong addr)
 	writel(OSSR_M3, OSSR);
 	writel(readl(OSCR) + 368640, OSMR3);  /* ... in 100 ms */
 
-	while (1);
+	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(pxa_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-rockchip/core.c b/arch/arm/mach-rockchip/core.c
index bab06df..55da038 100644
--- a/arch/arm/mach-rockchip/core.c
+++ b/arch/arm/mach-rockchip/core.c
@@ -13,16 +13,22 @@
 
 #include <asm/io.h>
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/rockchip-regs.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn rockchip_restart_soc(struct device_d *dev)
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
+	restart_add_scope(rockchip_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index 75965d7..7939587 100644
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
+static void __noreturn samsung_restart_soc(struct device_d *dev)
 {
 	/* Disable watchdog */
 	writew(0x0000, S3C_WTCON);
@@ -41,7 +42,11 @@ void __noreturn reset_cpu(unsigned long addr)
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
+	restart_add_scope(samsung_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-socfpga/reset-manager.c b/arch/arm/mach-socfpga/reset-manager.c
index a9e7e14..1f644e2 100644
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
+static void __noreturn socfpga_restart_soc(struct device_d *dev)
 {
 	/* request a warm reset */
 	writel((1 << RSTMGR_CTRL_SWWARMRSTREQ_LSB),
@@ -47,5 +49,11 @@ void reset_cpu(ulong addr)
 	 * infinite loop here as watchdog will trigger and reset
 	 * the processor
 	 */
-	while (1);
+	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(socfpga_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 7970d87..e712cea 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -29,6 +29,7 @@
 #include <mach/lowlevel.h>
 #include <mach/tegra-powergate.h>
 #include <reset_source.h>
+#include <restart.h>
 
 #include <mach/tegra20-pmc.h>
 
@@ -36,13 +37,12 @@ static void __iomem *pmc_base;
 static int tegra_num_powerdomains;
 
 /* main SoC reset trigger */
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn tegra20_restart_soc(struct device_d *dev)
 {
 	writel(PMC_CNTRL_MAIN_RST, pmc_base + PMC_CNTRL);
 
-	unreachable();
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
 
 static int tegra_powergate_set(int id, bool new_state)
 {
@@ -244,6 +244,7 @@ static struct driver_d tegra20_pmc_driver = {
 
 static int tegra20_pmc_init(void)
 {
+	restart_add_scope(tegra20_restart_soc, NULL, FEATURE_SCOPE_SOC);
 	return platform_driver_register(&tegra20_pmc_driver);
 }
 coredevice_initcall(tegra20_pmc_init);
diff --git a/arch/arm/mach-uemd/reset.c b/arch/arm/mach-uemd/reset.c
index 00ae0be..28778fd 100644
--- a/arch/arm/mach-uemd/reset.c
+++ b/arch/arm/mach-uemd/reset.c
@@ -16,9 +16,16 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn uemd_restart_cpu(struct device_d *dev)
 {
 	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(uemd_restart_cpu, NULL, FEATURE_SCOPE_UNKNOWN);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index c671aa6..bbc2741 100644
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
+static void versatile_reset_soc(struct device_d *dev)
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
+	restart_add_scope(versatile_reset_soc, NULL, FEATURE_SCOPE_SOC);
 	return 0;
 }
 coredevice_initcall(versatile_init);
diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
index ad6e06f..19e21c0 100644
--- a/arch/arm/mach-vexpress/reset.c
+++ b/arch/arm/mach-vexpress/reset.c
@@ -6,17 +6,24 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <linux/amba/sp805.h>
 
 #include <mach/devices.h>
 
 void __iomem *v2m_wdt_base;
 
-void reset_cpu(ulong addr)
+static void vexpress_reset_soc(struct device_d *dev)
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
+	restart_add_scope(vexpress_reset_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index bd29e13..b39b4ab 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -17,6 +17,7 @@
 #include <asm-generic/io.h>
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <mach/zynq7000-regs.h>
 
 static int zynq_init(void)
@@ -44,13 +45,18 @@ static int zynq_init(void)
 }
 postcore_initcall(zynq_init);
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn zynq_restart_soc(struct device_d *dev)
 {
 	/* write unlock key to slcr */
 	writel(0xDF0D, ZYNQ_SLCR_UNLOCK);
 	/* reset */
 	writel(0x1, ZYNQ_PSS_RST_CTRL);
 
-	while (1)
-		;
+	hang();
 }
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(zynq_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/blackfin/lib/cpu.c b/arch/blackfin/lib/cpu.c
index 9d4c6e3..994bf11 100644
--- a/arch/blackfin/lib/cpu.c
+++ b/arch/blackfin/lib/cpu.c
@@ -27,8 +27,9 @@
 #include <asm/entry.h>
 #include <asm/cpu.h>
 #include <init.h>
+#include <restart.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn blackfin_restart_cpu(struct device_d *dev)
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
+	restart_add_scope(blackfin_restart_cpu, NULL, FEATURE_SCOPE_CPU);
+}
+coredevice_initcall(restart_register_feature);
+
 void icache_disable(void)
 {
 #ifdef __ADSPBF537__
diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index d351775..d380048 100644
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
@@ -246,13 +247,19 @@ static int efi_console_init(void)
 }
 console_initcall(efi_console_init);
 
-void reset_cpu(unsigned long addr)
+static void __noreturn efi_restart_system(struct device_d *dev)
 {
 	RT->reset_system(EFI_RESET_WARM, EFI_SUCCESS, 0, NULL);
 
-	while(1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_add_scope(efi_restart_cpu, NULL, FEATURE_SCOPE_MACHINE);
+}
+coredevice_initcall(restart_register_feature);
+
 extern char image_base[];
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index 0788add..7da3746 100644
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
+static void __noreturn ar2312x_restart_soc(struct device_d *dev)
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
+	restart_add_scope(ar2312x_restart_soc, NULL, FEATURE_SCOPE_SOC);
 	return platform_driver_register(&ar231x_reset_driver);
 }
 coredevice_initcall(ar231x_reset_init);
diff --git a/arch/mips/mach-ath79/reset.c b/arch/mips/mach-ath79/reset.c
index a0e9b34..7e778dd 100644
--- a/arch/mips/mach-ath79/reset.c
+++ b/arch/mips/mach-ath79/reset.c
@@ -16,9 +16,11 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/ath79.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn ath79_restart_soc(struct device_d *dev)
 {
 	ath79_reset_wr(AR933X_RESET_REG_RESET_MODULE, AR71XX_RESET_FULL_CHIP);
 	/*
@@ -26,7 +28,12 @@ void __noreturn reset_cpu(ulong addr)
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
+	restart_add_scope(ath79_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/mips/mach-bcm47xx/reset.c b/arch/mips/mach-bcm47xx/reset.c
index 00aee19..8cd8a66 100644
--- a/arch/mips/mach-bcm47xx/reset.c
+++ b/arch/mips/mach-bcm47xx/reset.c
@@ -17,12 +17,20 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn bcm47xx_restart_soc(struct device_d *dev)
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
+	restart_add_scope(bcm47xx_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/mips/mach-loongson/loongson1_reset.c b/arch/mips/mach-loongson/loongson1_reset.c
index 8975392..4c607c8 100644
--- a/arch/mips/mach-loongson/loongson1_reset.c
+++ b/arch/mips/mach-loongson/loongson1_reset.c
@@ -14,14 +14,21 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/loongson1.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn longhorn_restart_soc(struct device_d *dev)
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
+	restart_add_scope(longhorn_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
index f1dc68a..770e484 100644
--- a/arch/mips/mach-malta/reset.c
+++ b/arch/mips/mach-malta/reset.c
@@ -22,12 +22,20 @@
 
 #include <common.h>
 #include <io.h>
+#include <init.h>
+#include <restart.h>
 #include <mach/hardware.h>
 
-void __noreturn reset_cpu(ulong addr)
+static void __noreturn malta_restart_soc(struct device_d *dev)
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
+	restart_add_scope(malta_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/nios2/cpu/cpu.c b/arch/nios2/cpu/cpu.c
index fdbe9f9..e430165 100644
--- a/arch/nios2/cpu/cpu.c
+++ b/arch/nios2/cpu/cpu.c
@@ -18,14 +18,22 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 #include <asm/system.h>
 
-void __noreturn reset_cpu(ulong ignored)
+static void __noreturn nios2_restart_soc(struct device_d *dev)
 {
 	/* indirect call to go beyond 256MB limitation of toolchain */
 	nios2_callr(RESET_ADDR);
 
 	/* Not reached */
-	while (1);
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_add_scope(nios2_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
+
diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
index d73a418..1ed54cf 100644
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
+static void __noreturn openrisc_restart_cpu(struct device_d *dev)
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
+	restart_add_scope(openrisc_restart_cpu, NULL, FEATURE_SCOPE_CPU);
+}
+coredevice_initcall(restart_register_feature);
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index c860e70..9d429b1 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -31,6 +31,7 @@
 #include <types.h>
 #include <errno.h>
 #include <of.h>
+#include <restart.h>
 #include <mach/clocks.h>
 
 int checkcpu (void)
@@ -59,7 +60,7 @@ int checkcpu (void)
 
 /* ------------------------------------------------------------------------- */
 
-void __noreturn reset_cpu (unsigned long addr)
+static void __noreturn mpc5xxx_restart_soc(struct device_d *dev)
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
+	restart_add_scope(mpc5xxx_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
+
 /* ------------------------------------------------------------------------- */
 
 #ifdef CONFIG_OFTREE
diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/ppc/mach-mpc85xx/cpu.c
index 7c183c1..8ebf2d6 100644
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
+static void __noreturn mpc85xx_restart_soc(struct device_d *dev)
 {
 	void __iomem *regs = (void __iomem *)MPC85xx_GUTS_ADDR;
 
@@ -39,10 +40,15 @@ void __noreturn reset_cpu(unsigned long addr)
 	out_be32(regs + MPC85xx_GUTS_RSTCR_OFFSET, 0x2);  /* HRESET_REQ */
 	udelay(100);
 
-	while (1)
-		;
+	hang();
 }
 
+static int restart_register_feature(void)
+{
+	restart_add_scope(mpc85xx_restart_soc, NULL, FEATURE_SCOPE_SOC);
+}
+coredevice_initcall(restart_register_feature);
+
 long int initdram(int board_type)
 {
 	phys_size_t dram_size = 0;
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index d627391..d1c04f9 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -28,6 +28,8 @@
 #include <termios.h>
 #include <unistd.h>
 #include <fcntl.h>
+#include <init.h>
+#include <restart.h>
 #include <time.h>
 #include <getopt.h>
 #include <sys/types.h>
@@ -115,12 +117,18 @@ uint64_t linux_get_time(void)
 	return now;
 }
 
-void __attribute__((noreturn)) reset_cpu(unsigned long addr)
+static void __attribute__((noreturn)) sandbox_restart_cpu(struct device_d *dev)
 {
 	cookmode();
 	exit(0);
 }
 
+static int restart_register_feature(void)
+{
+	restart_add_scope(sandbox_restart_cpu, NULL, FEATURE_SCOPE_CPU);
+}
+coredevice_initcall(restart_register_feature);
+
 int linux_read(int fd, void *buf, size_t count)
 {
 	ssize_t ret;
diff --git a/arch/x86/mach-i386/reset.c b/arch/x86/mach-i386/reset.c
index 65f7d35..9ed1ecf 100644
--- a/arch/x86/mach-i386/reset.c
+++ b/arch/x86/mach-i386/reset.c
@@ -20,11 +20,17 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <restart.h>
 
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn x86_reset_cpu(struct device_d *dev)
 {
 	/** How to reset the machine? */
-	while(1)
-		;
+	hang();
 }
-EXPORT_SYMBOL(reset_cpu);
+
+static int restart_register_feature(void)
+{
+	restart_add_scope(x86_reset_cpu, NULL, FEATURE_SCOPE_UNKNOWN);
+}
+coredevice_initcall(restart_register_feature);
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
index 2738238..beb3994 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -8,6 +8,7 @@ obj-y				+= misc.o
 obj-y				+= memsize.o
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
index 0000000..9d1f7fc
--- /dev/null
+++ b/common/restart.c
@@ -0,0 +1,93 @@
+/*
+ * (C) Copyright 2015 Juergen Borleis - <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <restart.h>
+#include <globalvar.h>
+
+static struct device_d *resetd;
+static void (*resetf)(struct device_d*);
+static enum f_scope avail_scope;
+
+void __noreturn restart_machine(void)
+{
+	if (resetf != NULL)
+		resetf(resetd);
+	hang();
+}
+
+static void restart_update_global_info(void)
+{
+	const char *scope;
+
+	if (resetd == NULL)
+		globalvar_set_match("system.restart.unit", "unknown");
+	else
+		globalvar_set_match("system.restart.unit", resetd->name);
+
+	switch (avail_scope) {
+	case FEATURE_SCOPE_CPU:
+		scope = NAME_FEATURE_SCOPE_CPU;
+		break;
+	case FEATURE_SCOPE_SOC:
+		scope = NAME_FEATURE_SCOPE_SOC;
+		break;
+	case FEATURE_SCOPE_MACHINE:
+		scope = NAME_FEATURE_SCOPE_MACHINE;
+		break;
+	default:
+		scope = NAME_FEATURE_SCOPE_UNKNOWN;
+		break;
+	}
+	globalvar_set_match("system.restart.scope", scope);
+}
+
+int restart_add_scope(void (*func)(struct device_d*), struct device_d *dev, enum f_scope scope)
+{
+	if (avail_scope < scope) {
+		resetf = func;
+		resetd = dev;
+		avail_scope = scope;
+		restart_update_global_info();
+	}
+
+	/* calling with a lower or equal scope will be ignored and is not a failure */
+	return 0;
+}
+EXPORT_SYMBOL(restart_add_scope);
+
+int restart_remove_scope(void (*func)(struct device_d*), struct device_d *dev)
+{
+	if (func == resetf && resetd == dev) {
+		resetf = NULL;
+		resetd = NULL;
+		avail_scope = FEATURE_SCOPE_UNKNOWN;
+		restart_update_global_info();
+	}
+
+	/* we just ignore a not matching call */
+	return 0;
+}
+EXPORT_SYMBOL(restart_remove_scope);
+
+static int restart_capability_init(void)
+{
+	globalvar_add_simple("system.restart.scope", NAME_FEATURE_SCOPE_UNKNOWN);
+	globalvar_add_simple("system.restart.unit", "unknown");
+
+	return 0;
+}
+coredevice_initcall(restart_capability_init);
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
index 66b6599..cdf3d40 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -20,6 +20,7 @@
 #include <malloc.h>
 #include <watchdog.h>
 #include <reset_source.h>
+#include <restart.h>
 
 struct imx_wd;
 
@@ -121,12 +122,11 @@ static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	return priv->ops->set_timeout(priv, timeout);
 }
 
-static struct imx_wd *reset_wd;
-
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn imxwd_force_soc_reset(struct device_d *dev)
 {
-	if (reset_wd)
-		reset_wd->ops->set_timeout(reset_wd, -1);
+	struct imx_wd *reset_wd = dev->priv;
+
+	reset_wd->ops->set_timeout(reset_wd, -1);
 
 	mdelay(1000);
 
@@ -159,6 +159,9 @@ static int imx21_wd_init(struct imx_wd *priv)
 {
 	imx_watchdog_detect_reset_source(priv);
 
+	/* the call can fail, but we can ignore an equivalent reset capability */
+	restart_add_scope(imxwd_force_soc_reset, priv->dev, FEATURE_SCOPE_SOC);
+
 	/*
 	 * Disable watchdog powerdown counter
 	 */
@@ -187,9 +190,6 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->wd.set_timeout = imx_watchdog_set_timeout;
 	priv->dev = dev;
 
-	if (!reset_wd)
-		reset_wd = priv;
-
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX)) {
 		ret = watchdog_register(&priv->wd);
 		if (ret)
@@ -212,8 +212,7 @@ error_unregister:
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX))
 		watchdog_deregister(&priv->wd);
 on_error:
-	if (reset_wd && reset_wd != priv)
-		free(priv);
+	free(priv);
 	return ret;
 }
 
@@ -221,11 +220,12 @@ static void imx_wd_remove(struct device_d *dev)
 {
 	struct imx_wd *priv = dev->priv;
 
+	restart_remove_scope(imxwd_force_soc_reset, dev);
+
 	if (IS_ENABLED(CONFIG_WATCHDOG_IMX))
 		watchdog_deregister(&priv->wd);
 
-	if (reset_wd && reset_wd != priv)
-		free(priv);
+	free(priv);
 }
 
 static const struct imx_wd_ops imx21_wd_ops = {
diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
index 8ac51e0..619bf66 100644
--- a/drivers/watchdog/jz4740.c
+++ b/drivers/watchdog/jz4740.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <init.h>
+#include <restart.h>
 #include <io.h>
 
 #define JZ_REG_WDT_TIMER_DATA     0x0
@@ -42,30 +43,26 @@ struct jz4740_wdt_drvdata {
 	void __iomem *base;
 };
 
-static struct jz4740_wdt_drvdata *reset_wd;
-
-void __noreturn reset_cpu(unsigned long addr)
+static void __noreturn jz4740_reset_soc(struct device_d *dev)
 {
-	if (reset_wd) {
-		void __iomem *base = reset_wd->base;
+	struct jz4740_wdt_drvdata *reset_wd = dev->priv;
+
+	void __iomem *base = reset_wd->base;
 
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
@@ -78,11 +75,9 @@ static int jz4740_wdt_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	if (!reset_wd)
-		reset_wd = priv;
-
 	dev->priv = priv;
 
+	restart_add_scope(jz4740_reset_soc, dev, FEATURE_SCOPE_SOC);
 	return 0;
 }
 
diff --git a/include/common.h b/include/common.h
index eef371c..e658593 100644
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
index 0000000..7136687
--- /dev/null
+++ b/include/restart.h
@@ -0,0 +1,22 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __INCLUDE_SYSTEM_RESTART_H
+# define __INCLUDE_SYSTEM_RESTART_H
+
+#include <fscope.h>
+
+int restart_add_scope(void (*func)(struct device_d*), struct device_d *, enum f_scope);
+int restart_remove_scope(void (*func)(struct device_d*), struct device_d *);
+void __noreturn restart_machine(void);
+
+#endif /* __INCLUDE_SYSTEM_RESTART_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
