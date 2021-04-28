Delivery-date: Wed, 28 Apr 2021 07:58:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbdDX-0007SA-BF
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 07:58:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbdDW-0001DY-DZ
	for lore@pengutronix.de; Wed, 28 Apr 2021 07:58:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5NDUeIhnsxZ3vh9D6g7ut+NrWd1R6+6vkLn8jdnUD9I=; b=WhRTlr7IKdmW8Q5rKdm40cd1i
	Pl1uldtEzknUauUKSBH8fJzlf34EwZpHp48vRg7dIj0mHNXhlHq0PgxoY97/JQPoljTNWNuCrupme
	8hkRCQ5u8G2mFCYyGun2Gn/Ug6phk1x4iUrHb7A6f90RtsdoNUq8HgpdN4v+7YxDHELUBYywIO0uz
	fsx2u1z60m6T3l/2wZj8dfmpTYGRGK7BWnGnwNQ5mNdDFzfoWc9SlOO/KEnm0t4Y8fgk/cFyRc9EM
	g8vDqs2IgcVE2xLYU7sjSUqaRptpNePiGQwOx7SOXF46q6gNCOyTs4e7jtl5VvGORC6CezmSAs6lU
	aAGgyGkpg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbdCC-002s8C-1d; Wed, 28 Apr 2021 05:57:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbdBj-002s7W-Hb
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 05:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EhkViGrStWMGKrm/suPFVtPuXL3njjk8yo77auZ+0cM=; b=JjYGCXvjvLIF285sVC0LxdJSFO
 VI4+dV8FT/Qr8y6S6Djl151tlCA8sI5cOneEK678FzxgJM6HrQkw938z8H1ld6/2a2JPMD8x263ci
 oej93/+z4lgTeON4mhHUmLcGFnFQ5oOXafrn3tJWFNBeG6ceE3wvIsRfW22E1JX7aplP4YzhvB1gQ
 WF9Tib6aNxdOBS4L9kdRgKJ1GJPFqgFWFwxPGy2YctRduJQnotwfqi5VDznvtyEYkhHfxRAOkWaR3
 5aSyX9A+F8gKy5JO5uxHB8vzn0toX0eB6m1g0J1SPSqfFyRqFXED7e+37uuHXOJDNfjCd28YjJTG3
 50yAHuFg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbdBg-00HCMT-9n
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 05:56:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lbdBc-00018x-D6; Wed, 28 Apr 2021 07:56:36 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lbdBc-0001Tg-3n; Wed, 28 Apr 2021 07:56:36 +0200
Date: Wed, 28 Apr 2021 07:56:35 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210428055635.df7ju6caxwy6muji@pengutronix.de>
References: <20210416091404.92251-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210416091404.92251-1-antonynpavlov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_225640_358201_D96D6EAA 
X-CRM114-Status: GOOD (  12.64  )
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
Content-Type: multipart/mixed; boundary="===============2338453087684116503=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts/spdxcheck.py: Use Python 3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============2338453087684116503==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nzfjoarabzcmdnrh"
Content-Disposition: inline


--nzfjoarabzcmdnrh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 16, 2021 at 12:14:04PM +0300, Antony Pavlov wrote:
> Based on this linux kernel commit:
>=20
> > commit d0259c42abff51b586496a0594933e394efefbc5
> > Author: Bert Vermeulen <bert@biot.com>
> > Date:   Thu Jan 21 09:54:12 2021 +0100
> >
> >    spdxcheck.py: Use Python 3
> >
> >    Python 2.x has been officially EOL'ed for some time, and in any case
> >    the git module for it is hard to come by.
>=20
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--nzfjoarabzcmdnrh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmCI+RAACgkQwfwUeK3K
7AlGogf/RaSpOMITUB5j8ldEjyQPSZnqxQYdQOOrEzmnmAoVbjmuHW6RcYTz4203
T2UVMGyeYW4gdGYRgozkP4c2WJcpTLzAGilwnbIkbjnaxyvLU5B1Lk5W67LqK36z
1r79FA3mSIW2nS1jqT+AYYltYlQkAW4Ztcfmlrb+crIOg0CPfnUvN9ejw77FKwc4
W1qqCQFBXqqHXxzEfi3SL7s0BEqMVgGl6cfLxgRW/hw+PihN2/10eDHnPWxFgRJM
rn7Iz78wwswVAf/Blfh/OPjWLXPjYXjuSQjrKsrZwQEGHR/psiVXq4b58ox3HMRZ
ZvL9hFZpP8HPFeJMA1iOWvci3nIn3g==
=sQtt
-----END PGP SIGNATURE-----

--nzfjoarabzcmdnrh--


--===============2338453087684116503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2338453087684116503==--


