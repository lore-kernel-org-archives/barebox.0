Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6JBP-0004DT-Um
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 20:18:58 +0000
Received: from geraet.fritz.box (unknown [87.123.110.69])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E1C4520008
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2021 20:18:54 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 31 Jan 2021 21:18:45 +0100
Message-Id: <20210131201846.3440477-7-ahmad@a3f.at>
In-Reply-To: <20210131201846.3440477-1-ahmad@a3f.at>
References: <20210131201846.3440477-1-ahmad@a3f.at>
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
Subject: [PATCH 6/7] sound: add PWM beeper support
To: barebox@lists.infradead.org

This driver can be used to drive a piezo-buzzer attached to a PWM.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/sound/Kconfig      |   6 ++
 drivers/sound/Makefile     |   1 +
 drivers/sound/pwm-beeper.c | 124 +++++++++++++++++++++++++++++++++++++
 include/pwm.h              |  33 ++++++++++
 4 files changed, 164 insertions(+)
 create mode 100644 drivers/sound/pwm-beeper.c

diff --git a/drivers/sound/Kconfig b/drivers/sound/Kconfig
index 889657305b0b..9b7bbd7e7a33 100644
--- a/drivers/sound/Kconfig
+++ b/drivers/sound/Kconfig
@@ -14,6 +14,12 @@ config SOUND_SDL
 	depends on SANDBOX && OFDEVICE
 	select SDL
 
+config PWM_BEEPER
+	bool "PWM beeper support"
+	depends on PWM && OFDEVICE
+	help
+	  Say Y here to get support for PWM based beeper devices.
+
 config SYNTH_SQUARES
 	bool "Synthesize square waves only"
 	help
diff --git a/drivers/sound/Makefile b/drivers/sound/Makefile
index 692105fd6b59..468e5bee838d 100644
--- a/drivers/sound/Makefile
+++ b/drivers/sound/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y += core.o synth.o
 obj-$(CONFIG_SOUND_SDL)		+= sdl.o
