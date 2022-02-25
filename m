Delivery-date: Fri, 25 Feb 2022 11:57:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNYIM-009pgb-O3
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 11:57:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNYIL-00039e-4n
	for lore@pengutronix.de; Fri, 25 Feb 2022 11:57:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E2QhK5l27D4c+94TxfkwFMnyUcUHGxqdf74voX+6I5w=; b=jEV6yOpw944aexb38ctx+5165e
	FD/b2Mn8grir5VJRPubVz1eqISqGfUgVlAQjp6pV5CWZcJ4a3DmfNyAvgDSF80LsXeMG4cWrT7b4P
	EG55QtDbnBBsN5BTTFEdYu3wFrNhCB/RVtUtVOQD6w3UW0F/eZqtx7urDeeJX/O14ONRlQaWHwvO9
	VhKO4I2ULl45vK85hXQhC3c+S5I13pOR6CHa48pNpzkzHtR/u/mq6FR7QLBgrVagmSLWRht3jh1oF
	EqZSRb719FShJJ5jgHAlgq0IH71Rnxq5LqIQay+8TjbpMVu1L3uTz6frLHLRpRzdTMJNWcVmyj85Z
	sbKZmEpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNYH3-004ZZJ-KA; Fri, 25 Feb 2022 10:56:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNYGI-004ZEO-8y
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 10:55:52 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1nNYGG-0002mL-VX; Fri, 25 Feb 2022 11:55:45 +0100
Received: from pengutronix.de
 (2a03-f580-87bc-d400-c8b7-5627-f914-a39f.ip6.dokom21.de
 [IPv6:2a03:f580:87bc:d400:c8b7:5627:f914:a39f])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (Client did not present a certificate)
 (Authenticated sender: mkl-all@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 74F4F3D447;
 Fri, 25 Feb 2022 10:55:44 +0000 (UTC)
Date: Fri, 25 Feb 2022 11:55:44 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220225105544.pbptljj3tt3tv6aw@pengutronix.de>
References: <20220225100344.4166248-1-bst@pengutronix.de>
 <20220225102552.o4emeawwdhv6ybbv@pengutronix.de>
 <7013be85-751c-b20c-6dff-469ce7401a54@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <7013be85-751c-b20c-6dff-469ce7401a54@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_025546_362363_829C545F 
X-CRM114-Status: GOOD (  19.33  )
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
Content-Type: multipart/mixed; boundary="===============7218048863213159052=="
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


--===============7218048863213159052==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="su2u62g42eey3tct"
Content-Disposition: inline


--su2u62g42eey3tct
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 25.02.2022 11:46:04, Bastian Krause wrote:
> On 2/25/22 11:25, Marc Kleine-Budde wrote:
> > On 25.02.2022 11:03:44, Bastian Krause wrote:
> > > Activating the field return configuration returns a locked-down board
> > > (nearly) to its open state. In order to burn the FIELD_RETURN fuse, t=
he
> > > CSF must contain a specific unlock command with the device's UID.
> > >=20
> > > Signed-off-by: Bastian Krause <bst@pengutronix.de>
> > > ---
> > >   .../include/mach/habv4-imx6-gencsf-template.h        | 12 +++++++++=
+++
> > >   1 file changed, 12 insertions(+)
> > >=20
> > > diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-templat=
e.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> > > index a60b485292..45da2981cb 100644
> > > --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> > > +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
> > > @@ -39,6 +39,18 @@ hab Engine =3D SETUP_HABV4_ENGINE
> > >   hab Features =3D SETUP_HABV4_FEATURES
> > >   #endif
> > > +/*
> > > +// allow fusing FIELD_RETURN
> > > +// # ocotp0.permanent_write_enable=3D1
> > > +// # mw -l -d /dev/imx-ocotp 0xb8 0x1
> > > +hab [Unlock]
> > > +hab Engine =3D OCOTP
> > > +hab Features =3D FIELD RETURN
> > > +// device-specific UID:
> > > +// $ dd if=3D/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=3D4 skip=3D1=
 count=3D2 status=3Dnone | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
> > > +hab UID =3D 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
> >=20
> > You probably want to comment this all out in the template...
>=20
> I don't get it, that's all inside the /* commented section */.

Doh!

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

--su2u62g42eey3tct
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEBsvAIBsPu6mG7thcrX5LkNig010FAmIYta0ACgkQrX5LkNig
011O+Qf+NA2TDS8uFjH21CxAuR38sk50/hTS5uRD8nsgilKWjMEgNVmRjSnO0aXF
CfXeVxUI0C3/yYEtO0b57NQ2lKoffMQR7lBRljQV/g1VioWZREkljqFIeKL4XECG
HUbpVX4ci+z55F84kTrRhAURQkkfGZaYhxeaVbGlT5LkSx2SO8j4N/WYYeBLGFIh
LoSNax0TiM5IthvNp2C1ME2GTTZupK+HFkH2ExxKvXimGGEEH8bFBLqgIKLcG475
wY1kSct6C8k3nLW+meCpdAhRkpp3hpyO1TWyuz12pwDMrv34EhHplGOS7eyhgeTt
AXyijsqGIDbvgqC6ys5bTeu5lVE3Nw==
=eRPS
-----END PGP SIGNATURE-----

--su2u62g42eey3tct--


--===============7218048863213159052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7218048863213159052==--


