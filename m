Delivery-date: Thu, 15 Feb 2024 09:36:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raXEc-007Cgw-1U
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 09:36:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raXEb-0004Wl-SC
	for lore@pengutronix.de; Thu, 15 Feb 2024 09:36:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uT/AznUddMXnnZVceI9mWkiygcZDXGlmzf2ZM4+RCK0=; b=clgkuh8tPyIiZxVYRVD8E9LPFj
	nIUmnMjdmYK6HPA78/3gHPVXSWd1qndQqAEA7KvJRD+uiJO0hfEJKNqcJu+RtnRgRB2a4vlHX005L
	1NH0gI0D262y4y7wpmPiFC7LUy2UCugluUnTIlFdrLW5wzUMu50lg+dQOhLqG7NdtXFuCMcNZAlr0
	DfmpPuswxc7Sn4dpA2GXbvKBBt7pocaavpudK9vG6HLA9BoEKgmsXyIglFwsShs9Z3ydce7fraZYt
	Ctigfmo/6QcTPvt8Xkv//ZOGuPrgD9iIg4sJ7eT55Ai27WN5xaAM2JKgWmlGseTquU5uPDsWqOv3C
	jN7ohRdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raXE6-0000000FMpJ-1fOJ;
	Thu, 15 Feb 2024 08:36:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raXE2-0000000FMnr-2qwF
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 08:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1raXE1-0004RD-Dc; Thu, 15 Feb 2024 09:36:09 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1raXE1-000qfR-1E; Thu, 15 Feb 2024 09:36:09 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1raXE0-009yHE-35;
	Thu, 15 Feb 2024 09:36:08 +0100
Date: Thu, 15 Feb 2024 09:36:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Zc3M-CqFiaRaMfIj@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
 <718388d8-1540-4f45-9604-ae8e63cf986f@pengutronix.de>
 <Zc3ItV4Ak4NDdWPs@pengutronix.de>
 <eab18ad9-b1be-49ce-b4e1-8a84dac06fb6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eab18ad9-b1be-49ce-b4e1-8a84dac06fb6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_003610_749105_DA408E8C 
X-CRM114-Status: GOOD (  30.30  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/6] implement i.MX93 AHAB secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Feb 15, 2024 at 09:29:38AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 15.02.24 09:17, Sascha Hauer wrote:
> > On Wed, Feb 14, 2024 at 07:09:16PM +0100, Ahmad Fatoum wrote:
> >> Could you make the signing inside the barebox build system optional
> >> for HAB? Then we could have a prompt symbol that depends on HABv4, e.g.
> >> CONFIG_HAB_SIGN_IMAGES or something and disabling that would require
> >> external signing like for AHAB. I think this would improve user experience
> >> a fair bit, because HAB and AHAB could be handled the same build-system
> >> side and it would be easily discoverable in Kconfig that one supports
> >> sigining internally and the other doesn't.
> > 
> > Originally it was a design decision to integrate the signing into
> > barebox. I wanted to make barebox self contained and not depend on
> > external tools to generate images.
> > I am not sure though if anyone really builds signed images without
> > the help of a build system. So I had the same thought as well if we
> > could let the build system do the signing also for HAB. I haven't looked
> > into it what it takes to implement that. One point where it gets
> > difficult is our special trick to create signed USB images. We handle
> > the DCD table in imx-usb-loader to setup DDR and disable DCD in the
> > image. To make that work with signed images we sign an image which
> > has the DCD table disabled.
> 
> I am not asking that you implement in-barebox signing for AHAB, rather
> that you make it optional for existing HAB, so they can be handled the
> same if needed.

Yes, I understood that.

> Now that you just had AHAB in your hands, it should just
> be a finger flexing for you, right? ;)

Thanks for the flowers ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


