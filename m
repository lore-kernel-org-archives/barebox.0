Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TlhBl-0006kB-M4
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:33:43 +0000
Received: from mail638.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5B12C104ED4B
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 15:42:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Dec 2012 15:31:48 +0100
Message-Id: <1356013910-30196-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356013910-30196-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121220142902.GI26483@game.jcrosoft.org>
 <1356013910-30196-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] at91: gpio: switch to device driver
To: barebox@lists.infradead.org

this is the first step to prepare the switch to the gpiolib

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200.c        |   46 ++++++++++-----------
 arch/arm/mach-at91/at91sam9260.c       |   34 +++++++---------
 arch/arm/mach-at91/at91sam9261.c       |   36 +++++++---------
 arch/arm/mach-at91/at91sam9263.c       |   44 ++++++++------------
 arch/arm/mach-at91/at91sam9g45.c       |   43 ++++++++------------
 arch/arm/mach-at91/at91sam9n12.c       |   38 ++++++++---------
 arch/arm/mach-at91/at91sam9x5.c        |   38 ++++++++---------
 arch/arm/mach-at91/generic.h           |   12 ++++++
 arch/arm/mach-at91/gpio.c              |   70 +++++++++++++++++++++++++++-----
 arch/arm/mach-at91/include/mach/gpio.h |    7 ----
 10 files changed, 189 insertions(+), 179 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index 5e3fdeb..e298c97 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -157,6 +157,13 @@ static struct clk *periph_clocks[] __initdata = {
 	// irq0 .. irq6
 };
 
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioD_clk),
+};
+
 static struct clk_lookup usart_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
 	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
@@ -201,6 +208,8 @@ static void __init at91rm9200_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
 	clkdev_add_table(usart_clocks_lookups,
 			 ARRAY_SIZE(usart_clocks_lookups));
 
@@ -211,27 +220,6 @@ static void __init at91rm9200_register_clocks(void)
 }
 
 /* --------------------------------------------------------------------
- *  GPIO
- * -------------------------------------------------------------------- */
-
-static struct at91_gpio_bank at91rm9200_gpio[] = {
-	{
-		.regbase	= IOMEM(AT91_BASE_PIOA),
-		.clock		= &pioA_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOB),
-		.clock		= &pioB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOC),
-		.clock		= &pioC_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOD),
-		.clock		= &pioD_clk,
-	}
-};
-
-
-/* --------------------------------------------------------------------
  *  AT91RM9200 processor initialization
  * -------------------------------------------------------------------- */
 static int __init at91rm9200_initialize(void)
@@ -243,10 +231,18 @@ static int __init at91rm9200_initialize(void)
 	/* Register the processor-specific clocks */
 	at91rm9200_register_clocks();
 
-	/* Initialize GPIO subsystem */
-	at91_gpio_init(at91rm9200_gpio, ARRAY_SIZE(at91rm9200_gpio));
-
 	return 0;
 }
-
 core_initcall(at91rm9200_initialize);
+
+static int at91rm9200_gpio_init(void)
+{
+	/* Register GPIO subsystem */
+	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
+	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
+
+	return 0;
+}
+postcore_initcall(at91rm9200_gpio_init);
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index cf9e511..6c741f8 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -172,6 +172,9 @@ static struct clk *periph_clocks[] = {
 static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
@@ -217,23 +220,6 @@ static void __init at91sam9260_register_clocks(void)
 	clk_register(&pck1);
 }
 
-/* --------------------------------------------------------------------
- *  GPIO
- * -------------------------------------------------------------------- */
-
-static struct at91_gpio_bank at91sam9260_gpio[] = {
-	{
-		.regbase	= IOMEM(AT91_BASE_PIOA),
-		.clock		= &pioA_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOB),
-		.clock		= &pioB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOC),
-		.clock		= &pioC_clk,
-	}
-};
-
 static int at91sam9260_initialize(void)
 {
 	/* Init clock subsystem */
@@ -242,9 +228,17 @@ static int at91sam9260_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9260_register_clocks();
 
-	/* Register GPIO subsystem */
-	at91_gpio_init(at91sam9260_gpio, 3);
 	return 0;
 }
