Delivery-date: Mon, 06 May 2024 09:24:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3shf-005hof-1q
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 09:24:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3she-0004DR-P1
	for lore@pengutronix.de; Mon, 06 May 2024 09:24:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AfS49dLl8nAWONgDkqWkMl7Tj3H006/hsaGDSLX98JE=; b=YnthVTEAa77CWMZ+ehMV6EmbMe
	VW5u49uTmBMBP/51gBuyE+oGWmFdWWsUp0QCKmyAOwCuYTNgjAhcG9ygFrVU3pmm5fyxQIi/MoKz5
	be7wNtdziEuyHi7CzxUlV3NgKQrYJGEolpGuzzXoyJbX3g6tyoPHRVLAobGFVDpAWt+/XsYOZWnyV
	ZfEuMgkbGbT4U70tsbKEe2khiccjJDlYAe8mXsQa1QMA2tIzspiWqjZvL1fTPi2EWsY3jOLQYLcEf
	HPdhqRpBT1RJFecNVslsIbLqTKseHa/FTUOURZYbo3shgIDyu9k0OXXLtyNnTSQR2DRNmUD8P/d6w
	zu5rUu7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3sh2-00000006RNp-3Tj0;
	Mon, 06 May 2024 07:23:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3sgz-00000006RNF-42eH
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 07:23:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3sgw-00042x-6Q; Mon, 06 May 2024 09:23:18 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3sgv-00GDeT-Q7; Mon, 06 May 2024 09:23:17 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3sgv-00GVIQ-2M;
	Mon, 06 May 2024 09:23:17 +0200
Date: Mon, 6 May 2024 09:23:17 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <fa2amnimprlfmc5xwt4p7gwoykkwusxwx575od4tfemmj7p2aq@yq32awymfdxx>
References: <20240430094451.1038256-4-u.kleine-koenig@pengutronix.de>
 <20240430094451.1038256-6-u.kleine-koenig@pengutronix.de>
 <ZjSV2G-NZ30WAeF8@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xa5depd2olkpkezb"
Content-Disposition: inline
In-Reply-To: <ZjSV2G-NZ30WAeF8@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_002322_033490_E9BA44BB 
X-CRM114-Status: GOOD (  40.96  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] mtd: mxc-nand: Only automatically create BBT if NAND
 seems to be pristine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--xa5depd2olkpkezb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hallo Sascha,

