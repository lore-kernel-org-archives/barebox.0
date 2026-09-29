Delivery-date: Tue, 29 Sep 2026 13:11:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBVkK-007edc-1P
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 13:11:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DE2452010E2
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 13:11:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SWJy6mTZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Yj8zisMo;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=f21lmxJA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790680300;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IWYrux/VFykhtxDTTn1b/tKzdi7pwA2j0L9c1xCdNtY=;
	b=Sea/w2usN7cNdQZxVTl9uDNLG8blx1W3UeQKjUQdaudNoA1uC/25hQYKTlB38BOSgIeb0Z
	SblptWBVVIAuOlmJUAXwVSQjBKzT0sa7JOjigw6n1XDSaPlolX/8q9PQvk191CqFQqXXdT
	dHb0joId9c43YWTsMFucLj8c62fwp+GrvYIHdbMv8fdGT6cWka56P1H2tkIVXEHchsdqzy
	2xKN42opTgrstFQ5JrV3QRpABaMfCSoGDi0frRti+WGP5Ym1uh/5Cni2pkXZoTPHL/Yyn2
	e2xAj5v2VziGqwwjgMP8q2Q5qSsDAV/LDApzagJY3kkHuHDvyIfDLDuKz5Szww==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790680300; a=rsa-sha256;
	cv=fail;
	b=IrH6nyBnQ1l5oH+b5EsulAQ1rHrhMB2rN9gPnyMRiCffbR9UCl0pKubHYGMlvuEoCqdl5x
	l/tRYNxkSeTwiUE9Sclg1z9iiZ9gCV4fhr2OFkWvDi/3LlGZt+CPoMFxJVsLhs0drWVoMv
	tJnge7mDT8gxAY5pp6CMhhuucW9RqQtyY0A8NNFveaxdA574V3kPfjKA3Hd0zuahzMOSlx
	11E1U5WsLRvbdXgVfDskl7K+NjBJfRAw+9gVoJV7/gKqgmlFbW8S5Vfsjcr3mr5CigoQux
	CffXJUnlSGbnwDaKo3OnoOeLGw+ajYZMp3QrTQOMwiiSyskZZ8KytNJxnHGwzA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SWJy6mTZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Yj8zisMo;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=f21lmxJA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IWYrux/VFykhtxDTTn1b/tKzdi7pwA2j0L9c1xCdNtY=; b=SWJy6mTZUVQhuoUM/1P/kQcK8S
	uoJDubIfOPLNTluw/pAmsGePgnw52pxhJpG2VXSkuqdAY+Hx2gzMGXuUBOAd7JDMdjnRDPwOJs5V9
	W5x/U0neEdKCyVTPqRpk7nc1vf9RYsTykD1vesyBYys82M6viZBqGn95Tr8fMCugsD+rdYQD2+cF7
	oEwr/vmyKnudERpZgfGNxuwG99n6mAw5/QndGQB8F7rF0VI5L/WeJNEKBeDZYIlCCjHwHXUZU8wCV
	7tb4iHqeGEv2LnIzvI+JjbBoENG36hObeN1JWTuUTW5tpAZwFTu+FK3R4OHdEyUFUubL9EOTRGz5C
	acq1Lg3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBVij-00000003MqU-2s4D;
	Tue, 29 Sep 2026 11:10:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBVii-00000003Mpp-1vrJ
	for barebox@bombadil.infradead.org;
	Tue, 29 Sep 2026 11:10:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Cc:To:Subject:From:Message-ID:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description;
	bh=IWYrux/VFykhtxDTTn1b/tKzdi7pwA2j0L9c1xCdNtY=; b=Yj8zisMoyam/mQIbOM+78JfmRN
	DgFHBxq5gGZ18SIbAX2A7o72nu0h/IVb4V4HTeSHQvfdNFf1LVnVBiok1aL4t5sosdHfeI+zKPWib
	/f1WVYKzOy1TfVPM9pFzyyL9cSBVTGzBknb53B3h5pR8QZ+nus0IwUlDHTlDvvCksz3q41K2ASxaQ
	GTgH/Q93xK2KY0XjvKNP0MwCCWsA/T5PJTam5SppKNyC+Jb+y/oOQGvrOrE86MNQikKHZTY5u+h0O
	owqO+lnUloMZiZeaw7ri88lywvaGEXZuELGk039CBvDgAPqmVUXHQ8WpC8mgxrw58l1yi5Sm5zHCh
	pnbvA32w==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBVie-00000002XdJ-2tqY
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 11:09:58 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 86D912010E2;
	Tue, 29 Sep 2026 13:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790680194;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IWYrux/VFykhtxDTTn1b/tKzdi7pwA2j0L9c1xCdNtY=;
	b=f21lmxJAwMUoYYXweM8Fh1E8j9Q/+Rqss4twZDBXojX07dG1vWaFCyEvaWp2qxDE0R+/aO
	LYRP3WcKGZNhhsQ/48lPhnLYtzHw1SHt/YIr+axbrOET7Hh+XrbWk1PJuYf8cbsGlJL3hC
	APVmsb4+Z72NkpepP+vfgpwvXLF4PHvxPxihQYyvkzTYPb8KuVhzVkVD7CmE6kzL3rqJhW
	gyPS5HRytR7+SGMtn9LqX8ABuJd12FPZT7nzuKiy2gHq7xA6XOAh651M5YUVY9ajM22Ge6
	1mJw6fl1bIRG3/QjNU9c21GDCEJx2Ghtlss84MsWg0/aWGFQ0XYVvjxsa5RVOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790680194;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IWYrux/VFykhtxDTTn1b/tKzdi7pwA2j0L9c1xCdNtY=;
	b=goQ2AeLLmuI0619IXPBYtkbnP2Acg/oSceL7TdJkuGE7V/ooWpVmOGqtuRNt22A7f3/+A7
	ULodFH0RUuSiz7E5h8wCEWY+zB2LGrQmbH+uMahUgAlyUsXw67C06ilKl8HrrgMNdKr8yH
	DRHcBTS0oA8ME82BgviElp5itwZJ83rTBQcOtm2cZvwVQmTpVPGYx79uUjrarunHrMl9yK
	XuDfkk7rkB4ad/AcSEpWIlEAmwUctuX6kcQFFBMfb/Nm9mzZiWDg07wWXax2DofZmkxaCT
	vT1DEOueAsvPgu/4FB9e+0kILUtelDOKwAEMuedDPV2XpjBeTbr/KoXMByNDRg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790680194; a=rsa-sha256;
	cv=none;
	b=NbvD97avN4pydYUKYHnAR2Ls9sg+X/bR0FiXahfbgh6ssFYYYn8jNsO3FBLdoLqsrn5ghP
	kQFNNdebkOay3UDbrdU8fIfRimH4xb7PXK+a9VB7E0fI7vZlkFun1jeHYh57bpSjFH1SoG
	sBnxdWiGsk4jW0WOrtZUfREUUi6+Bx49ZEw65nGAXPpifbcTIuDNDqyTs0zdypwyVj7eOE
	R2PWpDw0YMqUD3DakkzBDDAFgcPdO1rd4flGKS2a9/umE58GHAUSy3NV0RLC42BDGjuXIR
	v4AvAZo8ht87BlrMHiiSygluslYjE0PQYW5sp70KfLE4/WnnYY40Tez6dXR5Pg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <edea3caf-e47b-479d-b54b-a30f79d3028d@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/2] PBL: add oneshot helper for sha384 and sha512
