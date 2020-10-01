Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNrr2-00025U-6r
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 06:14:12 +0000
Date: Thu, 1 Oct 2020 08:14:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201001061410.GJ11648@pengutronix.de>
References: <20200929115457.5034-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929115457.5034-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of
 overwriting
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 29, 2020 at 01:54:57PM +0200, Uwe Kleine-K=F6nig wrote:
> This corresponds to Linux commit 7e2521a85c98 (that currently sits in
> linux-next) with the same short log.
> =

> When building with
> =

> 	$ HOST_EXTRACFLAGS=3D-g make
> =

> the expectation is that host tools are built with debug informations.
> This however doesn't happen if the Makefile assigns a new value to the
> HOST_EXTRACFLAGS instead of appending to it. So use +=3D instead of :=3D =
for
> the first assignment.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/dtc/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> index 06a265cf7b51..721e8e2b8c2e 100644
> --- a/scripts/dtc/Makefile
> +++ b/scripts/dtc/Makefile
> @@ -14,7 +14,7 @@ libfdt-objs	:=3D $(libfdt-objs:%.o=3Dlibfdt/%.o)
>  fdtget-objs    +=3D fdtget.o $(libfdt-objs) util.o
>  =

>  # Source files need to get at the userspace version of libfdt_env.h to c=
ompile
> -HOST_EXTRACFLAGS :=3D -I$(src)/libfdt
> +HOST_EXTRACFLAGS +=3D -I$(src)/libfdt
>  =

>  ifeq ($(wildcard /usr/include/yaml.h),)
>  ifneq ($(CHECK_DTBS),)
> -- =

> 2.28.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
