Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIjTr-0000Lh-DI
 for barebox@lists.infradead.org; Thu, 30 Jun 2016 21:26:40 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu, 30 Jun 2016 23:24:14 +0200
Message-Id: <1467321854-15090-2-git-send-email-akurz@blala.de>
In-Reply-To: <1467321854-15090-1-git-send-email-akurz@blala.de>
References: <1467321854-15090-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/2] imx35-regs: add and use common CGR element shifters
To: barebox@lists.infradead.org, eric@eukrea.com
Cc: Alexander Kurz <akurz@blala.de>

Add some missing Clock Gate Register element shifters which were implemented
as magic numbers in the arm/boards directory. Use the new shifters for
inproved code readability.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c      |  9 +++++----
 arch/arm/boards/guf-cupid/lowlevel.c            |  5 +++--
 arch/arm/boards/phytec-phycore-imx35/lowlevel.c |  6 +++---
 arch/arm/mach-imx/include/mach/imx35-regs.h     | 15 +++++++++++++++
 4 files changed, 26 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 83c25fe..5573657 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -92,17 +92,18 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	writel(0x00001000, ccm_base + MX35_CCM_PDR0);
 
 	r = readl(ccm_base + MX35_CCM_CGR0);
-	r |= 0x00300000;
+	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
 	writel(r, ccm_base + MX35_CCM_CGR0);
 
 	r = readl(ccm_base + MX35_CCM_CGR1);
-	r |= 0x00030C00;
-	r |= 0x00000003;
+	r |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR1_IOMUX_SHIFT;
 	writel(r, ccm_base + MX35_CCM_CGR1);
 
 	/* enable watchdog asap */
 	r = readl(ccm_base + MX35_CCM_CGR2);
-	r |= 0x03000000;
+	r |= 0x3 << MX35_CCM_CGR2_WDOG_SHIFT;
 	writel(r, ccm_base + MX35_CCM_CGR2);
 
 	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index bcd2a24..31b7cdf 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -294,11 +294,12 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 
 	/* configure clock-gates */
 	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
-	r0 |= 0x00300000;
+	r0 |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
 	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
 
 	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
-	r0 |= 0x00000c03;
+	r0 |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
+	r0 |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
 	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 
 	/* Configure SDRAM */
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
index 1ad5439..577fcd9 100644
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
@@ -104,12 +104,12 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 		writel(CCM_PDR0_399, ccm_base + MX35_CCM_PDR0);
 
 	r = readl(ccm_base + MX35_CCM_CGR0);
-	r |= 0x00300000;
+	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
 	writel(r, ccm_base + MX35_CCM_CGR0);
 
 	r = readl(ccm_base + MX35_CCM_CGR1);
-	r |= 0x00000C00;
-	r |= 0x00000003;
+	r |= 0x3 << X35_CCM_CGR1_FEC_SHIFT;
+	r |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
 	writel(r, ccm_base + MX35_CCM_CGR1);
 
 	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 6905400..48bf643 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -150,11 +150,26 @@
 #define MX35_CCM_CGR3	0x38
 
 #define MX35_CCM_CGR0_CSPI1_SHIFT	10
+#define MX35_CCM_CGR0_CSPI2_SHIFT	12
+#define MX35_CCM_CGR0_EPIT1_SHIFT	20
+#define MX35_CCM_CGR0_EPIT2_SHIFT	22
 #define MX35_CCM_CGR0_ESDHC1_SHIFT	26
+#define MX35_CCM_CGR0_ESDHC2_SHIFT	28
+#define MX35_CCM_CGR0_ESDHC3_SHIFT	30
 #define MX35_CCM_CGR1_FEC_SHIFT	0
+#define MX35_CCM_CGR1_GPIO1_SHIFT	2
+#define MX35_CCM_CGR1_GPIO2_SHIFT	4
+#define MX35_CCM_CGR1_GPIO3_SHIFT	6
 #define MX35_CCM_CGR1_I2C1_SHIFT	10
+#define MX35_CCM_CGR1_I2C2_SHIFT	12
+#define MX35_CCM_CGR1_I2C3_SHIFT	14
+#define MX35_CCM_CGR1_IOMUX_SHIFT	16
+#define MX35_CCM_CGR1_KPP_SHIFT	20
+#define MX35_CCM_CGR2_UART1_SHIFT	16
 #define MX35_CCM_CGR2_UART2_SHIFT	18
+#define MX35_CCM_CGR2_UART3_SHIFT	20
 #define MX35_CCM_CGR2_USB_SHIFT	22
+#define MX35_CCM_CGR2_WDOG_SHIFT	24
 
 #define MX35_CCM_RCSR_MEM_CTRL_SHIFT		25
 #define MX35_CCM_RCSR_MEM_TYPE_SHIFT		23
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
