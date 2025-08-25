Delivery-date: Mon, 25 Aug 2025 10:55:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqSz0-004J3p-0h
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 10:55:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqSyy-0005He-WE
	for lore@pengutronix.de; Mon, 25 Aug 2025 10:55:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2R5iw+kVHxh6howukEI2xLdHgQkC9QQq6UpB2o29j7w=; b=MAtHxi7KLCAQ/Afk8YWK8GkxhM
	Cqa9sWhlC46BWmkFse8wGbl/FUyuWe406xTffFqLIOUbz3EdeiGqR6RVrcc95dRgDQnNqMCQk1gYG
	LQxJAjG+5pY5yvnVkEVIVpoxQ7J5V0GbIL5P2wyUMkq9ArBMIQcfCivcQvl7dLxWciPUTSOJT/NiF
	Fm57KTc3CrsdYAvpN/OYB4wSHd1RRLKEiGt4iDD0kK8R0caRIN+UPhNnip3NhvxHtsZcYfldQNDns
	RikmoTeCJm2fyvFGKI251s3S7yzSTWuuXb4tXAAmH20oJsT1osodFWxvlz9AsbscV/m8IOg6iaUvT
	DsvJrFGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSyE-00000007PS8-2Psk;
	Mon, 25 Aug 2025 08:54:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqShR-00000007L4F-1CpC
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 08:37:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uqShN-0002al-MG; Mon, 25 Aug 2025 10:37:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uqShN-0022Qd-1e;
	Mon, 25 Aug 2025 10:37:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uqShN-00GHcE-1K;
	Mon, 25 Aug 2025 10:37:05 +0200
Date: Mon, 25 Aug 2025 10:37:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aKwgsVPk4QwCbs3T@pengutronix.de>
References: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
 <20250822103743.355123-1-s.hauer@pengutronix.de>
 <96bd9c5c-b634-431c-ba66-74ceaa4021ee@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96bd9c5c-b634-431c-ba66-74ceaa4021ee@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_013709_337934_78DC87D3 
X-CRM114-Status: GOOD (  24.76  )
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
Subject: Re: [PATCH] fixup! Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Aug 22, 2025 at 05:59:19PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 8/22/25 12:37, Sascha Hauer wrote:
> > Remove policy-list files before recreating them, otherwise we can get stale
> > security configs when changing the build configuration or branch.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  Makefile | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index 49658e5fe2..be87fbbc7a 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1195,10 +1195,14 @@ targets += include/generated/sconfig_names.h
> >  KPOLICY = $(shell find $(objtree)/ -name policy-list -exec cat {} \;)
> >  KPOLICY.tmp = $(addsuffix .tmp,$(KPOLICY))
> >  
> > +PHONY += remove-policies
> > +remove-policies: FORCE
> > +	find -name "policy-list" | xargs rm
> > +
> >  PHONY += collect-policies
> >  collect-policies: KBUILD_MODULES :=
> >  collect-policies: KBUILD_BUILTIN :=
> > -collect-policies: $(barebox-dirs) FORCE
> > +collect-policies: remove-policies $(barebox-dirs) FORCE
> 
> Wouldn't this race with the descend into barebox-dirs?

Indeed it does.

> I think we need
> to enforce a strict order between these two.

How about this?

----------------------------------8<-------------------------------

>From 9e50b650e81b1630dfa677f2d49f30dcb9feb36b Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Aug 2025 12:35:06 +0200
Subject: [PATCH] fixup! Add security policy support

Remove policy-list files before recreating them, otherwise we can get stale
security configs when changing the build configuration or branch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index 49658e5fe2..0b1e059091 100644
--- a/Makefile
+++ b/Makefile
@@ -1084,6 +1084,7 @@ $(sort $(BAREBOX_OBJS)) $(BAREBOX_LDS) $(BAREBOX_PBL_OBJS): $(barebox-dirs) ;
 
 PHONY += $(barebox-dirs)
 $(barebox-dirs): prepare scripts
+	@find $@ -name policy-list | xargs rm -f
 	$(Q)$(MAKE) $(build)=$@
 
 # Store (new) KERNELRELASE string in include/config/kernel.release
-- 
2.47.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


