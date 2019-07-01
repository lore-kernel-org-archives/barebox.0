Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvdA-00042r-36
 for barebox@lists.infradead.org; Mon, 01 Jul 2019 12:42:02 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x61CfjTi015534
 for <barebox@lists.infradead.org>; Mon, 1 Jul 2019 21:41:46 +0900
Received: by mail-ua1-f47.google.com with SMTP id j2so5003346uaq.5
 for <barebox@lists.infradead.org>; Mon, 01 Jul 2019 05:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190620082509.20605-1-antonynpavlov@gmail.com>
 <20190620085421.GA26493@ravnborg.org>
 <20190620142945.mxvvrslfz6vp2wkn@pengutronix.de>
In-Reply-To: <20190620142945.mxvvrslfz6vp2wkn@pengutronix.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 1 Jul 2019 21:41:08 +0900
Message-ID: <CAK7LNAR9LWpOyqu35c9__jdx5t0vQL2Hj3XbPXbGSCfdnmtptg@mail.gmail.com>
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
Subject: Re: [PATCH v2] treewide: remove CONFIG_DEBUG_INFO from defconfigs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>, Oleksij Rempel <o.rempel@pengutronix.de>

On Thu, Jun 20, 2019 at 11:30 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Jun 20, 2019 at 10:54:21AM +0200, Sam Ravnborg wrote:
> > Hi Antony
> >
> > On Thu, Jun 20, 2019 at 11:25:09AM +0300, Antony Pavlov wrote:
> > > The commit b917f7864115a35 ("remove CONFIG_DEBUG_INFO")
> > > has dropped Kconfig DEBUG_INFO option however we
> > > still have very many DEBUG_INFO mentions in defconfig
> > > files. Drop them using sed:
> > >
> > >   find -iname '*defconfig' -type f -exec \
> > >       sed -i "/CONFIG_DEBUG_INFO=y/d" {} ';'
> > Another approach could be to regenerate all defconfigs.
> > A little scripting around savedefconfig should do it.
> >
> > Then we would get rid of all obsolete symbols in one go - for all
> > defconfigs.
> >
> > The generated defconfig would be the one that people would be using
> > anyway, so there should be only a little risk to introduce new issues
> > doing it this way.
> >
> > Willing to try this approcah - maybe across all architectures?
>
> I once thought the same and came up with this little thing:
>
> #!/bin/bash
>
> for a in arch/*; do
>         arch=$(basename $a)
>         for c in $a/configs/*; do
>                 config=$(basename $c)
>                 export ARCH=$arch
>                 make $config && make savedefconfig && mv defconfig $c
>         done
> done
>
> Just tested, still works. Maybe I should just run this from time to time
> and commit the result. What do you think?


U-Boot does this every release.

Linux does not do this much,
but it depends on the arch maintainer.
(I sometimes saw this re-sync for arm64)

Personally, I do not want to see savedefconfig much.
Even without sorting, "make defconfig" still produces
the same .config file.
It is a boundary of "clean-up" and "just a noise commit".

In summary, it is up to you since you are the maintainer.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
