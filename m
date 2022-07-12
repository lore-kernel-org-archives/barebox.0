Delivery-date: Tue, 12 Jul 2022 18:56:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBJBI-004rqk-G0
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 18:56:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBJBG-000236-DT
	for lore@pengutronix.de; Tue, 12 Jul 2022 18:56:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bmPe2e3PltajCCnribnKFgcx6PhfmuTrBbY9oRoNrUk=; b=ElBsB9re7vFCa+YtgMrw7bAjrm
	J5enLlM+Jm2TM3sbWBW1UeDKg+W/Xm3ZrnFcxlC21OrrC67oYrs117YiOhAqGSeQfn13vOFwk4lA4
	U415S3iR/P1jg+8jRFR4mhW+BaTMJHguoNYHYwZBoTzqEkKfgsPqByojdk07Wi6/zBuPyVm4bbfe+
	Afn6zkq9UOknXRMb9JsDZ/Gf04tzaXN5+67kK3aACW9r08Bdhn/iltVGtrrp/7KNnAx8n32mIHtSo
	S+kFuiuAIJTifWcxVs1+YH47vYZasaWKoXyXzE39V1yzmKRxDf96Xo3EnINY27gKQQ4a5j+ge55/V
	ac4qvpGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBJ9O-00D4Ea-N1; Tue, 12 Jul 2022 16:54:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBJ0e-00Cy7D-4E
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 16:45:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBJ0c-0000LX-I3
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 18:45:14 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBJ0b-000Xum-R2
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 18:45:13 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oBJ0b-004lOF-0J
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 18:45:13 +0200
Date: Tue, 12 Jul 2022 18:45:10 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20220712164510.efaa3vw4hwabpkza@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3nnzg7no5dqngynn"
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_094516_211031_938574AF 
X-CRM114-Status: GOOD (  12.23  )
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
Subject: Regression in automount between 2021.07.0 and 2022.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--3nnzg7no5dqngynn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

while updating barebox from 2021.07.0 to 2022.05.0 I hit a regression:

The behaviour of 2022.05.0 looks as follows:

	bootloader: automount -d /mnt/usbstorage 'usb && if [ -e /dev/disk0.0 ]; t=
hen mount /dev/disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount =
/dev/disk0 /mnt/usbstorage; fi'
	bootloader: ls /mnt/usbstorage/

Without an USB drive this hangs until the watchdog resets the board. I
guess the problem is that the automount script is called again and again
because nothing was mounted.

I can workaround that problem by doing:

	bootloader: automount -d /mnt/usbstorage 'usb && if [ -e /dev/disk0.0 ]; t=
hen mount /dev/disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount =
/dev/disk0 /mnt/usbstorage; else false; fi'
	bootloader: ls /mnt/usbstorage/
	running automount command 'usb && if [ -e /dev/disk0.0 ]; then mount /dev/=
disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount /dev/disk0 /mnt=
/usbstorage; else false; fi' failed
	ls: /mnt/usbstorage/: No such device
	running automount command 'usb && if [ -e /dev/disk0.0 ]; then mount /dev/=
disk0.0 /mnt/usbstorage; elif [ -e /dev/disk0 ]; then mount /dev/disk0 /mnt=
/usbstorage; else false; fi' failed

but there is still something non-optimal.

I can look into that, but I'm not entirely sure what the right behaviour
is.

Should a command that doesn't mount something considered to have failed?
(I think that's how it was with 2021.07.0.)

Even when making the command fail, it's run twice, is this worth
investigating/fixing?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--3nnzg7no5dqngynn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLNpRMACgkQwfwUeK3K
7An9Kwf/XrlJLmgZqN3wi6vEdHOgcY9IsRsRbYSQfhcxwTARh9SXNZoWdeQkuM9e
TAEJbK4jW3TZ9yyFKXBD/MlOKKHByTsDNulZR3l1oRnhqU4jo2HQBk+bHRRlNyFc
bBg4ff5uoRVp9tA7zJWnGzvPmhYOY7h7e0mJ3c+0tEO5jlQyEHS8a+CHCQ0+cQUP
J/C9hbuM5VWqk+ZG+z76Ak4GTzNa8IBrB/CKWnXykXEk1oeb8X0QHS6eH8MvlUg8
38yU8vVp+O7gJQbBI7499FbazOk7B9qEGF9KIg1tZ4I3aNHqrvdWaquWlpTyo6+V
z3jxuYPgBCq8N2brkIojZndu3xyCYw==
=YFv1
-----END PGP SIGNATURE-----

--3nnzg7no5dqngynn--


