Delivery-date: Tue, 29 Sep 2026 09:10:18 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBRyk-007aaq-2t
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:10:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5D328201548
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:10:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="WELSa/IS";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RMKkatjw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665818;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=u1OSPpndh/JuBylCXaTl+ynIIqJWm4XGiP/zSC8Alwo=;
	b=EVsn1aaKKZyZIwYheEjzVtvHo15yF22Yk9C9Z+MTAsOZceSzPtwoOqFuxHijDwNl5Ta6l7
	lDJwP9TUmypkmr2sIZhyxio0ghX17b17ALrwFJHaxhXmEGvYBz0gYAcDI20ZS1k5S463ba
	jI2LjOsbiEaTKMms1YX1n6vblOTuWXXuhXUTcDOGJuKHjhGIGAP9RdIDWdTo7p5lL0TOS4
	NZ/JFf1rC149Aa02A6+lRWatgi7Fn7xnp1hINqX8Z1z+cWo2FApm9uMKI1XNErqj9hS6hf
	BiY9vMzUqt5b1WxAj7Y3F2W6/hE+f7IvDtym8YkiSWCg3IAsDwBvL4z25sEFVA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790665818; a=rsa-sha256;
	cv=fail;
	b=UQp7W1OMOwdxHvaaaFQ6JOl3FwZwWX1wg1zJ3ozqobNa9eU5nLfK8TqDz5dmYj1UAzd5vi
	LQitPiLnwVH0QTKAu3dtfVsbC40hK0XYANKFP0zFXhgERGou9jT6Ycjj8x5RD2EWm5Buir
	WD3jgM4FitSOGQOvq8fGLD/bS/CLD/6AtW3B4OMZxPydL7B2LbmdFyZp6p48SuLH3WGbiS
	wTTktzVP2Z07umOVzMiztH6doXFZqjbxtZ+qC5Cu5CpekptcMbx3zTolFjPi7luf3YH3l0
	mO06BzgLuzp8sonf0Cc6IlpFRJZI41Qf5Mixu9yvV83OliXtT0j8xEVAfP5iaQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="WELSa/IS";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RMKkatjw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u1OSPpndh/JuBylCXaTl+ynIIqJWm4XGiP/zSC8Alwo=; b=WELSa/ISTvMOB3lIjjDJfqtmje
	BjkB3GANSdHrxJ2rW46r0SDbL615GQyZvNsUuchl4Txco5V9mRMy3KrzI9kEdQQ81ND/95OptQljb
	4z7OdglTbzuRWtd4bBQgtwcxC4YHXnKiHiEQcNsTQM48yLWavy/L0yTawiw/J2xE7jWd8zjIsrHgH
	A9J0bvhLFD+kNOnSYAiJbztDvcRdhUkED6ikWL5eCXEJCQ0zLtPwYhKWdyyYoD53Iht2VRqkdnpgy
	EdaBWfb9c4+FDVDJjQNlYR7BTlEvVd6Zsoi2kwVIDUQtrxxfatjjKtv2hvcaOkzEbmGqRBy7fIzmk
	DCBVe7SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRxW-00000002YkK-1Msp;
	Tue, 29 Sep 2026 07:09:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBRxT-00000002Yjq-0fY9
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:09:01 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1F77320168E;
	Tue, 29 Sep 2026 09:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u1OSPpndh/JuBylCXaTl+ynIIqJWm4XGiP/zSC8Alwo=;
	b=RMKkatjwdjkFEhy701gkwXdsCdFTC8Z+LmAajCrasajvF+IY9JnbN7aYXRwnG06rlehj4R
	Q/Vt58DJ1wrEfBT+e67Qw1AMy8qUp95VlGBzu6e1clOT6pi/5JmStjhGBimGEZA0bH0pr4
	AKVBin+uSrO8NiFMsHRoK0mxlRxQPS1EzazJQFPhfLyZOt4St4E0nDp02gjejTfWEshwy1
	elyNMe/2VXJupF/l6dvC7Krgb2FtYElKsoD0Tx5IYxeP26aOyv5xiUx6QWYi4KCmHpRqqV
	Gf7nB2+Vy/P67lSVyq0LxufSIpVKMc3RhajdA79auF930XAin0hFWCfZMxQ7Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790665737;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u1OSPpndh/JuBylCXaTl+ynIIqJWm4XGiP/zSC8Alwo=;
	b=LECoLUkn3QbN4OJtMONOTOkX/eA36LH3R3SFMW0FnMLSBSw/vqzYN7/sJ0UBXMpejvg5sK
	aYR9eyFomh0d22LQV3XxQ7inKpsSa5uFzQKROLR/BrOSFAzIvFlRVwY1J+z3yzuwPZ+F+u
	48U9w4bnuGIujykCs5oMM7t0IXd3qgRmHTP57j2uxy8chpqt8Bb44SIHFeC0p46jPL0b2G
	3BXZPtVGl8jI5rcnOVjIFB9krFjCLZhdSm/Z/EJWKQAqDT5nGQCUg+FhUOH7TH6PCh/qGi
	c+Cv1MuvVS3OidBfk0t88HoFKkp7V6XoiLGpL8RiHfs+NolBLzpvfh+dAgfK8g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790665737; a=rsa-sha256;
	cv=none;
	b=bcWQ/cnjn4ycLFNR2Wwt0iyEpWbEod2PoBRFT5B1Z3Q4fzz2rQ3OZJwmcLNW5IoAsFLFVA
	447JtKZIuSAeTrjAwvcgKt4BCYkvoVJd4buDyeMPV4NdQRIkJT2NwyJeokWTFcthvOKuqL
	IG/U++cBmO22RIm7wOzgygphxCFRpwg/msZkp7oX1hvNCz4jVUf7+On8y3jtRjG3uS5TlR
	KJbZMKAF/BKlwi2sN/dXIvZHLFKQr0zegY8ZVq4K5LK1axirL6GHr6v/tB/+fP1etMsUqU
	LUoGPfShU0wqojxdsIEReVbVCZOYLYQpkMtqbznpr4otfxNalMzHZmZ9cH9Ptg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <07b3447f-f077-4664-b906-aa949b8ca6eb@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/2] PBL: add oneshot helper for sha384 and sha512
