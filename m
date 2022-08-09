Delivery-date: Tue, 09 Aug 2022 15:07:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLOwz-00HOmk-Pw
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 15:07:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLOwz-0007ub-O9
	for lore@pengutronix.de; Tue, 09 Aug 2022 15:07:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R6QYEtNx5f2Tx8ok/m8ISxR8QKvoKQL9NxR7CiTfbJY=; b=RKJDCBka0hGNmpi18cjiXW0Zji
	V7vDgBMGMddyi0op28g2nmA+XOh7OKn4lg0O0rc1MmQX0HvMS9wKpeI31TKRyecUz5snupYI3EBAU
	lk5f0gahkbYyQbyz5DRrCcou/cXt8JUz8JyxihiakV3FX9c1JPc4coVE7Wo+JlB8rR5g2A6NZJGzX
	0nO/gxLQ7aTe8eSxKCgv9l1E9lmApv6TigXH7r9rWaJ03K28uSt+hOPetSjQevzs5cSiWNmOvcy5B
	aih1USCyoZVZ1MTcob0GvT/6+zAOn7qCOueFjmGPPfybNdyUGLfrDVoH7D53/Gw44xWbKcGmwtOKH
	uIoxXH0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLOvK-003zgO-CP; Tue, 09 Aug 2022 13:05:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLOvF-003zeU-5n
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 13:05:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oLOvB-0007dM-HV; Tue, 09 Aug 2022 15:05:21 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oLOv8-002i4z-ID; Tue, 09 Aug 2022 15:05:20 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oLOvA-00AZp9-0j; Tue, 09 Aug 2022 15:05:20 +0200
Date: Tue, 9 Aug 2022 15:05:19 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220809130519.5ka6umrrn2dgt4g2@pengutronix.de>
References: <20220714193509.2134503-1-s.hauer@pengutronix.de>
 <20220714211238.pedcpd47vx5gisum@pengutronix.de>
 <20220809100638.GR31528@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ju7jn7lupmv6yfa4"
Content-Disposition: inline
In-Reply-To: <20220809100638.GR31528@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_060525_241796_281E58CE 
X-CRM114-Status: GOOD (  21.85  )
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
Subject: Re: [PATCH] fs: Check if automount actually mounts something
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--ju7jn7lupmv6yfa4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Aug 09, 2022 at 12:06:38PM +0200, Sascha Hauer wrote:
> On Thu, Jul 14, 2022 at 11:12:38PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Thu, Jul 14, 2022 at 09:35:09PM +0200, Sascha Hauer wrote:
> > > An automount command that returns successfully but doesn't mount
> > > anything makes barebox hang as can be reproduced with:
> > >=20
> > > automount -d /mnt/foo true
> > > ls /mnt/foo
> > >=20
> > > Check if the current dentry is a mountpoint after running the automou=
nt
> > > command, otherwise return with an error from automount_mount().
> >=20
> > While I think the intention of this patch is fine, I have little doubts
> > if that breaks some workflows, e.g. something like:
> >=20
> > 	automount -d /mnt/tralala 'for p in 0 1 2; do mkdir ${automount_path}/=
${p} && mount /dev/disk0.${p} ${automount_path}/${p} || break; done'
>=20
> You would create 3 automountpoints for that.

Yeah, if you go one step further and create a directory for each
partition of the thumb drive, this is a dynamic thing though and solving
that with an automount might make sense, so something like:

	automount -d /mnt/tralala "for p in /dev/disk0.*; do mp=3D$(\${automount_p=
ath}/\$(basename $p)); automount -d \$mp 'mount \$p \$mp'"

(don't know if that would work, but you get the idea I guess).

> > I admit it's a bit constructed, but maybe that's only because I'm not
> > creative enough?
>=20
> Yes, it is constructed ;)

OK, we can still adapt that later if and when such a need arises :-)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ju7jn7lupmv6yfa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLyW40ACgkQwfwUeK3K
7An36ggAnWExx7C+I4D4Xl0A48dW36REfdVaJmWO9c6zNG9rb/uCnONv+GuXK4s/
Jo3LHhavtH7TY50NEYywhrrh95Ut4PgXRKTMe/Uye0CkwrNDcHvPfD7Wu4H1KmAg
N3+9KhQCY7pqt2UNzxxeWGBTW4hOUFlZglsqLGf7bo3gmgJ+/MqZyDhi9r7wZ0Lx
K5TxnfcZmQ2h0eiJxVPjMPwnW6ttKHM7IeTOQ2wtyRecmHMS2C2nDFsDp/cmouad
oFDnWfPCJIRzLxgYdTKTyVIrO7XJQ+I1acLYM50bTiPJynff8ZE3j36kCSc1USOt
b9OmUFG2jBY3Lleg3XlWbi+9K0RYNQ==
=VVNz
-----END PGP SIGNATURE-----

--ju7jn7lupmv6yfa4--


