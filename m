Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfS6M-0006fy-Ec
 for barebox@lists.infradead.org; Thu, 23 May 2013 09:46:28 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 23 May 2013 11:45:58 +0200
Message-Id: <1369302358-9934-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1369302358-9934-1-git-send-email-jlu@pengutronix.de>
References: <1369302358-9934-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] arm: am33xx: add pinmux config for RMII2
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_mux.c              |   24 ++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-mux.h |    2 ++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_mux.c b/arch/arm/mach-omap/am33xx_mux.c
index 61014d9..424d120 100644
--- a/arch/arm/mach-omap/am33xx_mux.c
+++ b/arch/arm/mach-omap/am33xx_mux.c
@@ -148,6 +148,20 @@ static const __maybe_unused struct module_pin_mux rmii1_pin_mux[] = {
 	{-1},
 };
 
+static const __maybe_unused struct module_pin_mux rmii2_pin_mux[] = {
+	{OFFSET(gpmc_a0), MODE(3)},           /* RMII2_TXEN */
+	{OFFSET(gpmc_a4), MODE(3)},           /* RMII2_TXD1 */
+	{OFFSET(gpmc_a5), MODE(3)},           /* RMII2_TXD0 */
+	{OFFSET(gpmc_a10), MODE(3) | RXACTIVE},    /* RMII2_RXD1 */
+	{OFFSET(gpmc_a11), MODE(3) | RXACTIVE},    /* RMII2_RXD0 */
+	{OFFSET(gpmc_wait0), MODE(3) | RXACTIVE},     /* RMII2_CRS */
+	{OFFSET(gpmc_wpn), MODE(3) | RXACTIVE},   /* RMII2_RXERR */
+	{OFFSET(mdio_data), MODE(0) | RXACTIVE | PULLUP_EN}, /* MDIO_DATA */
+	{OFFSET(mdio_clk), MODE(0) | PULLUP_EN},    /* MDIO_CLK */
+	{OFFSET(mii1_col), MODE(1) | RXACTIVE}, /* RMII2_REFCLK */
+	{-1},
+};
+
 #ifdef CONFIG_NOR
 static const __maybe_unused struct module_pin_mux nor_pin_mux[] = {
 	{OFFSET(lcd_data0), MODE(1) | PULLUDEN},	/* NOR_A0 */
@@ -261,6 +275,16 @@ void am33xx_enable_mii1_pin_mux(void)
 	configure_module_pin_mux(mii1_pin_mux);
 }
 
+void am33xx_enable_rmii1_pin_mux(void)
+{
+	configure_module_pin_mux(rmii1_pin_mux);
+}
+
+void am33xx_enable_rmii2_pin_mux(void)
+{
+	configure_module_pin_mux(rmii2_pin_mux);
+}
+
 void am33xx_enable_i2c0_pin_mux(void)
 {
 	configure_module_pin_mux(i2c0_pin_mux);
diff --git a/arch/arm/mach-omap/include/mach/am33xx-mux.h b/arch/arm/mach-omap/include/mach/am33xx-mux.h
index e0f7077..44b93bd 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-mux.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-mux.h
@@ -248,6 +248,8 @@ extern void configure_module_pin_mux(const struct module_pin_mux *mod_pin_mux);
 
 /* Standard mux settings */
 extern void am33xx_enable_mii1_pin_mux(void);
+extern void am33xx_enable_rmii1_pin_mux(void);
+extern void am33xx_enable_rmii2_pin_mux(void);
 extern void am33xx_enable_i2c0_pin_mux(void);
 extern void am33xx_enable_i2c1_pin_mux(void);
 extern void am33xx_enable_i2c2_pin_mux(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
