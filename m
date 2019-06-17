Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S8-MN
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:08:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j9-6T
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GX-Iz
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:50 +0200
Message-Id: <20190617150751.3421-12-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 11/12] ARM: stm32mp: implement PSCI support
To: barebox@lists.infradead.org

A mainline kernel will expect the firmware to have installed a secure
boot monitor for PSCI. Therefore have the firmware install a secure
boot monitor for PSCI.

The implemented functions are ported from the vendor U-Boot and not all
of them are currently exposed by barebox via secure calls.
In particular the implementation of .affinity_info and .migrate_info_type
are not yet used anywhere.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/Kconfig              |   1 +
 arch/arm/mach-stm32mp/Makefile             |   2 +-
 arch/arm/mach-stm32mp/include/mach/stm32.h |  16 ++
 arch/arm/mach-stm32mp/psci.c               | 166 +++++++++++++++++++++
 4 files changed, 184 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-stm32mp/psci.c

diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index be16294f5ad7..94205aaf5508 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -1,6 +1,7 @@
 if ARCH_STM32MP
 
 config ARCH_STM32MP1157
+	select ARM_SECURE_MONITOR
 	bool
 
 config MACH_STM32MP157C_DK2
diff --git a/arch/arm/mach-stm32mp/Makefile b/arch/arm/mach-stm32mp/Makefile
index 16a218658ade..132efe76c09c 100644
--- a/arch/arm/mach-stm32mp/Makefile
+++ b/arch/arm/mach-stm32mp/Makefile
@@ -1 +1 @@
-obj- := __dummy__.o
+obj-$(CONFIG_ARM_PSCI) += psci.o
diff --git a/arch/arm/mach-stm32mp/include/mach/stm32.h b/arch/arm/mach-stm32mp/include/mach/stm32.h
index f9bdb788b98a..50f561c1e66f 100644
--- a/arch/arm/mach-stm32mp/include/mach/stm32.h
+++ b/arch/arm/mach-stm32mp/include/mach/stm32.h
@@ -32,4 +32,20 @@
 #define STM32_DDR_BASE			0xC0000000
 #define STM32_DDR_SIZE			SZ_1G
 
+/* TAMP registers */
+#define TAMP_BACKUP_REGISTER(x)         (STM32_TAMP_BASE + 0x100 + 4 * x)
+/* secure access */
+#define TAMP_BACKUP_MAGIC_NUMBER        TAMP_BACKUP_REGISTER(4)
+#define TAMP_BACKUP_BRANCH_ADDRESS      TAMP_BACKUP_REGISTER(5)
+/* non secure access */
+#define TAMP_BOOT_CONTEXT               TAMP_BACKUP_REGISTER(20)
+#define TAMP_BOOTCOUNT                  TAMP_BACKUP_REGISTER(21)
+
+#define TAMP_BOOT_MODE_MASK             GENMASK(15, 8)
+#define TAMP_BOOT_MODE_SHIFT            8
+#define TAMP_BOOT_DEVICE_MASK           GENMASK(7, 4)
+#define TAMP_BOOT_INSTANCE_MASK         GENMASK(3, 0)
+#define TAMP_BOOT_FORCED_MASK           GENMASK(7, 0)
+#define TAMP_BOOT_DEBUG_ON              BIT(16)
+
 #endif /* _MACH_STM32_H_ */
