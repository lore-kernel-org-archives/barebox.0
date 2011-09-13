Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3Yyc-0007Az-8g
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 19:49:03 +0000
Received: by fxg7 with SMTP id 7so1036765fxg.36
	for <barebox@lists.infradead.org>; Tue, 13 Sep 2011 12:49:00 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 13 Sep 2011 21:48:08 +0200
Message-Id: <1315943288-3724-1-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <20110913144238.GC28104@game.jcrosoft.org>
References: <20110913144238.GC28104@game.jcrosoft.org>
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
Subject: [PATCH v2] at91: add spi clock connection id entries
To: barebox@lists.infradead.org, plagnioj@jcrosoft.com

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 Changed commit message.

 arch/arm/mach-at91/at91sam9260.c |    7 +++++++
 arch/arm/mach-at91/at91sam9261.c |    7 +++++++
 arch/arm/mach-at91/at91sam9263.c |    2 ++
 arch/arm/mach-at91/at91sam9g45.c |    2 ++
 4 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index c1f08e7..3af5747 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -169,6 +169,11 @@ static struct clk *periph_clocks[] = {
 	// irq0 .. irq2
 };
 
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+};
+
 static struct clk_lookup usart_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
 	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
@@ -203,6 +208,8 @@ static void __init at91sam9260_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
 	clkdev_add_table(usart_clocks_lookups,
 			 ARRAY_SIZE(usart_clocks_lookups));
 
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index fbb8058..b1e09ef 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -133,6 +133,11 @@ static struct clk *periph_clocks[] = {
 	// irq0 .. irq2
 };
 
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+};
+
 static struct clk_lookup usart_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
 	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
@@ -190,6 +195,8 @@ static void at91sam9261_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
 	clkdev_add_table(usart_clocks_lookups,
 			 ARRAY_SIZE(usart_clocks_lookups));
 
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index 12a7868..df2df7e 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -166,6 +166,8 @@ static struct clk *periph_clocks[] = {
 static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("mci_clk", "at91_mci0", &mmc0_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "at91_mci1", &mmc1_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index d4c27f8..9c478cd 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -191,6 +191,8 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
+	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
