Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRI-0004Go-3g
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:18:05 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3953CFF971C
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:05 +0100
Message-Id: <1356722174-22598-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/13] at91: pmc: drop AT91_BASE_SYS
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c           |    2 +-
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c  |   18 +++++----
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |   18 +++++----
 arch/arm/mach-at91/clock.c                     |   50 ++++++++++++------------
 arch/arm/mach-at91/include/mach/at91_pmc.h     |   48 +++++++++++++----------
 arch/arm/mach-at91/include/mach/cpu.h          |    2 +-
 arch/arm/mach-at91/include/mach/hardware.h     |    2 +-
 7 files changed, 76 insertions(+), 64 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 5816a1d..d07eda9 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -135,7 +135,7 @@ static struct at91_ether_platform_data macb_pdata = {
 static void at91sam9260ek_phy_reset(void)
 {
 	unsigned long rstc;
-	at91_sys_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_EMAC);
+	at91_pmc_write(AT91_PMC_PCER, 1 << AT91SAM9260_ID_EMAC);
 
 	at91_set_gpio_input(AT91_PIN_PA14, 0);
 	at91_set_gpio_input(AT91_PIN_PA15, 0);
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 3ce3e67..4add3d9 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -4,6 +4,8 @@
  * Under GPLv2
  */
 
+#define __LOWLEVEL_INIT__
+
 #include <common.h>
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
@@ -31,17 +33,17 @@ void __naked __bare_init reset(void)
 	/*
 	 * PMC Check if the PLL is already initialized
 	 */
-	r = at91_sys_read(AT91_PMC_MCKR);
+	r = at91_pmc_read(AT91_PMC_MCKR);
 	if (r & AT91_PMC_CSS)
 		goto end;
 
 	/*
 	 * Enable the Main Oscillator
 	 */
-	at91_sys_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
+	at91_pmc_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
 
 	do {
-		r = at91_sys_read(AT91_PMC_SR);
+		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MOSCS));
 
 	/*
@@ -61,24 +63,24 @@ void __naked __bare_init reset(void)
 	/*
 	 * PLLAR: x MHz for PCK
 	 */
-	at91_sys_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
+	at91_pmc_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
 
 	do {
-		r = at91_sys_read(AT91_PMC_SR);
+		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_LOCKA));
 
 	/*
 	 * PCK/x = MCK Master Clock from SLOW
 	 */
-	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL1);
+	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL1);
 
 	/*
 	 * PCK/x = MCK Master Clock from PLLA
 	 */
-	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL2);
+	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL2);
 
 	do {
-		r = at91_sys_read(AT91_PMC_SR);
+		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MCKRDY));
 
 	/*
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 0ee0345..5edbd8b 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -5,6 +5,8 @@
  * Under GPLv2
   */
 
+#define __LOWLEVEL_INIT__
+
 #include <common.h>
 #include <asm/system.h>
 #include <asm/barebox-arm.h>
@@ -30,7 +32,7 @@ static void inline pmc_check_mckrdy(void)
 	u32 r;
 
 	do {
-		r = at91_sys_read(AT91_PMC_SR);
+		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MCKRDY));
 }
 
@@ -71,39 +73,39 @@ void __naked __bare_init reset(void)
 	/*
 	 * PMC Check if the PLL is already initialized
 	 */
-	r = at91_sys_read(AT91_PMC_MCKR);
+	r = at91_pmc_read(AT91_PMC_MCKR);
 	if (r & AT91_PMC_CSS)
 		goto end;
 
 	/*
 	 * Enable the Main Oscillator
 	 */
-	at91_sys_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
+	at91_pmc_write(AT91_CKGR_MOR, CONFIG_SYS_MOR_VAL);
 
 	do {
-		r = at91_sys_read(AT91_PMC_SR);
+		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_MOSCS));
 
 	/*
 	 * PLLAR: x MHz for PCK
 	 */
-	at91_sys_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
+	at91_pmc_write(AT91_CKGR_PLLAR, CONFIG_SYS_PLLAR_VAL);
 
 	do {
-		r = at91_sys_read(AT91_PMC_SR);
+		r = at91_pmc_read(AT91_PMC_SR);
 	} while (!(r & AT91_PMC_LOCKA));
 
 	/*
 	 * PCK/x = MCK Master Clock from SLOW
 	 */
