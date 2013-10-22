Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo6.mail-out.ovh.net ([87.98.184.159]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYd23-0004s1-RX
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 14:34:05 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 5478EFFA8F9
 for <barebox@lists.infradead.org>; Tue, 22 Oct 2013 16:34:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 22 Oct 2013 16:35:25 +0200
Message-Id: <1382452525-26955-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1382452525-26955-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131022143339.GC26639@ns203013.ovh.net>
 <1382452525-26955-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] vexpress: mmc support
To: barebox@lists.infradead.org

qemu-system-arm -m 1024 -smp 1 -M vexpress-a15 -monitor pty -kernel zbarebox -drive if=sd,cache=unsafe,file=sd -nographic -tftp . -net nic -net user

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/vexpress/init.c               |  9 ++++++++-
 arch/arm/mach-vexpress/devices.c              | 12 +++++++++++-
 arch/arm/mach-vexpress/include/mach/devices.h |  5 +++++
 arch/arm/mach-vexpress/v2m.c                  |  1 +
 4 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 72a3b08..6196c4e 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -16,6 +16,7 @@
 #include <io.h>
 #include <globalvar.h>
 #include <linux/amba/sp804.h>
+#include <mci.h>
 
 struct vexpress_init {
 	void (*core_init)(void);
@@ -24,6 +25,11 @@ struct vexpress_init {
 	void (*devices_init)(void);
 };
 
+struct mmci_platform_data mmci_plat = {
+	.ocr_mask	= MMC_VDD_32_33 | MMC_VDD_33_34,
+	.clkdiv_init	= SDI_CLKCR_CLKDIV_INIT,
+};
+
 struct vexpress_init *v2m_init;
 
 static void vexpress_ax_mem_init(void)
@@ -37,6 +43,7 @@ static void vexpress_ax_devices_init(void)
 {
 	add_cfi_flash_device(0, 0x08000000, SZ_64M, 0);
 	add_cfi_flash_device(1, 0x0c000000, SZ_64M, 0);
+	vexpress_register_mmc(&mmci_plat);
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x1a000000,
 			64 * 1024, IORESOURCE_MEM, NULL);
 	armlinux_set_bootparams((void *)(0x80000100));
@@ -68,7 +75,7 @@ static void vexpress_a9_legacy_devices_init(void)
 	add_cfi_flash_device(1, 0x44000000, SZ_64M, 0);
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x4e000000,
 			64 * 1024, IORESOURCE_MEM, NULL);
-
+	vexpress_a9_legacy_register_mmc(&mmci_plat);
 	armlinux_set_architecture(MACH_TYPE_VEXPRESS);
 	armlinux_set_bootparams((void *)(0x60000100));
 }
diff --git a/arch/arm/mach-vexpress/devices.c b/arch/arm/mach-vexpress/devices.c
index 6ccce52..5b53011 100644
--- a/arch/arm/mach-vexpress/devices.c
+++ b/arch/arm/mach-vexpress/devices.c
@@ -20,7 +20,6 @@ void vexpress_a9_legacy_add_ddram(u32 ddr0_size, u32 ddr1_size)
 		arm_add_mem_device("ram1", 0x80000000, ddr1_size);
 }
 
-
 void vexpress_a9_legacy_register_uart(unsigned id)
 {
 	resource_size_t start;
@@ -44,6 +43,12 @@ void vexpress_a9_legacy_register_uart(unsigned id)
 	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
 }
 
+void vexpress_a9_legacy_register_mmc(struct mmci_platform_data *plat)
+{
+	amba_apb_device_add(NULL, "mmci-pl18x", DEVICE_ID_SINGLE, 0x10005000,
+	4096, plat, 0);
+}
+
 void vexpress_add_ddram(u32 size)
 {
 	arm_add_mem_device("ram1", 0x80000000, size);
@@ -71,3 +76,8 @@ void vexpress_register_uart(unsigned id)
 	}
 	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
 }
+
+void vexpress_register_mmc(struct mmci_platform_data *plat)
+{
+	amba_apb_device_add(NULL, "mmci-pl18x", DEVICE_ID_SINGLE, 0x1c050000, 4096, plat, 0);
+}
diff --git a/arch/arm/mach-vexpress/include/mach/devices.h b/arch/arm/mach-vexpress/include/mach/devices.h
index 3146a47..96d1400 100644
--- a/arch/arm/mach-vexpress/include/mach/devices.h
+++ b/arch/arm/mach-vexpress/include/mach/devices.h
@@ -7,6 +7,8 @@
 #ifndef __ASM_ARCH_DEVICES_H__
 #define __ASM_ARCH_DEVICES_H__
 
+#include <linux/amba/mmci.h>
+
 void vexpress_a9_legacy_add_ddram(u32 ddr0_size, u32 ddr1_size);
 void vexpress_add_ddram(u32 size);
 
@@ -16,6 +18,9 @@ void vexpress_register_uart(unsigned id);
 void vexpress_a9_legacy_init(void);
 void vexpress_init(void);
 
+void vexpress_a9_legacy_register_mmc(struct mmci_platform_data *plat);
+void vexpress_register_mmc(struct mmci_platform_data *plat);
+
 extern void *v2m_wdt_base;
 extern void *v2m_sysreg_base;
 
diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-vexpress/v2m.c
index d6dde83..025bbb1 100644
--- a/arch/arm/mach-vexpress/v2m.c
+++ b/arch/arm/mach-vexpress/v2m.c
@@ -20,6 +20,7 @@
 void __iomem *v2m_sysreg_base;
 
 static const char *v2m_osc2_periphs[] = {
+	"mb:mmci",  "mmci-pl18x",	/* PL180 MMCI */
 	"mb:uart0", "uart-pl0110",	/* PL011 UART0 */
 	"mb:uart1", "uart-pl0111",	/* PL011 UART1 */
 	"mb:uart2", "uart-pl0112",	/* PL011 UART2 */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
