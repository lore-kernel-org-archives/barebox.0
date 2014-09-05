Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XPnSB-0002y9-Go
 for barebox@lists.infradead.org; Fri, 05 Sep 2014 06:57:04 +0000
Date: Fri, 5 Sep 2014 08:56:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140905065640.GD5352@pengutronix.de>
References: <1409898956-19002-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409898956-19002-1-git-send-email-t.gamez@phytec.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM: phyCORE-AM335x: Update partition table
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 05, 2014 at 08:35:56AM +0200, Teresa G=E1mez wrote:
> Added device tree partition and made rootfs partition
> variable size depending on nand flash size.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
> v2:
> - fixed root partition start
> =

>  arch/arm/dts/am335x-phytec-phycore.dts |   22 ++++++++++++++++++----
>  1 files changed, 18 insertions(+), 4 deletions(-)
> =

> diff --git a/arch/arm/dts/am335x-phytec-phycore.dts b/arch/arm/dts/am335x=
-phytec-phycore.dts
> index 16febd3..e7e7780 100644
> --- a/arch/arm/dts/am335x-phytec-phycore.dts
> +++ b/arch/arm/dts/am335x-phytec-phycore.dts
> @@ -194,8 +194,13 @@
>  		};
>  =

>  		partition@3 {
> +			label =3D "oftree";
> +			reg =3D <0xc0000 0x20000>;
> +		};
> +
> +		partition@4 {
>  			label =3D "kernel";
> -			reg =3D <0xc0000 0x400000>;
> +			reg =3D <0xe0000 0x400000>;
>  		};
>  	};
>  };
> @@ -305,13 +310,22 @@
>  		};
>  =

>  		partition@6 {
> -			label =3D "kernel";
> -			reg =3D <0x120000 0x800000>;
> +			label =3D "oftree";
> +			reg =3D <0x120000 0x20000>;
>  		};
>  =

>  		partition@7 {
> +			label =3D "kernel";
> +			reg =3D <0x140000 0x800000>;
> +		};
> +
> +		partition@8 {
>  			label =3D "root";
> -			reg =3D <0x920000 0x1f6e0000>;
> +			/*
> +			 * Size 0x0 extends partition to
> +			 * end of nand flash.
> +			 */
> +			reg =3D <0x940000 0x0>;
>  		};
>  	};
>  };
> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
