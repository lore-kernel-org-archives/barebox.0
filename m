Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZICvh-0005VU-Si
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:36:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mgr@pengutronix.de>) id 1ZIB3p-0000MT-Ju
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:36:57 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <mgr@pengutronix.de>) id 1ZICvL-0007na-8f
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 11:36:19 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 23 Jul 2015 11:36:14 +0200
Message-Id: <1437644174-29714-1-git-send-email-m.grzeschik@pengutronix.de>
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
 arch/arm/mach-omap/am33xx_mux.c              | 12 ++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-mux.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
index 8318713..cc96ced 100644
--- a/arch/arm/mach-omap/am33xx_mux.c
+++ b/arch/arm/mach-omap/am33xx_mux.c
@@ -27,6 +27,13 @@ static const __maybe_unused struct module_pin_mux uart0_pin_mux[] = {
 	{-1},
 };
 
+static const __maybe_unused struct module_pin_mux uart1_pin_mux[] = {
+	{OFFSET(uart1_rxd), (MODE(0) | PULLUP_EN | RXACTIVE)},	/* UART1_RXD */
+	{OFFSET(uart1_txd), (MODE(0) | PULLUDEN)},		/* UART1_TXD */
+	{-1},
+};
+
+
 static const __maybe_unused struct module_pin_mux uart2_pin_mux[] = {
 	{OFFSET(mii1_txclk), (MODE(1) | PULLUDEN | RXACTIVE)},	/* UART2_RXD */
 	{OFFSET(mii1_rxclk), (MODE(1) | PULLUDEN)},		/* UART2_TXD */
@@ -302,6 +309,11 @@ void am33xx_enable_uart0_pin_mux(void)
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
