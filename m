Delivery-date: Thu, 23 Feb 2023 10:24:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV7pe-00GdvK-2F
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 10:24:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV7pc-0000rc-GM
	for lore@pengutronix.de; Thu, 23 Feb 2023 10:24:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FUs68oZx0n18kk4V1E5x7aZT0t/HW3ruU23VhEK0/b4=; b=qeOVQ7Vrnc+2teN9u8Mz2gB3tI
	qEHDTMWT/7g9JbWVYJBZtD991pE7PyvOwOQZM0mYfwnc2Ms0DzPPGSlEmdmPi3+wgCCg5FOUQHI6w
	st9GKSbGFzQv4Gl6ebLbv/30koNyu7qgYWYUVqkZoCV1dVtTawFZRNEvTzk/5NeUdKY/RM79qAVvx
	4tvmoRPfR5qZO1iJ2Hd0p5GQJGKmunCxb9lVYbPcmGSsTutgCwPr3JfNAEEWzuRjxHvPHHjqP6ySD
	RAk35R5hWBNAB5ARr9Bj7fDSoZhJ04ZZjb17GWZfaROEx2vO88Do1p6dkchHHuoxD6W0VytIt6Dt2
	k0c78AwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7oK-00FgSp-DG; Thu, 23 Feb 2023 09:22:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7oE-00FgR2-W3
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 09:22:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pV7oD-0000j1-Cf; Thu, 23 Feb 2023 10:22:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pV7oD-0007JT-5k; Thu, 23 Feb 2023 10:22:37 +0100
Date: Thu, 23 Feb 2023 10:22:37 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230223092237.GD32097@pengutronix.de>
References: <20230217202620.2882141-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217202620.2882141-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_012239_218200_DACA4C5F 
X-CRM114-Status: GOOD (  38.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: misc: add support for new OF onboard hub binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 09:26:20PM +0100, Ahmad Fatoum wrote:
> The new binding allows describing hubs that lacks a control bus (e.g.
> I2C) in the DT and thus replaces the ugly hack of specifying USB hub
> resets as gpio-hogs. It's already in use for boards we support, like the
> STM32MP13/5 Discovery kits and will be useful for the i.MX8MP Debix
> board, so port over the driver from Linux.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/core/usb.c             |  2 +
>  drivers/usb/misc/Kconfig           | 10 ++++
>  drivers/usb/misc/Makefile          |  1 +
>  drivers/usb/misc/onboard_usb_hub.c | 86 ++++++++++++++++++++++++++++++
>  drivers/usb/misc/onboard_usb_hub.h | 36 +++++++++++++
>  include/usb/usb.h                  |  8 +++
>  6 files changed, 143 insertions(+)
>  create mode 100644 drivers/usb/misc/onboard_usb_hub.c
>  create mode 100644 drivers/usb/misc/onboard_usb_hub.h

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7c589ec06f24..a974614c062e 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -576,6 +576,8 @@ int usb_host_detect(struct usb_host *host)
>  {
>  	int ret;
>  
> +	of_usb_host_probe_hubs(host);
> +
>  	if (!host->root_dev) {
>  		if (host->init) {
>  			ret = host->init(host);
> diff --git a/drivers/usb/misc/Kconfig b/drivers/usb/misc/Kconfig
> index 9799af47256e..fde57fd74309 100644
> --- a/drivers/usb/misc/Kconfig
> +++ b/drivers/usb/misc/Kconfig
> @@ -14,3 +14,13 @@ config USB_HUB_USB251XB
>  	  Microchip USB251x/xBi USB 2.0 Hub Controller series. Configuration
>  	  parameters may be set in devicetree or platform data.
>  	  Say Y or M here if you need to configure such a device via SMBus.
> +
> +config USB_ONBOARD_HUB
> +	bool "Onboard USB hub support"
> +	depends on OFDEVICE || COMPILE_TEST
> +	help
> +	  Say Y here if you want to support discrete onboard USB hubs that
> +	  don't require an additional control bus for initialization, but
> +	  need some non-trivial form of initialization, such as enabling a
> +	  power regulator. An example for such a hub is the Realtek
> +	  RTS5411.
> diff --git a/drivers/usb/misc/Makefile b/drivers/usb/misc/Makefile
> index be5c044f5a57..e00f66a5ed1c 100644
> --- a/drivers/usb/misc/Makefile
> +++ b/drivers/usb/misc/Makefile
> @@ -4,3 +4,4 @@
>  # (the ones that don't fit into any other categories)
>  #
>  obj-$(CONFIG_USB_HUB_USB251XB)		+= usb251xb.o
> +obj-$(CONFIG_USB_ONBOARD_HUB)		+= onboard_usb_hub.o
> diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
> new file mode 100644
> index 000000000000..0b847f06ad45
> --- /dev/null
> +++ b/drivers/usb/misc/onboard_usb_hub.c
> @@ -0,0 +1,86 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Driver for onboard USB hubs
> + *
> + * Copyright (c) 2022, Google LLC
> + */
> +
> +#include <driver.h>
> +#include <gpiod.h>
> +#include <init.h>
> +#include <of.h>
> +#include <linux/printk.h>
> +#include <of_device.h>
> +#include <regulator.h>
> +#include <usb/usb.h>
> +
> +#include "onboard_usb_hub.h"
> +
> +void of_usb_host_probe_hubs(struct usb_host *host)
> +{
> +	struct device_node *np;
> +
> +	np = dev_of_node(host->hw_dev);
> +	if (!np)
> +		return;
> +
> +	of_platform_populate(np, onboard_hub_match, host->hw_dev);
> +}
> +
> +struct onboard_hub {
> +	struct regulator *vdd;
> +	struct device *dev;
> +	const struct onboard_hub_pdata *pdata;
> +	int reset_gpio;
> +};
> +
> +static int onboard_hub_power_on(struct onboard_hub *hub)
> +{
> +	int err;
> +
> +	err = regulator_enable(hub->vdd);
> +	if (err) {
> +		dev_err(hub->dev, "failed to enable regulator: %pe\n",
> +			ERR_PTR(err));
> +		return err;
> +	}
> +
> +	udelay(hub->pdata->reset_us);
> +	gpiod_set_value(hub->reset_gpio, 0);
> +
> +	return 0;
> +}
> +
> +static int onboard_hub_probe(struct device *dev)
> +{
> +	struct onboard_hub *hub;
> +
> +	hub = xzalloc(sizeof(*hub));
> +
> +	hub->pdata = device_get_match_data(dev);
> +	if (!hub->pdata)
> +		return -EINVAL;
> +
> +	hub->vdd = regulator_get(dev, "vdd");
> +	if (IS_ERR(hub->vdd))
> +		return PTR_ERR(hub->vdd);
> +
> +	hub->reset_gpio = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (hub->reset_gpio < 0 && hub->reset_gpio != -ENOENT)
> +		return dev_err_probe(dev, hub->reset_gpio, "failed to get reset GPIO\n");
> +
> +	hub->dev = dev;
> +
> +	return onboard_hub_power_on(hub);
> +}
> +
> +static struct driver onboard_hub_driver = {
> +	.name = "onboard-usb-hub",
> +	.probe = onboard_hub_probe,
> +	.of_compatible = onboard_hub_match,
> +};
> +device_platform_driver(onboard_hub_driver);
> +
> +MODULE_AUTHOR("Matthias Kaehlcke <mka@chromium.org>");
> +MODULE_DESCRIPTION("Driver for discrete onboard USB hubs");
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
> new file mode 100644
> index 000000000000..e90be47b6735
> --- /dev/null
> +++ b/drivers/usb/misc/onboard_usb_hub.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright (c) 2022, Google LLC
> + */
> +
> +#ifndef _USB_MISC_ONBOARD_USB_HUB_H
> +#define _USB_MISC_ONBOARD_USB_HUB_H
> +
> +struct onboard_hub_pdata {
> +	unsigned long reset_us;		/* reset pulse width in us */
> +};
> +
> +static const struct onboard_hub_pdata microchip_usb424_data = {
> +	.reset_us = 1,
> +};
> +
> +static const struct onboard_hub_pdata realtek_rts5411_data = {
> +	.reset_us = 0,
> +};
> +
> +static const struct onboard_hub_pdata ti_tusb8041_data = {
> +	.reset_us = 3000,
> +};
> +
> +const struct of_device_id onboard_hub_match[] = {
> +	{ .compatible = "usb424,2514", .data = &microchip_usb424_data, },
> +	{ .compatible = "usb451,8140", .data = &ti_tusb8041_data, },
> +	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
> +	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
> +	{ .compatible = "usbbda,5411", .data = &realtek_rts5411_data, },
> +	{ .compatible = "usbbda,414", .data = &realtek_rts5411_data, },
> +	{ .compatible = "usbbda,5414", .data = &realtek_rts5411_data, },
> +	{}
> +};
> +
> +#endif /* _USB_MISC_ONBOARD_USB_HUB_H */
> diff --git a/include/usb/usb.h b/include/usb/usb.h
> index 9b36122436d5..717bcf935a42 100644
> --- a/include/usb/usb.h
> +++ b/include/usb/usb.h
> @@ -484,4 +484,12 @@ extern struct list_head usb_device_list;
>  
>  bool usb_hub_is_root_hub(struct usb_device *hdev);
>  
> +#ifdef CONFIG_USB_ONBOARD_HUB
> +void of_usb_host_probe_hubs(struct usb_host *host);
> +#else
> +static inline void of_usb_host_probe_hubs(struct usb_host *host)
> +{
> +}
> +#endif
> +
>  #endif /*_USB_H_ */
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


