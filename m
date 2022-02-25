Delivery-date: Fri, 25 Feb 2022 11:27:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNXpJ-009oZx-Kv
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 11:27:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNXpI-00076S-2L
	for lore@pengutronix.de; Fri, 25 Feb 2022 11:27:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MOBX3Al52lBjezzouaOF8yQLcOZMKvr7TMf25AAMeAg=; b=dLLrEDoCXTW7lmznNzJ+y4F1h8
	ZX1axTMD2WVHEZniqr4DkAM219FOfVZptsjnfO0LeINBXazt+kfG69elrr+PNGFNEEbuoiPHWgo/H
	sZ3RJUZXqfZN3dn2Dg9l0U0J+4ZSeIb2Dp1GO4RIQGOOdYlYz4qc1Rj/aFJYukeAF9XbkdJO1KABD
	BuKIa5MpROQsfXOFMADKW7QhzMq6ydUo+jVoguIRo0bMFJ6xapY5pQBy4dkuqYMo4F6wKbcAEM5/o
	Brnh7TXythd/PvNsLL8oVxwjYkCL/AxQxThI/Y0repBxVv9I0797W1KRnSpstsb98ieEfpS60EVYX
	JzQQgnUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNXng-004NJs-6i; Fri, 25 Feb 2022 10:26:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNXnQ-004NGX-Ae
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 10:25:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1nNXnN-0006iI-0B; Fri, 25 Feb 2022 11:25:53 +0100
Received: from pengutronix.de
 (2a03-f580-87bc-d400-c8b7-5627-f914-a39f.ip6.dokom21.de
 [IPv6:2a03:f580:87bc:d400:c8b7:5627:f914:a39f])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 7D1283D3D9;
 Fri, 25 Feb 2022 10:25:52 +0000 (UTC)
Date: Fri, 25 Feb 2022 11:25:52 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220225102552.o4emeawwdhv6ybbv@pengutronix.de>
References: <20220225100344.4166248-1-bst@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20220225100344.4166248-1-bst@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_022556_410190_C7EC03CE 
X-CRM114-Status: GOOD (  16.86  )
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
Content-Type: multipart/mixed; boundary="===============2697220710269388269=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arch: arm: mach-imx: document field return in CSF template
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============2697220710269388269==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bqwvxng7qeebaotc"
Content-Disposition: inline


--bqwvxng7qeebaotc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 25.02.2022 11:03:44, Bastian Krause wrote:
> Activating the field return configuration returns a locked-down board
> (nearly) to its open state. In order to burn the FIELD_RETURN fuse, the
> CSF must contain a specific unlock command with the device's UID.
>=20
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  .../include/mach/habv4-imx6-gencsf-template.h        | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h =
b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> index a60b485292..45da2981cb 100644
> --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> @@ -39,6 +39,18 @@ hab Engine =3D SETUP_HABV4_ENGINE
>  hab Features =3D SETUP_HABV4_FEATURES
>  #endif
> =20
> +/*
> +// allow fusing FIELD_RETURN
> +// # ocotp0.permanent_write_enable=3D1
> +// # mw -l -d /dev/imx-ocotp 0xb8 0x1
> +hab [Unlock]
> +hab Engine =3D OCOTP
> +hab Features =3D FIELD RETURN
> +// device-specific UID:
> +// $ dd if=3D/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=3D4 skip=3D1 cou=
nt=3D2 status=3Dnone | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
> +hab UID =3D 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08

You probably want to comment this all out in the template...

> +*/
> +
>  hab [Install Key]
>  /* verification key index in key store (0, 2...4) */
>  hab Verification index =3D 0
> --=20
> 2.30.2
>=20
>

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--bqwvxng7qeebaotc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEBsvAIBsPu6mG7thcrX5LkNig010FAmIYrq0ACgkQrX5LkNig
012DCwf+I8AJpyA7Zy3mNLT8g1iiS4RENOdwfaxsrYY8/ynx6OdqFKCM3ScTEnkG
FTUCpU2yyKRQ0Ml14bzn89lylGwOqcFXbBKqLUZBYjr/Fr58P+HYjxjdbVbOTQ9H
soAxBtAYMIhPgLPrEDcAu4fcvMuMdAnEi+2hycu4nFqZqisO+gSMVRm9YtpqGka2
3plzQUO03eu6DDnsSe8sC98dqT/ysMsqIE+7WXDDPT6h6dccAIU5qsM/wxD283wU
GnwXMEco8kSZG/SaUmbQ2WFqs9MH9KL3qDO/nIdiYFrN3Rzmw6gzjTQoLO4MlmLP
bkEwQQea0eDkrp5VDVpNqnSvzIcxfA==
=3YCb
-----END PGP SIGNATURE-----

--bqwvxng7qeebaotc--


--===============2697220710269388269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2697220710269388269==--


