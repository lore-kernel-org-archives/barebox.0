Delivery-date: Mon, 03 Jan 2022 17:19:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4Q3r-00A0Su-NO
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 17:19:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4Q3q-0000Fs-KF
	for lore@pengutronix.de; Mon, 03 Jan 2022 17:19:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WR00pYfsmwjyjm/v+SgA7gINRuxoCyRqfGfelOXawlc=; b=JfXRCYOcszAPw2
	t7D7qnLOmic1yprNyn6cDhf7d8Lcmw8KU/xKvF2GIlL2153sKp6yuwBixj+7yj3KjylEoivrhZN9R
	LR4UyGjQQzW/U87Dg/xL3AvLoY4pQm23HEmZyh60E8oLghmIcEZVflO4LA9WApb/OhQYODcW0hcE/
	pwQ7o+g3U5LA0NoXTf58SSl0bKGtMUNzNjX5PRVyklJ2cBuaXMvsDSwgfiRPKN+OLikFFQYZFfNob
	/EIK4YPc25/Zn15WUxdzYzPEwVYy2+kLswd6BS5OtVsDADGV07ME14CBQmoDz3KPSUBRaPl03vg07
	eC6mAidBjNwoI8SX+kRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Q2e-009RpN-Uh; Mon, 03 Jan 2022 16:18:37 +0000
Received: from mx1.smtp.larsendata.com ([91.221.196.215])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Q2Z-009Ro6-R8
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 16:18:33 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id e103436b-6cb0-11ec-b20b-0050568c148b;
 Mon, 03 Jan 2022 16:19:08 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 6534F194B04;
 Mon,  3 Jan 2022 17:18:34 +0100 (CET)
Date: Mon, 3 Jan 2022 17:18:28 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YdMh1FIPwhP9ga9C@ravnborg.org>
References: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
 <20220103115718.1723730-2-a.fatoum@pengutronix.de>
 <YdMgSbOoD/1csUNT@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YdMgSbOoD/1csUNT@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_081832_048379_79C51CBC 
X-CRM114-Status: GOOD (  19.37  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/5] pwm: atmel: point MMIO accesses at correct
 address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 03, 2022 at 05:11:53PM +0100, Sam Ravnborg wrote:
> Hi Ahmad,
> 
> On Mon, Jan 03, 2022 at 12:57:14PM +0100, Ahmad Fatoum wrote:
> > The base address for MMIO writes was the address of the resource struct,
> > not the start address pointed at by it.
> > 
> > Change untested, but it doesn't look like this driver could ever have
> > worked.
> 
> You are right that I never got around to see backlight dimming work.
> I recall that backlight worked and then the pwm driver was added as part
> of several other patches for barebox.
> I should have dropped the patch until I had seen it actually work.
> 
> But nice catch!
> 
> I may try to dust of the skov board where this is used to test it.
> But these days I play with an i.MX6 board which has a bit more power,
> so no promises.

For the patch btw:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

