Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk6Fo-0006s2-Cg
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 09:13:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 11:12:40 +0200
Message-Id: <1473844368-13030-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
References: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] ARM: i.MX53 Vincell: Add PBL console support
To: Barebox List <barebox@lists.infradead.org>

PBL console support is more useful than debug_ll. Add support
for it to the Vincell Board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/lowlevel.c | 50 ++++++++++++++++++++--------------
 1 file changed, 29 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index af7c65d..3985dd7 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -11,6 +11,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
+#include <asm/cache.h>
 
 #define IOMUX_PADCTL_DDRI_DDR (1 << 9)
 
@@ -123,12 +124,16 @@ void disable_watchdog(void)
 	writew(0x0, MX53_WDOG2_BASE_ADDR + 8);
 }
 
-static noinline void imx53_guf_vincell_init(void *fdt)
+extern char __dtb_imx53_guf_vincell_lt_start[];
+extern char __dtb_imx53_guf_vincell_start[];
+
+static noinline void imx53_guf_vincell_init(int is_lt)
 {
 	void __iomem *ccm = (void *)MX53_CCM_BASE_ADDR;
+	void __iomem *uart = IOMEM(MX53_UART4_BASE_ADDR);
+	void *fdt;
 	u32 r;
 
-	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE - 8);
 
 	writel(0x0088494c, ccm + MX5_CCM_CBCDR);
@@ -137,12 +142,11 @@ static noinline void imx53_guf_vincell_init(void *fdt)
 
 	imx53_init_lowlevel_early(800);
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x27c);
-		writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x278);
-		imx53_uart_setup_ll();
-		putc_ll('>');
-	}
+	writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x27c);
+	writel(0x3, MX53_IOMUXC_BASE_ADDR + 0x278);
+	imx53_uart_setup(uart);
+	pbl_set_putc(imx_uart_putc, uart);
+	pr_debug("GuF Vincell\n");
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
@@ -152,27 +156,31 @@ static noinline void imx53_guf_vincell_init(void *fdt)
 		imx_esdctlv4_init();
 	}
 
+	if (is_lt)
+		fdt = __dtb_imx53_guf_vincell_lt_start;
+	else
+		fdt = __dtb_imx53_guf_vincell_start;
+
 	imx53_barebox_entry(fdt);
 }
 
-extern char __dtb_imx53_guf_vincell_lt_start[];
-
-ENTRY_FUNCTION(start_imx53_guf_vincell_lt, r0, r1, r2)
+static void __imx53_guf_vincell_init(int is_lt)
 {
-	void *fdt;
-
-	fdt = __dtb_imx53_guf_vincell_lt_start - get_runtime_offset();
+	arm_early_mmu_cache_invalidate();
+	imx5_cpu_lowlevel_init();
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
 
-	imx53_guf_vincell_init(fdt);
+	imx53_guf_vincell_init(is_lt);
 }
 
-extern char __dtb_imx53_guf_vincell_start[];
+ENTRY_FUNCTION(start_imx53_guf_vincell_lt, r0, r1, r2)
+{
+	__imx53_guf_vincell_init(1);
+}
 
 ENTRY_FUNCTION(start_imx53_guf_vincell, r0, r1, r2)
 {
-	void *fdt;
-
-	fdt = __dtb_imx53_guf_vincell_start - get_runtime_offset();
-
-	imx53_guf_vincell_init(fdt);
+	__imx53_guf_vincell_init(0);
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
