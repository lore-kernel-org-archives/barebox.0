Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1beOeI-0002sC-6M
 for barebox@lists.infradead.org; Mon, 29 Aug 2016 15:38:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Aug 2016 17:38:19 +0200
Message-Id: <1472485099-10551-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1472485099-10551-1-git-send-email-s.hauer@pengutronix.de>
References: <1472485099-10551-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX6 Santaro: Add PBL console support
To: Barebox List <barebox@lists.infradead.org>

To be able to use PBL console do the usual
relocate_to_current_adr()/setup_c() dance and call pbl_set_putc() to
tell the PBL console where the UART is.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-santaro/lowlevel.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index e2b6df5..1502bb3 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -3,36 +3,47 @@
 #include <io.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <asm/cache.h>
 #include <mach/generic.h>
 #include <mach/imx6-regs.h>
 #include <debug_ll.h>
+#include <console.h>
+#include <mach/esdctl.h>
 
 static inline void setup_uart(void)
 {
-	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
 
 	writel(0x1, iomuxbase + 0x2b0);
 
 	imx6_ungate_all_peripherals();
-	imx6_uart_setup_ll();
-
-	putc_ll('>');
+	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
 }
 
 extern char __dtb_imx6q_guf_santaro_start[];
 
-ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
+static noinline void santaro_start(void)
 {
-	void *fdt;
+	pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));
+
+	pr_debug("Garz+Fricke Santaro\n");
+
+	imx6q_barebox_entry(__dtb_imx6q_guf_santaro_start);
+}
 
+ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
+{
 	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
+	arm_early_mmu_cache_invalidate();
+
+	setup_uart();
 
-	fdt = __dtb_imx6q_guf_santaro_start - get_runtime_offset();
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
 
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	santaro_start();
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
