Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYVpR-0003mf-Nh
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 06:52:34 +0000
Date: Tue, 22 Oct 2013 08:52:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131022065210.GH30088@pengutronix.de>
References: <1382377705-15040-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382377705-15040-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] calloc: Fix possible memory leak
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Oct 21, 2013 at 09:48:23PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied all, thanks

Sascha

> ---
>  common/dlmalloc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/dlmalloc.c b/common/dlmalloc.c
> index 7ad368e..b4341fe 100644
> --- a/common/dlmalloc.c
> +++ b/common/dlmalloc.c
> @@ -1750,11 +1750,11 @@ void *calloc(size_t n, size_t elem_size)
>  	mchunkptr oldtop = top;
>  	INTERNAL_SIZE_T oldtopsize = chunksize(top);
>  
> -	void *mem = malloc(sz);
> -
>  	if ((long)n < 0)
>  		return NULL;
>  
> +	void *mem = malloc(sz);
> +
>  	if (!mem)
>  		return NULL;
>  	else {
> -- 
> 1.8.1.5
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
