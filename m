Delivery-date: Thu, 14 Jul 2022 23:14:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC6AX-008BQ6-5v
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 23:14:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oC6AV-0004g0-Bx
	for lore@pengutronix.de; Thu, 14 Jul 2022 23:14:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OBNXshYPFyPRvmfNADeyw7V+uvh2UptxDCU4LW59AZE=; b=VRPnhGnnRndm/PY3MvMSND+gE3
	KnI1hxOmOLxT4mCWMDoqmiU7abpATY2+GbCBwVRObFLAIuUNgZ1lcmh5kMt6Ty9KU0BR4ilOeMyDP
	kOps5Fog4AXh12a9G+Z1AdMgiNjqjig+FU+IpeDSOb/9JU4ohhUWqojQcUztpWBlYV5BMiQ+kSpvr
	uZd6QADQgauM/J/uNT8g2ZLcByvBv2hCbR3woaQ4bJYQ1pbDdlVQxRiAmIfWstgVgaBqOpNtY4n73
	pdsIvjPFr+UkhbmrpR9KE9Ix+Y8CbxHDZrOhQRJJKgL2pOZZKgU/P1IUSgYCMh9ULrbR/zjRLqFl9
	cazmL5AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC68m-001arI-Lv; Thu, 14 Jul 2022 21:12:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC68h-001aqj-Lt
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 21:12:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC68c-0004Ty-V1; Thu, 14 Jul 2022 23:12:47 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC68c-000zFS-8c; Thu, 14 Jul 2022 23:12:46 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oC68b-005Den-IG; Thu, 14 Jul 2022 23:12:45 +0200
Date: Thu, 14 Jul 2022 23:12:38 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220714211238.pedcpd47vx5gisum@pengutronix.de>
References: <20220714193509.2134503-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u6hfibebp2fhwgx7"
Content-Disposition: inline
In-Reply-To: <20220714193509.2134503-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_141251_736035_126B8466 
X-CRM114-Status: GOOD (  13.98  )
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


--u6hfibebp2fhwgx7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 14, 2022 at 09:35:09PM +0200, Sascha Hauer wrote:
> An automount command that returns successfully but doesn't mount
> anything makes barebox hang as can be reproduced with:
>=20
> automount -d /mnt/foo true
> ls /mnt/foo
>=20
> Check if the current dentry is a mountpoint after running the automount
> command, otherwise return with an error from automount_mount().

While I think the intention of this patch is fine, I have little doubts
if that breaks some workflows, e.g. something like:

	automount -d /mnt/tralala 'for p in 0 1 2; do mkdir ${automount_path}/${p}=
 && mount /dev/disk0.${p} ${automount_path}/${p} || break; done'

I admit it's a bit constructed, but maybe that's only because I'm not
creative enough?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--u6hfibebp2fhwgx7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLQhq8ACgkQwfwUeK3K
7AmZzwf/f5y31ZzjO16jl+KBTcrGrWE4PaLKGh0K2k+9p0a1IRmqEV+VKnGY4/nb
rF2Kz5PFPt9iZiFHVdpHXhCW+DqRotzGmdbey7Ho+gmt64NZrrnvBk8m2oa6mNx4
d/yx0lRNVjwkkKxj7MgfeQKSn/1pKBTECeY5iJS1COiK2OSpaLCvIyzle+ZBqUwp
TKp+ooNQ/TwkPA/O5Jc4JiszLkn0+KqKLjKz9a/DKO2e5MfPrFRFBO6ZGk12eDtb
DE4A9ChzeyMhpwOiTASRaOS4wVucUAJPJArpcWFCLTS6j1Ik/GW302SJ8DcdcS/r
8+mGgPphmbUIQqGIZbT3r4iYEFzkng==
=CYDV
-----END PGP SIGNATURE-----

--u6hfibebp2fhwgx7--


