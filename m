Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TnxcU-00071m-Al
 for barebox@lists.infradead.org; Wed, 26 Dec 2012 20:30:32 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 437E7FF92D6
 for <barebox@lists.infradead.org>; Wed, 26 Dec 2012 21:39:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Dec 2012 21:28:48 +0100
Message-Id: <1356553728-32218-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] at91: add dump mux command
To: barebox@lists.infradead.org

This will allow to dump all pin configuration in a nice table
and if the bank/pin is specified the pin details

barebox@Atmel at91sam9x5-ek:/
Pin     PIOA            PIOB            PIOC            PIOD

0:      [gpio] set      [periph A]      [gpio] set      [periph A]
1:      [periph A]      [periph A]      [gpio] set      [periph A]
2:      [gpio] set      [periph A]      [gpio] set      [periph A]
3:      [gpio] set      [periph A]      [gpio] set      [periph A]
4:      [gpio] set      [periph A]      [gpio] set      [gpio] clear
5:      [gpio] set      [periph A]      [gpio] set      [gpio] set
6:      [gpio] set      [periph A]      [gpio] set      [periph A]
7:      [gpio] set      [periph A]      [gpio] set      [periph A]
8:      [gpio] set      [gpio] set      [gpio] set      [periph A]
9:      [periph A]      [periph A]      [gpio] set      [periph A]
10:     [periph A]      [periph A]      [gpio] set      [periph A]
11:     [periph A]      [gpio] set      [gpio] set      [periph A]
12:     [periph A]      [gpio] set      [gpio] set      [periph A]
13:     [periph A]      [gpio] clear    [gpio] set      [periph A]
14:     [gpio] set      [gpio] clear    [gpio] set      [gpio] set
15:     [periph A]      [gpio] set      [gpio] set      [gpio] set
16:     [periph A]      [gpio] set      [gpio] clear    [periph A]
17:     [periph A]      [gpio] set      [gpio] set      [periph A]
18:     [periph A]      [gpio] set      [gpio] set      [periph A]
19:     [periph A]      [periph A]      [gpio] set      [gpio] set
20:     [periph A]      [periph A]      [gpio] clear    [gpio] set
21:     [gpio] set      [periph A]      [gpio] clear    [gpio] clear
22:     [gpio] set      [periph A]      [gpio] set      [periph A]
23:     [gpio] set      [periph A]      [gpio] set      [periph A]
24:     [gpio] set      [periph A]      [gpio] set      [periph A]
25:     [gpio] set      [periph A]      [gpio] set      [periph A]
26:     [gpio] set      [periph A]      [gpio] set      [periph A]
27:     [gpio] clear    [periph A]      [gpio] set      [periph A]
28:     [gpio] set      [periph A]      [gpio] clear    [periph A]
29:     [gpio] set      [periph A]      [gpio] set      [periph A]
30:     [gpio] set      [periph A]      [gpio] set      [periph A]
31:     [gpio] set      [periph A]      [gpio] set      [periph A]
barebox@Atmel at91sam9x5-ek:/
pioA27 configuration

[gpio] clear
multidrive = disable
pullup = disable
degitch = disable
debounce = disable
pulldown = enable
schmitt trigger = enable

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig |    4 +
 arch/arm/mach-at91/gpio.c  |  226 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 230 insertions(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 448044a..58780c7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -510,4 +510,8 @@ config CALAO_MB_QIL_A9260
 	bool "MB-QIL A9260 Motherboard Board support"
 	depends on MACH_QIL_A9260
 
+config CMD_AT91MUX
+	bool "at91mux dump command"
+	default y
+
 endif
diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index 9e71324..9df5218 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -18,6 +18,8 @@
  */
 
 #include <common.h>
+#include <command.h>
+#include <complete.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <errno.h>
@@ -28,6 +30,7 @@
 #include <gpio.h>
 #include <init.h>
 #include <driver.h>
+#include <getopt.h>
 
 #define MAX_GPIO_BANKS		5
 #define MAX_NB_GPIO_PER_BANK	32
@@ -77,6 +80,7 @@ static inline unsigned pin_to_mask(unsigned pin)
  * periph A and B has changed
  * So provide the right call back
  * if not present means the IP does not support it
+ * @get_periph: return the periph mode configured
  * @mux_A_periph: mux as periph A
  * @mux_B_periph: mux as periph B
  * @mux_C_periph: mux as periph C
@@ -87,13 +91,18 @@ static inline unsigned pin_to_mask(unsigned pin)
  * @disable_schmitt_trig: disable schmitt trigger
  */
 struct at91_pinctrl_mux_ops {
+	enum at91_mux (*get_periph)(void __iomem *pio, unsigned mask);
 	void (*mux_A_periph)(void __iomem *pio, unsigned mask);
 	void (*mux_B_periph)(void __iomem *pio, unsigned mask);
 	void (*mux_C_periph)(void __iomem *pio, unsigned mask);
 	void (*mux_D_periph)(void __iomem *pio, unsigned mask);
+	bool (*get_deglitch)(void __iomem *pio, unsigned pin);
 	void (*set_deglitch)(void __iomem *pio, unsigned mask, bool in_on);
+	bool (*get_debounce)(void __iomem *pio, unsigned pin, u32 *div);
 	void (*set_debounce)(void __iomem *pio, unsigned mask, bool in_on, u32 div);
+	bool (*get_pulldown)(void __iomem *pio, unsigned pin);
 	void (*set_pulldown)(void __iomem *pio, unsigned mask, bool in_on);
+	bool (*get_schmitt_trig)(void __iomem *pio, unsigned pin);
 	void (*disable_schmitt_trig)(void __iomem *pio, unsigned mask);
 };
 
@@ -185,20 +194,93 @@ static void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio, unsigned mask)
 	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
 }
 
