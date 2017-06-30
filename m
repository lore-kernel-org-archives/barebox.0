Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQuF9-0000iI-DA
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 11:37:49 +0000
Date: Fri, 30 Jun 2017 13:37:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170630113716.jlijyolomf7e33wv@pengutronix.de>
References: <20170629100718.13190-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170629100718.13190-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] enable LFS support for host programs
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 29, 2017 at 12:07:18PM +0200, Uwe Kleine-K=F6nig wrote:
> This fixes building on an XFS partition on a 32 bit machine:
> =

> 	$ armmake -C ~/gsrc/barebox O=3D$PWD imx_defconfig
> 	  HOSTCC  scripts/basic/fixdep
> 	fixdep: error fstat'ing depfile: scripts/basic/.fixdep.d: Value too larg=
e for defined data type
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Makefile              | 12 +++++++++---
>  scripts/Makefile.host |  2 +-
>  2 files changed, 10 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/Makefile b/Makefile
> index 42948fafa33f..3291d310febf 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -181,10 +181,16 @@ CONFIG_SHELL :=3D $(shell if [ -x "$$BASH" ]; then =
echo $$BASH; \
>  	  else if [ -x /bin/bash ]; then echo /bin/bash; \
>  	  else echo sh; fi ; fi)
>  =

> +HOST_LFS_CFLAGS :=3D $(shell getconf LFS_CFLAGS)
> +HOST_LFS_LDFLAGS :=3D $(shell getconf LFS_LDFLAGS)
> +HOST_LFS_LIBS :=3D $(shell getconf LFS_LIBS)
> +
>  HOSTCC       =3D gcc
>  HOSTCXX      =3D g++
> -HOSTCFLAGS   =3D -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer
> -HOSTCXXFLAGS =3D -O2
> +HOSTCFLAGS   =3D -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer $(HO=
ST_LFS_CFLAGS)
> +HOSTCXXFLAGS =3D -O2 $(HOST_LFS_CFLAGS)
> +HOSTLDFLAGS =3D $(HOST_LFS_LDFLAGS)
> +HOST_LOADLIBES =3D $(HOST_LFS_LIBS)
>  =

>  # Decide whether to build built-in, modular, or both.
>  # Normally, just do built-in.
> @@ -316,7 +322,7 @@ KERNELVERSION =3D $(VERSION).$(PATCHLEVEL).$(SUBLEVEL=
)$(EXTRAVERSION)
>  export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION
>  export ARCH SRCARCH CONFIG_SHELL HOSTCC HOSTCFLAGS CROSS_COMPILE AS LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL UTS_MACHINE
> -export HOSTCXX HOSTCXXFLAGS LDFLAGS_MODULE CHECK CHECKFLAGS
> +export HOSTCXX HOSTCXXFLAGS HOSTLDFLAGS HOST_LOADLIBES LDFLAGS_MODULE CH=
ECK CHECKFLAGS
>  =

>  export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
>  export CFLAGS CFLAGS_KERNEL
> diff --git a/scripts/Makefile.host b/scripts/Makefile.host
> index 133edfae5b8a..a89a0c5d43b2 100644
> --- a/scripts/Makefile.host
> +++ b/scripts/Makefile.host
> @@ -85,7 +85,7 @@ hostcxx_flags  =3D -Wp,-MD,$(depfile) $(__hostcxx_flags)
>  # Create executable from a single .c file
>  # host-csingle -> Executable
>  quiet_cmd_host-csingle 	=3D HOSTCC  $@
> -      cmd_host-csingle	=3D $(HOSTCC) $(hostc_flags) -o $@ $< \
> +      cmd_host-csingle	=3D $(HOSTCC) $(hostc_flags) $(HOSTLDFLAGS) -o $@=
 $< \
>  	  	$(HOST_LOADLIBES) $(HOSTLOADLIBES_$(@F))
>  $(host-csingle): $(obj)/%: $(src)/%.c FORCE
>  	$(call if_changed_dep,host-csingle)
> -- =

> 2.11.0
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
