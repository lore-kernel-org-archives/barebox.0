Delivery-date: Mon, 12 Apr 2021 14:16:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvUC-0005B9-Cg
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 14:16:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVvUB-0003nx-9k
	for lore@pengutronix.de; Mon, 12 Apr 2021 14:16:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pTfSsqirvXNn2d1o+g9QpiQM3oj6fLuHvrUCO4jBzBs=; b=iSRAk8ysDTC3bMJzMwa82oR8q
	9x0GaZ5LWKgmpSmEsXtuJnl3gBBY+DkXlQzmySZ0JhrXb6Md7lx3Z4hS51ZJKJcxN3Rm02iN+cfCk
	GP7kU6D374DeRh1+hfzLp+zBFu4TPsMA+ia+dhpFauTE0Qz3i8CCi9fgdSeRVKmT1nexuuPzSZVoI
	cUqW552QqN9Mm9NP74xtML5uWcOLZbMkauM/42cjVD2pYVNvArdZRIKj1QdU19ulrk2PseFLpeCkz
	aOL7ilSvqnFmq0+r51cIDoYlpS8o6pa9SWbTsQYCaUNe8XdjBf7rKbMMGHoxnr/hu+X6vm4Wk0Nz3
	2hXO1w3QA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVvSj-006emS-RZ; Mon, 12 Apr 2021 12:14:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvSd-006emK-6H
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 12:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3aeSpRA2b+SG9NMEJQOi/4ktsUghWrKcKoq05jo0XVw=; b=bN3aIhx8jvr2D0ymV4fi1h5fsO
 LLmx7ET4h5abm650caQoforWY/eAfwWorIqVdt2IaOBBFAZMtsoxzocCWGUFEJG6J+Or7BunMeSqi
 0D/72E3CuQ0l4C7IZwAwaqN2KuV8FQTvUoo+HZVf/vfP4TnfeD8kIEdate+OO6gA2oUbuN8ncIW89
 5h8UY/bUM0ZCdA3wlrk1n6z0ruz7gz419zzrYUyjttqXDJ+02Idwc+a+pnSwXjdickDdYhreKvL9p
 O/T7ErZMoQudTj6fm7jtxqBIWwe84MFWKssE4SgEE5voWMnGx1mFnA3/L+YsPa5GLO6mhnT3NQbCt
 QkgXIGGQ==;
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVvSa-006D5X-6V
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 12:14:33 +0000
Received: by mail-oi1-x22c.google.com with SMTP id m13so13152063oiw.13
 for <barebox@lists.infradead.org>; Mon, 12 Apr 2021 05:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3aeSpRA2b+SG9NMEJQOi/4ktsUghWrKcKoq05jo0XVw=;
 b=XDyjz668QVj5zs17Eb1noTezZR05VAJPmz6hkDttk5AVHBL910W9anA71yLQyDqo2O
 wXzvHPKP+5NF4X1M7qI1Kk7j3kvPrs09d5ziJY7ECV0WNiOaYGlWP8fyTQgO0okcvgnf
 /LLwOzPYDebFFkZDsLTd+7r17zzMa38BPN12WSgi1kOklikA2tbOnUkPNcHk8kj+MyHC
 skAFq7dEMqtEvFhAvIlPRHpX1x3/aE+i32N5L6ulCvWMsaINLGvIo3KxZR3kqrSSSIDE
 uKfa4SwhIAxNStSex8UTsMQNoqbFYUMzm/77BcuWf3GmN74eaF8aDKB71ecYs/J+84GT
 qXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3aeSpRA2b+SG9NMEJQOi/4ktsUghWrKcKoq05jo0XVw=;
 b=CMRSv384bLusv7GqbksNGtJS1gRB52bz2l+WKtpLUNmYMRoFRvlOa8wk3HK5DMhrCA
 EiM1bhGvyneang+wol/KAR951J/+2oX1kKDSqI10AGM/qDOiKqsqba7EObJJpdiwobj/
 3FBklJygBYg5qBULZIQH3JFJJ8uPHehacK+HfLi2RGNVvBCJ2GNv89YNHI6yotOzSHQZ
 l4KTRSYwepFzT5q5a7YMK0IuzSGQVET+tSoFni4PttXQrCAjnxhINhpeFnCydRJWnnOa
 jKG+dkMOAufLDj62tr7GTJNuU83voLbDva6ysDH3LQbK9jpYQlfexeBHMpA6YnKEUnR2
 XvHg==
