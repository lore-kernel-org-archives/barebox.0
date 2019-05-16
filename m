Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR7Td-0000La-IZ
 for barebox@lists.infradead.org; Thu, 16 May 2019 03:54:44 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x4G3sHtU007782
 for <barebox@lists.infradead.org>; Thu, 16 May 2019 12:54:17 +0900
Received: by mail-ua1-f46.google.com with SMTP id u4so733179uau.10
 for <barebox@lists.infradead.org>; Wed, 15 May 2019 20:54:17 -0700 (PDT)
MIME-Version: 1.0
References: <CA+T6rvHH7Nd+xTAch5tQqJ6Y5tKKWHcfGjGuDp9BYJEjOvrxBA@mail.gmail.com>
 <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
In-Reply-To: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 16 May 2019 12:53:40 +0900
Message-ID: <CAK7LNASBq7xdx0vNpdDu+O-iDy2f6scxryE6EESauLViP-QynA@mail.gmail.com>
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
Subject: Re: distclean removing LICENSES .gitignores
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, May 14, 2019 at 12:05 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Geordan,
>
> On 13/5/19 00:17, Geordan Neukum wrote:
> > When on the master branch, I noticed that running a "make distclean"
> > will remove:
> >
> >     - LICENSES/exceptions/.gitignore
> >
> >     - LICENSES/other/.gitignore
> >
> >
> > It looks like this is due to matching the pattern '-o size 0' in the
> > top-level barebox makefile under the distclean target.
> >
> > Is this the desired behavior?
>
> Nope, this behavior isn't desired. I added the files, to have git
> index the directories. IIRC, otherwise kernel checkpatch.pl laments their
> absence. Maybe we should add a comment describing the purpose and then
> these files aren't totally empty?
>
> > If not, I can go ahead and submit a
> > patch that cleans up that target.
>
> Please go ahead.


The '-o size 0' came from Linux, and it is gone already from Linux.


See this Linux commit:


commit f4b129f519f1bbd191dca2bf17d1137edf941fd1
Author: Michal Marek <mmarek@suse.cz>
Date:   Wed Aug 10 13:10:20 2011 +0200

    kbuild: Do not delete empty files in make distclean

    Commit 3d64b44 introduced an empty file under
    arch/arm/mach-zynq/board_dt.c. While this was not intended and the file
    was removed from the tree by a later commit, we really should only match
    junk files by known name patterns and not their size.

    Reported-by: David Howells <dhowells@redhat.com>
    Signed-off-by: Michal Marek <mmarek@suse.cz>




If you touch this hunk, please sync this part with Linux.
In other words, please import the following two commits as well.




commit a03fcb50e816a69acffb13b5e56db75063aeba8a
Author: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date:   Fri Mar 28 16:36:12 2014 +0900

    kbuild: remove redundant '.*.cmd' pattern from make distclean

    '.*.cmd' files are cleaned-up by "make clean".
    The same pattern in "make distclean" is unnecessary.

    Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
    Signed-off-by: Michal Marek <mmarek@suse.cz>


commit f78271dfb77353c4d045f9735deebe21839fb2ed
Author: Masahiro Yamada <yamada.masahiro@socionext.com>
Date:   Sun Jan 22 23:02:32 2017 +0900

    kbuild: drop unneeded patterns '.*.orig' and '.*.rej' from distclean

    The patterns '.*.orig' and '.*.rej' are cleaned away by '*.orig' and
    '*.rej' seen two lines above.

    Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>




> Cheers
> Ahmad
>
> >
> > Thanks,
> > Geordan
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
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
