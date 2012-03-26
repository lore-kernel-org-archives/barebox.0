Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCDjF-0005Rt-QX
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 17:29:15 +0000
Received: by lbol5 with SMTP id l5so4906202lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 10:29:11 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 19:29:06 +0200
Message-Id: <1332782947-3407-4-git-send-email-esben.haabendal@gmail.com>
In-Reply-To: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
References: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
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
Subject: [PATCH 3/4] mxs: Cleanup use of blank lines in i.MX28 iomux
 configurations
To: barebox@lists.infradead.org
Cc: Esben Haabendal <esben.haabendal@prevas.dk>

From: Esben Haabendal <esben.haabendal@gmail.com>

Signed-off-by: Esben Haabendal <esben.haabendal@prevas.dk>
---
 arch/arm/mach-mxs/include/mach/iomux-imx28.h |   37 --------------------------
 1 files changed, 0 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx28.h b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
index fae525e..8eac71d 100644
--- a/arch/arm/mach-mxs/include/mach/iomux-imx28.h
+++ b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
@@ -145,20 +145,14 @@
 #define GPMI_D0_GPIO		(FUNC(3) | PORTF(0, 0) | SE | VE | PE)
 
 /* Bank 1, GPIO pins 32 ... 63 */
-
 #define LCD_ENABLE		(FUNC(0) | PORTF(1, 31) | SE | VE | BK)
 #define LCD_ENABLE_GPIO		(FUNC(3) | PORTF(1, 31) | SE | VE | BK)
-
 #define LCD_DOTCLK		(FUNC(0) | PORTF(1, 30) | SE | VE | BK)
-
 #define LCD_HSYNC		(FUNC(0) | PORTF(1, 29) | SE | VE | BK)
-
 #define LCD_VSYNC		(FUNC(0) | PORTF(1, 28) | SE | VE | BK)
-
 #define LCD_CS			(FUNC(0) | PORTF(1, 27) | SE | VE | BK)
 #define LCD_CS_LCD_ENABLE	(FUNC(1) | PORTF(1, 27) | SE | VE | BK)
 #define LCD_CS_GPIO		(FUNC(3) | PORTF(1, 27) | SE | VE | BK)
-
 #define LCD_RS			(FUNC(0) | PORTF(1, 26) | SE | VE | BK)
 #define LCD_RS_LCD_DOTCLK	(FUNC(1) | PORTF(1, 26) | SE | VE | BK)
 #define LCD_RS_GPIO		(FUNC(3) | PORTF(1, 26) | SE | VE | BK)
@@ -170,23 +164,14 @@
 #define LCD_RD_E_LCD_VSYNC	(FUNC(1) | PORTF(1, 24) | SE | VE | BK)
 #define LCD_RD_E_ETM_TCTL	(FUNC(2) | PORTF(1, 24) | SE | VE | BK)
 #define LCD_RD_E_GPIO		(FUNC(3) | PORTF(1, 24) | SE | VE | BK)
-
 #define LCD_D23			(FUNC(0) | PORTF(1, 23) | SE | VE | BK)
-
 #define LCD_D22			(FUNC(0) | PORTF(1, 22) | SE | VE | BK)
-
 #define LCD_D21			(FUNC(0) | PORTF(1, 21) | SE | VE | BK)
-
 #define LCD_D20			(FUNC(0) | PORTF(1, 20) | SE | VE | BK)
-
 #define LCD_D19			(FUNC(0) | PORTF(1, 19) | SE | VE | BK)
-
 #define LCD_D18			(FUNC(0) | PORTF(1, 18) | SE | VE | BK)
-
 #define LCD_D17			(FUNC(0) | PORTF(1, 17) | SE | VE | BK)
-
 #define LCD_D16			(FUNC(0) | PORTF(1, 16) | SE | VE | BK)
-
 #define LCD_D15			(FUNC(0) | PORTF(1, 15) | SE | VE | BK)
 #define LCD_D15_ETM_DA15	(FUNC(2) | PORTF(1, 15) | SE | VE | BK)
 #define LCD_D15_GPIO		(FUNC(3) | PORTF(1, 15) | SE | VE | BK)
@@ -290,7 +275,6 @@
 #define SSP0_D0_GPIO		(FUNC(3) | PORTF(2, 0) | SE | VE | PE)
 
 /* Bank 3, GPIO pins 96 ... 127 */
-
 #define LCD_RESET		(FUNC(0) | PORTF(3, 30))
 #define LCD_RESET_LCD_VSYNC	(FUNC(1) | PORTF(3, 30))
 #define LCD_RESET_GPIO		(FUNC(3) | PORTF(3, 30))
