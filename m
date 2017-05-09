Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7xtF-0008Or-3J
 for barebox@lists.infradead.org; Tue, 09 May 2017 05:40:54 +0000
Date: Tue, 9 May 2017 07:40:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170509054031.25ebyo75subsfede@pengutronix.de>
References: <20170508125607.32511-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170508125607.32511-1-jbe@pengutronix.de>
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
Subject: Re: [PATCH] PPC: request a consistent memory layout
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Mon, May 08, 2017 at 02:56:07PM +0200, Juergen Borleis wrote:
> Using the memory test command will crash barebox, because it tests the
> area where the stack is located for the PPC architecture.
> =

> On PPC the stack is below the barebox binary. Below the stack the malloc
> area is located. Until this change some routines used the macros
> from memory_layout.h, some other calculated their values by their
> own - which resulted into an unrequested and unprotected stack area.
> =

> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  arch/ppc/mach-mpc5xxx/Kconfig       |  1 -
>  arch/ppc/mach-mpc5xxx/cpu-mpc5200.c | 18 ++++++++++++++++++
>  2 files changed, 18 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
> index d0f5d78f4..fef661b0f 100644
> --- a/arch/ppc/mach-mpc5xxx/Kconfig
> +++ b/arch/ppc/mach-mpc5xxx/Kconfig
> @@ -52,7 +52,6 @@ config ARCH_MPC5200
>  config MPC5xxx
>  	bool
>  	depends on MACH_PHYCORE_MPC5200B_TINY || MMC12
> -	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  	default y
>  =

>  menu "Board specific settings"
> diff --git a/arch/ppc/mach-mpc5xxx/cpu-mpc5200.c b/arch/ppc/mach-mpc5xxx/=
cpu-mpc5200.c

This files doesn't exist in master. Could you rebase on a current tree?

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
