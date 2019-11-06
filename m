Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIRu-0000Fz-51
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 10:22:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 11:21:47 +0100
Message-Id: <20191106102149.6858-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191106102149.6858-1-a.fatoum@pengutronix.de>
References: <20191106102149.6858-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 4/6] ARM: psci: implement PSCI client driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

System reset on the STM32MP may be done via PSCI when running TF-A
as first-stage boot loader. Provide a PSCI driver to simplify using it:

- A psci_invoke function is exported, so other code can use it
- A fixup for the PSCI device tree node is registered
- A reset and poweroff handler via PSCI is registered for PSCI >= v0.2

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig            |   9 ++
 arch/arm/cpu/Makefile       |   1 +
 arch/arm/cpu/psci-client.c  | 190 ++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/psci.h |  23 ++++-
 4 files changed, 221 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/cpu/psci-client.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f82844a83a5e..1346f70f4f5f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -449,6 +449,15 @@ config ARM_PSCI
 	  PSCI is used for controlling secondary CPU cores on some systems. Say
 	  yes here if you want barebox to service PSCI calls on such systems.
 
+config ARM_PSCI_CLIENT
+	bool "Enable barebox PSCI client support"
+	select ARM_SMCCC
+	select ARM_PSCI_OF
+	help
+	  Say yes here if you want barebox to communicate with a secure monitor
+	  for resetting/powering off the system over PSCI. barebox' PSCI version
+	  information will also be shared with Linux via device tree fixups.
+
 config ARM_PSCI_DEBUG
 	bool "Enable PSCI debugging"
 	depends on ARM_PSCI
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index e0b16747ad66..09b3bc2eeab9 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -16,6 +16,7 @@ pbl-$(CONFIG_BOARD_ARM_GENERIC_DT_AARCH64) += board-dt-2nd-aarch64.o
 obj-pbl-y += setupc$(S64).o cache$(S64).o
 
 obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
+obj-$(CONFIG_ARM_PSCI_CLIENT) += psci-client.o
 
 #
 # Any variants can be called as start-armxyz.S
diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
new file mode 100644
index 000000000000..b5d0d3749702
--- /dev/null
+++ b/arch/arm/cpu/psci-client.c
@@ -0,0 +1,190 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 Masahiro Yamada <yamada.masahiro@socionext.com>
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <asm/psci.h>
+#include <asm/secure.h>
+#include <poweroff.h>
+#include <restart.h>
+#include <linux/arm-smccc.h>
+
+static struct restart_handler restart;
+
+static void __noreturn psci_invoke_noreturn(int function)
+{
+	int ret;
+
+	ret = psci_invoke(function, 0, 0, 0, NULL);
+
+	pr_err("psci command failed: %s\n", strerror(-ret));
+	hang();
+}
+
+static void __noreturn psci_poweroff(struct poweroff_handler *handler)
+{
+	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_OFF);
+}
+
+static void __noreturn psci_restart(struct restart_handler *rst)
+{
+	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_RESET);
+}
+
+static u32 version;
+int psci_get_version(void)
+{
+	if (!version)
+		return -EPROBE_DEFER;
+
+	return version;
+}
+
+static u32 (*psci_invoke_fn)(ulong, ulong, ulong, ulong);
+
+static int psci_xlate_error(s32 errnum)
+{
+       switch (errnum) {
+       case ARM_PSCI_RET_NOT_SUPPORTED:
+               return -ENOTSUPP; // Operation not supported
+       case ARM_PSCI_RET_INVAL:
+               return -EINVAL; // Invalid argument
+       case ARM_PSCI_RET_DENIED:
+               return -EPERM; // Operation not permitted
+       case ARM_PSCI_RET_ALREADY_ON:
+               return -EBUSY; // CPU already on
+       case ARM_PSCI_RET_ON_PENDING:
+               return -EALREADY; // CPU_ON in progress
+       case ARM_PSCI_RET_INTERNAL_FAILURE:
+               return -EIO; // Internal failure
+       case ARM_PSCI_RET_NOT_PRESENT:
+	       return -ESRCH; // Trusted OS not present on core
+       case ARM_PSCI_RET_DISABLED:
+               return -ENODEV; // CPU is disabled
+       case ARM_PSCI_RET_INVALID_ADDRESS:
+               return -EACCES; // Bad address
+       default:
+	       return errnum;
+       };
+}
+
+int psci_invoke(ulong function, ulong arg0, ulong arg1, ulong arg2,
+		ulong *result)
+{
+	ulong ret;
+	if (!psci_invoke_fn)
+		return -EPROBE_DEFER;
+
+	ret = psci_invoke_fn(function, arg0, arg1, arg2);
+	if (result)
+		*result = ret;
+
+	switch (function) {
+	case ARM_PSCI_0_2_FN_PSCI_VERSION:
+	case ARM_PSCI_1_0_FN64_STAT_RESIDENCY:
+	case ARM_PSCI_1_0_FN64_STAT_COUNT:
+		/* These don't return an error code */
+		return 0;
+	}
+
+	return psci_xlate_error(ret);
+}
+
+static u32 invoke_psci_fn_hvc(ulong function, ulong arg0, ulong arg1, ulong arg2)
+{
+	struct arm_smccc_res res;
+	arm_smccc_hvc(function, arg0, arg1, arg2, 0, 0, 0, 0, &res);
+	return res.a0;
+}
+
+static u32 invoke_psci_fn_smc(ulong function, ulong arg0, ulong arg1, ulong arg2)
+{
+	struct arm_smccc_res res;
+	arm_smccc_smc(function, arg0, arg1, arg2, 0, 0, 0, 0, &res);
+	return res.a0;
+}
+
+static int of_psci_do_fixup(struct device_node *root, void *context)
+{
+	return of_psci_fixup(root, *(u32 *)context);
+}
+
+static int __init psci_probe(struct device_d *dev)
+{
+	const char *method;
+	ulong of_version, actual_version;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (const void **)&of_version);
+	if (ret)
+		return -ENODEV;
+
+	ret = of_property_read_string(dev->device_node, "method", &method);
+	if (ret) {
+		dev_warn(dev, "missing \"method\" property\n");
+		return -ENXIO;
+	}
+
+	if (!strcmp(method, "hvc")) {
+		psci_invoke_fn = invoke_psci_fn_hvc;
+	} else if (!strcmp(method, "smc")) {
+		psci_invoke_fn = invoke_psci_fn_smc;
+	} else {
+		pr_warn("invalid \"method\" property: %s\n", method);
+		return -EINVAL;
+	}
+
+
+	if (of_version < ARM_PSCI_VER(0,2)) {
+		version = of_version;
+
+		dev_info(dev, "assuming version %u.%u\n",
+			 version >> 16, version & 0xffff);
+		dev_dbg(dev, "Not registering reset handler due to PSCI version\n");
+
+		return 0;
+	}
+
+	psci_invoke(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, &actual_version);
+	version = actual_version;
+
+	dev_info(dev, "detected version %u.%u\n",
+		 version >> 16, version & 0xffff);
+
+	if (actual_version != of_version)
+		of_register_fixup(of_psci_do_fixup, &version);
+
+	ret = poweroff_handler_register_fn(psci_poweroff);
+	if (ret)
+		dev_warn(dev, "error registering poweroff handler: %s\n",
+			 strerror(-ret));
+
+	restart.name = "psci";
+	restart.restart = psci_restart;
+	restart.priority = 400;
+
+	ret = restart_handler_register(&restart);
+	if (ret)
+		dev_warn(dev, "error registering restart handler: %s\n",
+			 strerror(-ret));
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id psci_dt_ids[] = {
+	{ .compatible = "arm,psci",	.data = (void*)ARM_PSCI_VER(0,1) },
+	{ .compatible = "arm,psci-0.2",	.data = (void*)ARM_PSCI_VER(0,2) },
+	{ .compatible = "arm,psci-1.0",	.data = (void*)ARM_PSCI_VER(1,0) },
+	{ /* sentinel */ },
+};
+
+static struct driver_d psci_driver = {
+	.name = "psci",
+	.probe = psci_probe,
+	.of_compatible = DRV_OF_COMPAT(psci_dt_ids),
+};
+coredevice_platform_driver(psci_driver);
diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
index f2db967f3a63..8f76ffcb2dbb 100644
--- a/arch/arm/include/asm/psci.h
+++ b/arch/arm/include/asm/psci.h
@@ -18,8 +18,9 @@
 #ifndef __ARM_PSCI_H__
 #define __ARM_PSCI_H__
 
-#define ARM_PSCI_VER_1_0		(0x00010000)
-#define ARM_PSCI_VER_0_2		(0x00000002)
+#define ARM_PSCI_VER(major, minor)	(((major) << 16) | (minor))
+#define ARM_PSCI_VER_1_0		ARM_PSCI_VER(1,0)
+#define ARM_PSCI_VER_0_2		ARM_PSCI_VER(0,2)
 
 /* PSCI 0.1 interface */
 #define ARM_PSCI_FN_BASE		0x95c1ba5e
@@ -106,6 +107,24 @@ static inline void psci_set_ops(struct psci_ops *ops)
 }
 #endif
 
+#ifdef CONFIG_ARM_PSCI_CLIENT
+int psci_invoke(ulong function, ulong arg0, ulong arg1, ulong arg2,
+		ulong *result);
+
+int psci_get_version(void);
+#else
+int psci_invoke(ulong function, ulong arg0, ulong arg1, ulong arg2,
+		ulong *result)
+{
+	return -ENOSYS;
+}
+
+int psci_get_version(void)
+{
+	return -ENOSYS;
+}
+#endif
+
 void psci_cpu_entry(void);
 
 #ifdef CONFIG_ARM_PSCI_DEBUG
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
