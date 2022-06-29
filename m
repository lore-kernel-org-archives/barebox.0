Delivery-date: Wed, 29 Jun 2022 10:56:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TV6-0010TY-PM
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 10:56:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6TV8-0003g2-UM
	for lore@pengutronix.de; Wed, 29 Jun 2022 10:56:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vTzTrKyXMNxBVhRNqxM0lIsbuJ8XqtBIzrp+tIbpKCY=; b=YUsdaUaTOcetZ6TS8w/Hcl4NsZ
	cSYuGazwdfdrFonys/azWDyCTHEhp0tv0XpyPBPHar7/1/BHHbqkyVcbijfaZlV7+579OYK2RRVTE
	CfLI2vRFMF5o3D92D0eB+GKMI6C2uv6cnMQFXx5RsWPBidT/k67hBW3mqWOUKtTwR9KvbnkEEQoHA
	LXRIN1J6qemnMTE7TLM+GxR7QVdscVdI9/6MX6QDPHe7ON9dVF3qIwhOb3qSSZZ2Rtfu8+ujmAp5e
	ShYHnx6zKGBaM9Ly9HEU1xeVna1YKEmln72IQ8e/3jL4f/hAifLQrhYTnScR+/Boi23c4uEjxhaO4
	H5JawgwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6TTX-00AW5H-Vl; Wed, 29 Jun 2022 08:55:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6TTS-00AW0g-Aq
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 08:55:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TTL-0003DG-Sl; Wed, 29 Jun 2022 10:54:55 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TTH-003MaT-LI; Wed, 29 Jun 2022 10:54:55 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o6TTK-001rFj-5L; Wed, 29 Jun 2022 10:54:54 +0200
Date: Wed, 29 Jun 2022 10:54:52 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220629085452.frhoiuy2b7hlkq7r@pengutronix.de>
References: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
 <b204e43f-3a98-b666-8a78-3281f5221f17@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6vvt6mqbumreuicn"
Content-Disposition: inline
In-Reply-To: <b204e43f-3a98-b666-8a78-3281f5221f17@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_015502_422463_991F3A8E 
X-CRM114-Status: GOOD (  20.54  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] watchdog: imxwd: Add error messages for some failure
 points in .probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--6vvt6mqbumreuicn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 27, 2022 at 12:51:45PM +0200, Ahmad Fatoum wrote:
> Hello Uwe,
>=20
> On 27.06.22 12:33, Uwe Kleine-K=F6nig wrote:
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/watchdog/imxwd.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> > index 31ea388c2cf2..3e596b55f8f7 100644
> > --- a/drivers/watchdog/imxwd.c
> > +++ b/drivers/watchdog/imxwd.c
> > @@ -245,12 +245,16 @@ static int imx_wd_probe(struct device_d *dev)
> >  	}
> > =20
> >  	clk =3D clk_get(dev, NULL);
> > -	if (IS_ERR(clk))
> > +	if (IS_ERR(clk)) {
> > +		dev_err(dev, "Failed to get clk: %d\n", PTR_ERR(clk));
>=20
> Can you use dev_err_probe instead? Same for the messages below.

Yeah, will send a patch in a separate thread.

@sha: git b4 -P 2- b204e43f-3a98-b666-8a78-3281f5221f17@pengutronix.de # :-)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6vvt6mqbumreuicn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmK8E1kACgkQwfwUeK3K
7AnG6wf9EUUSO0OZdDgEOyP15kp892qVy9YWoC9DZaM+InGnFNf6Hkdqz7ShD9RE
qNYAHk1g5vNgxntvv6PkMQ1Ki27YoOmxiewfPIgNW4o2jBH83N/f2wPymiSc7cWb
9YJUfkyp2oY0URrrJKps1g6yZYQsUdEoqs0MotO2hErzR/clYTyvqxmRQII6L/u4
EnO+nugWQpL6f+AexT4MOK8H4ojbRwPx0bUnQijyNmCtdmrylckeO4fRMOkG5bcz
mh6H8yBq5RMiJkYr3ifSEwqlnBXRapflkVP1/mwII4GBe/wBqnAVM5HzXGJ1dGC9
ePpIt1/GMYCpu2qJ7PK6cMAt5/xwOw==
=fzed
-----END PGP SIGNATURE-----

--6vvt6mqbumreuicn--


