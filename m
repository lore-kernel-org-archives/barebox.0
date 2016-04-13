Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqMrM-0003pJ-A3
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 15:37:41 +0000
Received: by mail-lf0-x242.google.com with SMTP id o124so7934297lfb.2
 for <barebox@lists.infradead.org>; Wed, 13 Apr 2016 08:37:19 -0700 (PDT)
Date: Wed, 13 Apr 2016 18:37:18 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160413183718.09289f7289ec33416eaf5926@gmail.com>
In-Reply-To: <1460549493-13044-1-git-send-email-d-hp@163.com>
References: <1460549493-13044-1-git-send-email-d-hp@163.com>
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
Subject: Re: [PATCH] NULL: remove other definition of NULL
To: Du Huanpeng <d-hp@163.com>
Cc: barebox@lists.infradead.org, Du Huanpeng <u74147@gmail.com>

On Wed, 13 Apr 2016 20:11:33 +0800
Du Huanpeng <d-hp@163.com> wrote:

> From: Du Huanpeng <u74147@gmail.com>
> =

> remove other definition of NULL, use
>   #include <linux/stddef.h>
> instead.
> I use this command to search NULL definition,
>   grep -R "define\s*\<NULL\>"
> hope there are no more definition of NULL.
> =

> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  include/command.h   |  5 +----
>  lib/bzlib_private.h | 11 +----------
>  2 files changed, 2 insertions(+), 14 deletions(-)
> =

> diff --git a/include/command.h b/include/command.h
> index e41068a..b938431 100644
> --- a/include/command.h
> +++ b/include/command.h
> @@ -25,10 +25,7 @@
>  =

>  #include <linux/list.h>
>  #include <linux/stringify.h>
> -
> -#ifndef NULL
> -#define NULL	((void *)0)
> -#endif
> +#include <linux/stddef.h>

It looks like this chunk removes lines introduced in your previous 'NULL: d=
efine as a null pointer'
patch.

Can we join your patches?

>  #ifndef	__ASSEMBLY__
>  =

> diff --git a/lib/bzlib_private.h b/lib/bzlib_private.h
> index 87d8f94..de10dd4 100644
> --- a/lib/bzlib_private.h
> +++ b/lib/bzlib_private.h
> @@ -67,6 +67,7 @@
>  #define _BZLIB_PRIVATE_H
>  =

>  #include <malloc.h>
> +#include <linux/stddef.h>
>  =

>  #include "bzlib.h"
>  =

> @@ -515,16 +516,6 @@ BZ2_hbCreateDecodeTables ( Int32*, Int32*, Int32*, U=
Char*,
>  =

>  #endif
>  =

> -
> -/*-- BZ_NO_STDIO seems to make NULL disappear on some platforms. --*/
> -
> -#ifdef BZ_NO_STDIO
> -#ifndef NULL
> -#define NULL 0
> -#endif
> -#endif
> -
> -
>  /*-------------------------------------------------------------*/
>  /*--- end                                   bzlib_private.h ---*/
>  /*-------------------------------------------------------------*/
> -- =

> 1.9.1
> =

> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
