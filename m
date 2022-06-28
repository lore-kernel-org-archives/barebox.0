Delivery-date: Tue, 28 Jun 2022 23:20:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6IdE-000cyI-Hm
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 23:20:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6IdF-0000ZD-AG
	for lore@pengutronix.de; Tue, 28 Jun 2022 23:20:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Olg+jfqx0b1mKsAt9A3ftkl6+yoOPSSfslMfYFGYJQU=; b=UMvxqapTW18+0FvvUpfBgiXpxH
	/kMHkl9UXEWt6VSNJGO/2ENnhzBE+LFT2aUPWVpOOKp7TbxxelkBTSeZhH5oFrWOLz2/gpk6dzaJq
	VezaxrAPY35YjBY/ItDHWedCWDNvK9w0QTMt+2EE1FM5ZN38e/GQvi/K8ZLpH0BUwHdhIsDbd3wzs
	NdkbfFFXU2DmauN9Jx8izKvSGzBJ2sKAXqtwEsyLVW5PuKMJbDs9eF6QsHtNeRJkgWYRru9QGvTzH
	6GZcUXZb8ZWXO8vuWiQEYQYeHfKZv1zBuBiUGl/kDwVHJDpxF1TFd0FvNVuNEQtnnhUmRUg7+E2Sk
	uBfWlBkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Ibr-008ENL-6v; Tue, 28 Jun 2022 21:18:59 +0000
Received: from mailrelay1-1.pub.mailoutpod1-cph3.one.com ([46.30.210.182])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Ibm-008ELZ-04
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 21:18:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=Olg+jfqx0b1mKsAt9A3ftkl6+yoOPSSfslMfYFGYJQU=;
	b=mTHjMp2g38cZTrOH9xxChUix3EYf43NvyCg9AigB9d9g33LBj4JtXqDP7yqpR2pQP0ENwnBbTUo4J
	 v0hWK8rzHARgTWOvhPNBw+V0UisMOUUbj2Gr2SvsTif+pZF/UafL1vAD0tW8N3gfJ6O5Or1koeAcBj
	 6o/oP41AocbuouQonJVglFrN02ouOwPCZdxIK3hq5NXvQXZQDI3r3QlJSeL1h/VfzA0vfrEZzEyyFG
	 OEKiodrXru4ZpS0CMV3w8+wONvC3OQU1Az+XiuJFnjDSuOM3+O63vdLLHOyI9E3z0NQ1ox5+HrSmKc
	 3EKOfZ9SFqfUbQjgqORpYSdfxgSk5vQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=Olg+jfqx0b1mKsAt9A3ftkl6+yoOPSSfslMfYFGYJQU=;
	b=FBhEvGmExf3I0IeZLSwPqcxf/jmk61V8SxaSkqU2bM2LwApPxfTjIIkpRCVRBjhtEG/sWjSmNtmdZ
	 Zzgiu4RBA==
X-HalOne-Cookie: edee41999380b41cbb27e40342e45fd4e29bf986
X-HalOne-ID: e72cb995-f727-11ec-a6c5-d0431ea8a283
Received: from mailproxy1.cst.dirpod3-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id e72cb995-f727-11ec-a6c5-d0431ea8a283;
	Tue, 28 Jun 2022 21:18:49 +0000 (UTC)
Date: Tue, 28 Jun 2022 23:18:48 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YrtwON6WWPSAzaCe@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
 <YrtVGZ0M5Yde6rNd@ravnborg.org>
 <2ff476fa-0a73-3726-c905-5796691f740f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ff476fa-0a73-3726-c905-5796691f740f@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_141854_234136_84DDAB4F 
X-CRM114-Status: GOOD (  28.28  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH v1 0/8] ARM: at91: Add pbl support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Tue, Jun 28, 2022 at 11:12:39PM +0200, Ahmad Fatoum wrote:
> Hello Sam,
> 
> On 28.06.22 21:23, Sam Ravnborg wrote:
> > Hi Ahmad,
> > On Sun, May 15, 2022 at 09:37:59PM +0200, Sam Ravnborg wrote:
> >> The following is the current set of patches so far to support
> >> PBL for the skov-arm9cpu.
> > ...
> >> This is an RFC - because the code does not yet work :-(
> >> It fails to mount the SD Card - for reasons I am yet to discover.
> >>
> >> Most of the code is attempted to be generic so we can use it
> >> for other targets.
> > 
> > I noticed you posted an issue on at91bootstrap about the sdram driver
> > today where you wrote that you are looking into at91samxxx bootstrap.
> > 
> > I have something that works - and I can post an updated series tomorrow.
> > I was planning to get my drm driver functional again and update the
> > binding before posting v2 - so I had a complete barebox + linux kernel
> > solution. But as weather is good, there is less time for hacking.
> > 
> > Let me know if it is of any help to post something.
> > Knowing your speed you may already be far ahead of what I made :-)
> 
> No hurry. I figured we give the Atmel guys a heads up that the older
> platforms are broken. I am not actively working on this.
OK, thanks for the quick update.
I already went ahead and posted what I have as the commits was ready,
so it was quick to do. You can just ignore, but ofc any comments are
welcome and I consider most of the patches ready.

	Sam


