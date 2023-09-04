Delivery-date: Mon, 04 Sep 2023 09:18:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd3rN-003QG1-T4
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 09:18:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd3rL-0001r6-UJ
	for lore@pengutronix.de; Mon, 04 Sep 2023 09:18:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/WOU0Mzhgi8pe/VUgrqK78KjEBRA8fSnpZAFy9g5f+s=; b=ZtghBbeOTpV9npCUnywihIHScS
	4mg4dD6Ew5KX4laojRG0YpUSYys1LKvn+NRv3vJvEE1X092OndaTSThLXxUw4aER8jPTEpGPzBe+n
	+5JFxfHKMsBIxl9WOd5iZ1hZrTfhZauIg7rEOeSHYZT0kjdNxCPG7Zp83dUo/C8+MFzSK30KM6l52
	RU0BMOVpec3NF3UoJJcEZo+wZTApROaqbMM25Xf3dStGeb5Aj7QNYy5R1alCk26fj/v9AwWc7bun4
	RGwzH0RLmvkQCswjGkq13jOJwlMEvzCdKFCjSQOyu0OJiH9CF+CPXLsOe91uizhkHOl+ZQpNf2e7a
	oP9nYcWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd3q7-003Sz9-1G;
	Mon, 04 Sep 2023 07:17:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd3q3-003Syc-2Z
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 07:17:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd3q1-0000bi-30; Mon, 04 Sep 2023 09:17:33 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd3q0-003p9N-GA; Mon, 04 Sep 2023 09:17:32 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd3pz-000uEq-CO; Mon, 04 Sep 2023 09:17:31 +0200
Date: Mon, 4 Sep 2023 09:17:31 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230904071731.GA189379@pengutronix.de>
References: <20230830104747.43193-1-eagle.alexander923@gmail.com>
 <20230830104747.43193-3-eagle.alexander923@gmail.com>
 <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
 <CAP1tNvQdQUhy_YcY_afTYQyHhgRsvhY5BEdu+p6Y+3oXVUX9nA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvQdQUhy_YcY_afTYQyHhgRsvhY5BEdu+p6Y+3oXVUX9nA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_001735_855989_4B9C8620 
X-CRM114-Status: GOOD (  23.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: boards: Add MyirTech MYD-YA15XC-T development
 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Thu, Aug 31, 2023 at 09:40:16AM +0300, Alexander Shiyan wrote:
> Hello Ahmad.
> 
> > Thanks for your patch. A few comments below.
> ...
> > > +ENTRY_FUNCTION(start_stm32mp15x_myir, r0, r1, r2)
> > > +{
> > > +     void *fdt;
> > > +
> > > +     stm32mp_cpu_lowlevel_init();
> > > +
> > > +     if (IS_ENABLED(CONFIG_DEBUG_LL))
> > > +             setup_uart();
> > > +
> > > +     fdt = __dtb_z_stm32mp15x_myirtech_myd_start + get_runtime_offset();
> > > +
> > > +     stm32mp1_barebox_entry(fdt);
> >
> > Same question: Do you use an old TF-A or why do you need a specific entry
> > point instead of barebox-stm32mp-generic-bl33.img?
> 
> Initially, I used the old version of TF-A, to facilitate the first
> start-up of the board.
> Now I'm using new version and FIP, so yes, this piece of code can be removed.
> 
> Thanks for the comments on the patch, I'll rework some parts of the code.
> 
> 2 Sascha: Is it possible to commit the first two parts of the patch
> now to minimize the overall work?

Just did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


