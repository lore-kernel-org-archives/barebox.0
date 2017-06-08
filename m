Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJ2P1-0000kT-V8
 for barebox@lists.infradead.org; Thu, 08 Jun 2017 18:43:30 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu,  8 Jun 2017 20:41:35 +0200
Message-Id: <1496947297-23502-2-git-send-email-akurz@blala.de>
In-Reply-To: <1496947297-23502-1-git-send-email-akurz@blala.de>
References: <1496947297-23502-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/4] ARM: i.MX6 Wandboard Quad: fix PBL UART MUX
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Three variants of the Wandboard exist: WBSOLO, WBDUAL and WBQUAD.
For all variants, the external serial port is connected to UART1 via
PAD_CSI0_DATA10 (TX) and PAD_CSI0_DATA11 (RX). Unfortunately, the IOMUX
register adresses for this mux differ between i.MX6Q (WBQUAD) and others.
Make the UART IOMUX for PBL compatible for WBQUAD.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/technexion-wandboard/lowlevel.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/technexion-wandboard/lowlevel.c b/arch/arm/boards/technexion-wandboard/lowlevel.c
index ff5ae6d..9aae429 100644
--- a/arch/arm/boards/technexion-wandboard/lowlevel.c
+++ b/arch/arm/boards/technexion-wandboard/lowlevel.c
@@ -285,11 +285,25 @@ static unsigned long wandboard_dram_init(void)
 
 static void setup_uart(void)
 {
+	int cpu_type = __imx6_cpu_type();
 	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
 
-	/* mux the uart */
-	writel(0x00000003, iomuxbase + 0x4c);
-	writel(0x00000000, iomuxbase + 0x8fc);
+	/* mux UART1 TX on PAD_CSI0_DATA10 */
+	switch (cpu_type) {
+	case IMX6_CPUTYPE_IMX6S:
+	case IMX6_CPUTYPE_IMX6DL:
+		writel(0x00000003, iomuxbase + 0x4c);
+		writel(0x0001b0b1, iomuxbase + 0x360);
+		writel(0x00000000, iomuxbase + 0x8fc);
+		break;
+	case IMX6_CPUTYPE_IMX6Q:
+		writel(0x00000003, iomuxbase + 0x280);
+		writel(0x0001b0b1, iomuxbase + 0x650);
+		writel(0x00000001, iomuxbase + 0x920);
+		break;
+	default:
+		return;
+	}
 
 	imx6_ungate_all_peripherals();
 	imx6_uart_setup((void *)MX6_UART1_BASE_ADDR);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
