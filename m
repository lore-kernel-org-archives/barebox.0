Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5FXI-0003FN-S8
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 13:04:38 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D921EDC0C5A
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2013 14:14:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Feb 2013 14:03:27 +0100
Message-Id: <1360674207-12078-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360674207-12078-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130212130012.GD19322@game.jcrosoft.org>
 <1360674207-12078-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] vexpress: detect the board periph mapping and detecting
 the sp804 mapping
To: barebox@lists.infradead.org

at 0x10011000 for a9 legacy otherwise at 0x1c110000

as the new board also support Cortex-A9

so this is working

qemu/arm-softmmu/qemu-system-arm -M vexpress-a15 -m 1024 -smp 1 -kernel build/vexpress/barebox -pflash build/vexpress/flash -nographic -cpu cortex-a9

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/vexpress/init.c               |   35 ++++++++++++++-----------
 arch/arm/boards/vexpress/lowlevel.c           |    4 ++-
 arch/arm/mach-vexpress/devices.c              |    4 +--
 arch/arm/mach-vexpress/include/mach/devices.h |    6 ++---
 arch/arm/mach-vexpress/v2m.c                  |    2 +-
 5 files changed, 28 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index f940824..2b2d085 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -15,6 +15,7 @@
 #include <sizes.h>
 #include <io.h>
 #include <globalvar.h>
