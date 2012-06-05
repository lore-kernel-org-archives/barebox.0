Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sc16H-0003tt-L5
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 21:15:38 +0000
Received: by werc12 with SMTP id c12so4707648wer.36
 for <barebox@lists.infradead.org>; Tue, 05 Jun 2012 14:15:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120605024921.GX3377@game.jcrosoft.org>
References: <1338842419-27037-1-git-send-email-dirker@gmail.com>
 <1338842419-27037-3-git-send-email-dirker@gmail.com>
 <20120605024921.GX3377@game.jcrosoft.org>
From: =?ISO-8859-1?Q?Dirk_H=F6rner?= <dirker@gmail.com>
Date: Tue, 5 Jun 2012 23:15:15 +0200
Message-ID: <CAOoHCj9X2Zjmin4q9GeAgGzwrZeZyHMb4BYvXuTfULPujOTMGA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/6] make: use wc -c instead of stat -c%s to get file sizes
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Tue, Jun 5, 2012 at 4:49 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>
> HI,
>
> =A0 =A0 =A0 =A0I don't like this to continue to duplicate code

I agree. Would you rather like a function in common/Kbuild.include and
then $(call) it in appropriate places?

In any case, I guess the code unification should be done in a separate
commit, either before or after my patch.

Ciao,
Dirk

>
> Best Regards,
> J.
> On 22:40 Mon 04 Jun =A0 =A0 , Dirk H=F6rner wrote:
> > On OS X, stat does not know about %s. Solaris does not have stat. The
> > drawback to this wc -c solution is that wc reads all the bytes, but we
> > are
> > only dealing with small files here, so that not be much of a problem.
> >
> > Signed-off-by: Dirk H=F6rner <dirker@gmail.com>
> > ---
> > =A0Makefile =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A02 +-
> > =A0common/Makefile =A0 =A0 =A0| =A0 =A02 +-
> > =A0scripts/Makefile.lib | =A0 =A02 +-
> > =A03 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index bcaae0a..3ac8788 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -536,7 +536,7 @@ quiet_cmd_barebox_version =3D GEN =A0 =A0 .version
> > =A0# Check size of a file
> > =A0quiet_cmd_check_file_size =3D CHKSIZE $@
> > =A0 =A0 =A0 =A0cmd_check_file_size =3D set -e; =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > - =A0 =A0 size=3D`stat -c%s $@`; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > + =A0 =A0 size=3D`wc -c < $@`; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > =A0 =A0 =A0 max_size=3D`printf "%d" $2`; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > =A0 =A0 =A0 if [ $$size -gt $$max_size ] ; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > =A0 =A0 =A0 then =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > diff --git a/common/Makefile b/common/Makefile
> > index a58aef9..9c14d7b 100644
> > --- a/common/Makefile
> > +++ b/common/Makefile
> > @@ -77,7 +77,7 @@ barebox_default_env.lzo: barebox_default_env
> >
> > =A0include/generated/barebox_default_env.h:
> > barebox_default_env$(barebox_default_env_comp)
> > =A0 =A0 =A0 $(Q)cat $< | $(objtree)/scripts/bin2c default_environment >=
 $@
> > - =A0 =A0 $(Q)echo "const int default_environment_uncompress_size=3D`st=
at -c%s
> > barebox_default_env`;" >> $@
> > + =A0 =A0 $(Q)echo "const int default_environment_uncompress_size=3D`wc=
 -c <
> > barebox_default_env`;" >> $@
> >
> > =A0CLEAN_FILES +=3D include/generated/barebox_default_env.h
> > barebox_default_env
> > =A0CLEAN_FILES +=3D barebox_default_env.gz barebox_default_env.bz2
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index b842c48..9b02b1b 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -171,7 +171,7 @@ cmd_gzip =3D (cat $(filter-out FORCE,$^) | gzip -n =
-f
> > -9 > $@) || \
> > =A0size_append =3D printf $(shell =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \
> > =A0dec_size=3D0; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > =A0for F in $1; do
> > =A0 =A0 =A0\
> > - =A0 =A0 fsize=3D$$(stat -c "%s" $$F); =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \
> > + =A0 =A0 fsize=3D$$(wc -c < $$F); =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> > =A0 =A0 =A0 dec_size=3D$$(expr $$dec_size + $$fsize); =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \
> > =A0done;
> > =A0 =A0 =A0\
> > =A0printf "%08x\n" $$dec_size | =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \
> > --
> > 1.7.10.3
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
