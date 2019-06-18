Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8UM-0002cH-3O
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 07:25:08 +0000
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
 [209.85.222.42]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id x5I7Oo3Y030799
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2019 16:24:51 +0900
Received: by mail-ua1-f42.google.com with SMTP id c4so4911862uad.1
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2019 00:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084704.8996-1-yamada.masahiro@socionext.com>
 <20190617070524.bhcpfkv4thpouxax@pengutronix.de>
 <CAK7LNARR7VVym75CQR0dWgm8yLXoYS8AuZpezh9ye8AdwusAaA@mail.gmail.com>
 <20190618071112.lvukhhg2mxpdpbih@pengutronix.de>
In-Reply-To: <20190618071112.lvukhhg2mxpdpbih@pengutronix.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 18 Jun 2019 16:24:14 +0900
Message-ID: <CAK7LNAQJYg-hFepjHnj6kuF-aCZ95qCwfpeeDbs9BaaXt=56rQ@mail.gmail.com>
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
Subject: Re: [PATCH] kconfig: update to Linux 5.2-rc4
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jun 18, 2019 at 4:11 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Jun 17, 2019 at 05:02:11PM +0900, Masahiro Yamada wrote:
> > Hi Sascha,
> >
> > On Mon, Jun 17, 2019 at 4:05 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > Hi Masahiro,
> > >
> > > On Mon, Jun 10, 2019 at 05:47:04PM +0900, Masahiro Yamada wrote:
> > > > @@ -854,7 +860,7 @@ define symlink-config-h
> > > >       fi
> > > >  endef
> > > >
> > > > -include/config.h: include/config/auto.conf
> > > > +include/config.h:
> > > >       $(Q)$(symlink-config-h)
> > >
> > > I had to revert this change. Without the dependency to
> > > include/config/auto.conf include/config.h won't get updated on Kconfig
> > > changes. Is reverting this change the right thing to do or do we have to
> > > do something else?
> >
> > You are right.
> >
> > Once include/config.h is created, it will never be updated.
> >
> > Reverting this hunk would work in most cases,
> > but I think it is strange to use timestamps to determine
> > whether a symbolic link is re-linked or not.
> >
> > If include/config.h is a symlink, it will end up with comparing
> > the timestamps between $(srctree)/$(BOARD)/config.h and
> > include/config/auto.conf, which is pointless.
> >
> >
> > I do not know why 'touch -a $@' is needed
> > when $(srctree)/$(BOARD)/config.h does not exist.
> >
> > How about this?
> >
> >
> >
> > diff --git a/Makefile b/Makefile
> > index 071b927068c4..196a2a2625c8 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -827,7 +827,7 @@ endif
> >  prepare2: prepare3 outputmakefile
> >
> >  prepare1: prepare2 include/generated/version.h include/generated/utsrelease.h \
> > -                   include/config.h
> > +                   symlink-config-h
> >
> >  ifneq ($(KBUILD_MODULES),)
> >         $(Q)mkdir -p $(MODVERDIR)
> > @@ -849,16 +849,14 @@ export CPPFLAGS_barebox.lds += -C -U$(ARCH)
> >
> >  define symlink-config-h
> >         if [ -f $(srctree)/$(BOARD)/config.h ]; then            \
> > -               $(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';   \
> >                 ln -fsn $(srctree)/$(BOARD)/config.h $@;        \
> >         else                                                    \
> > -               [ -h $@ ] && rm -f $@;                          \
> > -               $(kecho) '  CREATE  $@';                        \
> > -               touch -a $@;                                    \
> > +               rm -f $@;                                       \
> >         fi
> >  endef
> >
> > -include/config.h:
> > +PHONY += symlink-config-h
> > +symlink-config-h:
> >         $(Q)$(symlink-config-h)
>
> This creates a link named "symlink-config-h" pointing to the boards
> config.h.

Oops, sorry.

I forgot to change the rule like follows:

ln -fsn $(srctree)/$(BOARD)/config.h include/config.h



> If I understand correctly then the idea is to always (re-)create the
> symlink. For this adding PHONY should be enough, no? At least in my test
> it seemed to do what it should.

Right.  Adding it to PHONY is enough.
Renaming include/config.h -> symlink-config-h is optional.

(My intention was to make it look like a phony target and that's it.)


Thanks.


> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
