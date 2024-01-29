Delivery-date: Mon, 29 Jan 2024 18:37:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUVZ6-00AR7V-2r
	for lore@lore.pengutronix.de;
	Mon, 29 Jan 2024 18:37:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUVZ7-0000lL-J5
	for lore@pengutronix.de; Mon, 29 Jan 2024 18:37:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=luueEg3nNiXjP9ySDUViP0E0jlL9b0gv62tdNqWJ4t0=; b=20IrlyEoTWqAG7fBxpudEn3hpH
	B2aX2KXsaN2MN74vWJ5ka+7qn1CBc3T3G32SUS10SYYWsXG5W4YV68t20TWLQgtESimAwWkxYp16o
	5ahbTlgLFu5zfWbaa5UHpVswwYduBeA5qXrWCPU4JHbCpyddeSrub082dIwRUZbYTJW3maqwaA3EY
	tWEM8UpvxkBqOPed+Ue13eJHryaHTLz/SjxCN7gCv6yCt9OYbhpjft4zFD9OKH7O4I6LgkA3LqNAy
	Jgcdg6p4pEqCVvngtcsPzVKb1V1NJvJL5eKoKcj+3pOZkQmrWrmX11TaqRUba34MwaY4dc2jlYpaB
	0pObImQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVYg-0000000Dkxk-1xnI;
	Mon, 29 Jan 2024 17:36:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVYc-0000000Dkx5-45Oy
	for barebox@lists.infradead.org;
	Mon, 29 Jan 2024 17:36:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVYb-0000hq-O3; Mon, 29 Jan 2024 18:36:29 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVYb-003EfP-Bi; Mon, 29 Jan 2024 18:36:29 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rUVYb-00B6qe-0u;
	Mon, 29 Jan 2024 18:36:29 +0100
Date: Mon, 29 Jan 2024 18:36:29 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <o7zxvviipdmg6clblu4e2jduqilx4d54w2ra4b3guajgxum54k@omyjqfyirjzv>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
 <20240104141746.165014-19-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y4l42hu2mvdbzxdb"
Content-Disposition: inline
In-Reply-To: <20240104141746.165014-19-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_093631_036742_8E1264E7 
X-CRM114-Status: GOOD (  13.81  )
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
Subject: Re: [PATCH 18/19] mci: imx-esdhc-pbl: implement esdhc xload for
 ls1028a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--y4l42hu2mvdbzxdb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Sascha,

On Thu, Jan 04, 2024 at 03:17:45PM +0100, Sascha Hauer wrote:
> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> index c13830d726..2c74d101e4 100644
> --- a/drivers/mci/imx-esdhc-pbl.c
> +++ b/drivers/mci/imx-esdhc-pbl.c
> @@ -9,6 +9,8 @@
>  #include <asm/sections.h>
>  #include <asm/cache.h>
>  #include <mach/imx/xload.h>
> +#include <firmware.h>
> +#include <asm/atf_common.h>
>  #ifdef CONFIG_ARCH_IMX
>  #include <mach/imx/atf.h>
>  #include <mach/imx/imx6-regs.h>
> @@ -319,7 +321,8 @@ static int layerscape_esdhc_load_image(struct fsl_esd=
hc_host *host, void *adr, u
>  	val |=3D div_val;
>  	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTW=
ARE_RESET, val);
> =20
> -	sdhci_write32(&host->sdhci, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
> +	sdhci_write32(&host->sdhci, ESDHC_DMA_SYSCTL,
> +		      ESDHC_SYSCTL_DMA_SNOOP | ESDHC_SYSCTL_PERIPHERAL_CLK_SEL);

This affects ls1046, too. Is this intended?

Best regards
Uwe

>  	ret =3D esdhc_read_blocks(host, adr, size);
>  	if (ret) {

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--y4l42hu2mvdbzxdb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmW34hwACgkQj4D7WH0S
/k54Rwf/XW3i2uDM4oRBpj7sIT3PBDev+wsP+k1GISdDKBaOT5mzLZJlbz8M8iMo
wc/RrpSsYFXYpXQ5VKc1p8XpynrkgcALATorPhNmP7az8s88HhaJTWQde1/J0l3r
LdOjOgtIY2Kzss0fP//3GxatsIEo6b9Rw+zqmPIMp9QOGt/liXkIpkf80QJCRMMT
Qkd5COVM1iM/XJKchon+2ozQXRaskgiSDPLTF0PdYr1VG5hjgelhkVMp1Fw/ryoM
mVPmy5Q5SUjrigx3dylc8iskwAE4EeXN9hFmDqh4/Ss37Ajelr4GDbcViFL3AKVf
c3JmS3c5bpHlccD//ZYNi6gzEEzNhw==
=9mJl
-----END PGP SIGNATURE-----

--y4l42hu2mvdbzxdb--


