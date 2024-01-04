Delivery-date: Thu, 04 Jan 2024 17:34:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLQff-003iCG-2Q
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 17:34:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLQfe-0008R1-Oz
	for lore@pengutronix.de; Thu, 04 Jan 2024 17:34:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/QFwc/9uJ+gBDxCHsslLChEBkBwp0F9l3OZ7jn3wPns=; b=qBg6qliD6+4j0LldQe95QV08QP
	SG9gNXVFsOz6ib0xCe0Dg+63gswFkwqnlfE2HeVVdx5nlJwdfejHn2TEe79L3qqIUonSrBL3SubxQ
	NbD8uwOmaH852A8lg6Cm/l7HR384CSlaEnqTEk6c8gkW1eSVmE/VpVyvzOzUiVxUp46Sa5FT+0k/h
	+Ttv7XlpzURSntCwC70EbBNgy4tiqPA2sjIj4+BBFVtnTKH4dx1M5Q74evYQ+zqfsfmPYNgVnbdhE
	jv2qf5l2mnPYgL7NPOyl4Yto381zZjgB6L3izv5XtasDLZXgZykSsvVYDJpUVFEHXTaAuCIB44jZk
	yebVy2+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQeI-00Egyp-0R;
	Thu, 04 Jan 2024 16:32:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQeD-00Egw8-39
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 16:32:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rLQe8-00087B-Dt; Thu, 04 Jan 2024 17:32:40 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rLQe8-000O5O-1P; Thu, 04 Jan 2024 17:32:40 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rLQe7-003aXF-36;
	Thu, 04 Jan 2024 17:32:39 +0100
Date: Thu, 4 Jan 2024 17:32:39 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <krc42r42rtkgkrnxgnk2unn2x5lfnzfwruht2ftv7upxfl2sjq@zcvlmoibeoej>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
 <20240104141746.165014-20-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ojetrj3tlpkz5fp"
Content-Disposition: inline
In-Reply-To: <20240104141746.165014-20-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_083246_014004_FBD7B692 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 19/19] ARM: Layerscape: add basic support for NXP LS1028a
 RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--2ojetrj3tlpkz5fp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 04, 2024 at 03:17:46PM +0100, Sascha Hauer wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

even though you picked up some wip code to build up this commit, feel
free to grap authorship. I don't think I added anything that justifies
to claim authorship for myself.

Best regards and thanks to bring this forward,
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2ojetrj3tlpkz5fp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWW3aYACgkQj4D7WH0S
/k5OiAf+Oa03OybnLvlRSMISeWmcHIXMadqAPIj2Awk4TFEnHOwLM+Vh0Sk+Bn4s
SKEY0lyLI9h3zuxU/f9vHs7GT6jE8H+rA8ODEvhZfuATxqkxWssqiWCjSg5L03O9
oD3WnOZYQBpxKrsFS5IZu28q0L3F9rByT0wiv+H3LRX86JehaksJ5ZzJVi2fXvVU
VawcsMVLn61xFXvujT1qAuczjeNczO2XbtPUUmoACqP+SZDjiOzQ2nVhMpz2uRx8
psfYwLpKIyU5qXJZl1JyYrm/MCZcY3Wq/NTAibnKtfcxjs2UNd8uGQjfPBA+qiTC
uKlDLkdMUuK10aFTYuyNKq0Uut1C0w==
=eZOZ
-----END PGP SIGNATURE-----

--2ojetrj3tlpkz5fp--


