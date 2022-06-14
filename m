Delivery-date: Tue, 14 Jun 2022 11:10:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12Z3-0024Hr-9h
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 11:10:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12Z1-00043E-US
	for lore@pengutronix.de; Tue, 14 Jun 2022 11:10:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HstbTxDUBrzBmF4hTBcIcPRhdIUvnmgoO0hqVf0K/6s=; b=e1Itw362FSZXr0diyqvK5mQHx7
	KWb4nFFyLVxXQZDNVIJK1cJtUAcTga33K/EaBxeardGR0QZz8FfT+TJRMPA3JlduyJDhFFmJvwOXu
	JFPe8YoPlcTR6SOBAXGdZ5n4vVcO08s6C3ok4iOqimi/gat/yGbIu7nhYu+coeEh0ccu3t4qGmDD4
	uBS0cqxw7BXGruCBHPOU8AitleF5TwzBe1HnGcpbNNr9mdus6eKCtT0i8gHQAIfH2G3GbeVs1+Aae
	lOt6+Ws+avZ7XcpwRKliLEJAot0qv1z1MmThey6IZLxrSXyCJ23BaQHUQnYNpjCuNfwMrMBHY6b4/
	iwfJ3DEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12XR-008Yil-NQ; Tue, 14 Jun 2022 09:08:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12Fj-008PIE-Hy
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 08:50:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o12Fh-0000No-Un; Tue, 14 Jun 2022 10:50:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o12Fh-000594-Lm; Tue, 14 Jun 2022 10:50:21 +0200
Date: Tue, 14 Jun 2022 10:50:21 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org,
	=?iso-8859-15?Q?J=FCrgen?= Borleis <jbe@pengutronix.de>
Message-ID: <20220614085021.GS1615@pengutronix.de>
References: <20220610165057.86722-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610165057.86722-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_015023_636102_4B78B3AF 
X-CRM114-Status: GOOD (  20.86  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Make sure *_get_boot_source always assignes
 *src
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 10, 2022 at 06:50:57PM +0200, Uwe Kleine-K=F6nig wrote:
> Callers of *_get_boot_source (e.g. start_atf() of
> nxp-imx8mm-evk or protonic-imx8m) expect src to hold the bootsource
> after return. So assign a value also for the "unknown" case.
> =

> Fixes: ea55770308c0 ("ARM: i.MX: Add i.MX7 base architecture support")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-imx/boot.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 63afdf1ef4ed..1b0bccb7fed8 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -285,6 +285,8 @@ void imx53_get_boot_source(enum bootsource *src, int =
*instance)
>  	default:
>  		if (imx53_bootsource_nand(cfg1))
>  			*src =3D BOOTSOURCE_NAND;
> +		else
> +			*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  =

> @@ -464,6 +466,8 @@ void imx6_get_boot_source(enum bootsource *src, int *=
instance)
>  	default:
>  		if (imx53_bootsource_nand(bootmode))
>  			*src =3D BOOTSOURCE_NAND;
> +		else
> +			*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  }
> @@ -526,6 +530,7 @@ static void __imx7_get_boot_source(enum bootsource *s=
rc, int *instance,
>  		*src =3D BOOTSOURCE_SERIAL;
>  		break;
>  	default:
> +		*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  }
> @@ -629,6 +634,8 @@ void vf610_get_boot_source(enum bootsource *src, int =
*instance)
>  	default:
>  		if (imx53_bootsource_nand(sbmr1))
>  			*src =3D BOOTSOURCE_NAND;
> +		else
> +			*src =3D BOOTSOURCE_UNKNOWN;
>  		break;
>  	}
>  }
> =

> base-commit: 345ef59aa0ea1a931629187449f63876501752cd
> -- =

> 2.36.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

