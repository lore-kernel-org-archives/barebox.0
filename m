Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDU9p-00075M-2n
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:13:58 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7927BFF84C0
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:14:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:58:47 +0200
Message-Id: <1333083528-24289-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Subject: [PATCH 8/9] ARM: at91/pio: add new PIO3 features
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

This patch adds the support for new PIO controller found on some at91sam SOCs.
 - more peripheral multiplexing
 - more features to configure on a PIO (pull-down, Schmitt trigger, debouncer)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/gpio.c                  |  129 +++++++++++++++++++++++++++-
 arch/arm/mach-at91/include/mach/at91_pio.h |   25 ++++++
 arch/arm/mach-at91/include/mach/gpio.h     |    6 ++
 3 files changed, 158 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 06da5af..ef2d20e 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -26,11 +26,20 @@
 #include <errno.h>
 #include <io.h>
 #include <mach/gpio.h>
+#include <mach/io.h>
+#include <mach/cpu.h>
 #include <gpio.h>
 
 static int gpio_banks;
+static int cpu_has_pio3;
 static struct at91_gpio_bank *gpio;
 
+/*
+ * Functionnality can change with newer chips
+ */
+
+
+
 static inline void __iomem *pin_to_controller(unsigned pin)
 {
 	pin -= PIN_BASE;
@@ -77,7 +86,14 @@ int at91_set_A_periph(unsigned pin, int use_pullup)
 
 	__raw_writel(mask, pio + PIO_IDR);
 	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	__raw_writel(mask, pio + PIO_ASR);
+	if (cpu_has_pio3) {
+		__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
+							pio + PIO_ABCDSR1);
+		__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
+							pio + PIO_ABCDSR2);
+	} else {
+		__raw_writel(mask, pio + PIO_ASR);
+	}
 	__raw_writel(mask, pio + PIO_PDR);
 	return 0;
 }
@@ -96,13 +112,60 @@ int at91_set_B_periph(unsigned pin, int use_pullup)
 
 	__raw_writel(mask, pio + PIO_IDR);
 	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
-	__raw_writel(mask, pio + PIO_BSR);
+	if (cpu_has_pio3) {
+		__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
+							pio + PIO_ABCDSR1);
+		__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
+							pio + PIO_ABCDSR2);
+	} else {
+		__raw_writel(mask, pio + PIO_BSR);
+	}
 	__raw_writel(mask, pio + PIO_PDR);
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_B_periph);
 
 /*
+ * mux the pin to the "C" internal peripheral role.
+ */
+int at91_set_C_periph(unsigned pin, int use_pullup)
+{
+	void __iomem	*pio = pin_to_controller(pin);
+	unsigned	mask = pin_to_mask(pin);
+
+	if (!pio || !cpu_has_pio3)
+		return -EINVAL;
+
+	__raw_writel(mask, pio + PIO_IDR);
+	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
+	__raw_writel(mask, pio + PIO_PDR);
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_C_periph);
+
+/*
+ * mux the pin to the "C" internal peripheral role.
+ */
+int at91_set_D_periph(unsigned pin, int use_pullup)
+{
+	void __iomem	*pio = pin_to_controller(pin);
+	unsigned	mask = pin_to_mask(pin);
+
+	if (!pio || !cpu_has_pio3)
+		return -EINVAL;
+
+	__raw_writel(mask, pio + PIO_IDR);
+	__raw_writel(mask, pio + (use_pullup ? PIO_PUER : PIO_PUDR));
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
+	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
+	__raw_writel(mask, pio + PIO_PDR);
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_D_periph);
+
+/*
  * mux the pin to the gpio controller (instead of "A" or "B" peripheral), and
  * configure it for an input.
  */
@@ -153,12 +216,37 @@ int at91_set_deglitch(unsigned pin, int is_on)
 
 	if (!pio)
 		return -EINVAL;
+
+	if (cpu_has_pio3 && is_on)
+		__raw_writel(mask, pio + PIO_IFSCDR);
 	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
 	return 0;
 }
 EXPORT_SYMBOL(at91_set_deglitch);
 
 /*
+ * enable/disable the debounce filter;
+ */
+int at91_set_debounce(unsigned pin, int is_on, int div)
+{
+	void __iomem	*pio = pin_to_controller(pin);
+	unsigned	mask = pin_to_mask(pin);
+
+	if (!pio || !cpu_has_pio3)
+		return -EINVAL;
+
+	if (is_on) {
+		__raw_writel(mask, pio + PIO_IFSCER);
+		__raw_writel(div & PIO_SCDR_DIV, pio + PIO_SCDR);
+		__raw_writel(mask, pio + PIO_IFER);
+	} else {
+		__raw_writel(mask, pio + PIO_IFDR);
+	}
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_debounce);
+
+/*
  * enable/disable the multi-driver; This is only valid for output and
  * allows the output pin to run as an open collector output.
  */
