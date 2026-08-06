Delivery-date: Thu, 06 Aug 2026 16:53:50 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrzTh-000DFs-35
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 16:53:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7981C20127A
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 16:53:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dYwcsrMz;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=oYipkPFh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Content-Transfer-Encoding:To:From:Subject:Cc:Message-Id:Date:Content-Type:
	Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IZrv6ykLsrujkRSijyV+XE7KejkYWCztj1J4uAZjO+Q=; b=dYwcsrMzxPzFCufW05tur3FBDI
	IJJuJWu8k17PCr81WJpCcpSNMkcHjz2wrax0YdWGF6lVgpkBC7jw968+KMAnVetoZctFVxTSp6VyU
	Xy/L+/YYPsLJ+zkl6EavM8N1dnj7BFJm0jnKGbghQN9ovp+DHeKcYfhLDfBAEnmHSdQDjq7Bal6yu
	9BZg1DxWAKd7kioDtRT0josyBGAweasQAPwJBRaP1QbLLdkrhTZDjrGosZtRtygon46bZzHGUq3Kl
	JzSJd4mCocI+bcB+qUg9SIw3DOkmuS8TOOJELsYgrLPA+qezfVsMvJA5oTwxBRxkpDd44ckk496d6
	k7TRcUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzSI-000000062DY-3YEV;
	Thu, 06 Aug 2026 14:52:22 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzSF-000000062Cq-3uuD
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 14:52:22 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C879B4E41118;
	Thu,  6 Aug 2026 14:52:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 97285602B8;
	Thu,  6 Aug 2026 14:52:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 532F211C36573;
	Thu,  6 Aug 2026 16:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1786027933; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=IZrv6ykLsrujkRSijyV+XE7KejkYWCztj1J4uAZjO+Q=;
	b=oYipkPFhea7cNLxB+5VE9qANLkfpd4Mmtg1xsutSzsJYcysS9ozXXeLYRE6OTdI7MjOnDr
	82a6PzXELozLeYjY4vOaPMW+QVLLG/7m3QbsEnN7LnyM+4gGDX05ggXxiCwtOvKReggySt
	cnEzMGzM6F9VeRSLYUs3OI5Ge7ltMg+wAtN/YJucvd8noqIgLjbH3MA/X50TdBV01kUnmr
	rwEhPz+9cn4qBQlchI5Qx8tfSoe3uIUeSk5oqXdqBLMCaT9AEFMu5J+LjJ5Pz8sEAywxSJ
	1Vlh9N7KnTMLrBkRqsNmJXrWvg0jv6CqYwEczKvFozZdWTXGlnAntdx/L4v7Vw==
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=287d9d9ce388f278e165b9c0ad3318d31d1d6d7fb1b63c7bdf5542ec40a3;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 06 Aug 2026 16:52:10 +0200
Message-Id: <DKHY283ZF4K3.2VAB9S9SYRY0I@bootlin.com>
Cc: "Thomas Bonnefille" <thomas.bonnefille@bootlin.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, =?utf-8?q?Miqu=C3=A8l_Raynal?=
 <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] fixup! sandbox: enable keytoc in hosttools_defconfig
From: "Thomas Bonnefille" <thomas.bonnefille@bootlin.com>
To: "Sascha Hauer" <s.hauer@pengutronix.de>, <barebox@lists.infradead.org>,
 "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260805142055.3844660-1-a.fatoum@pengutronix.de>
 <178602149493.2137018.3077110729485180750.b4-ty@pengutronix.de>
In-Reply-To: <178602149493.2137018.3077110729485180750.b4-ty@pengutronix.de>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_075220_127023_3A3CBAA8 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, thank you very much for this fix ! On Thu Aug 6, 2026
    at 3:04 PM CEST, Sascha Hauer wrote: > > On Wed, 05 Aug 2026 16:20:02 +0200,
    Ahmad Fatoum wrote: >> ci: musl-tools: disable KEYTOC as it depends on OpenSSL
    >> >> The OpenSSL we ship [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7981C20127A
X-Stat-Signature: f85gecucct8h7b8u8zcrw1k1k5px75xa
X-Spamd-Result: default: False [-9.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MV_CASE(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action

--287d9d9ce388f278e165b9c0ad3318d31d1d6d7fb1b63c7bdf5542ec40a3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello, thank you very much for this fix !

On Thu Aug 6, 2026 at 3:04 PM CEST, Sascha Hauer wrote:
>
> On Wed, 05 Aug 2026 16:20:02 +0200, Ahmad Fatoum wrote:
>> ci: musl-tools: disable KEYTOC as it depends on OpenSSL
>>=20
>> The OpenSSL we ship in the CI container is built against glibc and so
>> compiling keytoc against musl in it is currently not possible.
>>=20
>> Fix the CI breakage by disable KEYTOC, but only for the Github workflow.

I=E2=80=99ve successfully compiled OpenSSL against musl in a modified versi=
on of
the barebox-ci container and can now compile keytoc in it. This approach
would help detect build errors for keytoc + musl earlier.=20

Would this be acceptable for Barebox?

> [...]

Best regards,

--287d9d9ce388f278e165b9c0ad3318d31d1d6d7fb1b63c7bdf5542ec40a3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTQT2V0EKPIM2RnVpHcsfBJI7PEOgUCanSfnAAKCRDcsfBJI7PE
Ov8vAP4oZWFay9fceSuVy/Ho19oY43ZhfVIvnnljTuUD9jDCsQEAty1kN4T1bvtI
6g0S5wuKiwG7UUe0Fu6qVxr5b5jtqQw=
=vGWI
-----END PGP SIGNATURE-----

--287d9d9ce388f278e165b9c0ad3318d31d1d6d7fb1b63c7bdf5542ec40a3--


