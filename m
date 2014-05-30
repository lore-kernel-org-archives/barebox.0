Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqJAi-0001TS-Df
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:32:20 +0000
Received: by mail-lb0-f169.google.com with SMTP id s7so862419lbd.0
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:31:54 -0700 (PDT)
Date: Fri, 30 May 2014 13:43:14 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140530134314.2d9862834321657fd113b1e3@gmail.com>
In-Reply-To: <1401440856-6145-7-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-7-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 06/10] meminfo: purely cosmetical changes
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, 30 May 2014 11:07:32 +0200
Holger Schurig <holgerschurig@gmail.com> wrote:

"cosmetic"?

I can't find the word "cosmetical" in my dictionary.

P.S. I by myself often write "unificate" instead of "unify" :)

> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> ---
>  common/dlmalloc.c    |    8 ++++----
>  common/tlsf_malloc.c |    2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
> =

> diff --git a/common/dlmalloc.c b/common/dlmalloc.c
> index f006206..d831e90 100644
> --- a/common/dlmalloc.c
> +++ b/common/dlmalloc.c
> @@ -1942,13 +1942,13 @@ static void malloc_update_mallinfo(void)
>  void malloc_stats(void)
>  {
>  	malloc_update_mallinfo();
> -	printf("max system bytes =3D %10u\n", (unsigned int)(max_total_mem));
> -	printf("system bytes     =3D %10u\n",
> +	printf("Maximum system memory: %u\n", (unsigned int)(max_total_mem));
> +	printf("Current system memory: %u\n",
>  		(unsigned int)(sbrked_mem + mmapped_mem));
> -	printf("in use bytes     =3D %10u\n",
> +	printf("in use: %u\n",
>  		(unsigned int)(current_mallinfo.uordblks + mmapped_mem));
>  #if HAVE_MMAP
> -	fprintf(stderr, "max mmap regions =3D %10u\n",
> +	printf("Maximum mmap'ed mmap regions: %u\n",
>  		 (unsigned int) max_n_mmaps);
>  #endif
>  }
> diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
> index aa8fc13..a3541d8 100644
> --- a/common/tlsf_malloc.c
> +++ b/common/tlsf_malloc.c
> @@ -97,5 +97,5 @@ void malloc_stats(void)
>  =

>  	tlsf_walk_heap(tlsf_mem_pool, malloc_walker, &s);
>  =

> -	printf("used: %10zu\nfree: %10zu\n", s.used, s.free);
> +	printf("used: %zu\nfree: %zu\n", s.used, s.free);
>  }
> -- =

> 1.7.10.4
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
