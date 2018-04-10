Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6358-0001jG-Vn
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:48 +0000
Received: by mail-pf0-x242.google.com with SMTP id c78so28373pfj.6
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:18 -0700
Message-Id: <20180410235323.5440-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180410235323.5440-1-andrew.smirnov@gmail.com>
References: <20180410235323.5440-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/10] ARM: i.MX6: esdctl: Use symbolic constants for RAM base
 address
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use symbolic constants for RAM base address, to do that rename
MX6_MMDC_PORT0_BASE_ADDR to MX6_MMDC_PORT01_BASE_ADDR to distinguish
it from SoCs with only one DDR controller (i.MX6UL) where port 0 will
always be at 0x80000000.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c  | 2 +-
 arch/arm/mach-imx/esdctl.c                 | 8 ++++----
 arch/arm/mach-imx/include/mach/imx6-regs.h | 4 +++-
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 22ffdf85e..c9ef16ae0 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -304,7 +304,7 @@ ENTRY_FUNCTION(start_imx6_zii_rdu2, r0, r1, r2)
 	 * When still running in SRAM, we need to setup the DRAM now and load
 	 * the remaining image.
 	 */
-	if (get_pc() < MX6_MMDC_PORT0_BASE_ADDR)
+	if (get_pc() < MX6_MMDC_PORT01_BASE_ADDR)
 		rdu2_sram_setup();
 
 	if (__imx6_cpu_revision() == IMX_CHIP_REV_2_0)
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index eda8184a0..3cd7c5738 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -378,12 +378,12 @@ static __maybe_unused struct imx_esdctl_data imx53_data = {
 };
 
 static __maybe_unused struct imx_esdctl_data imx6q_data = {
-	.base0 = MX6_MMDC_PORT0_BASE_ADDR,
+	.base0 = MX6_MMDC_PORT01_BASE_ADDR,
 	.add_mem = imx6_mmdc_add_mem,
 };
 
 static __maybe_unused struct imx_esdctl_data imx6ul_data = {
-	.base0 = 0x80000000,
+	.base0 = MX6_MMDC_PORT0_BASE_ADDR,
 	.add_mem = imx6_mmdc_add_mem,
 };
 
@@ -605,10 +605,10 @@ imx6_barebox_entry(unsigned long membase, void *boarddata)
 
 void __noreturn imx6q_barebox_entry(void *boarddata)
 {
-	imx6_barebox_entry(0x10000000, boarddata);
+	imx6_barebox_entry(MX6_MMDC_PORT01_BASE_ADDR, boarddata);
 }
 
 void __noreturn imx6ul_barebox_entry(void *boarddata)
 {
-	imx6_barebox_entry(0x80000000, boarddata);
+	imx6_barebox_entry(MX6_MMDC_PORT0_BASE_ADDR, boarddata);
 }
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index ac2aa2109..1ba22b5bc 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -117,6 +117,8 @@
 
 #define MX6_SATA_BASE_ADDR		0x02200000
 
-#define MX6_MMDC_PORT0_BASE_ADDR	0x10000000
+#define MX6_MMDC_PORT01_BASE_ADDR	0x10000000
+#define MX6_MMDC_PORT0_BASE_ADDR	0x80000000
+
 
 #endif /* __MACH_IMX6_REGS_H */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