+#ifdef CONFIG_CMD_AT91MUX
+static unsigned at91_mux_get_pullup(void __iomem *pio, unsigned pin)
+{
+	return (__raw_readl(pio + PIO_PUSR) >> pin) & 0x1;
+}
+
+static unsigned at91_mux_get_multidrive(void __iomem *pio, unsigned pin)
+{
+	return (__raw_readl(pio + PIO_MDSR) >> pin) & 0x1;
+}
+
+static enum at91_mux at91_mux_pio3_get_periph(void __iomem *pio, unsigned mask)
+{
+	unsigned select;
+
+	if (__raw_readl(pio + PIO_PSR) & mask)
+		return AT91_MUX_GPIO;
+
+	select = !!(__raw_readl(pio + PIO_ABCDSR1) & mask);
+	select |= (!!(__raw_readl(pio + PIO_ABCDSR2) & mask) << 1);
+
+	return select + 1;
+}
+
+static enum at91_mux at91_mux_get_periph(void __iomem *pio, unsigned mask)
+{
+	unsigned select;
+
+	if (__raw_readl(pio + PIO_PSR) & mask)
+		return AT91_MUX_GPIO;
+
+	select = __raw_readl(pio + PIO_ABSR) & mask;
+
+	return select + 1;
+}
+
+static bool at91_mux_get_deglitch(void __iomem *pio, unsigned pin)
+{
+	return (__raw_readl(pio + PIO_IFSR) >> pin) & 0x1;
+}
+
+static bool at91_mux_pio3_get_debounce(void __iomem *pio, unsigned pin, u32 *div)
+{
+	*div = __raw_readl(pio + PIO_SCDR);
+
+	return (__raw_readl(pio + PIO_IFSCSR) >> pin) & 0x1;
+}
+
+static bool at91_mux_pio3_get_pulldown(void __iomem *pio, unsigned pin)
+{
+	return (__raw_readl(pio + PIO_PPDSR) >> pin) & 0x1;
+}
+
+static bool at91_mux_pio3_get_schmitt_trig(void __iomem *pio, unsigned pin)
+{
+	return (__raw_readl(pio + PIO_SCHMITT) >> pin) & 0x1;
+}
+#else
+#define at91_mux_get_periph		NULL
+#define at91_mux_pio3_get_periph	NULL
+#define at91_mux_get_deglitch		NULL
+#define at91_mux_pio3_get_debounce	NULL
+#define at91_mux_pio3_get_pulldown	NULL
+#define at91_mux_pio3_get_schmitt_trig	NULL
+#endif
+
 static struct at91_pinctrl_mux_ops at91rm9200_ops = {
+	.get_periph	= at91_mux_get_periph,
 	.mux_A_periph	= at91_mux_set_A_periph,
 	.mux_B_periph	= at91_mux_set_B_periph,
+	.get_deglitch	= at91_mux_get_deglitch,
 	.set_deglitch	= at91_mux_set_deglitch,
 };
 
 static struct at91_pinctrl_mux_ops at91sam9x5_ops = {
+	.get_periph	= at91_mux_pio3_get_periph,
 	.mux_A_periph	= at91_mux_pio3_set_A_periph,
 	.mux_B_periph	= at91_mux_pio3_set_B_periph,
 	.mux_C_periph	= at91_mux_pio3_set_C_periph,
 	.mux_D_periph	= at91_mux_pio3_set_D_periph,
+	.get_deglitch	= at91_mux_get_deglitch,
 	.set_deglitch	= at91_mux_pio3_set_deglitch,
+	.get_debounce	= at91_mux_pio3_get_debounce,
 	.set_debounce	= at91_mux_pio3_set_debounce,
+	.get_pulldown	= at91_mux_pio3_get_pulldown,
 	.set_pulldown	= at91_mux_pio3_set_pulldown,
+	.get_schmitt_trig = at91_mux_pio3_get_schmitt_trig,
 	.disable_schmitt_trig = at91_mux_pio3_disable_schmitt_trig,
 };
 