-
 core_initcall(at91sam9260_initialize);
+
+static int at91sam9260_gpio_init(void)
+{
+	/* Register GPIO subsystem */
+	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
+
+	return 0;
+}
+postcore_initcall(at91sam9260_gpio_init);
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index d20b250..b57e119 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -136,6 +136,9 @@ static struct clk *periph_clocks[] = {
 static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
@@ -209,25 +212,6 @@ static void at91sam9261_register_clocks(void)
 	clk_register(&hck1);
 }
 
-
-/* --------------------------------------------------------------------
- *  GPIO
- * -------------------------------------------------------------------- */
-
-static struct at91_gpio_bank at91sam9261_gpio[] = {
-	{
-		.regbase	= IOMEM(AT91_BASE_PIOA),
-		.clock		= &pioA_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOB),
-		.clock		= &pioB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOC),
-		.clock		= &pioC_clk,
-	}
-};
-
-
 static int at91sam9261_initialize(void)
 {
 	/* Init clock subsystem */
@@ -236,9 +220,17 @@ static int at91sam9261_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9261_register_clocks();
 
-	/* Register GPIO subsystem */
-	at91_gpio_init(at91sam9261_gpio, 3);
 	return 0;
 }
-
 core_initcall(at91sam9261_initialize);
+
+static int at91sam9261_gpio_init(void)
+{
+	/* Register GPIO subsystem */
+	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
+
+	return 0;
+}
+postcore_initcall(at91sam9261_gpio_init);
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index b3116d3..a4387ee 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -168,6 +168,11 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioCDE_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioCDE_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio4", &pioCDE_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
@@ -224,29 +229,6 @@ static void __init at91sam9263_register_clocks(void)
 	clk_register(&pck3);
 }
 
-/* --------------------------------------------------------------------
- *  GPIO
- * -------------------------------------------------------------------- */
-
-static struct at91_gpio_bank at91sam9263_gpio[] = {
-	{
-		.regbase	= IOMEM(AT91_BASE_PIOA),
-		.clock		= &pioA_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOB),
-		.clock		= &pioB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOC),
-		.clock		= &pioCDE_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOD),
-		.clock		= &pioCDE_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOE),
-		.clock		= &pioCDE_clk,
-	}
-};
-
 static int at91sam9263_initialize(void)
 {
 	/* Init clock subsystem */
@@ -255,9 +237,19 @@ static int at91sam9263_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9263_register_clocks();
 
-	/* Register GPIO subsystem */
-	at91_gpio_init(at91sam9263_gpio, 5);
 	return 0;
 }
-
 core_initcall(at91sam9263_initialize);
+
+static int at91sam9263_gpio_init(void)
+{
+	/* Register GPIO subsystem */
+	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
+	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
+	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
+
+	return 0;
+}
+postcore_initcall(at91sam9263_gpio_init);
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index a6717f1..c3a3158 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -190,6 +190,11 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio0", &pioA_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio1", &pioB_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio2", &pioC_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioDE_clk),
+	CLKDEV_DEV_ID("at91rm9200-gpio4", &pioDE_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
@@ -236,29 +241,6 @@ static void __init at91sam9g45_register_clocks(void)
 	clk_register(&pck1);
 }
 
-/* --------------------------------------------------------------------
- *  GPIO
- * -------------------------------------------------------------------- */
-
-static struct at91_gpio_bank at91sam9g45_gpio[] = {
-	{
-		.regbase	= IOMEM(AT91_BASE_PIOA),
-		.clock		= &pioA_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOB),
-		.clock		= &pioB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOC),
-		.clock		= &pioC_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOD),
-		.clock		= &pioDE_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOE),
-		.clock		= &pioDE_clk,
-	}
-};
-
 static int at91sam9g45_initialize(void)
 {
 	/* Init clock subsystem */
@@ -267,9 +249,20 @@ static int at91sam9g45_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9g45_register_clocks();
 
-	/* Register GPIO subsystem */
-	at91_gpio_init(at91sam9g45_gpio, 5);
 	return 0;
 }
 
 core_initcall(at91sam9g45_initialize);
