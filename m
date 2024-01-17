Delivery-date: Wed, 17 Jan 2024 10:52:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ2aW-003WWm-24
	for lore@lore.pengutronix.de;
	Wed, 17 Jan 2024 10:52:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ2aX-00059H-8t
	for lore@pengutronix.de; Wed, 17 Jan 2024 10:52:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZWlhk/g73gqMxr18/2c3wtlIEPZe1bcJ9LvS70Kom2k=; b=02fmKTcz0O7xMPYFeto+33FhGl
	+Y6i63YYWgmQSMNh7tsagGFwYb1NXifUhTO8TT5BIhWk1PJamVMmZQbFEeEb9WAjPOTyQR0uX3rd9
	EziRPkYbVXWoRXP7ZT0W0isS1suhDNNXZwFs61NRnR/Yg5GazoOa1oQWhyep+ZtsnfOFoTJYIwgWX
	tryi2GQ7r0kx3hcBvG3lXSb0X5ej1AHf6+wXQy8xAofBWACNCFPjSXonMrJNLcsvZn80KqbRvX3pH
	iE1JQj4Re3Firr12kaH3OcdisgxUse+yjOvvFhWl96bRGyQXf39+ReUK0BM0162bFNwn1Z7wIF8QA
	Syl5A7og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2ZL-00FA3w-2D;
	Wed, 17 Jan 2024 09:50:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2ZH-00FA1Z-2w
	for barebox@lists.infradead.org;
	Wed, 17 Jan 2024 09:50:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ2ZB-000534-T9; Wed, 17 Jan 2024 10:50:37 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ2ZB-000QxN-Gt; Wed, 17 Jan 2024 10:50:37 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ2ZB-000My0-EY; Wed, 17 Jan 2024 10:50:37 +0100
Date: Wed, 17 Jan 2024 10:50:37 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240117095037.GH4700@pengutronix.de>
References: <20240110145908.3965855-1-m.felsch@pengutronix.de>
 <20240116144416.GD4700@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240116144416.GD4700@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_015043_998581_C4A40980 
X-CRM114-Status: GOOD (  30.83  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: fix missing firmware handling for external
 firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 16, 2024 at 03:44:16PM +0100, Sascha Hauer wrote:
> Hi Marco,
> 
> On Wed, Jan 10, 2024 at 03:59:08PM +0100, Marco Felsch wrote:
> > Currently we depend on the external firmware file since we need it for
> > the sha256sum. But this dependency break the 'optional missing firmware'
> > feature.
> > 
> > Fix this by dropping the firmware file prerequisite and instead evaluate
> > the FWNAME_EXISTS variable. If the firmware file does not exist a dummy
> > file is created and the build continues till the linking process (like
> > we do for the other firmware).
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  firmware/Makefile    | 6 +++---
> >  images/Makefile      | 2 +-
> >  scripts/Makefile.lib | 2 +-
> >  3 files changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/firmware/Makefile b/firmware/Makefile
> > index 51d98d54bf14..a07b31caec73 100644
> > --- a/firmware/Makefile
> > +++ b/firmware/Makefile
> > @@ -41,7 +41,7 @@ fwobjdir := $(objtree)/firmware
> >  pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
> >  obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
> >  
> > -FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
> > +FWNAME    = $(patsubst $(obj)/%.sum,%,$(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@)))
> 
> The purpose of this change is not clear to me. You replace the pattern
> %.sum with %, but I don't see how this ever matches.

Ok, now I see why this is needed. FWNAME works on $@, the filename of
the target of the rule...

> 
> Dropping this change has no visible effect for me.
> 
> >  FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
> >  FWNAME_EXISTS = $(if $(wildcard $(fwdir)/$(FWNAME)),1,0)
> >  
> > @@ -91,8 +91,8 @@ $(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
> >  $(obj)/%.sha.bin: $(obj)/%.sum FORCE
> >  	$(call if_changed,sha256bin)
> >  
> > -$(obj)/%.sum: $(obj)/% FORCE
> > -	$(call if_changed,sha256sum)
> > +$(obj)/%.sum: FORCE
> > +	$(if $(findstring 1,$(FWNAME_EXISTS)), $(call if_changed,sha256sum,$(obj)/$*), @touch $@)

...and the target here indeed has the pattern %.sum

I think we should rather use the target stem which you are using
already. Drop FWNAME_EXISTS so this becomes:

	$(if $(wildcard $(fwdir)/$*), $(call if_changed,sha256sum,$(fwdir)/$*),@touch $@)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


