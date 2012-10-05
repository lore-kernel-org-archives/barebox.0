Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5XI-0004iS-RL
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:53:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:53:32 +0200
Message-Id: <1349434416-4231-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1349434416-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] ARM i.MX boards: Use IMX_GPIO_NR
To: barebox@lists.infradead.org

Rather than GPIO_PORT* which will vanish.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c |    2 +-
 arch/arm/boards/karo-tx25/board.c               |   10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 25402d7..cbfa3b4 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -200,7 +200,7 @@ static inline int imx6_iim_register_fec_ethaddr(void)
 	return 0;
 }
 
-static int sabrelite_spi_cs[] = {GPIO_PORTC + 19};
+static int sabrelite_spi_cs[] = {IMX_GPIO_NR(3, 19)};
 
 static struct spi_imx_master sabrelite_spi_0_data = {
 	.chipselect = sabrelite_spi_cs,
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 5413ea8..82d5eb5 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -75,8 +75,8 @@ static iomux_v3_cfg_t karo_tx25_padsd_fec[] = {
 	MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,
 };
 
-#define TX25_FEC_PWR_GPIO	(GPIO_PORTD | 9)
-#define TX25_FEC_RST_GPIO	(GPIO_PORTD | 7)
+#define TX25_FEC_PWR_GPIO	IMX_GPIO_NR(4, 9)
+#define TX25_FEC_RST_GPIO	IMX_GPIO_NR(4, 7)
 
 static void noinline gpio_fec_active(void)
 {
@@ -217,9 +217,9 @@ static struct imx_fb_videomode stk5_fb_mode = {
 	.pcr	= PCR_TFT | PCR_COLOR | PCR_FLMPOL | PCR_LPPOL | PCR_SCLK_SEL,
 };
 
-#define STK5_LCD_BACKLIGHT_GPIO		(GPIO_PORTA | 26)
-#define STK5_LCD_RESET_GPIO		(GPIO_PORTB | 4)
-#define STK5_LCD_POWER_GPIO		(GPIO_PORTB | 5)
+#define STK5_LCD_BACKLIGHT_GPIO		IMX_GPIO_NR(1, 26)
+#define STK5_LCD_RESET_GPIO		IMX_GPIO_NR(2, 4)
+#define STK5_LCD_POWER_GPIO		IMX_GPIO_NR(2, 5)
 
 static void tx25_fb_enable(int enable)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
