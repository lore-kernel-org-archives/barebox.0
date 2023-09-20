Delivery-date: Wed, 20 Sep 2023 13:14:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivA1-004Z8r-Ab
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:14:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiv9y-0003Od-P3
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:14:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uGq3snxEouUgxbsl/5BprWPJ0cPilB6mD0hKyPm6tUg=; b=Wu4UG4DewQyctt7KA/avbtZxrJ
	v5MurW6QrmWseb1F8hlTHcyD633rtxQ9hiIbm1CqYvfog7uR+PHdWHmYr/yqpIze+COgHqWP/uGKt
	zcQVHZqSGzuAW9hKrOhhGmBtoFXuUocjEN8VQnMAwbjng7wRIJ7M8zPXPdH3wTWBCUrRRqDLFyOi5
	SLcWhmozKnucmVyxy6i54xnIhheU3T5kkyPMqKyqIbDehDDp6CoLVQp4cX2uguDa9N/KojE1vYooy
	gxeSHeJnIHjN56Rzyr2rpgYQneKgxfGwQhJIyebH4u0XjLBX+w87cI0ZUJdT29pO8m005X29Ajwpy
	1A9KFAHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiv8x-002qMx-18;
	Wed, 20 Sep 2023 11:13:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiv8u-002qMQ-1H
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:13:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qiv8t-00039j-3X; Wed, 20 Sep 2023 13:13:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qiv8s-007fsF-LG; Wed, 20 Sep 2023 13:13:14 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qiv8s-00AAgv-JB; Wed, 20 Sep 2023 13:13:14 +0200
Date: Wed, 20 Sep 2023 13:13:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920111314.w4slvqoxbxkdwhnh@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
 <20230920103316.2758383-3-s.hauer@pengutronix.de>
 <20230920105203.qvzlmstpxoat5p4m@pengutronix.de>
 <20230920110719.GS637806@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920110719.GS637806@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_041316_438806_3D6B6F92 
X-CRM114-Status: GOOD (  29.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/11] regulator: merge struct regulator_internal fields
 into struct regulator_dev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-20, Sascha Hauer wrote:
> On Wed, Sep 20, 2023 at 12:52:03PM +0200, Marco Felsch wrote:
> > Hi Sascha,
> > 
> > On 23-09-20, Sascha Hauer wrote:
> > > Each struct regulator_dev instance has a struct regulator_internal
> > > associated with it. The idea was that core internal fields are seen
> > > by the core only. In the end this is more confusing than helpful. We
> > > have a ri->rdev link, but no rdev->ri link so that we can't get a
> > > rdev from a ri pointer. We could add that link, but instead make the
> > > whole stuff a bit easier by just merging everything from struct
> > > regulator_internal to struct regulator_dev.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/regulator/core.c | 214 ++++++++++++++++++---------------------
> > >  include/regulator.h      |   9 ++
> > >  2 files changed, 106 insertions(+), 117 deletions(-)
> > > 
> > > diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> > > index e9b5b82dbe..41a3378ac8 100644
> > > --- a/drivers/regulator/core.c
> > > +++ b/drivers/regulator/core.c
> > > @@ -13,21 +13,8 @@
> > >  
> > >  static LIST_HEAD(regulator_list);
> > >  
> > > -struct regulator_internal {
> > > -	struct list_head list;
> > > -	struct device_node *node;
> > > -	struct regulator_dev *rdev;
> > > -	int enable_count;
> > > -	int enable_time_us;
> > > -	int min_uv;
> > > -	int max_uv;
> > > -	char *name;
> > > -	const char *supply;
> > > -	struct list_head consumer_list;
> > > -};
> > > -
> > >  struct regulator {
> > > -	struct regulator_internal *ri;
> > > +	struct regulator_dev *rdev;
> > >  	struct list_head list;
> > >  	struct device *dev;
> > >  };
> > > @@ -41,13 +28,12 @@ static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
> > >  	return -ENOSYS;
> > >  }
> > >  
> > > -static int regulator_enable_internal(struct regulator_internal *ri)
> > > +static int regulator_enable_internal(struct regulator_dev *rdev)
> > >  {
> > > -	struct regulator_dev *rdev = ri->rdev;
> > >  	int ret;
> > >  
> > > -	if (ri->enable_count) {
> > > -		ri->enable_count++;
> > > +	if (rdev->enable_count) {
> > > +		rdev->enable_count++;
> > >  		return 0;
> > >  	}
> > >  
> > > @@ -59,30 +45,29 @@ static int regulator_enable_internal(struct regulator_internal *ri)
> > >  	if (ret)
> > >  		return ret;
> > >  
> > > -	ret = rdev->desc->ops->enable(ri->rdev);
> > > +	ret = rdev->desc->ops->enable(rdev);
> > >  	if (ret) {
> > >  		regulator_disable(rdev->supply);
> > >  		return ret;
> > >  	}
> > >  
> > > -	if (ri->enable_time_us)
> > > -		udelay(ri->enable_time_us);
> > > +	if (rdev->enable_time_us)
> > > +		udelay(rdev->enable_time_us);
> > 
> > regualtor_dev does not have a 'enable_time_us' or do I miss something?
> 
> Yes, the rest of this patch ;)

Argh.. sorry for the noise.

Regards,
  Marco

> > > diff --git a/include/regulator.h b/include/regulator.h
> > > index b0a500434c..5eb236e602 100644
> > > --- a/include/regulator.h
> > > +++ b/include/regulator.h
> > > @@ -85,6 +85,15 @@ struct regulator_desc {
> > >  };
> > >  
> > >  struct regulator_dev {
> > > +	const char *name;
> > > +	struct list_head list;
> > > +	struct device_node *node;
> > > +	int enable_count;
> > > +	int enable_time_us;
> > > +	int min_uv;
> > > +	int max_uv;
> > > +	const char *supply_name;
> > > +	struct list_head consumer_list;
> > >  	const struct regulator_desc *desc;
> > >  	struct regmap *regmap;
> > >  	bool boot_on;
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


