Delivery-date: Tue, 29 Sep 2026 10:37:37 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBTLF-007c0w-0k
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 10:37:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AF66B2000EB
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 10:37:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2IFsTYP3;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ene8Mje9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790671057;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=DgRWX3flTh0+BioZhB4O9pk8+qfWYqeoQ2klBHTzkKY=;
	b=TRY1L2ZxDHcfU1prie2ppWuoYm8CjtzoA3IrRMM81ne5zecgK/R4ZcJRcrM2eQZs4AMrqf
	GkDHFhkTUGKTHQTETzV7ugHYAJl7jWEt5eXp7d70BxEKxSVigVR5mK1SjVPMvK+FuJbWxo
	nj8fbkkun2uz1+7DxeycsTs3fhxYNJiatPbNPtG87+hMM8i04QyBUT50N0thpQtB5Jrh6T
	Jt/3BXKS/OhHYe8DojcxenuowaklAWEawDAVyH658xPunwwg1LRhQ0GmUv9bCzcU+y95Bb
	N7Xn/9p1ciB92hf2oalDQ0yCvQQmKXnguiKgL/GjLHxSZ/UbZri1HeUq/MOpaA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790671057; a=rsa-sha256;
	cv=pass;
	b=gOvLAG9fyQpggbElJjM/5nD7qZw85jarVE+nMyFdAiQEuA3+f2z+44ezsAuZST0bWpsGwa
	cY5Rh1G7lxbzfhsnti4WNADhmt1Yk2FPQ/i0Zq73+7SoEBBUf1mQ17EKJHYJ53ox2xRJe+
	dpPEWfxjUnj9LvnUk6xDopSZFLLBWv7xz0jUAMtl2aztV9zVxUMXLxZSzD1t9w9QY1ulRl
	8D4VakVkeU8/sXCXaCswJ9IOE8ozZ7VYVSuDyDCa9Nxznmc7INL6lzA3Jl3/5RhivFvq8t
	bHHLioFMPImWWscNgVHWs4ZiadnzYb81NUilQCzn1QGgKN5RO4Aff39KK1oqvQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2IFsTYP3;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ene8Mje9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DgRWX3flTh0+BioZhB4O9pk8+qfWYqeoQ2klBHTzkKY=; b=2IFsTYP3BbCSSsKIndK3OdN03o
	7YsFz4zJ+Tu2V8UKdKXt1nhQFzcavjSOYGes7iot8bmC2AwcvKSfdaQ4umWdymVVzMoXuSufPbYCy
	bLx6+LVhfb15pSeDBS4U9PFdb+7mP8EezRYUp5BjvumrmvMUmD/QSFouxbFFX4o6AsHfgbAOq9sv+
	fUROPXva9ZspJWP+PSOZK/+FM9Yd5b7Q/TRrjQTN1pvKz+sCSE4kqh2jCjBVckHt9F2UpRz2HNeMz
	Jj10iKpwhWH8FVDT+dsrXHefJvnGN3FBwd3NLT6ogwEgHky/Ob7rsS/7ElvPKz7qPQU/DtkEtzZzB
	mGm5GZhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTK2-00000002nfZ-2FR6;
	Tue, 29 Sep 2026 08:36:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBTJz-00000002ncN-1ybB
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 08:36:21 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 563A82007E1;
	Tue, 29 Sep 2026 10:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790670977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DgRWX3flTh0+BioZhB4O9pk8+qfWYqeoQ2klBHTzkKY=;
	b=ene8Mje94u6WTvQdD1bo61FqB3M56cZ+xJ/lXbEY1G1xoC1qsozriIAYGKbdqt4XG4rWJz
	OIAW1/P/cWf48r8vCIgu41VD8ukJbGiAUweL/4BDF6Fbam4HoY1uYUGcWREDgDgbdRTwU0
	A736jSKVewrt24ejhApisRqdB9jVTHad87uh+l7cpS8HMeYl2uGnExvOpHpPkygSQWoL7t
	RkCEUZ9/Ap0Ad1XZKXAuri8Kg0EZLDZ+vg6NmSkYWNZfVEk3wMMtpQc1DtxJNTqGBV3bcg
	6wV4eSFsb3CArLbunuJ9BG+0xMt/LTcMTUVjVizZjw92CcH/KhqetCzeoCnv7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790670977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DgRWX3flTh0+BioZhB4O9pk8+qfWYqeoQ2klBHTzkKY=;
	b=M0u+8CoRt97iXW/a8SP2+90rLbrllOrYP4StAQ9Bnv5272UvlKEibpxWkIZw8CVqCdrBdK
	k7wZxSRJdZ7DJ+zWmX9Wu28E1pCJnHegmCHS4Q9IjXNU1wWvoIBPA3DYn13jLY04irR8YN
	f0pu7j07Ygi6x3jTRJInTywQrYXwnENdSSnVrIqzNUvOrPo07k5u29/ONpFhhDVbHYa1uG
	sCyz0b9U/L3VVrL94zCixt1Y5F63Xak+raeFY4o649k0JOh1NryLbO4iI5kmFffTx+sRI/
	FB8L0yui3SvDG4xvXSESKMFc6LIZCoPyRJxfSnT5OVVstLSwWkOyQVeqgESh+g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790670977; a=rsa-sha256;
	cv=none;
	b=TyTI66/6enChqHBcBzs7vdw5H2XhlbodyCMHWZRyIdMwZLTftxTjzQyi8+OqFrD+cv9IZX
	CeJDNLmfg6qi7Emp/tUwzsad2xFDt9WGAjBOfgq4NkW4H2QNdjV5zkMfa/XZ1GBjP+BP/d
	0cTmBlqWnhX3gcQYkyttzEQD3QgIsVgo2O80hi3cAst1mZDvfl24mILOTu353NMxlPkZMw
	WSJ5bTxUeECd/qDINy3iVE02BBQEJoE2zBfQkm1D30ha7c1VPIp5piA/u/PoEtxePGP0q5
	fPcrYijTJkAUtjtkOo2NoLmu0KleAtAolsMkWKwZ7NEFyzzNCOMnbS6KeMErbA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1056)
	id 3FA601BF9C5; Tue, 29 Sep 2026 10:36:17 +0200 (CEST)
