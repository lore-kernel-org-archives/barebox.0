Delivery-date: Tue, 03 Feb 2026 12:08:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnEGz-008NRP-1f
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 12:08:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnEGy-0008PP-Ei
	for lore@pengutronix.de; Tue, 03 Feb 2026 12:08:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMeeiwoAx+LU7hD4MAt+cLMY8GV549pJMPVgc/WLhNc=; b=J3qv0R1XJzF2sRh5GfbncJg6J9
	jg2PwmnNGhPMB1zu4yy3fsVwYF3EuztvCmDbrIbLfMXeSft8T96wO50lPpFxWN4gZNmT1ea0I3Leg
	0glsRC+D4jhoYqQeaEmxy+i0obc7CY29YIEvbqGitBKP2Vtdgc0ynBPXgCiR02DR40OpZkwcmLMsN
	2Lj7p3IIW4IkbrBROMsoryW9sQI/rNR9lLYx2Dbr8YqjpnjC3V8dEq59Z7eptIro5TNfm9jgkofH2
	RUrO3EBjN9CAMth0JpNdQfXNd8SxsFcwAXWVW+g0dPwwxCjJEcYXkW+kJcu8Bys89/Tsknsfnk869
	Gf4WScyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEGa-00000006W8m-0nMq;
	Tue, 03 Feb 2026 11:08:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEGX-00000006W7g-2tfN
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 11:08:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vnEGW-0008KW-5H; Tue, 03 Feb 2026 12:08:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vnEGW-003tPN-21;
	Tue, 03 Feb 2026 12:08:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vnEGV-00E2tK-2i;
	Tue, 03 Feb 2026 12:08:15 +0100
Date: Tue, 3 Feb 2026 12:08:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aYHXHwTUXDeiBaDH@pengutronix.de>
References: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
 <20260129-regulator-ramp-v1-2-6269bd55d432@pengutronix.de>
 <20260129121038.vjbyckvvrncdgsml@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129121038.vjbyckvvrncdgsml@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_030817_725740_D993ACB0 
X-CRM114-Status: GOOD (  26.31  )
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
Subject: Re: [PATCH 2/2] regulator: fixed: handle startup-delay-us property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 29, 2026 at 01:10:38PM +0100, Marco Felsch wrote:
> On 26-01-29, Sascha Hauer wrote:
> > The "startup-delay-us" property of the fixed regulator has never been
> > handled by barebox. Handle it now.
> > 
> > The "startup-delay-us" property is specified as:
> > 
> > | startup time in microseconds
> > 
> > Then there's a regulator generic property "regulator-enable-ramp-delay"
> > which barebox handles, specified as:
> > 
> > | The time taken, in microseconds, for the supply rail to
> > | reach the target voltage, plus/minus whatever tolerance the board
> > | design requires. This property describes the total system ramp time
> > | required due to the combination of internal ramping of the regulator
> > | itself, and board design issues such as trace capacitance and load
> > | on the supply.
> > 
> > We just use the bigger of the two times as the time a regulator needs
> > to become stable.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/regulator/core.c  | 9 +++++++--
> >  drivers/regulator/fixed.c | 3 +++
> >  include/regulator.h       | 2 ++
> >  3 files changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> > index 8ca937e8bd..1f8d77dc96 100644
> > --- a/drivers/regulator/core.c
> > +++ b/drivers/regulator/core.c
> > @@ -297,6 +297,7 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
> >  {
> >  	const char *name;
> >  	int ret;
> > +	u32 val = 0;
> >  
> >  	if (!rdev || !node)
> >  		return -EINVAL;
> > @@ -313,12 +314,16 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
> >  
> >  	if (rdev->desc->off_on_delay)
> >  		rdev->off_on_delay = rdev->desc->off_on_delay;
> > +	if (rdev->desc->enable_time_us)
> > +		rdev->enable_time_us = rdev->desc->enable_time_us;
> >  
> >  	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
> >  		rdev->min_uv = rdev->max_uv = rdev->desc->fixed_uV;
> >  
> > -	of_property_read_u32(node, "regulator-enable-ramp-delay",
> > -			&rdev->enable_time_us);
> > +	of_property_read_u32(node, "regulator-enable-ramp-delay", &val);
> > +	if (val > rdev->enable_time_us)
> 
> Nit: Worth a comment to make it more obvious?

Added a comment while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


