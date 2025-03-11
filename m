Delivery-date: Tue, 11 Mar 2025 09:04:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trubE-00Cak6-1A
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:04:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trubD-0006MD-6B
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:04:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gUecBjyiGz0XRuk7lIFbivMp65/uhL3xgv1hZxl2LqQ=; b=Y9rLfElDs4Pn9YiAlvg3v2rHP6
	dszALuXRzwCO9Wqn7J+z4H5yOJ2ip5JaDOvz/vASoQ+BIlElFps5kKEQxhMoa7amOJkF1rhqg1tPq
	r2zAeAcXj9U116Rx4JCcpGeYoRaJPXWJm9hHs4lH6MjSrg/sQPKisgL7OkXqc59LLYz+XwwPx1WWx
	UvT+8+3/GTehCZLk/Abm8am4h8AaUZbrSAOjndqRIr0oFGSE6PwO7SVITEaMcOcL4DAkmdPB/VOhj
	IoFKp0cVC7ku6Fux4JpYLqyXOfJTScSwZd+pUNciy05hXfWwi9QQdB4F0pq4PB4A2CNWLbC+mVDem
	l3Xd7vOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1truan-00000004w7i-22aI;
	Tue, 11 Mar 2025 08:04:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1truS4-00000004v7A-1csL
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 07:55:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1truS3-0005Fj-2e; Tue, 11 Mar 2025 08:54:59 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1truS2-0058tN-2q;
	Tue, 11 Mar 2025 08:54:58 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1truS2-007fcQ-2Y;
	Tue, 11 Mar 2025 08:54:58 +0100
Date: Tue, 11 Mar 2025 08:54:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z8_sUo3vWUp8YtA8@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
 <20250228-am625-secure-v1-11-4002488ff5ed@pengutronix.de>
 <20250310192601.7nzsencbk3borvqm@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250310192601.7nzsencbk3borvqm@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_005500_431953_6D32286B 
X-CRM114-Status: GOOD (  23.33  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/13] ARM: k3: r5: Allow to authenticate next image by
 ROM API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 10, 2025 at 08:26:01PM +0100, Marco Felsch wrote:
> On 25-02-28, Sascha Hauer wrote:
> > This adds the Kconfig option CONFIG_ARCH_K3_AUTHENTICATE_IMAGE. When
> > enabled, the full barebox image will only be started when it can be
> > authenticated using the ROM API.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-k3/Kconfig |  7 ++++++
> >  arch/arm/mach-k3/r5.c    | 64 +++++++++++++++++++++++++++++++++++++++++++++++-
> >  2 files changed, 70 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
> > index 37d5155577..e93e3154c8 100644
> > --- a/arch/arm/mach-k3/Kconfig
> > +++ b/arch/arm/mach-k3/Kconfig
> > @@ -37,6 +37,13 @@ config MACH_BEAGLEPLAY
> >  	help
> >  	  Say Y here if you are using a TI AM62x based BeaglePlay board
> >  
> > +config ARCH_K3_AUTHENTICATE_IMAGE
> > +	bool "Force authentication of FIP image against ROM API"
> > +	help
> > +	  By enabling this option the FIP image loaded by the first stage
> > +	  will be authenticated against the K3 ROM API. Images which fail
> > +	  to authenticate will not be started.
> 
> The ROM is checking only the sha sum or does the ROM also have some kind
> of signature-checking (pub/priv keys requried)?

The ROM cheks against signatures

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


