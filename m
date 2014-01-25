Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W790T-0006zC-7t
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 19:35:07 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 25 Jan 2014 23:34:28 +0400
Message-Id: <1390678468-28378-12-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 12/12] ARM: i.MX: esdctl-v4: Use __iomem specifier for memory
 pointer
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/esdctl-v4.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl-v4.c b/arch/arm/mach-imx/esdctl-v4.c
index 6441ac9..0652b49 100644
--- a/arch/arm/mach-imx/esdctl-v4.c
+++ b/arch/arm/mach-imx/esdctl-v4.c
@@ -25,7 +25,7 @@
 void imx_esdctlv4_do_write_leveling(void)
 {
 	u32 val;
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 
 	/* switch RAMs to write-leveling mode */
 
@@ -80,7 +80,7 @@ void imx_esdctlv4_do_write_leveling(void)
 void imx_esdctlv4_do_dqs_gating(void)
 {
 	u32 val;
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 
 	/* configure ESDCTL comparator to use MPR pattern */
 	writel(ESDCTL_V4_PDCMPR2_MPR_FULL_CMP | ESDCTL_V4_PDCMPR2_MPR_CMP,
@@ -127,7 +127,7 @@ void imx_esdctlv4_do_dqs_gating(void)
 void imx_esdctlv4_do_zq_calibration(void)
 {
 	u32 val;
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 
 	/*
 	 * configure ZQ parameters
@@ -156,7 +156,7 @@ void imx_esdctlv4_do_zq_calibration(void)
  */
 void imx_esdctlv4_start_ddr3_sdram(int cs)
 {
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 	u32 val;
 	u32 val_cs1;
 
@@ -206,7 +206,7 @@ void imx_esdctlv4_start_ddr3_sdram(int cs)
 
 void imx_esdctlv4_do_read_delay_line_calibration(void)
 {
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 	u32 val;
 
 	/* configure ESDCTL comparator to use MPR pattern */
@@ -262,7 +262,7 @@ void imx_esdctlv4_do_read_delay_line_calibration(void)
 
 void imx_esdctlv4_do_write_delay_line_calibration(void)
 {
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 	void __iomem *adr;
 	u32 val;
 
@@ -275,7 +275,7 @@ void imx_esdctlv4_do_write_delay_line_calibration(void)
 	/* write test-pattern to RAM */
 
 	/* ESCTL uses this address for calibration */
-	adr = (void *)MX53_CSD0_BASE_ADDR + 0x10000000;
+	adr = IOMEM(MX53_CSD0_BASE_ADDR) + 0x10000000;
 	writel(0, adr + 0x00);
 	writel(0, adr + 0x0c);
 	writel(0, adr + 0x10);
@@ -328,7 +328,7 @@ void imx_esdctlv4_do_write_delay_line_calibration(void)
 /*
  * write magic values to RAM for testing purposes
  */
-static void imx_esdctlv4_write_magic_values(void *adr)
+static void imx_esdctlv4_write_magic_values(void __iomem *adr)
 {
 	/*
 	 * Freescale asks for first access to be a write to properly
@@ -348,7 +348,7 @@ static void imx_esdctlv4_write_magic_values(void *adr)
 /*
  * check if given DRAM addresses match expected values for row/col configuration
  */
-static u32 check_ram_address_line(void *adr, u32 compare, u32 mask)
+static u32 check_ram_address_line(void __iomem *adr, u32 compare, u32 mask)
 {
 	u32 val;
 
@@ -366,7 +366,7 @@ static u32 check_ram_address_line(void *adr, u32 compare, u32 mask)
  */
 void imx_esdctlv4_set_tRFC_timing(void)
 {
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 	u32 val, trfc, r2, esdcfg;
 
 	/* determine chip-density */
@@ -433,7 +433,7 @@ void imx_esdctlv4_set_tRFC_timing(void)
  */
 void imx_esdctlv4_detect_sdrams(void)
 {
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 	u32 esdctl0;
 
 	esdctl0 = readl(base + ESDCTL_V4_ESDCTL0);
@@ -451,7 +451,7 @@ void imx_esdctlv4_detect_sdrams(void)
 
 void imx_esdctlv4_init(void)
 {
-	void __iomem *base = (void *)MX53_ESDCTL_BASE_ADDR;
+	void __iomem *base = IOMEM(MX53_ESDCTL_BASE_ADDR);
 	u32 val, r1, esdctl0, mask, rows, cols;
 
 	/*
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