+obj-$(CONFIG_PWM_BEEPER) 	+= pwm-beeper.o
diff --git a/drivers/sound/pwm-beeper.c b/drivers/sound/pwm-beeper.c
new file mode 100644
index 000000000000..ef053f97cf47
--- /dev/null
+++ b/drivers/sound/pwm-beeper.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2010, Lars-Peter Clausen <lars@metafoo.de>
+ *  Copyright (C) 2021, Ahmad Fatoum
+ */
+
+#include <common.h>
+#include <regulator.h>
+#include <sound.h>
+#include <of.h>
+#include <pwm.h>
+
+struct pwm_beeper {
+	struct pwm_device *pwm;
+	struct regulator *amplifier;
+	struct sound_card card;
+};
+
+#define HZ_TO_NANOSECONDS(x) (1000000000UL/(x))
+
+static int pwm_beeper_beep(struct sound_card *card, unsigned freq, unsigned duration)
+{
+	struct pwm_beeper *beeper = container_of(card, struct pwm_beeper, card);
+	struct pwm_state state;
+	int error = 0;
+
+	if (!freq) {
+		regulator_disable(beeper->amplifier);
+		goto pwm_disable;
+	}
+
+	pwm_get_state(beeper->pwm, &state);
+
+	state.p_enable = true;
+	state.period_ns = HZ_TO_NANOSECONDS(freq);
+	pwm_set_relative_duty_cycle(&state, 50, 100);
+
+	error = pwm_apply_state(beeper->pwm, &state);
+	if (error)
+		return error;
+
+	error = regulator_enable(beeper->amplifier);
+	if (error)
+		goto pwm_disable;
+
+	return 0;
+pwm_disable:
+	pwm_disable(beeper->pwm);
+	return error;
+}
+
+static int pwm_beeper_probe(struct device_d *dev)
+{
+	struct pwm_beeper *beeper;
+	struct sound_card *card;
+	struct pwm_state state;
+	u32 bell_frequency;
+	int error;
+
+	beeper = xzalloc(sizeof(*beeper));
+	dev->priv = beeper;
+
+	beeper->pwm = of_pwm_request(dev->device_node, NULL);
+	if (IS_ERR(beeper->pwm)) {
+		error = PTR_ERR(beeper->pwm);
+		if (error != -EPROBE_DEFER)
+			dev_err(dev, "Failed to request PWM device: %d\n",
+				error);
+		return error;
+	}
+
+	/* Sync up PWM state and ensure it is off. */
+	pwm_init_state(beeper->pwm, &state);
+	state.p_enable = false;
+	error = pwm_apply_state(beeper->pwm, &state);
+	if (error) {
+		dev_err(dev, "failed to apply initial PWM state: %d\n",
+			error);
+		return error;
+	}
+
+	beeper->amplifier = regulator_get(dev, "amp");
+	if (IS_ERR(beeper->amplifier)) {
+		error = PTR_ERR(beeper->amplifier);
+		if (error != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get 'amp' regulator: %d\n",
+				error);
+		return error;
+	}
+
+	error = of_property_read_u32(dev->device_node, "beeper-hz", &bell_frequency);
+	if (error) {
+		bell_frequency = 1000;
+		dev_dbg(dev, "failed to parse 'beeper-hz' property, using default: %uHz\n",
+			bell_frequency);
+	}
+
+	card = &beeper->card;
+	card->name = dev->device_node->full_name;
+	card->bell_frequency = bell_frequency;
+	card->beep = pwm_beeper_beep;
+
+	return sound_card_register(card);
+}
+
+static void pwm_beeper_suspend(struct device_d *dev)
+{
+	struct pwm_beeper *beeper = dev->priv;
+
+	pwm_beeper_beep(&beeper->card, 0, 0);
+}
+
+static const struct of_device_id pwm_beeper_match[] = {
+	{ .compatible = "pwm-beeper", },
+	{ },
+};
+
+static struct driver_d pwm_beeper_driver = {
+	.name		= "pwm-beeper",
+	.probe		= pwm_beeper_probe,
+	.remove		= pwm_beeper_suspend,
+	.of_compatible	= pwm_beeper_match,
+};
+device_platform_driver(pwm_beeper_driver);
diff --git a/include/pwm.h b/include/pwm.h
index b67ab13d2e2d..2bd59fb8d3b6 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -3,6 +3,7 @@
 #define __PWM_H
 
 #include <dt-bindings/pwm/pwm.h>
+#include <errno.h>
 
 struct pwm_device;
 struct device_d;
@@ -63,6 +64,38 @@ void pwm_disable(struct pwm_device *pwm);
 
 unsigned int pwm_get_period(struct pwm_device *pwm);
 
+/**
+ * pwm_set_relative_duty_cycle() - Set a relative duty cycle value
+ * @state: PWM state to fill
+ * @duty_cycle: relative duty cycle value
+ * @scale: scale in which @duty_cycle is expressed
+ *
+ * This functions converts a relative into an absolute duty cycle (expressed
+ * in nanoseconds), and puts the result in state->duty_cycle.
+ *
+ * For example if you want to configure a 50% duty cycle, call:
+ *
+ * pwm_init_state(pwm, &state);
+ * pwm_set_relative_duty_cycle(&state, 50, 100);
+ * pwm_apply_state(pwm, &state);
+ *
+ * This functions returns -EINVAL if @duty_cycle and/or @scale are
+ * inconsistent (@scale == 0 or @duty_cycle > @scale).
+ */
+static inline int
+pwm_set_relative_duty_cycle(struct pwm_state *state, unsigned int duty_cycle,
+			    unsigned int scale)
+{
+	if (!scale || duty_cycle > scale)
+		return -EINVAL;
+
+	state->duty_ns = DIV_ROUND_CLOSEST_ULL((u64)duty_cycle *
+					       state->period_ns,
+					       scale);
+
+	return 0;
+}
+
 struct pwm_chip;
 
 /**
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
