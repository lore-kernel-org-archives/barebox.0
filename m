Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyGrE-0002HD-EM
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 09:13:25 +0000
Date: Tue, 9 Dec 2014 10:13:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141209091302.GP30369@pengutronix.de>
References: <1418032791-35329-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1418032791-35329-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 1/3] ARM: dts: am335x-phytec-phyflex: Increase kernel
 partition on SPI NOR
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Mon, Dec 08, 2014 at 10:59:49AM +0100, Teresa G=E1mez wrote:
> Increase kernel partition to end of SPI NOR.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/dts/am335x-phytec-phyflex.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm/dts/am335x-phytec-phyflex.dts b/arch/arm/dts/am335x=
-phytec-phyflex.dts
> index c4481f5..0de7e87 100644
> --- a/arch/arm/dts/am335x-phytec-phyflex.dts
> +++ b/arch/arm/dts/am335x-phytec-phyflex.dts
> @@ -187,7 +187,7 @@
>  =

>  		partition@4 {
>  			label =3D "kernel";
> -			reg =3D <0xe0000 0x400000>;
> +			reg =3D <0xe0000 0x0>;
>  		};

I wasn't aware barebox handles this case like you intend here. What
about the kernel? Won't you end up with a zero sized partition there?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
