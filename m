Delivery-date: Thu, 23 Jun 2022 12:46:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KMM-00BrJ2-Mt
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 12:46:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4KMM-0007Sy-SG
	for lore@pengutronix.de; Thu, 23 Jun 2022 12:46:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pcgASxJV00K9UWeLE3vxLm6JCPA1XuwHlEQUd28a9xQ=; b=asjPzdUemMnCTkayD6XLH3hXcM
	HILwkdGc7NZLDGBfefyZDm+XZ9oufYKQpqwer7dHJItlQnAcmtOY4XCQkkKxzdl/Xdmja3Wy/tAIm
	rafgMBuoKjV6tsFzZR90FIpx+qiUeJ7sDDR+Np/ppW4B3Wd9XhnTNHq4lTJj4jsbM7Uc7fOaJ53NZ
	wKVH2IMOHJNTxGrKk3AYcoXJOFRfyUUNDHQkuqu/aYE+tBBQdbJzpe60MdvkD44+XeuXz08AJBCJC
	n8CH/JOXnLEX24R3nQaqaP5buDgk9Br1iKye7yIsFM4o1haxRw2R7f6lMb2rbdAVvSNMGPAlFGG+Z
	NlRYsNLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KL8-00Ea8Z-3C; Thu, 23 Jun 2022 10:45:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KL3-00Ea7O-Qd
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 10:45:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o4KL0-0007Dn-S3; Thu, 23 Jun 2022 12:45:26 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o4KKy-002DVA-PT; Thu, 23 Jun 2022 12:45:26 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o4KKy-000c2s-SX; Thu, 23 Jun 2022 12:45:24 +0200
Date: Thu, 23 Jun 2022 12:45:21 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220623104521.r6hte2qfcusroran@pengutronix.de>
References: <20220207151457.945796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w2euggpgndy5hs32"
Content-Disposition: inline
In-Reply-To: <20220207151457.945796-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_034529_903006_3A83F53A 
X-CRM114-Status: GOOD (  15.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ubifs: Add zstd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--w2euggpgndy5hs32
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Feb 07, 2022 at 04:14:57PM +0100, Sascha Hauer wrote:
> zstd shows a good compression rate and is faster than lzo. This adds
> UBIFS support for it.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This patch is part of 2022.03.0 with commit cd1610d8ab30 ("ubifs: Add
zstd support")

Since then there is a warning in my imx builds (using imx_defconfig):

  CC      fs/ubifs/super.o
fs/ubifs/super.c: In function =E2=80=98validate_inode=E2=80=99:
fs/ubifs/super.c:89:28: warning: comparison is always false due to limited =
range of data type [-Wtype-limits]
   89 |         if (ui->compr_type >=3D UBIFS_COMPR_TYPES_CNT) {
      |                            ^~

That's because UBIFS_COMPR_TYPES_CNT is now 4 and ui->compr_type is an
unsigned int compr_type:2.

I wonder if the check should just be dropped now that all bits are used,
but I don't feel confident enough to say that's the right thing to do.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--w2euggpgndy5hs32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmK0RD4ACgkQwfwUeK3K
7AmPKwf9FdDFeJGBsMSv8Td4cqfWBIWMNsdrNuZZsvH7CMvGC4HilXV/qN7FjeyJ
voDDFFiFOavw62Rq/Qy2KUWx98/PQhjqKI7pY480Eff3/YTDESlK0VKIXp8xQaI4
vJbZLxWdPybNuVqsg4wOYY9a8aNIX7PvlJ/74+W+9rdoYrdN/z2j/sbgHWvE0iEx
GDJ8+od22n+NCjvGVuojkMdBQsYryRLhhugYyGupH+/Pv1JS+VK5W/++oE1syqv5
DSN7TrNOxw9XqX1TnKuwfkB1lPyORjEwJOfflmhyHZXwwzIzRREZeaf9OWSucD5q
HHlv4MbrT++i6+RHDjqndrIUzAcHUw==
=C4QF
-----END PGP SIGNATURE-----

--w2euggpgndy5hs32--


