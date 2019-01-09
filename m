Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh8G3-0001yx-6k
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:26:36 +0000
Date: Wed, 9 Jan 2019 08:26:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190109072633.ud37c42awunyfhxj@pengutronix.de>
References: <20190109040933.19554-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190109040933.19554-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] printk: Pass groupsize to memory_display() in
 print_hex_dump()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 08, 2019 at 08:09:33PM -0800, Andrey Smirnov wrote:
> Don't hardcode grouping data into 4-byte words in print_hex_dump()
> implementation and instead pass 'groupsize' to memory_display(), since
> that's what that parameter is for.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  include/printk.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/printk.h b/include/printk.h
> index aaad07552..ab2c64cf3 100644
> --- a/include/printk.h
> +++ b/include/printk.h
> @@ -119,7 +119,7 @@ static inline void print_hex_dump(const char *level, const char *prefix_str,
>  		int prefix_type, int rowsize, int groupsize,
>  		const void *buf, size_t len, bool ascii)
>  {
> -	memory_display(buf, 0, len, 4, 0);
> +	memory_display(buf, 0, len, groupsize, 0);
>  }
>  
>  struct log_entry {
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