@@ -298,12 +282,9 @@
 #define PWM4_GPIO		(FUNC(3) | PORTF(3, 29))
 #define PWM3			(FUNC(0) | PORTF(3, 28))
 #define PWM3_GPIO		(FUNC(3) | PORTF(3, 28))
-
 #define PWM2			(FUNC(0) | PORTF(3, 18))
-
 #define PWM1			(FUNC(0) | PORTF(3, 17))
 #define PWM1_DUART_TX		(FUNC(2) | PORTF(3, 17))
-
 #define PWM0			(FUNC(0) | PORTF(3, 16))
 #define PWM0_I2C1_SCL		(FUNC(1) | PORTF(3, 16))
 #define PWM0_DUART_RX		(FUNC(2) | PORTF(3, 16))
@@ -374,16 +355,12 @@
 #define AUART0_RX_GPIO		(FUNC(3) | PORTF(3, 0) | SE | VE | BK)
 
 /* Bank 4, GPIO pins 128 ... 159 */
-
 #define JTAG_RTCK		(FUNC(0) | PORTF(4, 20) | SE | VE | BK)
 #define JTAG_RTCK_GPIO		(FUNC(3) | PORTF(4, 20) | SE | VE | BK)
 #define ENET_CLK		(FUNC(0) | PORTF(4, 16) | SE | VE | BK)
 #define ENET_CLK_GPIO		(FUNC(3) | PORTF(4, 16) | SE | VE | BK)
-
 #define ENET0_CRS		(FUNC(0) | PORTF(4, 15) | SE | VE | BK)
-
 #define ENET0_COL		(FUNC(0) | PORTF(4, 14) | SE | VE | BK)
-
 #define ENET0_RX_CLK		(FUNC(0) | PORTF(4, 13) | SE | VE | BK)
 #define ENET0_RX_CLK_RX_ER	(FUNC(1) | PORTF(4, 13) | SE | VE | BK)
 #define ENET0_RX_ENET0_1588_EVENT2_IN (FUNC(2) | PORTF(4, 13) | SE | VE | BK)
@@ -392,36 +369,22 @@
 #define ENET0_TXD3_ENET1_TXD1	(FUNC(1) | PORTF(4, 12) | SE | VE | BK)
 #define ENET0_TXD3_ENET0_1588_EVENT1_IN (FUNC(2) | PORTF(4, 12) | SE | VE | BK)
 #define ENET0_TXD3_GPIO		(FUNC(3) | PORTF(4, 12) | SE | VE | BK)
-
 #define ENET0_TXD2		(FUNC(0) | PORTF(4, 11) | SE | VE | BK)
-
 #define ENET0_TXD2_GPIO		(FUNC(3) | PORTF(4, 11) | SE | VE | BK)
-
 #define ENET0_RXD3		(FUNC(0) | PORTF(4, 10) | SE | VE | BK)
 #define ENET0_RXD3_ENET1_RXD1	(FUNC(1) | PORTF(4, 10) | SE | VE | BK)
 #define ENET0_RXD3_ENET0_1588_EVENT0_IN (FUNC(2) | PORTF(4, 10) | SE | VE | BK)
 #define ENET0_RXD3_GPIO		(FUNC(3) | PORTF(4, 10) | SE | VE | BK)
-
 #define ENET0_RXD2		(FUNC(0) | PORTF(4, 9) | SE | VE | BK)
-
 #define ENET0_RXD2_GPIO		(FUNC(3) | PORTF(4, 9) | SE | VE | BK)
-
 #define ENET0_TXD1		(FUNC(0) | PORTF(4, 8) | SE | VE | PE)
-
 #define ENET0_TXD1_GPIO		(FUNC(3) | PORTF(4, 8) | SE | VE | PE)
-
 #define ENET0_TXD0		(FUNC(0) | PORTF(4, 7) | SE | VE | PE)
-
 #define ENET0_TXD0_GPIO		(FUNC(3) | PORTF(4, 7) | SE | VE | PE)
-
 #define ENET0_TX_EN		(FUNC(0) | PORTF(4, 6) | SE | VE | PE)
-
 #define ENET0_TX_EN_GPIO	(FUNC(3) | PORTF(4, 6) | SE | VE | PE)
-
 #define ENET0_TX_CLK		(FUNC(0) | PORTF(4, 5) | SE | VE | BK)
-
 #define ENET0_TX_CLK_GPIO	(FUNC(3) | PORTF(4, 5) | SE | VE | BK)
-
 #define ENET0_RXD1		(FUNC(0) | PORTF(4, 4) | SE | VE | PE)
 #define ENET0_RXD1_GPMI_READY4	(FUNC(1) | PORTF(4, 4) | SE | VE | PE)
 #define ENET0_RXD1_GPIO		(FUNC(3) | PORTF(4, 4) | SE | VE | PE)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
