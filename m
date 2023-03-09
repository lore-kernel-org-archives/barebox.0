Delivery-date: Thu, 09 Mar 2023 16:47:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIUd-00F0OM-3D
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 16:47:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paIUc-0008H0-4P
	for lore@pengutronix.de; Thu, 09 Mar 2023 16:47:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EmK0IpzzkZJhDqw4frAOhokC7ugwzL26pYPsy5CTVXk=; b=JylE9s9waO2uIy7Bg67VNgUTEc
	pZT0rGp0LJlLxPimatfeRwgZnGY+c0uoyNKjRK6XTqLluPi5B+bQe32vD0Zshyz2Vmr8JvHXByQEJ
	2RknyhSi9o4FICR5/LQUN9hgpTI0dIFaNH7Z2X4BJIJtMqXauoAwfquXeUXerMDS8wA9BlAm2CzSk
	1+bGP0/rOqaq+Utk+HJsAHmOYoF22fjh/mqMuLimOKIsb1YuEJKgzlUhLO/OlKEJIaVEFLQvPoMEo
	owyVIMcWXT1gGiV96n2/BBMQdUAMEfOvi8Dkf36VpqgdyDuIBHggnZbyj+39vM5iWbFhAHJbf7T1B
	HHBKo8Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paISx-00B0To-W5; Thu, 09 Mar 2023 15:46:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIBl-00Au3q-4i
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 15:28:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIBj-0005MK-IW; Thu, 09 Mar 2023 16:28:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paIBj-0003Mn-B1; Thu, 09 Mar 2023 16:28:15 +0100
Date: Thu, 9 Mar 2023 16:28:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230309152815.GH5784@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
 <20230309115208.973893-2-s.hauer@pengutronix.de>
 <dea9d06a-3bd2-dbb5-c740-53f2a0b63d1d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dea9d06a-3bd2-dbb5-c740-53f2a0b63d1d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_072817_240974_1EAB5EFF 
X-CRM114-Status: GOOD (  26.97  )
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
Subject: Re: [PATCH v2 1/7] kbuild: Add target to build dtb overlay files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 09, 2023 at 02:24:36PM +0100, Ahmad Fatoum wrote:
> On 09.03.23 12:52, Sascha Hauer wrote:
> > Device tree overlay files have the suffix dtso in source format
> > and dtbo in binary format. Add the necessary targets to build dtbo
> > files from dtso files and also dtbo.o files to include into the
> > barebox binary.
> > The overlay files shouldn't include the device tree snippets from
> > CONFIG_EXTERNAL_DTS_FRAGMENTS which makes it necessary to specify
> > these fragments as an argument to cmd_dtc.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  scripts/Makefile.build |  4 ++++
> >  scripts/Makefile.lib   | 11 ++++++++++-
> >  2 files changed, 14 insertions(+), 1 deletion(-)
> > 
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 216f03677b..33480a81b4 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -258,12 +258,16 @@ intermediate_targets = $(foreach sfx, $(2), \
> >  					$(filter %$(strip $(1)), $(targets))))
> >  # %.asn1.o <- %.asn1.[ch] <- %.asn1
> >  # %.dtb.o <- %.dtb.S <- %.dtb <- %.dts
> > +# %.dtbo.o <- %.dtbo.S <- %.dtbo <- %.dtso
> >  # %.dtb.pbl.o <- %.dtb.S <- %.dtb <- %.dts (Barebox only)
> > +# %.dtbo.pbl.o <- %.dtbo.S <- %.dtbo <- %.dtso (Barebox only)
> >  # %.lex.o <- %.lex.c <- %.l
> >  # %.tab.o <- %.tab.[ch] <- %.y
> >  targets += $(call intermediate_targets, .asn1.o, .asn1.c .asn1.h) \
> >  	   $(call intermediate_targets, .dtb.o, .dtb.S .dtb.z .dtb) \
> > +	   $(call intermediate_targets, .dtbo.o, .dtbo.S .dtbo.z .dtbo) \
> >  	   $(call intermediate_targets, .dtb.pbl.o, .dtb.S .dtb.z .dtb) \
> > +	   $(call intermediate_targets, .dtbo.pbl.o, .dtbo.S .dtbo.z .dtbo) \
> 
> I see now reason to allow building an overlay for PBL. Should we drop this?

I thought some board might want to apply an overlay in PBL, but the code
to apply an overlay is not there, not even the code to unflatten a dtb.
So right, this can be removed.

> 
> >  	   $(call intermediate_targets, .lex.o, .lex.c) \
> >  	   $(call intermediate_targets, .tab.o, .tab.c .tab.h)
> >  
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 6e0d92cf75..6af2fe07b2 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -361,13 +361,19 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
> >  $(obj)/%.dtb.S: $(obj)/%.dtb $(obj)/%.dtb.z $(srctree)/scripts/gen-dtb-s FORCE
> >  	$(call if_changed,dt_S_dtb)
> >  
> > +$(obj)/%.dtbo.S: $(obj)/%.dtbo $(obj)/%.dtbo.z $(srctree)/scripts/gen-dtb-s FORCE
> > +	$(call if_changed,dt_S_dtb)
> > +
> >  $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
> >  	$(call if_changed,$(suffix_y))
> >  
> > +$(obj)/%.dtbo.z: $(obj)/%.dtbo FORCE
> > +	$(call if_changed,$(suffix_y))
> 
> Can we drop this and change scripts/gen-dtb-s to skip creating the compressed DTB
> if we have a *.dtbo?

What's wrong with building compressed overlays? That might come in
handy later.

> While at, we should rename the symbol to __dtbo_. Otherwise,
> we can have name clashes.

Right.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


