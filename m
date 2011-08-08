Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QqXUG-00039o-Ru
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 21:35:57 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id AD829FFB1D8
	for <barebox@lists.infradead.org>;
	Mon,  8 Aug 2011 23:35:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  8 Aug 2011 23:17:12 +0200
Message-Id: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/5] at91: swtich to clkdev
To: barebox@lists.infradead.org

this will also fix the clock support as we now switch to allocated generic
device

as we can need to associate the clock and the device but the driver is probe
before the association

we also change the atmel serial name to "atmel_usart" to simplify sharing with
linux

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                         |    1 +
 arch/arm/mach-at91/at91rm9200.c          |   11 +++++
 arch/arm/mach-at91/at91rm9200_devices.c  |   10 +----
 arch/arm/mach-at91/at91sam9260.c         |   13 ++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   12 +-----
 arch/arm/mach-at91/at91sam9261.c         |   10 ++++
 arch/arm/mach-at91/at91sam9261_devices.c |   10 +----
 arch/arm/mach-at91/at91sam9263.c         |   17 +++++++
 arch/arm/mach-at91/at91sam9263_devices.c |   17 +------
 arch/arm/mach-at91/at91sam9g45.c         |   36 ++++++++-------
 arch/arm/mach-at91/at91sam9g45_devices.c |   11 +----
 arch/arm/mach-at91/clock.c               |   70 ++++++++---------------------
 arch/arm/mach-at91/clock.h               |   20 ++++++++-
 arch/arm/mach-at91/generic.h             |    2 -
 arch/arm/mach-at91/include/mach/clkdev.h |    7 +++
 drivers/serial/atmel.c                   |    2 +-
 16 files changed, 124 insertions(+), 125 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/clkdev.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2abd32f..0bee86a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -35,6 +35,7 @@ choice
 config ARCH_AT91
 	bool "Atmel AT91"
 	select GENERIC_GPIO
