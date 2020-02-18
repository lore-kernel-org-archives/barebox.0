Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44wK-0004a6-QL
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:37:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:37:27 +0100
Message-Id: <20200218153732.14845-2-s.hauer@pengutronix.de>
In-Reply-To: <20200218153732.14845-1-s.hauer@pengutronix.de>
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: i.MX Phytec phycard i.MX27: get fdt in common init
 function
To: Barebox List <barebox@lists.infradead.org>

No need to get the fdt pointer in the entry functions, we can do this
later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/phytec-phycard-imx27/lowlevel.c    | 21 +++++++------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index bd46df0962..ded85ee80f 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -77,8 +77,11 @@ static void sdram_init(int sdram)
 			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 }
 
-static void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt, int sdram)
+extern char __dtb_imx27_phytec_phycard_s_rdk_bb_start[];
+
+static void __bare_init __naked phytec_phycard_imx27_common_init(int sdram)
 {
+	void *fdt;
 	unsigned long r;
 
 	arm_cpu_lowlevel_init();
@@ -89,6 +92,8 @@ static void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt, int
 	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0);
 	writel(0xffffffff, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1);
 
+	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
+
 	/* Skip SDRAM initialization if we run from RAM */
         r = get_pc();
         if (r > 0xa0000000 && r < 0xc0000000)
@@ -120,26 +125,16 @@ static void __bare_init __naked phytec_phycard_imx27_common_init(void *fdt, int
 	imx27_barebox_boot_nand_external(fdt);
 }
 
-extern char __dtb_imx27_phytec_phycard_s_rdk_bb_start[];
-
 ENTRY_FUNCTION(start_phytec_phycard_imx27_64mb, r0, r1, r2)
 {
-	void *fdt;
-
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
 
-	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
-
-	phytec_phycard_imx27_common_init(fdt, PHYCARD_MICRON_64MB);
+	phytec_phycard_imx27_common_init(PHYCARD_MICRON_64MB);
 }
 
 ENTRY_FUNCTION(start_phytec_phycard_imx27_128mb, r0, r1, r2)
 {
-	void *fdt;
-
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
 
-	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
-
-	phytec_phycard_imx27_common_init(fdt, PHYCARD_MICRON_128MB);
+	phytec_phycard_imx27_common_init(PHYCARD_MICRON_128MB);
 }
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
