Delivery-date: Tue, 06 Oct 2026 10:10:46 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xE0G6-00AQJV-1D
	for lore@lore.pengutronix.de;
	Tue, 06 Oct 2026 10:10:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D3FA8202013
	for <lore@pengutronix.de>; Tue, 06 Oct 2026 10:10:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QVwz9nKO;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UkvrHY4O;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791274246; a=rsa-sha256;
	cv=fail;
	b=eA1H6N71GbAyFf1ZhxMAqc5bTLwGk0KbZAEV270UnVRD8tXTDPHqcJPAr/5t7ktNGRSXoJ
	Ge2IOTSxXZqvCn5odOSmU+FccRJpMB4ctBSfqAiGmD4ZdHwFdN6x+x1WXC4exYq0zacau5
	ciw5R/6GjrQeaqFSAOmgCYGCkhzJIfIfbY2NO07AR0BDVVhb09oNgqEm2r8XalYX4h//MY
	4DK5tGnSTlRm3b/cBcSjuTftOvRX+IzKPQJvT3ZPT3fG5GcdjzZWHi+1vOteuI/sMcLVAF
	ZhMEqmWkvCvpMgzDGn89pTlR/jHVAWWocyUQAAX0Jw2ITS68m443JxKT2DzzIw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QVwz9nKO;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UkvrHY4O;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791274246;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=3kPBOeUeczvRGVdLJszF1vYHzgBkJbpWHHW9Av+O2sM=;
	b=CqxGzQm90QsAMqlVvFqVrlo7owp5saM64vEAhiRA2KpcOc4+DWsF93+iW3gT/OKtgBwUbK
	1UUPRkd0H0ZjVV0Zlw3Yszt2LcqMYZZyCBPf+vHdqQicYQIMoAjfI7m6rnsvnAPkWo+kf0
	xVK5ue9lZcrZA9GbXLmzNwwPypK5cBvapEGLPidH4RCf/eV0sxFsaCt5X3CcdDUCbevF8n
	Mm3ToKv36+mtnG5z74gcJgcMSMlus/wKrtMWxHPUNEt17EioQduFuq0xr8tX1yBEQkroQs
	JQ5eS1GVzOEETtQi6ygfegKzXQF1qhX1emrtsGL0BcXKoHR3BqB8Gwu+6iB6BQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3kPBOeUeczvRGVdLJszF1vYHzgBkJbpWHHW9Av+O2sM=; b=QVwz9nKOBBEDrnZOFpmi1Lam3i
	V+O2JtFUqC7FlMiICkHw0IcY7WFrGeDFVaKqVCUTVmZjvAGthhaZGPqf3SyV2oiQFOcbmDcSwbWfd
	hVcxrBd4mL4rRLwyOlgct7KAk0yG1RUPW54uk7BRWmewv2o7kD2jjjf6bsGWd21f3oq2TTYdnYgM9
	EcgSZJBeSwEQl3ruatc6yAU3DzxviH8OstZ/iFY4kZpw/ha9O47GtYyi8EeK/pEN50ym9amIiPeiV
	TjoS+Btmj5Gb6/HE0H2X+bXy7TP6eS3G+g45TUKC5e1bKBcKZl/kAU7rwqNhvhdkRtUxvuv60fgCe
	vu93BT1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE0FM-00000000Ggk-0F1Y;
	Tue, 06 Oct 2026 08:10:00 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE0FH-00000000Gg8-1RmF
	for barebox@lists.infradead.org;
	Tue, 06 Oct 2026 08:09:58 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 59F432007E1;
	Tue, 06 Oct 2026 10:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791274193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3kPBOeUeczvRGVdLJszF1vYHzgBkJbpWHHW9Av+O2sM=;
	b=UkvrHY4OHO9uMA7HbUsYIaEcEyO4ktoHvZdZTXd5jFqcJ/P163ltnmjb4+Z/KyFgLKPtuc
	rFIA/ZRxMDegn0Y1S+yw0tKt11A/joMa8bRSeP9AwzMRA9l+j4ja+Moq4a/WIZFxNaztUv
	NNuEc2zevtoeKefoxCxBVmOWQHr3kx728ibgOh/iGFBy9OvKD8I3e9kKs9k0XEowNkoNee
	nVQPZauyYMtkiOZXrxmCCA4rNfxr/fNBvRSoWK8E8vbG40PlgvOa5+D25AeBYLYXHpggHL
	a8DZ8bTMSys3KlmTlPYNh+4CFpG7RfeRWeXcOmReRceBMwLrM77sFjw1h0MWKQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791274193; a=rsa-sha256;
	cv=none;
	b=f5qQR766HBUIzzpRiUGeLfaH52GIMAn5Tnnpi4Knr/zgx+3ET7s4OulhNuSVCgu8dd85km
	ulFZoG6Xs0AJPEx50P1XvJwYNIYBcHn8ueCRT2Im+FzFQGn7ELar2PAkc+zb1N6Vbwj96/
	A003HbAknLqJ5bjrOQcr5Wy2yDOfGGYT3eK+p6+19oeTc/dAzEgyfvVEE/hc/p13SQUHKu
	BLvHJCYuMcZl41f7q2XLe0/S5qA4e/k2Oq4hnZGHPOIvjEaFfXISOtpyUqKvUpdLsqmNuW
	W+hrGQFEyeqzlxC1W+VO9VgRfFZ79W/H6T4PrN6ByEoLo1QaM+EkX3pu/KYRug==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791274193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3kPBOeUeczvRGVdLJszF1vYHzgBkJbpWHHW9Av+O2sM=;
	b=bMm1sLSEsBuVMA+I4uF7IurtZxVOjetHY3FUUr50CEiYOqGnzA0nelSMj2ds5rEINMpSXz
	4fH2mwn8qE6THU0vC5cZuotNX9pBqU2f/ABvjhxjbG6ZKV5cIIw5WGAptGVSXkVpcHRZKj
	b4ErJI97khiUOZDWHUi+GwPF/wQjeeWkjhZpSgKMfNr/D5vT8vBafgYNmbvsku6Vy/LvNi
	Es3R6S1lhM9ra6QGaeOUa97g5LPTae+nsiUj0XRoVfFFZHDZ4eiP0A7vjHf00J6IOgJid4
	2UDmuthiQYXe+ucoopScUWvrgC6fXH8fEEBjdvjNKfWBxhGMyByNAB+QYQ6gpg==
