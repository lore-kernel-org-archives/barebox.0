Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sbjpi-0004Oa-8l
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 02:49:23 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B8444FF8776
 for <barebox@lists.infradead.org>; Tue,  5 Jun 2012 04:52:37 +0200 (CEST)
Date: Tue, 5 Jun 2012 04:49:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120605024921.GX3377@game.jcrosoft.org>
References: <1338842419-27037-1-git-send-email-dirker@gmail.com>
 <1338842419-27037-3-git-send-email-dirker@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338842419-27037-3-git-send-email-dirker@gmail.com>
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
To: Dirk =?iso-8859-1?Q?H=F6rner?= <dirker@gmail.com>
Cc: barebox@lists.infradead.org

HI,

	I don't like this to continue to duplicate code

Best Regards,
J.
On 22:40 Mon 04 Jun     , Dirk H=F6rner wrote:
> On OS X, stat does not know about %s. Solaris does not have stat. The
> drawback to this wc -c solution is that wc reads all the bytes, but we are
> only dealing with small files here, so that not be much of a problem.
> =

> Signed-off-by: Dirk H=F6rner <dirker@gmail.com>
> ---
>  Makefile             |    2 +-
>  common/Makefile      |    2 +-
>  scripts/Makefile.lib |    2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/Makefile b/Makefile
> index bcaae0a..3ac8788 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -536,7 +536,7 @@ quiet_cmd_barebox_version =3D GEN     .version
>  # Check size of a file
>  quiet_cmd_check_file_size =3D CHKSIZE $@
>        cmd_check_file_size =3D set -e;					\
> -	size=3D`stat -c%s $@`;						\
> +	size=3D`wc -c < $@`;						\
>  	max_size=3D`printf "%d" $2`;					\
>  	if [ $$size -gt $$max_size ] ;					\
>  	then								\
> diff --git a/common/Makefile b/common/Makefile
> index a58aef9..9c14d7b 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -77,7 +77,7 @@ barebox_default_env.lzo: barebox_default_env
>  =

>  include/generated/barebox_default_env.h: barebox_default_env$(barebox_de=
fault_env_comp)
>  	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
> -	$(Q)echo "const int default_environment_uncompress_size=3D`stat -c%s ba=
rebox_default_env`;" >> $@
> +	$(Q)echo "const int default_environment_uncompress_size=3D`wc -c < bare=
box_default_env`;" >> $@
>  =

>  CLEAN_FILES +=3D include/generated/barebox_default_env.h barebox_default=
_env
>  CLEAN_FILES +=3D barebox_default_env.gz barebox_default_env.bz2
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index b842c48..9b02b1b 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -171,7 +171,7 @@ cmd_gzip =3D (cat $(filter-out FORCE,$^) | gzip -n -f=
 -9 > $@) || \
>  size_append =3D printf $(shell						\
>  dec_size=3D0;								\
>  for F in $1; do								\
> -	fsize=3D$$(stat -c "%s" $$F);					\
> +	fsize=3D$$(wc -c < $$F);					        \
>  	dec_size=3D$$(expr $$dec_size + $$fsize);				\
>  done;									\
>  printf "%08x\n" $$dec_size |						\
> -- =

> 1.7.10.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
