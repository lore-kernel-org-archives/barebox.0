Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwM5D-0006Iu-Hq
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:14:21 +0000
Received: by mail-lj1-x241.google.com with SMTP id l5so16465436lje.1
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:14:19 -0800 (PST)
Date: Wed, 20 Feb 2019 10:14:12 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190220101412.5032124aaf26a799c903ec9f@gmail.com>
In-Reply-To: <20190219141647.2537-3-a.fatoum@pengutronix.de>
References: <20190219141647.2537-1-a.fatoum@pengutronix.de>
 <20190219141647.2537-3-a.fatoum@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 2/2] scripts/checkpatch.pl: rebase on top of upstream
 v5.0-rc6
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 19 Feb 2019 15:16:47 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> This brings many upstream goodies, among them checking for
> SPDX-License-Identifier entries for newly added source files.
> =

> For future reference, following barebox changes were applied
> on top of the version copied from upstream:
> =

> 4a7f56056d ("scripts: Adapt checkpatch.pl for barebox.")
> 2671c30c25 ("scripts/checkpatch.pl: don't search for Doxyfile when checki=
ng top_of_kernel_tree()")
> ad3c55fbf2 ("scripts/checkpatch.pl: don't search for CREDITS when checkin=
g top_of_kernel_tree()")
> 13b0f4666d ("checkpatch: don't check TODO file presence")
> =

> These adjust sub top_of_kernel_tree's @tree_check to eventually contain
> 	(
> 		"arch", "commands", "common", "COPYING", "defaultenv",
> 		"Documentation", "drivers", "fs", "include", "lib",
> 		"MAKEALL", "Makefile", "net", "README", "scripts"
> 	);
> =

> 9e809ef431 ("scripts: allow lines longer than 80 cols with printf() in ch=
eckpatch")
> =

> 	adds an exception for printf, same as printk.
> =

> The new checkpatch.pl now also depends on some more files:
> - cleanfile, cleanpatch, spdxcheck.py, spelling.txt: copied over
> - const_structs.checkpatch: added as empty file for now
> - get_maintainer.pl: implemented a dummy to keep changes here to a minimu=
m.
> =

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/checkpatch.pl            | 4682 ++++++++++++++++++++++++++----
>  scripts/cleanfile                |  178 ++
>  scripts/cleanpatch               |  260 ++
>  scripts/const_structs.checkpatch |    0
>  scripts/get_maintainer.pl        |   11 +
>  scripts/spdxcheck.py             |  286 ++
>  scripts/spelling.txt             | 1344 +++++++++
>  7 files changed, 6169 insertions(+), 592 deletions(-)
>  create mode 100755 scripts/cleanfile
>  create mode 100755 scripts/cleanpatch
>  create mode 100644 scripts/const_structs.checkpatch
>  create mode 100755 scripts/get_maintainer.pl
>  create mode 100755 scripts/spdxcheck.py
>  create mode 100644 scripts/spelling.txt
> =


...

> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 4e17347a8481..48b39fbf962a 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
...

> @@ -1555,13 +2997,9 @@ sub process {
>  =

>  			my @compats =3D $rawline =3D~ /\"([a-zA-Z0-9\-\,\.\+_]+)\"/g;
>  =

> -			# linux device tree files
> -			my $dt_path =3D $root . "/dts/Bindings/";
> +			my $dt_path =3D $root . "/Documentation/devicetree/bindings/";

At the moment it looks like barebox uses both paths ("/dts/Bindings/" and "=
/Documentation/devicetree/bindings/")
to store dt-related documentation.

The patch is very long and very hard to review.

@Sascha

Can we introduce rules on storing dt-documentation?

It looks like we have some dt documentation duplication, e.g.

  ./Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
  ./dts/Bindings/rtc/rtc-ds1307.txt

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
