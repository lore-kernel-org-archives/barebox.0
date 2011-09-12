Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R33o6-0007U4-K8
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 10:32:07 +0000
Date: Mon, 12 Sep 2011 12:32:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110912103203.GU31404@pengutronix.de>
References: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
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
Subject: Re: [PATCH] Add Reset Support for omap3.
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

Applied the first three patches to -next, the fourth to master.

Sascha

On Fri, Sep 09, 2011 at 02:10:53PM +0200, Juergen Kilb wrote:
> Inspired from reset_cpu in omap4_generic.c.
> =

> Signed-off-by: Juergen Kilb <j.kilb@phytec.de>
> ---
>  arch/arm/mach-omap/include/mach/omap3-silicon.h |    3 +++
>  arch/arm/mach-omap/omap3_generic.c              |    5 +++--
>  2 files changed, 6 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/m=
ach-omap/include/mach/omap3-silicon.h
> index 0e6a45f..67f7747 100644
> --- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
> @@ -132,5 +132,8 @@
>  #define OMAP_SDRC_CS0		0x80000000
>  #define OMAP_SDRC_CS1		0xA0000000
>  =

> +/* PRM */
> +#define PRM_RSTCTRL_RESET       0x04
> +
>  #endif /* __ASM_ARCH_OMAP3_H */
>  =

> diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap=
3_generic.c
> index 661a971..9627a6b 100644
> --- a/arch/arm/mach-omap/omap3_generic.c
> +++ b/arch/arm/mach-omap/omap3_generic.c
> @@ -59,8 +59,9 @@
>   */
>  void __noreturn reset_cpu(unsigned long addr)
>  {
> -	/* FIXME: Enable WDT and cause reset */
> -	hang();
> +	writel(PRM_RSTCTRL_RESET, PRM_REG(RSTCTRL));
> +
> +	while (1);
>  }
>  EXPORT_SYMBOL(reset_cpu);
>  =

> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
