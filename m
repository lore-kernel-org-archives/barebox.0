Delivery-date: Mon, 03 Jan 2022 13:22:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4MM3-009p4L-7S
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:22:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4MM2-0007ID-1V
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:22:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cNXFCVz0dYcS4yJ8oyrtfjCRO6yzhowBjS4mffJNCQA=; b=zoubmJJ+dsBU0hOm8D2LQNHcyT
	OaNuvEJpq3qqnVpqvnD9bWghbS9sXJUHDu7PThJEWkUdVu38dUN3KE+tE+kRoEUsxXMztbg5eZqJF
	jS7MCfrAOuJlyfCNdbAMmgQGEOboOIOn4UGyQGCIl5J93b4jn6AwJvq8rht8j7gzxhR1k0GUORQqj
	j+q6XjGZ0gh2kinYWG2Ao3FMLXJJXgORcO9HaTQA/+0R1lbcrLitCqh9C4P4az6PSaUCFcgq4qeYZ
	jSLja9Egz4awxWCvYpxw+55yoBGAZgsyCRQmwLdcucPHdXOUxnPg5yd2Mk7So+XpSLaCOGT64BPnK
	/AZIPlEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4MKl-0090rw-3d; Mon, 03 Jan 2022 12:21:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4MKf-0090qe-Eq
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:20:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n4MKc-0007AL-Fj; Mon, 03 Jan 2022 13:20:54 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n4MKc-008Dwd-FX; Mon, 03 Jan 2022 13:20:53 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n4MKb-00026T-Dc; Mon, 03 Jan 2022 13:20:53 +0100
Date: Mon, 3 Jan 2022 13:20:53 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rhi@pengutronix.de
Message-ID: <20220103122053.ry32inulqtx2wwsj@pengutronix.de>
References: <20220103120539.1730644-1-a.fatoum@pengutronix.de>
 <20220103120539.1730644-12-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20220103120539.1730644-12-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_042057_526156_E0EBCF91 
X-CRM114-Status: GOOD (  13.76  )
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
Content-Type: multipart/mixed; boundary="===============9048536641937516683=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/11] treewide: add SPDX-License-Identifier for files
 without explicit license
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============9048536641937516683==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fz26ri22jl3b4o47"
Content-Disposition: inline


--fz26ri22jl3b4o47
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 03, 2022 at 01:05:39PM +0100, Ahmad Fatoum wrote:
> diff --git a/arch/arm/tools/gen-mach-types b/arch/arm/tools/gen-mach-types
> index 04fef71d7be9..fcfc0ed192e1 100644
> --- a/arch/arm/tools/gen-mach-types
> +++ b/arch/arm/tools/gen-mach-types
> @@ -1,5 +1,7 @@
>  #!/bin/awk
>  #
> +# SPDX-License-Identifier: GPL-2.0-only
> +#

I would prefer to have the license identifier in the 2nd line. Not sure
what the standard tells, but ISTR that in Linux the is no "empty" line,
too.

Otherwise thanks for your effort,
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--fz26ri22jl3b4o47
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHS6iEACgkQwfwUeK3K
7AksTgf/eKs4syC/ZydqFO2YkWe26HDdLJAKnAbqF9S0dnGuhS8E7DPfWzdGyOWn
rCQ25jmAbUFIPkAMz/TgKlJVVbTeQeKKvyS05xVRjxldwrTHZBde0u75bPLj1bju
YFittbFabYE7O/Zx0V4UdCtjoh7d8woRIZxN8sZ3ruFSZGpvPwWIBMuYu8qJvqRl
bbqnvN5Aze9R6gLiWC9fBI9xbY5PM/Cu+siiJC/xYfvSqh6NyGjZAAbVVXJ7WzDJ
TlZ8FXGp+ruTWUSp6df9uQbI6guXj98wiIItPqOP+2bymLkES8czU4XanJ33aM1Y
UKBl04skOJ063SrKZ1sxHZK/UG7SLA==
=RT2+
-----END PGP SIGNATURE-----

--fz26ri22jl3b4o47--


--===============9048536641937516683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9048536641937516683==--


