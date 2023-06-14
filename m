Delivery-date: Wed, 14 Jun 2023 17:22:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9SKT-006oss-DX
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 17:22:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9SKQ-0001df-3m
	for lore@pengutronix.de; Wed, 14 Jun 2023 17:22:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DGaEPYQWRGo1cgMGWU752iv8i3bkDe0EJbhkgV0uXL8=; b=LGle3SDRz14m7Ck1sMQTCpW4Pl
	a5WrEt9k4llTxtvDnTkKy3+u3Qmt657q5q6fX+iVN31jk2QFDNLBRwrLTlel0XeDkNuOYc1xZOFSM
	44W6/mWJfTjkOP8Y/KlwsOH8uFTYY+dkv6bDjIpyEdLcGj4PY3yVJFCH46LASkuFuVxj6TMlGMj+F
	Sysq/FrSFbM8iERFVqz1Sj7QWNaw4UcGAuJ9Nhsyt2PXoQrgQQ+46BJsjc9L1bTGE/X3ye6EiOZgA
	my9nb73Ph9mLJbTS+5rm9P4TEmA+bGlZ2XFh2elc73FkdyvaghSJkm6hkt15JPTtYpkAPvUHYV3bn
	gi7dEBkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SJ4-00C3SJ-1a;
	Wed, 14 Jun 2023 15:21:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SJ0-00C3Qz-0F
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 15:21:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q9SIx-0001Qc-RR; Wed, 14 Jun 2023 17:21:03 +0200
Message-ID: <d08602c4-2308-396d-69dd-cf5c07d67173@pengutronix.de>
Date: Wed, 14 Jun 2023 17:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
 <20230614135452.1884124-11-a.fatoum@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230614135452.1884124-11-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_082106_439247_0E787726 
X-CRM114-Status: GOOD (  48.05  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/10] drivers: port Linux mux framework and gpio-mux
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 14.06.23 15:54, Ahmad Fatoum wrote:
> The driver builds a single multiplexer controller using a number
> of gpio pins. For N pins, there will be 2^N possible multiplexer
> states.
> 
> The GPIO pins can be connected (by the hardware) to several
> multiplexers. Consumer drivers in turn can reference the mux in
> the device tree to control it. User interaction over the shell
> is possible via the .state parameter that holds the currently
> active state (or -1 if mux was not yet used). An additional .idle
> parameter informs the user whether the mux has been claimed by a
> consumer.

