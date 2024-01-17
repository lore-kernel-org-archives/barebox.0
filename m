Delivery-date: Wed, 17 Jan 2024 10:59:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ2iB-003X8g-0g
	for lore@lore.pengutronix.de;
	Wed, 17 Jan 2024 10:59:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ2iB-0005it-Mf
	for lore@pengutronix.de; Wed, 17 Jan 2024 10:59:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e2MYmzf01BwCjK9m3WXWteUBaIrkp+gzpBc8nDA9ayo=; b=LHHmZ6wkxySuOc55Be3UhazLsq
	8ACx1nVbIwi0hp6ZIOLSUHXDjBdFESFSwl3hQFBg66HWymsFcJU1AzCno586gASksDXLfYqlrbQgx
	vv/EP2ZkKQgmi+AbtXKLzKdq3j8fvp4pnourN1v0Z8dysie52FVEzqsTis1QP7905wY2CG8GddLdS
	luSqHrmNILyuIWOQKFRMZXXxI0PYooViHzTPlHUgcb8lQH1RGa9Q2/j+xNnwraTtXEIPoe24yWm2i
	3F8bFDuaRYI25N/1S3WyjWSfAPSoFUbc30gzg29wcm5s5tLSQ5QkArh6I/j17K88XtYpFHJqpm3Z4
	za0TPg+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2h5-00FBEy-2l;
	Wed, 17 Jan 2024 09:58:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2h1-00FBCh-0E
	for barebox@lists.infradead.org;
	Wed, 17 Jan 2024 09:58:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQ2gy-0005bn-GS; Wed, 17 Jan 2024 10:58:40 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQ2gy-000Qyc-3n; Wed, 17 Jan 2024 10:58:40 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQ2gy-000N35-1Z; Wed, 17 Jan 2024 10:58:40 +0100
Date: Wed, 17 Jan 2024 10:58:40 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240117095840.whrxw3vk3xetsq2m@pengutronix.de>
References: <20240110145908.3965855-1-m.felsch@pengutronix.de>
 <20240116144416.GD4700@pengutronix.de>
 <20240117095037.GH4700@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117095037.GH4700@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_015843_130388_33EF72B6 
X-CRM114-Status: GOOD (  34.12  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: fix missing firmware handling for external
 firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

sry. for the delayed answer.

On 24-01-17, Sascha Hauer wrote:
> On Tue, Jan 16, 2024 at 03:44:16PM +0100, Sascha Hauer wrote:
> > Hi Marco,
> > 
> > On Wed, Jan 10, 2024 at 03:59:08PM +0100, Marco Felsch wrote:
> > > Currently we depend on the external firmware file since we need it for
> > > the sha256sum. But this dependency break the 'optional missing firmware'
> > > feature.
> > > 
> > > Fix this by dropping the firmware file prerequisite and instead evaluate
> > > the FWNAME_EXISTS variable. If the firmware file does not exist a dummy
> > > file is created and the build continues till the linking process (like
> > > we do for the other firmware).
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  firmware/Makefile    | 6 +++---
> > >  images/Makefile      | 2 +-
> > >  scripts/Makefile.lib | 2 +-
> > >  3 files changed, 5 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/firmware/Makefile b/firmware/Makefile
> > > index 51d98d54bf14..a07b31caec73 100644
> > > --- a/firmware/Makefile
> > > +++ b/firmware/Makefile
> > > @@ -41,7 +41,7 @@ fwobjdir := $(objtree)/firmware
> > >  pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
> > >  obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
> > >  
> > > -FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
> > > +FWNAME    = $(patsubst $(obj)/%.sum,%,$(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@)))
> > 
> > The purpose of this change is not clear to me. You replace the pattern
> > %.sum with %, but I don't see how this ever matches.
> 
> Ok, now I see why this is needed. FWNAME works on $@, the filename of
> the target of the rule...

yes.

> > Dropping this change has no visible effect for me.
> > 
> > >  FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
> > >  FWNAME_EXISTS = $(if $(wildcard $(fwdir)/$(FWNAME)),1,0)
> > >  
> > > @@ -91,8 +91,8 @@ $(obj)/%.extgen.S: $(obj)/%.sha.bin FORCE
> > >  $(obj)/%.sha.bin: $(obj)/%.sum FORCE
> > >  	$(call if_changed,sha256bin)
> > >  
> > > -$(obj)/%.sum: $(obj)/% FORCE
> > > -	$(call if_changed,sha256sum)
> > > +$(obj)/%.sum: FORCE
> > > +	$(if $(findstring 1,$(FWNAME_EXISTS)), $(call if_changed,sha256sum,$(obj)/$*), @touch $@)
> 
> ...and the target here indeed has the pattern %.sum

and yes.

> I think we should rather use the target stem which you are using
> already. Drop FWNAME_EXISTS so this becomes:
> 
> 	$(if $(wildcard $(fwdir)/$*), $(call if_changed,sha256sum,$(fwdir)/$*),@touch $@)

I wasn't considering this but it looks good to me. Now I see the issue
with $(obj)/% as well :/ I used the $(obj)/firmware path for my firmware
binaries and therefore had no issues with out-of-tree building.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


