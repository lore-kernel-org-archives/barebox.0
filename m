Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFBG2-0003VF-PF
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 06:03:36 +0000
Received: by mail-lj1-x241.google.com with SMTP id m7so12008346lji.2
 for <barebox@lists.infradead.org>; Mon, 30 Sep 2019 23:03:34 -0700 (PDT)
Date: Tue, 1 Oct 2019 09:03:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20191001090331.81644cde6b0b9efd04a8a7a7@gmail.com>
In-Reply-To: <20191001005718.27165-1-andrew.smirnov@gmail.com>
References: <20191001005718.27165-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] version_string: Add toolchain and build host info
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, 30 Sep 2019 17:57:18 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

Hi!

> Linux kernel reports the version of toolchain it was built with as a
> part of its version string, which can be extremely useful when
> debugging toolchain related issues. Make Barebox version string, mimic
> that of Linux to get the same level of information in Barebox.
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/version.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/common/version.c b/common/version.c
> index 8b1fd4dbe7..5f57022dac 100644
> --- a/common/version.c
> +++ b/common/version.c
> @@ -3,7 +3,8 @@
>  #include <generated/utsrelease.h>
>  =

>  const char version_string[] =3D
> -	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
> +	"barebox " UTS_RELEASE " (" BAREBOX_COMPILE_BY "@"
> +	BAREBOX_COMPILE_HOST ") (" BAREBOX_COMPILER ") " UTS_VERSION "\n";
>  EXPORT_SYMBOL(version_string);


Can we keep COMPILE_BY and COMPILE_HOST in one line (as linux does)?
E.g.
--- a/common/version.c
+++ b/common/version.c
@@ -3,7 +3,11 @@
 #include <generated/utsrelease.h>
 =

 const char version_string[] =3D
-       "barebox " UTS_RELEASE " " UTS_VERSION "\n";
+       "barebox " UTS_RELEASE
+       " (" BAREBOX_COMPILE_BY "@" BAREBOX_COMPILE_HOST ") "
+       "(" BAREBOX_COMPILER ") "
+       UTS_VERSION "\n";
+
 EXPORT_SYMBOL(version_string);
 =

 const char release_string[] =3D





>  =

>  const char release_string[] =3D
> -- =

> 2.21.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
