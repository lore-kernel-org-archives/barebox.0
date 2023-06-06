Delivery-date: Tue, 06 Jun 2023 13:35:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Uy3-00Czo5-3W
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 13:35:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Uy0-0001df-Pt
	for lore@pengutronix.de; Tue, 06 Jun 2023 13:35:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LqbCQJMBIUmeLnn0rof6+vf31yw5l6In/zLVSkQEQgA=; b=zb1MMBnMtKvi+KL6mUvDzqKI2X
	Gstvtpx3IezKk1szr3fUliV52gdqAgFZ5Js6NO9NaQ7wXhEwCqka2ccC4+6aWnKiB44vGv+23/9Nt
	/m/wSBG03QHU0LdYWooczphNzQIPmT/sr0Qe51Hw3l6oCXmMe0l5E+YKZ32q2seCajbQE9opJVBpO
	PJQaBIglL3uF1gaLJVMLr0lNnIRBh4EvBFzO3/PmglSpaZeJ67J2dqI1zR77++thLNGMQ/vTGcb+U
	j1TAJ0mFYALlTPk11vl6d8wVFSk5gAoT2vowcX7z22OZf1uX6jUM2MQ9p5GnaH4ZMif/bMNJRuKwI
	+CQHeMOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Uwu-001SaG-1Z;
	Tue, 06 Jun 2023 11:34:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Uwq-001SZc-2w
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 11:34:02 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q6Uwp-0001QH-KS; Tue, 06 Jun 2023 13:33:59 +0200
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 088721D327C;
	Tue,  6 Jun 2023 11:33:59 +0000 (UTC)
Date: Tue, 6 Jun 2023 13:33:58 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230606-neurology-change-45c5524addca-mkl@pengutronix.de>
References: <20230606-phytec-som-imx8mm-v1-0-b9c2bf70b766@pengutronix.de>
 <20230606-phytec-som-imx8mm-v1-1-b9c2bf70b766@pengutronix.de>
 <20230606112148.GE18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fawg5mkrkgt5ghcv"
Content-Disposition: inline
In-Reply-To: <20230606112148.GE18491@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_043400_944297_868A1D3E 
X-CRM114-Status: GOOD (  24.05  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] i2c: add <pbl/eeprom.h> for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--fawg5mkrkgt5ghcv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 06.06.2023 13:21:48, Sascha Hauer wrote:
> On Tue, Jun 06, 2023 at 12:50:02PM +0200, Marc Kleine-Budde wrote:
> > Add a small helper to read a single page of EEPROM data.
> >=20
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> > ---
> >  include/pbl/eeprom.h | 34 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> >=20
> > diff --git a/include/pbl/eeprom.h b/include/pbl/eeprom.h
> > new file mode 100644
> > index 000000000000..b713cf154c99
> > --- /dev/null
> > +++ b/include/pbl/eeprom.h
> > @@ -0,0 +1,34 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef __PBL_EEPROM_H_
> > +#define __PBL_EEPROM_H_
> > +
> > +#include <common.h>
> > +#include <pbl/i2c.h>
> > +
> > +static inline void eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u=
32 addr, void *buf, u16 count)
> > +{
> > +	u8 msgbuf[2];
> > +	struct i2c_msg msg[] =3D {
> > +		{
> > +			.addr =3D client_addr,
> > +			.buf =3D msgbuf,
> > +		}, {
> > +			.addr =3D client_addr,
> > +			.flags =3D I2C_M_RD,
> > +			.buf =3D buf,
> > +			.len =3D count,
> > +		},
> > +	};
> > +	int ret, i =3D 0;
> > +
> > +	if (addr & I2C_ADDR_16_BIT)
> > +		msgbuf[i++] =3D addr >> 8;
> > +	msgbuf[i++] =3D addr;
> > +	msg->len =3D i;
>=20
> I wasn't aware that an array can be accessed as a pointer.

It's C, that's all just syntactic sugar :)

> I would prefer msg[0].len =3D i here.

That's copied from i2c_read_reg(), will change, though.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--fawg5mkrkgt5ghcv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEDs2BvajyNKlf9TJQvlAcSiqKBOgFAmR/GaIACgkQvlAcSiqK
BOicxQf/f3JYhAU+2+sh6cWxh2o/IvAe6FxpyTF/lfO3u3XhO0X75aXJpKOiaP6g
kCqU5e8pvzH8+ZM6NtwZHTew4+w7Blny2QrZ0ANHzEMZZRLIeZFZJgFltyLmvoBa
sq0HIuOSxy4gab8AeKr4LcAcpM7yUuKLi+yST3P5Ew5Hojr3p4/0OWv7NsuT3M6k
EHAx7rnrOFgTuZK9UrdRZMNZPIj+EfcAtzOid0U9wjwbBoZBa95PIm4DIMsgOCGN
Q5FXA+ARGeMQCCan9jQhlqkrQJjJeI2zdOFg1ADtjBI8Ul4m+E68MjwiMbTIzqmb
ocHW2i7U55ia3i4XEfxaz4TkRuFpqQ==
=MxU7
-----END PGP SIGNATURE-----

--fawg5mkrkgt5ghcv--


