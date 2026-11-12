Delivery-date: Thu, 12 Nov 2026 14:27:21 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRUpl-00A5Mv-0w
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 14:27:21 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1457C2016E5
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 14:27:17 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OlERKg4I;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=W539t0dH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794490037;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0nAHfsrtfjpK1SveZCErnJt/e8kc/4r8hj3TRPdt4Hs=;
	b=IAf1eteqnMnh1zqDve+eYSKK6ITYB3rNySPnjlpn0QPqQ5VJwvJrs9Zm59O20qM4pHa6LM
	Cx45OqLXKpKexHzj+9jmkfyvz92Sltl8Xt03rwaQZoiQEBJjA+ElRhrZISyy5Z4UmA2yoG
	UREZKUe9jvdZab+Aq1eC/oVJ4QZ5Us+vjKlVr5kLWfRIFmcgO3NwvSVYnuxFZJCIIL7z2l
	/V8TJ8TKNygR7yu9xGcyd5F/64Trhmy7P5go+CqJdtADmOb2O9CZYgcS4Mv70nc0yGNXPH
	/WQuQrfo6l0WoOAKAPJbe1ifrlO810rN1PNpQUMo6OKDqvaeOgRkvJtEEcYwfQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794490037; a=rsa-sha256;
	cv=fail;
	b=AKqHyk30y9skrB2gns+QVbo1K12Olz14xAnlkKwXqJe3MBCjtlpTYYwY75oDEdMgICdimo
	CHY4XQmmdVycWrSqvmzMflpvD6Z61FmHrw+t+OUFWAtQ04MeB6bVyDObrTFrXZanCwAV9v
	fqngpMi7qLMP5FIxIMm5p9R344NJ0iMXzMdVgdM7bM4SU5airlZgpaLmYiJN0HU8ZfW556
	Z05KQ3bg+ji7OgBpHMlGpl3dhoSNrMFSFmrMuI+FHRV1AJew1M85LXUZX7M0XFgjEn8Euu
	bZ1zwjrARby5qSAYog3mVCYrlerQskTFmTp9zp/pXGaboj2Fg9GPhEXF6J1d/Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OlERKg4I;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=W539t0dH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0nAHfsrtfjpK1SveZCErnJt/e8kc/4r8hj3TRPdt4Hs=; b=OlERKg4IeVHZzrJ0LRSqYx8uUC
	cQeUWzleXhogzv0Bf52+v1mW4uqzY2AKYOaD5if8iGgSP/x4BlN3srcf9h1WQIvFvWY4d0ReN7Ck7
	YIGmt+javUzVpaJ7fwsU1VHH/7dbW0ZFlR4LhBczQafK1W0Avabof9p+joYEdNkJd3vO8S/SxcKZi
	0q/NgGMeXLeswkrb0lhD8MxFrXGgfiQ5gUcjkhsEC5ylueAlFbAro0DCxgjFTeaoSwSUPUiIN3ruC
	obsXE2Y5HCBZ3Hq04/o/mjKxGUNv0/Mbj7SnNfsNKftTBe3IJVPTXWdJkHZgtmOC0s40bqcHZfRbu
	JYv9UGeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUoC-0000000A3uD-0twA;
	Thu, 12 Nov 2026 13:25:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUo7-0000000A3o8-0nS6
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 13:25:42 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9AFF42022D7;
	Thu, 12 Nov 2026 14:25:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794489932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0nAHfsrtfjpK1SveZCErnJt/e8kc/4r8hj3TRPdt4Hs=;
	b=W539t0dHxJ1EGzsG2/wjueWqo0NlKDZWK7a+EIJkOHO1AplDqPFH9/RsX3k2EDz6pm9rmC
	SMs61cHqXK6l+CQv+Km1ZS82w0Yj7ByK2lyyEuWb27rsGN+BC+Hmj31hcx43Xx0Am1S8aE
	lfp1VM5xSlQl/XKmU3VgK033r0dUalZ18ikRMhN+v5K3g9UHw8NME0YD8kfNwt2ZK5UaXO
	r3vLoooQyEAv2fbt+ykRSpnc6t7H9LgNSN9hDbT5jc87NvAPFe/ugKdFhl9TQWcoqzargP
	aIu3nRKA9N4ucczY0cKxHKlG3BOL73BwK9ahq9Uv9xMvShV72tQ3W4DFRuVnOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794489932;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0nAHfsrtfjpK1SveZCErnJt/e8kc/4r8hj3TRPdt4Hs=;
	b=MncbOZ8SY5igT6w6p50fT8RySeBbDC5pGqGKiVLQV+5r1PWHOlLfyim4g8PqZefiO4NDvV
	goKq/JlILWlYXjw8hhQHGuk3rCmo6mnBcIsvrMy349BaIRMOp4WCHRYYaMTJ+U0jnizVPo
	hkls6xK0GHL8HE2iZiCmwEU90Pxw0ineKDPlRsAdneyuwGJwKyNpi51RXcNtxZxy+gI2ww
	B6t3nFFrFXjwquTYwu6bJrBPYGEjKvFkf1esOmglR1seyOGbv6pkrpTKrZRao5NDf/BdSN
	qXW1eYzp79sP2KsKrvXVggctTn3gVTcEFAwCTdsOL9HZMFVNK/WcnM4DDr0WRQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794489932; a=rsa-sha256;
	cv=none;
	b=cMjmFXP5+fpEBSELcPIShLF3sf9gBa1vteaXY2/55eDhUt9y/BsvfRsik+opY3uT43CJI7
	sE0oaKDlie9XTV43JnT7dfp4V6HkI3RtBF5fkhb6QMonHI8n6Agu2QO/8iAvqcmXjtAv5W
	OAj0qwXf9TiENvQ9rBymmg3snLWyj2e5S4JSeFFH0jv8TGwKAB2PO3G2HXnLc5pVQqXA1A
	2cgGWy7xxh1Fp8iilJi98Lv9P8MKGgY+iapoTx30ta+QCmYCjg6ufYROEf5iBrwXW5COXF
	Tg11/9Ahp9CimSW4uNQJMeS2vWKipBb4yCYFga0qXsek/rreEfaNyvDowjMbOA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <e330ff29-4aea-40de-b3a8-0a8060c7d520@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 01/10] globalvar: add scopes to snapshot and restore
 globalvars
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <02acb118-bc0d-4e7f-b053-2a43fd423d49@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-1-a03803e1100c@pengutronix.de>
 <02acb118-bc0d-4e7f-b053-2a43fd423d49@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Nov 2026 13:25:32 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_052539_379732_76589681 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-12 09:41, Ahmad Fatoum wrote: > On 10/30/26 11:53,
    Sascha Hauer wrote: > > Code that runs foreign code, like boot scripts, often
    wants to revert > > whatever that code changed in the global [...] 
 
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1457C2016E5
X-Stat-Signature: egciac6w3ujpm97ctf6m5j8je17k6kxu
X-Rspamd-Action: no action

