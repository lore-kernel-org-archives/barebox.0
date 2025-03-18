Delivery-date: Tue, 18 Mar 2025 12:10:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUqD-0010qC-1Y
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:10:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUqC-0003hK-9A
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:10:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=auqlr8T33sseRN7Njd2d9ghkp+V0dXfdI0PPIQ9e2uc=; b=oPEogCV9lbsq/Fp0ondqmU56HR
	MVtIpgj3h6LTKc+knO48viFViSXt/KgqHwFeSx/0aL5Z9gNOG3zFG4JUSPoBddh77+zIMPEd5hWXH
	8gGRHw8gK32c+9TW+97r7PImuc4mUtxguQH0NMd92zThD/ZmY0J2FCVWPHBvlBiD7I8C1qfQNNiAg
	PZ18S5M58WI5fBnGn80jwxUwaKfPJG02Qq4/tB+7hFbvTOez3waVO4I6Hgs2Cu2bbz4NNtk/UGauU
	QrwYZiT8wf8rEhxaSZXqF2iydg8i/7JrSzpH1TBJ3djy9024FZ9HAkehkda3ySfyRnJt5cAEUeQyT
	gNQJkqHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUph-00000005ein-2wGE;
	Tue, 18 Mar 2025 11:10:05 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUjA-00000005dQo-0NEY
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742295798;
	bh=6Ze/Kp6tdVw81X7Ke+VwTCXQ0D51hOHEBGymsG6u+XA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XCRy3iofSS0emvXllENiIG1pb1OBj/CJjO4A65Zrnc8XzjQOxmlsNjZGLwDydPA31
	 hewBtGErFhvgeFC6XspkfuTRhkDL25cLvOJ3q6crRdvz6+qPv56Ffr40CRrwTmqn26
	 gto2WWjUbeHhhhc7ZidelclKqXDaZIHW+bbiSgkDOe4UvvdwkHGFYMb3OoPzkYhfPZ
	 2ycCBmGufzUyKRJKaGe/9EZyKx+1CUHUGPnqAPC/somdOZl5plnTwP37y0V7cq/ahh
	 j91dUsbiQ0BAKateuQrtYZNVS5QAoDReTQ+mlLWWURB9whhdXQBJE0tnyGfjKd51Fx
	 pDRvdCTrddJnQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 44701FC5106; Tue, 18 Mar 2025 12:03:18 +0100 (CET)
Date: Tue, 18 Mar 2025 12:03:18 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <v4s2tw2pg3o7ougore4dvhuzpfqz4lgehiskaopfw5gllpyptb@2fjhiqk36mqo>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mu43hgdwkxwsb5wf"
Content-Disposition: inline
In-Reply-To: <20250318082507.419785-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_040320_275002_C7F32362 
X-CRM114-Status: GOOD (  19.73  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] scripts/make_fit: factor dtb file name into
 configuration name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--mu43hgdwkxwsb5wf
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/4] scripts/make_fit: factor dtb file name into
 configuration name
MIME-Version: 1.0

Hello Ahmad,

On Tue, Mar 18, 2025 at 09:25:04AM +0100, Ahmad Fatoum wrote:
> Bootloaders often support booting a specific FIT configuration by name.
> This is useful when the automatic boot fails, because the bootloader's
> DT compatible differs from the upstream one included with the Linux
> device trees.
>=20
> Currently, configuration are numbered sequentially requiring the user to
> dump the FIT image to determine what number the configuration has.
>=20
> Improve upon this by naming configurations after the dtb name instead.
> This is what OE-core kernel-fitimage.bbclass does for example.
>=20
> Cc: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/make_fit.py | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>=20
> diff --git a/scripts/make_fit.py b/scripts/make_fit.py
> index 075b7c258ff2..2190da4c003c 100755
> --- a/scripts/make_fit.py
> +++ b/scripts/make_fit.py
> @@ -145,11 +145,9 @@ def finish_fit(fsw, entries):
>              str: Compatible stringlist
>      """
>      fsw.end_node()
> -    seq =3D 0
>      with fsw.add_node('configurations'):
> -        for model, compat, files in entries:
> -            seq +=3D 1
> -            with fsw.add_node(f'conf-{seq}'):
> +        for dtbname, model, compat, files in entries:
> +            with fsw.add_node(f'conf-{dtbname}'):

Funny/surprising semantic of fsw.add_node (i.e. fsw refers to the new
node in the with-body?)

>                  fsw.property('compatible', bytes(compat))
>                  fsw.property_string('description', model)
>                  fsw.property('fdt', bytes(''.join(f'fdt-{x}\x00' for x i=
n files), "ascii"))
> @@ -266,6 +264,7 @@ def build_fit(args):
>      fsw =3D libfdt.FdtSw()
>      setup_fit(fsw, args.name)
>      entries =3D []
> +    dtbs_seen =3D set()
>      fdts =3D {}
> =20
>      # Handle the kernel
> @@ -290,7 +289,13 @@ def build_fit(args):
> =20
>          files_seq =3D [fdts[fn] for fn in files]
> =20
> -        entries.append([model, compat, files_seq])
> +        dtbname =3D os.path.basename(fname)
> +        ndtbs_seen =3D len(dtbs_seen)
> +        dtbs_seen.add(dtbname)
> +        if len(dtbs_seen) =3D=3D ndtbs_seen:
> +            raise RuntimeError(f"Duplicate file name '{dtbname}' during =
FIT creation")
> +
> +        entries.append([dtbname, model, compat, files_seq])

	dtbname =3D os.path.basename(fname)
	if dtbname in dtbs_seen:
	    raise RuntimeError(...)
	dtbs_seen.add(dtbname)
	entries.append(...)

looks more pythonic (to me).

Acked-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

for the idea of this patch.

Best regards
Uwe

--mu43hgdwkxwsb5wf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfZUvMACgkQj4D7WH0S
/k7xZAf9GNCje/X+ZlEX+4uj3BdeYe604rTIE3RL4Vv+quy9h/mKpEWn2AYe5ZxR
8f4+c5sCcGTtb+PZmN8650JR4GuC1hCU9DMlHEBzG6OUn1TLnEtNbHFzI2nchpjC
7SPg8L5JkZhQBLF70dKEbrfrP5O5WHos3tu7Dk10mn3HiCE4Fy38Ou2AnCXjblzE
4141KEQsVSxU3NpzqgwvapxN5IZZBHDlFEoW6mGmo1I2bWlwzIsBo6E7Gkh+n69p
fQJPenkDpwVpqj0ZJG7jkp+ShUNpwlSaTxdUhC57EmCU/t2ZF2ix8z9rAz1njChu
ZOz/RmMz8RgS6KZvY4tZXMjEDclUrw==
=LBiz
-----END PGP SIGNATURE-----

--mu43hgdwkxwsb5wf--


