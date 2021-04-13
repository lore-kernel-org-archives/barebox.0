Delivery-date: Tue, 13 Apr 2021 08:16:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWCLm-0006wQ-Ho
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 08:16:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWCLl-0002SI-Ex
	for lore@pengutronix.de; Tue, 13 Apr 2021 08:16:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NRQFq5dRZfKfIHjcwLhJy4MxfpjmRMWSMnXDBldYx/8=; b=X5E9DTi1btz1R7QCaYGm44p2/
	PDUGYG/J1wZFnQ3a5EfkbC+iyInQLAdPjUOTxVHX2tZH3h4zlxN3bRMF+GCYBBvK3cO8rFESYEjke
	a+ocqJzeubZkR4kXAZ5vDCVCpvn4fo7l+3JSZO4bHNsWNKQyAyNJmoMS4CcWdoDBeE2QMp0OIbCLy
	6Vld3GhW+HjlSHvtWBd2TipKy76rnBPWwvaY0fpX8KT1L4N9jxC/gUreFgxIIQMGQEYhIn2YVwKtW
	176kd8iP1GkbGEY/hwmYjz8m6EFJJrAFng58Xzot19AQPmxE3LRimY2fXEt/mfV5vKXPVFPQKlAEF
	uJTgE+V6w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWCHt-008MQg-2E; Tue, 13 Apr 2021 06:12:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCHe-008MPC-Ne
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 06:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lkxCy2J7xSp3B3jNM4+I1B7qLE9UWG/skKQcRUS6bBQ=; b=TFOliV+swX1PUHkg+vufHoLK2l
 gj6Cpzoh2ZNViZNQGiXyCKJgKebSwMHctOhA1iUrpUFUALLtDJrfmcdipe1A6xRqc2AJfyNfWQxM7
 7vahpA8e0sPiUuchZDqEPXw4YzOh3PKi+bZcg/8OQNUQvxPQxL5D+M/qAMpwyuN32/5yYRVdJh4eE
 GcHYFvrv0XysX8rEAr9yrfgEGQlOwIj9pjw8PZU/MsDUol6cJuBuHU58SlNdxsiILnaAjh9Yifyme
 cmTmUqirOP+TeIbtwV/c/ZXHNlycOfQV2uRjw14plGQVgMbJOF9IDgm/hOKdSETGnXz0DIWGrEX1v
 lULxDfnA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCHb-006lKX-Go
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 06:12:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWCHa-0001l9-An; Tue, 13 Apr 2021 08:12:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWCHZ-0007rN-V5; Tue, 13 Apr 2021 08:12:17 +0200
Date: Tue, 13 Apr 2021 08:12:17 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413061217.GC19819@pengutronix.de>
References: <20210410103511.2073504-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410103511.2073504-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:12:07 up 54 days,  9:35, 84 users,  load average: 0.12, 0.20, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_231219_580233_6E377875 
X-CRM114-Status: GOOD (  32.65  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] gpiolib: add Linux-like gpiod_get() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 12:35:07PM +0200, Ahmad Fatoum wrote:
> Many Linux drivers use [devm_]gpiod_get to get appropriately configured
> GPIO descriptors out with little code. Make porting such Linux code
> easier by providing a semi-compatible gpiod_get function. Main
> differences:
> 
>  - It returns a gpio index, so it can be passed to any gpio_ function
>  - It's device-tree only, so it should only be used from drivers
>    that themselves probe from device tree.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/gpio/gpiolib.c | 43 ++++++++++++++++++++++++++++++++++++++++++
>  include/gpiod.h        | 26 +++++++++++++++++++++++++
>  2 files changed, 69 insertions(+)
>  create mode 100644 include/gpiod.h

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 6088cadd8a18..7b7261d01f24 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -6,6 +6,7 @@
>  #include <complete.h>
>  #include <gpio.h>
>  #include <of_gpio.h>
> +#include <gpiod.h>
>  #include <errno.h>
>  #include <malloc.h>
>  
> @@ -554,6 +555,48 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
>  	return 0;
>  }
>  
> +/* Linux compatibility helper: Get a GPIO descriptor from device tree */
> +int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags)
> +{
> +	struct device_node *np = dev->device_node;
> +	enum of_gpio_flags of_flags;
> +	const char *con_id = "gpios", *label = dev_name(dev);
> +	char *buf = NULL;
> +	int gpio;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
> +		return -ENODEV;
> +
> +	if (_con_id) {
> +		con_id = buf = basprintf("%s-gpios", _con_id);
> +		if (!buf)
> +			return -ENOMEM;
> +	}
> +
> +	gpio = of_get_named_gpio_flags(np, con_id, 0, &of_flags);
> +	free(buf);
> +
> +	if (!gpio_is_valid(gpio))
> +		return gpio < 0 ? gpio : -EINVAL;
> +
> +	if (of_flags & OF_GPIO_ACTIVE_LOW)
> +		flags |= GPIOF_ACTIVE_LOW;
> +
> +	buf = NULL;
> +
> +	if (_con_id) {
> +		label = buf = basprintf("%s-%s", dev_name(dev), _con_id);
> +		if (!label)
> +			return -ENOMEM;
> +	}
> +
> +	ret = gpio_request_one(gpio, flags, label);
> +	free(buf);
> +
> +	return ret ?: gpio;
> +}
> +
>  int gpiochip_add(struct gpio_chip *chip)
>  {
>  	int base, i;
> diff --git a/include/gpiod.h b/include/gpiod.h
> new file mode 100644
> index 000000000000..c8b2cd47a3cb
> --- /dev/null
> +++ b/include/gpiod.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __GPIOD_H_
> +#define __GPIOD_H_
> +
> +#include <gpio.h>
> +#include <of_gpio.h>
> +
> +/**
> + * Optional flags that can be passed to one of gpiod_* to configure direction
> + * and output value. These values cannot be OR'd.
> + */
> +enum gpiod_flags {
> +	GPIOD_ASIS	= 0,
> +	GPIOD_IN	= GPIOF_IN,
> +	/*
> +	 * To change this later to a different logic level (i.e. taking
> +	 * active low into account), use gpio_direction_active()
> +	 */
> +	GPIOD_OUT_LOW	= GPIOF_OUT_INIT_INACTIVE,
> +	GPIOD_OUT_HIGH	= GPIOF_OUT_INIT_ACTIVE,
> +};
> +
> +/* returned gpio descriptor can be passed to any normal gpio_* function */
> +int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags);
> +
> +#endif
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

