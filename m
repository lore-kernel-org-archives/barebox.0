Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhdD8-0005kA-4o
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 12:11:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <mgr@pengutronix.de>) id 1YhdCl-0008E4-Rs
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 14:11:07 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <mgr@pengutronix.de>) id 1YhdCl-0004WN-Qj
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 14:11:07 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 13 Apr 2015 14:11:05 +0200
Message-Id: <1428927065-10987-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ARM: OMAP: AM33xx: add uart1 pinmux setup
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_mux.c              | 11 +++++++++++
 arch/arm/mach-omap/include/mach/am33xx-mux.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
index 8318713..f13582b 100644
--- a/arch/arm/mach-omap/am33xx_mux.c
+++ b/arch/arm/mach-omap/am33xx_mux.c
@@ -27,6 +27,12 @@ static const __maybe_unused struct module_pin_mux uart0_pin_mux[] = {
 	{-1},
 };
 
+static const __maybe_unused struct module_pin_mux uart1_pin_mux[] = {
+	{OFFSET(uart1_rxd), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* UART1_RXD */
+	{OFFSET(uart1_txd), (MODE(0) | PULLUDEN)},		/* UART1_TXD */
+	{-1},
+};
+
 static const __maybe_unused struct module_pin_mux uart2_pin_mux[] = {
 	{OFFSET(mii1_txclk), (MODE(1) | PULLUDEN | RXACTIVE)},	/* UART2_RXD */
 	{OFFSET(mii1_rxclk), (MODE(1) | PULLUDEN)},		/* UART2_TXD */
@@ -302,6 +308,11 @@ void am33xx_enable_uart0_pin_mux(void)
 	configure_module_pin_mux(uart0_pin_mux);
 }
 
+void am33xx_enable_uart1_pin_mux(void)
+{
+	configure_module_pin_mux(uart1_pin_mux);
+}
+
 void am33xx_enable_uart2_pin_mux(void)
 {
 	configure_module_pin_mux(uart2_pin_mux);
diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/arch/arm/mach-omap/include/mach/am33xx-mux.h
index fe3168b..af9f14d 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-mux.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-mux.h
@@ -254,6 +254,7 @@ extern void am33xx_enable_i2c0_pin_mux(void);
 extern void am33xx_enable_i2c1_pin_mux(void);
 extern void am33xx_enable_i2c2_pin_mux(void);
 extern void am33xx_enable_uart0_pin_mux(void);
+extern void am33xx_enable_uart1_pin_mux(void);
 extern void am33xx_enable_uart2_pin_mux(void);
 extern void am33xx_enable_mmc0_pin_mux(void);
 extern void am33xx_enable_spi0_pin_mux(void);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
