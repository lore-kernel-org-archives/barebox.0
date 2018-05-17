Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x233.google.com ([2607:f8b0:4001:c0b::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJQnr-0006Xt-0v
 for barebox@lists.infradead.org; Thu, 17 May 2018 21:51:17 +0000
Received: by mail-it0-x233.google.com with SMTP id e20-v6so10782111itc.1
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 14:51:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180517135858.16202-12-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
 <20180517135858.16202-12-pmamonov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 14:50:58 -0700
Message-ID: <CAHQ1cqGBH3HaDHpLFzEBLoF9sw48i-JUiOu=8xvJCr=8L8dbSQ@mail.gmail.com>
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
Subject: Re: [RFC PATCH 11/15] resource: fix iomem root resource for 64 bit
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, May 17, 2018 at 6:58 AM, Peter Mamonov <pmamonov@gmail.com> wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  common/resource.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/common/resource.c b/common/resource.c
> index e4bbe15fd..1cf00a927 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -114,7 +114,11 @@ int release_region(struct resource *res)
>  /* The root resource for the whole memory-mapped io space */
>  struct resource iomem_resource = {
>         .start = 0,
> +#ifdef CONFIG_PHYS_ADDR_T_64BIT
> +       .end = -1ull,
> +#else
>         .end = 0xffffffff,
> +#endif

Would ".end = ~(resource_size_t)0" work instead? This way you'd avoid
using preprocessor.

Thanks,
Andrey Smironv

>         .name = "iomem",
>         .children = LIST_HEAD_INIT(iomem_resource.children),
>  };
> --
> 2.17.0
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
