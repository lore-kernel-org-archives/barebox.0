Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShcO7-0002a6-3Z
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 08:05:12 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 21 Jun 2012 12:05:02 +0400
Message-Id: <1340265903-16017-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] Setup UART-pads via iomux interface
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   11 ++++++-----
 arch/arm/boards/freescale-mx51-pdk/board.c        |   12 +++++++-----
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 3cc7a72..35c114d 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -53,6 +53,11 @@ struct imx_nand_platform_data nand_info = {
 };
 
 static iomux_v3_cfg_t eukrea_cpuimx51_pads[] = {
+	/* UART1 */
+	MX51_PAD_UART1_RXD__UART1_RXD,
+	MX51_PAD_UART1_TXD__UART1_TXD,
+	MX51_PAD_UART1_RTS__UART1_RTS,
+	MX51_PAD_UART1_CTS__UART1_CTS,
 	/* FEC */
 	MX51_PAD_DISP2_DAT1__FEC_RX_ER,
 	MX51_PAD_DISP2_DAT15__FEC_TDATA0,
@@ -141,12 +146,8 @@ static int eukrea_cpuimx51_console_init(void)
 
 	imx51_init_lowlevel(800);
 
-	writel(0, 0x73fa8228);
-	writel(0, 0x73fa822c);
-	writel(0, 0x73fa8230);
-	writel(0, 0x73fa8234);
-
 	imx51_add_uart0();
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 0bb2ffe..9ec331a 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -48,6 +48,12 @@ static struct fec_platform_data fec_info = {
 };
 
 static iomux_v3_cfg_t f3s_pads[] = {
+	/* UART1 */
+	MX51_PAD_UART1_RXD__UART1_RXD,
+	MX51_PAD_UART1_TXD__UART1_TXD,
+	MX51_PAD_UART1_RTS__UART1_RTS,
+	MX51_PAD_UART1_CTS__UART1_CTS,
+	/* FEC */
 	MX51_PAD_EIM_EB2__FEC_MDIO,
 	MX51_PAD_EIM_EB3__FEC_RDATA1,
 	MX51_PAD_EIM_CS2__FEC_RDATA2,
@@ -268,12 +274,8 @@ static int f3s_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
 
-	writel(0, 0x73fa8228);
-	writel(0, 0x73fa822c);
-	writel(0, 0x73fa8230);
-	writel(0, 0x73fa8234);
-
 	imx51_add_uart0();
+
 	return 0;
 }
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
