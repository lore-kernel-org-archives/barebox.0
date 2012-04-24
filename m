Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMff5-0003jQ-HY
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 13:20:09 +0000
Date: Tue, 24 Apr 2012 15:19:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120424131959.GV3852@pengutronix.de>
References: <1335259383-22646-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1335259383-22646-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] common: memory: fix off-by-one in tlsf_create
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 24, 2012 at 11:23:03AM +0200, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Applied, thanks.

Sascha

> ---
>  common/memory.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/common/memory.c b/common/memory.c
> index faff33b..3b4a5ef 100644
> --- a/common/memory.c
> +++ b/common/memory.c
> @@ -58,7 +58,7 @@ void mem_malloc_init(void *start, void *end)
>  	malloc_end = (unsigned long)end;
>  	malloc_brk = malloc_start;
>  #ifdef CONFIG_MALLOC_TLSF
> -	tlsf_mem_pool = tlsf_create(start, (char *)end - (char *)start);
> +	tlsf_mem_pool = tlsf_create(start, end - start + 1);
>  #endif
>  }
>  
> -- 
> 1.7.4.1
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
