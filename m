Delivery-date: Sat, 22 May 2021 16:24:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lkSY1-0005AU-ND
	for lore@lore.pengutronix.de; Sat, 22 May 2021 16:24:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lkSY0-0004M8-Mx
	for lore@pengutronix.de; Sat, 22 May 2021 16:24:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aBNNRAGoRy86xV6M/3mzAZC4lpYMepL2MY/fKLIJ5mY=; b=miIbETWpwH0bCDcGhiI49DWNSL
	HgLoviVR9GhENBvXeV6LR3Y1rBorFcSivT+rLs2CWfg4uikk77R/vlvArosf3RpsUHo0PwSHVTEhs
	sEEQjA+82zwR+Sm7awXkzDzoyJcwOs8HabQnLXVHSCjgNsBUNGUVFmLtF7Lsw25P/Ww8MAW7ZkJm1
	fdXmfl21g/uZmx9+NjjR2ff90txvSYVIxzX+977BOIF1ROVXuY8brfgi1NCF13/lxNJserJ8kR0Of
	nCAn0Iv+GhN22dVRJbMoXi2h8NoyqFaeI425gP2O0V+SyuJ5fTeIwenjjRqsCesy7/69ltz3yZocq
	p4HjDJog==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lkSWn-002dE9-3R; Sat, 22 May 2021 14:22:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lkSWg-002dDz-3A
 for barebox@desiato.infradead.org; Sat, 22 May 2021 14:22:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nhhRTHReGCFZnWo8t5S9POxMCvREe/y9Tx/4wfx+08I=; b=O07HvxC7k0mAcc+1bJRz6Ie03p
 lgEROlh/pv0oy65hVX0H8K9PI6qq+TR7BowjcVHEhjFdQLE8lrvS1xjtqoUrWshlsneGXQD5kAquc
 IxFxUMMorzK1u3DhdOhrN22SPmLZFVVKSfvZbPZNBKscvfJLIHppDJR5myxzy8VIATtXv9VREmVYc
 AMgjzQYv+tka+04unYhLJN9ZdFtveIexAl+tJ6zsNbBuOSx7s+UQmDdu6vTjRRKkTkEmOR/qoPKrb
 PwUg0+FGB+nXyb4sj4NOY60GCg9iJIw6qlUn0ku2z38+OO3v4kxUJhs6sW9PUMZ6NBp99lJBHWH2G
 zzanuQdQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lkSWd-00087w-7g
 for barebox@lists.infradead.org; Sat, 22 May 2021 14:22:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lkSWX-0004JJ-N7; Sat, 22 May 2021 16:22:41 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lkSWX-0004Pg-CU; Sat, 22 May 2021 16:22:41 +0200
Date: Sat, 22 May 2021 16:22:39 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210522142239.t5sz2toqckq6epjb@pengutronix.de>
References: <20210305090001.3619780-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210305090001.3619780-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210522_072247_300707_FD94D9E6 
X-CRM114-Status: GOOD (  26.98  )
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
Content-Type: multipart/mixed; boundary="===============8323319682838978146=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] usb: i.MX: warn if vbus regulator isn't available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============8323319682838978146==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vhqw3fit7wubp4np"
Content-Disposition: inline


--vhqw3fit7wubp4np
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Mar 05, 2021 at 10:00:01AM +0100, Uwe Kleine-K=F6nig wrote:
> Instead of just ignoring errors related to getting the vbus regulator
> yield at least a warning message. This would have saved me some
> debugging time when trying to understand why USB doesn't work without
> the right regulator driver enabled.
>=20
> Note that machines that don't define a regulator in their device tree
> don't issue this warning as regulator_get() returns the dummy regulator
> in this case.
>=20
> The alternative to error out wasn't accepted because this probably
> creates regressions for regulators that are default-on but without a
> driver in barebox.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
>=20
> (implicit) v1 was sent some time ago with Message-ID:
> <1485d35a-d55b-2440-4852-1737e78f8aa1@pengutronix.de>. Ahmad suggested
> to use %pe instead of strerror(-ret). This is also the only change
> compared to the first submission.

ping!

Best regards
Uwe

>  drivers/usb/imx/chipidea-imx.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-im=
x.c
> index 7b87f302a921..aa27941c8c66 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -256,8 +256,11 @@ static int imx_chipidea_probe(struct device_d *dev)
>  	}
> =20
>  	ci->vbus =3D regulator_get(dev, "vbus");
> -	if (IS_ERR(ci->vbus))
> +	if (IS_ERR(ci->vbus)) {
> +		dev_warn(dev, "Cannot get vbus regulator: %pe (ignoring)\n",
> +			 ci->vbus);
>  		ci->vbus =3D NULL;
> +	}
> =20
>  	/*
>  	 * Some devices have more than one clock, in this case they are enabled
> --=20
> 2.30.0
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--vhqw3fit7wubp4np
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmCpE6wACgkQwfwUeK3K
7An6Vgf/fVfTl1jgurJ79NOOnzFiYosq/nWpytpnkrI8gSRZSoIO7ru04eyYIJ4B
FmxN24gxDLSxxgUEpA9xbpP4N34nmHBl1Hlk5tMMalPHMnFGQIbW/VsD57KXtxIz
Vs/fDQ0V3u4R+XAxOzSaApVXs3jscwg2OmTmBxznpaZY7Q16DM0MqtDRYqDUWc00
tUFzLHAtC3Exokn8B6OnHIe68Wj/nVkq0P+iDm+k7nZVNlRomo4XMcPteiAN3NMM
7GD+U9d3xe21UK/KSMhRcxwTt4Y8tI2hZq1PO1zljh9A3LLO5qxBpY4OGTLm40wf
cQBQnD9Sdqbo8UL2s6AyIxWX3ff95w==
=IyIy
-----END PGP SIGNATURE-----

--vhqw3fit7wubp4np--


--===============8323319682838978146==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8323319682838978146==--


