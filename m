Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT5Wv-0000pi-JY
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:32:55 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 16 Jan 2017 12:35:03 +0100
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
 <20170116105108.13617-21-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-21-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201701161235.03456.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 20/23] ARM: i.MX: gpt: Add i.MX7 support
To: barebox@lists.infradead.org

On Monday 16 January 2017 11:51:05 Sascha Hauer wrote:
> [...]
> diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksou=
rce.c
> index 8d00bbb3f..b1f59aae2 100644 =

> --- a/arch/arm/mach-imx/clocksource.c
> +++ b/arch/arm/mach-imx/clocksource.c
> @@ -155,8 +155,10 @@ static __maybe_unused struct of_device_id
> imx_gpt_dt_ids[] =3D { .compatible =3D "fsl,imx6ul-gpt",
>  		.data =3D &regs_imx31,
>  	}, {
> -		/* sentinel */
> -	}
> +		.compatible =3D "fsl,imx7d-gpt",
> +		.data =3D &regs_imx31,
> +	}, {
> +	},
>  };
>
>  static struct platform_device_id imx_gpt_ids[] =3D {

Hmm, maybe we should keep the "/* sentinel */" to make clear this last entry
in the table is required.

Cheers,
Juergen

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0  =A0| =
Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0  =A0| http://www=
.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
