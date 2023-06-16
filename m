Delivery-date: Fri, 16 Jun 2023 14:15:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8MA-00908N-9v
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 14:15:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA8M5-0003kb-Jq
	for lore@pengutronix.de; Fri, 16 Jun 2023 14:15:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o7iBofhVBseenB0N7XA0elJoFsxw0rfgeEoNEp+oCgA=; b=MfAZffllCGNDBcjbbDqfZHmT9+
	cUzsa2m5nCTI5TzX3YdxN/bmwUcHYehVFrT8+TbjPa7sbZzrte8MnKGhQTVwR1BaUTOnNeLB40pF7
	l/aS1ba5anQIguIO9gFUq8PKzzTXKfPtZSCd/ERMiFEXKB/5OhD5zub5RXp7jRw8hw7VQGW8d6ZLM
	N+VQAnItsQmxGYOF7pPc6Znypd0mb6OKiosEoom0qEr64JIRyTzj7q0qYAXtN+VLozjG8D9AChzen
	f8vStKrFix03dnTHQe2MhnORerw6+EIdUW7MW8bVF7tPP2Yyqv1NkaWVJeHIyPrcO1YDDN/fxWVoK
	rgtbbMvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA8L2-000XWH-2H;
	Fri, 16 Jun 2023 12:14:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA8L0-000XVq-0N
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 12:13:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qA8Kx-0003YK-3j; Fri, 16 Jun 2023 14:13:55 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qA8Kw-00008y-MK; Fri, 16 Jun 2023 14:13:54 +0200
Date: Fri, 16 Jun 2023 14:13:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
	Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20230616121354.3oyotrgnlvnj7the@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
 <20230614100747.3368109-11-a.fatoum@pengutronix.de>
 <20230616081431.GG15436@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230616081431.GG15436@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_051358_172257_FB8A5DC1 
X-CRM114-Status: GOOD (  20.65  )
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
Subject: Re: [PATCH v2 10/10] gpiolib: add of_xlate support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-16, Sascha Hauer wrote:
> On Wed, Jun 14, 2023 at 12:07:47PM +0200, Ahmad Fatoum wrote:

...

> > diff --git a/include/gpio.h b/include/gpio.h
> > index 5f2c16584c3b..9951532084ac 100644
> > --- a/include/gpio.h
> > +++ b/include/gpio.h
> > @@ -168,6 +168,7 @@ int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val);
> >  #endif
> >  
> >  struct gpio_chip;
> > +struct of_phandle_args;
> >  
> >  struct gpio_ops {
> >  	int (*request)(struct gpio_chip *chip, unsigned offset);
> > @@ -177,6 +178,22 @@ struct gpio_ops {
> >  	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
> >  	int (*get)(struct gpio_chip *chip, unsigned offset);
> >  	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
> > +
> > +#if defined(CONFIG_OF_GPIO)
> > +	/*
> > +	 * If CONFIG_OF_GPIO is enabled, then all GPIO controllers described in
> > +	 * the device tree automatically may have an OF translation
> > +	 */
> > +
> > +	/**
> > +	 * @of_xlate:
> > +	 *
> > +	 * Callback to translate a device tree GPIO specifier into a chip-
> > +	 * relative GPIO number and flags.
> > +	 */
> > +	int (*of_xlate)(struct gpio_chip *gc,
> > +			const struct of_phandle_args *gpiospec, u32 *flags);
> > +#endif
> >  };
> >  
> >  struct gpio_chip {
> > @@ -185,6 +202,15 @@ struct gpio_chip {
> >  	int base;
> >  	int ngpio;
> >  
> > +#if defined(CONFIG_OF_GPIO)
> > +	/**
> > +	 * @of_gpio_n_cells:
> > +	 *
> > +	 * Number of cells used to form the GPIO specifier.
> > +	 */
> > +	unsigned int of_gpio_n_cells;
> > +#endif
> 
> This patch adds new fields to struct gpio_chip and struct gpio_ops
> #ifdeffed with CONFIG_OF_GPIO, but the code accessing these fields is
> not guarded with that #ifdef resulting in compilation failures in
> several defconfigs like for example animeo_ip_defconfig.

Argh..

> I fixed this by adding the missing #ifdefs in the code.

Thanks a lot.

Regards,
  Marco


