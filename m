Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJDgU-00014b-9A
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 10:32:07 +0000
Date: Fri, 18 Sep 2020 12:32:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200918103204.GW4498@pengutronix.de>
References: <20200917201708.12168-1-u.kleine-koenig@pengutronix.de>
 <20200917201708.12168-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917201708.12168-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/4] imx/esdctl: Define new helper macros to reduce board
 entry boilerplate
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 17, 2020 at 10:17:06PM +0200, Uwe Kleine-K=F6nig wrote:
> The macro provides the extern declaration of the devicetree variable, cal=
ls
> IMD_USED_OF to add metadata to the resulting barebox image and then calls
> the right entry function.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/esdctl.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> =

> diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/=
include/mach/esdctl.h
> index 8073b7f40937..506dda2d5a1c 100644
> --- a/arch/arm/mach-imx/include/mach/esdctl.h
> +++ b/arch/arm/mach-imx/include/mach/esdctl.h
> @@ -145,6 +145,27 @@ void __noreturn imx8mp_barebox_entry(void *boarddata=
);
>  void __noreturn imx8mq_barebox_entry(void *boarddata);
>  void __noreturn vf610_barebox_entry(void *boarddata);
>  =

> +#include <image-metadata.h>
> +
> +#define IMX_BAREBOX__ENTRY(_fdtname, _suffix, _compressed) ({ extern cha=
r __dtb_ ## _compressed ## _fdtname ## _start[]; IMD_USED_OF(_fdtname); imx=
 ## _suffix ## _barebox_entry(__dtb_ ## _compressed ## _fdtname ## _start +=
 get_runtime_offset()); })

I think this macro does a bit too much.

How about this one first:

#define GET_DTB(name) ({					\
	extern char __dtb_ ## name ## _start[];			\
	__dtb_ ## name ## _start + get_runtime_offset();	\
});

and an analog GET_DTBZ? This would be generally userful and not only on
i.MX.

I am not sure I would put the IMD_USED_OF into this macro. My gut
feeling is that I would rather make it explicit in the board code.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
