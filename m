Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm5xD-0008Uq-5S
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:04:48 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id ECC70FFA943
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:04:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 28 Nov 2013 19:06:47 +0100
Message-Id: <1385662007-13057-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] vexpress: switch to machine description
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/vexpress/init.c | 134 ++++++++++++++++++++++------------------
 1 file changed, 73 insertions(+), 61 deletions(-)

diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 6196c4e..f861d48 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -8,6 +8,7 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <asm/system_info.h>
+#include <asm/mach/arch.h>
 #include <generated/mach-types.h>
 #include <mach/devices.h>
 #include <environment.h>
@@ -18,59 +19,55 @@
 #include <linux/amba/sp804.h>
 #include <mci.h>
 
-struct vexpress_init {
-	void (*core_init)(void);
-	void (*mem_init)(void);
-	void (*console_init)(void);
-	void (*devices_init)(void);
-};
-
 struct mmci_platform_data mmci_plat = {
 	.ocr_mask	= MMC_VDD_32_33 | MMC_VDD_33_34,
 	.clkdiv_init	= SDI_CLKCR_CLKDIV_INIT,
 };
 
-struct vexpress_init *v2m_init;
-
-static void vexpress_ax_mem_init(void)
+static int vexpress_ax_mem_init(void)
 {
 	vexpress_add_ddram(SZ_512M);
+
+	return 0;
 }
 
 #define V2M_SYS_FLASH	0x03c
 
-static void vexpress_ax_devices_init(void)
+static int vexpress_ax_devices_init(void)
 {
+	writel(1, v2m_sysreg_base + V2M_SYS_FLASH);
+
 	add_cfi_flash_device(0, 0x08000000, SZ_64M, 0);
 	add_cfi_flash_device(1, 0x0c000000, SZ_64M, 0);
 	vexpress_register_mmc(&mmci_plat);
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x1a000000,
 			64 * 1024, IORESOURCE_MEM, NULL);
 	armlinux_set_bootparams((void *)(0x80000100));
+
+	return 0;
 }
 
-static void vexpress_ax_console_init(void)
+static int vexpress_ax_console_init(void)
 {
 	vexpress_register_uart(0);
 	vexpress_register_uart(1);
 	vexpress_register_uart(2);
 	vexpress_register_uart(3);
-}
 
-struct vexpress_init vexpress_init_ax = {
-	.core_init = vexpress_init,
-	.mem_init = vexpress_ax_mem_init,
-	.console_init = vexpress_ax_console_init,
-	.devices_init = vexpress_ax_devices_init,
-};
+	return 0;
+}
 
-static void vexpress_a9_legacy_mem_init(void)
+static int vexpress_a9_legacy_mem_init(void)
 {
 	vexpress_a9_legacy_add_ddram(SZ_512M, SZ_512M);
+
+	return 0;
 }
 
-static void vexpress_a9_legacy_devices_init(void)
+static int vexpress_a9_legacy_devices_init(void)
 {
+	writel(1, v2m_sysreg_base + V2M_SYS_FLASH);
+
 	add_cfi_flash_device(0, 0x40000000, SZ_64M, 0);
 	add_cfi_flash_device(1, 0x44000000, SZ_64M, 0);
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x4e000000,
@@ -78,75 +75,90 @@ static void vexpress_a9_legacy_devices_init(void)
 	vexpress_a9_legacy_register_mmc(&mmci_plat);
 	armlinux_set_architecture(MACH_TYPE_VEXPRESS);
 	armlinux_set_bootparams((void *)(0x60000100));
+
+	return 0;
 }
 
