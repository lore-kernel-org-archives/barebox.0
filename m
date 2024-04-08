Delivery-date: Mon, 08 Apr 2024 16:06:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtpdc-002mFP-2q
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 16:06:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtpdc-000527-AK
	for lore@pengutronix.de; Mon, 08 Apr 2024 16:06:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=54+X3/x+izEiqQsqu/xnRyt1z2YS1u1WMKBWWPSdSvU=; b=pyYCSC/ED2kh/jwSYmIbPWLIFt
	qfF+DwJxhmnlXBsyzr41pYRCqaILCey3IaHpTFB8nvT94MeH4Zx7m/loKeouOzeqq1YihHjnc2HRJ
	SKLsR1H/J+oJwHg5q2fMdFfux2ONqmoLxpsRPvfTDvnpFF4WC8jBG0MelrDcXpUXLv2W4xesFnICE
	FGFs0IgoKJrxr5XLWciykLHw/D2gfJdzUXArP7z/wkOrBYAIGBKmkVVayQdRn4jP+XQ/Y+zkgQ8TY
	Sgwqo6L0ZdJx7MOlXIY5tJOUZhAZIORRkL/dBtb287duz4bxSNMcue3xSKjV+IwBxt+PnmMbe/x6v
	GoxhXFxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtpcY-0000000Foau-3vDV;
	Mon, 08 Apr 2024 14:05:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtpcU-0000000Foa0-0wf9
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 14:05:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rtpcQ-0004iY-EV; Mon, 08 Apr 2024 16:05:06 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rtpcQ-00B7zj-1v; Mon, 08 Apr 2024 16:05:06 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rtpcP-002s8p-3A;
	Mon, 08 Apr 2024 16:05:05 +0200
Date: Mon, 8 Apr 2024 16:05:05 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240408140505.bbkyewbmyvzhkncp@pengutronix.de>
References: <20240408073612.4075622-1-m.felsch@pengutronix.de>
 <d1d4cb86-58a3-4ea1-8389-17e90d4058c0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d1d4cb86-58a3-4ea1-8389-17e90d4058c0@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_070510_352290_57E87072 
X-CRM114-Status: GOOD (  20.66  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] bootm: don't allow bootm_set_verify_mode if
 BOOTM_FORCE_SIGNED_IMAGES is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-04-08, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 08.04.24 09:36, Marco Felsch wrote:
> > The only allowed value for bootm_verify_mode is BOOTM_VERIFY_SIGNATURE
> > if CONFIG_BOOTM_FORCE_SIGNED_IMAGES is enabled. This is set via the
> > bootm_init() initcall. All further attempts to modify this variable
> > should be prevented.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  common/bootm.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/common/bootm.c b/common/bootm.c
> > index a59fa35008a9..e6703b19b3ba 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -75,6 +75,11 @@ enum bootm_verify bootm_get_verify_mode(void)
> >  
> >  void bootm_set_verify_mode(enum bootm_verify mode)
> >  {
> > +	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
> > +		pr_err("BOOTM_FORCE_SIGNED_IMAGES enabled, prevent modifying bootm_verify_mode\n");
> > +		return;
> > +	}
> 
> We bootm_set_verify_mode(BOOTM_VERIFY_SIGNATURE) shouldn't result
> in a warning message.

I was considering this as well.. I will add it, thanks.

> With this addressed:
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > +
> >  	bootm_verify_mode = mode;
> >  }
> >  
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


