Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x242.google.com ([2607:f8b0:4002:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1wM9-0005ty-QI
 for barebox@lists.infradead.org; Wed, 02 Nov 2016 14:17:34 +0000
Received: by mail-yw0-x242.google.com with SMTP id l124so571967ywb.1
 for <barebox@lists.infradead.org>; Wed, 02 Nov 2016 07:17:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
References: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 2 Nov 2016 07:17:11 -0700
Message-ID: <CAHQ1cqFg11OsnMTX2bPsXq-SN6TkjVcCdYYzfeRDAw5RfTKoHQ@mail.gmail.com>
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
Subject: Re: [PATCH upstream 1/4] state: use packet attribute for on storage
 structs
To: Stefan Lengfeld <s.lengfeld@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Nov 2, 2016 at 12:54 AM, Stefan Lengfeld <s.lengfeld@phytec.de> wrote:
> These structs are used for on-storage data layouts. They should be not
> affected by different integer precisions and alignment optimizations of
> 32bit or 64bit machines. Using the architecture independent integer data
> types, like uint32_t, achieves the former, using the packet attribute

 "packed" instead of "packet"?

> the later.
>
> Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
> ---
>  common/state/backend_bucket_circular.c | 2 +-
>  common/state/backend_bucket_direct.c   | 2 +-
>  common/state/backend_format_raw.c      | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
> index 72e165e..d8504e0 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -47,7 +47,7 @@ struct state_backend_storage_bucket_circular {
>         struct device_d *dev;
>  };
>
> -struct state_backend_storage_bucket_circular_meta {
> +struct __attribute__((__packed__)) state_backend_storage_bucket_circular_meta {

#include <linux/compiler.h> defines "__packed" macro which might make
things less verbose. Ditto for the rest of the changes in this patch.

>         uint32_t magic;
>         uint32_t written_length;
>  };
> diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
> index 08892f0..5225433 100644
> --- a/common/state/backend_bucket_direct.c
> +++ b/common/state/backend_bucket_direct.c
> @@ -32,7 +32,7 @@ struct state_backend_storage_bucket_direct {
>         struct device_d *dev;
>  };
>
> -struct state_backend_storage_bucket_direct_meta {
> +struct __attribute__((__packed__)) state_backend_storage_bucket_direct_meta {
>         uint32_t magic;
>         uint32_t written_length;
>  };
> diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
> index 4209424..e028ea6 100644
> --- a/common/state/backend_format_raw.c
> +++ b/common/state/backend_format_raw.c
> @@ -37,7 +37,7 @@ struct state_backend_format_raw {
>         struct device_d *dev;
>  };
>
> -struct backend_raw_header {
> +struct __attribute__((__packed__)) backend_raw_header {
>         uint32_t magic;
>         uint16_t reserved;
>         uint16_t data_len;
> --
> 1.9.1
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
