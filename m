Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qM-0000NE-LW
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:45 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0B22BDC37CF
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:34 +0100
Message-Id: <1325344898-7076-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 08/12] at91/gpio: simplify resources
To: barebox@lists.infradead.org

drop irq id and rebase instead of of offset

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200.c                |   12 ++++--------
 arch/arm/mach-at91/at91sam9260.c               |    9 +++------
 arch/arm/mach-at91/at91sam9261.c               |    9 +++------
 arch/arm/mach-at91/at91sam9263.c               |   15 +++++----------
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |   10 +++++-----
 arch/arm/mach-at91/at91sam9g45.c               |   15 +++++----------
 arch/arm/mach-at91/gpio.c                      |   13 ++-----------
 arch/arm/mach-at91/include/mach/at91rm9200.h   |    9 +++++----
 arch/arm/mach-at91/include/mach/at91sam9260.h  |    7 ++++---
 arch/arm/mach-at91/include/mach/at91sam9261.h  |    7 ++++---
 arch/arm/mach-at91/include/mach/at91sam9263.h  |   11 ++++++-----
 arch/arm/mach-at91/include/mach/at91sam9g45.h  |   11 ++++++-----
 arch/arm/mach-at91/include/mach/gpio.h         |    4 ----
 13 files changed, 52 insertions(+), 80 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index b902eab..5e3fdeb 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -216,20 +216,16 @@ static void __init at91rm9200_register_clocks(void)
 
 static struct at91_gpio_bank at91rm9200_gpio[] = {
 	{
-		.id		= AT91RM9200_ID_PIOA,
-		.offset		= AT91_PIOA,
+		.regbase	= IOMEM(AT91_BASE_PIOA),
 		.clock		= &pioA_clk,
 	}, {
-		.id		= AT91RM9200_ID_PIOB,
-		.offset		= AT91_PIOB,
+		.regbase	= IOMEM(AT91_BASE_PIOB),
 		.clock		= &pioB_clk,
 	}, {
-		.id		= AT91RM9200_ID_PIOC,
-		.offset		= AT91_PIOC,
+		.regbase	= IOMEM(AT91_BASE_PIOC),
 		.clock		= &pioC_clk,
 	}, {
-		.id		= AT91RM9200_ID_PIOD,
-		.offset		= AT91_PIOD,
+		.regbase	= IOMEM(AT91_BASE_PIOD),
 		.clock		= &pioD_clk,
 	}
 };
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index 3af5747..cf9e511 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -223,16 +223,13 @@ static void __init at91sam9260_register_clocks(void)
 
 static struct at91_gpio_bank at91sam9260_gpio[] = {
 	{
-		.id		= AT91SAM9260_ID_PIOA,
-		.offset		= AT91_PIOA,
+		.regbase	= IOMEM(AT91_BASE_PIOA),
 		.clock		= &pioA_clk,
 	}, {
-		.id		= AT91SAM9260_ID_PIOB,
-		.offset		= AT91_PIOB,
+		.regbase	= IOMEM(AT91_BASE_PIOB),
 		.clock		= &pioB_clk,
 	}, {
-		.id		= AT91SAM9260_ID_PIOC,
-		.offset		= AT91_PIOC,
+		.regbase	= IOMEM(AT91_BASE_PIOC),
 		.clock		= &pioC_clk,
 	}
 };
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index b1e09ef..d20b250 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -216,16 +216,13 @@ static void at91sam9261_register_clocks(void)
 
 static struct at91_gpio_bank at91sam9261_gpio[] = {
 	{
-		.id		= AT91SAM9261_ID_PIOA,
-		.offset		= AT91_PIOA,
+		.regbase	= IOMEM(AT91_BASE_PIOA),
 		.clock		= &pioA_clk,
 	}, {
-		.id		= AT91SAM9261_ID_PIOB,
-		.offset		= AT91_PIOB,
+		.regbase	= IOMEM(AT91_BASE_PIOB),
 		.clock		= &pioB_clk,
 	}, {
-		.id		= AT91SAM9261_ID_PIOC,
-		.offset		= AT91_PIOC,
+		.regbase	= IOMEM(AT91_BASE_PIOC),
 		.clock		= &pioC_clk,
 	}
 };
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index eef7ad0..b3116d3 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -230,24 +230,19 @@ static void __init at91sam9263_register_clocks(void)
 
 static struct at91_gpio_bank at91sam9263_gpio[] = {
 	{
-		.id		= AT91SAM9263_ID_PIOA,
-		.offset		= AT91_PIOA,
+		.regbase	= IOMEM(AT91_BASE_PIOA),
 		.clock		= &pioA_clk,
 	}, {
-		.id		= AT91SAM9263_ID_PIOB,
-		.offset		= AT91_PIOB,
+		.regbase	= IOMEM(AT91_BASE_PIOB),
 		.clock		= &pioB_clk,
 	}, {
-		.id		= AT91SAM9263_ID_PIOCDE,
-		.offset		= AT91_PIOC,
+		.regbase	= IOMEM(AT91_BASE_PIOC),
 		.clock		= &pioCDE_clk,
 	}, {
-		.id		= AT91SAM9263_ID_PIOCDE,
-		.offset		= AT91_PIOD,
+		.regbase	= IOMEM(AT91_BASE_PIOD),
 		.clock		= &pioCDE_clk,
 	}, {
-		.id		= AT91SAM9263_ID_PIOCDE,
-		.offset		= AT91_PIOE,
+		.regbase	= IOMEM(AT91_BASE_PIOE),
 		.clock		= &pioCDE_clk,
 	}
 };
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index b664afc..211074c 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -42,12 +42,12 @@ void __naked __bare_init board_init_lowlevel(void)
 
 	/* configure PIOx as EBI0 D[16-31] */
 #ifdef CONFIG_ARCH_AT91SAM9263
