Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSTaG-0005Jk-Sa
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 20:38:38 +0000
Date: Mon, 11 Jun 2018 22:38:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180611203822.dpc6qtgvydg66veg@pengutronix.de>
References: <20180608084244.12816-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180608084244.12816-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mvebu: create bbu handler for kwb images and use it on
 cubox
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 08, 2018 at 10:42:44AM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> together with the fixup for write_file_flash to not use O_TRUNC and
> O_CREAT, this was tested on top of next.
> =

> Best regards
> Uwe
> =

>  arch/arm/boards/solidrun-cubox/board.c | 15 ++++++-
>  arch/arm/mach-mvebu/Makefile           |  1 +
>  arch/arm/mach-mvebu/include/mach/bbu.h |  3 ++
>  arch/arm/mach-mvebu/kwb_bbu.c          | 54 ++++++++++++++++++++++++++
>  4 files changed, 72 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-mvebu/include/mach/bbu.h
>  create mode 100644 arch/arm/mach-mvebu/kwb_bbu.c
> =

> diff --git a/arch/arm/boards/solidrun-cubox/board.c b/arch/arm/boards/sol=
idrun-cubox/board.c
> index a28f4197dfd4..aac93afb0c89 100644
> --- a/arch/arm/boards/solidrun-cubox/board.c
> +++ b/arch/arm/boards/solidrun-cubox/board.c
> @@ -14,4 +14,17 @@
>   *
>   */
>  =

> -/* empty */
> +#include <common.h>
> +#include <init.h>
> +#include <mach/bbu.h>
> +
> +static int cubox_devices_init(void)
> +{
> +	if (!of_machine_is_compatible("solidrun,cubox"))
> +		return 0;
> +
> +	mvebu_bbu_flash_register_handler("flash", "/dev/m25p0", 0, true);

This breaks linking when bbu support is disabled. You'll have to
provide some static inline wrapper for this case.

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
