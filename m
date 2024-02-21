Delivery-date: Wed, 21 Feb 2024 17:29:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcpSz-00HTJ1-1D
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 17:29:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcpSy-0005Nc-R6
	for lore@pengutronix.de; Wed, 21 Feb 2024 17:29:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AClXaMz/uTkJURqWBAqMzBr6etfbBlZ+8owa163zeLI=; b=GL3wOUuCB4c4a4/aV+5bx7Dg3h
	7L0Qd++K5akZ9k0+WTWxMn8ZcDA0Z/GekMadoe9N3n4AdulW4gx/Da11xonBWRksfvvQyFD5SiL0n
	6KNZ+wIGziLJ/ijwplekJ05qIaT3+SIXhTArlTJ+/pVudxgHACcm4bHQrg21Gz/FmKsrY/D2CxKle
	hi6r4LqB5m7FI00Rjzz0Py/PhMXtddLYPPuU+rVXjJRMPQqoYrUZfrBOvksJupSZ8jzJRPW8lUaEh
	N/H8VCLicHvrUR+mvrIj9YPfwlQNZb60dmOhPgD+GeKrO8tPA1AyD4pIpbIDCEVXr/I8B4H3QeIOu
	e/6SKjRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcpSN-00000001ihE-1de2;
	Wed, 21 Feb 2024 16:28:27 +0000
Received: from mailrelay2-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:401::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcpSG-00000001ibl-2u2y
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 16:28:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=AClXaMz/uTkJURqWBAqMzBr6etfbBlZ+8owa163zeLI=;
	b=gZ/VkbhfVwPgvfD8R6V+4BkfrPUkysoldgf1viBe17cIlMrK8bStN2u7/9QQY/DRoiwwCubk5Dd4b
	 g0BilRuFMSYyQZc0dyznHx4+++Z0bm+BRPUyYmnJcjfoS6U3C0TH9VP8ePrHH+exExkfL2CqXg7ebd
	 /AE+9Jtipw/XKOzQx3nYRsKNXPs+ZBA4DAhHLc1Hx6ANov33KUX3fSWkfwi1oZ59bGemB4eAJ8GWBZ
	 nWMuBh5ajDgDGb3rggXqmMV4pRRhlq/oRhoMxPxybw9Sgz7t+kiAgwZU/4YL79SwNIwydpLsubq62e
	 1ThosCbarBu389Qx5rfruAs1NB1PLQA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=AClXaMz/uTkJURqWBAqMzBr6etfbBlZ+8owa163zeLI=;
	b=2ajw1u26DI3m+SBC5cdXFOW1z/dSDl1cKqRj7ETAPH/ZVK+IbEgeqMkrsaI3ubjaFfrec47NbIh+3
	 epIHzlZCw==
X-HalOne-ID: 324a0e7f-d0d6-11ee-abaf-b520e3c7e1da
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay2.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
	id 324a0e7f-d0d6-11ee-abaf-b520e3c7e1da;
	Wed, 21 Feb 2024 16:28:10 +0000 (UTC)
Date: Wed, 21 Feb 2024 17:28:08 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240221162808.GA2528896@ravnborg.org>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
 <20240215163009.2172795-12-a.fatoum@pengutronix.de>
 <20240215222928.GA1462714@ravnborg.org>
 <fd232d89-e78f-4a51-b5f4-6778ca378c13@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fd232d89-e78f-4a51-b5f4-6778ca378c13@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_082821_982718_51E453E4 
X-CRM114-Status: GOOD (  14.45  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 11/15] ARM: at91: skov-arm9cpu: Add SD-Card xload
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,
On Tue, Feb 20, 2024 at 10:25:37AM +0100, Ahmad Fatoum wrote:
> Hello Sam,
> 
> 
> On 15.02.24 23:29, Sam Ravnborg wrote:
> >> +static noinline void continue_skov_arm9cpu_xload_mmc(void)
> >> +{
> >> +	sam9263_lowlevel_init(0x2031B004, 0x10053001);
> > Can this be made more verbose using the existing defines?
> > The above hex codes are not friendly to read, and using the original
> > defines used in the previous patch would help a lot on the readability.
> 
> I will use the defines for v2. I am not in favor or going back to define
> it as a struct though as it make sit needlessly cumbersome to port board
> support from at91bootstrap, where the straight hex values are used.

I like the way you did it - where you combined the use of the descriptive
names and the hex-value from at91bootstrap.

	Sam


