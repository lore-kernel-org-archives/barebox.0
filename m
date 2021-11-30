Delivery-date: Tue, 30 Nov 2021 21:31:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms9mW-0004gg-2Q
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 21:31:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms9mV-0008U8-9z
	for lore@pengutronix.de; Tue, 30 Nov 2021 21:31:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7zD4NZixrXcb7LX/ONHDGuKAWFs2ygQeh5xKMMLzv/w=; b=INFIgT+XvNVT5BXy6g4t4jMGyU
	nTbiqC90RyD8VvAqY5rNvvbqicxiBDr0W4EHla+d14qpKhsjSmB4FEsfpeKLrg6d0/fBprwn9M8BV
	lVVp8vey1Ui9LDWnW5DSerOeGfg+H4FY8OanFIexxHqqvZkUhSP7nOpYCNrWDWb9+SxfV3pRxVH+J
	LtvsaBVzG+5kRnMYSQ4i4kuvV57DYsRT6aP57WXlDmq/JkO5de9mk/IfnxPVfiDkwzzxuvylGWuGD
	6KfE1SCmnCXfq0ahYAPoGHBjMGNp5X8VNBUvJnY3udut2aISkh7yIS411iFifdszOnnQHQha4FYA1
	VyhgqAVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms9kp-006eDz-HY; Tue, 30 Nov 2021 20:29:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms9kk-006eDO-94
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 20:29:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1ms9kh-0008Ai-KQ
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 21:29:23 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1ms9kh-001z6S-KO
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 21:29:22 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>) id 1ms9kg-0005iy-Fe
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 21:29:22 +0100
Date: Tue, 30 Nov 2021 21:29:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20211130202919.cc3ffz6s7a7khe72@pengutronix.de>
References: <20211130164129.352923-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20211130164129.352923-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_122926_341537_57CC1AF2 
X-CRM114-Status: UNSURE (   9.42  )
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
Content-Type: multipart/mixed; boundary="===============0731248001780042664=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] rpi wip
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============0731248001780042664==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yehg3yc3tbg2liav"
Content-Disposition: inline


--yehg3yc3tbg2liav
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I picked the wrong patch to send out, please just ignore this patch.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--yehg3yc3tbg2liav
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmGmiZwACgkQwfwUeK3K
7AluhQgAjPUBvvbx3AdKQqp4BUELMEi2n/oExQpk06T11+uF6JkNMWUxPhpzWkcu
nJ7v0/BbettTGLfzawVGsSs6Yqz0AK2ByYFv/oquTIZlLVkA6WlxEYltNd9gCBvl
i2KYR6iDICyzvoivbVoTzlOeTFPQNMa9FwcQ/5ZHjYb2w0xj61i59EHyjxi169Vk
ZxPCQ0cs+OB810ize1P3uV9l0jLEsjTJ3SOunKJDk68DUeV+oFjAV1dkE6AiT5QN
HqUAHw8DmgS7w6h/7wVPdO7Nh33a1bNcZGe2wRrrvMgUyrP00WHccLmoSWou9fNX
UIguxsoISqXkrDCEk0ix58NAgfis/g==
=1KMs
-----END PGP SIGNATURE-----

--yehg3yc3tbg2liav--


--===============0731248001780042664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0731248001780042664==--


