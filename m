Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMuKd-0004aZ-B2
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 07:09:04 +0000
Date: Mon, 10 Mar 2014 08:08:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140310070837.GF17250@pengutronix.de>
References: <20140210091152.GM17250@pengutronix.de>
 <1394188803-13456-1-git-send-email-eric@eukrea.com>
 <1394188803-13456-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394188803-13456-2-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH v2 2/7] ARM: i.MX53: Add sata to devicetree
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Fri, Mar 07, 2014 at 11:39:58AM +0100, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
> v2: update the SATA entry to be compatible with the kernel, but do
>   not use the Linux-next dts. This means use plain numbers, but the
>   correct clock names.

It seems I already accidently applied v1 of this patch. Instead of this
one I merged a fixup patch. Please check the result in the -next branch.

Sascha

>   =

>  arch/arm/dts/imx53.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> =

> diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
> index 678547c..a28c4c7 100644
> --- a/arch/arm/dts/imx53.dtsi
> +++ b/arch/arm/dts/imx53.dtsi
> @@ -75,6 +75,15 @@
>  		interrupt-parent =3D <&tzic>;
>  		ranges;
>  =

> +		sata: sata@10000000 {
> +			compatible =3D "fsl,imx53-ahci";
> +			reg =3D <0x10000000 0x1000>;
> +			interrupts =3D <28>;
> +			clocks =3D <&clks 173>, <&clks 188>, <&clks 5>;
> +			clock-names =3D "sata_gate", "sata_ref", "ahb";
> +			status =3D "disabled";
> +		};
> +
>  		ipu: ipu@18000000 {
>  			#crtc-cells =3D <1>;
>  			compatible =3D "fsl,imx53-ipu";
> -- =

> 1.8.3.1
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
