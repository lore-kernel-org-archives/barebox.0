Delivery-date: Tue, 20 Jun 2023 08:14:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUdg-00E4m6-2L
	for lore@lore.pengutronix.de; Tue, 20 Jun 2023 08:14:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBUdd-0000uA-JR
	for lore@pengutronix.de; Tue, 20 Jun 2023 08:14:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HHoDeMdsfFjsk7VP9pdNeiuZPHqixGeUh893NlSURHM=; b=S5Rwm9AB4ozlsFssOQp3xtls0b
	Joep4RXuuP54VR5bBqSZkC4u55nrudo06Xkfu4e+0/FcEgVqPURwNqpkW07nfTase3r+bYcjGvmXv
	RgjSqFrCf3lAvvoTU6Oe5e7TKlU5g0zFkZ1LVkzTbE+rhv5nsCHHt7S/99PgI5yNkU+4k7gizMWyG
	quC+z7TuAbaXZyv7ExYQzB24ZowC/vffTy1va3FhT9wkcOGK2nOyG42aw06ipiwYFdJy/th5oDIpL
	Qnm1+HpHMDc8Rp4ZSEh0xIQI/ZjILCvw2ZQz+6Q+k9oOIxJoZcDB5stjy5GXR7/ahb3ZZcbRo7KUG
	kUt1axEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUcX-00AFgI-2v;
	Tue, 20 Jun 2023 06:13:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUcT-00AFfn-30
	for barebox@lists.infradead.org;
	Tue, 20 Jun 2023 06:13:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBUcS-0000ph-1A; Tue, 20 Jun 2023 08:13:36 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBUcR-00026q-PV; Tue, 20 Jun 2023 08:13:35 +0200
Date: Tue, 20 Jun 2023 08:13:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230620061335.y3fs5wulabyetp7f@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
 <20230614135452.1884124-6-a.fatoum@pengutronix.de>
 <20230620052045.deruonvmw3sq42is@pengutronix.de>
 <3aa4d7ba-1b78-7efc-493f-9e4144fe0c17@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3aa4d7ba-1b78-7efc-493f-9e4144fe0c17@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_231337_988582_E8AB9403 
X-CRM114-Status: GOOD (  20.23  )
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
Subject: Re: [PATCH 05/10] gpiolib: export proper gpio descriptor API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-20, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 20.06.23 07:20, Marco Felsch wrote:
> >> -static unsigned gpioinfo_chip_offset(struct gpio_desc *desc)
> >> +static unsigned gpioinfo_chip_offset(const struct gpio_desc *desc)
> > 
> > Why do we stick with gpioinfo_* here? IMHO we could use
> > gpiodesc_chip_offset() since the gpioinfo is gone.
> 
> gpioinfo_ is internal. gpiod_ is external. I thought about renaming
> gpioinfo_ to gpiodesc_, but found it confusing, because they are
> too similar in name.

The gpioinfo_ is even more confusing (at least to me) since the struct
the name is based on is renamed once this series gets merged.

> >>  {
> >>  	return (desc - gpio_desc) - desc->chip->base;
> >>  }
> >>  
> >> -static int gpio_adjust_value(struct gpio_desc *desc,
> >> +static int gpio_adjust_value(const struct gpio_desc *desc,
> >>  			     int value)
> >>  {
> >>  	if (value < 0)
> >> @@ -159,17 +189,40 @@ void gpio_free(unsigned gpio)
> >>  {
> >>  	struct gpio_desc *desc = gpio_to_desc(gpio);
> >>  
> >> +	gpioinfo_free(desc);
> > 
> > Same for gpioinfo_free() which could become gpiodesc_free().
> 
> See above.
> 
> >>  int gpio_direction_output(unsigned gpio, int value)
> >>  {
> >> @@ -252,13 +359,27 @@ int gpio_direction_output(unsigned gpio, int value)
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> -	return gpioinfo_direction_output(desc, value);
> >> +	return gpiod_direction_output_raw(desc, value);
> >>  }
> >>  EXPORT_SYMBOL(gpio_direction_output);
> > 
> > This function should be deleted since we don't support the global 'int'
> > gpio anymore.
> 
> We do support it. Lots of code across the tree doesn't use gpiod_ API.

Argh.. you're right. I thought, that your adaption patches do cover all
users. Sorry my bad.

> >>  EXPORT_SYMBOL(gpio_direction_input);
> > 
> > gpio_direction_input should be deleted as well?
> 
> Once we have switches all over to use gpiod_ API, we could drop it, yes.
> Patches to migrate existing users are certainly welcome ;)

Hm.. we should deprecate this function to make it clear and to encourage
board maintainers to switch ;)

> 
> Cheers,
> Ahmad
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


