Delivery-date: Fri, 10 Jun 2022 10:43:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaEz-009pte-Q2
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 10:43:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaEy-0000dm-8v
	for lore@pengutronix.de; Fri, 10 Jun 2022 10:43:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fJTgXc6J8RuhovhntpjBqd/3nTw6KEDTLuqYh1BQlK0=; b=OupLU+jwYnfVT2niYsePJEWQxU
	28tGWY+RVGqHPY4MEnMwylqDMDy6/7bhKkXdgbtra+vz3sVsG1zX++/gHOchv2mKT7D45vS6nYWGo
	4aiZmcYabLuucnLfle2S7FelZgsE1byHaR/WS8QjWj8hFTvAj/0iHnCnKWRK1JdjPvhNzM23tWGjf
	TvOC70KPJzVwRpIFjQ1GBRRTOSyfAKe0iVtGpDjUwaXLQOd7pBGrXba9yzvJEsOw5SAuPR9p73oRW
	gCBC0ftZtgPQUYlU7tLogVBVegb7ADdmfFgZlQfUlH2unLtEVGxsxUg4ClbqR1YJqSauban1WK3nm
	UxZZkE2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaDi-006rZa-I9; Fri, 10 Jun 2022 08:42:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaDc-006rXw-9q
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 08:42:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzaDa-0000ZO-G3; Fri, 10 Jun 2022 10:42:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzaDb-007Xl5-58; Fri, 10 Jun 2022 10:42:09 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzaDZ-00FMWe-51; Fri, 10 Jun 2022 10:42:09 +0200
Date: Fri, 10 Jun 2022 10:42:09 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: =?utf-8?Q?J=C3=BCrgen?= Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220610084209.5aq3vtx3u3vyjimt@pengutronix.de>
References: <20220610070557.2651943-1-u.kleine-koenig@pengutronix.de>
 <11992981.O9o76ZdvQC@circona>
MIME-Version: 1.0
In-Reply-To: <11992981.O9o76ZdvQC@circona>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_014212_398881_6D62D7A6 
X-CRM114-Status: GOOD (  22.50  )
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
Content-Type: multipart/mixed; boundary="===============9108267795210855219=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX7/8M: Make sure the output parameter is always
 assigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============9108267795210855219==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rx4n3dv4seuine53"
Content-Disposition: inline


--rx4n3dv4seuine53
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Jun 10, 2022 at 09:28:54AM +0200, J=FCrgen Borleis wrote:
> Am Freitag, 10. Juni 2022, 09:05:57 CEST schrieb Uwe Kleine-K=F6nig:
> > Callers of *_get_boot_source (e.g. start_atf() of
> > nxp-imx8mm-evk or protonic-imx8m) expect src to hold the bootsource
> > after return. So assign a value reliably.
> >=20
> > Fixes: ea55770308c0 ("ARM: i.MX: Add i.MX7 base architecture support")
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/boot.c | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> > index 63afdf1ef4ed..652e2869f2d7 100644
> > --- a/arch/arm/mach-imx/boot.c
> > +++ b/arch/arm/mach-imx/boot.c
> > @@ -526,6 +526,7 @@ static void __imx7_get_boot_source(enum bootsource =
*src,
> > int *instance, *src =3D BOOTSOURCE_SERIAL;
> >  		break;
> >  	default:
> > +		*src =3D BOOTSOURCE_UNKNOWN;
> >  		break;
> >  	}
> >  }
>=20
> This changes the API

I agree to sha here. Callers seem to expect *src to be initialised
always.

> and - if really required - should be done for all SoC=20
> specific *_get_boot_sources and not for the imx7 only (IMHO).

Agreed, that would be

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 63afdf1ef4ed..c0608c6a8e1b 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -285,6 +285,8 @@ void imx53_get_boot_source(enum bootsource *src, int *i=
nstance)
 	default:
 		if (imx53_bootsource_nand(cfg1))
 			*src =3D BOOTSOURCE_NAND;
+		else
+			*src =3D BOOTSOURCE_UNKNOWN;
 		break;
 	}
=20
@@ -464,6 +466,8 @@ void imx6_get_boot_source(enum bootsource *src, int *in=
stance)
 	default:
 		if (imx53_bootsource_nand(bootmode))
 			*src =3D BOOTSOURCE_NAND;
+		else
+			*src =3D BOOTSOURCE_UNKNOWN;
 		break;
 	}
 }
@@ -526,6 +530,7 @@ static void __imx7_get_boot_source(enum bootsource *src=
, int *instance,
 		*src =3D BOOTSOURCE_SERIAL;
 		break;
 	default:
+		*src =3D BOOTSOURCE_UNKNOWN;
 		break;
 	}
 }

then.

@sha: If wrote to have already applied my patch. If you drop it, I
resend with the above diff and an adapted commit log.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--rx4n3dv4seuine53
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmKjA94ACgkQwfwUeK3K
7Ang8Af/dl7T9LyIwR/o4KuSNp3N3uxC8mjCO5CpZ6zk5CLi1MS2Xee8W391nhb4
5Fa/g5IYI9Vw25BOiu33Fd095wrrtOdqRH+QcDQdVrws3kUzCo+S5zU48TvvwexA
HJnGCgvo/Vl+TiTFt1QFK19gMG0t/xJmHIcEsqzI0Zz/DbKk7Dh47VKcK83Ijff2
pKsow54yvTR5keBrYezZGVOAh10AMOB6VR9nY4+sODVXod4VLexKXNOj96dW4Sit
A8qc0M7LAvpUE6AmasEljZWB/LhYRZqUFO0ixCLohv042IuuVn5Obl6G+CoaoZx5
PwGbN6iSZgtmtuDYTpu667BCvz0aRQ==
=+QmF
-----END PGP SIGNATURE-----

--rx4n3dv4seuine53--


--===============9108267795210855219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9108267795210855219==--


