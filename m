Delivery-date: Fri, 04 Apr 2025 09:30:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0bVZ-0089p1-2l
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 09:30:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0bVZ-0005il-8J
	for lore@pengutronix.de; Fri, 04 Apr 2025 09:30:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s6So6CmacQ29rsYgXlqLTUXbrHQ5DJFIArxargU93zM=; b=FNalHJu2RgsC1LzmKG3qOrrENA
	Rx/CUFw8rvsVecg6R4XRmStIf6DZ1crhUGmJDaKqbW/mbYOVgggnFBDbXvKY+GV3B96lG8z3163nV
	i/1pMmZdbia0vWE2VzHx6OYj435ReW6b48uqGLrqW2mCETHrtdD80tINvWxe96C0dtpUJlrI2VljK
	2YrrMLzV851kznwDvg588kddSliJvmx7pruCcohQlG+NGK/Ty0hVtkJuM9iLMI2obq0V52GC5FvQT
	/f9yUqLivyobMqk3qBaa+nb1QB843P0Av/dFo64Q0XIydublrTjwH8I6j8zcsQAEa95n9Qq9VoODM
	eLCe2biA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0bUs-0000000B2SR-3Juu;
	Fri, 04 Apr 2025 07:29:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0bUp-0000000B2Rl-1eRK
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 07:29:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u0bUn-0005ba-FF; Fri, 04 Apr 2025 09:29:45 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u0bUn-003EPm-0u;
	Fri, 04 Apr 2025 09:29:45 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u0bUn-00Gfq2-0Y;
	Fri, 04 Apr 2025 09:29:45 +0200
Date: Fri, 4 Apr 2025 09:29:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z--KaWCsJbI7hyxw@pengutronix.de>
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de>
 <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
 <Z-6WbLbIkVS_wvLj@pengutronix.de>
 <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_002947_430749_033F8166 
X-CRM114-Status: GOOD (  21.75  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 03, 2025 at 05:20:33PM +0300, Alexander Shiyan wrote:
> I found this hack:
> https://github.com/u-boot/u-boot/blob/master/drivers/clk/rockchip/clk_rk3588.c#L1933

Let's do the same then.

It would be nicer to have the CPLL setting in the assigned-clock-rates
property. That should be done in the upstream dtsi though, overwriting
the assigned-clock-rates in the barebox dtsi would mean we would have to
copy the many existing settings and hope they don't change upstream.

Sascha

> 
> чт, 3 апр. 2025 г. в 17:08, Sascha Hauer <s.hauer@pengutronix.de>:
> >
> > On Thu, Apr 03, 2025 at 05:01:05PM +0300, Alexander Shiyan wrote:
> > > Thanks Sascha!
> > >
> > > So something is wrong here.
> > > At least the GMAC0/1 interfaces end up with the wrong frequency.
> > > I have another image with u-boot and Rockchip kernel where CPLL
> > > is 1.5GHz and network is ok.
> >
> > The only place where the PLL rates are configured in barebox is via
> > assigned-clock-rates in the clock controller node. PLL_CPLL doesn't show
> > up there, so I would assume it is just left to the default whatever that
> > is.
> >
> > You could chainload barebox from U-Boot and see what the CPLL rate is
> > then.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