X-Gm-Message-State: AOAM532j/hpi1MDWiN6UciNWrj8FTm5hBHtotDGcu8x/Qc7+yjX1sD5m
 4GZiZwaVy0vB/TJO7WZ4XohdAkRsE01WgA4cKIlCvAAM2QQ=
X-Google-Smtp-Source: ABdhPJweg+QT/wPQusxE7nrrwOLRUKIDRWoXzzS+uk7wXxEqDqzMXbpTy/4CG4kIZyA7yZmcii9ROqd6cOUxsSifKvw=
X-Received: by 2002:aca:37c1:: with SMTP id
 e184mr13587391oia.136.1618229670831; 
 Mon, 12 Apr 2021 05:14:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210410103511.2073504-1-ahmad@a3f.at>
 <20210410103511.2073504-4-ahmad@a3f.at>
In-Reply-To: <20210410103511.2073504-4-ahmad@a3f.at>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Mon, 12 Apr 2021 14:14:19 +0200
Message-ID: <CAKd8=GtZKKfQ_DjH8DAoAo85OfHycKVVNKcc1QRgEt95uhgdtg@mail.gmail.com>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_051432_282290_14F81686 
X-CRM114-Status: GOOD (  27.85  )
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
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/5] power: reset: add GPIO restart driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, 10 Apr 2021 at 12:37, Ahmad Fatoum <ahmad@a3f.at> wrote:
>
> This is a straight port from Linux v5.11.
>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
Tested-by: Lars Pedersen <lapeddk@gmail.com>

Tested on imx7-tqma7 platform.