On Fri, May 03, 2024 at 09:44:24AM +0200, Sascha Hauer wrote:
> On Tue, Apr 30, 2024 at 11:44:54AM +0200, Uwe Kleine-K=F6nig wrote:
> > Automatically creating a BBT is the right thing to do if the NAND is
> > factory new. However when migrating from a barebox older than commit
> > v2020.03.0~28^2~1 ("mtd: nand-imx: Create BBT automatically when
> > necessary") on a used machine, this automatism is really bad because it
> > most likely marks the blocks containing the barebox image (and possibly
> > more) as bad. On such a system the vendor BBMs are gone, but it was
> > operated without that information before, so continuing to do so is a
> > sane option.
> >=20
> > Add a light check for the NAND to be really pristine: If the first block
> > looks like containing a barebox image or a UBI refuse to create a BBT.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/mtd/nand/raw/mxc_nand.c | 58 ++++++++++++++++++---------------
> >  1 file changed, 31 insertions(+), 27 deletions(-)
> >=20
> > diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc=
_nand.c
> > index a72275480144..fd5ae447a198 100644
> > --- a/drivers/mtd/nand/raw/mxc_nand.c
> > +++ b/drivers/mtd/nand/raw/mxc_nand.c
> > @@ -1555,30 +1555,6 @@ static const struct nand_controller_ops mxcnd_co=
ntroller_ops =3D {
> >   * From this point on we can forget about the BBMs and rely completely
> >   * on the flash BBT.
> >   */
> > -static int checkbad(struct nand_chip *chip, loff_t ofs)
> > -{
> > -	struct mtd_info *mtd =3D nand_to_mtd(chip);
> > -	int ret;
> > -	uint8_t buf[mtd->writesize + mtd->oobsize];
> > -	struct mtd_oob_ops ops;
> > -
> > -	ops.mode =3D MTD_OPS_RAW;
> > -	ops.ooboffs =3D 0;
> > -	ops.datbuf =3D buf;
> > -	ops.len =3D mtd->writesize;
> > -	ops.oobbuf =3D buf + mtd->writesize;
> > -	ops.ooblen =3D mtd->oobsize;
> > -
> > -	ret =3D mtd_read_oob(mtd, ofs, &ops);
> > -	if (ret < 0)
> > -		return ret;
> > -
> > -	if (buf[2000] !=3D 0xff)
> > -		return 1;
> > -
> > -	return 0;
> > -}
> > -
> >  static int imxnd_create_bbt(struct nand_chip *chip)
> >  {
> >  	struct mtd_info *mtd =3D nand_to_mtd(chip);
> > @@ -1598,12 +1574,40 @@ static int imxnd_create_bbt(struct nand_chip *c=
hip)
> > =20
> >  	for (i =3D 0; i < numblocks; ++i) {
> >  		loff_t ofs =3D i << chip->bbt_erase_shift;
> > +		uint8_t buf[mtd->writesize + mtd->oobsize];
> > +		struct mtd_oob_ops ops =3D {
> > +			.mode =3D MTD_OPS_RAW,
> > +			.ooboffs =3D 0,
> > +			.datbuf =3D buf,
> > +			.len =3D mtd->writesize,
> > +			.oobbuf =3D buf + mtd->writesize,
> > +			.ooblen =3D mtd->oobsize,
> > +		};
> > =20
> > -		ret =3D checkbad(chip, ofs);
> > -		if (ret < 0)
> > +		ret =3D mtd_read_oob(mtd, ofs, &ops);
> > +		if (ret < 0) {
> > +			dev_err(mtd->dev.parent, "Failed to read page at 0x%08x\n", (unsign=
ed int)ofs);
> >  			goto out;
> > +		}
> > =20
> > -		if (ret) {
> > +		/*
> > +		 * Automatically adding a BBT based on factory BBTs is only
> > +		 * sensible if the NAND is pristine. Abort if the first page
> > +		 * looks like a bootloader or UBI block.
> > +		 */
> > +		if (ofs =3D=3D 0 && is_barebox_arm_head(buf)) {
> > +			dev_err(mtd->dev.parent, "Flash seems to contain a barebox image, r=
efusing\n");
> > +			ret =3D -EINVAL;
> > +			goto out;
> > +		}
> > +
> > +		if (ofs =3D=3D 0 && !memcmp(buf, "UBI#", 4)) {
> > +			dev_err(mtd->dev.parent, "Flash seems to contain a UBI, refusing\n"=
);
> > +			ret =3D -EINVAL;
> > +			goto out;
> > +		}
> > +
> > +		if (buf[2000] !=3D 0xff) {
> >  			bbt[i >> 2] |=3D 0x03 << (2 * (i & 0x3));
> >  			dev_info(mtd->dev.parent, "Bad eraseblock %d at 0x%08x\n",
> >  				 i, (unsigned int)ofs);
>=20
> Could you add the new code to checkbad() instead of inlining it? That
> way it seems easier to adjust the code in case we have to change the way
> how we detect useful data on a page. Rename checkbad() in case the name
> doesn't feel appropriate anymore.

I hesitated to add the check for the chip being pristine to checkbad().
Then maybe read page 0 and check its contents before the check_bad()
loop? Then page 0 will be read twice but checkbad() can stay around and
only do what its name promises.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--xa5depd2olkpkezb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmY4hWQACgkQj4D7WH0S
/k5tQQf8C/xyzT2bFOGCHcwM/ct2HVC+DiDdfsHjkXrqIK7LZmzsxzCjNG7ixzVl
YBBw4KzIdTjuoxKJzJv/C8CBXWhvSTBOYuG4DUMoSZZelrhKAilIHgJ573f6bd8n
J+EoCBivYgkIGzABhNfxCw8wPzNun7iSiKZuSnsMTyyGaTrnd0dOrU0kaqp7EXp/
X0GBNvPW9fo7pSj85IFhPTuhzQ9WiCXjsBvqKoLSz6ZEHFphRhuV2t2cizurbSPN
mmCnSCQGwy3jCfgGKTnYt8uXZRl3GPrOAMojDElIokbtvtSTB2/szNQ1LT16ahIJ
eXyKGKWcBoLSTc4czWK6QqCbX0eiFA==
=ZrZY
-----END PGP SIGNATURE-----

--xa5depd2olkpkezb--


