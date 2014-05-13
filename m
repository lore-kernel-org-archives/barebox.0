Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk8VH-0004o6-GQ
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:56:05 +0000
Date: Tue, 13 May 2014 10:28:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140513082846.GL5858@pengutronix.de>
References: <1399910252.4918.8.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399910252.4918.8.camel@mars>
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
Subject: Re: [PATCH] common: fix macro WARN
To: Christoph Fritz <chf@fritzc.com>
Cc: barebox@lists.infradead.org

On Mon, May 12, 2014 at 05:57:32PM +0200, Christoph Fritz wrote:
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>

Applied, thanks

Sascha

> ---
>  include/common.h |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/common.h b/include/common.h
> index bfd3ce8..e7ab5fe 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -72,10 +72,11 @@
>  #ifndef WARN
>  #define WARN(condition, format...) ({					\
>  	int __ret_warn_on = !!(condition);				\
> -	if (unlikely(__ret_warn_on))					\
> +	if (unlikely(__ret_warn_on)) {					\
>  		__WARN();						\
>  		puts("WARNING: ");					\
>  		printf(format);						\
> +	}								\
>  	unlikely(__ret_warn_on);					\
>  })
>  #endif
> -- 
> 1.7.10.4
> 
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
