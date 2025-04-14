Delivery-date: Mon, 14 Apr 2025 09:06:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Dtu-000XZp-2V
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 09:06:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Dtt-00035r-8J
	for lore@pengutronix.de; Mon, 14 Apr 2025 09:06:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AF4z6UHV0eESfr0DHFgxRKwU9ZQd16kxGXnNSyS72AU=; b=KmgEAcRwNVwuCqOeBCTXPVPmxz
	2JvJLBjGLp/ZWtmjDAa1COK0CD5/GoE80RRO/xWIBmGkGOcTT45C6/l5L9xF6r5c8u4Kj3jnAp0CO
	3iQGevanijx1ks6Lh7m2MKo+jMddKYwAX122Qpf7ihvvbtRPbKi5YaPqNgKuuNGyYUhzgV2JOB4/X
	UyTHMJoqj/tD84njo2Kuj/BqED+0FLCp6uMwlgyRsKFe93iKWgOUrIYD7Qvm1pin0vR7iZ1+FDAnh
	OiIMFXtNtGzRoWWMSFQ1dgL4DSpeVHAmi/OrRARLcX/VeCCSVgjv0tCzkQCsIJyAoPoR8nZRSrV6/
	bYn9TI2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DtP-00000000ssf-2gOP;
	Mon, 14 Apr 2025 07:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dsk-00000000sjC-1j8E
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 07:05:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsj-0002UE-1S; Mon, 14 Apr 2025 09:05:25 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsi-000D68-2l;
	Mon, 14 Apr 2025 09:05:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsi-00BgNz-2R;
	Mon, 14 Apr 2025 09:05:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 09:05:23 +0200
Message-Id: <20250414070524.2784496-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414070524.2784496-1-a.fatoum@pengutronix.de>
References: <20250414070524.2784496-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_000526_775101_B4ED144E 
X-CRM114-Status: GOOD (  36.77  )
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
Subject: [PATCH 2/3] mux: port Linux multiplexer framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The mux framework defines a contract where providers can provide
multiple mux states that consumers can switch between without having to
know how exactly the state switch is realized in hardware.

In addition to the C API, user interaction is possible over the shell
via the .state parameter that holds the currently
active state (or -1 if mux was not yet used). An additional .idle
parameter informs the user whether the mux has been claimed by a
consumer.

The Kconfig symbol is hidden by default and is supposed to be selected
by drivers making use of the binding or users can enable COMPILE_TEST
and make use of the shell API instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/Kconfig              |   1 +
 drivers/Makefile             |   1 +
 drivers/mux/Kconfig          |  13 +
 drivers/mux/Makefile         |   8 +
 drivers/mux/core.c           | 463 +++++++++++++++++++++++++++++++++++
 include/linux/mux/consumer.h |  77 ++++++
 include/linux/mux/driver.h   | 104 ++++++++
 7 files changed, 667 insertions(+)
 create mode 100644 drivers/mux/Kconfig
 create mode 100644 drivers/mux/Makefile
 create mode 100644 drivers/mux/core.c
 create mode 100644 include/linux/mux/consumer.h
 create mode 100644 include/linux/mux/driver.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 04da623aa519..32910addcda5 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -19,6 +19,7 @@ source "drivers/clk/Kconfig"
 source "drivers/clocksource/Kconfig"
 source "drivers/mfd/Kconfig"
 source "drivers/misc/Kconfig"
+source "drivers/mux/Kconfig"
 source "drivers/led/Kconfig"
 source "drivers/eeprom/Kconfig"
 source "drivers/input/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 7b94a76c5687..db491dad8377 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -20,6 +20,7 @@ obj-y	+= eeprom/
 obj-$(CONFIG_PWM) += pwm/
 obj-y	+= input/
 obj-y	+= misc/
+obj-$(CONFIG_MULTIPLEXER)	+= mux/
 obj-$(CONFIG_NVMEM) += nvmem/
 obj-y	+= dma/
 obj-y  += watchdog/
diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
new file mode 100644
index 000000000000..280e5527efbe
--- /dev/null
+++ b/drivers/mux/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Multiplexer devices
+#
+
+config MULTIPLEXER
+	tristate
+	prompt "Multiplexer driver support" if COMPILE_TEST
+
+menu "Multiplexer drivers"
+	depends on MULTIPLEXER
+
+endmenu
diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
new file mode 100644
index 000000000000..3dfaf766fea7
--- /dev/null
+++ b/drivers/mux/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for multiplexer devices.
+#
+
+mux-core-objs			:= core.o
+
+obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
diff --git a/drivers/mux/core.c b/drivers/mux/core.c
new file mode 100644
index 000000000000..11f2420f89d4
--- /dev/null
+++ b/drivers/mux/core.c
@@ -0,0 +1,463 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Multiplexer subsystem
+ *
+ * Copyright (C) 2017 Axentia Technologies AB
+ *
+ * Author: Peter Rosin <peda@axentia.se>
+ */
+
+#define pr_fmt(fmt) "mux-core: " fmt
+
+#include <linux/ktime.h>
+#include <driver.h>
+#include <linux/slab.h>
+#include <linux/err.h>
+#include <linux/export.h>
+#include <init.h>
+#include <module.h>
+#include <linux/mux/consumer.h>
+#include <linux/mux/driver.h>
+#include <of.h>
+#include <stdio.h>
+#include <malloc.h>
+
+/*
+ * The idle-as-is "state" is not an actual state that may be selected, it
+ * only implies that the state should not be changed. So, use that state
+ * as indication that the cached state of the multiplexer is unknown.
+ */
+#define MUX_CACHE_UNKNOWN MUX_IDLE_AS_IS
+
+/**
+ * struct mux_state -	Represents a mux controller state specific to a given
+ *			consumer.
+ * @mux:		Pointer to a mux controller.
+ * @state:		State of the mux to be selected.
+ *
+ * This structure is specific to the consumer that acquires it and has
+ * information specific to that consumer.
+ */
+struct mux_state {
+	struct mux_control *mux;
+	unsigned int state;
+};
+
+DEFINE_DEV_CLASS(mux_class, "mux");
+
+#define for_each_mux(mux) \
+	class_for_each_container_of_device(&mux_class, mux, dev)
+
+/**
+ * mux_chip_alloc() - Allocate a mux-chip.
+ * @dev: The parent device implementing the mux interface.
+ * @controllers: The number of mux controllers to allocate for this chip.
+ * @sizeof_priv: Size of extra memory area for private use by the caller.
+ *
+ * After allocating the mux-chip with the desired number of mux controllers
+ * but before registering the chip, the mux driver is required to configure
+ * the number of valid mux states in the mux_chip->mux[N].states members and
+ * the desired idle state in the returned mux_chip->mux[N].idle_state members.
+ * The default idle state is MUX_IDLE_AS_IS. The mux driver also needs to
+ * provide a pointer to the operations struct in the mux_chip->ops member
+ * before registering the mux-chip with mux_chip_register.
+ *
+ * Return: A pointer to the new mux-chip, or an ERR_PTR with a negative errno.
+ */
+struct mux_chip *mux_chip_alloc(struct device *dev,
+				unsigned int controllers, size_t sizeof_priv)
+{
+	struct mux_chip *mux_chip;
+	int i;
+
+	if (WARN_ON(!dev || !controllers))
+		return ERR_PTR(-EINVAL);
+
+	mux_chip = kzalloc(sizeof(*mux_chip) +
+			   controllers * sizeof(*mux_chip->mux) +
+			   sizeof_priv, GFP_KERNEL);
+	if (!mux_chip)
+		return ERR_PTR(-ENOMEM);
+
+
+	mux_chip->mux = (struct mux_control *)(mux_chip + 1);
+	mux_chip->dev.parent = dev;
+	mux_chip->dev.of_node = dev->of_node;
+	mux_chip->dev.priv = mux_chip;
+
+	mux_chip->controllers = controllers;
+	for (i = 0; i < controllers; ++i) {
+		struct mux_control *mux = &mux_chip->mux[i];
+
+		mux->chip = mux_chip;
+		mux->cached_state = MUX_CACHE_UNKNOWN;
+		mux->idle_state = MUX_IDLE_AS_IS;
+		mux->idle = true;
+		mux->last_change = ktime_get();
+		mux->dev.id = i;
+		mux->dev.parent = &mux_chip->dev;
+	}
+
+	return mux_chip;
+}
+EXPORT_SYMBOL_GPL(mux_chip_alloc);
+
+static int mux_control_set(struct mux_control *mux, int state)
+{
+	int ret = mux->chip->ops->set(mux, state);
+
+	mux->cached_state = ret < 0 ? MUX_CACHE_UNKNOWN : state;
+	if (ret >= 0)
+		mux->last_change = ktime_get();
+
+	return ret;
+}
+
+static int mux_control_set_param(struct param_d *param, void *priv)
+{
+	struct mux_control *mux = priv;
+	int state = mux->cached_state;
+
+	if (state < 0 || state >= mux->states)
+		return -EINVAL;
+
+	return mux_control_set(mux, state);
+}
+
+/**
+ * mux_chip_register() - Register a mux-chip, thus readying the controllers
+ *			 for use.
+ * @mux_chip: The mux-chip to register.
+ *
+ * Return: Zero on success or a negative errno on error.
+ */
+int mux_chip_register(struct mux_chip *mux_chip)
+{
+	int i;
+	int ret;
+
+	for (i = 0; i < mux_chip->controllers; ++i) {
+		struct mux_control *mux = &mux_chip->mux[i];
+
+		if (mux->idle_state == mux->cached_state)
+			continue;
+
+		ret = mux_control_set(mux, mux->idle_state);
+		if (ret < 0) {
+			dev_err(&mux_chip->dev, "unable to set idle state\n");
+			return ret;
+		}
+	}
+
+	ret = class_register_device(&mux_class, &mux_chip->dev, "muxchip");
+	if (ret < 0) {
+		dev_err(&mux_chip->dev,
+			"register_device failed in %s: %d\n", __func__, ret);
+		return ret;
+	}
+
+	if (IS_ENABLED(CONFIG_PARAMETER)) {
+		struct device *dev = NULL;
+
+		if (mux_chip->controllers == 1)
+			dev = &mux_chip->dev;
+
+		for (i = 0; i < mux_chip->controllers; ++i) {
+			struct mux_control *mux = &mux_chip->mux[i];
+			struct device *dev;
+
+			if (mux_chip->controllers == 1) {
+				dev = &mux_chip->dev;
+			} else  {
+				dev = &mux->dev;
+				dev->parent = &mux_chip->dev;
+				dev->id = i;
+				dev_set_name(dev, "%s.", dev_name(&mux_chip->dev));
+				if (register_device(dev))
+					continue;
+			}
+
+			dev_add_param_bool_ro(dev, "idle", &mux->idle);
+			dev_add_param_int(dev, "state", mux_control_set_param,
+					  NULL, &mux->cached_state, "%d", mux);
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(mux_chip_register);
+
+/**
+ * mux_control_states() - Query the number of multiplexer states.
+ * @mux: The mux-control to query.
+ *
+ * Return: The number of multiplexer states.
+ */
+unsigned int mux_control_states(struct mux_control *mux)
+{
+	return mux->states;
+}
+EXPORT_SYMBOL_GPL(mux_control_states);
+
+/*
+ * The mux->idle must be clear when calling this function.
+ */
+static int __mux_control_select(struct mux_control *mux, int state)
+{
+	int ret;
+
+	if (WARN_ON(state < 0 || state >= mux->states))
+		return -EINVAL;
+
+	if (mux->cached_state == state)
+		return 0;
+
+	ret = mux_control_set(mux, state);
+	if (ret >= 0)
+		return 0;
+
+	/* The mux update failed, try to revert if appropriate... */
+	if (mux->idle_state != MUX_IDLE_AS_IS)
+		mux_control_set(mux, mux->idle_state);
+
+	return ret;
+}
+
+static void mux_control_delay(struct mux_control *mux, unsigned int delay_us)
+{
+	ktime_t delayend;
+	s64 remaining;
+
+	if (!delay_us)
+		return;
+
+	delayend = ktime_add_us(mux->last_change, delay_us);
+	remaining = ktime_us_delta(delayend, ktime_get());
+	if (remaining > 0)
+		udelay(remaining);
+}
+
+/**
+ * mux_control_try_select_delay() - Try to select the given multiplexer state.
+ * @mux: The mux-control to request a change of state from.
+ * @state: The new requested state.
+ * @delay_us: The time to delay (in microseconds) if the mux state is changed.
+ *
+ * On successfully selecting the mux-control state, it will be locked until
+ * mux_control_deselect() is called.
+ *
+ * Therefore, make sure to call mux_control_deselect() when the operation is
+ * complete and the mux-control is free for others to use, but do not call
+ * mux_control_deselect() if mux_control_try_select() fails.
+ *
+ * Return: 0 when the mux-control state has the requested state or a negative
+ * errno on error. Specifically -EBUSY if the mux-control is contended.
+ */
+int mux_control_try_select_delay(struct mux_control *mux, unsigned int state,
+				 unsigned int delay_us)
+{
+	int ret;
+
+	if (!mux->idle)
+		return -EBUSY;
+	mux->idle = false;
+
+	ret = __mux_control_select(mux, state);
+	if (ret >= 0)
+		mux_control_delay(mux, delay_us);
+
+	if (ret < 0)
+		mux->idle = true;
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(mux_control_try_select_delay);
+
+/**
+ * mux_state_try_select_delay() - Try to select the given multiplexer state.
+ * @mstate: The mux-state to select.
+ * @delay_us: The time to delay (in microseconds) if the mux state is changed.
+ *
+ * On successfully selecting the mux-state, its mux-control will be locked
+ * until mux_state_deselect() is called.
+ *
+ * Therefore, make sure to call mux_state_deselect() when the operation is
+ * complete and the mux-control is free for others to use, but do not call
+ * mux_state_deselect() if mux_state_try_select() fails.
+ *
+ * Return: 0 when the mux-state has been selected or a negative errno on
+ * error. Specifically -EBUSY if the mux-control is contended.
+ */
+int mux_state_try_select_delay(struct mux_state *mstate, unsigned int delay_us)
+{
+	return mux_control_try_select_delay(mstate->mux, mstate->state, delay_us);
+}
+EXPORT_SYMBOL_GPL(mux_state_try_select_delay);
+
+/**
+ * mux_control_deselect() - Deselect the previously selected multiplexer state.
+ * @mux: The mux-control to deselect.
+ *
+ * It is required that a single call is made to mux_control_deselect() for
+ * each and every successful call made to either of mux_control_select() or
+ * mux_control_try_select().
+ *
+ * Return: 0 on success and a negative errno on error. An error can only
+ * occur if the mux has an idle state. Note that even if an error occurs, the
+ * mux-control is unlocked and is thus free for the next access.
+ */
+int mux_control_deselect(struct mux_control *mux)
+{
+	int ret = 0;
+
+	if (mux->idle_state != MUX_IDLE_AS_IS &&
+	    mux->idle_state != mux->cached_state)
+		ret = mux_control_set(mux, mux->idle_state);
+
+	mux->idle = true;
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(mux_control_deselect);
+
+/**
+ * mux_state_deselect() - Deselect the previously selected multiplexer state.
+ * @mstate: The mux-state to deselect.
+ *
+ * It is required that a single call is made to mux_state_deselect() for
+ * each and every successful call made to either of mux_state_select() or
+ * mux_state_try_select().
+ *
+ * Return: 0 on success and a negative errno on error. An error can only
+ * occur if the mux has an idle state. Note that even if an error occurs, the
+ * mux-control is unlocked and is thus free for the next access.
+ */
+int mux_state_deselect(struct mux_state *mstate)
+{
+	return mux_control_deselect(mstate->mux);
+}
+EXPORT_SYMBOL_GPL(mux_state_deselect);
+
+/* Note this function returns a reference to the mux_chip dev. */
+static struct mux_chip *of_find_mux_chip_by_node(struct device_node *np)
+{
+	struct mux_chip *chip;
+
+	of_device_ensure_probed(np);
+
+	for_each_mux(chip) {
+		if (chip->dev.device_node == np)
+			return chip;
+	}
+
+	return NULL;
+}
+
+/*
+ * mux_get() - Get the mux-control for a device.
+ * @dev: The device that needs a mux-control.
+ * @mux_name: The name identifying the mux-control.
+ * @state: Pointer to where the requested state is returned, or NULL when
+ *         the required multiplexer states are handled by other means.
+ *
+ * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
+ */
+static struct mux_control *mux_get(struct device *dev, const char *mux_name,
+				   unsigned int *state)
+{
+	struct device_node *np = dev->of_node;
+	struct of_phandle_args args;
+	struct mux_chip *mux_chip;
+	unsigned int controller;
+	int index = 0;
+	int ret;
+
+	if (mux_name) {
+		if (state)
+			index = of_property_match_string(np, "mux-state-names",
+							 mux_name);
+		else
+			index = of_property_match_string(np, "mux-control-names",
+							 mux_name);
+		if (index < 0) {
+			dev_err(dev, "mux controller '%s' not found\n",
+				mux_name);
+			return ERR_PTR(index);
+		}
+	}
+
+	if (state)
+		ret = of_parse_phandle_with_args(np,
+						 "mux-states", "#mux-state-cells",
+						 index, &args);
+	else
+		ret = of_parse_phandle_with_args(np,
+						 "mux-controls", "#mux-control-cells",
+						 index, &args);
+	if (ret) {
+		dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
+			np, state ? "state" : "control", mux_name ?: "", index);
+		return ERR_PTR(ret);
+	}
+
+	mux_chip = of_find_mux_chip_by_node(args.np);
+	of_node_put(args.np);
+	if (!mux_chip)
+		return ERR_PTR(-EPROBE_DEFER);
+
+	controller = 0;
+	if (state) {
+		if (args.args_count > 2 || args.args_count == 0 ||
+		    (args.args_count < 2 && mux_chip->controllers > 1)) {
+			dev_err(dev, "%pOF: wrong #mux-state-cells for %pOF\n",
+				np, args.np);
+			put_device(&mux_chip->dev);
+			return ERR_PTR(-EINVAL);
+		}
+
+		if (args.args_count == 2) {
+			controller = args.args[0];
+			*state = args.args[1];
+		} else {
+			*state = args.args[0];
+		}
+
+	} else {
+		if (args.args_count > 1 ||
+		    (!args.args_count && mux_chip->controllers > 1)) {
+			dev_err(dev, "%pOF: wrong #mux-control-cells for %pOF\n",
+				np, args.np);
+			put_device(&mux_chip->dev);
+			return ERR_PTR(-EINVAL);
+		}
+
+		if (args.args_count)
+			controller = args.args[0];
+	}
+
+	if (controller >= mux_chip->controllers) {
+		dev_err(dev, "%pOF: bad mux controller %u specified in %pOF\n",
+			np, controller, args.np);
+		put_device(&mux_chip->dev);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return &mux_chip->mux[controller];
+}
+
+/**
+ * mux_control_get() - Get the mux-control for a device.
+ * @dev: The device that needs a mux-control.
+ * @mux_name: The name identifying the mux-control.
+ *
+ * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
+ */
+struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
+{
+	return mux_get(dev, mux_name, NULL);
+}
+EXPORT_SYMBOL_GPL(mux_control_get);
+
+MODULE_DESCRIPTION("Multiplexer subsystem");
+MODULE_AUTHOR("Peter Rosin <peda@axentia.se>");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
new file mode 100644
index 000000000000..c3b840fd6cbb
--- /dev/null
+++ b/include/linux/mux/consumer.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * mux/consumer.h - definitions for the multiplexer consumer interface
+ *
+ * Copyright (C) 2017 Axentia Technologies AB
+ *
+ * Author: Peter Rosin <peda@axentia.se>
+ */
+
+#ifndef _LINUX_MUX_CONSUMER_H
+#define _LINUX_MUX_CONSUMER_H
+
+#include <linux/compiler.h>
+#include <linux/errno.h>
+
+struct device;
+struct mux_control;
+struct mux_state;
+
+unsigned int mux_control_states(struct mux_control *mux);
+int __must_check mux_control_try_select_delay(struct mux_control *mux,
+					      unsigned int state,
+					      unsigned int delay_us);
+int __must_check mux_state_try_select_delay(struct mux_state *mstate,
+					    unsigned int delay_us);
+
+static inline int __mux_xlate_err(int ret)
+{
+	/* In Linux, the non "try" mux select API will block until the mux
+	 * is released. We don't support this in barebox, so we just fake
+	 * that the wait was interrupted and return immediately.
+	 */
+	return ret == -EBUSY ? -EINTR : ret;
+}
+
+static inline int __must_check mux_control_select_delay(struct mux_control *mux,
+							unsigned int state,
+							unsigned int delay_us)
+{
+	return __mux_xlate_err(mux_control_try_select_delay(mux, state, delay_us));
+}
+
+static inline int __must_check mux_state_select_delay(struct mux_state *mstate,
+						      unsigned int delay_us)
+{
+	return __mux_xlate_err(mux_state_try_select_delay(mstate, delay_us));
+}
+
+static inline int __must_check mux_control_select(struct mux_control *mux,
+						  unsigned int state)
+{
+	return mux_control_select_delay(mux, state, 0);
+}
+
+static inline int __must_check mux_state_select(struct mux_state *mstate)
+{
+	return mux_state_select_delay(mstate, 0);
+}
+
+static inline int __must_check mux_control_try_select(struct mux_control *mux,
+						      unsigned int state)
+{
+	return mux_control_try_select_delay(mux, state, 0);
+}
+
+static inline int __must_check mux_state_try_select(struct mux_state *mstate)
+{
+	return mux_state_try_select_delay(mstate, 0);
+}
+
+int mux_control_deselect(struct mux_control *mux);
+int mux_state_deselect(struct mux_state *mstate);
+
+struct mux_control *mux_control_get(struct device *dev, const char *mux_name);
+static inline void mux_control_put(struct mux_control *mux) { }
+
+#endif /* _LINUX_MUX_CONSUMER_H */
diff --git a/include/linux/mux/driver.h b/include/linux/mux/driver.h
new file mode 100644
index 000000000000..c37a53f86f69
--- /dev/null
+++ b/include/linux/mux/driver.h
@@ -0,0 +1,104 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * mux/driver.h - definitions for the multiplexer driver interface
+ *
+ * Copyright (C) 2017 Axentia Technologies AB
+ *
+ * Author: Peter Rosin <peda@axentia.se>
+ */
+
+#ifndef _LINUX_MUX_DRIVER_H
+#define _LINUX_MUX_DRIVER_H
+
+#include <dt-bindings/mux/mux.h>
+#include <driver.h>
+#include <linux/ktime.h>
+#include <linux/list.h>
+
+struct mux_chip;
+struct mux_control;
+
+/**
+ * struct mux_control_ops -	Mux controller operations for a mux chip.
+ * @set:			Set the state of the given mux controller.
+ */
+struct mux_control_ops {
+	int (*set)(struct mux_control *mux, int state);
+};
+
+/**
+ * struct mux_control -	Represents a mux controller.
+ * @chip:		The mux chip that is handling this mux controller.
+ * @dev:		device for use with device parameters
+ * @cached_state:	The current mux controller state, or -1 if none.
+ * @states:		The number of mux controller states.
+ * @idle_state:		The mux controller state to use when inactive, or one
+ *			of MUX_IDLE_AS_IS and MUX_IDLE_DISCONNECT.
+ * @idle:		whether mux_control is not currently in use
+ * @last_change:	Timestamp of last change
+ *
+ * Mux drivers may only change @states and @idle_state, and may only do so
+ * between allocation and registration of the mux controller. Specifically,
+ * @cached_state is internal to the mux core and should never be written by
+ * mux drivers.
+ */
+struct mux_control {
+	struct mux_chip *chip;
+	struct device dev;
+	int cached_state;
+
+	unsigned int states;
+	int idle_state;
+
+	int idle;
+
+	ktime_t last_change;
+};
+
+/**
+ * struct mux_chip -	Represents a chip holding mux controllers.
+ * @controllers:	Number of mux controllers handled by the chip.
+ * @mux:		Array of mux controllers that are handled.
+ * @dev:		Device structure.
+ * @list:		for linking into list of mux_chips
+ * @ops:		Mux controller operations.
+ */
+struct mux_chip {
+	unsigned int controllers;
+	struct mux_control *mux;
+	struct device dev;
+	struct list_head list;
+
+	const struct mux_control_ops *ops;
+};
+
+#define to_mux_chip(x) container_of((x), struct mux_chip, dev)
+
+/**
+ * mux_chip_priv() - Get the extra memory reserved by mux_chip_alloc().
+ * @mux_chip: The mux-chip to get the private memory from.
+ *
+ * Return: Pointer to the private memory reserved by the allocator.
+ */
+static inline void *mux_chip_priv(struct mux_chip *mux_chip)
+{
+	return &mux_chip->mux[mux_chip->controllers];
+}
+
+struct mux_chip *mux_chip_alloc(struct device *dev,
+				unsigned int controllers, size_t sizeof_priv);
+int mux_chip_register(struct mux_chip *mux_chip);
+
+/**
+ * mux_control_get_index() - Get the index of the given mux controller
+ * @mux: The mux-control to get the index for.
+ *
+ * Return: The index of the mux controller within the mux chip the mux
+ * controller is a part of.
+ */
+static inline unsigned int mux_control_get_index(struct mux_control *mux)
+{
+	return mux - mux->chip->mux;
+}
+
+#endif /* _LINUX_MUX_DRIVER_H */
-- 
2.39.5



