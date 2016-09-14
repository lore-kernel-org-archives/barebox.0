Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk5SK-0002HZ-FS
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 08:22:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 10:21:30 +0200
Message-Id: <1473841290-3935-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473841290-3935-1-git-send-email-s.hauer@pengutronix.de>
References: <1473841290-3935-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX6: Sabrelite: Add PBL console support
To: Barebox List <barebox@lists.infradead.org>

Add PBL console support to allow for better debugging.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c | 57 +++++++++++++++++++---
 1 file changed, 49 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index abfb77a..3b51e01 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -3,29 +3,70 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <mach/imx6-regs.h>
+#include <io.h>
+#include <mach/debug_ll.h>
+#include <mach/esdctl.h>
+#include <asm/cache.h>
 
 extern char __dtb_imx6q_sabrelite_start[];
 
-ENTRY_FUNCTION(start_imx6q_sabrelite, r0, r1, r2)
+static noinline void imx6q_sabrelite_start(void)
 {
-	void *fdt;
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+	void __iomem *uart = IOMEM(MX6_UART2_BASE_ADDR);
+
+	writel(0x4, iomuxbase + 0x0bc);
+
+	imx6_ungate_all_peripherals();
+	imx6_uart_setup(uart);
+	pbl_set_putc(imx_uart_putc, uart);
 
+	pr_debug("Freescale i.MX6q SabreLite\n");
+
+	imx6q_barebox_entry(__dtb_imx6q_sabrelite_start);
+}
+
+ENTRY_FUNCTION(start_imx6q_sabrelite, r0, r1, r2)
+{
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_sabrelite_start - get_runtime_offset();
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
 
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	imx6q_sabrelite_start();
 }
 
 extern char __dtb_imx6dl_sabrelite_start[];
 
-ENTRY_FUNCTION(start_imx6dl_sabrelite, r0, r1, r2)
+static noinline void imx6dl_sabrelite_start(void)
 {
-	void *fdt;
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
+	void __iomem *uart = IOMEM(MX6_UART2_BASE_ADDR);
+
+	writel(0x4, iomuxbase + 0x16c);
+
+	imx6_ungate_all_peripherals();
+	imx6_uart_setup(uart);
+	pbl_set_putc(imx_uart_putc, uart);
 
+	pr_debug("Freescale i.MX6q SabreLite\n");
+
+	imx6q_barebox_entry(__dtb_imx6q_sabrelite_start);
+}
+
+ENTRY_FUNCTION(start_imx6dl_sabrelite, r0, r1, r2)
+{
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_sabrelite_start - get_runtime_offset();
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
 
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	imx6dl_sabrelite_start();
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