+
+static int at91sam9g45_gpio_init(void)
+{
+	/* Register GPIO subsystem */
+	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
+	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
+	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
+	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
+	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
+
+	return 0;
+}
+postcore_initcall(at91sam9g45_gpio_init);
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index b74a72a..3ddaa7d 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -150,6 +150,10 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_ID("ohci_clk", &uhpfs_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio0", &pioAB_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio1", &pioAB_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioCD_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioCD_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
@@ -195,26 +199,6 @@ static void __init at91sam9n12_register_clocks(void)
 }
 
 /* --------------------------------------------------------------------
- *  GPIO
- * -------------------------------------------------------------------- */
-
-static struct at91_gpio_bank at91sam9n12_gpio[] = {
-	{
-		.regbase	= IOMEM(AT91_BASE_PIOA),
-		.clock		= &pioAB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOB),
-		.clock		= &pioAB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOC),
-		.clock		= &pioCD_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOD),
-		.clock		= &pioCD_clk,
-	}
-};
-
-/* --------------------------------------------------------------------
  *  AT91SAM9N12 processor initialization
  * -------------------------------------------------------------------- */
 
@@ -226,8 +210,18 @@ static int at91sam9n12_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9n12_register_clocks();
 
-	/* Register GPIO subsystem */
-	at91_gpio_init(at91sam9n12_gpio, 4);
 	return 0;
 }
 core_initcall(at91sam9n12_initialize);
+
+static int at91sam9n12_gpio_init(void)
+{
+	/* Register GPIO subsystem */
+	at91_add_sam9x5_gpio(0, AT91_BASE_PIOA);
+	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
+	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
+	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
+
+	return 0;
+}
+postcore_initcall(at91sam9n12_gpio_init);
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 7c7d997..b4c582f 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -209,6 +209,10 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio0", &pioAB_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio1", &pioAB_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioCD_clk),
+	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioCD_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
@@ -280,26 +284,6 @@ static void __init at91sam9x5_register_clocks(void)
 }
 
 /* --------------------------------------------------------------------
- *  GPIO
- * -------------------------------------------------------------------- */
-
-static struct at91_gpio_bank at91sam9x5_gpio[] = {
-	{
-		.regbase	= IOMEM(AT91_BASE_PIOA),
-		.clock		= &pioAB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOB),
-		.clock		= &pioAB_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOC),
-		.clock		= &pioCD_clk,
-	}, {
-		.regbase	= IOMEM(AT91_BASE_PIOD),
-		.clock		= &pioCD_clk,
-	}
-};
-
-/* --------------------------------------------------------------------
  *  AT91SAM9x5 processor initialization
  * -------------------------------------------------------------------- */
 
@@ -311,8 +295,18 @@ static int at91sam9x5_initialize(void)
 	/* Register the processor-specific clocks */
 	at91sam9x5_register_clocks();
 
-	/* Register GPIO subsystem */
-	at91_gpio_init(at91sam9x5_gpio, 4);
 	return 0;
 }
 core_initcall(at91sam9x5_initialize);
+
+static int at91sam9x5_gpio_init(void)
+{
+	/* Register GPIO subsystem */
+	at91_add_sam9x5_gpio(0, AT91_BASE_PIOA);
+	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
+	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
+	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
+
+	return 0;
+}
+postcore_initcall(at91sam9x5_gpio_init);
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index 768c91f..57f2a84 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -10,3 +10,15 @@
 
  /* Clocks */
 extern int __init at91_clock_init(unsigned long main_clock);