> ---
>  drivers/power/reset/Kconfig        |  8 +++
>  drivers/power/reset/Makefile       |  1 +
>  drivers/power/reset/gpio-restart.c | 99 ++++++++++++++++++++++++++++++
>  3 files changed, 108 insertions(+)
>  create mode 100644 drivers/power/reset/gpio-restart.c
>
> diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
> index cadcc0b13f2f..dec1482ccd0c 100644
> --- a/drivers/power/reset/Kconfig
> +++ b/drivers/power/reset/Kconfig
> @@ -36,3 +36,11 @@ config POWER_RESET_GPIO
>           This driver supports turning off your board via a GPIO line.
>           If your board needs a GPIO high/low to power down, say Y and
>           create a binding in your devicetree.
> +
> +config POWER_RESET_GPIO_RESTART
> +       bool "GPIO restart driver"
> +       depends on OF_GPIO
> +       help
> +         This driver supports restarting your board via a GPIO line.
> +         If your board needs a GPIO high/low to restart, say Y and
> +         create a binding in your devicetree.
> diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
> index 438c85970028..33d29d2d9546 100644
> --- a/drivers/power/reset/Makefile
> +++ b/drivers/power/reset/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_SYSCON_REBOOT_MODE) += syscon-reboot-mode.o
>  obj-$(CONFIG_POWER_RESET_SYSCON) += syscon-reboot.o
>  obj-$(CONFIG_POWER_RESET_SYSCON_POWEROFF) += syscon-poweroff.o
>  obj-$(CONFIG_POWER_RESET_GPIO) += gpio-poweroff.o
> +obj-$(CONFIG_POWER_RESET_GPIO_RESTART) += gpio-restart.o
> diff --git a/drivers/power/reset/gpio-restart.c b/drivers/power/reset/gpio-restart.c
> new file mode 100644
> index 000000000000..72c690a3cf4c
> --- /dev/null
> +++ b/drivers/power/reset/gpio-restart.c
> @@ -0,0 +1,99 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Toggles a GPIO pin to restart a device
> + *
> + * Copyright (C) 2014 Google, Inc.
> + *
> + * Based on the gpio-poweroff driver.
> + */
> +#include <common.h>
> +#include <driver.h>
> +#include <restart.h>
> +#include <gpiod.h>
> +
> +struct gpio_restart {
> +       int reset_gpio;
> +       struct restart_handler restart_handler;
> +       u32 active_delay_ms;
> +       u32 inactive_delay_ms;
> +       u32 wait_delay_ms;
> +};
> +
> +static void __noreturn gpio_restart_handle(struct restart_handler *this)
> +{
> +       struct gpio_restart *gpio_restart =
> +               container_of(this, struct gpio_restart, restart_handler);
> +
> +       /* drive it active, also inactive->active edge */
> +       gpio_direction_active(gpio_restart->reset_gpio, true);
> +       mdelay(gpio_restart->active_delay_ms);
> +
> +       /* drive inactive, also active->inactive edge */
> +       gpio_set_active(gpio_restart->reset_gpio, false);
> +       mdelay(gpio_restart->inactive_delay_ms);
> +
> +       /* drive it active, also inactive->active edge */
> +       gpio_set_active(gpio_restart->reset_gpio, true);
> +
> +       /* give it some time */
> +       mdelay(gpio_restart->wait_delay_ms);
> +
> +       mdelay(1000);
> +
> +       panic("Unable to restart system\n");
> +}
> +
> +static int gpio_restart_probe(struct device_d *dev)
> +{
> +       struct device_node *np = dev->device_node;
> +       struct gpio_restart *gpio_restart;
> +       bool open_source = false;
> +       u32 property;
> +       int ret;
> +
> +       gpio_restart = xzalloc(sizeof(*gpio_restart));
> +
> +       open_source = of_property_read_bool(np, "open-source");
> +
> +       gpio_restart->reset_gpio = gpiod_get(dev, NULL,
> +                       open_source ? GPIOD_IN : GPIOD_OUT_LOW);
> +       ret = gpio_restart->reset_gpio;
> +       if (ret < 0) {
> +               if (ret != -EPROBE_DEFER)
> +                       dev_err(dev, "Could not get reset GPIO\n");
> +               return ret;
> +       }
> +
> +       gpio_restart->restart_handler.restart = gpio_restart_handle;
> +       gpio_restart->restart_handler.name = "gpio-restart";
> +       gpio_restart->restart_handler.priority = 129;
> +       gpio_restart->active_delay_ms = 100;
> +       gpio_restart->inactive_delay_ms = 100;
> +       gpio_restart->wait_delay_ms = 3000;
> +
> +       ret = of_property_read_u32(dev->device_node, "priority", &property);
> +       if (!ret)
> +               gpio_restart->restart_handler.priority = property;
> +
> +       of_property_read_u32(np, "active-delay", &gpio_restart->active_delay_ms);
> +       of_property_read_u32(np, "inactive-delay", &gpio_restart->inactive_delay_ms);
> +       of_property_read_u32(np, "wait-delay", &gpio_restart->wait_delay_ms);
> +
> +       return restart_handler_register(&gpio_restart->restart_handler);
> +}
> +
> +static const struct of_device_id of_gpio_restart_match[] = {
> +       { .compatible = "gpio-restart", },
> +       {},
> +};
> +
> +static struct driver_d gpio_restart_driver = {
> +       .name = "restart-gpio",
> +       .of_compatible = of_gpio_restart_match,
> +       .probe = gpio_restart_probe,
> +};
> +device_platform_driver(gpio_restart_driver);
> +
> +MODULE_AUTHOR("David Riley <davidriley@chromium.org>");
> +MODULE_DESCRIPTION("GPIO restart driver");
> +MODULE_LICENSE("GPL");
> --
> 2.30.0
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

