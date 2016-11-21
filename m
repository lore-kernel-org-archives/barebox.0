Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c8qtc-0007iB-Py
 for barebox@lists.infradead.org; Mon, 21 Nov 2016 15:52:42 +0000
References: <e424cfb4-6cf8-294f-9192-a6e13135f195@systec-electronic.com>
From: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>
Message-ID: <f90b5d17-d316-2d71-b136-908f591e9839@systec-electronic.com>
Date: Mon, 21 Nov 2016 16:52:16 +0100
MIME-Version: 1.0
In-Reply-To: <e424cfb4-6cf8-294f-9192-a6e13135f195@systec-electronic.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX25/35: Fix bootsource detection
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

Hi,

I suspect, that the patch got scrambled by Thunderbird. Sorry for that.
I will try it again. Hopefully, then it will be OK.

Best regards,
  Daniel Kr=FCger

Am 21.11.2016 um 13:41 schrieb Daniel Kr=FCger:
> This fixes commit 0b47f95340d801a26643e5e1f4ee05287e8ae90e for i.MX25/35.
> Otherwise it was just "unknown".
> =

> Signed-off-by: Daniel Krueger <daniel.krueger@systec-electronic.com>
> ---
>  arch/arm/mach-imx/boot.c |   12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index b66c29d..4893060 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -69,13 +69,13 @@ static const enum bootsource locations[4][4] =3D {
>   * Note also that I suspect that the boot source pins are only sampled at
>   * power up.
>   */
> -static void imx25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
> +static enum bootsource imx25_35_boot_source(unsigned int ctrl, unsigned =
int type)
>  {
>      enum bootsource src;
> =

>      src =3D locations[ctrl][type];
> =

> -    bootsource_set(src);
> +    return src;
>  }
> =

>  void imx25_get_boot_source(enum bootsource *src, int *instance)
> @@ -84,8 +84,8 @@ void imx25_get_boot_source(enum bootsource *src, int *i=
nstance)
>      uint32_t val;
> =

>      val =3D readl(ccm_base + MX25_CCM_RCSR);
> -    imx25_35_boot_save_loc((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
> -                   (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
> +    *src =3D imx25_35_boot_source((val >> MX25_CCM_RCSR_MEM_CTRL_SHIFT) =
& 0x3,
> +                    (val >> MX25_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
>  }
> =

>  void imx25_boot_save_loc(void)
> @@ -105,8 +105,8 @@ void imx35_get_boot_source(enum bootsource *src, int =
*instance)
>      uint32_t val;
> =

>      val =3D readl(ccm_base + MX35_CCM_RCSR);
> -    imx25_35_boot_save_loc((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) & 0x3,
> -                   (val >> MX36_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
> +    *src =3D imx25_35_boot_source((val >> MX35_CCM_RCSR_MEM_CTRL_SHIFT) =
& 0x3,
> +                    (val >> MX35_CCM_RCSR_MEM_TYPE_SHIFT) & 0x3);
>  }
> =

>  void imx35_boot_save_loc(void)

-- =


SYS TEC electronic GmbH
Am Windrad 2
08468 Heinsdorfergrund

Telefon : +49 (0) 3765 38600-0
Fax     : +49 (0) 3765 38600-4100
Email   : daniel.krueger@systec-electronic.com
Website : http://www.systec-electronic.com

Managing Directors  :
  Dipl.-Phys. Siegmar Schmidt, Dipl. Ing. (FH) Armin von Collrepp
Commercial registry : Amtsgericht Chemnitz, HRB 28082
USt.-Id Nr.         : DE150534010


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
