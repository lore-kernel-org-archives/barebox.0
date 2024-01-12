Delivery-date: Fri, 12 Jan 2024 17:19:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOKFI-00EiA0-0c
	for lore@lore.pengutronix.de;
	Fri, 12 Jan 2024 17:19:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOKFH-0000cF-IF
	for lore@pengutronix.de; Fri, 12 Jan 2024 17:19:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rH23Ug2MTE4APE/e9YDTzeJ9c+vCP2up6u4LYjSNJdQ=; b=v3GWQq5bXTQ1+lKDCHiC+p5YIr
	bSfcZ3dIJsWFSYC36/oml/zCUn8bKOCfAOUpOfSx86VKqovZWVUeJ+u6RVs+xdLmTcBedbMyp54qS
	TUeFbfZOG5QQgP9yszW1IkiGtgdU7NT177A6anhb1+1zsQB4VT5wZKPx7869PQ1nH4OuNmAfxi/GN
	KQDI1B61iTPRjacjERv/3f4skbPthT255kqLx+LDH7nIo64JDRdT1GZyi9BwknWzd6l6NSd+nzbvh
	+TQVyq+WAeoaDlkS5v80MhlncOfcFgwrbAYFWqEz904qyLcl+c0VgLYvukUOfZzJcBe+RlPW4oFAc
	0goUXCfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKEE-003IA4-0o;
	Fri, 12 Jan 2024 16:17:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKEB-003I9Z-0B
	for barebox@lists.infradead.org;
	Fri, 12 Jan 2024 16:17:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rOKE8-0000IA-8m; Fri, 12 Jan 2024 17:17:48 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rOKE7-002Bnt-PO; Fri, 12 Jan 2024 17:17:47 +0100
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 861522744CF;
	Fri, 12 Jan 2024 06:53:41 +0000 (UTC)
Date: Fri, 12 Jan 2024 07:53:39 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Message-ID: <20240112-demote-sank-9e6d0d2ddb43-mkl@pengutronix.de>
References: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
 <20240111-fix-habv4-event-report-v1-1-15d9a990f01e@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xvvcjcly4l2rwv6"
Content-Disposition: inline
In-Reply-To: <20240111-fix-habv4-event-report-v1-1-15d9a990f01e@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_081751_096618_7114DE23 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] habv4: correct habv4 rom vector table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--3xvvcjcly4l2rwv6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 11.01.2024 16:42:19, Stefan Kerkmann wrote:
> All function signatures have been taken from the NXP manual "High
> Assurance Boot Version 4 Application Programming Interface Reference
> Manual" revision 1.4 under section "4.5 ROM vector table". A copy can be
> obtained from the imx code signing tool (imx-cst).
>=20
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

What's the size of a size_t on imx6? We don't want to break the 32 bit
platforms.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--3xvvcjcly4l2rwv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEDs2BvajyNKlf9TJQvlAcSiqKBOgFAmWg4fEACgkQvlAcSiqK
BOhHcggAkwdpfTiCACZFbX6f0qW1Oky+F7cej6/F7LXj6n72Kk1gE28d6N3krFex
n6bBXpaCJLVhFXYSjiF+Finry8/Fkd0cppyHrv9Enej9xxmwCk6GVwAU9QeQs/hu
y3RmHRd+HKuxsK2MqxjHZ0kA2NYvROELzjVoE6PuNRhAGca45DEIl00hBcr9idHK
EkX0gBfhXw6wvDXMi7tjmwff7G72B/N1msiToNpl5f8NrNjC/DPVDuIYyayIWJX8
cEEo1CSIGzsJjm9DiKg2nMBm3LXbnPR6TDy6fMdD9FLnAQNvXOTSL98sUu34CEuj
KiS4fd/66BbqrEY5iquDzPwWjS7Tow==
=qulU
-----END PGP SIGNATURE-----

--3xvvcjcly4l2rwv6--


