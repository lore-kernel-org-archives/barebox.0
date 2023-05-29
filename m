Delivery-date: Mon, 29 May 2023 14:19:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3bqY-001KEh-U3
	for lore@lore.pengutronix.de; Mon, 29 May 2023 14:19:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3bqW-0006LW-2k
	for lore@pengutronix.de; Mon, 29 May 2023 14:19:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5eKu4yuUNA+sR0OdNSVPJp1SraPlA3IJmzJqhiApcm8=; b=0Mny/PT/vdHrR5vg2S73Z1EbiD
	6kfe7RxbiEp4aH9BaSEnxHd1s7QazbUQisu1Rn3hXPSe+xB3gUQpblEsl6PAnJttVjMO6hY6XPlXr
	WdtRAqf4Xw1y3nLg8zv3nNgH96wGi0Y/3FzI1zqENbONl4hPCqXBI0vQ5Yn1FgfrTCHFdZmtV1xfw
	UI39vDrQGVgoyM4kMYRxdf/Yce64PljqTBG3b2xua6AUqsm5B2GLDnv560Z4AHS8HR1Cp0DTGePcE
	RMoJXhDUs96Ea4iXgaKyUfHvP31zNGH9G9ra7Nnwbsra5ULv55b8Hmc3V9USB8SPjwG1Qr+xe9Nel
	Dy3OtovA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3bpc-00AP1G-2M;
	Mon, 29 May 2023 12:18:36 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3bpX-00AOxI-3B
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 12:18:34 +0000
X-GND-Sasl: jmaselbas@zdiv.net
X-GND-Sasl: jmaselbas@zdiv.net
Received: by mail.gandi.net (Postfix) with ESMTPSA id C78B3FF807;
	Mon, 29 May 2023 12:18:27 +0000 (UTC)
Date: Mon, 29 May 2023 14:18:26 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: marc@cpdesign.com.au
Cc: barebox@lists.infradead.org
Message-ID: <ZHSYEhkuMVhPJvSS@tour>
References: <20230529001318.12309-1-marc@cpdesign.com.au>
 <20230529001318.12309-2-marc@cpdesign.com.au>
 <ZHRu-XrMGdZWLpk2@tour>
 <8267577.NyiUUSuA9g@dev8>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8267577.NyiUUSuA9g@dev8>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_051832_169343_3A75ACA2 
X-CRM114-Status: GOOD (  10.97  )
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

On Mon, May 29, 2023 at 09:03:52PM +1000, marc@cpdesign.com.au wrote:
> Hi,
> 
> Thanks for your comments. ..
> 
...
> > > +	error = pwm_apply_state(pwm, &state);
> > > +
> > > +	if (stop > 0) {
> > > +		state.p_enable = false;
> > > +		error = pwm_apply_state(pwm, &state);
> > > +	}
> > > +
> > > +	pwm_free(pwm);
> > > +
> > > +	return error;
> > 
> > nit: return 0
> > 
> 
> This I didn't change - error is propagating return value of pwm_apply_state()
Oh, you're right, sorry

> 
> I also fixed your other comments for pwm_get (including the somewhat 
> embarrassing ^S :/ )
> 
> Cheers
> Marc
> 
> 
> 