+
+static inline struct device_d *at91_add_rm9200_gpio(int id, resource_size_t start)
+{
+	return add_generic_device("at91rm9200-gpio", id, NULL, start, 512,
+				  IORESOURCE_MEM, NULL);
+}
+
+static inline struct device_d *at91_add_sam9x5_gpio(int id, resource_size_t start)
+{
+	return add_generic_device("at91sam9x5-gpio", id, NULL, start, 512,
+				  IORESOURCE_MEM, NULL);
+}
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index cd0136f..acaf740 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -19,28 +19,37 @@
 
 #include <common.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <errno.h>
 #include <io.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <gpio.h>
+#include <init.h>
+#include <driver.h>
+
+#define AT91_PIO3	1
+#define MAX_GPIO_BANKS	5
 
 static int gpio_banks;
 static int cpu_has_pio3;
-static struct at91_gpio_bank *gpio;
 
 /*
  * Functionnality can change with newer chips
  */
 
+struct at91_gpio_chip {
+	void __iomem		*regbase;	/* PIO bank virtual address */
+};
 
+static struct at91_gpio_chip gpio_chip[MAX_GPIO_BANKS];
 
 static inline void __iomem *pin_to_controller(unsigned pin)
 {
 	pin /= 32;
 	if (likely(pin < gpio_banks))
-		return gpio[pin].regbase;
+		return gpio_chip[pin].regbase;
 
 	return NULL;
 }
@@ -350,19 +359,60 @@ EXPORT_SYMBOL(gpio_direction_output);
 
 /*--------------------------------------------------------------------------*/
 
-int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks)
+static int at91_gpio_probe(struct device_d *dev)
 {
-	unsigned i;
+	struct at91_gpio_chip *at91_gpio = &gpio_chip[dev->id];
+	struct clk *clk;
+	int ret;
+
+	BUG_ON(dev->id > MAX_GPIO_BANKS);
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&cpu_has_pio3);
+	if (ret) {
+		dev_err(dev, "dev_get_drvdata failed: %d\n", ret);
+		return ret;
+	}
 
-	gpio = data;
-	gpio_banks = nr_banks;
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		dev_err(dev, "clock not found: %d\n", ret);
+		return ret;
+	}
 
-	for (i = 0; i < nr_banks; i++, data++) {
-		/* enable PIO controller's clock */
-		clk_enable(data->clock);
+	ret = clk_enable(clk);
+	if (ret < 0) {
+		dev_err(dev, "clock failed to enable: %d\n", ret);
+		clk_put(clk);
+		return ret;
 	}
 
-	cpu_has_pio3 = cpu_is_at91sam9x5() || cpu_is_at91sam9n12();
+	gpio_banks = max(gpio_banks, dev->id + 1);
+	at91_gpio->regbase = dev_request_mem_region(dev, 0);
 
 	return 0;
 }
+
+static struct platform_device_id at91_gpio_ids[] = {
+	{
+		.name = "at91rm9200-gpio",
+		.driver_data = (unsigned long)0,
+	}, {
+		.name = "at91sam9x5-gpio",
+		.driver_data = (unsigned long)AT91_PIO3,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d at91_gpio_driver = {
+	.name = "at91-gpio",
+	.probe = at91_gpio_probe,
+	.id_table = at91_gpio_ids,
+};
+
+static int at91_gpio_init(void)
+{
+	return platform_driver_register(&at91_gpio_driver);
+}
+postcore_initcall(at91_gpio_init);
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 200a852..eef7bd2 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -248,13 +248,6 @@ extern int at91_disable_schmitt_trig(unsigned pin);
  */
 int at91_get_gpio_value(unsigned pin);
 
-struct at91_gpio_bank {
-	void __iomem *regbase;		/* base of register bank */
-	struct clk *clock;
-};
-
-extern int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks);
-
 extern int gpio_direction_input(unsigned gpio);
 extern int gpio_direction_output(unsigned gpio, int value);
 #define gpio_get_value at91_get_gpio_value
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
