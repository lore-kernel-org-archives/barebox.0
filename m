Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9r9-0008DR-Ce
 for barebox@lists.infradead.org; Mon, 13 May 2019 12:15:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 May 2019 14:14:56 +0200
Message-Id: <20190513121456.13853-3-s.hauer@pengutronix.de>
In-Reply-To: <20190513121456.13853-1-s.hauer@pengutronix.de>
References: <20190513121456.13853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: Layerscape: Add PPA firmware support
To: Barebox List <barebox@lists.infradead.org>

The "Primary Protected Application" (PPA) is a PSCI compliant firmware
distributed by NXP. It is needed to start the secondary cores on
Layerscape SoCs. Without it Linux will be started in EL3 and doesn't
work properly. The precompiled firmware images can be found on
https://github.com/NXP/qoriq-ppa-binary and are not included in
barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/board.c            |   7 +-
 arch/arm/boards/ls1046ardb/lowlevel.c         |   2 +-
 arch/arm/boards/tqmls1046a/board.c            |   6 +
 arch/arm/boards/tqmls1046a/lowlevel.c         |   2 +-
 arch/arm/configs/layerscape_defconfig         |   1 +
 arch/arm/mach-layerscape/Kconfig              |  13 ++
 arch/arm/mach-layerscape/Makefile             |   1 +
 .../mach-layerscape/include/mach/layerscape.h |  10 ++
 arch/arm/mach-layerscape/ppa-entry.S          |  30 +++++
 arch/arm/mach-layerscape/ppa.c                | 118 ++++++++++++++++++
 firmware/Makefile                             |   2 +
 11 files changed, 189 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-layerscape/ppa-entry.S
 create mode 100644 arch/arm/mach-layerscape/ppa.c

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index 483040957e..0846df9fad 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -8,16 +8,21 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <asm/system.h>
+#include <mach/layerscape.h>
 
 static int rdb_mem_init(void)
 {
+	int ret;
+
 	if (!of_machine_is_compatible("fsl,ls1046a-rdb"))
 		return 0;
 
 	arm_add_mem_device("ram0", 0x80000000, 0x80000000);
 	arm_add_mem_device("ram1", 0x880000000, 3ULL * SZ_2G);
 
-	printf("Current EL: %d\n", current_el());
+	ret = ls1046a_ppa_init(0x100000000 - SZ_64M, SZ_64M);
+	if (ret)
+		pr_err("Failed to initialize PPA firmware: %s\n", strerror(-ret));
 
 	return 0;
 }
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 0c95fbb035..0a30f05aa2 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -194,7 +194,7 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 		if (memsize + membase >= 0x100000000)
 			memsize = 0x100000000 - membase;
 
-		barebox_arm_entry(membase, 0x80000000 - SZ_1M * 67,
+		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
 				  __dtb_fsl_ls1046a_rdb_start);
 	}
 
diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index 8cc4d73de5..028be890e0 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -15,11 +15,17 @@
 
 static int tqmls1046a_mem_init(void)
 {
+	int ret;
+
 	if (!of_machine_is_compatible("tqc,tqmls1046a"))
 		return 0;
 
 	arm_add_mem_device("ram0", 0x80000000, SZ_2G);
 
+	ret = ls1046a_ppa_init(0x100000000 - SZ_64M, SZ_64M);
+	if (ret)
+		pr_err("Failed to initialize PPA firmware: %s\n", strerror(-ret));
+
         return 0;
 }
 mem_initcall(tqmls1046a_mem_init);
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index dc0e179694..f79f491ecc 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -243,7 +243,7 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
 
 	if (get_pc() >= membase)
-		barebox_arm_entry(membase, 0x80000000,
+		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
 				  __dtb_fsl_tqmls1046a_mbls10xxa_start);
 
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index b81f375415..b36f1944ec 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_LAYERSCAPE=y
+CONFIG_ARCH_LAYERSCAPE_PPA=y
 CONFIG_MACH_LS1046ARDB=y
 CONFIG_MACH_TQMLS1046A=y
 CONFIG_MMU=y
diff --git a/arch/arm/mach-layerscape/Kconfig b/arch/arm/mach-layerscape/Kconfig
index 3a44f3fea1..139c63f66d 100644
--- a/arch/arm/mach-layerscape/Kconfig
+++ b/arch/arm/mach-layerscape/Kconfig
@@ -1,5 +1,18 @@
 if ARCH_LAYERSCAPE
 
+config ARCH_LAYERSCAPE_PPA
+	bool "Include PPA firmware"
+	select ARM_PSCI_OF
+	select ARM_SMCCC
+	select FITIMAGE
+	bool
+	help
+	  The "Primary Protected Application" (PPA) is a PSCI compliant firmware
+	  distributed by NXP. It is needed to start the secondary cores on
+	  Layerscape SoCs. Without it Linux will be started in EL3 and doesn't
+	  work properly. The precompiled firmware images can be found here:
+	  https://github.com/NXP/qoriq-ppa-binary
+
 config ARCH_LS1046
 	select CPU_V8
 	select SYS_SUPPORTS_64BIT_KERNEL
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 73cd61a7cf..8a814f9441 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -4,3 +4,4 @@ lwl-$(CONFIG_ARCH_LS1046) += lowlevel-ls1046a.o
 obj-y += icid.o
 obj-pbl-y += boot.o
 pbl-y += xload-qspi.o xload.o
+obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/mach-layerscape/include/mach/layerscape.h
index 3366e7f258..1f1da0f66e 100644
--- a/arch/arm/mach-layerscape/include/mach/layerscape.h
+++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
@@ -6,4 +6,14 @@
 
 enum bootsource ls1046_bootsource_get(void);
 
