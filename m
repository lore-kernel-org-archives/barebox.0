Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2BPQ-0003Af-NA
 for barebox@lists.infradead.org; Thu, 03 Nov 2016 06:21:57 +0000
Date: Thu, 3 Nov 2016 07:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161103062134.dqkssqmjzp624mb2@pengutronix.de>
References: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
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
Cc: barebox@lists.infradead.org

On Wed, Nov 02, 2016 at 08:54:27AM +0100, Stefan Lengfeld wrote:
> These structs are used for on-storage data layouts. They should be not
> affected by different integer precisions and alignment optimizations of
> 32bit or 64bit machines. Using the architecture independent integer data
> types, like uint32_t, achieves the former, using the packet attribute
> the later.
> 
> Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>

Applied all, thanks. 3/4 went to master, the rest to next. Also fixed
s/packet/packed/ while applying.

Sascha

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
>  	struct device_d *dev;
>  };
>  
> -struct state_backend_storage_bucket_circular_meta {
> +struct __attribute__((__packed__)) state_backend_storage_bucket_circular_meta {
>  	uint32_t magic;
>  	uint32_t written_length;
>  };
> diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
> index 08892f0..5225433 100644
> --- a/common/state/backend_bucket_direct.c
> +++ b/common/state/backend_bucket_direct.c
> @@ -32,7 +32,7 @@ struct state_backend_storage_bucket_direct {
>  	struct device_d *dev;
>  };
>  
> -struct state_backend_storage_bucket_direct_meta {
> +struct __attribute__((__packed__)) state_backend_storage_bucket_direct_meta {
>  	uint32_t magic;
>  	uint32_t written_length;
>  };
> diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
> index 4209424..e028ea6 100644
> --- a/common/state/backend_format_raw.c
> +++ b/common/state/backend_format_raw.c
> @@ -37,7 +37,7 @@ struct state_backend_format_raw {
>  	struct device_d *dev;
>  };
>  
> -struct backend_raw_header {
> +struct __attribute__((__packed__)) backend_raw_header {
>  	uint32_t magic;
>  	uint16_t reserved;
>  	uint16_t data_len;
> -- 
> 1.9.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
