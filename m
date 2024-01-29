Delivery-date: Mon, 29 Jan 2024 18:28:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUVQv-00AQI0-1I
	for lore@lore.pengutronix.de;
	Mon, 29 Jan 2024 18:28:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUVQw-00005I-4p
	for lore@pengutronix.de; Mon, 29 Jan 2024 18:28:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tU+OQp95yQUvqFU44gxxXmKsKE8hdbLOTZMNWkW9Wz8=; b=tBDtVjD9QpPY0Zf+L1e7ADpl6Z
	jLtJf2Hr0xr/Fm6MeUI/ZfQy0eHsLHWvE2T1kkGTUgHeaHHghRctxTic54KdL6GUGSvENn5fR26L7
	mJc8RFsF4iBrdlax+uk8UDzSIoxW6Ujwz+zxKkEhjDhdbZubhsXHzuEySFp2OAhogLkMCZO2jmbLc
	rGQlW+MZw08lvj8b6HCOkeJa1K4+VXN68FSpp2W1Fr6YPzPe58tDpBfSNRhXCCl1jc79Jb2BfcHVI
	j1T3GE05UYqfF1dbeZ5cboYrU4RQSxAJ148OV5EfeGYbmOL7GXff8T2vOsXG4MiA4XSma0jqWRLzi
	bC+WwxcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVQM-0000000DjGs-1CtM;
	Mon, 29 Jan 2024 17:27:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVQI-0000000DjGM-3Ljn
	for barebox@lists.infradead.org;
	Mon, 29 Jan 2024 17:27:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVQF-0008RL-Uz; Mon, 29 Jan 2024 18:27:51 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVQF-003Ec3-Io; Mon, 29 Jan 2024 18:27:51 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVQF-00B6hD-1c;
	Mon, 29 Jan 2024 18:27:51 +0100
Date: Mon, 29 Jan 2024 18:27:51 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <mcbiowpaqgc6zhj4wdcmkifwup372fw35t3hpwwkqsfxtyqfw6@s6hft4sny2zx>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
 <20240104141746.165014-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r6gpgmx25kwyum7t"
Content-Disposition: inline
In-Reply-To: <20240104141746.165014-9-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_092754_863750_87400C35 
X-CRM114-Status: GOOD (  10.86  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/19] ARM: layerscape: cleanup erratum_a009008
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--r6gpgmx25kwyum7t
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 04, 2024 at 03:17:35PM +0100, Sascha Hauer wrote:
> Drop generic erratum_a00i9008_layerscape() and move its implementation
                          ^
This "i" -----------------' is wrong. Given you already committed the
series and that the error is minor and only should proove I looked at
your series, up to you if you correct it or not :-)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--r6gpgmx25kwyum7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmW34BYACgkQj4D7WH0S
/k5Hrgf+LP9tmn3yw2OoOTtXvdxMvyzJ/LKuWkecEC30gNxAUZYnFDFoHQ04l9by
YIH6oZsGiLGjcx2dQk+TSecZ39Dhpvw2kjONQ69cOe2gOKjH3f+Hg2lSlgppnbPW
zr3KqXkN/Lq6cC9np1S9Zsa2YnKqaLWf/zEfJACEm+srxBVzUVKc53ReHg2emwPt
9JEFBVF9G1KAN/wutwQlLZx7XpGQAj77lrocKCjrDEzlEdBPmPwYRfeCQ5+CCQpA
PM0zD8H3/NJ+NxljZAXX02QVexX1O+ufIVCUfAER3gDRmzu0xokAWAsHjoUNxsUJ
tiQuMQRw4fGBuOZiLIoiTd+lbyFJGA==
=gYiN
-----END PGP SIGNATURE-----

--r6gpgmx25kwyum7t--


