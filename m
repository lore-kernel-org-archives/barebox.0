Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNQr-0003TN-LJ
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:19:59 +0000
Date: Wed, 22 Aug 2018 09:19:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822071945.iqyd6wuljhw5gt2t@pengutronix.de>
References: <20180821062736.17884-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062736.17884-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] include/common: Make use of ALIGN and ALIGN_DOWN
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:27:36PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  include/common.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/common.h b/include/common.h
> index f93bd7f5d..abbe73fd3 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -109,8 +109,8 @@ void shutdown_barebox(void);
>  
>  #define PAGE_SIZE	4096
>  #define PAGE_SHIFT	12
> -#define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
> -#define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
> +#define PAGE_ALIGN(s)	ALIGN(s, PAGE_SIZE)
> +#define PAGE_ALIGN_DOWN(x) ALIGN_DOWN(x, PAGE_SIZE)
>  
>  int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab);
>  
> -- 
> 2.17.1
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
