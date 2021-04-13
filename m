Delivery-date: Tue, 13 Apr 2021 11:14:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWF7y-0007DD-67
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 11:14:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWF7w-0005KC-Sy
	for lore@pengutronix.de; Tue, 13 Apr 2021 11:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RhQUcbESiVYq89Wb18Co19YMeq5w4/iq/1iiMTqZe5w=; b=O7utpLw1oMeCrL0GDNk5U3ttoW
	d/CSJE/XVIFWBhm3cPLiMPJMTgJMmdXsmmd+CjHbPQa+Vc8yPO86/HcNvUJ3Cuu1aEunsDeDTA2YC
	pGMvvidivJt8Gd2q0HvP+OOQ/o+GeuCHXsDtbpsvbT6pT0Sqg22dI3fUCowbWw5wFkkWjpIRGhheK
	wb79ZI17rx4qxAmRaQ+9jFaTIdWq3q4yLZYCCu9T7KJAfu7tj21GdZfZTnzVTrcj/R44BhVZnwxUB
	6x1I73AXmkVpDgzIByF06Mfom1ncZRcLwMsTwvEPxuBjj7yo69Qjc9TnU/w7qHliAPqJtA7PVpTQm
	HMx4cfdQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWF4w-008fN8-N8; Tue, 13 Apr 2021 09:11:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWF4p-008fMa-Fc
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 09:11:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=FOq6inKsoPYz7oWvovEEkVmpoEtvgifO4JaipoKsuIw=; b=l6I5MYL80a3EWPZivNL0a2WpAg
 ZkmOlWkHqMyOcMC6/J4Ak9VOg6jyA4tn9P7m9TzrAsaeOHRRC3UvtF152aicWmfYqxuycn/M4q9On
 0sHuJzzNn58a07mgueUIq6wC58LW4NZa5Pp5dnl7cS1A5zU2grjczVIHZxkP2x8Nz4PVL4SKIRr7V
 +yoMlSuHh3qagrDnl8noyq1AHt+YcD47dVL+5IasNNlidq5kqpccKddzOJSlIsLappiDKNKMbJ1Kk
 8HEUpBK1R+3Ax02f4SqQ0tXAXgBqAe3ODF80c3LvNfS0vPpCznUDMRIyPwTab4oClBzTseRRMVIxI
 SbYi9DtQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWF4l-006rih-2k
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 09:11:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWF4j-0004uh-PN; Tue, 13 Apr 2021 11:11:13 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWF4j-000319-Fm; Tue, 13 Apr 2021 11:11:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 13 Apr 2021 11:11:12 +0200
Message-Id: <20210413091112.11296-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_021115_315332_0C8A39FD 
X-CRM114-Status: GOOD (  25.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pwm: add pwm-atmel from Linux kernel 4.14
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sam Ravnborg <sam@ravnborg.org>

This add the pwm-atmel.c file from kernel 4.14,
modified for barebox use.

The code is modelled over pwm-mxs.

pwm-atmel is required to support PWM's used on a board
with AT91SAM9263 - controlling backlight and contrast.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/pwm/Kconfig     |   6 +
 drivers/pwm/Makefile    |   1 +
 drivers/pwm/pwm-atmel.c | 289 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 296 insertions(+)
 create mode 100644 drivers/pwm/pwm-atmel.c

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 478ea49eed..a6e141817b 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -16,6 +16,12 @@ config PWM_PXA
 	  This enables PWM support for Intel/Marvell PXA chips, such
 	  as the PXA25x, PXA27x.
 
+config PWM_ATMEL
+	bool "Atmel PWM Support"
+	depends on ARCH_AT91
+	help
+	  This enables PWM support for Ateml AT91 SoCs
+
 config PWM_IMX
 	bool "i.MX PWM Support"
 	depends on ARCH_IMX || COMPILE_TEST
diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
index c0a27becef..55558aa42e 100644
--- a/drivers/pwm/Makefile
+++ b/drivers/pwm/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_PWM)		+= core.o
 obj-$(CONFIG_PWM_PXA)		+= pxa_pwm.o
+obj-$(CONFIG_PWM_ATMEL)		+= pwm-atmel.o
 obj-$(CONFIG_PWM_IMX)		+= pwm-imx.o
 obj-$(CONFIG_PWM_MXS)		+= pwm-mxs.o
 obj-$(CONFIG_PWM_STM32)		+= pwm-stm32.o
diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
new file mode 100644
index 0000000000..7fa394934a
--- /dev/null
+++ b/drivers/pwm/pwm-atmel.c
@@ -0,0 +1,289 @@
+/*
+ * Driver for Atmel Pulse Width Modulation Controller
+ *
+ * Copyright (C) 2013 Atmel Corporation
+ *		 Bo Shen <voice.shen@atmel.com>
+ * Copyright (C) 2018 Sam Ravnborg <sam@ravnborg.org>
+ *
+ * Licensed under GPLv2.
+ */
+
+#include <of_device.h>
+#include <common.h>
+#include <driver.h>
+#include <module.h>
+#include <printk.h>
+#include <stdio.h>
+#include <init.h>
+#include <pwm.h>
+#include <io.h>
+#include <of.h>
+
+#include <asm-generic/div64.h>
+
+#include <linux/time.h>
+#include <linux/clk.h>
+
+
+#define PWM_CHANNELS		4
+
+/* The following is global registers for PWM controller */
+#define PWM_ENA			0x04
+#define PWM_DIS			0x08
+#define PWM_SR			0x0C
+#define PWM_ISR			0x1C
+/* Bit field in SR */
+#define PWM_SR_ALL_CH_ON	0x0F
+
+/* The following register is PWM channel related registers */
+#define PWM_CH_REG_OFFSET	0x200
+#define PWM_CH_REG_SIZE		0x20
+
+#define PWM_CMR			0x0
+/* Bit field in CMR */
+#define PWM_CMR_CPOL		(1 << 9)
+#define PWM_CMR_UPD_CDTY	(1 << 10)
+#define PWM_CMR_CPRE_MSK	0xF
+
+/* The following registers for PWM v1 */
+#define PWMV1_CDTY		0x04
+#define PWMV1_CPRD		0x08
+#define PWMV1_CUPD		0x10
+
+/* The following registers for PWM v2 */
+#define PWMV2_CDTY		0x04
+#define PWMV2_CDTYUPD		0x08
+#define PWMV2_CPRD		0x0C
+#define PWMV2_CPRDUPD		0x10
+
+/*
+ * Max value for duty and period
+ *
+ * Although the duty and period register is 32 bit,
+ * however only the LSB 16 bits are significant.
+ */
+#define PWM_MAX_DTY		0xFFFF
+#define PWM_MAX_PRD		0xFFFF
+#define PRD_MAX_PRES		10
+
+struct atmel_pwm_registers {
+	u8 period;
+	u8 period_upd;
+	u8 duty;
+	u8 duty_upd;
+};
+
+struct atmel_pwm;
+
+struct atmel_pwm_chip {
+	struct pwm_chip chip;
+	struct atmel_pwm *atmel;
+};
+
+struct atmel_pwm {
+	struct atmel_pwm_chip atmel_pwm_chip[PWM_CHANNELS];
+	const struct atmel_pwm_registers *regs;
+	struct clk *clk;
+	void __iomem *base;
+	struct device_d *dev;
+};
+
+static inline struct atmel_pwm_chip *to_atmel_pwm_chip(struct pwm_chip *chip)
+{
+	return container_of(chip, struct atmel_pwm_chip, chip);
+}
+
+static inline void atmel_pwm_writel(struct atmel_pwm_chip *chip,
+				    unsigned long offset, unsigned long val)
+{
+	writel(val, chip->atmel->base + offset);
+}
+
+static inline u32 atmel_pwm_ch_readl(struct atmel_pwm_chip *chip,
+				     unsigned int ch, unsigned long offset)
+{
+	unsigned long base = PWM_CH_REG_OFFSET + ch * PWM_CH_REG_SIZE;
+
+	return readl(chip->atmel->base + base + offset);
+}
+
+static inline void atmel_pwm_ch_writel(struct atmel_pwm_chip *chip,
+				       unsigned int ch, unsigned long offset,
+				       unsigned long val)
+{
+	unsigned long base = PWM_CH_REG_OFFSET + ch * PWM_CH_REG_SIZE;
+
+	writel(val, chip->atmel->base + base + offset);
+}
+
+static int atmel_pwm_calculate_cprd_and_pres(struct atmel_pwm_chip *atmel_pwm,
+					     int period,
+					     unsigned long *cprd, u32 *pres)
+{
+	unsigned long long cycles = period;
+	/* Calculate the period cycles and prescale value */
+	cycles *= clk_get_rate(atmel_pwm->atmel->clk);
+	do_div(cycles, NSEC_PER_SEC);
+
+	for (*pres = 0; cycles > PWM_MAX_PRD; cycles >>= 1)
+		(*pres)++;
+
+	if (*pres > PRD_MAX_PRES) {
+		dev_err(atmel_pwm->atmel->dev, "pres exceeds the maximum value\n");
+		return -EINVAL;
+	}
+
+	*cprd = cycles;
+
+	return 0;
+}
+
+static void atmel_pwm_calculate_cdty(int duty, int period,
+				     unsigned long cprd, unsigned long *cdty)
+{
+	unsigned long long cycles = duty;
+
+	cycles *= cprd;
+	do_div(cycles, period);
+	*cdty = cprd - cycles;
+}
+
+static void atmel_pwm_set_cprd_cdty(struct atmel_pwm_chip *atmel_pwm, int ch,
+				    unsigned long cprd, unsigned long cdty)
+{
+	const struct atmel_pwm_registers *regs = atmel_pwm->atmel->regs;
+
+	atmel_pwm_ch_writel(atmel_pwm, ch, regs->duty, cdty);
+	atmel_pwm_ch_writel(atmel_pwm, ch, regs->period, cprd);
+}
+
+static int atmel_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
+{
+	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
+	unsigned long cprd, cdty;
+	u32 pres, val;
+	int ret;
+	int ch;
+
+	ch = atmel_pwm->chip.id;
+	ret = atmel_pwm_calculate_cprd_and_pres(atmel_pwm, period_ns, &cprd, &pres);
+	if (ret)
+		return ret;
+
+	atmel_pwm_calculate_cdty(duty_ns, period_ns, cprd, &cdty);
+
+	/* It is necessary to preserve CPOL, inside CMR */
+	val = atmel_pwm_ch_readl(atmel_pwm, ch, PWM_CMR);
+	val = (val & ~PWM_CMR_CPRE_MSK) | (pres & PWM_CMR_CPRE_MSK);
+	/* Assuming normal polarity */
+	val &= ~PWM_CMR_CPOL;
+
+	atmel_pwm_ch_writel(atmel_pwm, ch, PWM_CMR, val);
+	atmel_pwm_set_cprd_cdty(atmel_pwm, ch, cprd, cdty);
+
+	return 0;
+}
+
+static int atmel_pwm_enable(struct pwm_chip *chip)
+{
+	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
+
+	atmel_pwm_writel(atmel_pwm, PWM_ENA, 1 << atmel_pwm->chip.id);
+	return 0;
+}
+
+static void atmel_pwm_disable(struct pwm_chip *chip)
+{
+	struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
+
+	atmel_pwm_writel(atmel_pwm, PWM_DIS, 1 << atmel_pwm->chip.id);
+}
+
+static struct pwm_ops atmel_pwm_ops = {
+	.config = atmel_pwm_config,
+	.enable = atmel_pwm_enable,
+	.disable = atmel_pwm_disable,
+};
+
+static const struct atmel_pwm_registers atmel_pwm_regs_v1 = {
+	.period		= PWMV1_CPRD,
+	.period_upd	= PWMV1_CUPD,
+	.duty		= PWMV1_CDTY,
+	.duty_upd	= PWMV1_CUPD,
+};
+
+static const struct atmel_pwm_registers atmel_pwm_regs_v2 = {
+	.period		= PWMV2_CPRD,
+	.period_upd	= PWMV2_CPRDUPD,
+	.duty		= PWMV2_CDTY,
+	.duty_upd	= PWMV2_CDTYUPD,
+};
+
+static const struct of_device_id atmel_pwm_dt_ids[] = {
+	{
+		.compatible = "atmel,at91sam9rl-pwm",
+		.data = &atmel_pwm_regs_v1,
+	}, {
+		.compatible = "atmel,sama5d3-pwm",
+		.data = &atmel_pwm_regs_v2,
+	}, {
+		.compatible = "atmel,sama5d2-pwm",
+		.data = &atmel_pwm_regs_v2,
+	}, {
+		/* sentinel */
+	},
+};
+
+static int atmel_pwm_probe(struct device_d *dev)
+{
+	const struct atmel_pwm_registers *regs;
+	struct atmel_pwm *atmel_pwm;
+	struct resource *res;
+	int ret;
+	int i;
+
+	ret = dev_get_drvdata(dev, (const void **)&regs);
+	if (ret)
+		return ret;
+
+	atmel_pwm = xzalloc(sizeof(*atmel_pwm));
+	atmel_pwm->regs = regs;
+	atmel_pwm->dev = dev;
+	atmel_pwm->clk = clk_get(dev, "pwm_clk");
+	if (IS_ERR(atmel_pwm->clk))
+		return PTR_ERR(atmel_pwm->clk);
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	atmel_pwm->base = IOMEM(res);
+
+	for (i = 0; i < PWM_CHANNELS; i++) {
+		struct atmel_pwm_chip *chip = &atmel_pwm->atmel_pwm_chip[i];
+		chip->chip.ops = &atmel_pwm_ops;
+		chip->chip.devname = basprintf("pwm%d", i);
+		chip->chip.id = i;
+		chip->atmel = atmel_pwm;
+
+		ret = pwmchip_add(&chip->chip, dev);
+		if (ret < 0) {
+			dev_err(dev, "failed to add pwm chip[%d] %d\n", i, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static struct driver_d atmel_pwm_driver = {
+	.name		= "atmel-pwm",
+	.of_compatible	= atmel_pwm_dt_ids,
+	.probe		= atmel_pwm_probe,
+};
+
+coredevice_platform_driver(atmel_pwm_driver);
+
+MODULE_AUTHOR("Bo Shen <voice.shen@atmel.com>");
+MODULE_DESCRIPTION("Atmel PWM driver");
+MODULE_LICENSE("GPL v2");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

