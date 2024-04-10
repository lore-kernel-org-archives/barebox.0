Delivery-date: Wed, 10 Apr 2024 09:40:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruSZd-005kMH-0S
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 09:40:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruSZc-0000b7-CG
	for lore@pengutronix.de; Wed, 10 Apr 2024 09:40:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6CNCy5LFZjROBuxO9tmTAnx1MKqsCrWgVzV75KlQEP8=; b=Pf3KOyQaOGW0+6TXrI3fPZB73Q
	wJIH+Cn4IooLrYBrSXyHoQhI8vpDmv2O6bi3gYPezLlYIeRkFujMaCrp5Jf63nFuPpze58wOFmAbW
	bvMmPTkWweVv1mvoHw4wjpZxz2qNhzDvyAsus+haosbQbcItxJ9EDl5xO0cFXSR2ea0lqAEg6Idbj
	bNPZW70t+s9u3B2UAK9u/rWv5xyqDDanSEndLCSuhZivv/QRcC7umhcTeLCZ7vA9F7KX4az4GdmTj
	icNpsi1ewoPItrk7suWqwfXWJarWa4Rhyfj0oJMPnmCLxGG9tz8JcJemagEpuKwhbGO1drLxbfvjW
	woK0MSnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruSZ1-00000005eOP-1L8V;
	Wed, 10 Apr 2024 07:40:11 +0000
