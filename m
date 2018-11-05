Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhA7-0000PR-HH
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:10 +0100
Message-Id: <20181105155113.3434-20-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 19/22] ARM: at91: drop at91_pmc_write()/at91_pmc_read()
To: Barebox List <barebox@lists.infradead.org>

at91_pmc_write() and at91_pmc_read() need a compile time base address,
so remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/clock.c                    | 21 +++++++++++++++++++
 arch/arm/mach-at91/include/mach/at91_pmc.h    |  6 ------
 .../include/mach/at91sam926x_board_init.h     |  4 +++-
 3 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 1f2cfdc716..9d2e3a3acc 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -108,6 +108,18 @@
 
 #define cpu_has_dual_matrix()	(cpu_is_sama5d4())
 
+static void *pmc;
+
+static inline void at91_pmc_write(unsigned int offset, u32 val)
+{
+	writel(val, pmc + offset);
+}
+
+static inline u32 at91_pmc_read(unsigned int offset)
+{
+	return readl(pmc + offset);
+}
+
 static LIST_HEAD(clocks);
 
 static u32 at91_pllb_usb_init;
@@ -648,6 +660,15 @@ int at91_clock_init(void)
 	int i;
 	unsigned long main_clock;
 
+	if (cpu_is_sama5d4())
+		pmc = IOMEM(0xf0018000);
+	else
+		pmc = IOMEM(0xfffffc00); /*
+					  * All other supported SoCs use this
+					  * base address (new ones should use of
+					  * clock support)
+		                          */
+
 	main_clock = at91_main_clock;
 
 	/*
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index d74c14011c..bbbd497afa 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -16,12 +16,6 @@
 #ifndef AT91_PMC_H
 #define AT91_PMC_H
 
-#define at91_pmc_read(field) \
-	__raw_readl(AT91_PMC + field)
-
-#define at91_pmc_write(field, value) \
-	__raw_writel(value, AT91_PMC + field)
-
 #define	AT91_PMC_SCER		0x00			/* System Clock Enable Register */
 #define	AT91_PMC_SCDR		0x04			/* System Clock Disable Register */
 
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index ee4dfa7187..36fb84b63c 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -20,6 +20,8 @@
 #include <mach/gpio.h>
 #include <mach/at91sam926x.h>
 
+#define AT91SAM926X_BASE_PMC	0xfffffc00
+
 struct at91sam926x_board_cfg {
 	/* SoC specific */
 	void __iomem *pio;
@@ -59,7 +61,7 @@ static void __always_inline pmc_check_mckrdy(void)
 	u32 r;
 
 	do {
-		r = at91_pmc_read(AT91_PMC_SR);
+		r = readl(AT91SAM926X_BASE_PMC + AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MCKRDY));
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
