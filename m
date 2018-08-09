Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnfFM-0002kG-Fw
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 07:20:38 +0000
Date: Thu, 9 Aug 2018 09:20:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180809072024.exh4oxrzyvy7onsw@pengutronix.de>
References: <20180809065420.6475-1-s.hauer@pengutronix.de>
 <201808090914.47846.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201808090914.47846.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] scripts/dtc: Reenable fdtget
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 09, 2018 at 09:14:47AM +0200, Juergen Borleis wrote:
> On Thursday 09 August 2018 08:54:20 Sascha Hauer wrote:
> > [...]
> > diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> > index 06aaa8c550..cc4ebefcb6 100644
> > --- a/scripts/dtc/Makefile
> > +++ b/scripts/dtc/Makefile
> > @@ -1,6 +1,6 @@
> >  # scripts/dtc makefile
> >
> > -hostprogs-y	:= dtc
> > +hostprogs-y	:= dtc fdtget
> >  always	:= $(hostprogs-y)
> >
> >  dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
> > @@ -10,6 +10,8 @@ dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
> >  libfdt-objs	= fdt.o fdt_ro.o fdt_strerror.o fdt_wip.o fdt_overlay.o
> >  libfdt-objs	+= fdt_empty_tree.o fdt_rw.o fdt_sw.o
> >
> > +fdtget-objs    += fdtget.o $(libfdt-objs) util.o
> > +
> >  # Source files need to get at the userspace version of libfdt_env.h to compile
> >
> >  HOSTCFLAGS_DTC := -I$(src)
> > @@ -23,6 +25,7 @@ HOSTCFLAGS_livetree.o := $(HOSTCFLAGS_DTC)
> >  HOSTCFLAGS_srcpos.o := $(HOSTCFLAGS_DTC)
> >  HOSTCFLAGS_treesource.o := $(HOSTCFLAGS_DTC)
> >  HOSTCFLAGS_util.o := $(HOSTCFLAGS_DTC)
> > +HOSTCFLAGS_fdtget.o := $(HOSTCFLAGS_DTC)
> >
> >  HOSTCFLAGS_fdt.o := $(HOSTCFLAGS_DTC)
> >  HOSTCFLAGS_fdt_ro.o := $(HOSTCFLAGS_DTC)
> 
> You should add "fdtget" to the "clean-files" variable as well.

Nope, it's not necessary to add that explicitly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
