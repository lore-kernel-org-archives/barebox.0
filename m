Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x241.google.com ([2a00:1450:4010:c04::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3ct3-0001cj-SD
 for barebox@lists.infradead.org; Fri, 20 May 2016 05:22:14 +0000
Received: by mail-lb0-x241.google.com with SMTP id wx2so1515381lbb.0
 for <barebox@lists.infradead.org>; Thu, 19 May 2016 22:21:53 -0700 (PDT)
Date: Fri, 20 May 2016 08:22:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160520082247.9e35758b472de47344cbe3c3@gmail.com>
In-Reply-To: <1463691959-3628-1-git-send-email-antonynpavlov@gmail.com>
References: <1463691959-3628-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] imd: make it work on big-endian machine
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 20 May 2016 00:05:59 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> The commit
> =

>     commit 5e335773e0814173b40873a891964a7858d64688
>     Author: Sascha Hauer <s.hauer@pengutronix.de>
>     Date:   Tue Mar 29 10:06:46 2016 +0200
> =

>         imd: use struct imd_header * as argument
> =

> introduces additional imd type checks like this
> =

>     if (!imd_is_string(imd->type))
>            return NULL;
> =

> These checks work incorrectly on any big-endian machine
> because imd->type field needs addition convertion
                                         ^^^^^^^^^^

Hmm, It looks like I have to fix a typo: "convertion" -> "conversion".
I'll resend  v2 version of the patch in a few minutes.


> to little-endian byteorder before use.
> =

> Here is the imd command output on big-endian qemu-malta:
> =

>     barebox:/ imd /dev/nor0.barebox
>     release: <NULL>
>     build: <NULL>
> =

> This patch fixes the problem by adding necessary convertion
> via imd_read_type().
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/imd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/common/imd.c b/common/imd.c
> index 159b73a..a8a10fc 100644
> --- a/common/imd.c
> +++ b/common/imd.c
> @@ -212,7 +212,7 @@ const char *imd_string_data(struct imd_header *imd, i=
nt index)
>  	int len =3D imd_read_length(imd);
>  	char *p =3D (char *)(imd + 1);
>  =

> -	if (!imd_is_string(imd->type))
> +	if (!imd_is_string(imd_read_type(imd)))
>  		return NULL;
>  =

>  	for (i =3D 0; total < len; total +=3D l, p +=3D l) {
> @@ -239,7 +239,7 @@ char *imd_concat_strings(struct imd_header *imd)
>  	char *str;
>  	char *data =3D (char *)(imd + 1);
>  =

> -	if (!imd_is_string(imd->type))
> +	if (!imd_is_string(imd_read_type(imd)))
>  		return NULL;
>  =

>  	str =3D malloc(len);
> -- =

> 2.7.0
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
