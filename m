Delivery-date: Tue, 03 Feb 2026 12:07:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnEFc-008NQ3-1J
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 12:07:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnEFb-0008DP-BI
	for lore@pengutronix.de; Tue, 03 Feb 2026 12:07:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=inY0KvWUVWzR0FRP1DfjGxmp2ZS/HBDz8iro6gfAMnA=; b=otfye+nliuYjW+xGNrdbLHvZhi
	72TLFyeWgexvpaxmDxJ7XjEJb/g62enw9r610Dng2b9pAjLJT0q14mFuebhoZWldPHMRGe32EExrF
	SM4VRzW+j+TwJCL2BiIX32cpPzglO7JRcDLt0Pu93WZWCgeNc74sh6W+MoZ3EvNiKAZ/3qypVMrwR
	q6F9C8soFXs5y1RnGilbZdrgbv8PiMMxOCG4NSAjvkDeIA69McbWWDrK4lJbYRNWn4e3zK0/n6nWU
	1ycYKFWYPYp4Dyv9SOKkeUeK87MSg25oryIfoTx4KJcWjczqG17YBy+RJcGhQs0SLl0MCCruBXQBg
	7Q/OfB1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEFD-00000006VuA-1KIY;
	Tue, 03 Feb 2026 11:06:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEFB-00000006Vti-1p4a
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 11:06:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vnEF8-00085t-HG; Tue, 03 Feb 2026 12:06:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vnEF9-003tPE-02;
	Tue, 03 Feb 2026 12:06:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vnEF8-00E2sr-0h;
	Tue, 03 Feb 2026 12:06:50 +0100
Date: Tue, 3 Feb 2026 12:06:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aYHWyjCtQzX7qnVn@pengutronix.de>
References: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
 <20260129-regulator-ramp-v1-1-6269bd55d432@pengutronix.de>
 <20260129120653.cwvv2b4iw5hbc5wj@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129120653.cwvv2b4iw5hbc5wj@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_030653_476479_F4E1DBA9 
X-CRM114-Status: GOOD (  30.90  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] regulator: fix handling of off_on_delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 29, 2026 at 01:06:53PM +0100, Marco Felsch wrote:
> On 26-01-29, Sascha Hauer wrote:
> > In Linux the off_on_delay field in a regulator is described as:
> > 
> > > The guard time (in uS), before re-enabling a regulator
> > 
> > The primary user is the fixed regulator which puts the value of
> > the "off-on-delay-us" property into it.
> > 
> > In barebox we put the off_on_delay into the enable_time_us field
> > which is the delay we introduce when turning on a regulator. This
> > is wrong and fixed in this commit.
> > 
> > The off_on_delay is defined as the time we should take before
> > re-enabling a regulator. Linux does it the complicated way of
> > remembering the time when it was last disabled and delays the
> > re-enabling if necessary. We use the simple approach here of
> > just waiting the off_on_delay time in the regulator disable path.
> > 
> > Fixes: 26a4c78917 ("regulator: add support for struct regulator_desc::off_on_delay")
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/regulator/core.c | 5 ++++-
> >  include/regulator.h      | 1 +
> >  2 files changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> > index cd07955894..8ca937e8bd 100644
> > --- a/drivers/regulator/core.c
> > +++ b/drivers/regulator/core.c
> > @@ -96,6 +96,9 @@ static int regulator_disable_rdev(struct regulator_dev *rdev)
> >  
> >  	rdev->enable_count--;
> >  
> > +	if (rdev->off_on_delay)
> > +		udelay(rdev->off_on_delay);
> > +
> >  	return regulator_disable(rdev->supply);
> >  }
> >  
> > @@ -309,7 +312,7 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
> >  	node->dev = rdev->dev;
> >  
> >  	if (rdev->desc->off_on_delay)
> > -		rdev->enable_time_us = rdev->desc->off_on_delay;
> 
> Nit: is is worth to remove the enable_time_us completely and
> re-introduce it within the next commit?

I think so, yes. I could have merged it into a single commit, but I
think this way makes it clearer what happens despite the intermediate
breakage

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


