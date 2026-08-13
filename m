Delivery-date: Thu, 13 Aug 2026 10:15:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuQaz-002cMP-1s
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 10:15:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AFFD5201EC5
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 10:15:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Zb+3aQVH;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ljsJvA19FCNIYpEDoZ33iAavq3cDq82Lvk/s4R450Vo=; b=Zb+3aQVHeGyaGTk6+AxKhc8ZVa
	99iRlXK5QkSxSzTKH1J4EZUt2FfzcbMdFY8nr0NS1ksI58ST380tE5JafWPUuXgb7cOUXfZosrirY
	LXDc6fcSDW7Vb6gcA1dsRtRCyTg1VIkPXG+JSYkgiDtGRNrQImGEZOD9MFeWl52oqj4iAIT5OxYgc
	cTiUUIy7NC9Q89QWPpQ5WGz06cXqVFmSdD5fru1div52poQYjV/rBAUW8lmdHHOajs3szZIsl2UtD
	vzFhtO9RvVZkv/DnD3S1Yz7moW4Mf4FAalTIILJLG3Ietr1nQqsXWBm778ZjZJdfA9qpgWuuHr0Y5
	c98oah6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaW-000000006H4-2i96;
	Thu, 13 Aug 2026 08:14:56 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaT-000000006D5-1CG8
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BFE38201EC8;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fmm-1q;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007spS-1rC5;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 6/9] gpio: add Microchip SGPIO (serial GPIO) driver
Date: Thu, 13 Aug 2026 10:14:36 +0200
Message-ID: <20260813081444.1879009-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011453_642651_2031530F 
X-CRM114-Status: GOOD (  28.32  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add a driver for the Microchip Serial GPIO (SGPIO) controller
    used on the sparx5 / LAN969X switch SoCs to drive LED chains and per-port
    signals (SFP TX-disable, presence detect, etc.). Ported from Linux drivers/pinctrl/pinctrl-microchip-sgpio.c
    at tag v7.1-rc7. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 6wmk4bjixo1et7fwzoygngdqxyykjjdz
X-Spamd-Result: default: False [-6.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: AFFD5201EC5

Add a driver for the Microchip Serial GPIO (SGPIO) controller used on
the sparx5 / LAN969X switch SoCs to drive LED chains and per-port
signals (SFP TX-disable, presence detect, etc.).

Ported from Linux drivers/pinctrl/pinctrl-microchip-sgpio.c at tag
v7.1-rc7.

barebox doesn't carry the full Linux pinctrl subsystem, so the driver
is placed under drivers/gpio/ and exposes only the GPIO/output subset;
the pin-claim and IRQ paths from the Linux source are dropped.

Assisted-by: Claude-Code:claude-opus-5
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-7-o.rempel@pengutronix.de/

Changes v2:
- register two separate drivers instead of dispatching on the
  "microchip,sparx5-sgpio-bank" compatible inside a single probe:
  microchip-sgpio for the controller, microchip-sgpio-bank for the
  banks it populates (Sascha Hauer)
- add SPDX-Comment: Origin-URL: tag pointing at the Linux source file
  and the exact commit it was taken from (Sascha Hauer)
- drop the probe error-unwind entirely. dev->priv was assigned before
  of_platform_populate(), so freeing priv on its error path left
  dev->priv dangling; of_platform_populate() breaks on the first failing
  child and leaves earlier bank devices registered, which then read
  dev->parent->priv from their own probe. Not unwinding is both correct
  and the barebox convention for probe paths.
---
 drivers/gpio/Kconfig                |   8 +
 drivers/gpio/Makefile               |   1 +
 drivers/gpio/gpio-microchip-sgpio.c | 463 ++++++++++++++++++++++++++++
 3 files changed, 472 insertions(+)
 create mode 100644 drivers/gpio/gpio-microchip-sgpio.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 988d08cf143c..7acd658f4fff 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -251,6 +251,14 @@ config GPIO_INTEL
 	help
 	  Say Y here to build support for the Intel GPIO driver.
 
+config GPIO_MICROCHIP_SGPIO
+	bool "Microchip SGPIO (serial GPIO) driver"
+	depends on OFDEVICE
+	help
+	  Say yes here to support the Microchip serial GPIO controller
+	  used on the sparx5 / LAN969X switch SoCs to drive LED chains and
+	  per-port signals (SFP TX-disable, presence, etc.).
+
 endmenu
 
 endif
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 8560e1f05925..fd1c5ac07f43 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -32,3 +32,4 @@ obj-$(CONFIG_GPIO_STARFIVE)	+= gpio-starfive-vic.o
 obj-$(CONFIG_GPIO_ZYNQ)		+= gpio-zynq.o
 obj-$(CONFIG_GPIO_LATCH)	+= gpio-latch.o
 obj-$(CONFIG_GPIO_INTEL)	+= gpio-intel.o
+obj-$(CONFIG_GPIO_MICROCHIP_SGPIO) += gpio-microchip-sgpio.o
diff --git a/drivers/gpio/gpio-microchip-sgpio.c b/drivers/gpio/gpio-microchip-sgpio.c
new file mode 100644
index 000000000000..4b45e8718369
--- /dev/null
+++ b/drivers/gpio/gpio-microchip-sgpio.c
@@ -0,0 +1,463 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/pinctrl/pinctrl-microchip-sgpio.c?id=b7e5ac83cb16f7ffd11dc23736f84276602100ed
+/*
+ * Microchip SGPIO driver — LAN969X / sparx5 subset.
+ *
+ * Copyright (c) 2020 Microchip Technology Inc.
+ *
+ * Ported from Linux drivers/pinctrl/pinctrl-microchip-sgpio.c. Identifiers
+ * and register-layout tables are kept aligned with Linux so future fixes
+ * can be backported with minimal context churn.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <gpio.h>
+#include <io.h>
+#include <of.h>
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+
+#define SGPIO_BITS_PER_WORD	32
+#define SGPIO_MAX_BITS		4
+
+enum {
+	REG_INPUT_DATA,
+	REG_PORT_CONFIG,
+	REG_PORT_ENABLE,
+	REG_SIO_CONFIG,
+	REG_SIO_CLOCK,
+	REG_INT_POLARITY,
+	REG_INT_TRIGGER,
+	REG_INT_ACK,
+	REG_INT_ENABLE,
+	REG_INT_IDENT,
+	MAXREG
+};
+
+enum {
+	SGPIO_ARCH_LUTON,
+	SGPIO_ARCH_OCELOT,
+	SGPIO_ARCH_SPARX5,
+};
+
+struct sgpio_properties {
+	int arch;
+	int flags;
+	u8 regoff[MAXREG];
+};
+
+#define SGPIO_SPARX5_AUTO_REPEAT BIT(6)
+#define SGPIO_SPARX5_PORT_WIDTH  GENMASK(4, 3)
+#define SGPIO_SPARX5_CLK_FREQ    GENMASK(19, 8)
+#define SGPIO_SPARX5_BIT_SOURCE  GENMASK(23, 12)
+
+static const struct sgpio_properties properties_sparx5 = {
+	.arch   = SGPIO_ARCH_SPARX5,
+	.regoff = { 0x00, 0x06, 0x26, 0x04, 0x05, 0x2a, 0x32, 0x3a, 0x3e, 0x42 },
+};
+
+struct sgpio_priv;
+
+struct sgpio_bank {
+	struct sgpio_priv *priv;
+	bool is_input;
+	struct gpio_chip gpio;
+};
+
+struct sgpio_priv {
+	struct device *dev;
+	struct sgpio_bank in;
+	struct sgpio_bank out;
+	u32 bitcount;
+	u32 ports;
+	u32 clock;
+	struct regmap *regs;
+	const struct sgpio_properties *properties;
+};
+
+struct sgpio_port_addr {
+	u8 port;
+	u8 bit;
+};
+
+#define to_sgpio_bank(gc)  container_of(gc, struct sgpio_bank, gpio)
+
+static inline void sgpio_pin_to_addr(struct sgpio_priv *priv, int pin,
+				     struct sgpio_port_addr *addr)
+{
+	addr->port = pin / priv->bitcount;
+	addr->bit = pin % priv->bitcount;
+}
+
+static inline int sgpio_addr_to_pin(struct sgpio_priv *priv, int port, int bit)
+{
+	return bit + port * priv->bitcount;
+}
+
+static inline u32 sgpio_get_addr(struct sgpio_priv *priv, u32 rno, u32 off)
+{
+	return (priv->properties->regoff[rno] + off) * 4;
+}
+
+static u32 sgpio_readl(struct sgpio_priv *priv, u32 rno, u32 off)
+{
+	u32 val = 0;
+	int ret;
+
+	ret = regmap_read(priv->regs, sgpio_get_addr(priv, rno, off), &val);
+	WARN_ONCE(ret, "error reading sgpio reg %d\n", ret);
+
+	return val;
+}
+
+static void sgpio_writel(struct sgpio_priv *priv, u32 val, u32 rno, u32 off)
+{
+	int ret;
+
+	ret = regmap_write(priv->regs, sgpio_get_addr(priv, rno, off), val);
+	WARN_ONCE(ret, "error writing sgpio reg %d\n", ret);
+}
+
+static inline void sgpio_clrsetbits(struct sgpio_priv *priv,
+				    u32 rno, u32 off, u32 clear, u32 set)
+{
+	int ret;
+
+	ret = regmap_update_bits(priv->regs, sgpio_get_addr(priv, rno, off),
+				 clear | set, set);
+	WARN_ONCE(ret, "error updating sgpio reg %d\n", ret);
+}
+
+static inline void sgpio_configure_bitstream(struct sgpio_priv *priv)
+{
+	int width = priv->bitcount - 1;
+	u32 clr, set;
+
+	/* Only SPARX5 architecture is implemented here. */
+	clr = SGPIO_SPARX5_PORT_WIDTH;
+	set = SGPIO_SPARX5_AUTO_REPEAT |
+	      FIELD_PREP(SGPIO_SPARX5_PORT_WIDTH, width);
+
+	sgpio_clrsetbits(priv, REG_SIO_CONFIG, 0, clr, set);
+}
+
+static inline void sgpio_configure_clock(struct sgpio_priv *priv, u32 clkfrq)
+{
+	u32 clr = SGPIO_SPARX5_CLK_FREQ;
+	u32 set = FIELD_PREP(SGPIO_SPARX5_CLK_FREQ, clkfrq);
+
+	sgpio_clrsetbits(priv, REG_SIO_CLOCK, 0, clr, set);
+}
+
+/* ---- output / input value helpers ---- */
+
+static int sgpio_output_set(struct sgpio_priv *priv,
+			    struct sgpio_port_addr *addr, int value)
+{
+	unsigned int bit = 3 * addr->bit;
+	u32 clr = FIELD_PREP(SGPIO_SPARX5_BIT_SOURCE, BIT(bit));
+	u32 set = (value & 1) ? clr : 0;
+
+	sgpio_clrsetbits(priv, REG_PORT_CONFIG, addr->port, clr, set);
+	return 0;
+}
+
+static int sgpio_output_get(struct sgpio_priv *priv,
+			    struct sgpio_port_addr *addr)
+{
+	u32 portval = sgpio_readl(priv, REG_PORT_CONFIG, addr->port);
+	u32 bit_source = FIELD_GET(SGPIO_SPARX5_BIT_SOURCE, portval);
+
+	return !!(bit_source & BIT(3 * addr->bit));
+}
+
+static int sgpio_input_get(struct sgpio_priv *priv,
+			   struct sgpio_port_addr *addr)
+{
+	return !!(sgpio_readl(priv, REG_INPUT_DATA, addr->bit) & BIT(addr->port));
+}
+
+/* ---- gpio_chip ops ---- */
+
+static int microchip_sgpio_get_direction(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct sgpio_bank *bank = to_sgpio_bank(gc);
+
+	/* in bank = input, out bank = output. Fixed direction per bank. */
+	return bank->is_input ? 1 : 0;
+}
+
+static int microchip_sgpio_direction_input(struct gpio_chip *gc,
+					   unsigned int gpio)
+{
+	struct sgpio_bank *bank = to_sgpio_bank(gc);
+
+	return bank->is_input ? 0 : -EINVAL;
+}
+
+static int microchip_sgpio_direction_output(struct gpio_chip *gc,
+					    unsigned int gpio, int value)
+{
+	struct sgpio_bank *bank = to_sgpio_bank(gc);
+	struct sgpio_port_addr addr;
+
+	if (bank->is_input)
+		return -EINVAL;
+
+	sgpio_pin_to_addr(bank->priv, gpio, &addr);
+	return sgpio_output_set(bank->priv, &addr, value);
+}
+
+static int microchip_sgpio_get_value(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct sgpio_bank *bank = to_sgpio_bank(gc);
+	struct sgpio_port_addr addr;
+
+	sgpio_pin_to_addr(bank->priv, gpio, &addr);
+	return bank->is_input ? sgpio_input_get(bank->priv, &addr)
+			      : sgpio_output_get(bank->priv, &addr);
+}
+
+static int microchip_sgpio_set_value(struct gpio_chip *gc,
+				     unsigned int gpio, int value)
+{
+	struct sgpio_bank *bank = to_sgpio_bank(gc);
+	struct sgpio_port_addr addr;
+
+	if (bank->is_input)
+		return -EINVAL;
+
+	sgpio_pin_to_addr(bank->priv, gpio, &addr);
+	return sgpio_output_set(bank->priv, &addr, value);
+}
+
+static int microchip_sgpio_of_xlate(struct gpio_chip *gc,
+				    const struct of_phandle_args *gpiospec,
+				    u32 *flags)
+{
+	struct sgpio_bank *bank = to_sgpio_bank(gc);
+	struct sgpio_priv *priv = bank->priv;
+	int pin;
+
+	/*
+	 * SGPIO pin is identified by *two* numbers: a port between 0..31
+	 * and a bit index 0..3. Cells: <port bit flags>.
+	 */
+	if (gpiospec->args[0] > SGPIO_BITS_PER_WORD ||
+	    gpiospec->args[1] > priv->bitcount)
+		return -EINVAL;
+
+	pin = sgpio_addr_to_pin(priv, gpiospec->args[0], gpiospec->args[1]);
+	if (pin > gc->ngpio)
+		return -EINVAL;
+
+	if (flags)
+		*flags = gpiospec->args[2];
+
+	/*
+	 * Convert chip-local pin to global GPIO number, like
+	 * of_gpio_simple_xlate().
+	 */
+	return gc->base + pin;
+}
+
+static struct gpio_ops microchip_sgpio_gpio_ops = {
+	.direction_input = microchip_sgpio_direction_input,
+	.direction_output = microchip_sgpio_direction_output,
+	.get_direction = microchip_sgpio_get_direction,
+	.get = microchip_sgpio_get_value,
+	.set = microchip_sgpio_set_value,
+	.of_xlate = microchip_sgpio_of_xlate,
+};
+
+/* ---- probe-time setup ---- */
+
+static int microchip_sgpio_get_ports(struct sgpio_priv *priv)
+{
+	const char *prop = "microchip,sgpio-port-ranges";
+	struct device *dev = priv->dev;
+	u32 range_params[64];
+	int i, nranges, ret;
+
+	nranges = of_property_count_elems_of_size(dev->of_node, prop, sizeof(u32));
+	if (nranges < 2 || nranges % 2 || nranges > ARRAY_SIZE(range_params)) {
+		dev_err(dev, "%s port range: '%s' property\n",
+			nranges < 0 ? "Missing" : "Invalid", prop);
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32_array(dev->of_node, prop, range_params, nranges);
+	if (ret) {
+		dev_err(dev, "failed to parse '%s' property: %d\n", prop, ret);
+		return ret;
+	}
+	for (i = 0; i < nranges; i += 2) {
+		int start = range_params[i];
+		int end = range_params[i + 1];
+
+		if (start > end || end >= SGPIO_BITS_PER_WORD) {
+			dev_err(dev, "Ill-formed port-range [%d:%d]\n", start, end);
+			continue;
+		}
+		priv->ports |= GENMASK(end, start);
+	}
+
+	return 0;
+}
+
+/*
+ * Child bank probe - runs once per `microchip,sparx5-sgpio-bank` node
+ * spawned by the parent via of_platform_populate.
+ */
+static int microchip_sgpio_bank_probe(struct device *dev)
+{
+	struct sgpio_priv *priv;
+	struct sgpio_bank *bank;
+	struct gpio_chip *gc;
+	u32 ngpios, reg;
+	int ret;
+
+	if (!dev->parent || !dev->parent->priv) {
+		dev_err(dev, "no parent SGPIO controller\n");
+		return -ENODEV;
+	}
+	priv = dev->parent->priv;
+
+	ret = of_property_read_u32(dev->of_node, "reg", &reg);
+	if (ret) {
+		dev_err(dev, "missing 'reg' on bank node\n");
+		return ret;
+	}
+	bank = reg ? &priv->out : &priv->in;
+	bank->priv = priv;
+	bank->is_input = (reg == 0);
+
+	if (of_property_read_u32(dev->of_node, "ngpios", &ngpios))
+		ngpios = SGPIO_BITS_PER_WORD * priv->bitcount;
+
+	gc = &bank->gpio;
+	gc->dev = dev;
+	gc->base = -1;
+	gc->ngpio = ngpios;
+	gc->ops = &microchip_sgpio_gpio_ops;
+	gc->of_gpio_n_cells = 3;
+
+	ret = gpiochip_add(gc);
+	if (ret)
+		dev_err(dev, "failed to register sgpio bank (reg=%u): %d\n",
+			reg, ret);
+	else
+		dev_dbg(dev, "sgpio bank (%s) registered, %d gpios\n",
+			bank->is_input ? "in" : "out", ngpios);
+	return ret;
+}
+
+static int microchip_sgpio_probe(struct device *dev)
+{
+	struct sgpio_priv *priv;
+	struct reset_control *reset;
+	struct clk *clk;
+	struct resource *iores;
+	void __iomem *base;
+	int ret, port;
+	u32 div_clock, val;
+
+	static const struct regmap_config sgpio_regmap_config = {
+		.reg_bits = 32,
+		.val_bits = 32,
+		.reg_stride = 4,
+	};
+
+	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
+	priv->properties = device_get_match_data(dev);
+	if (!priv->properties)
+		return -EINVAL;
+
+	reset = reset_control_get_optional(dev, "switch");
+	if (!IS_ERR(reset))
+		reset_control_reset(reset);
+
+	clk = clk_get(dev, NULL);
+	if (IS_ERR(clk)) {
+		dev_err(dev, "failed to get clock\n");
+		return PTR_ERR(clk);
+	}
+	div_clock = clk_get_rate(clk);
+
+	if (of_property_read_u32(dev->of_node, "bus-frequency", &priv->clock))
+		priv->clock = 12500000;
+	if (priv->clock == 0 || priv->clock > (div_clock / 2)) {
+		dev_err(dev, "Invalid frequency %d\n", priv->clock);
+		return -EINVAL;
+	}
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	priv->regs = regmap_init_mmio(dev, base, &sgpio_regmap_config);
+	if (IS_ERR(priv->regs))
+		return PTR_ERR(priv->regs);
+
+	ret = microchip_sgpio_get_ports(priv);
+	if (ret)
+		return ret;
+
+	/* Bit count is fixed for sparx5/lan969x (4 bits per port). */
+	priv->bitcount = SGPIO_MAX_BITS;
+
+	sgpio_configure_bitstream(priv);
+
+	val = max(2U, div_clock / priv->clock);
+	sgpio_configure_clock(priv, val);
+
+	for (port = 0; port < SGPIO_BITS_PER_WORD; port++)
+		sgpio_writel(priv, 0, REG_PORT_CONFIG, port);
+	sgpio_writel(priv, priv->ports, REG_PORT_ENABLE, 0);
+
+	dev->priv = priv;
+
+	ret = of_platform_populate(dev->of_node, NULL, dev);
+	if (ret) {
+		dev_err(dev, "failed to populate bank children: %d\n", ret);
+		return ret;
+	}
+
+	dev_dbg(dev, "registered: clk %u Hz, %u ports\n", priv->clock,
+		hweight32(priv->ports));
+	return 0;
+}
+
+static const struct of_device_id microchip_sgpio_of_match[] = {
+	{ .compatible = "microchip,sparx5-sgpio", .data = &properties_sparx5 },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, microchip_sgpio_of_match);
+
+static struct driver microchip_sgpio_driver = {
+	.name = "microchip-sgpio",
+	.probe = microchip_sgpio_probe,
+	.of_compatible = DRV_OF_COMPAT(microchip_sgpio_of_match),
+};
+coredevice_platform_driver(microchip_sgpio_driver);
+
+static const struct of_device_id microchip_sgpio_bank_of_match[] = {
+	{ .compatible = "microchip,sparx5-sgpio-bank" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, microchip_sgpio_bank_of_match);
+
+static struct driver microchip_sgpio_bank_driver = {
+	.name = "microchip-sgpio-bank",
+	.probe = microchip_sgpio_bank_probe,
+	.of_compatible = DRV_OF_COMPAT(microchip_sgpio_bank_of_match),
+};
+coredevice_platform_driver(microchip_sgpio_bank_driver);
-- 
2.47.3