On 2026-11-12 09:41, Ahmad Fatoum wrote:
> On 10/30/26 11:53, Sascha Hauer wrote:
> > Code that runs foreign code, like boot scripts, often wants to revert
> > whatever that code changed in the global namespace afterwards. So far
> > this is done by hand for each use case: either by saving and restoring a
> > fixed list of variables, or by putting variables into a dedicated
> > namespace which is cleared afterwards.
> >=20
> > Add globalvar_scope_push() and globalvar_scope_pop() to do this
> > generically. A scope records the current values of all globalvars whose
> > name begins with one of the given prefixes. Popping it restores changed
> > values, removes variables created in the meantime and creates removed
> > variables again. Variables are only removed or recreated if they were
> > created with globalvar_add_simple(), which is what the shell's global
> > command and most dynamically created variables use. For all other
> > globalvars, which are backed by a C variable, only the value is
> > restored, through the regular setter so the C variable follows.
> >=20
> > Scopes can be nested as long as they are popped in reverse order.
>=20
> As mentioned before, I have misgivings about _global_ variables being sco=
ped,
> but we have effectively that already for some variables...
>=20
> Some bike shedding: I think I like the term of "banked" global variables
> more, but that's just a suggestion.
>=20
> >=20
> > Assisted-by: Claude:claude-opus-5-5
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>=20
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>=20
> > +static bool globalvar_scope_match(const struct globalvar_scope *scope,
> > +				  const char *name)
> > +{
> > +	const char * const *prefix;
> > +
> > +	for (prefix =3D scope->prefixes; *prefix; prefix++)
> > +		if (str_has_prefix(name, *prefix))
> > +			return true;
> I see that the prefixes have a trailing . to avoid partial matches, but
> I think that's a bit of a surprising API compared to do boundary matching
> (or matching to the end of string _or_ dot). Just a nit.

How about using fnmatch()? prefixes would become "bootm.*", "boot.watchdog_=
timeout"

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



