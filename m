Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh8Ef-0001bd-3v
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:25:10 +0000
Date: Wed, 9 Jan 2019 08:25:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190109072507.fd3pmrmapubzeo2h@pengutronix.de>
References: <20190109040902.18956-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190109040902.18956-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] memory_display: Fix type of argument passed to %*s
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 08, 2019 at 08:09:02PM -0800, Andrey Smirnov wrote:
> On AArch64, pointer arithmetic in (pos - line) resolves into "long
> int", whereas "%*s" is expecting regular "int". Add explicit cast to
> avoid compiler warnings.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/memory_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/memory_display.c b/common/memory_display.c
> index cd0eadf88..fbb8bbb6f 100644
> --- a/common/memory_display.c
> +++ b/common/memory_display.c
> @@ -96,7 +96,7 @@ int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbyte
>  			offs += size;
>  		}
>  
> -		pos += sprintf(pos, "%*s", 61 - (pos - line), "");
> +		pos += sprintf(pos, "%*s", (int)(61 - (pos - line)), "");
>  
>  		cp = linebuf;
>  		for (i = 0; i < linebytes; i++) {
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
