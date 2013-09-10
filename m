Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJHMi-0002Gj-8R
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 06:23:56 +0000
Date: Tue, 10 Sep 2013 08:23:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130910062334.GY30088@pengutronix.de>
References: <1378761307-7785-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378761307-7785-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] cfa10036: fix warning
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 09, 2013 at 11:15:07PM +0200, Eric B=E9nard wrote:
> this fix :
> arch/arm/boards/crystalfontz-cfa10036/cfa10036.c: In function 'cfa10036_d=
evices_init':
> arch/arm/boards/crystalfontz-cfa10036/cfa10036.c:123:3: warning: implicit=
 declaration of function 'imx_gpio_mode' [-Wimplicit-function-declaration]c=
fa10036: fix warning
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/=
boards/crystalfontz-cfa10036/cfa10036.c
> index c11bb2f..d1df7b8 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> @@ -33,7 +33,7 @@
>  =

>  #include <mach/clock.h>
>  #include <mach/imx-regs.h>
> -#include <mach/iomux-imx28.h>
> +#include <mach/iomux.h>
>  #include <mach/mci.h>
>  =

>  #include <asm/armlinux.h>
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