diff --git a/arch/arm/mach-stm32mp/psci.c b/arch/arm/mach-stm32mp/psci.c
new file mode 100644
index 000000000000..e5b447f85cc8
--- /dev/null
+++ b/arch/arm/mach-stm32mp/psci.c
@@ -0,0 +1,166 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * Copyright (C) 2018, STMicroelectronics - All Rights Reserved
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix <a.fatoum@pengutronix.de>
+ */
+
+#include <init.h>
+#include <common.h>
+#include <io.h>
+#include <linux/sizes.h>
+#include <asm/psci.h>
+#include <asm/gic.h>
+#include <asm/system.h>
+#include <mach/stm32.h>
+#include <asm/secure.h>
+
+#define BOOT_API_A7_CORE0_MAGIC_NUMBER	0xCA7FACE0
+#define BOOT_API_A7_CORE1_MAGIC_NUMBER	0xCA7FACE1
+
+#define MPIDR_AFF0			GENMASK(7, 0)
+
+#define RCC_MP_GRSTCSETR		(STM32_RCC_BASE + 0x0404)
+#define RCC_MP_GRSTCSETR_MPUP1RST	BIT(5)
+#define RCC_MP_GRSTCSETR_MPUP0RST	BIT(4)
+#define RCC_MP_GRSTCSETR_MPSYSRST	BIT(0)
+
+#define STM32MP1_PSCI_NR_CPUS		2
+#if STM32MP1_PSCI_NR_CPUS > ARM_SECURE_MAX_CPU
+#error "invalid value for ARM_SECURE_MAX_CPU"
+#endif
+
+static u8 psci_state[STM32MP1_PSCI_NR_CPUS] = {
+	 PSCI_AFFINITY_LEVEL_ON,
+	 PSCI_AFFINITY_LEVEL_OFF
+};
+
+static void psci_set_state(int cpu, u8 state)
+{
+	psci_state[cpu] = state;
+}
+
+static void stm32mp_smp_kick_all_cpus(void)
+{
+	u32 gic_dist_addr;
+
+	gic_dist_addr = get_gicd_base_address();
+
+	/* kick all CPUs (except this one) by writing to GICD_SGIR */
+	writel(1 << 24, gic_dist_addr + GICD_SGIR);
+}
+
+static int stm32mp_affinity_info(u32 target_affinity,
+				 u32 lowest_affinity_level)
+{
+	u32 cpu = target_affinity & MPIDR_AFF0;
+
+	if (lowest_affinity_level > 0)
+		return ARM_PSCI_RET_INVAL;
+
+	if (target_affinity & ~MPIDR_AFF0)
+		return ARM_PSCI_RET_INVAL;
+
+	if (cpu >= STM32MP1_PSCI_NR_CPUS)
+		return ARM_PSCI_RET_INVAL;
+
+	return psci_state[cpu];
+}
+
+static int stm32mp_migrate_info_type(void)
+{
+	/*
+	 * in Power_State_Coordination_Interface_PDD_v1_1_DEN0022D.pdf
+	 * return 2 = Trusted OS is either not present or does not require
+	 * migration, system of this type does not require the caller
+	 * to use the MIGRATE function.
+	 * MIGRATE function calls return NOT_SUPPORTED.
+	 */
+	return 2;
+}
+
+static int stm32mp_cpu_on(u32 target_cpu)
+{
+	u32 cpu = target_cpu & MPIDR_AFF0;
+
+	if (target_cpu & ~MPIDR_AFF0)
+		return ARM_PSCI_RET_INVAL;
+
+	if (cpu >= STM32MP1_PSCI_NR_CPUS)
+		return ARM_PSCI_RET_INVAL;
+
+	if (psci_state[cpu] == PSCI_AFFINITY_LEVEL_ON)
+		return ARM_PSCI_RET_ALREADY_ON;
+
+	/* write entrypoint in backup RAM register */
+	writel(psci_cpu_entry, TAMP_BACKUP_BRANCH_ADDRESS);
+	psci_set_state(cpu, PSCI_AFFINITY_LEVEL_ON_PENDING);
+
+	/* write magic number in backup register */
+	if (cpu == 0x01)
+		writel(BOOT_API_A7_CORE1_MAGIC_NUMBER, TAMP_BACKUP_MAGIC_NUMBER);
+	else
+		writel(BOOT_API_A7_CORE0_MAGIC_NUMBER, TAMP_BACKUP_MAGIC_NUMBER);
+
+	stm32mp_smp_kick_all_cpus();
+
+	return ARM_PSCI_RET_SUCCESS;
+}
+
+static int stm32mp_cpu_off(void)
+{
+	u32 cpu;
+
+	cpu = psci_get_cpu_id();
+
+	psci_set_state(cpu, PSCI_AFFINITY_LEVEL_OFF);
+
+	dsb();
+	isb();
+
+	/* reset core: wfi is managed by BootRom */
+	if (cpu == 0x01)
+		writel(RCC_MP_GRSTCSETR_MPUP1RST, RCC_MP_GRSTCSETR);
+	else
+		writel(RCC_MP_GRSTCSETR_MPUP0RST, RCC_MP_GRSTCSETR);
+
+	/* just awaiting reset */
+	while (1)
+		asm("wfi");
+
+	return 0;
+}
+
+static void stm32mp_system_reset(void)
+{
+	/* System reset */
+	writel(RCC_MP_GRSTCSETR_MPSYSRST, RCC_MP_GRSTCSETR);
+	/* just awaiting reset */
+	while (1)
+		asm("wfi");
+}
+
+static void stm32mp_system_off(void)
+{
+	/* System Off is not managed, waiting user power off
+	 * TODO: handle I2C write in PMIC Main Control register bit 0 = SWOFF
+	 */
+	while (1)
+		asm("wfi");
+}
+
+static struct psci_ops stm32mp_psci_ops = {
+	.cpu_on = stm32mp_cpu_on,
+	.cpu_off = stm32mp_cpu_off,
+	.affinity_info = stm32mp_affinity_info,
+	.migrate_info_type = stm32mp_migrate_info_type,
+	.system_off = stm32mp_system_off,
+	.system_reset = stm32mp_system_reset,
+};
+
+static int stm32mp_init(void)
+{
+	psci_set_ops(&stm32mp_psci_ops);
+
+	return 0;
+}
+postcore_initcall(stm32mp_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
