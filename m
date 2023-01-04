Delivery-date: Wed, 04 Jan 2023 13:14:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD2eq-001R4z-JU
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 13:14:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD2eo-0003Ea-3B
	for lore@pengutronix.de; Wed, 04 Jan 2023 13:14:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8spOAVBp/yGYtv9Mk9d58ffJAm3hCKEOOHiCgQ4gAE=; b=OMqRZZJAPfBQk0XsvYtWZbtNGY
	40Ah4hd7J+7fWYwq5RJGsgWStJ8oxsY97hArGLLumQ3CyVguU1RH1KQFJaQxoBcQMwGNIhc4hT7m8
	GIRDT21eqjqJvtp30XU0mtFb68N1vxpEs+CGDZJpC6GW1I/98YvECmcctR/NxRHwcPKHTa7OTB9xF
	sUkmdJzNL2O7g5epO/yDmSMtiqgFKIUBCfvcjKN5mdiCNIL3QRDI2DUkP/osTd6Qw00NY6zkgBKdT
	oiB713zcqXtDDN9H835YmRW3Otv0SyAyeB/O+3AyS4DhSUQdEtf5ERo+O2oGw4RWCVCu8/ta2F955
	UrtJf47g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD2dI-008z1n-6a; Wed, 04 Jan 2023 12:12:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD2YZ-008xyD-JI
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 12:07:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD2YX-0002HV-Tj; Wed, 04 Jan 2023 13:07:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pD2YX-0004l3-07; Wed, 04 Jan 2023 13:07:41 +0100
Date: Wed, 4 Jan 2023 13:07:40 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org,
	Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de, ore@pengutronix.de,
	=?iso-8859-15?Q?S=F8ren?= Andersen <san@skov.dk>
Message-ID: <20230104120740.GU11668@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
 <20221222141201.3087192-7-a.fatoum@pengutronix.de>
 <20221223091048.faug35rhc3zkujc6@pengutronix.de>
 <20230104120119.GT11668@pengutronix.de>
 <f996bb72-f0a5-7219-c3bc-60a94aace222@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f996bb72-f0a5-7219-c3bc-60a94aace222@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_040743_676459_98D9E0EB 
X-CRM114-Status: GOOD (  24.86  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] ARM: configs: imx_v7_defconfig: enable some useful
 options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 04, 2023 at 01:04:59PM +0100, Ahmad Fatoum wrote:
> On 04.01.23 13:01, Sascha Hauer wrote:
> > On Fri, Dec 23, 2022 at 10:10:48AM +0100, Marco Felsch wrote:
> >> Hi Ahmad,
> >>
> >> On 22-12-22, Ahmad Fatoum wrote:
> >>> Give the defconfig some color by enabling console colors during startup,
> >>> i.MX6 parallel LCD driver, backlight and some more options that were
> >>> noticed missing during debugging a skov-imx6 issue.
> >>
> >> I'm okay with enabling a few command and the colored console per default
> >> but the video-output use-case isn't really common and just increases the
> >> size of the barebox image.
> > 
> > This patch indeed increases the binary size, like for example
> > barebox-zii-vf610-dev.img from 743788 bytes to 790858 bytes.
> > However, the enabled video options are only responsible for a small
> > fraction of it. With disabling the video options again the image
> > size shrinks to 788738 bytes.
> > 
> > I've always seen the imx_*_defconfig files as mostly full featured
> > configs to get good compile coverage and a barebox that just works
> > for as many cases as possible. From that perspective I think it's ok
> > to add more options.
> 
> Feel free to pick 1-4/6 and I'll look again into 5-6 and resend
> as appropriate.

Picked 1-4/6 and 6/6.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


