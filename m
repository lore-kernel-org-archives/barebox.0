Delivery-date: Tue, 26 Sep 2023 23:23:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlFWV-00CTqi-21
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 23:23:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlFWT-000718-26
	for lore@pengutronix.de; Tue, 26 Sep 2023 23:23:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dm/Ji2uIje1sGDR3hgpuxFmX9pe+vNfSJSYUogMDCUo=; b=3AIsCSvOLunET59AzNVwDpcjP1
	mEo6hrejcHJKi8hhRZTOcGJ/ooWjigdfesxR2giAl8/9UMQt5PaXCeKwpqKHp4C7gQClAaIh3okjc
	5cllXbHbHr5yyzO4YbZGIbUeDLrvOEKyJNTgG+TLiiXwlnvue38QOd0idjdpCBp4OoN65Cke9lvMH
	8pAvO/tEiQ8LaMVjqtgUdlwtCRrTeb+mLrSQB2juBkzrBj6aw4z12JSOEhFUXbJDTRh2zdGlwLTdA
	FW6TJOzCFvHxukQyybGnoSaICYS9Psuwypo7dTS98GFEdHosUCWnZFLP86ZTwsmHmeNT0PpbfIHpw
	cNA/7Oww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlFV2-00H3CE-0b;
	Tue, 26 Sep 2023 21:21:44 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlFUz-00H3BL-0d
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 21:21:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 00175CE13FD
	for <barebox@lists.infradead.org>; Tue, 26 Sep 2023 21:21:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAD0AC4166B;
	Tue, 26 Sep 2023 21:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695763298;
	bh=fGg/wmJycOa2ICimu+cOQXV4B1UKCr5RPV96CRM9DS8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VHDFOR0PYigcHrdH1rWB3rwLf+nRNAsa40pFvXbi5ef7xwrwTUex6F8NHJ6YGbevm
	 itGcyZ4GdBerSUl1HDS9kIA5LmIAT2nbNV8AHYjaoYD3PFEG66RmQoYR5YvM+m7CMR
	 AFAnaJAEUqYFdXqEnOt9TI3nvANO3KkjwsuarqFzEuk8NZvF83I7tRQXy45Uz4Pk/X
	 6oWgp3Gd5SfrudJJ7247bvwEt6gfFQ1sc0k7TLjkpEgj8Y/FlDXCE8/URWWMth3oyT
	 Uv4scIBtaLsWp/CTIEOFgD1hFvegJnCN3SQX9VURx5wgZwi+7saBAUW1tI6esSEhEK
	 3lgVqDxvgrJyw==
Date: Tue, 26 Sep 2023 23:21:31 +0200
From: Wolfram Sang <wsa@kernel.org>
To: R@shikoro
Cc: barebox@lists.infradead.org
Message-ID: <ZRNLW9uJSmJMw2NL@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>, R@shikoro,
	barebox@lists.infradead.org
References: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ToiTcPbNUUmZ0YxN"
Content-Disposition: inline
In-Reply-To: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_142141_444042_03F0699D 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-104.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	TO_MALFORMED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: OFFLIST Re: [PATCH 0/5] ARM: at91: add first DT support for Calao
 usb/tny boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--ToiTcPbNUUmZ0YxN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> This is not yet a complete replacement:
>=20
>   - We use the legacy NAND driver instead of the newly backported driver
>     that Linux uses with the hardware, presumably without issues
>=20
>   - OHCI hangs during probe, so it's disabled for now
>=20
>   - A barebox with comparative functionality to the non-DT version
>     exceeds the 256K partition size

Aber brauchst Du das Ger=C3=A4t dann nicht noch etwas f=C3=BCr diese Sachen?

Gr=C3=BC=C3=9Fe nach Paris,

   Wolfram


--ToiTcPbNUUmZ0YxN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmUTS1cACgkQFA3kzBSg
KbbOQA//Tn/C5Jcv0ny9mcNNWZQWe2nTUY/NOKddo+RrLaorpXipC1sL5ii90/AM
XTwn4IgP2zUqo85UlX5Edra8X7rQs/hy0PEsmuPmMBxU7FkKUWIboMstyS+u5pcZ
SNFlkAphpGWh/gVfgCmriuklss01Dz1soahFxG48F0R52TpicguteLbEpjO7c5bx
AOt/ihcOTgPv3XEhHD/NvBVyXufynoHaHRd0A9oaBJiVhrKlVurtFoL7tVozGAsh
oLRk5p52HFHN5KGGkbWn2EQ1bhXiPZI8sCWPb3Cb4amX7Wnc+7tGMBLsT9yy6apA
VRz7G/j84smPBhkjWrZyIqggjgNHgt3ltpH34RzApIHkka7I/rVtfHSqn1aE8enK
XwjXGWwhhD1IdtXMRMnlJjGzfQm/PCryFGH6c+CuT9KH9VYmgfvS4yfLh6ZmQL51
IoZ0GMapN07ai/81+/eY74AM2sYZLQhRjQcUe8BPfodrSeprQ3shbBuu9pibJ2Z9
AzEmW8HAyFB+0NF9SGbd5WQvAjPyVvYdGOhOyHIJhrc6sb3JLeKG610VOWyBpTI1
mkyOocH4EchBL1VjGU+HaerOFcsNmFYtLD1RejiufHlctTJZH8xGsKwmxknvE9yT
X1hz4Z4AkIqBa7SjkqM4MhNe0LQS0pHB/d5pA50OkURQvtqER2Q=
=Mozt
-----END PGP SIGNATURE-----

--ToiTcPbNUUmZ0YxN--


