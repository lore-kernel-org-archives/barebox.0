Delivery-date: Wed, 20 Sep 2023 13:47:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivfb-004aiI-Mx
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivfZ-0000RM-H2
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iCbjpqytOlPzMYlzPLWp3q4FUk6/mgl0b/gNgLNKG/k=; b=UI+q1gVRaROCN6RV6oRkhns1I+
	S1egXnzRAT/IKW2NqjNtZxW8cDEK8vs9Bz5uNP0087nsn9RGcm1vPxe8DBDSJKyL4iLWmqOV6QO/Y
	NmM0OMRJUFX/+/ZdqdleyYH7ovfnaVoGSjwHp4T7HTTg2PZPVBUTAuDOjgb7FQxsmCVf2LZR5pDqS
	1Lgq8eXefVmBxN3qomSpswbGM/UM/VCo2gAPD1V/SZy2mWEzeYVlFuXhYWNBITrbvMwIlepjtZXlk
	cNjLoaJ+iIbB0jiMRzovzLcoIaRzcuTyjdq/lI50zh6v6bso4d0ttuQwr7ECo9RSsl6wF7Mqypnu0
	dPcmkIUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiveY-002uYr-1U;
	Wed, 20 Sep 2023 11:45:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiveV-002uXo-1U
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:45:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiveU-0000CN-5z; Wed, 20 Sep 2023 13:45:54 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiveT-007fyi-Pf; Wed, 20 Sep 2023 13:45:53 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiveT-00AAty-NR; Wed, 20 Sep 2023 13:45:53 +0200
Date: Wed, 20 Sep 2023 13:45:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920114553.GU637806@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
 <20230920103316.2758383-5-s.hauer@pengutronix.de>
 <20230920112531.jgn5fnjjslccjcsy@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920112531.jgn5fnjjslccjcsy@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_044555_496826_3B305EAE 
X-CRM114-Status: GOOD (  24.38  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/11] regulator: add regulator_get_voltage_internal()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 20, 2023 at 01:25:31PM +0200, Marco Felsch wrote:
> On 23-09-20, Sascha Hauer wrote:
> > regulator_get_voltage() works on struct regulator * which may not always
> > be available internally, so add a regulator_get_voltage_internal() and
> > use it from regulator_get_voltage().
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/regulator/core.c | 52 +++++++++++++++++++++-------------------
> >  1 file changed, 27 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> > index 8ef5a2372c..5693fa9634 100644
> > --- a/drivers/regulator/core.c
> > +++ b/drivers/regulator/core.c
> > @@ -121,6 +121,32 @@ static int regulator_set_voltage_internal(struct regulator_dev *rdev,
> >  	return -ENOSYS;
> >  }
> >  
> > +static int regulator_get_voltage_internal(struct regulator_dev *rdev)
> 
> Can we name this regulator_get_voltage_rdev()? This would align the code
> with Linux.

Yes. The _internal suffix currently aligns with the other functions we
have in barebox, so I'll keep it here in this patch and add a patch to
this series changing the names for all functions.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


