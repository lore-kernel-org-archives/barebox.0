Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go2Pm-0004SL-7U
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 08:37:14 +0000
Date: Mon, 28 Jan 2019 09:37:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128083707.2mfjjjwtcvgpkulu@pengutronix.de>
References: <20190125051204.15749-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190125051204.15749-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] lib: image-sparse: Mark sparse_seek() as static
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 24, 2019 at 09:12:04PM -0800, Andrey Smirnov wrote:
> Mark sparse_seek() as static to avoid -Wmissing-prototypes warnings
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  lib/image-sparse.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/image-sparse.c b/lib/image-sparse.c
> index 7137d15fd..0c31742ab 100644
> --- a/lib/image-sparse.c
> +++ b/lib/image-sparse.c
> @@ -60,7 +60,7 @@ struct sparse_image_ctx {
>  	uint32_t fill_val;
>  };
>  
> -int sparse_seek(struct sparse_image_ctx *si)
> +static int sparse_seek(struct sparse_image_ctx *si)
>  {
>  	unsigned int chunk_data_sz, payload;
>  	loff_t offs;
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
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