-	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR1_VAL);
+	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR1_VAL);
 
 	pmc_check_mckrdy();
 
 	/*
 	 * PCK/x = MCK Master Clock from PLLA
 	 */
-	at91_sys_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL);
+	at91_pmc_write(AT91_PMC_MCKR, CONFIG_SYS_MCKR2_VAL);
 
 	pmc_check_mckrdy();
 
diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index e911270..b231ec0 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -126,11 +126,11 @@ static void pllb_mode(struct clk *clk, int is_on)
 		value = 0;
 
 	// REVISIT: Add work-around for AT91RM9200 Errata #26 ?
-	at91_sys_write(AT91_CKGR_PLLBR, value);
+	at91_pmc_write(AT91_CKGR_PLLBR, value);
 
 	do {
 		barrier();
-	} while ((at91_sys_read(AT91_PMC_SR) & AT91_PMC_LOCKB) != is_on);
+	} while ((at91_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKB) != is_on);
 }
 
 static struct clk pllb = {
@@ -145,14 +145,14 @@ static struct clk pllb = {
 static void pmc_sys_mode(struct clk *clk, int is_on)
 {
 	if (is_on)
-		at91_sys_write(AT91_PMC_SCER, clk->pmc_mask);
+		at91_pmc_write(AT91_PMC_SCER, clk->pmc_mask);
 	else
-		at91_sys_write(AT91_PMC_SCDR, clk->pmc_mask);
+		at91_pmc_write(AT91_PMC_SCDR, clk->pmc_mask);
 }
 
 static void pmc_uckr_mode(struct clk *clk, int is_on)
 {
-	unsigned int uckr = at91_sys_read(AT91_CKGR_UCKR);
+	unsigned int uckr = at91_pmc_read(AT91_CKGR_UCKR);
 
 	if (cpu_is_at91sam9g45()) {
 		if (is_on)
@@ -163,13 +163,13 @@ static void pmc_uckr_mode(struct clk *clk, int is_on)
 
 	if (is_on) {
 		is_on = AT91_PMC_LOCKU;
-		at91_sys_write(AT91_CKGR_UCKR, uckr | clk->pmc_mask);
+		at91_pmc_write(AT91_CKGR_UCKR, uckr | clk->pmc_mask);
 	} else
-		at91_sys_write(AT91_CKGR_UCKR, uckr & ~(clk->pmc_mask));
+		at91_pmc_write(AT91_CKGR_UCKR, uckr & ~(clk->pmc_mask));
 
 	do {
 		barrier();
-	} while ((at91_sys_read(AT91_PMC_SR) & AT91_PMC_LOCKU) != is_on);
+	} while ((at91_pmc_read(AT91_PMC_SR) & AT91_PMC_LOCKU) != is_on);
 }
 
 /* USB function clocks (PLLB must be 48 MHz) */
@@ -205,9 +205,9 @@ struct clk mck = {
 static void pmc_periph_mode(struct clk *clk, int is_on)
 {
 	if (is_on)
-		at91_sys_write(AT91_PMC_PCER, clk->pmc_mask);
+		at91_pmc_write(AT91_PMC_PCER, clk->pmc_mask);
 	else
-		at91_sys_write(AT91_PMC_PCDR, clk->pmc_mask);
+		at91_pmc_write(AT91_PMC_PCDR, clk->pmc_mask);
 }
 
 static struct clk *at91_css_to_clk(unsigned long css)
@@ -352,10 +352,10 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 		if (actual && actual <= rate) {
 			u32	pckr;
 
-			pckr = at91_sys_read(AT91_PMC_PCKR(clk->id));
+			pckr = at91_pmc_read(AT91_PMC_PCKR(clk->id));
 			pckr &= css_mask;	/* keep clock selection */
 			pckr |= prescale << prescale_offset;
-			at91_sys_write(AT91_PMC_PCKR(clk->id), pckr);
+			at91_pmc_write(AT91_PMC_PCKR(clk->id), pckr);
 			clk->rate_hz = actual;
 			break;
 		}
@@ -386,7 +386,7 @@ int clk_set_parent(struct clk *clk, struct clk *parent)
 
 	clk->rate_hz = parent->rate_hz;
 	clk->parent = parent;
-	at91_sys_write(AT91_PMC_PCKR(clk->id), parent->id);
+	at91_pmc_write(AT91_PMC_PCKR(clk->id), parent->id);
 
 	return 0;
 }
@@ -404,7 +404,7 @@ static void init_programmable_clock(struct clk *clk)
 	else
 		css_mask = AT91_PMC_CSS;
 
-	pckr = at91_sys_read(AT91_PMC_PCKR(clk->id));
+	pckr = at91_pmc_read(AT91_PMC_PCKR(clk->id));
 	parent = at91_css_to_clk(pckr & css_mask);
 	clk->parent = parent;
 	clk->rate_hz = parent->rate_hz / pmc_prescaler_divider(pckr);
@@ -550,14 +550,14 @@ static void at91_pllb_usbfs_clock_init(unsigned long main_clock)
 	if (cpu_is_at91rm9200()) {
 		uhpck.pmc_mask = AT91RM9200_PMC_UHP;
 		udpck.pmc_mask = AT91RM9200_PMC_UDP;
-		at91_sys_write(AT91_PMC_SCER, AT91RM9200_PMC_MCKUDP);
+		at91_pmc_write(AT91_PMC_SCER, AT91RM9200_PMC_MCKUDP);
 	} else if (cpu_is_at91sam9260() || cpu_is_at91sam9261() ||
 		   cpu_is_at91sam9263() || cpu_is_at91sam9g20() ||
 		   cpu_is_at91sam9g10()) {
 		uhpck.pmc_mask = AT91SAM926x_PMC_UHP;
 		udpck.pmc_mask = AT91SAM926x_PMC_UDP;
 	}
-	at91_sys_write(AT91_CKGR_PLLBR, 0);
+	at91_pmc_write(AT91_CKGR_PLLBR, 0);
 
 	udpck.rate_hz = at91_usb_rate(&pllb, pllb.rate_hz, at91_pllb_usb_init);
 	uhpck.rate_hz = at91_usb_rate(&pllb, pllb.rate_hz, at91_pllb_usb_init);
@@ -574,13 +574,13 @@ static void at91_upll_usbfs_clock_init(unsigned long main_clock)
 	/* Setup divider by 10 to reach 48 MHz */
 	usbr |= ((10 - 1) << 8) & AT91_PMC_OHCIUSBDIV;
 
-	at91_sys_write(AT91_PMC_USB, usbr);
+	at91_pmc_write(AT91_PMC_USB, usbr);
 
 	/* Now set uhpck values */
 	uhpck.parent = &utmi_clk;
 	uhpck.pmc_mask = AT91SAM926x_PMC_UHP;
 	uhpck.rate_hz = utmi_clk.rate_hz;
-	uhpck.rate_hz /= 1 + ((at91_sys_read(AT91_PMC_USB) & AT91_PMC_OHCIUSBDIV) >> 8);
+	uhpck.rate_hz /= 1 + ((at91_pmc_read(AT91_PMC_USB) & AT91_PMC_OHCIUSBDIV) >> 8);
 }
 
 static int pll_overclock = 0;
@@ -591,6 +591,8 @@ int at91_clock_init(unsigned long main_clock)
 	unsigned tmp, freq, mckr;
 	int i;
 
+
+
 	/*
 	 * When the bootloader initialized the main oscillator correctly,
 	 * there's no problem using the cycle counter.  But if it didn't,
@@ -599,14 +601,14 @@ int at91_clock_init(unsigned long main_clock)
 	 */
 	if (!main_clock) {
 		do {
-			tmp = at91_sys_read(AT91_CKGR_MCFR);
+			tmp = at91_pmc_read(AT91_CKGR_MCFR);
 		} while (!(tmp & AT91_PMC_MAINRDY));
 		main_clock = (tmp & AT91_PMC_MAINF) * (AT91_SLOW_CLOCK / 16);
 	}
 	main_clk.rate_hz = main_clock;
 
 	/* report if PLLA is more than mildly overclocked */
-	plla.rate_hz = at91_pll_rate(&plla, main_clock, at91_sys_read(AT91_CKGR_PLLAR));
+	plla.rate_hz = at91_pll_rate(&plla, main_clock, at91_pmc_read(AT91_CKGR_PLLAR));
 	if (cpu_has_300M_plla()) {
 		if (plla.rate_hz > 300000000)
 			pll_overclock = 1;
@@ -625,7 +627,7 @@ int at91_clock_init(unsigned long main_clock)
 	}
 
 	if (cpu_has_plladiv2()) {
-		mckr = at91_sys_read(AT91_PMC_MCKR);
+		mckr = at91_pmc_read(AT91_PMC_MCKR);
 		plla.rate_hz /= (1 << ((mckr & AT91_PMC_PLLADIV2) >> 12));	/* plla divisor by 2 */
 	}
 
@@ -664,7 +666,7 @@ int at91_clock_init(unsigned long main_clock)
 	 * MCK and CPU derive from one of those primary clocks.
 	 * For now, assume this parentage won't change.
 	 */
-	mckr = at91_sys_read(AT91_PMC_MCKR);
+	mckr = at91_pmc_read(AT91_PMC_MCKR);
 	mck.parent = at91_css_to_clk(mckr & AT91_PMC_CSS);
 	freq = mck.parent->rate_hz;
 	freq /= pmc_prescaler_divider(mckr);					/* prescale */
@@ -748,8 +750,8 @@ static int at91_clock_reset(void)
 		pr_debug("Clocks: disable unused %s\n", clk->name);
 	}
 