To: "Michael Tretter" <m.tretter@pengutronix.de>
In-Reply-To: <20260928-crypto-pbl-sha384-v1-2-bc7095590123@pengutronix.de>
References: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
 <20260928-crypto-pbl-sha384-v1-2-bc7095590123@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 29 Sep 2026 07:08:56 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_000859_348618_3E6D5EEE 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-09-28 14:25, Michael Tretter wrote: > Similar to the
    oneshot helper for sha256, add helpers for sha384 and > sha512. > > The helper
    functions don't use the ARMv8 Crypto Extensions, yet. > > Si [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
Cc: BAREBOX <barebox@lists.infradead.org>, Michael
 Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5D328201548
X-Stat-Signature: gka446heyddicqkmrfnwy9rorxm6brqy

On 2026-09-28 14:25, Michael Tretter wrote:
> Similar to the oneshot helper for sha256, add helpers for sha384 and
> sha512.
>=20
> The helper functions don't use the ARMv8 Crypto Extensions, yet.
>=20
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  include/crypto/pbl-sha.h | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>=20
> diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
> index dbfb79647462..8a20e0a2b84b 100644
> --- a/include/crypto/pbl-sha.h
> +++ b/include/crypto/pbl-sha.h
> @@ -28,7 +28,29 @@ int sha512_init(struct digest *desc);
>  int sha512_update(struct digest *desc, const void *data, unsigned long l=
en);
>  int sha512_final(struct digest *desc, u8 *out);
> =20
> +static inline void pbl_sha512(const void *buf, size_t len,
> +			      u8 out[SHA512_DIGEST_SIZE])
> +{
> +	struct sha512_state state =3D { };
> +	struct digest d =3D { .ctx =3D &state, .length =3D SHA512_DIGEST_SIZE };
> +
> +	sha512_init(&d);
> +	sha512_update(&d, buf, len);
> +	sha512_final(&d, out);
> +}

Instead of making these static inline functions, could you follow the
template in pbl/sha256.c to give future developers an idea how for
example the crypto extensions should be implemented?

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



