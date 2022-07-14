Delivery-date: Thu, 14 Jul 2022 18:46:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC1z4-007u7C-EV
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 18:46:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC1z2-0000NF-Lw
	for lore@pengutronix.de; Thu, 14 Jul 2022 18:46:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=doHkvw2GEzXlU5zds7p595/HIPZM2OI3MW+wHl7wmvU=; b=phmFTKeShx2rfNQVnoB76Wsiwx
	+7CUBBIo48Tv8Ze4gcxMWvTn2Mf1wl3m2zJG29Ae/1hiNOl1GU9cnUakuRLf8pH4tSG2JgTe8lwWe
	zEGknxwFWObV/rWvkZjYqiDdROwe3f6MIF7VLgpWb2yJuQqJ6iRr3oNiQYiakGr8wIyJg3bx9s58G
	g2hU/py52CgdV+KfXbMmBIIh/TXde5/WP+DAWFuXqhhYvA7vC+THa11vgHVTijUBfqMsOb02rxnRH
	KScCctWAHZZvLOyVxdVSlDVv6t8vbMcZHJkGSs4ZVQovgldsK6/Wl42g4DC9lfr8KA5jPDKmDZUnh
	sXIzbbvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC1xl-00GOcI-Bd; Thu, 14 Jul 2022 16:45:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC1xg-00GOYo-3c
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 16:45:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC1xe-0008UM-R0; Thu, 14 Jul 2022 18:45:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC1xe-000wpE-3K; Thu, 14 Jul 2022 18:45:10 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC1xd-005BAm-BV; Thu, 14 Jul 2022 18:45:09 +0200
Date: Thu, 14 Jul 2022 18:45:06 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220714164506.fsmd6jdbeaxhzxc3@pengutronix.de>
References: <20220712164510.efaa3vw4hwabpkza@pengutronix.de>
 <20220714075335.GG23482@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hvzlhos2em274aiu"
Content-Disposition: inline
In-Reply-To: <20220714075335.GG23482@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_094512_166707_20CFAB69 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Regression in automount between 2021.07.0 and 2022.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--hvzlhos2em274aiu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Sascha,

On Thu, Jul 14, 2022 at 09:53:36AM +0200, Sascha Hauer wrote:
> On Tue, Jul 12, 2022 at 06:45:10PM +0200, Uwe Kleine-K=F6nig wrote:
> > Should a command that doesn't mount something considered to have failed?
> > (I think that's how it was with 2021.07.0.)
>=20
> That sounds promising.

Hmm, I starred at the code for a while, but failed to understand how to
check for there being a mountpoint. So I leave that for someone else.
(Just plugged a memory leak on the go.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--hvzlhos2em274aiu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLQSA8ACgkQwfwUeK3K
7AlkQwf+KZmFZZQmLL8wGX9RDUPBaFh+IQeglzSPgzi2rk3mkVIVvW/Nwk1EOPn5
CBTM2aorgYoRFtLP5zvrYdG2p5jz+BDrTjFBX9QyOB0a8hbzQQ/GykcgQPxiHksG
ZW1FPt6avZtbxTEPjicT+tDhlaeJda72YLL6kRfk1c8hnUAsyYb9ny0ts3AjODtE
hQvquJwDae6IXb+aKHHN+0JslXqHqfFYmdI9wK8owQxtL48p0DG7O5fPWkW62iPA
Dia+6LvUYl4E5Jsrk9M7sx0Eyk5hcGJsxNg0BbP8lztBaoR/JT4T7BDsr3eogd+D
KHQAieq9H/e4xnUcjkj2IvaWqAKMPw==
=O7t7
-----END PGP SIGNATURE-----

--hvzlhos2em274aiu--


