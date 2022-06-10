Delivery-date: Fri, 10 Jun 2022 22:43:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzlTr-00AIbI-Ju
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 22:43:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzlTp-0004EG-Um
	for lore@pengutronix.de; Fri, 10 Jun 2022 22:43:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HjAVBqAAuJV+RvNu6K16NG0pV6aW3RzMZpdEJnEhUks=; b=nvWFMT11tDgTnfywTu8iGqWHH1
	+atsm2X2oZGJCsulV8Db1DLb4hJwUXmEvCnv9whWmqswFtnMg42OhreYEcJplyqAEwNFfSJ0XfsgZ
	7obF0Cqvp8iGQnIezyCOisGcOijlyQ+jnlq9GkOzsLltqfVQ03s+8WoX01/hXDCxZzUsfT9z3rcn8
	EfYahBP5bRJKWIMvihSRXCCS0xBOczgofJ4s2G5dpdr9i43qXEwMYL5n4zXxyf/dnTNjLL9maOsRP
	cnFZr4a3U/7aANwiO0LPFBuz7AN4wfyjaEX8uABr0u/rt1zPPlc6AZZ/qEKXqdZ760UIVM39IjDpi
	/KgL4Avw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzlSH-009oRb-GJ; Fri, 10 Jun 2022 20:42:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzlSD-009oQa-06
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 20:42:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzlS9-00048p-KO; Fri, 10 Jun 2022 22:41:57 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzlSA-007e0M-9H; Fri, 10 Jun 2022 22:41:56 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1nzlS8-00FTA7-9Q; Fri, 10 Jun 2022 22:41:56 +0200
Date: Fri, 10 Jun 2022 22:41:56 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	=?utf-8?Q?J=C3=BCrgen?= Borleis <jbe@pengutronix.de>
Message-ID: <20220610204156.3fbmkd5mityjprwz@pengutronix.de>
References: <20220610165057.86722-1-u.kleine-koenig@pengutronix.de>
 <0b29c92c-b895-c1a9-6586-9605386f9f45@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <0b29c92c-b895-c1a9-6586-9605386f9f45@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_134201_073516_6749D3C0 
X-CRM114-Status: GOOD (  13.64  )
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
Content-Type: multipart/mixed; boundary="===============4583880647863302843=="
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
Subject: Re: [PATCH] ARM: i.MX: Make sure *_get_boot_source always assignes
 *src
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============4583880647863302843==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7frolsnwyzfzun52"
Content-Disposition: inline


--7frolsnwyzfzun52
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Ahmad,

On Fri, Jun 10, 2022 at 07:34:49PM +0200, Ahmad Fatoum wrote:
> On 10.06.22 18:50, Uwe Kleine-K=F6nig wrote:
> > Callers of *_get_boot_source (e.g. start_atf() of
> > nxp-imx8mm-evk or protonic-imx8m) expect src to hold the bootsource
> > after return. So assign a value also for the "unknown" case.
>=20
> Did you check existing in-tree users to make sure none assigned
> a different fallback value and assumed it won't be overwritten
> if no bootsource could be found?

I checked that now as of 345ef59aa0ea:

There are ten users, 3 of them initialize src to BOOTSOURCE_UNKNOWN, the
other 7 don't initialize at all.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7frolsnwyzfzun52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmKjrJEACgkQwfwUeK3K
7AleYwf8C3kjoEPK93UlyuJV0D1coQwYuvo+UGM2d1kjjh4vBO1LVs1+bkvP+JW/
DFGIYjF5mmfMyM6TSx7y4SBf9heuEiQmhUod5olymb5RW0PZ2vnFODufSsVasmuJ
x1Fi9hWAa3XOtVssjd/sGSEosRjBtas3bZ8m+UCmsvjViRMqy5jj8vlSixLALZwu
c9/dDYPZoX0SvqGMR5shv/5njpIeEQ6RvkhFhsiiSzhGRbyhlBNhZ68Fe8LndQtO
9z1+Yejr0wtyP0vwkYaVmyN5RPp/Ngi2m1HW2VeB+CqdFRFlIISRPyCmxzGBF3nq
8zjjjgGvbiH4aIeg4zEMEVzx+y+snw==
=KIhD
-----END PGP SIGNATURE-----

--7frolsnwyzfzun52--


--===============4583880647863302843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4583880647863302843==--


