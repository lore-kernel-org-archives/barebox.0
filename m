Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvqMm-0000WU-3Z
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 12:46:06 +0000
Date: Tue, 23 Aug 2011 14:45:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110823124539.GL31404@pengutronix.de>
References: <1314102627-12837-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314102627-12837-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM pcm043: Check silicon revision to set up cpu freq
	correct
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 23, 2011 at 02:30:27PM +0200, Teresa G=E1mez wrote:
> Some older pcm043 only work correct when cpu frequency is set up
> to 399MHz. All modules with revision >=3D 1315.4 are equipped
> with a i.MX35 TO2.1 and do run with 532MHz.

Applied to master.

Sascha

> =

> Check the silicon revision and set up the frequency accordingly.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/pcm043/lowlevel.c |   13 ++++++++++++-
>  1 files changed, 12 insertions(+), 1 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/l=
owlevel.c
> index bbe586b..e488681 100644
> --- a/arch/arm/boards/pcm043/lowlevel.c
> +++ b/arch/arm/boards/pcm043/lowlevel.c
> @@ -37,6 +37,11 @@
>  #define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11)=
 | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
>  #define PPCTL_PARAM_300     (IMX_PLL_PD(0) | IMX_PLL_MFD(3) | IMX_PLL_MF=
I(6) | IMX_PLL_MFN(1))
>  =

> +#define IMX35_CHIP_REVISION_2_1		0x11
> +
> +#define CCM_PDR0_399	0x00011000
> +#define CCM_PDR0_532	0x00001000
> +
>  #ifdef CONFIG_NAND_IMX_BOOT
>  static void __bare_init __naked insdram(void)
>  {
> @@ -111,7 +116,13 @@ void __bare_init __naked board_init_lowlevel(void)
>  	writel(MPCTL_PARAM_532, ccm_base + CCM_MPCTL);
>  =

>  	writel(PPCTL_PARAM_300, ccm_base + CCM_PPCTL);
> -	writel(0x00001000, ccm_base + CCM_PDR0);
> +
> +	/* Check silicon revision and use 532MHz if >=3D2.1 */
> +	r =3D readl(IMX_IIM_BASE + 0x24);
> +	if (r >=3D IMX35_CHIP_REVISION_2_1)
> +		writel(CCM_PDR0_532, ccm_base + CCM_PDR0);
> +	else
> +		writel(CCM_PDR0_399, ccm_base + CCM_PDR0);
>  =

>  	r =3D readl(ccm_base + CCM_CGR0);
>  	r |=3D 0x00300000;
> -- =

> 1.7.0.4
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
