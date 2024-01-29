Delivery-date: Mon, 29 Jan 2024 18:32:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUVV2-00AQiO-0B
	for lore@lore.pengutronix.de;
	Mon, 29 Jan 2024 18:32:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUVV2-0000Y0-O6
	for lore@pengutronix.de; Mon, 29 Jan 2024 18:32:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fGUE5cztBweY8DyyzaYaU4uRajxkrGm8uRstWuNgX9Q=; b=ga+Xm7e99RRiq5kU4Vsp42wTxI
	gLVNK61wclmMaUckdmRFPFZa2pgq4Fe+Gxk9h9FunmIzd0FWtPYz89aABQDPGMYZ5rfJQQUmCTGL6
	w4W6rpulIq1zRUB2gVnkkVlnu1AHweLyTIQ2R7b02nWvzGM1R8JbXIAWJv8YZ9BUwzLtsChb9sf8j
	pNXhpqs8Wx54YDzpI+LrkNS0vKc5GAKhg0QDAm4VnDh538/zqUbGXjtdM0KwP+XpUpG0bV+Pgyzre
	ajVA6iOaN6NYeLiSHyLdTP4Z/va9MB8v9zfqffVYquAaxkt3p0axYeZcGEVdPPtbgw9WYjW21fv0r
	WJSh8wKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVUf-0000000DkHp-0RS6;
	Mon, 29 Jan 2024 17:32:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVUb-0000000DkFA-0Z7L
	for barebox@lists.infradead.org;
	Mon, 29 Jan 2024 17:32:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVUZ-0000Vc-UT; Mon, 29 Jan 2024 18:32:19 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVUZ-003Ecj-I9; Mon, 29 Jan 2024 18:32:19 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVUZ-00B6mF-1Z;
	Mon, 29 Jan 2024 18:32:19 +0100
Date: Mon, 29 Jan 2024 18:32:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <u2qvhvpffa2d25a5o2d6xabadbc4wjmq44t676zg5udjm6nmc3@m4bd7eq4yo6x>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
 <20240104141746.165014-15-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="so36nybo6uyavkdt"
Content-Disposition: inline
In-Reply-To: <20240104141746.165014-15-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_093221_194010_B1580E87 
X-CRM114-Status: GOOD (  13.13  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 14/19] ARM: Layerscape: add tzc400 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--so36nybo6uyavkdt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Sascha,

On Thu, Jan 04, 2024 at 03:17:41PM +0100, Sascha Hauer wrote:
> diff --git a/include/mach/layerscape/lowlevel.h b/include/mach/layerscape=
/lowlevel.h
> index d013c5e610..e59fb67740 100644
> --- a/include/mach/layerscape/lowlevel.h
> +++ b/include/mach/layerscape/lowlevel.h
> @@ -4,7 +4,10 @@
>  #define __MACH_LOWLEVEL_H
> =20
>  void ls1046a_init_lowlevel(void);
> +void ls1028a_init_lowlevel(void);
>  void ls1046a_init_l2_latency(void);
>  void ls102xa_init_lowlevel(void);

This function is only added in patch #15.

*shrug*

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--so36nybo6uyavkdt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmW34R0ACgkQj4D7WH0S
/k70aAf9Gso563ud8vgWqKOHie8ct8Use9FpCKXerZC18D/O3Bs2jL/IcCMKc5r4
738aXOJbPaj63sM0Iym3z5FVryEC2RsgAGLEInQWE5UIWux7nLkfMOFuCbGXItPP
If+EBW9dI58OO0ANjfXT5UbTnkdE41O2YUhPFuhZSG8e4ClSb84Qwt0keGM47sD0
q5ASHqRTX4Q/TcRKTFAc5IvbfH9fLWuIMOcXc8WSqxz56zfDhDKU+f1nOzPO/jpl
VNUfd4YPuAKrVbqZgBKRc9M+5evsvxw8GLRMXgDliGAxcj797IiIap8J7Dy4IKjm
0YprCBbMtzkoAwTOXuHYuXa+EkUJzA==
=Fp6J
-----END PGP SIGNATURE-----

--so36nybo6uyavkdt--


