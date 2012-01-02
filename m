Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhkRQ-0007rS-Hs
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 16:08:53 +0000
Received: by wera10 with SMTP id a10so9729385wer.36
 for <barebox@lists.infradead.org>; Mon, 02 Jan 2012 08:08:50 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1324792646-27524-1-git-send-email-antonynpavlov@gmail.com>
References: <1324792646-27524-1-git-send-email-antonynpavlov@gmail.com>
Date: Mon, 2 Jan 2012 19:08:49 +0300
Message-ID: <CAA4bVAER-V1hDMPdk9GpMoaXLbjsy_zRf6N_W1pNH+7a_BMSPQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] decompress_inflate.c: fix "no previous prototype for
 'gunzip'" warning
To: barebox@lists.infradead.org

ping

On 25 December 2011 09:57, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> =A0include/gunzip.h =A0 =A0 =A0 =A0 | =A0 =A04 ++--
> =A0lib/decompress_inflate.c | =A0 =A02 ++
> =A02 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/include/gunzip.h b/include/gunzip.h
> index 8c0aef1..b901894 100644
> --- a/include/gunzip.h
> +++ b/include/gunzip.h
> @@ -1,5 +1,5 @@
> -#ifndef INFLATE_H
> -#define INFLATE_H
> +#ifndef GUNZIP_H
> +#define GUNZIP_H
>
> =A0int gunzip(unsigned char *inbuf, int len,
> =A0 =A0 =A0 =A0 =A0 int(*fill)(void*, unsigned int),
> diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
> index d246d4d..526d6a1 100644
> --- a/lib/decompress_inflate.c
> +++ b/lib/decompress_inflate.c
> @@ -24,6 +24,8 @@
>
> =A0#endif /* STATIC */
>
> +#include <gunzip.h>
> +
> =A0#define GZIP_IOBUF_SIZE (16*1024)
>
> =A0static int =A0nofill(void *buffer, unsigned int len)
> --
> 1.7.7.3
>



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