Message-ID: <1aa09454-9e09-404b-9b35-32a83f2fb151@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] x86: efi: fix objcopy flags for barebox.efi
To: "Lucas Stach" <l.stach@pengutronix.de>
In-Reply-To: <2a0aae870ca1f7949fc1a9492284313be610c4cc.camel@pengutronix.de>
References: <20260429080710.2497884-2-corentin.guillevic@smile.fr>
 <2a0aae870ca1f7949fc1a9492284313be610c4cc.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 06 Oct 2026 08:09:52 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_010955_538908_32CCD691 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-02 12:51, Lucas Stach wrote: > Hi Sascha, > > can
    this patch please be added to the 2026.04 stable series? Missing > this patch
    currently prevents a successful build of Barebox for the x86 [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D3FA8202013
X-Stat-Signature: ka3jtsgxbdtmbkdpab7oebuq9tmf94z7

On 2026-10-02 12:51, Lucas Stach wrote:
> Hi Sascha,
>=20
> can this patch please be added to the 2026.04 stable series? Missing
> this patch currently prevents a successful build of Barebox for the x86
> platform in Yocto wrynose.

Picked for 2026.04 stable

Sascha

>=20
> Regards,
> Lucas
>=20
> Am Mittwoch, dem 29.04.2026 um 10:07 +0200 schrieb
> corentin.guillevic@smile.fr:
> > From: Corentin Guillevic <corentin.guillevic@smile.fr>
> >=20
> > Since the 2.46 version of binutils, a stricter target checking has been=
 added
> > (see [1]) meaning that the --target=3Defi-app-x86_64 option no longer w=
orks:
> > a 'file format not recognized' error occurs.
> >=20
> > Replace the --target option, which defines both the input and output ta=
rgets,
> > with --output-target.
> >=20
> > [1] https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommit;h=3D5e8=
3077d552ed6f81dbc092eb3ccf827a43de42c
> >=20
> > Signed-off-by: Corentin Guillevic <corentin.guillevic@smile.fr>
> > ---
> >  arch/x86/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> > index 647d075f016..9456815fa8a 100644
> > --- a/arch/x86/Makefile
> > +++ b/arch/x86/Makefile
> > @@ -62,7 +62,7 @@ KBUILD_LDFLAGS :=3D --no-undefined
> > =20
> >  OBJCOPYFLAGS_barebox.efi =3D \
> >  	-j .text -j .sdata -j .data -j .dynamic -j .dynsym -j .rel -j .rela \
> > -	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --target=3D$(TARGE=
T)
> > +	-j .reloc -j .bbenv.* -j .bblogo.* -j .barebox_imd --output-target=3D=
$(TARGET)
> > =20
> >  barebox.efi: $(KBUILD_BINARY) FORCE
> >  	$(call if_changed,objcopy)

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