I missed to include headers in this one patch. I'll wait for feedback
and either resend the series or just resend this patch separately
with the missing headers added if the rest is applied.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/Kconfig      |   1 +
>  drivers/Makefile     |   1 +
>  drivers/mux/Kconfig  |  29 +++
>  drivers/mux/Makefile |  10 +
>  drivers/mux/core.c   | 472 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/mux/gpio.c   | 103 ++++++++++
>  6 files changed, 616 insertions(+)
>  create mode 100644 drivers/mux/Kconfig
>  create mode 100644 drivers/mux/Makefile
>  create mode 100644 drivers/mux/core.c
>  create mode 100644 drivers/mux/gpio.c
> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index 2636eed1a3b5..aa12597df637 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -19,6 +19,7 @@ source "drivers/clk/Kconfig"
>  source "drivers/clocksource/Kconfig"
>  source "drivers/mfd/Kconfig"
>  source "drivers/misc/Kconfig"
> +source "drivers/mux/Kconfig"
>  source "drivers/led/Kconfig"
>  source "drivers/eeprom/Kconfig"
>  source "drivers/input/Kconfig"
> diff --git a/drivers/Makefile b/drivers/Makefile
> index fa899a2ab8c3..61c4c9c94020 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -20,6 +20,7 @@ obj-y	+= eeprom/
>  obj-$(CONFIG_PWM) += pwm/
>  obj-y	+= input/
>  obj-y	+= misc/
> +obj-$(CONFIG_MULTIPLEXER)	+= mux/
>  obj-$(CONFIG_NVMEM) += nvmem/
>  obj-y	+= dma/
>  obj-y  += watchdog/
> diff --git a/drivers/mux/Kconfig b/drivers/mux/Kconfig
> new file mode 100644
> index 000000000000..c68f1d4130ee
> --- /dev/null
> +++ b/drivers/mux/Kconfig
> @@ -0,0 +1,29 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Multiplexer devices
> +#
> +
> +config MULTIPLEXER
> +	tristate
> +	prompt "Multiplexer driver support" if COMPILE_TEST
> +
> +menu "Multiplexer drivers"
> +	depends on MULTIPLEXER
> +
> +config MUX_GPIO
> +	tristate "GPIO-controlled Multiplexer"
> +	depends on GPIOLIB || COMPILE_TEST
> +	help
> +	  GPIO-controlled Multiplexer controller.
> +
> +	  The driver builds a single multiplexer controller using a number
> +	  of gpio pins. For N pins, there will be 2^N possible multiplexer
> +	  states. The GPIO pins can be connected (by the hardware) to several
> +	  multiplexers.
> +
> +	  The barebox driver doesn't implement Linux' fastpath, which enables
> +	  atomically switching GPIOs in the same bank where possible.
> +	  This means that board code authors need to ensure that intermediate
> +	  states when switching some of the GPIOs don't break anything.
> +
> +endmenu
> diff --git a/drivers/mux/Makefile b/drivers/mux/Makefile
> new file mode 100644
> index 000000000000..22d285ed9d4b
> --- /dev/null
> +++ b/drivers/mux/Makefile
> @@ -0,0 +1,10 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Makefile for multiplexer devices.
> +#
> +
> +mux-core-objs			:= core.o
> +mux-gpio-objs			:= gpio.o
> +
> +obj-$(CONFIG_MULTIPLEXER)	+= mux-core.o
> +obj-$(CONFIG_MUX_GPIO)		+= mux-gpio.o
> diff --git a/drivers/mux/core.c b/drivers/mux/core.c
> new file mode 100644
> index 000000000000..6d9fae423319
> --- /dev/null
> +++ b/drivers/mux/core.c
> @@ -0,0 +1,472 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Multiplexer subsystem
> + *
> + * Copyright (C) 2017 Axentia Technologies AB
> + *
> + * Author: Peter Rosin <peda@axentia.se>
> + */
> +
> +#define pr_fmt(fmt) "mux-core: " fmt
> +
> +#include <linux/ktime.h>
> +#include <driver.h>
> +#include <linux/err.h>
> +#include <linux/export.h>
> +#include <init.h>
> +#include <module.h>
> +#include <linux/mux/consumer.h>
> +#include <linux/mux/driver.h>
> +#include <of.h>
> +#include <stdio.h>
> +#include <malloc.h>
> +
> +/*
> + * The idle-as-is "state" is not an actual state that may be selected, it
> + * only implies that the state should not be changed. So, use that state
> + * as indication that the cached state of the multiplexer is unknown.
> + */
> +#define MUX_CACHE_UNKNOWN MUX_IDLE_AS_IS
> +
> +/**
> + * struct mux_state -	Represents a mux controller state specific to a given
> + *			consumer.
> + * @mux:		Pointer to a mux controller.
> + * @state:		State of the mux to be selected.
> + *
> + * This structure is specific to the consumer that acquires it and has
> + * information specific to that consumer.
> + */
> +struct mux_state {
> +	struct mux_control *mux;
> +	unsigned int state;
> +};
> +
> +static LIST_HEAD(mux_chips);
> +
> +static int mux_register_dev(struct mux_chip *mux_chip, const char *name, int id)
> +{
> +	mux_chip->dev.id = id;
> +	dev_set_name(&mux_chip->dev, name);
> +
> +	return register_device(&mux_chip->dev);
> +}
> +
> +/**
> + * mux_chip_alloc() - Allocate a mux-chip.
> + * @dev: The parent device implementing the mux interface.
> + * @controllers: The number of mux controllers to allocate for this chip.
> + * @sizeof_priv: Size of extra memory area for private use by the caller.
> + *
> + * After allocating the mux-chip with the desired number of mux controllers
> + * but before registering the chip, the mux driver is required to configure
> + * the number of valid mux states in the mux_chip->mux[N].states members and
> + * the desired idle state in the returned mux_chip->mux[N].idle_state members.
> + * The default idle state is MUX_IDLE_AS_IS. The mux driver also needs to
> + * provide a pointer to the operations struct in the mux_chip->ops member
> + * before registering the mux-chip with mux_chip_register.
> + *
> + * Return: A pointer to the new mux-chip, or an ERR_PTR with a negative errno.
> + */
> +struct mux_chip *mux_chip_alloc(struct device *dev,
> +				unsigned int controllers, size_t sizeof_priv)
> +{
> +	struct mux_chip *mux_chip;
> +	int i;
> +
> +	if (WARN_ON(!dev || !controllers))
> +		return ERR_PTR(-EINVAL);
> +
> +	mux_chip = kzalloc(sizeof(*mux_chip) +
> +			   controllers * sizeof(*mux_chip->mux) +
> +			   sizeof_priv, GFP_KERNEL);
> +	if (!mux_chip)
> +		return ERR_PTR(-ENOMEM);
> +
> +
> +	mux_chip->mux = (struct mux_control *)(mux_chip + 1);
> +	mux_chip->dev.parent = dev;
> +	mux_chip->dev.of_node = dev->of_node;
> +	mux_chip->dev.priv = mux_chip;
> +
> +	mux_chip->controllers = controllers;
> +	for (i = 0; i < controllers; ++i) {
> +		struct mux_control *mux = &mux_chip->mux[i];
> +
> +		mux->chip = mux_chip;
> +		mux->cached_state = MUX_CACHE_UNKNOWN;
> +		mux->idle_state = MUX_IDLE_AS_IS;
> +		mux->idle = true;
> +		mux->last_change = ktime_get();
> +		mux->dev.id = i;
> +		mux->dev.parent = &mux_chip->dev;
> +	}
> +
> +	return mux_chip;
> +}
> +EXPORT_SYMBOL_GPL(mux_chip_alloc);
> +
> +static int mux_control_set(struct mux_control *mux, int state)
> +{
> +	int ret = mux->chip->ops->set(mux, state);
> +
> +	mux->cached_state = ret < 0 ? MUX_CACHE_UNKNOWN : state;
> +	if (ret >= 0)
> +		mux->last_change = ktime_get();
> +
> +	return ret;
> +}
> +
> +static int mux_control_set_param(struct param_d *param, void *priv)
> +{
> +	struct mux_control *mux = priv;
> +	int state = mux->cached_state;
> +
> +	if (state < 0 || state >= mux->states)
> +		return -EINVAL;
> +
> +	return mux_control_set(mux, state);
> +}
> +
> +/**
> + * mux_chip_register() - Register a mux-chip, thus readying the controllers
> + *			 for use.
> + * @mux_chip: The mux-chip to register.
> + *
> + * Return: Zero on success or a negative errno on error.
> + */
> +int mux_chip_register(struct mux_chip *mux_chip)
> +{
> +	int i;
> +	int ret;
> +	const char *alias;
> +	struct device_node *np = mux_chip->dev.of_node;
> +
> +	for (i = 0; i < mux_chip->controllers; ++i) {
> +		struct mux_control *mux = &mux_chip->mux[i];
> +
> +		if (mux->idle_state == mux->cached_state)
> +			continue;
> +
> +		ret = mux_control_set(mux, mux->idle_state);
> +		if (ret < 0) {
> +			dev_err(&mux_chip->dev, "unable to set idle state\n");
> +			return ret;
> +		}
> +	}
> +
> +	alias = np ? of_alias_get(np) : NULL;
> +	if (alias)
> +		ret = mux_register_dev(mux_chip, alias, DEVICE_ID_SINGLE);
> +	if (!alias || ret)
> +		ret = mux_register_dev(mux_chip, "muxchip", DEVICE_ID_DYNAMIC);
> +
> +	if (ret < 0) {
> +		dev_err(&mux_chip->dev,
> +			"register_device failed in %s: %d\n", __func__, ret);
> +		return ret;
> +	}
> +
> +	if (IS_ENABLED(CONFIG_PARAMETER)) {
> +		struct device *dev = NULL;
> +
> +		if (mux_chip->controllers == 1)
> +			dev = &mux_chip->dev;
> +
> +		for (i = 0; i < mux_chip->controllers; ++i) {
> +			struct mux_control *mux = &mux_chip->mux[i];
> +			struct device *dev;
> +
> +			if (mux_chip->controllers == 1) {
> +				dev = &mux_chip->dev;
> +			} else  {
> +				dev = &mux->dev;
> +				dev_set_name(dev, "muxchip%uc", mux_chip->dev.id);
> +				if (register_device(dev))
> +					continue;
> +			}
> +
> +			dev_add_param_bool_ro(dev, "idle", &mux->idle);
> +			dev_add_param_int(dev, "state", mux_control_set_param,
> +					  NULL, &mux->cached_state, "%d", mux);
> +		}
> +	}
> +
> +	list_add(&mux_chip->list, &mux_chips);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(mux_chip_register);
> +
> +/**
> + * mux_control_states() - Query the number of multiplexer states.
> + * @mux: The mux-control to query.
> + *
> + * Return: The number of multiplexer states.
> + */
> +unsigned int mux_control_states(struct mux_control *mux)
> +{
> +	return mux->states;
> +}
> +EXPORT_SYMBOL_GPL(mux_control_states);
> +
> +/*
> + * The mux->idle must be clear when calling this function.
> + */
> +static int __mux_control_select(struct mux_control *mux, int state)
> +{
> +	int ret;
> +
> +	if (WARN_ON(state < 0 || state >= mux->states))
> +		return -EINVAL;
> +
> +	if (mux->cached_state == state)
> +		return 0;
> +
> +	ret = mux_control_set(mux, state);
> +	if (ret >= 0)
> +		return 0;
> +
> +	/* The mux update failed, try to revert if appropriate... */
> +	if (mux->idle_state != MUX_IDLE_AS_IS)
> +		mux_control_set(mux, mux->idle_state);
> +
> +	return ret;
> +}
> +
> +static void mux_control_delay(struct mux_control *mux, unsigned int delay_us)
> +{
> +	ktime_t delayend;
> +	s64 remaining;
> +
> +	if (!delay_us)
> +		return;
> +
> +	delayend = ktime_add_us(mux->last_change, delay_us);
> +	remaining = ktime_us_delta(delayend, ktime_get());
> +	if (remaining > 0)
> +		udelay(remaining);
> +}
> +
> +/**
> + * mux_control_try_select_delay() - Try to select the given multiplexer state.
> + * @mux: The mux-control to request a change of state from.
> + * @state: The new requested state.
> + * @delay_us: The time to delay (in microseconds) if the mux state is changed.
> + *
> + * On successfully selecting the mux-control state, it will be locked until
> + * mux_control_deselect() is called.
> + *
> + * Therefore, make sure to call mux_control_deselect() when the operation is
> + * complete and the mux-control is free for others to use, but do not call
> + * mux_control_deselect() if mux_control_try_select() fails.
> + *
> + * Return: 0 when the mux-control state has the requested state or a negative
> + * errno on error. Specifically -EBUSY if the mux-control is contended.
> + */
> +int mux_control_try_select_delay(struct mux_control *mux, unsigned int state,
> +				 unsigned int delay_us)
> +{
> +	int ret;
> +
> +	if (!mux->idle)
> +		return -EBUSY;
> +	mux->idle = false;
> +
> +	ret = __mux_control_select(mux, state);
> +	if (ret >= 0)
> +		mux_control_delay(mux, delay_us);
> +
> +	if (ret < 0)
> +		mux->idle = true;
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(mux_control_try_select_delay);
> +
> +/**
> + * mux_state_try_select_delay() - Try to select the given multiplexer state.
> + * @mstate: The mux-state to select.
> + * @delay_us: The time to delay (in microseconds) if the mux state is changed.
> + *
> + * On successfully selecting the mux-state, its mux-control will be locked
> + * until mux_state_deselect() is called.
> + *
> + * Therefore, make sure to call mux_state_deselect() when the operation is
> + * complete and the mux-control is free for others to use, but do not call
> + * mux_state_deselect() if mux_state_try_select() fails.
> + *
> + * Return: 0 when the mux-state has been selected or a negative errno on
> + * error. Specifically -EBUSY if the mux-control is contended.
> + */
> +int mux_state_try_select_delay(struct mux_state *mstate, unsigned int delay_us)
> +{
> +	return mux_control_try_select_delay(mstate->mux, mstate->state, delay_us);
> +}
> +EXPORT_SYMBOL_GPL(mux_state_try_select_delay);
> +
> +/**
> + * mux_control_deselect() - Deselect the previously selected multiplexer state.
> + * @mux: The mux-control to deselect.
> + *
> + * It is required that a single call is made to mux_control_deselect() for
> + * each and every successful call made to either of mux_control_select() or
> + * mux_control_try_select().
> + *
> + * Return: 0 on success and a negative errno on error. An error can only
> + * occur if the mux has an idle state. Note that even if an error occurs, the
> + * mux-control is unlocked and is thus free for the next access.
> + */
> +int mux_control_deselect(struct mux_control *mux)
> +{
> +	int ret = 0;
> +
> +	if (mux->idle_state != MUX_IDLE_AS_IS &&
> +	    mux->idle_state != mux->cached_state)
> +		ret = mux_control_set(mux, mux->idle_state);
> +
> +	mux->idle = true;
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(mux_control_deselect);
> +
> +/**
> + * mux_state_deselect() - Deselect the previously selected multiplexer state.
> + * @mstate: The mux-state to deselect.
> + *
> + * It is required that a single call is made to mux_state_deselect() for
> + * each and every successful call made to either of mux_state_select() or
> + * mux_state_try_select().
> + *
> + * Return: 0 on success and a negative errno on error. An error can only
> + * occur if the mux has an idle state. Note that even if an error occurs, the
> + * mux-control is unlocked and is thus free for the next access.
> + */
> +int mux_state_deselect(struct mux_state *mstate)
> +{
> +	return mux_control_deselect(mstate->mux);
> +}
> +EXPORT_SYMBOL_GPL(mux_state_deselect);
> +
> +/* Note this function returns a reference to the mux_chip dev. */
> +static struct mux_chip *of_find_mux_chip_by_node(struct device_node *np)
> +{
> +	struct mux_chip *chip;
> +
> +	list_for_each_entry(chip, &mux_chips, list) {
> +		if (chip->dev.device_node == np)
> +			return chip;
> +	}
> +
> +	return NULL;
> +}
> +
> +/*
> + * mux_get() - Get the mux-control for a device.
> + * @dev: The device that needs a mux-control.
> + * @mux_name: The name identifying the mux-control.
> + * @state: Pointer to where the requested state is returned, or NULL when
> + *         the required multiplexer states are handled by other means.
> + *
> + * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
> + */
> +static struct mux_control *mux_get(struct device *dev, const char *mux_name,
> +				   unsigned int *state)
> +{
> +	struct device_node *np = dev->of_node;
> +	struct of_phandle_args args;
> +	struct mux_chip *mux_chip;
> +	unsigned int controller;
> +	int index = 0;
> +	int ret;
> +
> +	if (mux_name) {
> +		if (state)
> +			index = of_property_match_string(np, "mux-state-names",
> +							 mux_name);
> +		else
> +			index = of_property_match_string(np, "mux-control-names",
> +							 mux_name);
> +		if (index < 0) {
> +			dev_err(dev, "mux controller '%s' not found\n",
> +				mux_name);
> +			return ERR_PTR(index);
> +		}
> +	}
> +
> +	if (state)
> +		ret = of_parse_phandle_with_args(np,
> +						 "mux-states", "#mux-state-cells",
> +						 index, &args);
> +	else
> +		ret = of_parse_phandle_with_args(np,
> +						 "mux-controls", "#mux-control-cells",
> +						 index, &args);
> +	if (ret) {
> +		dev_err(dev, "%pOF: failed to get mux-%s %s(%i)\n",
> +			np, state ? "state" : "control", mux_name ?: "", index);
> +		return ERR_PTR(ret);
> +	}
> +
> +	mux_chip = of_find_mux_chip_by_node(args.np);
> +	of_node_put(args.np);
> +	if (!mux_chip)
> +		return ERR_PTR(-EPROBE_DEFER);
> +
> +	controller = 0;
> +	if (state) {
> +		if (args.args_count > 2 || args.args_count == 0 ||
> +		    (args.args_count < 2 && mux_chip->controllers > 1)) {
> +			dev_err(dev, "%pOF: wrong #mux-state-cells for %pOF\n",
> +				np, args.np);
> +			put_device(&mux_chip->dev);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		if (args.args_count == 2) {
> +			controller = args.args[0];
> +			*state = args.args[1];
> +		} else {
> +			*state = args.args[0];
> +		}
> +
> +	} else {
> +		if (args.args_count > 1 ||
> +		    (!args.args_count && mux_chip->controllers > 1)) {
> +			dev_err(dev, "%pOF: wrong #mux-control-cells for %pOF\n",
> +				np, args.np);
> +			put_device(&mux_chip->dev);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		if (args.args_count)
> +			controller = args.args[0];
> +	}
> +
> +	if (controller >= mux_chip->controllers) {
> +		dev_err(dev, "%pOF: bad mux controller %u specified in %pOF\n",
> +			np, controller, args.np);
> +		put_device(&mux_chip->dev);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return &mux_chip->mux[controller];
> +}
> +
> +/**
> + * mux_control_get() - Get the mux-control for a device.
> + * @dev: The device that needs a mux-control.
> + * @mux_name: The name identifying the mux-control.
> + *
> + * Return: A pointer to the mux-control, or an ERR_PTR with a negative errno.
> + */
> +struct mux_control *mux_control_get(struct device *dev, const char *mux_name)
> +{
> +	return mux_get(dev, mux_name, NULL);
> +}
> +EXPORT_SYMBOL_GPL(mux_control_get);
> +
> +MODULE_DESCRIPTION("Multiplexer subsystem");
> +MODULE_AUTHOR("Peter Rosin <peda@axentia.se>");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
> new file mode 100644
> index 000000000000..10d68b63cf57
> --- /dev/null
> +++ b/drivers/mux/gpio.c
> @@ -0,0 +1,103 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * GPIO-controlled multiplexer driver
> + *
> + * Copyright (C) 2017 Axentia Technologies AB
> + *
> + * Author: Peter Rosin <peda@axentia.se>
> + */
> +
> +#include <linux/bitmap.h>
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <module.h>
> +#include <linux/mux/driver.h>
> +#include <driver.h>
> +#include <linux/property.h>
> +
> +struct mux_gpio {
> +	struct gpio_descs *gpios;
> +};
> +
> +static int mux_gpio_set(struct mux_control *mux, int state)
> +{
> +	struct mux_gpio *mux_gpio = mux_chip_priv(mux->chip);
> +	DECLARE_BITMAP(values, BITS_PER_TYPE(state));
> +	u32 value = state;
> +
> +	bitmap_from_arr32(values, &value, BITS_PER_TYPE(value));
> +
> +	gpiod_set_array_value(mux_gpio->gpios->ndescs,
> +			      mux_gpio->gpios->desc,
> +			      mux_gpio->gpios->info, values);
> +
> +	return 0;
> +}
> +
> +static const struct mux_control_ops mux_gpio_ops = {
> +	.set = mux_gpio_set,
> +};
> +
> +static const struct of_device_id mux_gpio_dt_ids[] = {
> +	{ .compatible = "gpio-mux", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, mux_gpio_dt_ids);
> +
> +static int mux_gpio_probe(struct device *dev)
> +{
> +	struct mux_chip *mux_chip;
> +	struct mux_gpio *mux_gpio;
> +	int pins;
> +	s32 idle_state;
> +	int ret;
> +
> +	pins = gpiod_count(dev, "mux");
> +	if (pins < 0)
> +		return pins;
> +
> +	mux_chip = mux_chip_alloc(dev, 1, sizeof(*mux_gpio));
> +	if (IS_ERR(mux_chip))
> +		return PTR_ERR(mux_chip);
> +
> +	mux_gpio = mux_chip_priv(mux_chip);
> +	mux_chip->ops = &mux_gpio_ops;
> +
> +	mux_gpio->gpios = gpiod_get_array(dev, "mux", GPIOD_OUT_LOW);
> +	if (IS_ERR(mux_gpio->gpios))
> +		return dev_err_probe(dev, PTR_ERR(mux_gpio->gpios),
> +				     "failed to get gpios\n");
> +	WARN_ON(pins != mux_gpio->gpios->ndescs);
> +	mux_chip->mux->states = BIT(pins);
> +
> +	ret = device_property_read_u32(dev, "idle-state", (u32 *)&idle_state);
> +	if (ret >= 0 && idle_state != MUX_IDLE_AS_IS) {
> +		if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
> +			dev_err(dev, "invalid idle-state %u\n", idle_state);
> +			return -EINVAL;
> +		}
> +
> +		mux_chip->mux->idle_state = idle_state;
> +	}
> +
> +	ret = mux_chip_register(mux_chip);
> +	if (ret < 0)
> +		return ret;
> +
> +	dev_info(dev, "%u-way mux-controller registered\n",
> +		 mux_chip->mux->states);
> +
> +	return 0;
> +}
> +
> +static struct driver mux_gpio_driver = {
> +	.name = "gpio-mux",
> +	.of_match_table	= mux_gpio_dt_ids,
> +	.probe = mux_gpio_probe,
> +};
> +coredevice_platform_driver(mux_gpio_driver);
> +
> +MODULE_DESCRIPTION("GPIO-controlled multiplexer driver");
> +MODULE_AUTHOR("Peter Rosin <peda@axentia.se>");
> +MODULE_LICENSE("GPL v2");

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