-	at91_sys_write(AT91_PMC_PCDR, pcdr);
-	at91_sys_write(AT91_PMC_SCDR, scdr);
+	at91_pmc_write(AT91_PMC_PCDR, pcdr);
+	at91_pmc_write(AT91_PMC_SCDR, scdr);
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/include/mach/at91_pmc.h b/arch/arm/mach-at91/include/mach/at91_pmc.h
index 59037cf..6fcbf40 100644
--- a/arch/arm/mach-at91/include/mach/at91_pmc.h
+++ b/arch/arm/mach-at91/include/mach/at91_pmc.h
@@ -16,10 +16,16 @@
 #ifndef AT91_PMC_H
 #define AT91_PMC_H
 
-#define	AT91_PMC_SCER		(AT91_PMC + 0x00)	/* System Clock Enable Register */
-#define	AT91_PMC_SCDR		(AT91_PMC + 0x04)	/* System Clock Disable Register */
+#define at91_pmc_read(field) \
+	__raw_readl(AT91_PMC + field)
 
-#define	AT91_PMC_SCSR		(AT91_PMC + 0x08)	/* System Clock Status Register */
+#define at91_pmc_write(field, value) \
+	__raw_writel(value, AT91_PMC + field)
+
+#define	AT91_PMC_SCER		0x00			/* System Clock Enable Register */
+#define	AT91_PMC_SCDR		0x04			/* System Clock Disable Register */
+
+#define	AT91_PMC_SCSR		0x08			/* System Clock Status Register */
 #define		AT91_PMC_PCK		(1 <<  0)		/* Processor Clock */
 #define		AT91RM9200_PMC_UDP	(1 <<  1)		/* USB Devcice Port Clock [AT91RM9200 only] */
 #define		AT91RM9200_PMC_MCKUDP	(1 <<  2)		/* USB Device Port Master Clock Automatic Disable on Suspend [AT91RM9200 only] */
