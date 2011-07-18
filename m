Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qiuza-0001PN-U2
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 21:04:47 +0000
Date: Mon, 18 Jul 2011 23:04:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110718210440.GK20587@pengutronix.de>
References: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 1/2] debug_ll.h: add PUTS_LL() function
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 18, 2011 at 05:06:09PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied both to next.

Thanks
 Sascha

> ---
>  include/debug_ll.h |   13 +++++++++++++
>  1 files changed, 13 insertions(+), 0 deletions(-)
> 
> diff --git a/include/debug_ll.h b/include/debug_ll.h
> index e99ae7d..6b1b174 100644
> --- a/include/debug_ll.h
> +++ b/include/debug_ll.h
> @@ -35,9 +35,22 @@
>  			     ch = ((v >> (i*4)) & 0xf);\
>  			     ch += (ch >= 10) ? 'a' - 10 : '0';\
>  			     PUTC_LL (ch); }})
> +
> +static __inline__ void PUTS_LL(char * str)
> +{
> +	while (*str) {
> +		if (*str == '\n') {
> +			PUTC_LL('\r');
> +		}
> +		PUTC_LL(*str);
> +		str++;
> +	}
> +}
> +
>  #else
>  # define PUTC_LL(c) do {} while (0)
>  # define PUTHEX_LL(v) do {} while (0)
> +# define PUTS_LL(c) do {} while (0)
>  
>  #endif
>  
> -- 
> 1.7.5.4
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