-	at91_sys_write(AT91_PIOD + PIO_PDR, CONFIG_SYS_PIOD_PDR_VAL1);
-	at91_sys_write(AT91_PIOD + PIO_PUDR, CONFIG_SYS_PIOD_PPUDR_VAL);
-	at91_sys_write(AT91_PIOD + PIO_ASR, CONFIG_SYS_PIOD_PPUDR_VAL);
+	__raw_writel(CONFIG_SYS_PIOD_PDR_VAL1, AT91_BASE_PIOD + PIO_PDR);
+	__raw_writel(CONFIG_SYS_PIOD_PPUDR_VAL, AT91_BASE_PIOD + PIO_PUDR);
+	__raw_writel(CONFIG_SYS_PIOD_PPUDR_VAL, AT91_BASE_PIOD + PIO_ASR);
 #else
-	at91_sys_write(AT91_PIOC + PIO_PDR, CONFIG_SYS_PIOC_PDR_VAL1);
-	at91_sys_write(AT91_PIOC + PIO_PUDR, CONFIG_SYS_PIOC_PPUDR_VAL);
+	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL1, AT91_BASE_PIOC + PIO_PDR);
+	__raw_writel(CONFIG_SYS_PIOC_PPUDR_VAL, AT91_BASE_PIOC + PIO_PUDR);
 #endif
 
 #if defined(AT91_MATRIX_EBI0CSA)
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 6b9fbc5..a6717f1 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -242,24 +242,19 @@ static void __init at91sam9g45_register_clocks(void)
 
 static struct at91_gpio_bank at91sam9g45_gpio[] = {
 	{
-		.id		= AT91SAM9G45_ID_PIOA,
-		.offset		= AT91_PIOA,
+		.regbase	= IOMEM(AT91_BASE_PIOA),
 		.clock		= &pioA_clk,
 	}, {
-		.id		= AT91SAM9G45_ID_PIOB,
-		.offset		= AT91_PIOB,
+		.regbase	= IOMEM(AT91_BASE_PIOB),
 		.clock		= &pioB_clk,
 	}, {
-		.id		= AT91SAM9G45_ID_PIOC,
-		.offset		= AT91_PIOC,
+		.regbase	= IOMEM(AT91_BASE_PIOC),
 		.clock		= &pioC_clk,
 	}, {
-		.id		= AT91SAM9G45_ID_PIODE,
-		.offset		= AT91_PIOD,
+		.regbase	= IOMEM(AT91_BASE_PIOD),
 		.clock		= &pioDE_clk,
 	}, {
-		.id		= AT91SAM9G45_ID_PIODE,
-		.offset		= AT91_PIOE,
+		.regbase	= IOMEM(AT91_BASE_PIOE),
 		.clock		= &pioDE_clk,
 	}
 };
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index c34df05..06da5af 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -235,23 +235,14 @@ EXPORT_SYMBOL(gpio_direction_output);
 
 int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks)
 {
-	unsigned		i;
-	struct at91_gpio_bank	*last;
+	unsigned i;
 
 	gpio = data;
 	gpio_banks = nr_banks;
 
-	for (i = 0, last = NULL; i < nr_banks; i++, last = data, data++) {
-		data->chipbase = PIN_BASE + i * 32;
-		data->regbase = data->offset +
-			(void __iomem *)AT91_BASE_SYS;
-
+	for (i = 0; i < nr_banks; i++, data++) {
 		/* enable PIO controller's clock */
 		clk_enable(data->clock);
-
-		/* AT91SAM9263_ID_PIOCDE groups PIOC, PIOD, PIOE */
-		if (last && last->id == data->id)
-			last->next = data;
 	}
 
 	return 0;
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index 985977f..39b1e15 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -84,15 +84,16 @@
  */
 #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)	/* Advanced Interrupt Controller */
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)	/* Debug Unit */
-#define AT91_PIOA	(0xfffff400 - AT91_BASE_SYS)	/* PIO Controller A */
-#define AT91_PIOB	(0xfffff600 - AT91_BASE_SYS)	/* PIO Controller B */
-#define AT91_PIOC	(0xfffff800 - AT91_BASE_SYS)	/* PIO Controller C */
-#define AT91_PIOD	(0xfffffa00 - AT91_BASE_SYS)	/* PIO Controller D */
 #define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)	/* Power Management Controller */
 #define AT91_ST		(0xfffffd00 - AT91_BASE_SYS)	/* System Timer */
 #define AT91_RTC	(0xfffffe00 - AT91_BASE_SYS)	/* Real-Time Clock */
 #define AT91_MC		(0xffffff00 - AT91_BASE_SYS)	/* Memory Controllers */
 
+#define AT91_BASE_PIOA	0xfffff400	/* PIO Controller A */
+#define AT91_BASE_PIOB	0xfffff600	/* PIO Controller B */
+#define AT91_BASE_PIOC	0xfffff800	/* PIO Controller C */
+#define AT91_BASE_PIOD	0xfffffa00	/* PIO Controller D */
+
 #define AT91_USART0	AT91RM9200_BASE_US0
 #define AT91_USART1	AT91RM9200_BASE_US1
 #define AT91_USART2	AT91RM9200_BASE_US2
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index 771e756..72dc931 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -87,9 +87,6 @@
 #define AT91_CCFG	(0xffffef10 - AT91_BASE_SYS)
 #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_PIOA	(0xfffff400 - AT91_BASE_SYS)
-#define AT91_PIOB	(0xfffff600 - AT91_BASE_SYS)
-#define AT91_PIOC	(0xfffff800 - AT91_BASE_SYS)
 #define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
@@ -98,6 +95,10 @@
 #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
 #define AT91_GPBR	(0xfffffd50 - AT91_BASE_SYS)
 
+#define AT91_BASE_PIOA	0xfffff400
+#define AT91_BASE_PIOB	0xfffff600
+#define AT91_BASE_PIOC	0xfffff800
+
 #define AT91_USART0	AT91SAM9260_BASE_US0
 #define AT91_USART1	AT91SAM9260_BASE_US1
 #define AT91_USART2	AT91SAM9260_BASE_US2
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index c863887..3be8087 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -73,9 +73,6 @@
 #define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
 #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_PIOA	(0xfffff400 - AT91_BASE_SYS)
-#define AT91_PIOB	(0xfffff600 - AT91_BASE_SYS)
-#define AT91_PIOC	(0xfffff800 - AT91_BASE_SYS)
 #define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
@@ -84,6 +81,10 @@
 #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
 #define AT91_GPBR	(0xfffffd50 - AT91_BASE_SYS)
 
+#define AT91_BASE_PIOA	0xfffff400
+#define AT91_BASE_PIOB	0xfffff600
+#define AT91_BASE_PIOC	0xfffff800
+
 #define AT91_USART0	AT91SAM9261_BASE_US0
 #define AT91_USART1	AT91SAM9261_BASE_US1
 #define AT91_USART2	AT91SAM9261_BASE_US2
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index 7bab1a4..64f4fcc 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -87,11 +87,6 @@
 #define AT91_CCFG	(0xffffed10 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
 #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
-#define AT91_PIOA	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_PIOB	(0xfffff400 - AT91_BASE_SYS)
-#define AT91_PIOC	(0xfffff600 - AT91_BASE_SYS)
-#define AT91_PIOD	(0xfffff800 - AT91_BASE_SYS)
-#define AT91_PIOE	(0xfffffa00 - AT91_BASE_SYS)
 #define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
@@ -101,6 +96,12 @@
 #define AT91_RTT1	(0xfffffd50 - AT91_BASE_SYS)
 #define AT91_GPBR	(0xfffffd60 - AT91_BASE_SYS)
 
+#define AT91_BASE_PIOA	0xfffff200
+#define AT91_BASE_PIOB	0xfffff400
+#define AT91_BASE_PIOC	0xfffff600
+#define AT91_BASE_PIOD	0xfffff800
+#define AT91_BASE_PIOE	0xfffffa00
+
 #define AT91_USART0	AT91SAM9263_BASE_US0
 #define AT91_USART1	AT91SAM9263_BASE_US1
 #define AT91_USART2	AT91SAM9263_BASE_US2
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index c5c7f49..18fa6c5 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -97,11 +97,6 @@
 #define AT91_DMA	(0xffffec00 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
 #define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
-#define AT91_PIOA	(0xfffff200 - AT91_BASE_SYS)
-#define AT91_PIOB	(0xfffff400 - AT91_BASE_SYS)
-#define AT91_PIOC	(0xfffff600 - AT91_BASE_SYS)
-#define AT91_PIOD	(0xfffff800 - AT91_BASE_SYS)
-#define AT91_PIOE	(0xfffffa00 - AT91_BASE_SYS)
 #define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
@@ -111,6 +106,12 @@
 #define AT91_GPBR	(0xfffffd60 - AT91_BASE_SYS)
 #define AT91_RTC	(0xfffffdb0 - AT91_BASE_SYS)
 
+#define AT91_BASE_PIOA	0xfffff200
+#define AT91_BASE_PIOB	0xfffff400
+#define AT91_BASE_PIOC	0xfffff600
+#define AT91_BASE_PIOD	0xfffff800
+#define AT91_BASE_PIOE	0xfffffa00
+
 #define AT91_USART0	AT91SAM9G45_BASE_US0
 #define AT91_USART1	AT91SAM9G45_BASE_US1
 #define AT91_USART2	AT91SAM9G45_BASE_US2
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index f3239f5..95a4bd4 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -236,11 +236,7 @@ int at91_set_gpio_value(unsigned pin, int value);
 int at91_get_gpio_value(unsigned pin);
 
 struct at91_gpio_bank {
-	unsigned chipbase;		/* bank's first GPIO number */
 	void __iomem *regbase;		/* base of register bank */
-	struct at91_gpio_bank *next;	/* bank sharing same IRQ/clock/... */
-	unsigned short id;		/* peripheral ID */
-	unsigned long offset;		/* offset from system peripheral base */
 	struct clk *clock;
 };
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
