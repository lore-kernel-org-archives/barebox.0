Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UmQVm-0007an-5L
 for barebox@lists.infradead.org; Tue, 11 Jun 2013 15:29:30 +0000
Date: Tue, 11 Jun 2013 17:29:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130611152908.GQ32299@pengutronix.de>
References: <1370833409-1870-1-git-send-email-monaka@monami-ya.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370833409-1870-1-git-send-email-monaka@monami-ya.jp>
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
Subject: Re: [PATCH] Remove ftstc(). It is declared but not implemented.
To: Masaki Muranaka <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

On Mon, Jun 10, 2013 at 12:03:29PM +0900, Masaki Muranaka wrote:
> Signed-off-by: Masaki Muranaka <monaka@monami-ya.jp>

I applied it already.

Sascha

> ---
>  include/stdio.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/stdio.h b/include/stdio.h
> index 5c091a8..ff2572e 100644
> --- a/include/stdio.h
> +++ b/include/stdio.h
> @@ -101,7 +101,6 @@ static inline void putchar(char c)
>  int	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
>  int	fputs(int file, const char *s);
>  int	fputc(int file, const char c);
> -int	ftstc(int file);
>  int	fgetc(int file);
>  
>  #endif /* __STDIO_H */
> -- 
> 1.8.3
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
