Delivery-date: Mon, 09 Mar 2026 14:55:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzb55-009lSX-1W
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 14:55:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzb55-0007lt-No
	for lore@pengutronix.de; Mon, 09 Mar 2026 14:55:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JRZ6RFL8ZmYFQs4mv3RhwvMG1fhglJWC9slltJrnSlY=; b=q6l3awuzSAswbP1p/vCkuIFPaO
	bJ1YzATng62FLuUBePkzoUw4t5mPcaXbYURzvu7G0P8JZeUy+1aP/tf1Rrz8ZLraMu5foirb8Z7op
	F/kxI4nGuge0vFNmsBEMLhZNHSYiic/YLjkKpBkPr9ojfo4TxhI3oDm4Ncfg4Ex5OGbIdPc5Ti5jz
	cF5tOxx8R49zZ7OP3qeGiNSzKDIU7a0ZxbGoWNxeiHRHk3R5VYRbm61RGVOTREK7wioEWxIn8V70w
	cPYGR9xLQYBJuTyUFmYaEugHqcsyC8vxur9qdw4uac3YIUJ+C2zL5SOXjQpxZO/ovXqFFihYS6iLa
	K9lGjpCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzb4X-00000007R1B-07A7;
	Mon, 09 Mar 2026 13:55:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzb4U-00000007R0U-3rX4
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 13:55:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1vzb4S-0007dQ-1D; Mon, 09 Mar 2026 14:54:56 +0100
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1vzb4Q-004XZX-0m;
	Mon, 09 Mar 2026 14:54:55 +0100
Received: from [127.0.0.1] (helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <jlu@pengutronix.de>)
	id 1vzb4R-00000007mZm-1tlq;
	Mon, 09 Mar 2026 14:54:55 +0100
Message-ID: <cbec4991c8b6017b99bffec46a135b88f9a57629.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
	 <barebox@lists.infradead.org>
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6"
	 <noreply@anthropic.com>
Date: Mon, 09 Mar 2026 14:54:55 +0100
In-Reply-To: <20260305065703.3417243-1-s.hauer@pengutronix.de>
References: <20260305065703.3417243-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_065458_964600_78992AE8 
X-CRM114-Status: GOOD (  18.02  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: bareboxtlv-generator: add PKCS#11 engine
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, 2026-03-05 at 07:57 +0100, Sascha Hauer wrote:
> From: Sascha Hauer <sascha@saschahauer.de>
>=20
> When a PKCS#11 URI (pkcs11:...) is passed as the signing key, the
> openssl pkey and pkeyutl invocations need extra engine arguments to
> route key operations through the pkcs11 engine. Detect pkcs11: URIs
> and add -engine pkcs11 with the appropriate key format flag (-inform
> for pkey, -keyform for pkeyutl).
>=20
> Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bareboxtlv-generator/bareboxtlv-generator.py    | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>=20
> diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scrip=
ts/bareboxtlv-generator/bareboxtlv-generator.py
> index 2eba0aeb23..5b51fb53d8 100755
> --- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
> +++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
> @@ -65,7 +65,14 @@ class PrivateKey:
>              sys.exit(127)
> =20
>          self.inkey =3D path
> -        self.public_key =3D serialization.load_pem_public_key(openssl(["=
pkey", "-pubout", "-in", self.inkey]));
> +        self.is_pkcs11 =3D path.startswith("pkcs11:")
> +        if self.is_pkcs11:
> +            pkey_args =3D ["-engine", "pkcs11", "-inform", "engine"]
> +            self.pkeyutl_args =3D ["-engine", "pkcs11", "-keyform", "eng=
ine"]

This would break use of the PKCS#11 provider, which automatically handles
pkcs11: URIs when enabled via openssl.cnf. I'd suggest adding a --engine CL=
I
option to explicitly enable engine support.

Jan

> +        else:
> +            pkey_args =3D []
> +            self.pkeyutl_args =3D []
> +        self.public_key =3D serialization.load_pem_public_key(openssl(["=
pkey"] + pkey_args + ["-pubout", "-in", self.inkey]));
> =20
>      def sign(self, message: bytes) -> bytes:
>          """
> @@ -75,8 +82,8 @@ class PrivateKey:
>          from cryptography.hazmat.primitives.asymmetric import rsa, ec
>          from cryptography.hazmat.primitives.asymmetric.utils import deco=
de_dss_signature
> =20
> -        # Access private keys only via the openssl cli so that any confi=
gured provider, such as pkcs11, can be used.
> -        sig =3D openssl(["pkeyutl", "-sign", "-rawin", "-digest", "sha25=
6", "-inkey", self.inkey], stdin =3D message)
> +        # Access private keys only via the openssl cli so that any confi=
gured engine/provider, such as pkcs11, can be used.
> +        sig =3D openssl(["pkeyutl"] + self.pkeyutl_args + ["-sign", "-ra=
win", "-digest", "sha256", "-inkey", self.inkey], stdin =3D message)
> =20
>          if isinstance(self.public_key, rsa.RSAPublicKey):
>              return sig

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


