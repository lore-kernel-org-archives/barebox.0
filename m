Delivery-date: Wed, 12 Aug 2026 09:15:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wu3BT-002Ftq-0C
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 09:15:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A7211201D1E
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 09:15:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=d4zNjJv7;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	Message-ID:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=A8omOE6DCMgsq7X/kFwHxMHmulwoTVu+BeOEYR751O8=; b=d4zNjJv7uVzc1k
	4c/hFLWTjse/mR1PZKK1CLTRwmiAjko1j1cr9YZvPvJDnO27A7TDR3ENchbubn0QVvdbwYQ8GxLeh
	bEm0+OYJLhf37+As14nK8lynWu68Pj7RT1oPHId1V/mTvHmi8OnKvlZzPAg4rwiJAIZR7IJCLjQKd
	IKisO4PYu2FV3soReiabzZjqdCe/5cx199XBr836u1JpKEXnOsy/izkSgMVKkBI0Kcrbbop1dzRA1
	YjYPvgvEgDR3yklMTwpMElGjRP+uGAOePzZemYfi3BVYjpSwwZraV1CY1u/Fs263ufGsKRwpR5SmP
	5NVLtoNFmTSwqR6MWwfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu1wx-0000000FTY9-0oQa;
	Wed, 12 Aug 2026 05:56:27 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu1wu-0000000FTXg-2UmQ
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 05:56:26 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c58:8900:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B2EAA20128B;
	Wed, 12 Aug 2026 07:56:22 +0200 (CEST)
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 2/3] ARM: lib32: pbl: implement get_time_ns and
 is_timeout
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <a2b7c9d2-b6b0-4c64-818c-f945b117fb94@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Aug 2026 05:56:22 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_225624_808761_72C8E7BA 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-11 12:21, Ahmad Fatoum wrote: > Hi, > > On 8/11/26
    12:13 PM, Stefan Kerkmann wrote: > > ARMv7-A cores can implement the optional
    64bit wide generic timer > > CNTPCT[1]. If it is present we [...] 
 
 Content analysis details:   (-1.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 MISSING_MID            Missing Message-Id: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJBUkVCT1g=?= <barebox@lists.infradead.org>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 3qe1mxyyqik3d39soqacmhmuj3xn9w78
X-Spamd-Result: default: False [-1.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MID(2.50)[];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: A7211201D1E
Message-ID: <20260812055622.FV9CYMelzjD8hmsYUpL7otBk7O9qDKWJvTsFpfNNlTk@z>

On 2026-08-11 12:21, Ahmad Fatoum wrote:
> Hi,
>=20
> On 8/11/26 12:13 PM, Stefan Kerkmann wrote:
> > ARMv7-A cores can implement the optional 64bit wide generic timer
> > CNTPCT[1]. If it is present we can use it to implement the get_time_ns
> > and is_timeout helpers which in turn enable the whole read_poll_timeout
> > class of functions in the PBL. As it is guaranteed that the timer won't
> > wrap for 40 years no overflow handling is necessary.
> >=20
> > [1]: See "ARM Architecture Reference Manual ARMv7-A and ARMv7-R edition
> > (rev C.d)", Chapter B8 "The Generic Timer"
> >=20
> > Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> > ---
> >  arch/arm/lib32/arm_architected_timer.c | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm/lib32/arm_architected_timer.c b/arch/arm/lib32/ar=
m_architected_timer.c
> > index 54eca13f8b..75f74cbc15 100644
> > --- a/arch/arm/lib32/arm_architected_timer.c
> > +++ b/arch/arm/lib32/arm_architected_timer.c
> > @@ -10,8 +10,21 @@ void arm_architected_timer_udelay(unsigned long us)
> >  	unsigned long long ticks, cntfrq =3D get_cntfrq();
> >  	unsigned long long start =3D get_cntpct();
> > =20
> > -	ticks =3D DIV_ROUND_DOWN_ULL((us * cntfrq), 1000000);
> > +	ticks =3D DIV_ROUND_DOWN_ULL((us * cntfrq), MSECOND);
> > =20
> >  	while ((long)(start + ticks - get_cntpct()) > 0)
> >  		;
> >  }
> > +
> > +uint64_t get_time_ns(void)
> > +{
> > +	return get_cntpct() * SECOND / get_cntfrq();
>=20
> I think you need to use one of the 64-bit division macros here.

Also the corresponding barebox proper code doesn't depend on the timer
being initialized to 0. I don't know if we can guarantee this for the
architected timer, but otherwise get_cntpct() * SECOND could easily
overflow.

>=20
> > +int is_timeout(uint64_t start, uint64_t time_offset_ns)
> > +{
> > +	if ((int64_t)(start + time_offset_ns - get_time_ns()) < 0)
> > +		return 1;
> > +	else
> > +		return 0;
>=20
> That's a convoluted way to write
>=20
>   return get_time_ns() >=3D start + time_offset_ns;
>=20
> Why did you structure it this way with the cast?
>=20
> (A 64-bit nanosecond timestamp overflows after hundreds of years).

It's a direct copy of the non-pbl is_timeout implementation. It's
agnostic to the timer initialization value which is not necessarily 0.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



