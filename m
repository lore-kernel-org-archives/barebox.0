Delivery-date: Wed, 20 Mar 2024 11:49:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmtW9-00F2tE-0v
	for lore@lore.pengutronix.de;
	Wed, 20 Mar 2024 11:49:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmtW8-0006E4-Kl
	for lore@pengutronix.de; Wed, 20 Mar 2024 11:49:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ftyBZIaiBRy2O0+zaP1hI3i/zCWunOXCIriA/smmDEU=; b=t0xEZMAfULRdbT/uoW823AffxB
	HTBcd3TAvDganVAMRB5+Zwf0Z0U3jvh8uJEHL7lNJPzhXPHEXeeR9DVn+nGnb7+4qaDylbbVDy3oo
	q+in3z3HkS2Hu0ArZhI5Z/diKt9DlLHs8OhTvv+6Dj2eC59nURmPRTrzyayaqLva3sL8xQLyUCT/M
	LK7dWyKN6buOxTYfu5kuiq1YLhVqg2+005qO9zfWz/C+QX+/yWOkTiC83Pi74E5mZhRWSxhsj0z9u
	baiYyXpnLgz/lKWTIgdUO0O4dgy/fJG7XCfSOb2d7397kf5eyxrcJ3by6Xgs3p3T8Oq6WEr1T2yuQ
	kSECmJ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmtVK-0000000Gq73-2KSQ;
	Wed, 20 Mar 2024 10:49:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmtVI-0000000Gq69-0caU
	for barebox@lists.infradead.org;
	Wed, 20 Mar 2024 10:49:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rmtVE-0005Mb-Er; Wed, 20 Mar 2024 11:49:00 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rmtVE-007RtK-2b; Wed, 20 Mar 2024 11:49:00 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rmtVE-008Xv9-00;
	Wed, 20 Mar 2024 11:49:00 +0100
Date: Wed, 20 Mar 2024 11:48:59 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Leonard =?utf-8?B?R8O2aHJz?= <lgo@pengutronix.de>
Message-ID: <20240320104859.g426mfwf4mrxmpu3@pengutronix.de>
References: <20240313194547.3725723-1-m.felsch@pengutronix.de>
 <20240313194547.3725723-4-m.felsch@pengutronix.de>
 <d899c758-8527-4c3b-854c-4014e8fdbc2f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d899c758-8527-4c3b-854c-4014e8fdbc2f@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_034904_318924_61BE3A22 
X-CRM114-Status: GOOD (  25.95  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] bootm: add global.bootm.provide_hostname option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 24-03-14, Ahmad Fatoum wrote:
> Hello Marco,
> 
> Cc += Leonard
> 
> On 13.03.24 20:45, Marco Felsch wrote:
> > +		if (!barebox_hostname_is_valid(hostname)) {
> > +			pr_err("Provided hostname is not compatible to systemd hostname requirements\n");
> > +			ret = -EINVAL;
> > +			goto err_out;
> > +		}
> > +
> > +		hostname_bootarg = basprintf("systemd.hostname=%s", hostname);
> 
> Linux >= v6.0 supports a hostname= parameter and there's a discussion to decide what
> the semantics should be and if it should differ to systemd.hostname=:
> https://github.com/systemd/systemd/pull/25158

Thanks for the pointer, I think this discussion is still ongoing and
after skipping through the longly thread my impression is that the
semantics are the same.

> I am not fully sure, whether we should go with hostname or systemd.hostname= here.

As you have said, the hostname= param was added with v6.0 so by this
change distros using older kernels could benefit. Also I think that
hostname and systemd.hostname should be the same, to cite the GH
discussion:
8<-------------------------------------------------------------------
...

If there was already hostname= with those semantics on the kernel side
in place, I'm pretty sure we would've just reused it instead of defining
systemd.hostname=.

...
8<-------------------------------------------------------------------

Therefore I would keep the systemd.hostname as it was done by this
patch or we can supply both systemd.hostname= and hostname= but setting
it to the same value.

Regards,
  Marco

> @Leonard, what do you think?
> 
> Cheers,
> Ahmad
> 
> 
> > -static bool barebox_hostname_is_valid(const char *s)
> > +bool barebox_hostname_is_valid(const char *s)
> >  {
> >  	unsigned int n_dots = 0;
> >  	const char *p;
> > diff --git a/include/bootm.h b/include/bootm.h
> > index ee2b574521db..c69da85cdda1 100644
> > --- a/include/bootm.h
> > +++ b/include/bootm.h
> > @@ -34,6 +34,11 @@ struct bootm_data {
> >  	 * value of global.machine_id to Kernel.
> >  	 */
> >  	bool provide_machine_id;
> > +	/*
> > +	 * provide_hostname - if true, try to add systemd.hostname= with value
> > +	 * of global.hostname to Kernel.
> > +	 */
> > +	bool provide_hostname;
> >  	unsigned long initrd_address;
> >  	unsigned long os_address;
> >  	unsigned long os_entry;
> > diff --git a/include/common.h b/include/common.h
> > index b7b4d9e35094..d7b5261bc921 100644
> > --- a/include/common.h
> > +++ b/include/common.h
> > @@ -127,6 +127,7 @@ void barebox_set_model(const char *);
> >  const char *barebox_get_hostname(void);
> >  void barebox_set_hostname(const char *);
> >  void barebox_set_hostname_no_overwrite(const char *);
> > +bool barebox_hostname_is_valid(const char *s);
> >  
> >  const char *barebox_get_serial_number(void);
> >  void barebox_set_serial_number(const char *);
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


