Delivery-date: Mon, 01 Jul 2024 09:33:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX6-000QT0-0e
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:33:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX4-0007LP-UK
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:33:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hiWQUFdbSdw+9jSraKmXL4pRm4/DJ1bfGbUuJbBA7xM=; b=l1oZX46g7K0w1Cu2L27uH1VUK2
	RIUU9xSbKgx4sp1FmqTL5YAyP1spQ8OOlpE40P1d4jQ0Av+W/oVD0w7e5BD76+CnAaruR6e8oIR6f
	tcEM59YYg3Snjbe5pghboe8MPiflfR72gh7Og0jhKy9+cJwyxWn97e0XSlN63YiLNmpnxDwm8urMv
	E4o43WIIznKmSeuqb3Cpp0lD6Hc3cTD+P6nmOPLKwwEKryNtisV9g595yqN1+xiHgHVIa84e26/UR
	CcraaBTHJpobSYbyqZOYahpFzYo/xvkDnAWxwQwlh0nslQeK7lEsIzgNnlP6wztTJPk7ao18c2G/x
	0X5CVbBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWb-000000022nz-0Nyy;
	Mon, 01 Jul 2024 07:32:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWR-000000022id-21aY
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:32:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWQ-0006va-2s; Mon, 01 Jul 2024 09:32:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-006Jj9-M9; Mon, 01 Jul 2024 09:32:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-000hos-1u;
	Mon, 01 Jul 2024 09:32:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:32:14 +0200
Message-Id: <20240701073220.165946-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073220.165946-1-a.fatoum@pengutronix.de>
References: <20240701073220.165946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003223_806742_3B54DB81 
X-CRM114-Status: GOOD (  33.90  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] pinctrl: import <linux/pinctrl/pinconf-generic.h> header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The header is an integral part of the Linux pinctrl support, because
pinctrl drivers parse the device tree into the packed format described
by it and receive the same format later when a pinctrl state needs to be
selected.

We don't follow this same procedure in barebox and instead parse pinctrl
entries on demand, but nevertheless, drivers may use these definitions for
their own purposes internally, so let's import the header sans external
definitions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/pinctrl/pinconf-generic.h | 170 ++++++++++++++++++++++++
 1 file changed, 170 insertions(+)
 create mode 100644 include/linux/pinctrl/pinconf-generic.h