@@ -35,17 +41,17 @@
 #define		AT91_PMC_HCK0		(1 << 16)		/* AHB Clock (USB host) [AT91SAM9261 only] */
 #define		AT91_PMC_HCK1		(1 << 17)		/* AHB Clock (LCD) [AT91SAM9261 only] */
 
-#define	AT91_PMC_PCER		(AT91_PMC + 0x10)	/* Peripheral Clock Enable Register */
-#define	AT91_PMC_PCDR		(AT91_PMC + 0x14)	/* Peripheral Clock Disable Register */
-#define	AT91_PMC_PCSR		(AT91_PMC + 0x18)	/* Peripheral Clock Status Register */
+#define	AT91_PMC_PCER		0x10			/* Peripheral Clock Enable Register */
+#define	AT91_PMC_PCDR		0x14			/* Peripheral Clock Disable Register */
+#define	AT91_PMC_PCSR		0x18			/* Peripheral Clock Status Register */
 
-#define	AT91_CKGR_UCKR		(AT91_PMC + 0x1C)	/* UTMI Clock Register [some SAM9, CAP9] */
+#define	AT91_CKGR_UCKR		0x1C			/* UTMI Clock Register [some SAM9] */
 #define		AT91_PMC_UPLLEN		(1   << 16)		/* UTMI PLL Enable */
 #define		AT91_PMC_UPLLCOUNT	(0xf << 20)		/* UTMI PLL Start-up Time */
 #define		AT91_PMC_BIASEN		(1   << 24)		/* UTMI BIAS Enable */
 #define		AT91_PMC_BIASCOUNT	(0xf << 28)		/* UTMI BIAS Start-up Time */
 
