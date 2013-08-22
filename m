Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCbdH-0001vv-R8
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 20:37:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2013 22:36:54 +0200
Message-Id: <1377203819-23074-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377203819-23074-1-git-send-email-s.hauer@pengutronix.de>
References: <1377203819-23074-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] ARM: am33xx: Make uart0 mux init callable during early
 init
To: barebox@lists.infradead.org

The am33xx pinmux functions use global variables which are not
accessible during early init. To make the setup of an early debug
uart easier convert am33xx_enable_uart0_pin_mux to not use global
variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_mux.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
index 8318713..e92bc27 100644
--- a/arch/arm/mach-omap/am33xx_mux.c
+++ b/arch/arm/mach-omap/am33xx_mux.c
@@ -21,12 +21,6 @@
 #define MUX_CFG(value, offset)	\
 	__raw_writel(value, (AM33XX_CTRL_BASE + offset));
 
-static const __maybe_unused struct module_pin_mux uart0_pin_mux[] = {
-	{OFFSET(uart0_rxd), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* UART0_RXD */
-	{OFFSET(uart0_txd), (MODE(0) | PULLUDEN)},		/* UART0_TXD */
-	{-1},
-};
-
 static const __maybe_unused struct module_pin_mux uart2_pin_mux[] = {
 	{OFFSET(mii1_txclk), (MODE(1) | PULLUDEN | RXACTIVE)},	/* UART2_RXD */
 	{OFFSET(mii1_rxclk), (MODE(1) | PULLUDEN)},		/* UART2_TXD */
@@ -299,7 +293,12 @@ void am33xx_enable_i2c2_pin_mux(void)
 
 void am33xx_enable_uart0_pin_mux(void)
 {
-	configure_module_pin_mux(uart0_pin_mux);
+	/*
+	 * no global variables for UART to make this callable
+	 * during early init.
+	 */
+	MUX_CFG((MODE(0) | PULLUP_EN | RXACTIVE), OFFSET(uart0_rxd));
+	MUX_CFG((MODE(0) | PULLUDEN), OFFSET(uart0_txd));
 }
 
 void am33xx_enable_uart2_pin_mux(void)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
