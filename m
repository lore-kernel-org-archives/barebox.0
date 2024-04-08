Delivery-date: Mon, 08 Apr 2024 16:13:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtpkL-002mcO-03
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 16:13:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtpkK-0006xr-EK
	for lore@pengutronix.de; Mon, 08 Apr 2024 16:13:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d7cQsOnpE/eMojD/2/cKYsd6TYt6E4HrF11Po3yuRQg=; b=e0ZU9glCdCxWNJcVO+HsbcVPAx
	4hq1pdsXHmIojGTIlysrOrTsa8lwTmrn7UYOcePgb8JojPlMDwbFp8BmQZA+D4Gmrg5CUCYh3PT2K
	RDEydZ49k7/u5cirstRVZJXoARsj4maiiZbI2aJ1OwF5CNGiSFEP+TaI3IM2YqhvHPXIlgGiOvVrb
	E+m7xbLtN8XbT+iPo8wdkZ6oKvlRPEvP7oh/AhwL67w8ueo5G5ybinfQH04fItQ/v7YcgMYvxcFZ4
	gd3JLBmcOOOIkkiHpduPV+767Po7Vwgo0+BLYCLmD+r+FqKoy53YtJjb1M8bpK6sg89DySupyBTqe
	39LJZNPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtpjK-0000000Fpci-0JaK;
	Mon, 08 Apr 2024 14:12:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtpjF-0000000FpZB-1UK9
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 14:12:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rtpjD-0006Rb-Uv; Mon, 08 Apr 2024 16:12:07 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rtpjD-00B8J8-IU; Mon, 08 Apr 2024 16:12:07 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rtpjD-002sMW-1a;
	Mon, 08 Apr 2024 16:12:07 +0200
Date: Mon, 8 Apr 2024 16:12:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240408141207.euqrcsetc2wd7tga@pengutronix.de>
References: <20240408073612.4075622-1-m.felsch@pengutronix.de>
 <20240408073612.4075622-2-m.felsch@pengutronix.de>
 <d64a0c84-bca0-42c9-955e-be23a65c38c9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d64a0c84-bca0-42c9-955e-be23a65c38c9@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_071209_464358_4D23B3BA 
X-CRM114-Status: GOOD (  22.44  )
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
Subject: Re: [PATCH 2/2] bootm: always apply strict signed FIT boot rules
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-04-08, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 08.04.24 09:36, Marco Felsch wrote:
> > We do use an strict boot rule if the CONFIG_BOOTM_FORCE_SIGNED_IMAGES
> > switch was enabled. Instead of only checking the compile time switch we
> > should check the runtime configurable $global.bootm.verify param too
> > while applying the rule.
> > 
> > Therefore make use of the bootm_get_verify_mode() to query the mode. If
> > CONFIG_BOOTM_FORCE_SIGNED_IMAGES was enabled the only allowed value is
> > BOOTM_VERIFY_SIGNATURE.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Are you aware of https://lore.barebox.org/barebox/20231023162748.533468-1-a.fatoum@pengutronix.de/
> 
> Would that address your use case?

Yes :) @Sascha do you have any concerns about Ahmads above patchset
(except the small typo in the 2nd commit message)?

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> > ---
> >  common/bootm.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/common/bootm.c b/common/bootm.c
> > index e6703b19b3ba..03af3d2b28f7 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -699,7 +699,7 @@ int bootm_boot(struct bootm_data *bootm_data)
> >  		goto err_out;
> >  	}
> >  
> > -	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
> > +	if (bootm_get_verify_mode() == BOOTM_VERIFY_SIGNATURE) {
> >  		data->verify = BOOTM_VERIFY_SIGNATURE;
> >  
> >  		/*
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


