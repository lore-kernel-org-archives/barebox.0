Delivery-date: Mon, 05 Jun 2023 11:52:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q66tN-00Bcwc-Pb
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 11:52:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q66tL-0008Ts-Aw
	for lore@pengutronix.de; Mon, 05 Jun 2023 11:52:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EtpI6zdGfIK3AmLejOCjB1mVIs+7CYx0GmLpIrgICxs=; b=GV2PDvfHqwAS3NB7suFBJ34MPG
	Z1wHiij/fAbcK2shOnThJNXogFL9ffzGNOHQjlQJ0/YhZNLU+LDuuyWIybsVyDUEOu5FGg1/KvLgm
	xSHC0I1mkWEQz/JMmW8vpsMhvWLr4y3xgihupgipf/ZnAvdCg8UZkneEllRTwkY/X+KPgdQymQrWq
	Zs5ow/RhAA8+KbzNh3t6ZdegkuM4EhsPFEEMx/4jom7LXqRGEtRYzWuTOKgtDb1GKBVHZ98gbGSTO
	xLJeJzIt+eyNOpigYGjF+B0jLqAEijE8ogGClaAXHeVl5JefUzK9/VwlMq6zh6iASFcqVAoVrmTAp
	PNRaWOeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q66rw-00Eudr-26;
	Mon, 05 Jun 2023 09:51:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q66rt-00EucT-10
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 09:51:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q66rp-0008G1-Fy; Mon, 05 Jun 2023 11:51:13 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q66ro-00021P-Ub; Mon, 05 Jun 2023 11:51:12 +0200
Date: Mon, 5 Jun 2023 11:51:12 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20230605095112.klegu75j75k52q6g@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-11-m.felsch@pengutronix.de>
 <ZH2TgqgGagHTCfEQ@tour>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZH2TgqgGagHTCfEQ@tour>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_025117_348183_3AD90D6D 
X-CRM114-Status: GOOD (  24.14  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/10] gpiolib: add of_xlate support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On 23-06-05, Jules Maselbas wrote:
> Hi Marco,
> 
> I tried this patch series on my sunxi branch and it applies nicely
> but failed to get the gpio with the following message:
> of_get_named_gpio_flags: unable to get gpio num of device 1c20800.pinctrl@1c20800.of: -22
> 
> The error -22 is for -EINVAL which comes form of_xlate_and_get_gpiod_flags
> because the test `chip->of_gpio_n_cells != gpiospec->args_count` fails,
> `of_gpio_n_cells` hasn't been set by the driver and it value was 0.
> 
> I wonder if `of_gpio_n_cells` should be set by the driver or by parsing the
> #gpio-cells property from device-tree?

The driver need to define the cells since the driver is the one
interpreting the cells, please have a look on:

https://elixir.bootlin.com/linux/v6.4-rc1/source/drivers/pinctrl/sunxi/pinctrl-sunxi.c#L1583

> By setting the expected value in the driver resolves this "issue".

Cool :) so you are able to controll the sunxi-gpios? :)

Thanks a lot for testing. I will send a v2 with your found spelling
issues.

Regards,
  Marco

> Cheers,
> -- Jules
> 
> > diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> > +static int of_xlate_and_get_gpiod_flags(struct gpio_chip *chip,
> > +					struct of_phandle_args *gpiospec,
> > +					enum of_gpio_flags *flags)
> > +{
> > +	if (chip->of_gpio_n_cells != gpiospec->args_count)
> > +		return -EINVAL;
> error message caused by this ^
> 
> > +
> > +	return chip->ops->of_xlate(chip, gpiospec, flags);
> > +}
> > +
> >  /**
> >   * of_get_named_gpio_flags() - Get a GPIO number and flags to use with GPIO API
> >   * @np:		device node to get GPIO from
> > @@ -61,7 +99,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
> >  			   int index, enum of_gpio_flags *flags)
> >  {
> >  	struct of_phandle_args gpiospec;
> > -	struct device *dev;
> > +	struct gpio_chip *chip;
> >  	int ret;
> >  
> >  	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
> > @@ -72,27 +110,21 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
> >  		return ret;
> >  	}
> >  
> > -	dev = of_find_device_by_node(gpiospec.np);
> > -	if (!dev) {
> > -		pr_debug("%s: unable to find device of node %s\n",
> > -			 __func__, gpiospec.np->full_name);
> > +	chip = of_find_gpiochip_by_xlate(&gpiospec);
> > +	if (!chip) {
> >  		ret = -EPROBE_DEFER;
> >  		goto out;
> >  	}
> >  
> > -	ret = gpio_get_num(dev, gpiospec.args[0]);
> > -	if (ret == -EPROBE_DEFER)
> > -		goto out;
> > +	ret = of_xlate_and_get_gpiod_flags(chip, &gpiospec, flags);
> >  	if (ret < 0) {
> >  		pr_err("%s: unable to get gpio num of device %s: %d\n",
> got this error message here
> 
> > -			__func__, dev_name(dev), ret);
> > +			__func__, dev_name(chip->dev), ret);
> >  		goto out;
> >  	}
> >  
> > -	if (flags) {
> > -		*flags = gpiospec.args[1];
> > +	if (flags)
> >  		of_gpio_flags_quirks(np, propname, flags, index);
> > -	}
> >  
> >  out:
> >  	of_node_put(gpiospec.np);
> 