+	select CLKDEV_LOOKUP
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index 6baf1a7..b902eab 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -157,6 +157,14 @@ static struct clk *periph_clocks[] __initdata = {
 	// irq0 .. irq6
 };
 
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
+};
+
 /*
  * The four programmable clocks.
  * You must configure pin multiplexing to bring these signals out.
@@ -193,6 +201,9 @@ static void __init at91rm9200_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
 	clk_register(&pck0);
 	clk_register(&pck1);
 	clk_register(&pck2);
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 84605e4..453c10a 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -182,37 +182,30 @@ static inline void configure_usart3_pins(unsigned pins)
 void __init at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
-	struct device_d *dev;
-	char* clk_name;
 
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			clk_name = "mck";
 			id = 0;
 			break;
 		case AT91RM9200_ID_US0:
 			configure_usart0_pins(pins);
-			clk_name = "usart0_clk";
 			start = AT91RM9200_BASE_US0;
 			id = 1;
 			break;
 		case AT91RM9200_ID_US1:
 			configure_usart1_pins(pins);
-			clk_name = "usart1_clk";
 			start = AT91RM9200_BASE_US1;
 			id = 2;
 			break;
 		case AT91RM9200_ID_US2:
 			configure_usart2_pins(pins);
-			clk_name = "usart2_clk";
 			start = AT91RM9200_BASE_US2;
 			id = 3;
 			break;
 		case AT91RM9200_ID_US3:
 			configure_usart3_pins(pins);
-			clk_name = "usart3_clk";
 			start = AT91RM9200_BASE_US3;
 			id = 4;
 			break;
@@ -220,7 +213,6 @@ void __init at91_register_uart(unsigned id, unsigned pins)
 			return;
 	}
 
-	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+	add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
-	at91_clock_associate(clk_name, dev, "usart");
 }
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 30d1a6a..c1f08e7 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -169,6 +169,16 @@ static struct clk *periph_clocks[] = {
 	// irq0 .. irq2
 };
 
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart5", &usart4_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart6", &usart5_clk),
+};
+
 /*
  * The two programmable clocks.
  * You must configure pin multiplexing to bring these signals out.
@@ -193,6 +203,9 @@ static void __init at91sam9260_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
 	clk_register(&pck0);
 	clk_register(&pck1);
 }
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 5c1bbbe..4540f4b 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -165,49 +165,40 @@ static inline void configure_usart5_pins(void)
 void at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
-	struct device_d *dev;
-	char* clk_name;
 
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			clk_name = "mck";
 			id = 0;
 			break;
 		case AT91SAM9260_ID_US0:
 			configure_usart0_pins(pins);
-			clk_name = "usart0_clk";
 			start = AT91SAM9260_BASE_US0;
 			id = 1;
 			break;
 		case AT91SAM9260_ID_US1:
 			configure_usart1_pins(pins);
-			clk_name = "usart1_clk";
 			start = AT91SAM9260_BASE_US1;
 			id = 2;
 			break;
 		case AT91SAM9260_ID_US2:
 			configure_usart2_pins(pins);
-			clk_name = "usart2_clk";
 			start = AT91SAM9260_BASE_US2;
 			id = 3;
 			break;
 		case AT91SAM9260_ID_US3:
 			configure_usart3_pins(pins);
-			clk_name = "usart3_clk";
 			start = AT91SAM9260_BASE_US3;
 			id = 4;
 			break;
 		case AT91SAM9260_ID_US4:
 			configure_usart4_pins();
-			clk_name = "usart4_clk";
 			start = AT91SAM9260_BASE_US4;
 			id = 5;
 			break;
 		case AT91SAM9260_ID_US5:
 			configure_usart5_pins();
-			clk_name = "usart5_clk";
 			start = AT91SAM9260_BASE_US5;
 			id = 6;
 			break;
@@ -215,9 +206,8 @@ void at91_register_uart(unsigned id, unsigned pins)
 			return;
 	}
 
-	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+	add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
-	at91_clock_associate(clk_name, dev, "usart");
 }
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index 3d503aa..fbb8058 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -133,6 +133,13 @@ static struct clk *periph_clocks[] = {
 	// irq0 .. irq2
 };
 
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+};
+
 /*
  * The four programmable clocks.
  * You must configure pin multiplexing to bring these signals out.
@@ -183,6 +190,9 @@ static void at91sam9261_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
 	clk_register(&pck0);
 	clk_register(&pck1);
 	clk_register(&pck2);
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 4985cf1..c6a3dba 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -101,31 +101,25 @@ static inline void configure_usart2_pins(unsigned pins)
 void at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
-	struct device_d *dev;
-	char* clk_name;
 
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			clk_name = "mck";
 			id = 0;
 			break;
 		case AT91SAM9261_ID_US0:
 			configure_usart0_pins(pins);
-			clk_name = "usart0_clk";
 			start = AT91SAM9261_BASE_US0;
 			id = 1;
 			break;
 		case AT91SAM9261_ID_US1:
 			configure_usart1_pins(pins);
-			clk_name = "usart1_clk";
 			start = AT91SAM9261_BASE_US1;
 			id = 2;
 			break;
 		case AT91SAM9261_ID_US2:
 			configure_usart2_pins(pins);
-			clk_name = "usart3_clk";
 			start = AT91SAM9261_BASE_US2;
 			id = 3;
 			break;
@@ -133,9 +127,8 @@ void at91_register_uart(unsigned id, unsigned pins)
 			return;
 	}
 
-	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+	add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
-	at91_clock_associate(clk_name, dev, "usart");
 }
 
 #if defined(CONFIG_MCI_ATMEL)
@@ -176,7 +169,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 
 	dev = add_generic_device("atmel_mci", 0, NULL, AT91SAM9261_BASE_MCI, SZ_16K,
 			   IORESOURCE_MEM, data);
-	at91_clock_associate("mci_clk", dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index b0e3193..12a7868 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -163,6 +163,18 @@ static struct clk *periph_clocks[] = {
 	// irq0 .. irq1
 };
 
+static struct clk_lookup periph_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("mci_clk", "at91_mci0", &mmc0_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "at91_mci1", &mmc1_clk),
+};
+
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+};
+
 /*
  * The four programmable clocks.
  * You must configure pin multiplexing to bring these signals out.
@@ -199,6 +211,11 @@ static void __init at91sam9263_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
 	clk_register(&pck0);
 	clk_register(&pck1);
 	clk_register(&pck2);
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 540220e..c7ae45a 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -133,31 +133,25 @@ static inline void configure_usart2_pins(unsigned pins)
 void at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
-	struct device_d *dev;
-	char* clk_name;
 
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			clk_name = "mck";
 			id = 0;
 			break;
 		case AT91SAM9263_ID_US0:
 			configure_usart0_pins(pins);
-			clk_name = "usart0_clk";
 			start = AT91SAM9263_BASE_US0;
 			id = 1;
 			break;
 		case AT91SAM9263_ID_US1:
 			configure_usart1_pins(pins);
-			clk_name = "usart1_clk";
 			start = AT91SAM9263_BASE_US1;
 			id = 2;
 			break;
 		case AT91SAM9263_ID_US2:
 			configure_usart2_pins(pins);
-			clk_name = "usart2_clk";
 			start = AT91SAM9263_BASE_US2;
 			id = 3;
 			break;
@@ -165,10 +159,8 @@ void at91_register_uart(unsigned id, unsigned pins)
 			return;
 	}
 
-	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+	add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
-	at91_clock_associate(clk_name, dev, "usart");
-
 }
 
 #if defined(CONFIG_MCI_ATMEL)
@@ -176,8 +168,6 @@ void at91_register_uart(unsigned id, unsigned pins)
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
 	resource_size_t start;
-	struct device_d *dev;
-	char* clk_name;
 
 	if (!data)
 		return;
@@ -197,7 +187,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 
 	if (mmc_id == 0) {		/* MCI0 */
 		start = AT91SAM9263_BASE_MCI0;
