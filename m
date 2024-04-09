Delivery-date: Tue, 09 Apr 2024 09:42:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ru67P-00462E-22
	for lore@lore.pengutronix.de;
	Tue, 09 Apr 2024 09:42:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ru67O-00062s-Ux
	for lore@pengutronix.de; Tue, 09 Apr 2024 09:42:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lJCAuyNH3QYdQCldtFfpxG6DN1vjSgO8xWO0b1vIWxw=; b=ixREUgVUM/WCEyIXRieXowA4V5
	TjNtGkQ6R2j2Kp6tTYU9BxXErKBj5TYk12/6PgjrP64KvG7Z+zXPb+TQA0xkRhKrpuGQybTUTYuDO
	xeXOyiEiVf9WaDG9TMBb1xcgP8zJRaJO/g/mcnykTusnkyVwd74hjUc7oW7WLm5m+FP+QD8pK1Yp3
	a7gGqamUJ5UqHk9M4si0EXmw4awkjnivFNHyif71dcQOwj7jEddjLUsfZR4RbHKTDI50yDWPj46u4
	JbjyPFeIYDJm/UPs4xnPdWaa8KGB1qLHX0Ud+rzvIbWqz/HvXLUgAuRVi2Fq8Vxczi6/ZqCasBR02
	laW64Swg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru66q-00000000nkL-48ty;
	Tue, 09 Apr 2024 07:41:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru66n-00000000nip-1fdz
	for barebox@lists.infradead.org;
	Tue, 09 Apr 2024 07:41:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ru66j-0005rQ-9K; Tue, 09 Apr 2024 09:41:29 +0200
Message-ID: <46db4b10-73d7-4f33-9fc9-e383326bfe5d@pengutronix.de>
Date: Tue, 9 Apr 2024 09:41:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tomas Marek <tomas.marek@elrest.cz>, barebox@lists.infradead.org
References: <20240409071422.5934-1-tomas.marek@elrest.cz>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240409071422.5934-1-tomas.marek@elrest.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_004133_478683_F82E9B5D 
X-CRM114-Status: GOOD (  28.23  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpio: Add Intel gpio controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Tomas,

On 09.04.24 09:14, Tomas Marek wrote:
> Signed-off-by: Tomas Marek <tomas.marek@elrest.cz>

Thanks for your patch. I have a soft spot for barebox-as-efi-payload,
so it's cool to see you contributing new features.

It also makes me curious what more drivers are you intending to
contribute. :-)

Some review below. 

> ---
>  drivers/gpio/Kconfig               |   5 +
>  drivers/gpio/Makefile              |   1 +
>  drivers/gpio/gpio-intel.c          | 198 +++++++++++++++++++++++++++++
>  include/platform_data/gpio-intel.h |  10 ++
>  4 files changed, 214 insertions(+)
>  create mode 100644 drivers/gpio/gpio-intel.c
>  create mode 100644 include/platform_data/gpio-intel.h
> 
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 9f27addaa2..094c9b7fd4 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -219,6 +219,11 @@ config GPIO_LATCH
>  	  Say yes here to enable a driver for GPIO multiplexers based on latches
>  	  connected to other GPIOs.
>  
> +config GPIO_INTEL
> +	tristate "Intel GPIO driver"

Please add a depends on X86 || COMPILE_TEST here, so other architectures
aren't prompted for this driver by default.

> +	help
> +	  Say Y or M here to build support for the Intel GPIO driver.

Nitpick: We only have [M]odule support for ARM, so tristate == bool in your
case and one couldn't set M here, despite what the help text suggests.

> +static int intel_gpio_get_direction(struct gpio_chip *gc, unsigned int gpio)
> +{
> +	struct intel_gpio_chip *chip = to_intel_gpio(gc);
> +	u32 padcfg0;
> +
> +	padcfg0 = intel_gpio_padcfg0_value(chip, gpio);
> +
> +	if (padcfg0 & PADCFG0_PMODE_MASK)
> +		return -EINVAL;
> +
> +	if (padcfg0 & PADCFG0_GPIOTXDIS)
> +		return GPIOF_DIR_IN;
> +
> +	return GPIOF_DIR_IN;

Your never return GPIOF_DIR_OUT. Is this intended?

> +	ret = gpiochip_add(&intel_gpio->chip);
> +
> +	if (ret) {
> +		dev_err(dev, "Couldn't add gpiochip: %d\n", ret);

Nitpick: %pe\n", ERR_PTR(ret)

> +		kfree(intel_gpio);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct driver_d intel_gpio_driver = {
> +	.name = "intel-gpio",
> +	.probe = intel_gpio_probe,
> +};
> +
> +coredevice_platform_driver(intel_gpio_driver);

Who will register this device? Is it possible to add an ACPI table match
(like itco_wdt does for example) for your SoC and then register the device
there like Linux does?

This would make extension for more SoCs easier in future.

> diff --git a/include/platform_data/gpio-intel.h b/include/platform_data/gpio-intel.h
> new file mode 100644
> index 0000000000..f04baadd4d
> --- /dev/null
> +++ b/include/platform_data/gpio-intel.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#ifndef __GPIO_INTEL_H
> +#define __GPIO_INTEL_H
> +
> +struct gpio_intel_platform_data {
> +	unsigned int	ngpios;
> +};

I'd suggest you add a add_intel_gpio_device helper here that would create a suitable
device. This could be then called from the ACPI driver probe or from board code if
discoverability is not possible.


Cheers,
Ahmad

> +
> +#endif /* __GPIO_INTEL_H */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