To: "Michael Tretter" <m.tretter@pengutronix.de>
In-Reply-To: <art4gaf_Yrz68f5F@pengutronix.de>
References: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
 <20260928-crypto-pbl-sha384-v1-2-bc7095590123@pengutronix.de>
 <07b3447f-f077-4664-b906-aa949b8ca6eb@pengutronix.de>
 <art4gaf_Yrz68f5F@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 29 Sep 2026 11:09:54 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_120957_010375_588035CB 
X-CRM114-Status: GOOD (  24.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-09-29 10:36, Michael Tretter wrote: > On Tue, 29 Sep
    2026 07:08:56 +0000, Sascha Hauer wrote: > > On 2026-09-28 14:25, Michael
    Tretter wrote: > > > Similar to the oneshot helper for sha256, ad [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
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
X-Rspamd-Queue-Id: DE2452010E2
X-Stat-Signature: ws6pr1fhsisqodc473yapj871xc13u99

On 2026-09-29 10:36, Michael Tretter wrote:
> On Tue, 29 Sep 2026 07:08:56 +0000, Sascha Hauer wrote:
> > On 2026-09-28 14:25, Michael Tretter wrote:
> > > Similar to the oneshot helper for sha256, add helpers for sha384 and
> > > sha512.
> > >=20
> > > The helper functions don't use the ARMv8 Crypto Extensions, yet.
> > >=20
> > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > > ---
> > >  include/crypto/pbl-sha.h | 22 ++++++++++++++++++++++
> > >  1 file changed, 22 insertions(+)
> > >=20
> > > diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
> > > index dbfb79647462..8a20e0a2b84b 100644
> > > --- a/include/crypto/pbl-sha.h
> > > +++ b/include/crypto/pbl-sha.h
> > > @@ -28,7 +28,29 @@ int sha512_init(struct digest *desc);
> > >  int sha512_update(struct digest *desc, const void *data, unsigned lo=
ng len);
> > >  int sha512_final(struct digest *desc, u8 *out);
> > > =20
> > > +static inline void pbl_sha512(const void *buf, size_t len,
> > > +			      u8 out[SHA512_DIGEST_SIZE])
> > > +{
> > > +	struct sha512_state state =3D { };
> > > +	struct digest d =3D { .ctx =3D &state, .length =3D SHA512_DIGEST_SI=
ZE };
> > > +
> > > +	sha512_init(&d);
> > > +	sha512_update(&d, buf, len);
> > > +	sha512_final(&d, out);
> > > +}
> >=20
> > Instead of making these static inline functions, could you follow the
> > template in pbl/sha256.c to give future developers an idea how for
> > example the crypto extensions should be implemented?
>=20
> I implemented this as static inline to avoid the decision, if I should
> add pbl/sha384.c and pbl/sha512.c modules, or if I should change
> pbl/sha256.c to a more generic pbl/sha.c. I tend to the second option.
> Do you have any preference?

Damn, that's the decision I thought I had pushed to you with my last
mail ;)

As I do not anticipate that file becoming too big, so I tend to the
second option as well.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



