Delivery-date: Fri, 06 Aug 2021 10:42:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBvRL-0002u8-22
	for lore@lore.pengutronix.de; Fri, 06 Aug 2021 10:42:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mBvRK-0003WX-0v
	for lore@pengutronix.de; Fri, 06 Aug 2021 10:42:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UMbtm1kkAOVDBLLmaTU8T6yYM75QedWmnGzCWVvikrI=; b=kGw3EKBIUC5gCInbyQk9U5Y8Oj
	mieKWbWuxrRgWYTbnfeiV2FbUze/c+uMRUvi3B3Io1umy6XdDCHwWTyEXj4rm6swyyFs4uonwrzN1
	s1Hl4fiwemQlOumuvOykt+OlPMrY92M98vMhm35o3c3kbvcP2Nnb4/iSPocx28EGYDHtuK70EvORm
	nt1DJW1mDD2iLIjg386NYHlzVsVNbV/B6nuNcSWa/hCmn+UN7+1QW4eKCkHtYmYQIBg/sCcj6Krej
	beb3R7S12PCZ53+4otUleJse9k7ypMbDoogyNZ/GxK64hAGhEM9TYQgkoa1JzPYe1jfHUdtb5aB7d
	mxThLXzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBvPZ-00Btem-PR; Fri, 06 Aug 2021 08:41:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBvPV-00BteO-9r
 for barebox@lists.infradead.org; Fri, 06 Aug 2021 08:40:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1mBvPT-0003Hp-92
 for barebox@lists.infradead.org; Fri, 06 Aug 2021 10:40:55 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1mBvPS-00050V-ON
 for barebox@lists.infradead.org; Fri, 06 Aug 2021 10:40:54 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1mBvPS-0003rP-NY
 for barebox@lists.infradead.org; Fri, 06 Aug 2021 10:40:54 +0200
Date: Fri, 6 Aug 2021 10:40:54 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20210806084054.7ko3rubp5rcrqkba@pengutronix.de>
References: <20210805152218.1901918-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210805152218.1901918-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_014057_388489_616D5F14 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============1462237473238316814=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] arm/mvebu: sync barebox-arm-head.h to generic variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============1462237473238316814==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7r36tluyltdfwtgc"
Content-Disposition: inline


--7r36tluyltdfwtgc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

please disregard this series. The patches are already on the list in
their own threads. This was just me git-send-emailing the wrong branch
=2E..

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7r36tluyltdfwtgc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEM9ZIACgkQwfwUeK3K
7An19Qf+Lc1CdPZgX6c/VHMnHnvW/rHUkxirAkeO2kbV8zcYBv2M9YlpYu3L7BWA
Zh9MRApBhELGkI12Nf999FEhK8x0xh+/h5tdYT2niNeg+e0IPRxipFCXYxHcbB+d
yK4E4MlIoMgmyNJpVcTa7arKdEpau1nD/lp0+/pi/hGr/a/Tyu0g9XIjpw4K8Jds
nnN+IHYjVXKISAzRI3+lnkgIXt3Sw2gEw6j2KwUVhtNLxVbfgRfs1Ap8Zz59IR7m
fbBNUyM6VVpYDA2mYhgz+l1qpAXa5kPG8IJ1PAXBIlqBIMxb1ZIn5FBcg6Lbgycm
EupL0fmk5eQA6DZe7noWXMUAgJcF3w==
=aToN
-----END PGP SIGNATURE-----

--7r36tluyltdfwtgc--


--===============1462237473238316814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1462237473238316814==--