-#define	AT91_CKGR_MOR		(AT91_PMC + 0x20)	/* Main Oscillator Register [not on SAM9RL] */
+#define	AT91_CKGR_MOR		0x20			/* Main Oscillator Register [not on SAM9RL] */
 #define		AT91_PMC_MOSCEN		(1    <<  0)		/* Main Oscillator Enable */
 #define		AT91_PMC_OSCBYPASS	(1    <<  1)		/* Oscillator Bypass */
 #define		AT91_PMC_MOSCRCEN	(1    <<  3)		/* Main On-Chip RC Oscillator Enable [some SAM9] */
@@ -54,12 +60,12 @@
 #define		AT91_PMC_MOSCSEL	(1    << 24)		/* Main Oscillator Selection [some SAM9] */
 #define		AT91_PMC_CFDEN		(1    << 25)		/* Clock Failure Detector Enable [some SAM9] */
 
-#define	AT91_CKGR_MCFR		(AT91_PMC + 0x24)	/* Main Clock Frequency Register */
+#define	AT91_CKGR_MCFR		0x24			/* Main Clock Frequency Register */
 #define		AT91_PMC_MAINF		(0xffff <<  0)		/* Main Clock Frequency */
 #define		AT91_PMC_MAINRDY	(1	<< 16)		/* Main Clock Ready */
 
-#define	AT91_CKGR_PLLAR		(AT91_PMC + 0x28)	/* PLL A Register */
-#define	AT91_CKGR_PLLBR		(AT91_PMC + 0x2c)	/* PLL B Register */
+#define	AT91_CKGR_PLLAR		0x28			/* PLL A Register */
+#define	AT91_CKGR_PLLBR		0x2c			/* PLL B Register */
 #define		AT91_PMC_DIV		(0xff  <<  0)		/* Divider */
 #define		AT91_PMC_PLLCOUNT	(0x3f  <<  8)		/* PLL Counter */
 #define		AT91_PMC_OUT		(3     << 14)		/* PLL Clock Frequency Range */
@@ -71,7 +77,7 @@
 #define		AT91_PMC_USB96M		(1     << 28)		/* Divider by 2 Enable (PLLB only) */
 #define		AT91_PMC_PLLA_WR_ERRATA	(1     << 29)		/* Bit 29 must always be set to 1 when programming the CKGR_PLLAR register */
 
-#define	AT91_PMC_MCKR		(AT91_PMC + 0x30)	/* Master Clock Register */
+#define	AT91_PMC_MCKR		0x30			/* Master Clock Register */
 #define		AT91_PMC_CSS		(3 <<  0)		/* Master Clock Selection */
 #define			AT91_PMC_CSS_SLOW		(0 << 0)
 #define			AT91_PMC_CSS_MAIN		(1 << 0)
@@ -113,27 +119,27 @@
 #define			AT91_PMC_PLLADIV2_OFF		(0 << 12)
 #define			AT91_PMC_PLLADIV2_ON		(1 << 12)
 
-#define	AT91_PMC_USB		(AT91_PMC + 0x38)	/* USB Clock Register [some SAM9 only] */
+#define	AT91_PMC_USB		0x38			/* USB Clock Register [some SAM9 only] */
 #define		AT91_PMC_USBS		(0x1 <<  0)		/* USB OHCI Input clock selection */
 #define			AT91_PMC_USBS_PLLA		(0 << 0)
 #define			AT91_PMC_USBS_UPLL		(1 << 0)
 #define		AT91_PMC_OHCIUSBDIV	(0xF <<  8)		/* Divider for USB OHCI Clock */
 
-#define	AT91_PMC_SMD		(AT91_PMC + 0x3c)	/* Soft Modem Clock Register [some SAM9 only] */
+#define	AT91_PMC_SMD		0x3c			/* Soft Modem Clock Register [some SAM9 only] */
 #define		AT91_PMC_SMDS		(0x1  <<  0)		/* SMD input clock selection */
 #define		AT91_PMC_SMD_DIV	(0x1f <<  8)		/* SMD input clock divider */
 #define		AT91_PMC_SMDDIV(n)	(((n) <<  8) & AT91_PMC_SMD_DIV)
 
