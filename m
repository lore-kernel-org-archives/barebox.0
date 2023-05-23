Delivery-date: Tue, 23 May 2023 09:57:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MtU-00AWTg-9R
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:57:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MtR-0000Ib-Pw
	for lore@pengutronix.de; Tue, 23 May 2023 09:57:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWPDwCaFnuKMEe+nVOTc89C+E3tgAuPSymGQBDqpMl4=; b=PezvZ+EnqO/UUUmdzDpTE8VLv9
	MLbM9ZbrLlaVrqW259coUCYuHlo2bIMgiUiUsEIvMw5/nviMCDzhZZ6o2c+2khlOqZ5XmmlAeZeY0
	AIXpPGeAwBL4tOcAPgoIQ5/rFKc8IocpkdVJi8Lpl0ziS+qZL7ohiozsytC2ZBpBxcKRqGLl9ofDS
	GLjtuz3/0rYjjBD0It/0OI2NIO/qINqK6nef5BYyONAtTGdXs/VuLWK7CpEVxOIuA+lz1oTQz8lxg
	Qmj4dHdsmOkOK8a/+Fj3gEy6yRtVtkHQKbLyuGhRQ9w1ELc6UDX0zpAqMNJazh/9UQvAOQr+bPiqU
	9Ny15f4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Mrm-009KXm-2l;
	Tue, 23 May 2023 07:55:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Mri-009KWa-3D
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:55:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1q1Mrd-0008NA-Hb; Tue, 23 May 2023 09:55:25 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1q1Mrc-002C5B-SY; Tue, 23 May 2023 09:55:24 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1q1Mrc-007AV9-64; Tue, 23 May 2023 09:55:24 +0200
Date: Tue, 23 May 2023 09:55:24 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20230523075524.mzsvdr6htpwolwgm@pengutronix.de>
References: <20230523071621.3796978-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ze2s7g7myjvlmglo"
Content-Disposition: inline
In-Reply-To: <20230523071621.3796978-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_005531_036803_EA28A4CF 
X-CRM114-Status: GOOD (  24.99  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] imx-usb-loader: Don't try to verify more data
 than contained in the image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--ze2s7g7myjvlmglo
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

hello,

On Tue, May 23, 2023 at 09:16:21AM +0200, Ahmad Fatoum wrote:
> On platforms that don't have a 2nd stage (in my case i.MX6 without
> imx6_barebox_start_usb), it usually happens that the transfer limit for
> the first (and only) upload is bigger than the actual file length.
> Then the right thing to do is processing the complete image (minus its
> header), but not more. This was broken by recent refactoring and fixed
> for the transfer case with commit 3cf4bcd86419 ("imx-usb-loader: Don't
> try to transfer more data than contained in the image").
>=20
> The same bug persisted in the verification code though, breaking
> imx-usb-loader -c:
>=20
> 	verifying file...
> 	mismatch at offset 0x000999c0. expected:
> 	[ hexdump of last bytes of barebox binary ]
>=20
> A jump to the binary will then be skipped and subsequent imx-usb-loader
> invocations will have their DCD writes unanswered leading to the
> dreaded:
>=20
> 	main dcd length 328
> 	DCD write: sub dcd length: 0x0324, flags: 0x04w3 in err=3D-7, last_trans=
=3D0  00 00 00 00
> 	addr=3D0x021b001c, val=3D0x04088032               w4 in err=3D-7, last_t=
rans=3D0  00 00 00 00
> 	!!perform_dcd returned -7
> 	4 in err=3D-7, last_trans=3D0  00 00 00 00
>=20
> Applying the same fix as in 3cf4bcd86419 fixes this issue as well.
>=20
> Fixes: 3367ebc55ebe ("scripts: imx-usb-loader: simplify code flow for fil=
e size calculations")
> Cc: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Reported-by: Roland Hieber <r.hieber@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 5f9c7ff3a458..676f077c2557 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -1415,7 +1415,7 @@ static int do_irom_download(struct usb_work *curr, =
int verify)
>  	if (verify) {
>  		printf("verifying file...\n");
> =20
> -		ret =3D verify_memory(image, firststage_len, header_addr);
> +		ret =3D verify_memory(image, min(fsize, firststage_len), header_addr);
>  		if (ret < 0) {
>  			printf("verifying failed\n");
>  			goto cleanup;

Ah, I see. Looks right.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

(hmm, already too late.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ze2s7g7myjvlmglo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmRscWsACgkQj4D7WH0S
/k4y7gf+Lz5SQPDPcWUMgljv6fMvBPm3UWN1mNu8EUsTSTYK6s8Ov6dGWwNK5VbZ
+pZBxC6bG2R0CXRKGi77TvM9tk8qFd0v7e+TKtj8MiwImv03dYlVOTuQVx92QZyW
zeCC/meG7ZiQTGWL2BzL7B44vpb9OuxhTaDqoWaeszyZ4An1AydCslA2k6YjKhcl
kAz9eY5yj/FNMGB0M55PaYTWjXQwpav/hcn94tpsx8s9xBPAf19Dx9MoMirdJMhb
+I0f/XQ6bpcXOBNhBlK7547cYWuqzi8m6GnHgRVumvRMbqf9626HM4dbzfVXIIvp
+E1xrQ+B8EGC6sjI0xTfm1H+7bnR1w==
=fBuc
-----END PGP SIGNATURE-----

--ze2s7g7myjvlmglo--


