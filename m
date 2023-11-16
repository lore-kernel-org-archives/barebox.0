Delivery-date: Thu, 16 Nov 2023 09:03:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3XLA-00DbVc-2P
	for lore@lore.pengutronix.de;
	Thu, 16 Nov 2023 09:03:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3XLA-00016w-Ph
	for lore@pengutronix.de; Thu, 16 Nov 2023 09:03:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=opK7FDwAHjc3fci5G5rBXBFe4/8uMFgr1L+OfxeB7VI=; b=eia+fvE4IcfLnzI7kwdYWW3h4t
	aktXJIFdCJROCRO+nhIkLsRuEATARKVjl63WPEH7qMX2QbgoJ6yshBrqh6hxJX1lflVnkkkvR+NON
	ltt2G0bRF1iNUbHXtceeiQkxn2De8tQCjZm+IW0qm4JVvP/8nzhy6wfkVEHsY/NQpy+D2euK9etpI
	fgQCes3/5A+5mOllOJglogvtH0tygfXywuVQ2oS278Eq9t3uBa3/3kWB+OFehJ9ZYuMnt4jio/Ut/
	GMs1dlIdjRYm6DNzcRy90490/ysg4FRZ9F2Vk9Uh6kmJkabdmYsMoSy4NHC59PH6uEPfSruAdBA/3
	pcT8FnUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3XJl-002ouY-1r;
	Thu, 16 Nov 2023 08:01:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3XJh-002ote-26
	for barebox@lists.infradead.org;
	Thu, 16 Nov 2023 08:01:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3XJg-0000j9-9l; Thu, 16 Nov 2023 09:01:36 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3XJf-009P1y-TG; Thu, 16 Nov 2023 09:01:35 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r3XJf-002Wzy-KN; Thu, 16 Nov 2023 09:01:35 +0100
Date: Thu, 16 Nov 2023 09:01:35 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231116080135.oe2dv5q3wfnoa6z2@pengutronix.de>
References: <20231113190034.270327-2-u.kleine-koenig@pengutronix.de>
 <20231116072244.GS235829@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uvxkt4yimpnnxi6u"
Content-Disposition: inline
In-Reply-To: <20231116072244.GS235829@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_000137_690029_1BDE5DB4 
X-CRM114-Status: GOOD (  18.74  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] uncompress: simplify prototype of uncompress()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--uvxkt4yimpnnxi6u
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 08:22:44AM +0100, Sascha Hauer wrote:
> On Mon, Nov 13, 2023 at 08:00:35PM +0100, Uwe Kleine-K=F6nig wrote:
> > All callers apart from lib/uncompress.c itself only use memory-to-memory
> > decompression. Simplify the calls accordingly.
> >=20
> > Note that two of three callers passed error_fn=3DNULL. As the uncompress
> > function calls error_fn() unconditionally on error, this might yield
> > undefined behaviour and so the new uncompress function uses
> > uncompress_err_stdout() as error function which isn't worse for sure.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  arch/arm/cpu/start.c    |  2 +-
> >  arch/riscv/boot/start.c |  2 +-
> >  defaultenv/defaultenv.c |  4 +---
> >  include/uncompress.h    |  7 +------
> >  lib/uncompress.c        | 24 +++++++++++++++---------
> >  5 files changed, 19 insertions(+), 20 deletions(-)
>=20
> I had to revert this one. You missed one call site of uncompress() in
> uimage_load(). That one can't be converted as it uses the fill argument
> to uncompress().

Yes indeed. Missed that because I grepped for "uncompress(", sorry!

That instance might be converted to uncompress_fd_to_buf, but that's not
completely trivial. I'll take a look.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--uvxkt4yimpnnxi6u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVVzF4ACgkQj4D7WH0S
/k7/bwgAo88yGDshDciZ+fyhbIC9xPyjIPtYqPWl8bR7xImeOsZmrUScX7tBlFzE
lp+q4lOhQGkA97gtZJli7zisyhawEuCnHgy89kFbkK4/MXPhcDhXQTWJoD5qN/u9
pvWGMac98RLQdfi3q+wvtJdXqutdgCTrQNZPVSA8UeJKN67jjFGpDR5g0TVZ9s3f
NCKoXEjcxDfPlARf8GveoqdryVv/1GR8Q/PuiJ+wNZ854KOM9HzKSIGK3cPOK/ex
oN1SC0Ip7iduZBovsq9x4ke3ekJ6IDmil96bRLEOPdzKlaDzY1T88P0IfNhDo+Bj
MFkY8FhDiRwfJN32ZbhraCtwGt7HEA==
=L22K
-----END PGP SIGNATURE-----

--uvxkt4yimpnnxi6u--


