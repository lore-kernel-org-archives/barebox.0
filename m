Delivery-date: Mon, 25 Nov 2024 11:18:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWAp-000A4B-04
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 11:18:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWAo-0007m6-TZ
	for lore@pengutronix.de; Mon, 25 Nov 2024 11:18:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0bEG7LIPChYwKtYb0/HU+8+XPxPzEncHjxaw8U40oaA=; b=YMZR7C3lAZ5v2M+GmCwJmYXzkb
	Q4YnLRTuTB9wfo2kEAW+CYeSnk/rfmW4WZCYe7PWDQ/wBSy0e9Ra6rZLbg1f7Fm2CLfqlKKoh1wkV
	x7a8FJlfU/WH1TcXSRf7ppfXd7/7mzKwR4qC17IHSbigcx9A3qpFsLDqU6TPE/PwqXwxjtOiYh8Rq
	5hUAwpuOuuFJO2y3AggMeQkb8L1nxLf2ovSgXkOSZpVljdfxwpu0cFjbIb5d1G+4h+oqrt+s0m5mB
	y4ZLr40PT5ZmmaDnWJL/J61TrmPhKqYK35h6rJEN7khPQVdai8Rj7LM63iJXqfngXntBRTnFn8RuU
	EviQ8Oxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWAI-00000007iMU-0XrN;
	Mon, 25 Nov 2024 10:17:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFVtM-00000007fUb-3o82
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 10:00:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tFVtK-00052z-AG; Mon, 25 Nov 2024 11:00:26 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tFVtJ-0003eK-18;
	Mon, 25 Nov 2024 11:00:26 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tFVtJ-00EdEM-38;
	Mon, 25 Nov 2024 11:00:26 +0100
Date: Mon, 25 Nov 2024 11:00:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20241125100025.gpcfjgmwsovye4vn@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
 <20241115195747.997164-6-m.felsch@pengutronix.de>
 <Z0RBEioJ_pm7K95U@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z0RBEioJ_pm7K95U@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_020028_945625_3C9E1DFA 
X-CRM114-Status: GOOD (  24.96  )
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
Subject: Re: [PATCH 06/12] spi: add support to handle cs-gpios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-11-25, Sascha Hauer wrote:
> On Fri, Nov 15, 2024 at 08:57:41PM +0100, Marco Felsch wrote:
> > At the moment all drivers have to parse the cs-gpios on their own and
> > have to implement the mapping. By this commit we add the support to
> > handle this within the core and if there is a valid CS GPIO for a device
> > we assign it accordingly.
> > 
> 
> ...
> 
> >  	 * likely need more hooks for more protocol options affecting how
> > @@ -156,6 +158,9 @@ static inline void spi_set_ctldata(struct spi_device *spi, void *state)
> >   *	the device whose settings are being modified.
> >   * @transfer: adds a message to the controller's transfer queue.
> >   * @cleanup: frees controller-specific state
> > + * @cs_gpiods: Array of GPIO descriptors to use as chip select lines; one per CS
> > + *	number. Any individual value may be NULL for CS lines that
> > + *	are not GPIOs (driven by the SPI controller itself).
> >   * @list: link with the global spi_controller list
> >   *
> >   * Each SPI controller can communicate with one or more @spi_device
> > @@ -233,6 +238,10 @@ struct spi_controller {
> >  	/* called on release() to free memory provided by spi_controller */
> >  	void			(*cleanup)(struct spi_device *spi);
> >  
> > +	/* GPIO chip select */
> > +	struct gpio_desc	**cs_gpiods;
> > +	bool			use_gpio_descriptors;
> 
> You forgot to copy the documentation for this member.

Sure, I will fix this.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


