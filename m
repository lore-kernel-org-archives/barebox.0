Delivery-date: Wed, 07 Apr 2021 13:01:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lU5wE-0004ic-VU
	for lore@lore.pengutronix.de; Wed, 07 Apr 2021 13:01:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lU5wE-0006Mu-5k
	for lore@pengutronix.de; Wed, 07 Apr 2021 13:01:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mG+QwNWMd9vvQHBJCsqQkNCoqIrVqO/02AS+REhQEF8=; b=eHLKNwTVGv374DbawUXxV6k2P
	1NdiNd6frgnfoIVffkngqrsksf7Q8I1I6R44llhRTbdmqbf5FPnQ1QGqL1tv/2dSYNdDmAqXnlBZ5
	LqgQ1knyNrfM3VlQdfW+qghvHvxY83ZSPAOElc6C5dPOxnl5E+vQKoe56G2o2F2334sApnXQuld4Y
	ikssiu97AB7n90ZPzQdXJscNcviIukrCAQuicXYdG6lHAENeF0Df5o8sTVOjtF+tmnwEvFFzR8Jm5
	VDMP8GLvF3CX3MEyuyODNj1LQcXzL5+hwSK1Yg5AlmrOFjrh1X55za9K+Du6++WH+NKVZDjDMemvL
	4WvMcHnkg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lU5uP-004nei-0Q; Wed, 07 Apr 2021 10:59:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lU5uG-004neN-Ak
 for barebox@lists.infradead.org; Wed, 07 Apr 2021 10:59:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lU5uE-0005sg-Ly; Wed, 07 Apr 2021 12:59:30 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lU5uD-0003vr-VA; Wed, 07 Apr 2021 12:59:29 +0200
Date: Wed, 7 Apr 2021 12:59:29 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210407105929.dzajx2ypo5gyatko@pengutronix.de>
References: <20210404111831.592821-1-ahmad@a3f.at>
MIME-Version: 1.0
In-Reply-To: <20210404111831.592821-1-ahmad@a3f.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210407_115933_267754_7B3D4286 
X-CRM114-Status: GOOD (  12.15  )
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
Content-Type: multipart/mixed; boundary="===============1304537983679519706=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] sandbox: env: set nv.autoboot=abort to drop to shell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============1304537983679519706==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iygv2j4z3njiyphr"
Content-Disposition: inline


--iygv2j4z3njiyphr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 04, 2021 at 01:18:30PM +0200, Ahmad Fatoum wrote:
> barebox on sandbox defaults to network boot, which fails either due to
> missing TAP support (like not having CAP_NET_ADMIN) or because the files
> couldn't be fetched.
>=20
> Arguably, the most user-friendly thing is to drop to shell. Do so.
> Users can still override nv.autoboot if they want to boot differently.
>=20
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--iygv2j4z3njiyphr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmBtkI4ACgkQwfwUeK3K
7AlN0Af+I7m/4HqOfNPszJrB4WwYgIGQ91sv3Vnjp7ChUJ07QsnYvMGrHnYfwuSF
/92Ge/9hE+mizGBLvdha9KlM/vnFwIAH0/3F47RWSNqbI8hkXmH/GPAnG9K8N11n
NEbonpWgEEOE6rs2e9DJD3YV4IdGat/tBYzcA7fKgrAwNNLzkGLqdmV5ATg4lnl4
4XarCaknL+wgdNU2IiPuc7z7oGsBHExTqpBa7vHt+L1GyLbOLIDJ3nf3NT0G+lmJ
Ku4tG86zBaeMaI68gdX00k+0kKS4iCuAd+rukckDnw8YZgAqmljHrn+MLLjWv2T7
ehMWKZ821DEPjea60uwXK1J1C7jy0Q==
=bIhr
-----END PGP SIGNATURE-----

--iygv2j4z3njiyphr--


--===============1304537983679519706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1304537983679519706==--