@@ -410,6 +492,150 @@ int at91_disable_schmitt_trig(unsigned pin)
 }
 EXPORT_SYMBOL(at91_disable_schmitt_trig);
 
+#ifdef CONFIG_CMD_AT91MUX
+static void at91mux_printf_mode(unsigned bank, unsigned pin)
+{
+	struct at91_gpio_chip *at91_gpio = &gpio_chip[bank];
+	void __iomem *pio = at91_gpio->regbase;
+	enum at91_mux mode;
+	u32 pdsr;
+
+	unsigned mask = pin_to_mask(pin);
+	
+	mode = at91_gpio->ops->get_periph(pio, mask);
+	
+	if (mode == AT91_MUX_GPIO) {
+		pdsr = __raw_readl(pio + PIO_PDSR);
+
+		printf("[gpio] %s", pdsr & mask ? "set" : "clear");
+	} else {
+		printf("[periph %c]", mode + 'A' - 1);
+	}
+}
+
+static void at91mux_dump_config(void)
+{
+	int bank, j;
+
+	/* print heading */
+	printf("Pin\t");
+	for (bank = 0; bank < gpio_banks; bank++) {
+		printf("PIO%c\t\t", 'A' + bank);
+	};
+	printf("\n\n");
+
+	/* print pin status */
+	for (j = 0; j < 32; j++) {
+		printf("%i:\t", j);
+
+		for (bank = 0; bank < gpio_banks; bank++) {
+			at91mux_printf_mode(bank, j);
+
+			printf("\t");
+		}
+
+		printf("\n");
+	}
+}
+
+static void at91mux_print_en_disable(const char *str, bool is_on)
+{
+	printf("%s = ", str);
+	
+	if (is_on)
+		printf("enable\n");
+	else
+		printf("disable\n");
+}
+
+static void at91mux_dump_pio_config(unsigned bank, unsigned pin)
+{
+	struct at91_gpio_chip *at91_gpio = &gpio_chip[bank];
+	void __iomem *pio = at91_gpio->regbase;
+	u32 div;
+
+	printf("pio%c%d configuration\n\n", bank + 'A', pin);
+
+	at91mux_printf_mode(bank, pin);
+	printf("\n");
+
+	at91mux_print_en_disable("multidrive",
+		at91_mux_get_multidrive(pio, pin));
+
+	at91mux_print_en_disable("pullup",
+		at91_mux_get_pullup(pio, pin));
+
+	if (at91_gpio->ops->get_deglitch)
+		at91mux_print_en_disable("degitch",
+			at91_gpio->ops->get_deglitch(pio, pin));
+
+	if (at91_gpio->ops->get_debounce) {
+		printf("debounce = ");
+		if (at91_gpio->ops->get_debounce(pio, pin, &div))
+			printf("enable at %d\n", div);
+		else
+			printf("disable\n");
+	}
+
+	if (at91_gpio->ops->get_pulldown)
+		at91mux_print_en_disable("pulldown",
+			at91_gpio->ops->get_pulldown(pio, pin));
+
+	if (at91_gpio->ops->get_schmitt_trig)
+		at91mux_print_en_disable("schmitt trigger",
+			!at91_gpio->ops->get_schmitt_trig(pio, pin));
+}
+
+static int do_at91mux(int argc, char *argv[])
+{
+	int opt;
+	unsigned bank = 0;
+	unsigned pin = 0;
+
+	if (argc < 2) {
+		at91mux_dump_config();
+		return 0;
+	}
+
+	while ((opt = getopt(argc, argv, "b:p:")) > 0) {
+		switch (opt) {
+		case 'b':
+			bank = simple_strtoul(optarg, NULL, 10);
+			break;
+		case 'p':
+			pin = simple_strtoul(optarg, NULL, 10);
+			break;
+		}
+	}
+
+	if (bank >= gpio_banks) {
+		printf("bank %c >= supported %c banks\n", bank + 'A',
+			gpio_banks + 'A');
+		return 1;
+	}
+
+	if (pin >= 32) {
+		printf("pin %d >= supported %d pins\n", pin, 32);
+		return 1;
+	}
+
+	at91mux_dump_pio_config(bank, pin);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(at91mux)
+BAREBOX_CMD_HELP_USAGE("at91mux [-p <pin> -b <bank>]\n")
+BAREBOX_CMD_HELP_SHORT("dump current mux configuration if bank/pin specified dump pin details\n");
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(at91mux)
+	.cmd		= do_at91mux,
+	.usage		= "dump current mux configuration",
+	BAREBOX_CMD_HELP(cmd_at91mux_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
+#endif
 /*--------------------------------------------------------------------------*/
 
 static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
