Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haduD-0006ch-1F
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 10:21:32 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x5BAL9cq031812
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2019 19:21:09 +0900
Received: by mail-ua1-f45.google.com with SMTP id 7so4317851uah.1
 for <barebox@lists.infradead.org>; Tue, 11 Jun 2019 03:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084704.8996-1-yamada.masahiro@socionext.com>
 <20190611090758.j5sr7zzgkdibxhbm@pengutronix.de>
In-Reply-To: <20190611090758.j5sr7zzgkdibxhbm@pengutronix.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 11 Jun 2019 19:20:32 +0900
Message-ID: <CAK7LNASykybkHnXa_CO6X=rpVwhtBmzjg2+kL=J48jC7hoJt3w@mail.gmail.com>
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

Hi Sascha,

On Tue, Jun 11, 2019 at 6:08 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi,
> On Mon, Jun 10, 2019 at 05:47:04PM +0900, Masahiro Yamada wrote:
> > The previous sync was Linux 4.20. This updates Kconfig to Linux 5.2-rc4.
> >
> > I adjusted the top Makefile as well because Linux commit 058507195b53
> > ("kbuild: move ".config not found!" message from Kconfig to Makefile")
> > moved the .config check from Kconfig to Makefile.
> >
> > I also made auto.conf a mandatory include file, and remove it from the
> > prerequisites of other targets. We are safe because Make is immediately
> > terminated when syncconfig fails to generate auto.conf.
>
> This doesn't work with out of tree builds, but it looks like it's not the
> fault of this series make menuconfig fails with:
>
> gcc -Wp,-MD,scripts/kconfig/.parser.tab.o.d -Iscripts/kconfig -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer /full/path/omitted/barebox/scripts/kconfig -c -o
> scripts/kconfig/parser.tab.o scripts/kconfig/parser.tab.c
> scripts/kconfig/parser.tab.c:79:10: fatal error: lkc.h: No such file or directory
>
> As you can see the -I is missing before the "/full/path/..." string.
>
> With this change:
>
> -HOSTCFLAGS_lexer.lex.o := -I $(srctree)/$(src)
> -HOSTCFLAGS_parser.tab.o        := -I $(srctree)/$(src)
> +HOSTCFLAGS_lexer.lex.o := -I$(srctree)/$(src)
> +HOSTCFLAGS_parser.tab.o        := -I$(srctree)/$(src)
>
> it works as expected. I have no idea why this is happening. Could you
> have a look?


My bad - I forgot that the nasty 'addtree' is still remaining in barebox.

It is gone from the latest Linux, but we need treewide Makefile cleanups
to kill it.

I just cherry-picked 48f6e3cf5bc6dd0ee00405342ff310c3b1fedb35
to move forward with a minimal change.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