Received: from smtp.cesky-hosting.cz ([2a00:1ed0:2:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruSYw-00000005eFh-0N54
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 07:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202308; t=1712734788;
	bh=swnhAfrdpW+yoGqBsI2vROCMuCKyyGXmV8D2eje3lQI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OYRFYb57s9oVJNmMOlW3rCPFqAqrP9y2j+sTSOrRnjcjNi6T1yXl7lSCIG7EZvBE2
	 N3V4oPhkmuX4tMjhKdGqcmPPxL3055JV+swgk+mgpsw+UWjUMxGYjNpbd18yyuZ6Ws
	 tNv36Kv/V4JDgOt33+hQsK1JMhhk5f6255otEWDFMU0dwraIRczX9sWWk8MivmIEi9
	 EvccZqBnMvVECKnksOng0e9r9pcZ13dSTfSayw5vXQSSsNUhmG+YQJwthOx/i0Ybej
	 JrIibFKUEBGuMvzW74GKAfx/0M0y4bAxg8jCk7KNjji0maacLs+7gBTqNOANDgg0Bh
	 bFzEXz4YQqyLQ==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
X-Thin-Conversation: conversation
Received: from debian (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 69B6F495;
	Wed, 10 Apr 2024 09:39:46 +0200 (CEST)
Date: Wed, 10 Apr 2024 09:39:44 +0200
From: Tomas Marek <tomas.marek@elrest.cz>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZhZCQCMlD7Q-51Co@debian>
References: <20240409071422.5934-1-tomas.marek@elrest.cz>
 <46db4b10-73d7-4f33-9fc9-e383326bfe5d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <46db4b10-73d7-4f33-9fc9-e383326bfe5d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_004006_651833_DA403255 
X-CRM114-Status: GOOD (  46.44  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpio: Add Intel gpio controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

many thanks for the review.

On Tue, Apr 09, 2024 at 09:41:28AM +0200, Ahmad Fatoum wrote:
> Hello Tomas,
> 
> On 09.04.24 09:14, Tomas Marek wrote:
> > Signed-off-by: Tomas Marek <tomas.marek@elrest.cz>
> 
> Thanks for your patch. I have a soft spot for barebox-as-efi-payload,
> so it's cool to see you contributing new features.
> 
> It also makes me curious what more drivers are you intending to
> contribute. :-)

Nice to hear someone is interested in :-).

> 
> Some review below. 
> 
> > ---
> >  drivers/gpio/Kconfig               |   5 +
> >  drivers/gpio/Makefile              |   1 +
> >  drivers/gpio/gpio-intel.c          | 198 +++++++++++++++++++++++++++++
> >  include/platform_data/gpio-intel.h |  10 ++
> >  4 files changed, 214 insertions(+)
> >  create mode 100644 drivers/gpio/gpio-intel.c
> >  create mode 100644 include/platform_data/gpio-intel.h
> > 
> > diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> > index 9f27addaa2..094c9b7fd4 100644
> > --- a/drivers/gpio/Kconfig
> > +++ b/drivers/gpio/Kconfig
> > @@ -219,6 +219,11 @@ config GPIO_LATCH
> >  	  Say yes here to enable a driver for GPIO multiplexers based on latches
> >  	  connected to other GPIOs.
> >  
> > +config GPIO_INTEL
> > +	tristate "Intel GPIO driver"
> 
> Please add a depends on X86 || COMPILE_TEST here, so other architectures
> aren't prompted for this driver by default.

Make sense, I’ll do so.

> 
> > +	help
> > +	  Say Y or M here to build support for the Intel GPIO driver.
> 
> Nitpick: We only have [M]odule support for ARM, so tristate == bool in your
> case and one couldn't set M here, despite what the help text suggests.

I understand. I will change 'tristate' to 'bool' and update the help
to avoid any confusion.

> 
> > +static int intel_gpio_get_direction(struct gpio_chip *gc, unsigned int gpio)
> > +{
> > +	struct intel_gpio_chip *chip = to_intel_gpio(gc);
> > +	u32 padcfg0;
> > +
> > +	padcfg0 = intel_gpio_padcfg0_value(chip, gpio);
> > +
> > +	if (padcfg0 & PADCFG0_PMODE_MASK)
> > +		return -EINVAL;
> > +
> > +	if (padcfg0 & PADCFG0_GPIOTXDIS)
> > +		return GPIOF_DIR_IN;
> > +
> > +	return GPIOF_DIR_IN;
> 
> Your never return GPIOF_DIR_OUT. Is this intended?

Silly me. No, it was not intentional; it's a mistake. The last statement
should return GPIOF_DIR_OUT. Thank you for pointing that out. I'll fix it.

> 
> > +	ret = gpiochip_add(&intel_gpio->chip);
> > +
> > +	if (ret) {
> > +		dev_err(dev, "Couldn't add gpiochip: %d\n", ret);
> 
> Nitpick: %pe\n", ERR_PTR(ret)

Thanks for hit.

> 
> > +		kfree(intel_gpio);
> > +		return ret;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static struct driver_d intel_gpio_driver = {
> > +	.name = "intel-gpio",
> > +	.probe = intel_gpio_probe,
> > +};
> > +
> > +coredevice_platform_driver(intel_gpio_driver);
> 
> Who will register this device? Is it possible to add an ACPI table match
> (like itco_wdt does for example) for your SoC and then register the device
> there like Linux does?
> 
> This would make extension for more SoCs easier in future.

I have registered the device in the board code now. In theory, it is
definitely possible to register the device using ACPI match, and I agree
with you that it's useful.

Unfortunately, the GPIO community resource definition is inside the DSDT
ACPI table for my device. I might be wrong here, but I think that Barebox
parses root tables but doesn’t delve into the nested DSDT at the moment.
So it's getting a bit complicated here. I can take a closer look at it
later (without any guarantee of success, of course :-)), but I would
consider it a different patch if you don't mind.

Needless to say, I am coming from the ARM world and haven't found my way
the ACPI just yet :-).

> 
> > diff --git a/include/platform_data/gpio-intel.h b/include/platform_data/gpio-intel.h
> > new file mode 100644
> > index 0000000000..f04baadd4d
> > --- /dev/null
> > +++ b/include/platform_data/gpio-intel.h
> > @@ -0,0 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > +
> > +#ifndef __GPIO_INTEL_H
> > +#define __GPIO_INTEL_H
> > +
> > +struct gpio_intel_platform_data {
> > +	unsigned int	ngpios;
> > +};
> 
> I'd suggest you add a add_intel_gpio_device helper here that would create a suitable
> device. This could be then called from the ACPI driver probe or from board code if
> discoverability is not possible.

Is following code what you have in mind?

include/platform_data/gpio-intel.h:

	struct gpio_intel_platform_data {
		resource_size_t community_base;
		resource_size_t community_size;
		unsigned int	ngpios;
	};

	static inline struct device *add_intel_gpio_device(
		struct gpio_intel_platform_data *pdata
	)
	{
		return add_generic_device("intel-gpio", DEVICE_ID_DYNAMIC, NULL,
			pdata->community_base, pdata->community_size,
			IORESOURCE_MEM, pdata);
	}


Best regards

Tomas

> 
> 
> Cheers,
> Ahmad
> 
> > +
> > +#endif /* __GPIO_INTEL_H */
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