Date: Tue, 29 Sep 2026 10:36:17 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Subject: Re: [PATCH 2/2] PBL: add oneshot helper for sha384 and sha512
Message-ID: <art4gaf_Yrz68f5F@pengutronix.de>
References: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
 <20260928-crypto-pbl-sha384-v1-2-bc7095590123@pengutronix.de>
 <07b3447f-f077-4664-b906-aa949b8ca6eb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <07b3447f-f077-4664-b906-aa949b8ca6eb@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_013619_968531_316C5A4F 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 29 Sep 2026 07:08:56 +0000, Sascha Hauer wrote: >
   On 2026-09-28 14:25, Michael Tretter wrote: > > Similar to the oneshot helper
    for sha256, add helpers for sha384 and > > sha512. > > > > The h [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AF66B2000EB
X-Stat-Signature: wzg54xe6rn4s9bexk5xuze6hem3tpuqw

On Tue, 29 Sep 2026 07:08:56 +0000, Sascha Hauer wrote:
> On 2026-09-28 14:25, Michael Tretter wrote:
> > Similar to the oneshot helper for sha256, add helpers for sha384 and
> > sha512.
> > 
> > The helper functions don't use the ARMv8 Crypto Extensions, yet.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  include/crypto/pbl-sha.h | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> > 
> > diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
> > index dbfb79647462..8a20e0a2b84b 100644
> > --- a/include/crypto/pbl-sha.h
> > +++ b/include/crypto/pbl-sha.h
> > @@ -28,7 +28,29 @@ int sha512_init(struct digest *desc);
> >  int sha512_update(struct digest *desc, const void *data, unsigned long len);
> >  int sha512_final(struct digest *desc, u8 *out);
> >  
> > +static inline void pbl_sha512(const void *buf, size_t len,
> > +			      u8 out[SHA512_DIGEST_SIZE])
> > +{
> > +	struct sha512_state state = { };
> > +	struct digest d = { .ctx = &state, .length = SHA512_DIGEST_SIZE };
> > +
> > +	sha512_init(&d);
> > +	sha512_update(&d, buf, len);
> > +	sha512_final(&d, out);
> > +}
> 
> Instead of making these static inline functions, could you follow the
> template in pbl/sha256.c to give future developers an idea how for
> example the crypto extensions should be implemented?

I implemented this as static inline to avoid the decision, if I should
add pbl/sha384.c and pbl/sha512.c modules, or if I should change
pbl/sha256.c to a more generic pbl/sha.c. I tend to the second option.
Do you have any preference?

Michael


