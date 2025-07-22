Delivery-date: Tue, 22 Jul 2025 17:59:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFOi-002blY-01
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 17:59:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFOh-0001p1-Ed
	for lore@pengutronix.de; Tue, 22 Jul 2025 17:59:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uwRsjBdHeZGWDe3CjDIyQQ15qOh75eJN2PHAOMw48IA=; b=Dqk2RBp65khCuUySOFpgfUA0eo
	vEOFAHxRWiPnfJWO3Q44Bi1G7ajQI1sbpvrlYH0NSjdMM81FVGSbetAWBdwB6hNmQPJUJ1sTV9ELU
	Hn/5cimN5Ym+t/Rsi+ObC3/U3GGSDWWKlQToLEvG2Qqwck0gAenjRCg/NB2wh0BUcvI3xd+4MdTxV
	PfOYy6cXYsAgshX2W5FC7kBONfOz7HLNKMSXvMBX4eSKfY9ZHiXMiQcHmFE/WbD1s2HSscgNDLmfz
	vyK10GmUg84MMhh2P5cFr1jyOt5Tl2iShEL2Iq14iIEUgp+++3D9+MV5TZrH5R/ZIMlHki9zNYMcz
	XheaN8Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFO5-00000002w5d-2YP4;
	Tue, 22 Jul 2025 15:58:41 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueEPI-00000002muC-2D96
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 14:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1753196148;
	bh=/x2xPWxxZJWBeD1tKSBLym8Obcjt3eqwhir1tJFdMUc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dddycuI1pVA2iEkI5Ans6wd6/p2458+Bwo64d3f1Oqf/uPtvbcnqu+31sFzye5J+1
	 +pPaskQAoZxjbg4xSaKj20ehwwKUhSWc5QdNpo6AgtKBSGlj/U4+MHSRfPvu1XIq6h
	 GvhYzNJklw/exdXJlmJIKd3oSHTrdJqy95cE7OQHEEFbtvbrrxEVC9BSeTsmEbYtZN
	 ZVvhp4sKPE0NN6FOGVoxwex3wM0ABcRZ94LrN0JHUw5o/b6pT4FIn9U4dBvVVdKCMB
	 AtvpFDl3+xgUc6eC8zkz/CR6vIstNT9LAxB9NMPbSVqkIZe4FVycx0W5gS8bAwyKAM
	 iWDpiS1NnDEGA==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 53916105FB58; Tue, 22 Jul 2025 16:55:48 +0200 (CEST)
Date: Tue, 22 Jul 2025 16:55:48 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Andrei Lalaev <andrey.lalaev@gmail.com>
Message-ID: <hsyr5332sek4aznlf4f6j47epjt7bixdffmsczx3hwumq7ujoo@aek4que2ydc6>
References: <20250722140534.3349443-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bv2mu2s6fyzxa6bm"
Content-Disposition: inline
In-Reply-To: <20250722140534.3349443-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_075552_743088_AA61CDA3 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fastboot: populate is-logical:$partition variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--bv2mu2s6fyzxa6bm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH master] fastboot: populate is-logical:$partition variable
MIME-Version: 1.0

Hello Ahmad,

On Tue, Jul 22, 2025 at 04:05:34PM +0200, Ahmad Fatoum wrote:
> Uwe reports on IRC that fastboot tries to read some default variables
> that barebox doesn't define, which triggers host-side error output:
>=20
>   ERROR: fastboot: no such variable: is-logical:kernel
>=20
> Flashing didn't seem impacted though.
>=20
> Referring to the documentation[1], is-logical is related to a number of
> commands that create/delete/resize logical partitions.
>=20
> We have support for modifying partition tables in barebox, but we don't e=
xpose
> it over Fastboot. Until we do, let's report all partitions as physical
> partitions, which is the default value.
>=20
> This issue has always existed, but only became apparent once we started
> returning an error for non-existent variables.
>=20
> [1]: https://android.googlesource.com/platform/system/core/+show/refs/hea=
ds/main/fastboot/README.md#237
>=20
> Fixes: dd377c937f8b ("common: fastboot: send FAIL if variable does not ex=
ist")
> Fixes: 3d5080aae90d ("USB: gadget: Add Android fastboot support")
> Reported-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
> Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> @Uwe, can you give this a test?

I did, and with it the error messages I wailed about are gone.

Thanks, =F0=9F=8C=9F=F0=9F=8C=9F=F0=9F=8C=9F=F0=9F=8C=9F=F0=9F=8C=9F
Uwe

--bv2mu2s6fyzxa6bm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmh/pnAACgkQj4D7WH0S
/k41VAf+IghjNQTefxlnmHsK5dandyE8f+t9SGHdtDnNP8ciajikSgFf/Vp3oIMR
6AJX5qFWxWyOkFhEaorGuQk3tR/IYu/yn1pmXHvRkNJ0hl+4w1PC7yDTc4qYqWIS
wcPeVjxeyE9KJzTCVVbC9R/CL27sbJj7+PWSD91VURFV0gv1yya64RhRkjZ4Sq5P
+xkgUbWAqPD0OLk82rx9H6I+KGgTHSzvMDbCutJty0H9Wgx1kzUzyVPbOK5eGERr
F52Tw1tr+BH28tGq7VYoZBTdpvLCx/N0rrYjqf+JaqnTTmfbiHu9r0oF+0QxHSr9
tA2PedWhrDgPpyamoD9CoaUOoBqVcw==
=3uTO
-----END PGP SIGNATURE-----

--bv2mu2s6fyzxa6bm--