@@ -176,6 +264,41 @@ int at91_set_multi_drive(unsigned pin, int is_on)
 EXPORT_SYMBOL(at91_set_multi_drive);
 
 /*
+ * enable/disable the pull-down.
+ * If pull-up already enabled while calling the function, we disable it.
+ */
+int at91_set_pulldown(unsigned pin, int is_on)
+{
+	void __iomem	*pio = pin_to_controller(pin);
+	unsigned	mask = pin_to_mask(pin);
+
+	if (!pio || !cpu_has_pio3)
+		return -EINVAL;
+
+	/* Disable pull-up anyway */
+	__raw_writel(mask, pio + PIO_PUDR);
+	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
+	return 0;
+}
+EXPORT_SYMBOL(at91_set_pulldown);
+
+/*
+ * disable Schmitt trigger
+ */
+int at91_disable_schmitt_trig(unsigned pin)
+{
+	void __iomem	*pio = pin_to_controller(pin);
+	unsigned	mask = pin_to_mask(pin);
+
+	if (!pio || !cpu_has_pio3)
+		return -EINVAL;
+
+	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
+	return 0;
+}
+EXPORT_SYMBOL(at91_disable_schmitt_trig);
+
+/*
  * assuming the pin is muxed as a gpio output, set its value.
  */
 int at91_set_gpio_value(unsigned pin, int value)
@@ -245,5 +368,7 @@ int at91_gpio_init(struct at91_gpio_bank *data, int nr_banks)
 		clk_enable(data->clock);
 	}
 
+	cpu_has_pio3 = cpu_is_at91sam9x5();
+
 	return 0;
 }
diff --git a/arch/arm/mach-at91/include/mach/at91_pio.h b/arch/arm/mach-at91/include/mach/at91_pio.h
index f6ce1f9..2d80dfc 100644
--- a/arch/arm/mach-at91/include/mach/at91_pio.h
+++ b/arch/arm/mach-at91/include/mach/at91_pio.h
@@ -40,10 +40,35 @@
 #define PIO_PUER	0x64	/* Pull-up Enable Register */
 #define PIO_PUSR	0x68	/* Pull-up Status Register */
 #define PIO_ASR		0x70	/* Peripheral A Select Register */
+#define PIO_ABCDSR1	0x70	/* Peripheral ABCD Select Register 1 [some sam9 only] */
 #define PIO_BSR		0x74	/* Peripheral B Select Register */
+#define PIO_ABCDSR2	0x74	/* Peripheral ABCD Select Register 2 [some sam9 only] */
 #define PIO_ABSR	0x78	/* AB Status Register */
+#define PIO_IFSCDR	0x80	/* Input Filter Slow Clock Disable Register */
+#define PIO_IFSCER	0x84	/* Input Filter Slow Clock Enable Register */
+#define PIO_IFSCSR	0x88	/* Input Filter Slow Clock Status Register */
+#define PIO_SCDR	0x8c	/* Slow Clock Divider Debouncing Register */
+#define		PIO_SCDR_DIV	(0x3fff <<  0)		/* Slow Clock Divider Mask */
+#define PIO_PPDDR	0x90	/* Pad Pull-down Disable Register */
+#define PIO_PPDER	0x94	/* Pad Pull-down Enable Register */
+#define PIO_PPDSR	0x98	/* Pad Pull-down Status Register */
 #define PIO_OWER	0xa0	/* Output Write Enable Register */
 #define PIO_OWDR	0xa4	/* Output Write Disable Register */
 #define PIO_OWSR	0xa8	/* Output Write Status Register */
+#define PIO_AIMER	0xb0	/* Additional Interrupt Modes Enable Register */
+#define PIO_AIMDR	0xb4	/* Additional Interrupt Modes Disable Register */
+#define PIO_AIMMR	0xb8	/* Additional Interrupt Modes Mask Register */
+#define PIO_ESR		0xc0	/* Edge Select Register */
+#define PIO_LSR		0xc4	/* Level Select Register */
+#define PIO_ELSR	0xc8	/* Edge/Level Status Register */
+#define PIO_FELLSR	0xd0	/* Falling Edge/Low Level Select Register */
+#define PIO_REHLSR	0xd4	/* Rising Edge/ High Level Select Register */
+#define PIO_FRLHSR	0xd8	/* Fall/Rise - Low/High Status Register */
+#define PIO_SCHMITT	0x100	/* Schmitt Trigger Register */
+
+#define ABCDSR_PERIPH_A	0x0
+#define ABCDSR_PERIPH_B	0x1
+#define ABCDSR_PERIPH_C	0x2
+#define ABCDSR_PERIPH_D	0x3
 
 #endif
diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
index 95a4bd4..0f93f8d 100644
--- a/arch/arm/mach-at91/include/mach/gpio.h
+++ b/arch/arm/mach-at91/include/mach/gpio.h
@@ -230,6 +230,12 @@ int at91_set_multi_drive(unsigned pin, int is_on);
  */
 int at91_set_gpio_value(unsigned pin, int value);
 
+extern int at91_set_C_periph(unsigned pin, int use_pullup);
+extern int at91_set_D_periph(unsigned pin, int use_pullup);
+extern int at91_set_debounce(unsigned pin, int is_on, int div);
+extern int at91_set_pulldown(unsigned pin, int is_on);
+extern int at91_disable_schmitt_trig(unsigned pin);
+
 /*
  * read the pin's value (works even if it's not muxed as a gpio).
  */
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