diff --git a/include/linux/pinctrl/pinconf-generic.h b/include/linux/pinctrl/pinconf-generic.h
new file mode 100644
index 000000000000..9214258ffac4
--- /dev/null
+++ b/include/linux/pinctrl/pinconf-generic.h
@@ -0,0 +1,170 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Interface the generic pinconfig portions of the pinctrl subsystem
+ *
+ * Copyright (C) 2011 ST-Ericsson SA
+ * Written on behalf of Linaro for ST-Ericsson
+ * This interface is used in the core to keep track of pins.
+ *
+ * Author: Linus Walleij <linus.walleij@linaro.org>
+ */
+#ifndef __LINUX_PINCTRL_PINCONF_GENERIC_H
+#define __LINUX_PINCTRL_PINCONF_GENERIC_H
+
+#include <linux/types.h>
+
+/**
+ * enum pin_config_param - possible pin configuration parameters
+ * @PIN_CONFIG_BIAS_BUS_HOLD: the pin will be set to weakly latch so that it
+ *	weakly drives the last value on a tristate bus, also known as a "bus
+ *	holder", "bus keeper" or "repeater". This allows another device on the
+ *	bus to change the value by driving the bus high or low and switching to
+ *	tristate. The argument is ignored.
+ * @PIN_CONFIG_BIAS_DISABLE: disable any pin bias on the pin, a
+ *	transition from say pull-up to pull-down implies that you disable
+ *	pull-up in the process, this setting disables all biasing.
+ * @PIN_CONFIG_BIAS_HIGH_IMPEDANCE: the pin will be set to a high impedance
+ *	mode, also know as "third-state" (tristate) or "high-Z" or "floating".
+ *	On output pins this effectively disconnects the pin, which is useful
+ *	if for example some other pin is going to drive the signal connected
+ *	to it for a while. Pins used for input are usually always high
+ *	impedance.
+ * @PIN_CONFIG_BIAS_PULL_DOWN: the pin will be pulled down (usually with high
+ *	impedance to GROUND). If the argument is != 0 pull-down is enabled,
+ *	the value is interpreted by the driver and can be custom or an SI unit
+ *  	such as Ohms.
+ * @PIN_CONFIG_BIAS_PULL_PIN_DEFAULT: the pin will be pulled up or down based
+ *	on embedded knowledge of the controller hardware, like current mux
+ *	function. The pull direction and possibly strength too will normally
+ *	be decided completely inside the hardware block and not be readable
+ *	from the kernel side.
+ *	If the argument is != 0 pull up/down is enabled, if it is 0, the
+ *	configuration is ignored. The proper way to disable it is to use
+ *	@PIN_CONFIG_BIAS_DISABLE.
+ * @PIN_CONFIG_BIAS_PULL_UP: the pin will be pulled up (usually with high
+ *	impedance to VDD). If the argument is != 0 pull-up is enabled,
+ *	the value is interpreted by the driver and can be custom or an SI unit
+ *	such as Ohms.
+ * @PIN_CONFIG_DRIVE_OPEN_DRAIN: the pin will be driven with open drain (open
+ *	collector) which means it is usually wired with other output ports
+ *	which are then pulled up with an external resistor. Setting this
+ *	config will enable open drain mode, the argument is ignored.
+ * @PIN_CONFIG_DRIVE_OPEN_SOURCE: the pin will be driven with open source
+ *	(open emitter). Setting this config will enable open source mode, the
+ *	argument is ignored.
+ * @PIN_CONFIG_DRIVE_PUSH_PULL: the pin will be driven actively high and
+ *	low, this is the most typical case and is typically achieved with two
+ *	active transistors on the output. Setting this config will enable
+ *	push-pull mode, the argument is ignored.
+ * @PIN_CONFIG_DRIVE_STRENGTH: the pin will sink or source at most the current
+ *	passed as argument. The argument is in mA.
+ * @PIN_CONFIG_DRIVE_STRENGTH_UA: the pin will sink or source at most the current
+ *	passed as argument. The argument is in uA.
+ * @PIN_CONFIG_INPUT_DEBOUNCE: this will configure the pin to debounce mode,
+ *	which means it will wait for signals to settle when reading inputs. The
+ *	argument gives the debounce time in usecs. Setting the
+ *	argument to zero turns debouncing off.
+ * @PIN_CONFIG_INPUT_ENABLE: enable the pin's input.  Note that this does not
+ *	affect the pin's ability to drive output.  1 enables input, 0 disables
+ *	input.
+ * @PIN_CONFIG_INPUT_SCHMITT: this will configure an input pin to run in
+ *	schmitt-trigger mode. If the schmitt-trigger has adjustable hysteresis,
+ *	the threshold value is given on a custom format as argument when
+ *	setting pins to this mode.
+ * @PIN_CONFIG_INPUT_SCHMITT_ENABLE: control schmitt-trigger mode on the pin.
+ *      If the argument != 0, schmitt-trigger mode is enabled. If it's 0,
+ *      schmitt-trigger mode is disabled.
+ * @PIN_CONFIG_MODE_LOW_POWER: this will configure the pin for low power
+ *	operation, if several modes of operation are supported these can be
+ *	passed in the argument on a custom form, else just use argument 1
+ *	to indicate low power mode, argument 0 turns low power mode off.
+ * @PIN_CONFIG_MODE_PWM: this will configure the pin for PWM
+ * @PIN_CONFIG_OUTPUT: this will configure the pin as an output and drive a
+ * 	value on the line. Use argument 1 to indicate high level, argument 0 to
+ *	indicate low level. (Please see Documentation/driver-api/pin-control.rst,
+ *	section "GPIO mode pitfalls" for a discussion around this parameter.)
+ * @PIN_CONFIG_OUTPUT_ENABLE: this will enable the pin's output mode
+ * 	without driving a value there. For most platforms this reduces to
+ * 	enable the output buffers and then let the pin controller current
+ * 	configuration (eg. the currently selected mux function) drive values on
+ * 	the line. Use argument 1 to enable output mode, argument 0 to disable
+ * 	it.
+ * @PIN_CONFIG_OUTPUT_IMPEDANCE_OHMS: this will configure the output impedance
+ * 	of the pin with the value passed as argument. The argument is in ohms.
+ * @PIN_CONFIG_PERSIST_STATE: retain pin state across sleep or controller reset
+ * @PIN_CONFIG_POWER_SOURCE: if the pin can select between different power
+ *	supplies, the argument to this parameter (on a custom format) tells
+ *	the driver which alternative power source to use.
+ * @PIN_CONFIG_SKEW_DELAY: if the pin has programmable skew rate (on inputs)
+ *	or latch delay (on outputs) this parameter (in a custom format)
+ *	specifies the clock skew or latch delay. It typically controls how
+ *	many double inverters are put in front of the line.
+ * @PIN_CONFIG_SLEEP_HARDWARE_STATE: indicate this is sleep related state.
+ * @PIN_CONFIG_SLEW_RATE: if the pin can select slew rate, the argument to
+ *	this parameter (on a custom format) tells the driver which alternative
+ *	slew rate to use.
+ * @PIN_CONFIG_END: this is the last enumerator for pin configurations, if
+ *	you need to pass in custom configurations to the pin controller, use
+ *	PIN_CONFIG_END+1 as the base offset.
+ * @PIN_CONFIG_MAX: this is the maximum configuration value that can be
+ *	presented using the packed format.
+ */
+enum pin_config_param {
+	PIN_CONFIG_BIAS_BUS_HOLD,
+	PIN_CONFIG_BIAS_DISABLE,
+	PIN_CONFIG_BIAS_HIGH_IMPEDANCE,
+	PIN_CONFIG_BIAS_PULL_DOWN,
+	PIN_CONFIG_BIAS_PULL_PIN_DEFAULT,
+	PIN_CONFIG_BIAS_PULL_UP,
+	PIN_CONFIG_DRIVE_OPEN_DRAIN,
+	PIN_CONFIG_DRIVE_OPEN_SOURCE,
+	PIN_CONFIG_DRIVE_PUSH_PULL,
+	PIN_CONFIG_DRIVE_STRENGTH,
+	PIN_CONFIG_DRIVE_STRENGTH_UA,
+	PIN_CONFIG_INPUT_DEBOUNCE,
+	PIN_CONFIG_INPUT_ENABLE,
+	PIN_CONFIG_INPUT_SCHMITT,
+	PIN_CONFIG_INPUT_SCHMITT_ENABLE,
+	PIN_CONFIG_MODE_LOW_POWER,
+	PIN_CONFIG_MODE_PWM,
+	PIN_CONFIG_OUTPUT,
+	PIN_CONFIG_OUTPUT_ENABLE,
+	PIN_CONFIG_OUTPUT_IMPEDANCE_OHMS,
+	PIN_CONFIG_PERSIST_STATE,
+	PIN_CONFIG_POWER_SOURCE,
+	PIN_CONFIG_SKEW_DELAY,
+	PIN_CONFIG_SLEEP_HARDWARE_STATE,
+	PIN_CONFIG_SLEW_RATE,
+	PIN_CONFIG_END = 0x7F,
+	PIN_CONFIG_MAX = 0xFF,
+};
+
+/*
+ * Helpful configuration macro to be used in tables etc.
+ */
+#define PIN_CONF_PACKED(p, a) ((a << 8) | ((unsigned long) p & 0xffUL))
+
+/*
+ * The following inlines stuffs a configuration parameter and data value
+ * into and out of an unsigned long argument, as used by the generic pin config
+ * system. We put the parameter in the lower 8 bits and the argument in the
+ * upper 24 bits.
+ */
+
+static inline enum pin_config_param pinconf_to_config_param(unsigned long config)
+{
+	return (enum pin_config_param) (config & 0xffUL);
+}
+
+static inline u32 pinconf_to_config_argument(unsigned long config)
+{
+	return (u32) ((config >> 8) & 0xffffffUL);
+}
+
+static inline unsigned long pinconf_to_config_packed(enum pin_config_param param,
+						     u32 argument)
+{
+	return PIN_CONF_PACKED(param, argument);
+}
+
+#endif
-- 
2.39.2



