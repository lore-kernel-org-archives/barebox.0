Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnf9x-0008Hr-MA
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 07:15:03 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 9 Aug 2018 09:14:47 +0200
References: <20180809065420.6475-1-s.hauer@pengutronix.de>
In-Reply-To: <20180809065420.6475-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201808090914.47846.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] scripts/dtc: Reenable fdtget
To: barebox@lists.infradead.org

On Thursday 09 August 2018 08:54:20 Sascha Hauer wrote:
> [...]
> diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> index 06aaa8c550..cc4ebefcb6 100644
> --- a/scripts/dtc/Makefile
> +++ b/scripts/dtc/Makefile
> @@ -1,6 +1,6 @@
>  # scripts/dtc makefile
>
> -hostprogs-y	:=3D dtc
> +hostprogs-y	:=3D dtc fdtget
>  always	:=3D $(hostprogs-y)
>
>  dtc-objs	:=3D dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
> @@ -10,6 +10,8 @@ dtc-objs	+=3D dtc-lexer.lex.o dtc-parser.tab.o
>  libfdt-objs	=3D fdt.o fdt_ro.o fdt_strerror.o fdt_wip.o fdt_overlay.o
>  libfdt-objs	+=3D fdt_empty_tree.o fdt_rw.o fdt_sw.o
>
> +fdtget-objs    +=3D fdtget.o $(libfdt-objs) util.o
> +
>  # Source files need to get at the userspace version of libfdt_env.h to c=
ompile
>
>  HOSTCFLAGS_DTC :=3D -I$(src)
> @@ -23,6 +25,7 @@ HOSTCFLAGS_livetree.o :=3D $(HOSTCFLAGS_DTC)
>  HOSTCFLAGS_srcpos.o :=3D $(HOSTCFLAGS_DTC)
>  HOSTCFLAGS_treesource.o :=3D $(HOSTCFLAGS_DTC)
>  HOSTCFLAGS_util.o :=3D $(HOSTCFLAGS_DTC)
> +HOSTCFLAGS_fdtget.o :=3D $(HOSTCFLAGS_DTC)
>
>  HOSTCFLAGS_fdt.o :=3D $(HOSTCFLAGS_DTC)
>  HOSTCFLAGS_fdt_ro.o :=3D $(HOSTCFLAGS_DTC)

You should add "fdtget" to the "clean-files" variable as well.

jb

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0 =A0=
| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0 =A0| http://w=
ww.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
