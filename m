Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAzOa-0006cP-6J
 for barebox@lists.infradead.org; Wed, 17 May 2017 13:53:46 +0000
Date: Wed, 17 May 2017 15:53:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517135315.eqikyu6dbs6izbrv@pengutronix.de>
References: <20170517120224.30260-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170517120224.30260-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] xfuncs: fix format specifier in pr_emerg call
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Wed, May 17, 2017 at 01:02:24PM +0100, Ian Abbott wrote:
> `enomem_panic()` calls `pr_emerg()` using `%d` in the format specifier
> string to print a value of type `size_t`.  Change it to `%zu`.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  lib/xfuncs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/xfuncs.c b/lib/xfuncs.c
> index 1bcaa5e10..1942c1e7f 100644
> --- a/lib/xfuncs.c
> +++ b/lib/xfuncs.c
> @@ -29,7 +29,7 @@ static void __noreturn enomem_panic(size_t size)
>  {
>  	pr_emerg("out of memory\n");
>  	if (size)
> -		pr_emerg("Unable to allocate %d bytes\n", size);
> +		pr_emerg("Unable to allocate %zu bytes\n", size);
>  
>  	malloc_stats();
>  
> -- 
> 2.11.0
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