-		clk_name = "mci0_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA12, 0);
 
@@ -213,7 +202,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		}
 	} else {			/* MCI1 */
 		start = AT91SAM9263_BASE_MCI1;
-		clk_name = "mci1_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA6, 0);
 
@@ -229,9 +217,8 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		}
 	}
 
-	dev = add_generic_device("atmel_mci", mmc_id, NULL, start, 4096,
+	add_generic_device("atmel_mci", mmc_id, NULL, start, 4096,
 			   IORESOURCE_MEM, data);
-	at91_clock_associate(clk_name, dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 2eaae58..d4c27f8 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -154,22 +154,6 @@ static struct clk vdec_clk = {
 	.type		= CLK_TYPE_PERIPHERAL,
 };
 
-/* One additional fake clock for ohci */
-static struct clk ohci_clk = {
-	.name		= "ohci_clk",
-	.pmc_mask	= 0,
-	.type		= CLK_TYPE_PERIPHERAL,
-	.parent		= &uhphs_clk,
-};
-
-/* One additional fake clock for second TC block */
-static struct clk tcb1_clk = {
-	.name		= "tcb1_clk",
-	.pmc_mask	= 0,
-	.type		= CLK_TYPE_PERIPHERAL,
-	.parent		= &tcb0_clk,
-};
-
 static struct clk *periph_clocks[] __initdata = {
 	&pioA_clk,
 	&pioB_clk,
@@ -202,6 +186,21 @@ static struct clk *periph_clocks[] __initdata = {
 	&tcb1_clk,
 };
 
+static struct clk_lookup periph_clocks_lookups[] = {
+	/* One additional fake clock for ohci */
+	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
+};
+
+static struct clk_lookup usart_clocks_lookups[] = {
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
+	CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
+};
+
 /*
  * The two programmable clocks.
  * You must configure pin multiplexing to bring these signals out.
@@ -226,6 +225,11 @@ static void __init at91sam9g45_register_clocks(void)
 	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
 		clk_register(periph_clocks[i]);
 
+	clkdev_add_table(periph_clocks_lookups,
+			 ARRAY_SIZE(periph_clocks_lookups));
+	clkdev_add_table(usart_clocks_lookups,
+			 ARRAY_SIZE(usart_clocks_lookups));
+
 	if (cpu_is_at91sam9m10() || cpu_is_at91sam9m11())
 		clk_register(&vdec_clk);
 
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 2cd5a95..f6e1eb4 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -148,37 +148,30 @@ static inline void configure_usart3_pins(unsigned pins)
 void at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
-	struct device_d *dev;
-	char* clk_name;
 
 	switch (id) {
 		case 0:		/* DBGU */
 			configure_dbgu_pins();
 			start = AT91_BASE_SYS + AT91_DBGU;
-			clk_name = "mck";
 			id = 0;
 			break;
 		case AT91SAM9G45_ID_US0:
 			configure_usart0_pins(pins);
-			clk_name = "usart0_clk";
 			start = AT91SAM9G45_BASE_US0;
 			id = 1;
 			break;
 		case AT91SAM9G45_ID_US1:
 			configure_usart1_pins(pins);
-			clk_name = "usart1_clk";
 			start = AT91SAM9G45_BASE_US1;
 			id = 2;
 			break;
 		case AT91SAM9G45_ID_US2:
 			configure_usart2_pins(pins);
-			clk_name = "usart2_clk";
 			start = AT91SAM9G45_BASE_US2;
 			id = 3;
 			break;
 		case AT91SAM9G45_ID_US3:
 			configure_usart3_pins(pins);
-			clk_name = "usart3_clk";
 			start = AT91SAM9G45_BASE_US3;
 			id = 4;
 			break;
@@ -186,10 +179,8 @@ void at91_register_uart(unsigned id, unsigned pins)
 			return;
 	}
 
-	dev = add_generic_device("atmel_serial", id, NULL, start, 4096,
+	add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
-	at91_clock_associate(clk_name, dev, "usart");
-
 }
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 4d77a37..528994f 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -155,7 +155,7 @@ static struct clk udpck = {
 	.parent		= &pllb,
 	.mode		= pmc_sys_mode,
 };
-static struct clk utmi_clk = {
+struct clk utmi_clk = {
 	.name		= "utmi_clk",
 	.parent		= &main_clk,
 	.pmc_mask	= AT91_PMC_UPLLEN,	/* in CKGR_UCKR */
@@ -174,7 +174,7 @@ static struct clk uhpck = {
  * memory, interfaces to on-chip peripherals, the AIC, and sometimes more
  * (e.g baud rate generation).  It's sourced from one of the primary clocks.
  */
-static struct clk mck = {
+struct clk mck = {
 	.name		= "mck",
 	.pmc_mask	= AT91_PMC_MCKRDY,	/* in PMC_SR */
 };
@@ -207,43 +207,6 @@ static struct clk *at91_css_to_clk(unsigned long css)
 	return NULL;
 }
 
-/*
- * Associate a particular clock with a function (eg, "uart") and device.
- * The drivers can then request the same 'function' with several different
- * devices and not care about which clock name to use.
- */
-void at91_clock_associate(const char *id, struct device_d *dev, const char *func)
-{
-	struct clk *clk = clk_get(NULL, id);
-
-	if (!dev || !clk || !IS_ERR(clk_get(dev, func)))
-		return;
-
-	clk->function = func;
-	clk->dev = dev;
-}
-
-/* clocks cannot be de-registered no refcounting necessary */
-struct clk *clk_get(struct device_d *dev, const char *id)
-{
-	struct clk *clk;
-
-	list_for_each_entry(clk, &clocks, node) {
-		if (strcmp(id, clk->name) == 0)
-			return clk;
-		if (clk->function && (dev == clk->dev) && strcmp(id, clk->function) == 0)
-			return clk;
-	}
-
-	return ERR_PTR(-ENOENT);
-}
-EXPORT_SYMBOL(clk_get);
-
-void clk_put(struct clk *clk)
-{
-}
-EXPORT_SYMBOL(clk_put);
-
 static void __clk_enable(struct clk *clk)
 {
 	if (clk->parent)
@@ -401,31 +364,38 @@ static void init_programmable_clock(struct clk *clk)
 /*------------------------------------------------------------------------*/
 
 /* Register a new clock */
+static void __init at91_clk_add(struct clk *clk)
+{
+	list_add_tail(&clk->node, &clocks);
+
+	clk->cl.con_id = clk->name;
+	clk->cl.clk = clk;
+	clkdev_add(&clk->cl);
+}
+
 int clk_register(struct clk *clk)
 {
 	if (clk_is_peripheral(clk)) {
-		clk->parent = &mck;
+		if (!clk->parent)
+			clk->parent = &mck;
 		clk->mode = pmc_periph_mode;
-		list_add_tail(&clk->node, &clocks);
 	}
 	else if (clk_is_sys(clk)) {
 		clk->parent = &mck;
 		clk->mode = pmc_sys_mode;
-
-		list_add_tail(&clk->node, &clocks);
 	}
 #ifdef CONFIG_AT91_PROGRAMMABLE_CLOCKS
 	else if (clk_is_programmable(clk)) {
 		clk->mode = pmc_sys_mode;
 		init_programmable_clock(clk);
-		list_add_tail(&clk->node, &clocks);
 	}
 #endif
 
+	at91_clk_add(clk);
+
 	return 0;
 }
 
-
 /*------------------------------------------------------------------------*/
 
 static u32 at91_pll_rate(struct clk *pll, u32 freq, u32 reg)
@@ -654,19 +624,19 @@ int at91_clock_init(unsigned long main_clock)
 
 	/* Register the PMC's standard clocks */
 	for (i = 0; i < ARRAY_SIZE(standard_pmc_clocks); i++)
-		list_add_tail(&standard_pmc_clocks[i]->node, &clocks);
+		at91_clk_add(standard_pmc_clocks[i]);
 
 	if (cpu_has_pllb())
-		list_add_tail(&pllb.node, &clocks);
+		at91_clk_add(&pllb);
 
 	if (cpu_has_uhp())
-		list_add_tail(&uhpck.node, &clocks);
+		at91_clk_add(&uhpck);
 
 	if (cpu_has_udpfs())
-		list_add_tail(&udpck.node, &clocks);
+		at91_clk_add(&udpck);
 
 	if (cpu_has_utmi())
-		list_add_tail(&utmi_clk.node, &clocks);
+		at91_clk_add(&utmi_clk);
 
 	/* MCK and CPU clock are "always on" */
 	clk_enable(&mck);
diff --git a/arch/arm/mach-at91/clock.h b/arch/arm/mach-at91/clock.h
index c8ecd0c..c2e63e4 100644
--- a/arch/arm/mach-at91/clock.h
+++ b/arch/arm/mach-at91/clock.h
@@ -6,6 +6,8 @@
  * published by the Free Software Foundation.
  */
 
+#include <linux/clkdev.h>
+
 #define CLK_TYPE_PRIMARY	0x1
 #define CLK_TYPE_PLL		0x2
 #define CLK_TYPE_PROGRAMMABLE	0x4
@@ -16,8 +18,7 @@
 struct clk {
 	struct list_head node;
 	const char	*name;		/* unique clock name */
-	const char	*function;	/* function of the clock */
-	struct device_d	*dev;		/* device associated with function */
+	struct clk_lookup cl;
 	unsigned long	rate_hz;
 	struct clk	*parent;
 	u32		pmc_mask;
@@ -29,3 +30,18 @@ struct clk {
 
 
 extern int __init clk_register(struct clk *clk);
+extern struct clk mck;
+extern struct clk utmi_clk;
+
+#define CLKDEV_CON_ID(_id, _clk)			\
+	{						\
+		.con_id = _id,				\
+		.clk = _clk,				\
+	}
+
+#define CLKDEV_CON_DEV_ID(_con_id, _dev_id, _clk)	\
+	{						\
+		.con_id = _con_id,			\
+		.dev_id = _dev_id,			\
+		.clk = _clk,				\
+	}
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index b3a029d..768c91f 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -10,5 +10,3 @@
 
  /* Clocks */
 extern int __init at91_clock_init(unsigned long main_clock);
-struct device_d;
-extern void __init at91_clock_associate(const char *id, struct device_d *dev, const char *func);
diff --git a/arch/arm/mach-at91/include/mach/clkdev.h b/arch/arm/mach-at91/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index ff0e75e..2d4b842 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -419,7 +419,7 @@ static int atmel_serial_probe(struct device_d *dev)
 }
 
 static struct driver_d atmel_serial_driver = {
-        .name  = "atmel_serial",
+        .name  = "atmel_usart",
         .probe = atmel_serial_probe,
 };
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
