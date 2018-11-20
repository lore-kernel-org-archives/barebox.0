Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP0og-0001vK-UU
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 07:51:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Nov 2018 08:49:01 +0100
Message-Id: <20181120074901.22338-2-s.hauer@pengutronix.de>
In-Reply-To: <20181120074901.22338-1-s.hauer@pengutronix.de>
References: <20181120074901.22338-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX: GuF Vincell: Make pbl smaller
To: Barebox List <barebox@lists.infradead.org>

The PBL unnecessarily contains two dtb files when only one is needed. Be
a bit more smart and compile in only one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/lowlevel.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index cd887df17c..b211b59ada 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -16,11 +16,10 @@
 extern char __dtb_imx53_guf_vincell_lt_start[];
 extern char __dtb_imx53_guf_vincell_start[];
 
-static noinline void imx53_guf_vincell_init(int is_lt)
+static noinline void imx53_guf_vincell_init(void *fdt)
 {
 	void __iomem *ccm = (void *)MX53_CCM_BASE_ADDR;
 	void __iomem *uart = IOMEM(MX53_UART2_BASE_ADDR);
-	void *fdt;
 	u32 r;
 	enum bootsource src;
 	int instance;
@@ -39,15 +38,10 @@ static noinline void imx53_guf_vincell_init(int is_lt)
 	pbl_set_putc(imx_uart_putc, uart);
 	pr_debug("GuF Vincell\n");
 
-	if (is_lt)
-		fdt = __dtb_imx53_guf_vincell_lt_start;
-	else
-		fdt = __dtb_imx53_guf_vincell_start;
-
 	imx53_barebox_entry(fdt);
 }
 
-static void __imx53_guf_vincell_init(int is_lt)
+static noinline void __imx53_guf_vincell_init(void *fdt)
 {
 	arm_early_mmu_cache_invalidate();
 	imx5_cpu_lowlevel_init();
@@ -55,15 +49,19 @@ static void __imx53_guf_vincell_init(int is_lt)
 	setup_c();
 	barrier();
 
-	imx53_guf_vincell_init(is_lt);
+	imx53_guf_vincell_init(fdt);
 }
 
 ENTRY_FUNCTION(start_imx53_guf_vincell_lt, r0, r1, r2)
 {
-	__imx53_guf_vincell_init(1);
+	void *fdt = __dtb_imx53_guf_vincell_lt_start + get_runtime_offset();
+
+	__imx53_guf_vincell_init(fdt);
 }
 
 ENTRY_FUNCTION(start_imx53_guf_vincell, r0, r1, r2)
 {
-	__imx53_guf_vincell_init(0);
+	void *fdt = __dtb_imx53_guf_vincell_start + get_runtime_offset();
+
+	__imx53_guf_vincell_init(fdt);
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
