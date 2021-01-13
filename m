Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzc4H-0002XS-FO
 for barebox@lists.infradead.org; Wed, 13 Jan 2021 09:03:54 +0000
Date: Wed, 13 Jan 2021 10:03:50 +0100
Message-ID: <20210113090350.GF19063@pengutronix.de>
References: <20210111103205.4330-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210111103205.4330-1-s.trumtrar@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/2] image-sparse: change retlen to size_t
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 11, 2021 at 11:32:04AM +0100, Steffen Trumtrar wrote:
> retlen can potentially overflow. Also, write_full() in
> fastboot_handle_sparse() expects size_t anyway.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  common/fastboot.c      | 2 +-
>  include/image-sparse.h | 2 +-
>  lib/image-sparse.c     | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

Applied to master, thanks

Sascha

> 
> diff --git a/common/fastboot.c b/common/fastboot.c
> index 1b6dc28d8e..40b92d9982 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> @@ -566,7 +566,7 @@ static int fastboot_handle_sparse(struct fastboot *fb,
>  	}
>  
>  	while (1) {
> -		int retlen;
> +		size_t retlen;
>  		loff_t pos;
>  
>  		ret = sparse_image_read(sparse, buf, &pos, bufsiz, &retlen);
> diff --git a/include/image-sparse.h b/include/image-sparse.h
> index 29242f4fd5..6bff844411 100644
> --- a/include/image-sparse.h
> +++ b/include/image-sparse.h
> @@ -60,7 +60,7 @@ struct sparse_image_ctx;
>  
>  struct sparse_image_ctx *sparse_image_open(const char *path);
>  int sparse_image_read(struct sparse_image_ctx *si, void *buf,
> -		      loff_t *pos, size_t len, int *retlen);
> +		      loff_t *pos, size_t len, size_t *retlen);
>  void sparse_image_close(struct sparse_image_ctx *si);
>  loff_t sparse_image_size(struct sparse_image_ctx *si);
>  
> diff --git a/lib/image-sparse.c b/lib/image-sparse.c
> index 0c31742ab6..8e7a52fd71 100644
> --- a/lib/image-sparse.c
> +++ b/lib/image-sparse.c
> @@ -190,7 +190,7 @@ out:
>  }
>  
>  int sparse_image_read(struct sparse_image_ctx *si, void *buf, loff_t *pos,
> -		      size_t len, int *retlen)
> +		      size_t len, size_t *retlen)
>  {
>  	size_t now;
>  	int ret, i;
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
