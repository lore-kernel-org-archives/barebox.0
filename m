Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta6oM-00047p-RT
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 15:29:31 +0000
Received: by mail-ie0-f177.google.com with SMTP id e14so5546611iej.36
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 07:29:29 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1353144361-9089-4-git-send-email-antonynpavlov@gmail.com>
References: <1353144361-9089-1-git-send-email-antonynpavlov@gmail.com>
 <1353144361-9089-4-git-send-email-antonynpavlov@gmail.com>
Date: Sun, 18 Nov 2012 19:29:29 +0400
Message-ID: <CAA4bVAE=TQmPG+KPG4nVLg_V4q98D_W_rjtbTAgXkZTTseQ6mg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: start-pbl.c: unificate path to lib/decompress_*.c
To: barebox@lists.infradead.org

Sorry, not "unificate" but "unify" of course.

On 17 November 2012 13:26, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/cpu/start-pbl.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> index 79a3cdd..c5f9705 100644
> --- a/arch/arm/cpu/start-pbl.c
> +++ b/arch/arm/cpu/start-pbl.c
> @@ -66,7 +66,7 @@ extern void *input_data_end;
>  #endif
>
>  #ifdef CONFIG_IMAGE_COMPRESSION_GZIP
> -#include "../../../../lib/decompress_inflate.c"
> +#include "../../../lib/decompress_inflate.c"
>  #endif
>
>  static unsigned long *ttb;
> --
> 1.7.10.4
>



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
