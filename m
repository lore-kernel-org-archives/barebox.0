Delivery-date: Mon, 29 May 2023 13:05:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3agd-001Fa0-6C
	for lore@lore.pengutronix.de; Mon, 29 May 2023 13:05:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3aga-0006FK-7Y
	for lore@pengutronix.de; Mon, 29 May 2023 13:05:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Io085KzBo2Lg+rVbOjW5VU5UKAtMBt4AIcgm6g1/I3Y=; b=sbouQns4KsArvh4BgvzWslRsjM
	Fche71MAk/ozSUtRJ3wFs1kM43sA06pPazvVG7cNQhoBXNxz7GC+QiNMw4Jg3SL+faeWus2Zfxtmj
	zBaMqeZq1KkvtteG/v7eSpRhLYkiNlZ/hhmWzaww+900Y+mgJo4/bxbG1EuYFhBJXGq/ImOhUfymW
	d+0KsFZr4+N87Zsi7nlCJ/cdo6lH0ICsu4TLUMvQ8e3LtPFMioca8XP05Jy4FBELRpPjeP7Rco1+e
	HN+syuNWoGTcWTnbcXYcFpfZLxRRxwbpHYnreVlx4vhVoIoahu9Kodn+SkFiRYsNn7IwuBY7KjLZl
	XHZAo31g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3afk-00AEAY-14;
	Mon, 29 May 2023 11:04:20 +0000
Received: from vmse02.mailcluster.com.au ([2401:fc00:0:14::6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3afh-00AE9O-22
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 11:04:19 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
	by vmse02.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3afN-0001nP-1p; Mon, 29 May 2023 21:04:06 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=cpdesign.com.au; s=default; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Io085KzBo2Lg+rVbOjW5VU5UKAtMBt4AIcgm6g1/I3Y=; b=VWsYvC7/s3/kYmPl/qYEmLkwlR
	nsbb2nw4eYiATiQ6RNCw3RANG9NqtGRlB9DLe7pr80LcPPho/2KLWrIP+vKldXRDS2NawagZa5nNU
	lnndaQuDiSCoTZTHgEendIev8UoXMCRyTx1ppQE0OIoMS8hknaqJn3w+i4d5gdQK5BwMRbRLidZcF
	Nvfp49ahZcn5LJ7fZyyPSoa/MfyL3sAMFSsqChZmx3Wi7Y0NnhmKJNmNrrukP3SdjOaK6ZBN/C/00
	89Whfs5BkO11rgopxNABjGPBZsndZWd8NghU/Yuug0eKe0E2E8Vi2GgMkTK45RNsM86EY4LadHScb
	uA04jHWg==;
Received: from 180-150-33-184.b49621.mel.static.aussiebb.net ([180.150.33.184]:38162 helo=dev8.localnet)
	by vmcp03.web-servers.com.au with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <marc@cpdesign.com.au>)
	id 1q3afK-001AWf-0A;
	Mon, 29 May 2023 21:03:54 +1000
From: marc@cpdesign.com.au
To: Marc Reilly <marc@cpdesign.com.au>, Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Date: Mon, 29 May 2023 21:03:52 +1000
Message-ID: <8267577.NyiUUSuA9g@dev8>
In-Reply-To: <ZHRu-XrMGdZWLpk2@tour>
References: <20230529001318.12309-1-marc@cpdesign.com.au> <20230529001318.12309-2-marc@cpdesign.com.au> <ZHRu-XrMGdZWLpk2@tour>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.07)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT8G5IE6avQrXhBY4sIWUo56PUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5zZNWpCTgMY4rAFxP+dQUtRGpJ5l4jm0YY5YK6f3PIAxgYp
 5Zdq7VkIEqbEtCJeZyQ9Uwgb4ML3M5heYblSd5g3bH1ug4+sgd7+MOlByBjMEuKVse1sVhWabI0/
 +PN3sIJwaamb6PEvxJYegyRXvOeQ4ybxSL4dzc/suecpT7zSkZDE08B0kir06iNj3o+H7d+urJ0p
 Gh0jY+DhNhUZ6Qwj6z+5LI6KWw+EFWDsXlLtznfYmDdCTbxJTxKL61PaKYjQzE4pWsN9DMOCoUO6
 aPH3EcpL0mLpbSEWvtYz7WRBt3Nu1v59VtN2wpeG/kC6a0h/md379rr83wlGsPkb/cfMNLm6iy4k
 gPDH7bQQJw2SD8hDqF0K58xL38EJqny9AYcJBV5TMglJq7ZJ+4SSCvZpqZJPq0P98FvWTwEpOhyA
 dK9EwlGbGhvpiwB+1aAwvExqRdJ60yZ10Lp4JCjW4628WBV+VvfCWXzOFA86fiNrd4ZYMS5b0REn
 ZGmIVtAcG/aT+hDLrdpOq/9LUsFywMzFnevugAfZhKUV+b8uu1sA43oSKlHMxVnkurBPHtW+f1JA
 YOMrzJ+TAQHcCbm2q4v4c8MEhRXDKUBRLUcQMTK6KWg6nTBpN9Wl0lECPebr/HfV9u2cdPOsB/uB
 JNwB/NsAB5hQ6nsDvccjqgmDvD9Wh84b6sjxSb1Lmuw6FDFxnvI/uD+/zbDU+yRwrzpxz6eD3Z/n
 KLrE+foBRgHDmjSepZmndz2dtMxjFcuofg9XRcOqbx9cPcGR31mI6M1Ucaz2zTnE2QOLFmTK7djF
 HwOqKm+lhz7GyMjKGT2624uhIvJ3dsUPl7uuWZECTxDoGLxKt+sZddgrER+iDlOCADUuuqO7BY7q
 pfYoGU/WqQffBDdE9pAjzOMdBkvUg0ynHOVGNidR5jp3O3YsvRXBwVDa6HxuMcd2P8wQq1Hrgnsy
 elijyi72q26GLQXfVi5tvacmEcm/AptiAK3Qer0NdTIq339EeePrMrbsSPIk7NCI8yR8Oe+eeif5
 kmWp9+hj61tGgVgNLOPm8IomEhRZ1VMkd2L9vCOdPQqzoaTMNwUi4CevMyduSR5H9stXx9/Mf6KV
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_040417_679558_DB529B44 
X-CRM114-Status: GOOD (  11.57  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/3] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Thanks for your comments. ..