-#define	AT91_PMC_PCKR(n)	(AT91_PMC + 0x40 + ((n) * 4))	/* Programmable Clock 0-N Registers */
+#define	AT91_PMC_PCKR(n)	(0x40 + ((n) * 4))	/* Programmable Clock 0-N Registers */
 #define		AT91_PMC_ALT_PCKR_CSS	(0x7 <<  0)		/* Programmable Clock Source Selection [alternate length] */
 #define			AT91_PMC_CSS_MASTER		(4 << 0)	/* [some SAM9 only] */
 #define		AT91_PMC_CSSMCK		(0x1 <<  8)		/* CSS or Master Clock Selection */
 #define			AT91_PMC_CSSMCK_CSS		(0 << 8)
 #define			AT91_PMC_CSSMCK_MCK		(1 << 8)
 
-#define	AT91_PMC_IER		(AT91_PMC + 0x60)	/* Interrupt Enable Register */
-#define	AT91_PMC_IDR		(AT91_PMC + 0x64)	/* Interrupt Disable Register */
-#define	AT91_PMC_SR		(AT91_PMC + 0x68)	/* Status Register */
+#define	AT91_PMC_IER		0x60			/* Interrupt Enable Register */
+#define	AT91_PMC_IDR		0x64			/* Interrupt Disable Register */
+#define	AT91_PMC_SR		0x68			/* Status Register */
 #define		AT91_PMC_MOSCS		(1 <<  0)		/* MOSCS Flag */
 #define		AT91_PMC_LOCKA		(1 <<  1)		/* PLLA Lock */
 #define		AT91_PMC_LOCKB		(1 <<  2)		/* PLLB Lock */
@@ -146,14 +152,14 @@
 #define		AT91_PMC_MOSCSELS	(1 << 16)		/* Main Oscillator Selection [some SAM9] */
 #define		AT91_PMC_MOSCRCS	(1 << 17)		/* Main On-Chip RC [some SAM9] */
 #define		AT91_PMC_CFDEV		(1 << 18)		/* Clock Failure Detector Event [some SAM9] */
-#define	AT91_PMC_IMR		(AT91_PMC + 0x6c)	/* Interrupt Mask Register */
+#define	AT91_PMC_IMR		0x6c			/* Interrupt Mask Register */
 
-#define AT91_PMC_PROT		(AT91_PMC + 0xe4)	/* Protect Register [AT91CAP9 revC only] */
+#define AT91_PMC_PROT		0xe4			/* Write Protect Mode Register [some SAM9] */
 #define		AT91_PMC_WPEN		(0x1  <<  0)		/* Write Protect Enable */
 #define		AT91_PMC_WPKEY		(0xffffff << 8)		/* Write Protect Key */
 #define		AT91_PMC_PROTKEY	(0x504d43 << 8)		/* Activation Code */
 
-#define AT91_PMC_WPSR		(AT91_PMC + 0xe8)	/* Write Protect Status Register [some SAM9] */
+#define AT91_PMC_WPSR		0xe8			/* Write Protect Status Register [some SAM9] */
 #define		AT91_PMC_WPVS		(0x1  <<  0)		/* Write Protect Violation Status */
 #define		AT91_PMC_WPVSRC		(0xffff  <<  8)		/* Write Protect Violation Source */
 
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 90b9f8a..636fe03 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -86,7 +86,7 @@ static inline unsigned long at91_arch_identify(void)
 
 static inline unsigned long at91cap9_rev_identify(void)
 {
-	return (at91_sys_read(AT91_PMC_VER));
+	return (at91_pmc_read(AT91_PMC_VER));
 }
 #endif
 
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index b4e24af..e283b9d 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -20,7 +20,7 @@
 /* 9263, 9g45 */
 #define AT91_BASE_DBGU1	0xffffee00
 
-#define AT91_PMC	(0xfffffc00 - AT91_BASE_SYS)
+#define AT91_PMC	0xfffffc00
 
 #if defined(CONFIG_ARCH_AT91RM9200)
 #include <mach/at91rm9200.h>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
