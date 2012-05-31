Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaA0B-00056Q-7e
 for barebox@lists.infradead.org; Thu, 31 May 2012 18:21:40 +0000
Date: Thu, 31 May 2012 20:21:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120531182137.GY30400@pengutronix.de>
References: <1338467194-11552-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338467194-11552-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] block: Fix printf warning
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, May 31, 2012 at 04:26:34PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks.

Sascha
> ---
>  common/block.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/common/block.c b/common/block.c
> index 5983171..71ecfd5 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -136,7 +136,7 @@ static int block_cache(struct block_device *blk, int block)
>  	chunk = get_chunk(blk);
>  	chunk->block_start = block & ~blk->blkmask;
>  
> -	debug("%s: %d to %d %s\n", __func__, chunk->block_start,
> +	debug("%s: %d to %d\n", __func__, chunk->block_start,
>  			chunk->num);
>  
>  	num_blocks = min(blk->rdbufsize, blk->num_blocks - chunk->block_start);
> -- 
> 1.7.3.4
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