+#include <linux/amba/sp804.h>
 
 struct vexpress_init {
 	void (*core_init)(void);
@@ -57,12 +58,12 @@ struct vexpress_init vexpress_init_ax = {
 	.devices_init = vexpress_ax_devices_init,
 };
 
-static void vexpress_a9_mem_init(void)
+static void vexpress_a9_legacy_mem_init(void)
 {
-	vexpress_a9_add_ddram(SZ_512M, SZ_512M);
+	vexpress_a9_legacy_add_ddram(SZ_512M, SZ_512M);
 }
 
-static void vexpress_a9_devices_init(void)
+static void vexpress_a9_legacy_devices_init(void)
 {
 	add_cfi_flash_device(0, 0x40000000, SZ_64M, 0);
 	add_cfi_flash_device(1, 0x44000000, SZ_64M, 0);
@@ -73,20 +74,20 @@ static void vexpress_a9_devices_init(void)
 	armlinux_set_bootparams((void *)(0x60000100));
 }
 
-static void vexpress_a9_console_init(void)
+static void vexpress_a9_legacy_console_init(void)
 {
-	vexpress_a9_register_uart(0);
-	vexpress_a9_register_uart(1);
-	vexpress_a9_register_uart(2);
-	vexpress_a9_register_uart(3);
+	vexpress_a9_legacy_register_uart(0);
+	vexpress_a9_legacy_register_uart(1);
+	vexpress_a9_legacy_register_uart(2);
+	vexpress_a9_legacy_register_uart(3);
 }
 
-struct vexpress_init vexpress_init_a9 = {
-	.core_init = vexpress_a9_init,
-	.mem_init = vexpress_a9_mem_init,
-	.console_init = vexpress_a9_console_init,
-	.devices_init = vexpress_a9_devices_init,
-	.hostname = "vexpress-a9",
+struct vexpress_init vexpress_init_a9_legacy = {
+	.core_init = vexpress_a9_legacy_init,
+	.mem_init = vexpress_a9_legacy_mem_init,
+	.console_init = vexpress_a9_legacy_console_init,
+	.devices_init = vexpress_a9_legacy_devices_init,
+	.hostname = "vexpress-a9-legacy",
 };
 
 static int vexpress_mem_init(void)
@@ -123,14 +124,16 @@ console_initcall(vexpress_console_init);
 
 static int vexpress_core_init(void)
 {
-	if (cpu_is_cortex_a9()) {
-		v2m_init = &vexpress_init_a9;
+	if (amba_is_arm_sp804(IOMEM(0x10011000))) {
+		v2m_init = &vexpress_init_a9_legacy;
 	} else {
 		v2m_init = &vexpress_init_ax;
 		if (cpu_is_cortex_a5())
 			v2m_init->hostname = "vexpress-a5";
 		else if (cpu_is_cortex_a7())
 			v2m_init->hostname = "vexpress-a7";
+		else if (cpu_is_cortex_a9())
+			v2m_init->hostname = "vexpress-a9";
 		else if (cpu_is_cortex_a15())
 			v2m_init->hostname = "vexpress-a15";
 	}
diff --git a/arch/arm/boards/vexpress/lowlevel.c b/arch/arm/boards/vexpress/lowlevel.c
index 04ed84b..5b0c6b7 100644
--- a/arch/arm/boards/vexpress/lowlevel.c
+++ b/arch/arm/boards/vexpress/lowlevel.c
@@ -9,11 +9,13 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <asm/system_info.h>
+#include <linux/amba/sp804.h>
 
 void __naked reset(void)
 {
 	common_reset();
-	if (cpu_is_cortex_a9())
+
+	if (amba_is_arm_sp804(IOMEM(0x10011000)))
 		barebox_arm_entry(0x60000000, SZ_512M, 0);
 	else
 		barebox_arm_entry(0x80000000, SZ_512M, 0);
diff --git a/arch/arm/mach-vexpress/devices.c b/arch/arm/mach-vexpress/devices.c
index 69c93ef..6ccce52 100644
--- a/arch/arm/mach-vexpress/devices.c
+++ b/arch/arm/mach-vexpress/devices.c
@@ -12,7 +12,7 @@
 
 #include <mach/devices.h>
 
-void vexpress_a9_add_ddram(u32 ddr0_size, u32 ddr1_size)
+void vexpress_a9_legacy_add_ddram(u32 ddr0_size, u32 ddr1_size)
 {
 	arm_add_mem_device("ram0", 0x60000000, ddr0_size);
 
@@ -21,7 +21,7 @@ void vexpress_a9_add_ddram(u32 ddr0_size, u32 ddr1_size)
 }
 
 
-void vexpress_a9_register_uart(unsigned id)
+void vexpress_a9_legacy_register_uart(unsigned id)
 {
 	resource_size_t start;
 
diff --git a/arch/arm/mach-vexpress/include/mach/devices.h b/arch/arm/mach-vexpress/include/mach/devices.h
index adeada8..3146a47 100644
--- a/arch/arm/mach-vexpress/include/mach/devices.h
+++ b/arch/arm/mach-vexpress/include/mach/devices.h
@@ -7,13 +7,13 @@
 #ifndef __ASM_ARCH_DEVICES_H__
 #define __ASM_ARCH_DEVICES_H__
 
-void vexpress_a9_add_ddram(u32 ddr0_size, u32 ddr1_size);
+void vexpress_a9_legacy_add_ddram(u32 ddr0_size, u32 ddr1_size);
 void vexpress_add_ddram(u32 size);
 
-void vexpress_a9_register_uart(unsigned id);
+void vexpress_a9_legacy_register_uart(unsigned id);
 void vexpress_register_uart(unsigned id);
 
-void vexpress_a9_init(void);
+void vexpress_a9_legacy_init(void);
 void vexpress_init(void);
 
 extern void *v2m_wdt_base;
diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-vexpress/v2m.c
index 12d5d1a..d6dde83 100644
--- a/arch/arm/mach-vexpress/v2m.c
+++ b/arch/arm/mach-vexpress/v2m.c
@@ -64,7 +64,7 @@ static void __init v2m_sp804_init(void __iomem *base)
 	amba_apb_device_add(NULL, "sp804", DEVICE_ID_SINGLE, (resource_size_t)base, 4096, NULL, 0);
 }
 
-void vexpress_a9_init(void)
+void vexpress_a9_legacy_init(void)
 {
 	v2m_wdt_base = IOMEM(0x1000f000);
 	v2m_sysreg_base = IOMEM(0x10001000);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
