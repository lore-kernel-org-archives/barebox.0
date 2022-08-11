Delivery-date: Thu, 11 Aug 2022 18:31:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMB5g-001zcI-La
	for lore@lore.pengutronix.de; Thu, 11 Aug 2022 18:31:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMB5h-0000hT-Gf
	for lore@pengutronix.de; Thu, 11 Aug 2022 18:31:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2IezemzM9djnf5GfCWT5OBhyFvAch2lSO2sMJ5wWs/o=; b=4e7OdhacPL1k4MKoqFYCyKNj9d
	Piomt9USHP5SFKQCHAQHADsl+UKGqc388LrBgENGtN38GniylxXkoD1LWG2YX2l1MY+udqHz666Qs
	qwCgzQXauFnymE94JvVdEg1St6ZAoYQuDHJjExoO6Z1F0RS4V2GCsuNd+mYk2Vn4VScmZQXslkZAd
	ys9NOHq1TFue0MyETP93Px/NVKOipojtBGCm4oL9Wyar6JGkumcGWyDYT4p4t8Ge3BgcSIeHYtchn
	pTTxhd6alRN1gAv25iQHQrh4BwyYoyRX6xM0erbO2YBoX4D6+7+O8Ep9XZRbW4vqHj8V1U2vGguRd
	wLmEiFTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMB42-00F4uu-Am; Thu, 11 Aug 2022 16:29:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMB3x-00F4qQ-MT
	for barebox@lists.infradead.org; Thu, 11 Aug 2022 16:29:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oMB3u-0000G7-Pv; Thu, 11 Aug 2022 18:29:34 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oMB3r-0039Dj-Qx; Thu, 11 Aug 2022 18:29:34 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oMB3t-00B36Q-IL; Thu, 11 Aug 2022 18:29:33 +0200
Date: Thu, 11 Aug 2022 18:29:30 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220811162930.bicu6tpzldcwrc2d@pengutronix.de>
References: <20220811135804.271071-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fd4sfcl25ohfjhon"
Content-Disposition: inline
In-Reply-To: <20220811135804.271071-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220811_092937_756101_F45DDECF 
X-CRM114-Status: GOOD (  22.20  )
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
Subject: Re: [PATCH] fs: ubifs: remove always-false check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--fd4sfcl25ohfjhon
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Ahmad,

On Thu, Aug 11, 2022 at 03:58:04PM +0200, Ahmad Fatoum wrote:
> GCC correctly warns that two bit wide compr_type can't
> exceed or be equal to UBIFS_COMPR_TYPES_CNT (=3D=3D 4).
>=20
> Remove the check. The check is there in the kernel as well,
> but the warning is disabled there.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/ubifs/super.c | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
> index b48e21fae636..6a0074bd1a5c 100644
> --- a/fs/ubifs/super.c
> +++ b/fs/ubifs/super.c
> @@ -86,11 +86,6 @@ static int validate_inode(struct ubifs_info *c, const =
struct inode *inode)
>  		return 1;
>  	}
> =20
> -	if (ui->compr_type >=3D UBIFS_COMPR_TYPES_CNT) {
> -		ubifs_err(c, "unknown compression type %d", ui->compr_type);
> -		return 2;
> -	}
> -

I taked to Richard Weinberger about this check in the kernel via irc:

1656326473 < ukleinek> derRichard: I don't feel like increasing my
	kernel patch count, so I'm just reporting here:
	https://lore.barebox.org/20220624081628.GD1615@pengutronix.de
1656326538 <@derRichard> oh
1656326817 <@derRichard> yeah looks like we need to enlarge struct
	ubifs_inode
1656327489 < sha> derRichard: Only when the next compression type comes
1656327499 < sha> derRichard: For now it's enough to remove the check
1656328989 <@derRichard> sha: yeah, i'd rather keep the check.
1656329007 <@derRichard> if we add a new type we'll forget to re-add the
	check for sure
1656330552 < sha> derRichard: Ah, I thought the on-flash format has two
	bits, but it's only the in-memory structures. Then we can change
	the width to 3 bits without problem
1656331100 <@derRichard> exactly
1656331149 <@derRichard> i think it is anyway time ot reevaluate the
	bitfields in struct ubifs_inode, i'm not so sure whether they
	really pay off these days

Given the kernel wants to keep the check, maybe it's easier to keep it
in barebox, too?!

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--fd4sfcl25ohfjhon
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmL1LmcACgkQwfwUeK3K
7AnmlQf/c4gC2aeiJpEIFeqmIAgDMXYZZl2jSGV9mRWwxQZ8koMLdZ0zp3fK64eL
yZ36722TCw+czKe8NfJ5W2eQFqZ9bw3+rYjr2z0GY6JuGU5vK5X3ckOJskasfcwI
/gyewaAiM4lH3SmBff0EqRD0PWVwS8GIdLGBT7dixavQzJDVMztSUJCLzxoWFv1g
KyrWf+xGE2vBXufpID0qbudZNIV8GlPUO58bxg0o2ARFuZqIMVvd5GbJopf7xt/b
ldHeBthTdS6U5bnhQZbALbFpXxv+F820eS60fC9d/wSjkvmFDugQcknjMv698UEN
Bn/iKSZo+YBuV10P75LVIUyb4W7KXg==
=mM0N
-----END PGP SIGNATURE-----

--fd4sfcl25ohfjhon--


