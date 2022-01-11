Delivery-date: Tue, 11 Jan 2022 23:14:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n7PPc-00HHh7-Ti
	for lore@lore.pengutronix.de; Tue, 11 Jan 2022 23:14:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n7PPa-0000XW-UZ
	for lore@pengutronix.de; Tue, 11 Jan 2022 23:14:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxvgzBRJ6/JGTh5aTJar+ajPFEWQuxfqu1mt4TcBmIo=; b=1SYasEUUtcLLYy
	TqF5JRUc6WRknXzmlt3ZcKaXRilWAejt6ZFcAYz4uvW41qlGn2KPHY6oBLnE6rXj91qjiJsYYXYEP
	qtCj3njx2VU63xeX6fz570pMCBGPW7Z8aMhioeD79HM3QpE3XKBkBp48Sqn/eNK/BsQVVX+ahdYHV
	VuGImnBU9UYqEpr8a22tS66+9fGZ52I21XFSY8PfdA7KNbga0g2KL3IMcZ5rt7PfWIs/m6HfGLKib
	r9x7DLHMlCG58FooJ6kF7AmH+TXwum9cHatU5ye96Bmqv691zvdAO4nk4RHMnKTPm6sckLKlJJDPg
	QU02Sx9aLJ4tP8llyPNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7PNx-000KSJ-Tn; Tue, 11 Jan 2022 22:12:57 +0000
Received: from mx1.smtp.larsendata.com ([91.221.196.215])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7PNs-000KR8-JU
 for barebox@lists.infradead.org; Tue, 11 Jan 2022 22:12:54 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id b3b97a0c-732b-11ec-b20b-0050568c148b;
 Tue, 11 Jan 2022 22:13:27 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 6BC60194B10;
 Tue, 11 Jan 2022 23:12:47 +0100 (CET)
Date: Tue, 11 Jan 2022 23:12:39 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Yd4A12htShfcvl6+@ravnborg.org>
References: <Ydsrrj76kk6tmD2X@ravnborg.org>
 <d8f67d11-e18d-0bb5-ec76-b8bbfce75add@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8f67d11-e18d-0bb5-ec76-b8bbfce75add@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_141252_834996_E00F063A 
X-CRM114-Status: GOOD (  30.96  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Q about bootstrap support for at91sam92* boards and proposal for
 retirement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

> > I have the code locally - but this time I will not have it posted before
> > it is tested.
> > 
> > Then I cloned the latest at91bootstrap - but they no longer support old
> > at91sam92xx CPUs.
> > So it was time to enable bootstrap support for at91sam9263.
> > 
> > In the past I had something working, but alas no luck this time.
> > 
> > Can anyone (Ahmad?) help me a little how to get the bootstrap
> > functionality working on the at91sam9263?
> > 
> > I do not expect patches, but I hope for something that can point me in
> > the right way to do it.
> > 
> > I have skov-arm9cpu boards (plenty - as they are mostly retired by SKOV)
> > and one at91sam9263ek where I can test.
> 
> The skov-arm9cpu looks like it already runs first stage without at91bootstrap?
> So the issue is only with at91sam9263ek?

For the moment my focus is on the skov-arm9cpu - and here bootstrap is
not (yet) functional. But I think with all the good feedback from you
and Oleksij I should manage. Thanks for the replies!

> > We see very little interest in at91sam92* boards and we could decide
> > to retire all the boards that are not updated to multi-image.
> 
> As long as it works, I guess most people don't see a reason make interest
> publicly known.
> 
> > This could simplify things - and if there is interest the missing boards
> > can be brought back to life provided they are updated to multi image.
> > Any comments on this?
> 
> I have only worked on SAMA5D3 and SAMA5D2. Of course, I'd like to see
> board code in AT91 replaced with DT-enabled/multi-image-compatible code,
> but I don't think it will happen. I don't think the maintenance burden
> is high, so I'd just leave it as is. If it bitrots and people complain,
> we can nudge them into the right direction.

OK, you are right that if it just works no reason to touch it.
I will do the patches alongside the current codebase then.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

