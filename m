Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvYH9-00033o-At
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 17:27:04 +0000
Date: Mon, 22 Aug 2011 19:27:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110822172700.GB31404@pengutronix.de>
References: <1314021065-10784-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1314021065-10784-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCHv2 1/2] ARM pcm043: Use PDR0 to change cpu freq
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Mon, Aug 22, 2011 at 03:51:04PM +0200, Teresa G=E1mez wrote:
> Instead of changing the MPCTL to set an other cpu frequency,
> use the post divider.
> =

> This prevents freezing when changing the clock from 399MHz to 532MHz.

Originally this command was meant for debugging purposes. The pcm043
comes up with 532MHz and there should be no need to change the
frequency. I remember that some boards are able to run barebox with
532MHz but don't manage to start the kernel with this frequency. Also I
have one board which does not run with 532MHz at all, but I think it's
an early development sample.
Is there a need to run boards with a lower frequency than they are able
to do? Otherwise, if some boards are not stable at the default 532MHz
I suggest we should also lower the default to 399MHz.

Sascha

> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/pcm043/pcm043.c |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm=
043.c
> index 966899a..5cd6432 100644
> --- a/arch/arm/boards/pcm043/pcm043.c
> +++ b/arch/arm/boards/pcm043/pcm043.c
> @@ -301,8 +301,8 @@ static int pcm043_core_setup(void)
>  =

>  core_initcall(pcm043_core_setup);
>  =

> -#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_M=
FI(8) | IMX_PLL_MFN(5))
> -#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11)=
 | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
> +#define CCM_PDR0_PARAM_399	((1 << 12) | (1 << 16))
> +#define CCM_PDR0_PARAM_532	(1 << 12)
>  =

>  static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
>  {
> @@ -315,10 +315,10 @@ static int do_cpufreq(struct command *cmdtp, int ar=
gc, char *argv[])
>  =

>  	switch (freq) {
>  	case 399:
> -		writel(MPCTL_PARAM_399, IMX_CCM_BASE + CCM_MPCTL);
> +		writel(CCM_PDR0_PARAM_399, IMX_CCM_BASE + CCM_PDR0);
>  		break;
>  	case 532:
> -		writel(MPCTL_PARAM_532, IMX_CCM_BASE + CCM_MPCTL);
> +		writel(CCM_PDR0_PARAM_532, IMX_CCM_BASE + CCM_PDR0);
>  		break;
>  	default:
>  		return COMMAND_ERROR_USAGE;
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