-static void vexpress_a9_legacy_console_init(void)
+static int vexpress_a9_legacy_console_init(void)
 {
 	vexpress_a9_legacy_register_uart(0);
 	vexpress_a9_legacy_register_uart(1);
 	vexpress_a9_legacy_register_uart(2);
 	vexpress_a9_legacy_register_uart(3);
-}
-
-struct vexpress_init vexpress_init_a9_legacy = {
-	.core_init = vexpress_a9_legacy_init,
-	.mem_init = vexpress_a9_legacy_mem_init,
-	.console_init = vexpress_a9_legacy_console_init,
-	.devices_init = vexpress_a9_legacy_devices_init,
-};
-
-static int vexpress_mem_init(void)
-{
-	v2m_init->mem_init();
 
 	return 0;
 }
-mem_initcall(vexpress_mem_init);
 
 static int vexpress_devices_init(void)
 {
-	writel(1, v2m_sysreg_base + V2M_SYS_FLASH);
-	v2m_init->devices_init();
-
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
 	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
-device_initcall(vexpress_devices_init);
 
-static int vexpress_console_init(void)
+static int vexpress_a9_legacy_core_init(void)
 {
-	v2m_init->console_init();
+	barebox_set_hostname("vexpress-a9-legacy");
+
+	vexpress_a9_legacy_init();
 
 	return 0;
 }
-console_initcall(vexpress_console_init);
 
-static int vexpress_core_init(void)
+static int vexpress_ax_core_init(void)
 {
 	char *hostname = "vexpress-unknown";
 
-	if (amba_is_arm_sp804(IOMEM(0x10011000))) {
-		v2m_init = &vexpress_init_a9_legacy;
-		hostname = "vexpress-a9-legacy";
-	} else {
-		v2m_init = &vexpress_init_ax;
-		if (cpu_is_cortex_a5())
-			hostname = "vexpress-a5";
-		else if (cpu_is_cortex_a7())
-			hostname = "vexpress-a7";
-		else if (cpu_is_cortex_a9())
-			hostname = "vexpress-a9";
-		else if (cpu_is_cortex_a15())
-			hostname = "vexpress-a15";
-	}
-
-	barebox_set_model("ARM Vexpress");
+	if (cpu_is_cortex_a5())
+		hostname = "vexpress-a5";
+	else if (cpu_is_cortex_a7())
+		hostname = "vexpress-a7";
+	else if (cpu_is_cortex_a9())
+		hostname = "vexpress-a9";
+	else if (cpu_is_cortex_a15())
+		hostname = "vexpress-a15";
+
 	barebox_set_hostname(hostname);
 
-	v2m_init->core_init();
+	vexpress_init();
 
 	return 0;
 }
-postcore_initcall(vexpress_core_init);
+
+static int vexpress_pure_init(void)
+{
+	if (amba_is_arm_sp804(IOMEM(0x10011000)))
+		return arm_set_dt_machine("arm,vexpress-a9-legacy");
+	else
+		return arm_set_dt_machine("arm,vexpress");
+}
+pure_initcall(vexpress_pure_init);
+
+static const char *arm_vexpress_a9_legacy_compat[] = {
+	"arm,vexpress-a9-legacy",
+	NULL
+};
+
+static const char *arm_vexpress_compat[] = {
+	"arm,vexpress",
+	NULL
+};
+
+DT_MACHINE_START(arm_vexpress_a9_legacy, "ARM Vexpress A9 Legacy")
+	.postcore_init = vexpress_a9_legacy_core_init,
+	.console_init = vexpress_a9_legacy_console_init,
+	.mem_init = vexpress_a9_legacy_mem_init,
+	.coredevice_init = vexpress_a9_legacy_devices_init,
+	.device_init = vexpress_devices_init,
+	.dt_compat = arm_vexpress_a9_legacy_compat,
+MACHINE_END
+
+DT_MACHINE_START(arm_vexpress, "ARM Vexpress")
+	.postcore_init = vexpress_ax_core_init,
+	.console_init = vexpress_ax_console_init,
+	.mem_init = vexpress_ax_mem_init,
+	.coredevice_init = vexpress_ax_devices_init,
+	.device_init = vexpress_devices_init,
+	.dt_compat = arm_vexpress_compat,
+MACHINE_END
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