> > +	if ((state.period_ns == 0)
> > +			&& (freq < 0) && (duty < 0) && (period < 0)) {
> > +		printf(" need to know some timing info; freq or dury/
period\n");
> 
> typo: s/dury/duty/
> 
> > +	    pwm_free(pwm);
> 
> indentation
> 


Fixed in v3

> > +		return COMMAND_ERROR_USAGE;
> > +	}
> > +
> > +	if (invert_polarity >= 0)
> > +		state.polarity = invert_polarity;
> > +
> > +	/* period */
> > +	if (freq > 0) {
> > +		state.p_enable = true;
> > +		state.period_ns = HZ_TO_NANOSECONDS(freq);
> > +		if (width < 0) {
> > +			width = 50;
> > +		}
> > +	} else if (period > 0) {
> > +		state.p_enable = true;
> > +		state.period_ns = period;
> > +	}
> > +
> > +	/* duty */
> > +	if (width >= 0) {
> > +		pwm_set_relative_duty_cycle(&state, width, 100);
> > +	} else if (duty >= 0) {
> > +		if (duty > state.period_ns)
> > +			printf(" warning: duty_ns is greater than 
period\n");
> > +
> > +		state.duty_ns = duty;
> > +	}
> > +
> > +	error = pwm_apply_state(pwm, &state);
> > +
> > +	if (stop > 0) {
> > +		state.p_enable = false;
> > +		error = pwm_apply_state(pwm, &state);
> > +	}
> > +
> > +	pwm_free(pwm);
> > +
> > +	return error;
> 
> nit: return 0
> 

This I didn't change - error is propagating return value of pwm_apply_state()

I also fixed your other comments for pwm_get (including the somewhat 
embarrassing ^S :/ )

Cheers
Marc