+#ifdef CONFIG_ARCH_LAYERSCAPE_PPA
+int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size);
+#else
+static inline int ls1046a_ppa_init(resource_size_t ppa_start,
+				   resource_size_t ppa_size)
+{
+	return -ENOSYS;
+}
+#endif
+
 #endif /* __MACH_LAYERSCAPE_H */
diff --git a/arch/arm/mach-layerscape/ppa-entry.S b/arch/arm/mach-layerscape/ppa-entry.S
new file mode 100644
index 0000000000..18cfa6c37e
--- /dev/null
+++ b/arch/arm/mach-layerscape/ppa-entry.S
@@ -0,0 +1,30 @@
+#include <linux/linkage.h>
+
+.section .text.ppa_entry
+ENTRY(ppa_entry)
+	/*
+	 * x0: Secure Firmware entry point
+	 * x1: Exception return address Low
+	 * x2: Exception return address High
+	 */
+
+	/* Save stack pointer for EL2 */
+	mov	x3, sp
+	msr	sp_el2, x3
+
+	/* Set exception return address hold pointer */
+	adr	x4, 1f
+	mov	x3, x4
+	rev	w3, w3
+	str	w3, [x1]
+	lsr	x3, x4, #32
+	rev	w3, w3
+	str	w3, [x2]
+
+	/* Call SEC monitor */
+	br	x0
+
+1:
+	mov	x0, #0
+	ret
+ENDPROC(ppa_entry)
diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
new file mode 100644
index 0000000000..6070451020
--- /dev/null
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#define pr_fmt(fmt) "ppa: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <firmware.h>
+#include <memory.h>
+#include <linux/sizes.h>
+#include <linux/arm-smccc.h>
+#include <asm/mmu.h>
+#include <soc/fsl/immap_lsch2.h>
+#include <asm/system.h>
+#include <image-fit.h>
+#include <asm/psci.h>
+#include <mach/layerscape.h>
+
+int ppa_entry(const void *, u32 *, u32 *);
+void dma_flush_range(void *ptr, size_t size);
+
+static int of_psci_do_fixup(struct device_node *root, void *unused)
+{
+	unsigned long psci_version;
+	struct arm_smccc_res res = {};
+
+	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
+	psci_version = res.a0;
+
+	return of_psci_fixup(root, psci_version);
+}
+
+static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
+{
+	int ret;
+	u32 *boot_loc_ptr_l, *boot_loc_ptr_h;
+	struct ccsr_scfg __iomem *scfg = (void *)(LSCH2_SCFG_ADDR);
+	int el = current_el();
+	struct fit_handle *fit;
+	void *conf;
+	const void *buf;
+	unsigned long firmware_size;
+
+	if (el < 3) {
+		printf("EL%d, skip ppa init\n", el);
+		return 0;
+	}
+
+	boot_loc_ptr_l = &scfg->scratchrw[1];
+	boot_loc_ptr_h = &scfg->scratchrw[0];
+
+	fit = fit_open_buf(ppa, ppa_size, false, BOOTM_VERIFY_AVAILABLE);
+	if (IS_ERR(fit)) {
+		pr_err("Cannot open ppa FIT image: %s\n", strerrorp(fit));
+		return PTR_ERR(fit);
+	}
+
+	conf = fit_open_configuration(fit, NULL);
+	if (IS_ERR(conf)) {
+		pr_err("Cannot open default config in ppa FIT image: %s\n",
+		       strerrorp(conf));
+		fit_close(fit);
+		return PTR_ERR(fit);
+	}
+
+
+	ret = fit_open_image(fit, conf, "firmware", &buf, &firmware_size);
+	if (ret) {
+		pr_err("Cannot open firmware image in ppa FIT image: %s\n",
+		       strerror(-ret));
+		ret = PTR_ERR(fit);
+		goto err;
+	}
+
+	/* Copy the secure firmware to secure memory */
+	memcpy(sec_firmware_addr, buf, firmware_size);
+	dma_flush_range(sec_firmware_addr, ppa_size);
+
+	ret = ppa_entry(sec_firmware_addr, boot_loc_ptr_l, boot_loc_ptr_h);
+	if (ret) {
+		pr_err("Couldn't install PPA firmware: %s\n", strerror(-ret));
+		goto err;
+	}
+
+	pr_info("PPA firmware installed at 0x%p, now in EL%d\n",
+		sec_firmware_addr, current_el());
+
+	of_register_fixup(of_psci_do_fixup, NULL);
+err:
+	fit_close(fit);
+
+	return 0;
+}
+
+int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
+{
+	resource_size_t ppa_end = ppa_start + ppa_size - 1;
+	struct resource *res;
+	void *ppa_fw;
+	size_t ppa_fw_size;
+	int ret;
+
+	res = request_sdram_region("ppa", ppa_start, ppa_size);
+	if (!res) {
+		pr_err("Cannot request SDRAM region %pa - %pa\n",
+		       &ppa_start, &ppa_end);
+		return -EINVAL;
+	}
+
+	get_builtin_firmware(ppa_ls1046a_bin, &ppa_fw, &ppa_fw_size);
+
+	ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
+	if (ret)
+		return ret;
+
+	of_add_reserve_entry(ppa_start, ppa_end);
+
+	return 0;
+}
diff --git a/firmware/Makefile b/firmware/Makefile
index 306c006e23..9581ee6116 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -13,6 +13,8 @@ firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 
+firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
+
 # Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
 fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
